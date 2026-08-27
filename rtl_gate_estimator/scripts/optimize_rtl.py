#!/usr/bin/env python3
"""Synthesis-validated RTL optimization pipeline for supported Verilog designs."""

import argparse
import difflib
import json
import logging
import re
import sys
from pathlib import Path
from typing import Any, Dict, List

logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
logger = logging.getLogger(__name__)


def generate_diff(original: str, optimized: str, filename: str) -> str:
    return "".join(difflib.unified_diff(
        original.splitlines(keepends=True),
        optimized.splitlines(keepends=True),
        fromfile=f"a/{filename}",
        tofile=f"b/{filename}",
    ))


def metric_impact(baseline: Dict[str, Any], candidate: Dict[str, Any]) -> Dict[str, Any]:
    def delta(before: int, after: int) -> float:
        return 0.0 if before == 0 else round(((after - before) / before) * 100, 2)

    baseline_cells = baseline["area"]["cell_count"]
    candidate_cells = candidate["area"]["cell_count"]
    baseline_levels = baseline["timing"]["logic_levels"]
    candidate_levels = candidate["timing"]["logic_levels"]
    return {
        "area": {"cell_count": {"baseline": baseline_cells, "optimized": candidate_cells, "delta_pct": delta(baseline_cells, candidate_cells)}},
        "timing": {"logic_levels": {"baseline": baseline_levels, "optimized": candidate_levels, "delta_pct": delta(baseline_levels, candidate_levels)}},
    }


def baseline_only_impact(baseline: Dict[str, Any]) -> Dict[str, Any] | None:
    if "error" in baseline:
        return None
    cells = baseline["area"]["cell_count"]
    levels = baseline["timing"]["logic_levels"]
    return {
        "area": {"cell_count": {"baseline": cells, "optimized": cells, "delta_pct": 0.0}},
        "timing": {"logic_levels": {"baseline": levels, "optimized": levels, "delta_pct": 0.0}},
    }


