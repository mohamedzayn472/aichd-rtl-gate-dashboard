"""Regression tests for independent bounded combinational verification."""

from pathlib import Path

import pytest

from scripts.exhaustive_checker import ExhaustiveEquivalenceChecker


def run_exhaustive_pair(tmp_path: Path, baseline: str, candidate: str, top: str = "dut"):
    baseline_path = tmp_path / "baseline.v"
    candidate_path = tmp_path / "candidate.v"
    baseline_path.write_text(baseline, encoding="utf-8")
    candidate_path.write_text(candidate, encoding="utf-8")
    checker = ExhaustiveEquivalenceChecker(work_dir=str(tmp_path / "verification"), max_input_bits=8)
    if not checker.iverilog_bin or not checker.vvp_bin:
        pytest.skip("Icarus Verilog is unavailable in this test environment")
    return checker.check_equivalence(str(baseline_path), str(candidate_path), top)


def test_basic_gate_network_preserves_all_boolean_polarities(tmp_path):
    baseline = """
module dut(input a, input b, output and_y, output or_y, output not_y, output nand_y, output nor_y, output xor_y, output xnor_y);
  assign and_y = a & b;
  assign or_y = a | b;
  assign not_y = ~a;
  assign nand_y = ~(a & b);
  assign nor_y = ~(a | b);
  assign xor_y = a ^ b;
  assign xnor_y = ~(a ^ b);
endmodule
"""
    candidate = """
module dut(input a, input b, output and_y, output or_y, output not_y, output nand_y, output nor_y, output xor_y, output xnor_y);
  assign and_y = ~(~a | ~b);
  assign or_y = ~(~a & ~b);
  assign not_y = ~a;
  assign nand_y = ~and_y;
  assign nor_y = ~or_y;
  assign xor_y = (a & ~b) | (~a & b);
  assign xnor_y = (a & b) | (~a & ~b);
endmodule
"""

    result = run_exhaustive_pair(tmp_path, baseline, candidate)

    assert result == {
        "status": "PASS",
        "method": "exhaustive_simulation",
        "reason": "All bounded primary-input vectors produced identical outputs.",
        "input_bits": 2,
        "vector_count": 4,
    }


def test_full_adder_yosys_candidate_passes_all_eight_truth_table_vectors(tmp_path):
    baseline = """
module dut(input a, input b, input cin, output sum, output cout);
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
"""
    # The first three equations form XNOR(a, cin), then the final inversion
    # produces b XOR a XOR cin. This guards against future XOR/XNOR mistakes.
    candidate = """
module dut(input a, input b, input cin, output sum, output cout);
  wire _0_, _1_, _2_, _3_;
  assign _1_ = a | cin;
  assign _2_ = ~(a & cin);
  assign _3_ = ~(_1_ & _2_);
  assign sum = ~(b ^ _3_);
  assign _0_ = ~(b & _1_);
  assign cout = ~(_2_ & _0_);
endmodule
"""

    result = run_exhaustive_pair(tmp_path, baseline, candidate)

    assert result["status"] == "PASS"
    assert result["input_bits"] == 3
    assert result["vector_count"] == 8

    # Verify the human-readable truth table as well as the verifier's PASS
    # result. Output strings preserve module-port order: sum, then cout.
    expected_vectors = {
        0: "00",  # 000 -> sum=0, cout=0
        1: "10",  # 001 -> sum=1, cout=0
        2: "10",  # 010 -> sum=1, cout=0
        3: "01",  # 011 -> sum=0, cout=1
        4: "10",  # 100 -> sum=1, cout=0
        5: "01",  # 101 -> sum=0, cout=1
        6: "01",  # 110 -> sum=0, cout=1
        7: "11",  # 111 -> sum=1, cout=1
    }
    baseline_path = tmp_path / "baseline.v"
    candidate_path = tmp_path / "candidate.v"
    checker = ExhaustiveEquivalenceChecker(work_dir=str(tmp_path / "truth_table"), max_input_bits=8)
    workspace = tmp_path / "truth_table" / "manual_vector_trace"
    workspace.mkdir(parents=True, exist_ok=True)
    port_data = checker._read_ports(baseline_path, "dut", workspace)
    assert not isinstance(port_data, dict)
    inputs, outputs, is_sequential = port_data
    assert not is_sequential
    original_vectors = checker._simulate(baseline_path, "dut", inputs, outputs, 8, workspace, "original")
    candidate_vectors = checker._simulate(candidate_path, "dut", inputs, outputs, 8, workspace, "candidate")
    assert original_vectors == expected_vectors
    assert candidate_vectors == expected_vectors


def test_half_adder_and_multiplexer_preserve_shared_combinational_logic(tmp_path):
    baseline = """
module dut(input a, input b, input sel, output sum, output carry, output mux_y);
  assign sum = a ^ b;
  assign carry = a & b;
  assign mux_y = sel ? a : b;
endmodule
"""
    candidate = """
module dut(input a, input b, input sel, output sum, output carry, output mux_y);
  wire xor_left = a & ~b;
  wire xor_right = ~a & b;
  assign sum = xor_left | xor_right;
  assign carry = a & b;
  assign mux_y = (sel & a) | (~sel & b);
endmodule
"""

    result = run_exhaustive_pair(tmp_path, baseline, candidate)

    assert result["status"] == "PASS"
    assert result["vector_count"] == 8


def test_xor_to_xnor_polarity_regression_is_rejected(tmp_path):
    baseline = """
module dut(input a, input b, output y);
  assign y = a ^ b;
endmodule
"""
    candidate = """
module dut(input a, input b, output y);
  assign y = ~(a ^ b);
endmodule
"""

    result = run_exhaustive_pair(tmp_path, baseline, candidate)

    assert result["status"] == "FAIL"
    assert result["input_bits"] == 2
    assert result["vector_count"] == 4
    assert "Output mismatch" in result["reason"]


def test_sequential_design_is_deferred_to_formal_equivalence(tmp_path):
    sequential = """
module dut(input clk, input rst, output reg q);
  always @(posedge clk) begin
    if (rst) q <= 1'b0;
    else q <= ~q;
  end
endmodule
"""

    result = run_exhaustive_pair(tmp_path, sequential, sequential)

    assert result["status"] == "SKIPPED"
    assert "sequential state" in result["reason"]
