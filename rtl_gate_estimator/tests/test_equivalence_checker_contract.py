"""Acceptance-contract tests for formal equivalence parsing."""

from scripts.equivalence_checker import EquivalenceChecker


def _sources(tmp_path):
    baseline = tmp_path / "baseline.v"
    candidate = tmp_path / "candidate.v"
    source = "module dut(input a, output y); assign y = a; endmodule\n"
    baseline.write_text(source, encoding="utf-8")
    candidate.write_text(source, encoding="utf-8")
    return baseline, candidate


def test_checker_rejects_partial_yosys_progress_as_unverified(tmp_path, monkeypatch):
    """A progress line alone must never authorize corrected RTL."""
    baseline, candidate = _sources(tmp_path)
    checker = EquivalenceChecker(work_dir=str(tmp_path / "equiv"))
    checker.yosys_bin = "yosys"
    monkeypatch.setattr(
        "scripts.equivalence_checker.CommandExecutor.run_command",
        lambda *_args, **_kwargs: (0, "Successfully proved 2 $equiv cells.", ""),
    )

    assert checker.check_equivalence(str(baseline), str(candidate), "dut") == "UNVERIFIED"


def test_checker_accepts_only_the_final_yosys_equivalence_success(tmp_path, monkeypatch):
    baseline, candidate = _sources(tmp_path)
    checker = EquivalenceChecker(work_dir=str(tmp_path / "equiv"))
    checker.yosys_bin = "yosys"
    monkeypatch.setattr(
        "scripts.equivalence_checker.CommandExecutor.run_command",
        lambda *_args, **_kwargs: (0, "Successfully proved 2 $equiv cells.\nEquivalence successfully proven!", ""),
    )

    assert checker.check_equivalence(str(baseline), str(candidate), "dut") == "PASS"


def test_checker_reports_failed_yosys_assertion_as_failure(tmp_path, monkeypatch):
    baseline, candidate = _sources(tmp_path)
    checker = EquivalenceChecker(work_dir=str(tmp_path / "equiv"))
    checker.yosys_bin = "yosys"
    monkeypatch.setattr(
        "scripts.equivalence_checker.CommandExecutor.run_command",
        lambda *_args, **_kwargs: (1, "Found 1 unproven $equiv cells.", "ERROR: Found failed equivalence cells."),
    )

    assert checker.check_equivalence(str(baseline), str(candidate), "dut") == "FAIL"
