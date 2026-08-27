"""Regression coverage for upload-time RTL normalization and best-effort synthesis."""

import json
import re
import sys
from pathlib import Path

import yaml

from scripts.extract_features import RTLFeatureExtractor
from scripts.synthesis_runner import YosysRunner


def test_feature_extractor_accepts_bom_prefixed_rtl(project_root):
    config = yaml.safe_load((project_root / "config" / "config.yaml").read_text())
    extractor = RTLFeatureExtractor(config)
    bom_rtl = "\ufeffmodule bom_gate(input wire a, output wire y);\nassign y = a;\nendmodule\n"

    features = extractor.extract_features_from_content(bom_rtl, "bom_gate.v")

    assert features is not None
    assert features["struct_num_inputs"] == 1
    assert features["struct_num_outputs"] == 1


def test_yosys_runner_uses_bom_free_private_copy(tmp_path, monkeypatch):
    """Yosys must receive BOM-free bytes without mutating the user source."""
    source = tmp_path / "bom_gate.v"
    source.write_bytes(b"\xef\xbb\xbfmodule bom_gate(input a, output y); assign y = a; endmodule\n")
    captured = {}

    def fake_run_command(command, timeout):
        script_match = re.search(r'-s "([^"]+)"', command)
        assert script_match
        script = Path(script_match.group(1))
        read_match = re.search(r'read_verilog -sv "([^"]+)"', script.read_text(encoding="utf-8"))
        assert read_match
        yosys_source = Path(read_match.group(1))
        captured["yosys_source"] = yosys_source
        captured["bytes"] = yosys_source.read_bytes()
        return 0, "Printing statistics.\n  1 cells\nLongest topological path in bom_gate (length=1):", ""

    monkeypatch.setattr("scripts.synthesis_runner.YosysSynthesizer.get_yosys_binary", lambda: "yosys")
    monkeypatch.setattr("scripts.synthesis_runner.CommandExecutor.run_command", fake_run_command)
    runner = YosysRunner(work_dir=str(tmp_path / "synth"))

    result = runner.run_synthesis(str(source), "bom_gate")

    assert "error" not in result
    assert captured["bytes"].startswith(b"module")
    assert source.read_bytes().startswith(b"\xef\xbb\xbf")
    assert not captured["yosys_source"].exists()


def test_yosys_stats_parser_reads_standard_cell_count():
    """Yosys `stat` reports cells as `Number of cells: N` in standard output."""
    runner = YosysRunner.__new__(YosysRunner)
    output = """\
Printing statistics.
=== public_synth ===

   Number of wires:                  3
   Number of cells:                  1
     $_AND_                          1
"""

    assert runner._parse_stat(output) == 1


def test_yosys_runner_builds_generic_structural_candidate(tmp_path, monkeypatch):
    source = tmp_path / "candidate.v"
    source.write_text("module candidate(input a, output y); assign y = a; endmodule\n", encoding="utf-8")

    def fake_run_command(command, timeout):
        script_match = re.search(r'-s "([^"]+)"', command)
        script = Path(script_match.group(1))
        output_match = re.search(r'write_verilog -noattr "([^"]+)"', script.read_text(encoding="utf-8"))
        output = Path(output_match.group(1))
        output.write_text("module candidate(input a, output y); assign y = a; endmodule\n", encoding="utf-8")
        return 0, "Yosys candidate complete", ""

    monkeypatch.setattr("scripts.synthesis_runner.YosysSynthesizer.get_yosys_binary", lambda: "yosys")
    monkeypatch.setattr("scripts.synthesis_runner.CommandExecutor.run_command", fake_run_command)
    runner = YosysRunner(work_dir=str(tmp_path / "synth"))

    candidate = runner.build_optimized_candidate(str(source), "candidate")

    assert "error" not in candidate
    assert "module candidate" in candidate["optimized_code"]
    assert Path(candidate["path"]).exists()


def test_optimizer_preserves_ml_prediction_when_synthesis_fails(tmp_path, monkeypatch, capsys):
    """Synthesis diagnostics are supplemental; inference remains a valid response."""
    from scripts import optimize_rtl

    input_path = tmp_path / "unresolved.v"
    input_path.write_text("module unresolved(input a, output y); unresolved_cell u(); endmodule\n", encoding="utf-8")

    class NoTransformRules:
        def __init__(self):
            pass

        def optimize(self, code):
            return code, []

    class FailingSynthesis:
        def run_synthesis(self, *args, **kwargs):
            return {"error": "mocked Yosys hierarchy failure"}

    prediction = (31, {"struct_num_inputs": 1, "complex_chars": 73}, [])
    monkeypatch.setattr("scripts.predict.predict_single", lambda **kwargs: prediction)
    monkeypatch.setattr("scripts.utils.ConfigLoader.load_config", lambda _path: {})
    monkeypatch.setattr("scripts.rules_engine.RulesEngine", NoTransformRules)
    monkeypatch.setattr("scripts.synthesis_runner.get_synthesis_runner", lambda: FailingSynthesis())
    monkeypatch.setattr(sys, "argv", ["optimize_rtl.py", "--input", str(input_path), "--no-shap"])

    try:
        optimize_rtl.main()
    except SystemExit as exit_value:
        assert exit_value.code == 0

    result = json.loads(capsys.readouterr().out)
    assert result["ml_prediction"]["gate_count"] == 31
    assert result["synthesis_diagnostics"]["baseline"] == "mocked Yosys hierarchy failure"
    assert any("ML gate estimate" in warning for warning in result["warnings"])


