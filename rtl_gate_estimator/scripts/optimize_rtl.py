#!/usr/bin/env python3
"""
Orchestrator for RTL Code Optimization Pipeline.
Ties together static analysis, synthesis, and equivalence checking to produce
the final PPA impact report.
"""
import argparse
import json
import logging
import sys
import difflib
from pathlib import Path

from scripts.rules_engine import RulesEngine
from scripts.synthesis_runner import get_synthesis_runner
from scripts.equivalence_checker import EquivalenceChecker

logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
logger = logging.getLogger(__name__)

def generate_diff(original: str, optimized: str, filename: str) -> str:
    diff = difflib.unified_diff(
        original.splitlines(keepends=True),
        optimized.splitlines(keepends=True),
        fromfile=f"a/{filename}",
        tofile=f"b/{filename}",
    )
    return "".join(diff)

def main():
    parser = argparse.ArgumentParser(description="RTL Code Optimizer Pipeline")
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

    # Accept editor-created UTF-8 BOM files while retaining normal UTF-8 input.
    with open(input_path, "r", encoding="utf-8-sig") as f:
        original_code = f.read()

    import re
    match = re.search(r'\bmodule\s+([A-Za-z_][A-Za-z0-9_]*)\b', original_code)
    extracted_module = match.group(1) if match else input_path.stem

    top_module = args.top or extracted_module

    from scripts.predict import predict_single
    from scripts.utils import ConfigLoader
    
    # Run ML prediction on baseline
    config = ConfigLoader.load_config(str(Path("config/config.yaml")))
    ml_gate_count, features, shap_data = predict_single(
        rtl_path=input_path,
        config=config,
        model_path=Path("models/model.pkl"),
        use_shap=not args.no_shap,
        is_json=True
    )
    
    ml_prediction = {
        "gate_count": ml_gate_count,
        "features": features,
        "shap_values": shap_data
    }

    from scripts.rules_engine import RulesEngine
    from scripts.synthesis_runner import get_synthesis_runner
    from scripts.equivalence_checker import EquivalenceChecker

    # Initialize modules
    # Keep the no-LLM configuration when supported, while remaining compatible
    # with the deployed rule engine that predates the optional constructor flag.
    try:
        rules_engine = RulesEngine(use_llm=False)
    except TypeError:
        rules_engine = RulesEngine()
    synth_runner = get_synthesis_runner()
    equiv_checker = EquivalenceChecker()

    # 1. Optimization Generation (Rules Engine)
    optimized_code, transformations = rules_engine.optimize(original_code, top_module, target=args.target)
    
    optimizable = len(transformations) > 0

    if not optimizable:
        # Synthesis is best-effort PPA evidence. A synthesis failure must not
        # discard the already-computed ML prediction and SHAP evidence.
        baseline_ppa = synth_runner.run_synthesis(str(input_path), top_module, target=args.target)
        result = {
            "detected_hdl": "verilog",
            "optimizable": False,
            "optimized_code": None,
            "diff": "",
            "functional_equivalence": "N/A",
            "impact": None,
            "ml_prediction": ml_prediction,
            "transformations_applied": [],
            "warnings": ["No safe optimizations found. Code is already efficient or rules didn't match."]
        }
        if "error" in baseline_ppa:
            result["synthesis_diagnostics"] = {"baseline": baseline_ppa["error"]}
            result["warnings"].append("Baseline synthesis failed; the ML gate estimate and feature evidence remain available.")
        else:
            result["impact"] = {
                "area": {
                    "cell_count": { "baseline": baseline_ppa["area"]["cell_count"], "optimized": baseline_ppa["area"]["cell_count"], "delta_pct": 0.0 }
                },
                "timing": {
                    "logic_levels": { "baseline": baseline_ppa["timing"]["logic_levels"], "optimized": baseline_ppa["timing"]["logic_levels"], "delta_pct": 0.0 }
                }
            }
        print(json.dumps(result, indent=2))
        sys.exit(0)

    # Write optimized code to temp file for synthesis/equiv
    optimized_path = input_path.with_name(f"{input_path.stem}_opt{input_path.suffix}")
    with open(optimized_path, "w", encoding="utf-8") as f:
        f.write(optimized_code)

    # 2. Equivalence Checking
    equiv_status = equiv_checker.check_equivalence(str(input_path), str(optimized_path), top_module)

    if equiv_status != "PASS":
        # If equivalence fails, reject the optimization
        baseline_ppa = synth_runner.run_synthesis(str(input_path), top_module, target=args.target)
        result = {
            "detected_hdl": "verilog",
            "optimizable": False,
            "optimized_code": None,
            "diff": "",
            "functional_equivalence": equiv_status,
            "impact": {
                "area": {
                    "cell_count": { "baseline": baseline_ppa.get("area", {}).get("cell_count"), "optimized": None, "delta_pct": 0.0 }
                },
                "timing": {
                    "logic_levels": { "baseline": baseline_ppa.get("timing", {}).get("logic_levels"), "optimized": None, "delta_pct": 0.0 }
                }
            },
            "ml_prediction": ml_prediction,
            "transformations_applied": transformations,
            "warnings": ["Optimizations were proposed but rejected because functional equivalence could not be proven (Status: " + equiv_status + ")."]
        }
        if "error" in baseline_ppa:
            result["synthesis_diagnostics"] = {"baseline": baseline_ppa["error"]}
            result["warnings"].append("Baseline synthesis failed; the ML gate estimate and feature evidence remain available.")
        print(json.dumps(result, indent=2))
        sys.exit(0)

    # 3. Baseline & Optimized Synthesis
    baseline_ppa = synth_runner.run_synthesis(str(input_path), top_module, target=args.target)
    opt_ppa = synth_runner.run_synthesis(str(optimized_path), top_module, target=args.target)

    if "error" in baseline_ppa or "error" in opt_ppa:
        diagnostics = {}
        if "error" in baseline_ppa:
            diagnostics["baseline"] = baseline_ppa["error"]
        if "error" in opt_ppa:
            diagnostics["optimized"] = opt_ppa["error"]
        print(json.dumps({
            "detected_hdl": "verilog",
            "optimizable": True,
            "optimized_code": optimized_code,
            "diff": generate_diff(original_code, optimized_code, input_path.name),
            "functional_equivalence": equiv_status,
            "impact": None,
            "ml_prediction": ml_prediction,
            "transformations_applied": transformations,
            "synthesis_diagnostics": diagnostics,
            "warnings": ["Synthesis failed; the ML gate estimate and feature evidence remain available. Validate the proposed rewrite in a compatible synthesis environment."],
        }, indent=2))
        sys.exit(0)

    def calc_delta(b, o):
        if b == 0:
            return 0.0
        return round(((o - b) / b) * 100, 2)

    b_cells = baseline_ppa["area"]["cell_count"]
    o_cells = opt_ppa["area"]["cell_count"]
    b_levels = baseline_ppa["timing"]["logic_levels"]
    o_levels = opt_ppa["timing"]["logic_levels"]

    result = {
        "detected_hdl": "verilog",
        "optimizable": True,
        "optimized_code": optimized_code,
        "diff": generate_diff(original_code, optimized_code, input_path.name),
        "functional_equivalence": equiv_status,
        "impact": {
            "area": {
                "cell_count": {
                    "baseline": b_cells,
                    "optimized": o_cells,
                    "delta_pct": calc_delta(b_cells, o_cells)
                }
            },
            "timing": {
                "logic_levels": {
                    "baseline": b_levels,
                    "optimized": o_levels,
                    "delta_pct": calc_delta(b_levels, o_levels)
                }
            }
        },
        "ml_prediction": ml_prediction,
        "transformations_applied": transformations,
        "warnings": []
    }

    print(json.dumps(result, indent=2))

if __name__ == "__main__":
    main()