def main() -> None:
    parser = argparse.ArgumentParser(description="RTL synthesis-validated optimization pipeline")
    parser.add_argument("--input", required=True, help="Input RTL file")
    parser.add_argument("--target", default="asic", help="Target architecture (fpga/asic)")
    parser.add_argument("--top", default="", help="Top module name (optional)")
    parser.add_argument("--no-shap", action="store_true", help="Disable SHAP explanation (faster).")
    parser.add_argument("--json", action="store_true", help="Output results as JSON.")
    args = parser.parse_args()

    input_path = Path(args.input)
    if not input_path.exists():
        print(json.dumps({"error": f"Input file not found: {args.input}"}))
        sys.exit(1)

    original_code = input_path.read_text(encoding="utf-8-sig")
    module_match = re.search(r"\bmodule\s+([A-Za-z_][A-Za-z0-9_]*)\b", original_code)
    top_module = args.top or (module_match.group(1) if module_match else input_path.stem)

    from scripts.predict import predict_single
    from scripts.equivalence_checker import EquivalenceChecker
    from scripts.exhaustive_checker import ExhaustiveEquivalenceChecker
    from scripts.rules_engine import RulesEngine
    from scripts.synthesis_runner import get_synthesis_runner
    from scripts.utils import ConfigLoader

    config = ConfigLoader.load_config(str(Path("config/config.yaml")))
    ml_gate_count, features, shap_data = predict_single(
        rtl_path=input_path,
        config=config,
        model_path=Path("models/model.pkl"),
        use_shap=not args.no_shap,
        is_json=True,
    )
    ml_prediction = {"gate_count": ml_gate_count, "features": features, "shap_values": shap_data}

    try:
        rules_engine = RulesEngine(use_llm=False)
    except TypeError:
        rules_engine = RulesEngine()
    synth_runner = get_synthesis_runner()
    equiv_checker = EquivalenceChecker()
    exhaustive_checker = ExhaustiveEquivalenceChecker()
    baseline_ppa = synth_runner.run_synthesis(str(input_path), top_module, target=args.target)

    # Keep static identities as a fast first pass. Generic structural rewriting
    # follows when no narrow rule applies, so the workflow is not pattern-bound.
    rule_candidate, transformations = rules_engine.optimize(original_code)
    candidate_code = rule_candidate if transformations else None
    candidate_error = None
    candidate_path: Path | None = None

    if not candidate_code and "error" not in baseline_ppa:
        generic_candidate = synth_runner.build_optimized_candidate(str(input_path), top_module)
        candidate_error = generic_candidate.get("error")
        if not candidate_error:
            candidate_code = generic_candidate["optimized_code"]
            candidate_path = Path(generic_candidate["path"])
            transformations = [{
                "rule": "Yosys synthesis-derived rewrite",
                "location": "Whole module",
                "rationale": "Generated a technology-independent structural candidate from the supported RTL, pending formal equivalence and measurable PPA validation.",
            }]

    def result(status: str, *, optimizable: bool, optimized_code: str | None = None, equivalence: str = "N/A", impact: Dict[str, Any] | None = None, warnings: List[str] | None = None, active_transformations: List[Dict[str, str]] | None = None, diagnostics: Dict[str, str] | None = None, bounded_verification: Dict[str, Any] | None = None) -> Dict[str, Any]:
        payload: Dict[str, Any] = {
            "detected_hdl": "verilog",
            "optimization_status": status,
            "optimizable": optimizable,
            "optimized_code": optimized_code,
            "diff": generate_diff(original_code, optimized_code, input_path.name) if optimized_code else "",
            "functional_equivalence": equivalence,
            "impact": impact,
            "ml_prediction": ml_prediction,
            "transformations_applied": active_transformations or [],
            "warnings": warnings or [],
        }
        if diagnostics:
            payload["synthesis_diagnostics"] = diagnostics
        if bounded_verification:
            payload["bounded_verification"] = bounded_verification
        return payload

    if "error" in baseline_ppa:
        print(json.dumps(result(
            "synthesis_attention",
            optimizable=False,
            impact=None,
            warnings=["Baseline synthesis failed; the ML gate estimate and feature evidence remain available. No corrected RTL is offered without measured PPA validation."],
            diagnostics={"baseline": baseline_ppa["error"]},
        ), indent=2))
        return

    if not candidate_code or candidate_code.strip() == original_code.strip():
        detail = candidate_error or "No structurally distinct synthesis candidate was produced for this supported design."
        print(json.dumps(result(
            "no_measurable_improvement",
            optimizable=False,
            impact=baseline_only_impact(baseline_ppa),
            warnings=["No measurable safe PPA improvement was found. This does not prove that the RTL is globally optimal.", detail],
        ), indent=2))
        return

    if candidate_path is None:
        candidate_path = input_path.with_name(f"{input_path.stem}_aichd_candidate{input_path.suffix}")
        candidate_path.write_text(candidate_code, encoding="utf-8")

    try:
        equivalence = equiv_checker.check_equivalence(str(input_path), str(candidate_path), top_module)
        if equivalence != "PASS":
            print(json.dumps(result(
                "candidate_unverified",
                optimizable=False,
                equivalence=equivalence,
                impact=baseline_only_impact(baseline_ppa),
                warnings=["A generic synthesis candidate was generated but withheld because formal equivalence was not proven. The submitted RTL is unchanged."],
                active_transformations=transformations,
            ), indent=2))
            return

        bounded_verification = exhaustive_checker.check_equivalence(str(input_path), str(candidate_path), top_module)
        bounded_status = bounded_verification["status"]
        stateful_proof_incomplete = bounded_status == "SKIPPED" and "sequential state" in bounded_verification["reason"].lower()
        if bounded_status in {"FAIL", "UNVERIFIED"} or stateful_proof_incomplete:
            verification_warning = (
                "The design contains sequential state and no complete stateful proof is configured. The candidate is withheld and the submitted RTL remains authoritative."
                if stateful_proof_incomplete
                else "Formal equivalence passed, but independent bounded verification did not establish identical outputs. The candidate is withheld and the submitted RTL remains authoritative."
            )
            print(json.dumps(result(
                "candidate_unverified",
                optimizable=False,
                equivalence=equivalence,
                impact=baseline_only_impact(baseline_ppa),
                warnings=[verification_warning, bounded_verification["reason"]],
                active_transformations=transformations,
                bounded_verification=bounded_verification,
            ), indent=2))
            return

        candidate_ppa = synth_runner.run_synthesis(str(candidate_path), top_module, target=args.target)
        if "error" in candidate_ppa:
            print(json.dumps(result(
                "synthesis_attention",
                optimizable=False,
                equivalence=equivalence,
                impact=baseline_only_impact(baseline_ppa),
                warnings=["Formal equivalence passed, but candidate synthesis could not complete. No corrected RTL is offered without measurable PPA validation."],
                active_transformations=transformations,
                diagnostics={"optimized": candidate_ppa["error"]},
                bounded_verification=bounded_verification,
            ), indent=2))
            return

        impact = metric_impact(baseline_ppa, candidate_ppa)
        area_benefit = impact["area"]["cell_count"]["optimized"] < impact["area"]["cell_count"]["baseline"]
        timing_benefit = impact["timing"]["logic_levels"]["optimized"] < impact["timing"]["logic_levels"]["baseline"]
        if not area_benefit and not timing_benefit:
            print(json.dumps(result(
                "no_measurable_improvement",
                optimizable=False,
                equivalence=equivalence,
                impact=impact,
                warnings=["Formal equivalence passed, but the generic candidate showed no cell-count or logic-depth reduction. It is withheld to avoid a cosmetic rewrite."],
                active_transformations=transformations,
                bounded_verification=bounded_verification,
            ), indent=2))
            return

        print(json.dumps(result(
            "rewrite_available",
            optimizable=True,
            optimized_code=candidate_code,
            equivalence=equivalence,
            impact=impact,
            warnings=["Candidate generated from supported RTL with Yosys, formally proven equivalent, independently exhaustively checked when within the bounded combinational domain, and retained only because it improved measured synthesis evidence."],
            active_transformations=transformations,
            bounded_verification=bounded_verification,
        ), indent=2))
    finally:
        if candidate_path:
            try:
                candidate_path.unlink(missing_ok=True)
            except OSError:
                pass


if __name__ == "__main__":
    main()