def test_optimizer_withholds_equivalent_generic_candidate_without_ppa_gain(tmp_path, monkeypatch, capsys):
    """Formal PASS alone is insufficient: a PPA-worse candidate must be withheld."""
    from scripts import optimize_rtl

    input_path = tmp_path / "original.v"
    input_path.write_text("module original(input a, output y); assign y = a; endmodule\n", encoding="utf-8")
    candidate_path = tmp_path / "candidate.v"
    candidate_code = "module original(input a, output y); wire keep; assign keep = a; assign y = keep; endmodule\n"

    class NoTransformRules:
        def __init__(self, *args, **kwargs):
            pass

        def optimize(self, code):
            return code, []

    class GenericCandidateSynthesis:
        def run_synthesis(self, path, *args, **kwargs):
            if Path(path) == candidate_path:
                return {"area": {"cell_count": 7}, "timing": {"logic_levels": 4}}
            return {"area": {"cell_count": 6}, "timing": {"logic_levels": 3}}

        def build_optimized_candidate(self, *args, **kwargs):
            candidate_path.write_text(candidate_code, encoding="utf-8")
            return {"optimized_code": candidate_code, "path": str(candidate_path)}

    class PassingEquivalence:
        def check_equivalence(self, *args, **kwargs):
            return "PASS"

    monkeypatch.setattr("scripts.predict.predict_single", lambda **kwargs: (31, {"struct_num_inputs": 1}, []))
    monkeypatch.setattr("scripts.utils.ConfigLoader.load_config", lambda _path: {})
    monkeypatch.setattr("scripts.rules_engine.RulesEngine", NoTransformRules)
    monkeypatch.setattr("scripts.synthesis_runner.get_synthesis_runner", lambda: GenericCandidateSynthesis())
    monkeypatch.setattr("scripts.equivalence_checker.EquivalenceChecker", PassingEquivalence)
    monkeypatch.setattr(sys, "argv", ["optimize_rtl.py", "--input", str(input_path), "--no-shap"])

    optimize_rtl.main()

    result = json.loads(capsys.readouterr().out)
    assert result["optimization_status"] == "no_measurable_improvement"
    assert result["functional_equivalence"] == "PASS"
    assert result["optimizable"] is False
    assert result["optimized_code"] is None
    assert result["impact"]["area"]["cell_count"] == {"baseline": 6, "optimized": 7, "delta_pct": 16.67}
    assert not candidate_path.exists()


def test_optimizer_withholds_sequential_candidate_without_complete_stateful_proof(tmp_path, monkeypatch, capsys):
    """A short temporal check must not expose rewritten stateful RTL as verified."""
    from scripts import optimize_rtl

    input_path = tmp_path / "counter.v"
    input_path.write_text("module counter(input clk, output reg q); always @(posedge clk) q <= ~q; endmodule\n", encoding="utf-8")
    candidate_path = tmp_path / "candidate.v"
    candidate_code = "module counter(input clk, output reg q); wire next_q; assign next_q = ~q; always @(posedge clk) q <= next_q; endmodule\n"

    class NoTransformRules:
        def __init__(self, *args, **kwargs):
            pass

        def optimize(self, code):
            return code, []

    class GenericCandidateSynthesis:
        def run_synthesis(self, *args, **kwargs):
            return {"area": {"cell_count": 6}, "timing": {"logic_levels": 2}}

        def build_optimized_candidate(self, *args, **kwargs):
            candidate_path.write_text(candidate_code, encoding="utf-8")
            return {"optimized_code": candidate_code, "path": str(candidate_path)}

    class PassingEquivalence:
        def check_equivalence(self, *args, **kwargs):
            return "PASS"

    class StatefulSkippedExhaustiveCheck:
        def check_equivalence(self, *args, **kwargs):
            return {"status": "SKIPPED", "method": "exhaustive_simulation", "reason": "Design contains sequential state; bounded exhaustive simulation is reserved for combinational candidates."}

    monkeypatch.setattr("scripts.predict.predict_single", lambda **kwargs: (31, {"struct_num_inputs": 1}, []))
    monkeypatch.setattr("scripts.utils.ConfigLoader.load_config", lambda _path: {})
    monkeypatch.setattr("scripts.rules_engine.RulesEngine", NoTransformRules)
    monkeypatch.setattr("scripts.synthesis_runner.get_synthesis_runner", lambda: GenericCandidateSynthesis())
    monkeypatch.setattr("scripts.equivalence_checker.EquivalenceChecker", PassingEquivalence)
    monkeypatch.setattr("scripts.exhaustive_checker.ExhaustiveEquivalenceChecker", StatefulSkippedExhaustiveCheck)
    monkeypatch.setattr(sys, "argv", ["optimize_rtl.py", "--input", str(input_path), "--no-shap"])

    optimize_rtl.main()

    result = json.loads(capsys.readouterr().out)
    assert result["optimization_status"] == "candidate_unverified"
    assert result["functional_equivalence"] == "PASS"
    assert result["optimizable"] is False
    assert result["optimized_code"] is None
    assert result["bounded_verification"]["status"] == "SKIPPED"
    assert "sequential state" in result["warnings"][0]
    assert not candidate_path.exists()
