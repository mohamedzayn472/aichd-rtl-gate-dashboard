"""Independent bounded exhaustive equivalence checks for small combinational RTL.

This defense-in-depth check simulates the original and candidate modules
separately with every binary primary-input vector. It does not replace the
Yosys formal proof; it makes a polarity, port, or code-generation regression
immediately visible for supported combinational designs with bounded inputs.
"""

from __future__ import annotations

import json
import logging
import os
import re
import shutil
import tempfile
from pathlib import Path
from typing import Any

from scripts.utils import CommandExecutor
from scripts.yosys_synthesis import YosysSynthesizer

logger = logging.getLogger(__name__)


class ExhaustiveEquivalenceChecker:
    """Exhaustively simulate small, combinational two-state designs.

    Designs outside the bounded, combinational domain return ``SKIPPED``;
    the caller must still require the existing formal-equivalence proof before
    accepting such a candidate. Any simulator/introspection issue inside the
    bounded domain returns ``UNVERIFIED`` so the candidate can be withheld.
    """

    def __init__(self, work_dir: str = "temp/exhaustive", max_input_bits: int = 12):
        self.work_dir = Path(work_dir)
        self.work_dir.mkdir(parents=True, exist_ok=True)
        self.max_input_bits = max_input_bits
        self.iverilog_bin = self._find_tool("iverilog")
        self.vvp_bin = self._find_tool("vvp")
        try:
            self.yosys_bin = YosysSynthesizer.get_yosys_binary()
        except RuntimeError:
            self.yosys_bin = None

    @staticmethod
    def _find_tool(name: str) -> str | None:
        configured = os.environ.get(f"AICHD_{name.upper()}_BIN")
        if configured:
            return configured
        discovered = shutil.which(name)
        if discovered:
            return discovered
        extension = ".exe" if os.name == "nt" else ""
        oss_candidate = Path.home() / "oss-cad-suite" / "bin" / f"{name}{extension}"
        return str(oss_candidate) if oss_candidate.exists() else None

    @staticmethod
    def _result(status: str, *, method: str, reason: str, input_bits: int | None = None, vector_count: int | None = None) -> dict[str, Any]:
        payload: dict[str, Any] = {"status": status, "method": method, "reason": reason}
        if input_bits is not None:
            payload["input_bits"] = input_bits
        if vector_count is not None:
            payload["vector_count"] = vector_count
        return payload

    @staticmethod
    def _quoted(path: Path | str) -> str:
        return f'"{str(path)}"'

    def _read_ports(self, source_path: Path, top_module: str, workspace: Path) -> tuple[list[tuple[str, int]], list[tuple[str, int]], bool] | dict[str, Any]:
        """Elaborate through Yosys and return input/output port widths plus statefulness."""
        if not self.yosys_bin:
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason="Yosys is unavailable for bounded-verification port discovery.")

        json_path = workspace / "design.json"
        normalized_source = workspace / "source.v"
        try:
            normalized_source.write_text(source_path.read_text(encoding="utf-8-sig"), encoding="utf-8")
        except OSError as exc:
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason=f"Unable to prepare RTL for bounded verification: {exc}")

        script = workspace / "ports.ys"
        script.write_text(
            "\n".join([
                f'read_verilog -sv {self._quoted(normalized_source)}',
                f"hierarchy -check -top {top_module}",
                "prep -flatten",
                f'write_json {self._quoted(json_path)}',
                "",
            ]),
            encoding="utf-8",
        )
        code, _stdout, stderr = CommandExecutor.run_command(f"{self._quoted(self.yosys_bin)} -s {self._quoted(script)}", timeout=60)
        if code != 0 or not json_path.exists():
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason=f"Yosys could not inspect bounded-verification ports: {stderr.strip() or 'no JSON netlist was written'}")

        try:
            module = json.loads(json_path.read_text(encoding="utf-8"))["modules"][top_module]
            ports = module.get("ports", {})
            cells = module.get("cells", {})
        except (OSError, KeyError, TypeError, json.JSONDecodeError) as exc:
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason=f"Unable to read bounded-verification netlist: {exc}")

        if any(port.get("direction") == "inout" for port in ports.values()):
            return self._result("SKIPPED", method="exhaustive_simulation", reason="Bounded exhaustive verification does not model inout ports.")
        if any(not re.fullmatch(r"[A-Za-z_][A-Za-z0-9_$]*", name) for name in ports):
            return self._result("SKIPPED", method="exhaustive_simulation", reason="Bounded exhaustive verification does not support escaped port names.")

        sequential_prefixes = ("$dff", "$adff", "$dffe", "$dlatch", "$ff", "$mem")
        is_sequential = any(str(cell.get("type", "")).startswith(sequential_prefixes) for cell in cells.values())
        inputs = [(name, len(port.get("bits", []))) for name, port in ports.items() if port.get("direction") == "input"]
        outputs = [(name, len(port.get("bits", []))) for name, port in ports.items() if port.get("direction") == "output"]
        return inputs, outputs, is_sequential

    @staticmethod
    def _declaration(kind: str, name: str, width: int) -> str:
        width_suffix = "" if width == 1 else f" [{width - 1}:0]"
        return f"{kind}{width_suffix} {name};"

    def _testbench(self, top_module: str, inputs: list[tuple[str, int]], outputs: list[tuple[str, int]], vector_count: int) -> str:
        input_declarations = "\n  ".join(self._declaration("reg", name, width) for name, width in inputs)
        output_declarations = "\n  ".join(self._declaration("wire", name, width) for name, width in outputs)
        port_connections = ", ".join(f".{name}({name})" for name, _ in [*inputs, *outputs])
        input_concat = ", ".join(name for name, _ in inputs)
        input_bits = sum(width for _, width in inputs)
        total_bits = len(f"{vector_count - 1:b}") if vector_count > 0 else 1
        vector_width = max(input_bits, total_bits)
        output_writes = " ".join(f'$write("%b", {name});' for name, _ in outputs)
        return f"""module aichd_exhaustive_tb;
  {input_declarations}
  {output_declarations}
  {top_module} dut ({port_connections});
  reg [{vector_width - 1}:0] vector;
  integer i;
  initial begin
    for (i = 0; i < {vector_count}; i = i + 1) begin
      vector = i;
      {{{input_concat}}} = vector;
      #1;
      $write("AICHD_VECTOR=%0d;AICHD_OUTPUTS=", i);
      {output_writes}
      $display("");
    end
    $finish;
  end
endmodule
"""

    def _simulate(self, source_path: Path, top_module: str, inputs: list[tuple[str, int]], outputs: list[tuple[str, int]], vector_count: int, workspace: Path, label: str) -> dict[int, str] | dict[str, Any]:
        normalized_source = workspace / f"{label}.v"
        bench_path = workspace / f"{label}_tb.v"
        executable_path = workspace / f"{label}_sim"
        try:
            normalized_source.write_text(source_path.read_text(encoding="utf-8-sig"), encoding="utf-8")
            bench_path.write_text(self._testbench(top_module, inputs, outputs, vector_count), encoding="utf-8")
        except OSError as exc:
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason=f"Unable to prepare simulation: {exc}")

        compile_command = f"{self._quoted(self.iverilog_bin or 'iverilog')} -g2012 -s aichd_exhaustive_tb -o {self._quoted(executable_path)} {self._quoted(normalized_source)} {self._quoted(bench_path)}"
        code, _stdout, stderr = CommandExecutor.run_command(compile_command, timeout=60)
        if code != 0:
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason=f"Icarus Verilog could not compile the {label} design: {stderr.strip()}")

        code, stdout, stderr = CommandExecutor.run_command(f"{self._quoted(self.vvp_bin or 'vvp')} {self._quoted(executable_path)}", timeout=60)
        if code != 0:
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason=f"Icarus Verilog could not run the {label} design: {stderr.strip()}")

        vectors: dict[int, str] = {}
        for line in stdout.splitlines():
            match = re.fullmatch(r"AICHD_VECTOR=(\d+);AICHD_OUTPUTS=([01xXzZ]+)", line.strip())
            if match:
                vectors[int(match.group(1))] = match.group(2).lower()
        if len(vectors) != vector_count:
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason=f"Simulation emitted {len(vectors)} of {vector_count} expected input vectors.")
        if any(re.search(r"[xz]", output) for output in vectors.values()):
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason="Simulation produced unknown or high-impedance outputs; bounded two-state comparison is inconclusive.")
        return vectors

    def check_equivalence(self, baseline_file: str, optimized_file: str, top_module: str) -> dict[str, Any]:
        """Return PASS, FAIL, SKIPPED, or UNVERIFIED for bounded simulation."""
        if not self.iverilog_bin or not self.vvp_bin:
            return self._result("UNVERIFIED", method="exhaustive_simulation", reason="Icarus Verilog is unavailable for bounded exhaustive verification.")

        baseline_path = Path(baseline_file).resolve()
        optimized_path = Path(optimized_file).resolve()
        with tempfile.TemporaryDirectory(dir=self.work_dir) as temp_dir:
            workspace = Path(temp_dir)
            port_data = self._read_ports(baseline_path, top_module, workspace)
            if isinstance(port_data, dict):
                return port_data
            inputs, outputs, is_sequential = port_data
            if is_sequential:
                return self._result("SKIPPED", method="exhaustive_simulation", reason="Design contains sequential state; bounded exhaustive simulation is reserved for combinational candidates.")
            input_bits = sum(width for _name, width in inputs)
            if not inputs or not outputs:
                return self._result("SKIPPED", method="exhaustive_simulation", reason="Design must expose at least one input and one output for bounded exhaustive verification.", input_bits=input_bits)
            if input_bits > self.max_input_bits:
                return self._result("SKIPPED", method="exhaustive_simulation", reason=f"Design has {input_bits} primary-input bits, exceeding the {self.max_input_bits}-bit exhaustive limit.", input_bits=input_bits)

            vector_count = 1 << input_bits
            baseline_vectors = self._simulate(baseline_path, top_module, inputs, outputs, vector_count, workspace, "baseline")
            if isinstance(baseline_vectors, dict) and "status" in baseline_vectors:
                return baseline_vectors
            optimized_vectors = self._simulate(optimized_path, top_module, inputs, outputs, vector_count, workspace, "candidate")
            if isinstance(optimized_vectors, dict) and "status" in optimized_vectors:
                return optimized_vectors

            for vector in range(vector_count):
                if baseline_vectors[vector] != optimized_vectors[vector]:
                    return self._result("FAIL", method="exhaustive_simulation", reason=f"Output mismatch at input vector {vector}: original={baseline_vectors[vector]}, candidate={optimized_vectors[vector]}.", input_bits=input_bits, vector_count=vector_count)
            return self._result("PASS", method="exhaustive_simulation", reason="All bounded primary-input vectors produced identical outputs.", input_bits=input_bits, vector_count=vector_count)
