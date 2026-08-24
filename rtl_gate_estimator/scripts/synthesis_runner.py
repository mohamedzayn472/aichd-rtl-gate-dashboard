"""
Synthesis runner module for RTL Code Optimization Pipeline.
Provides an abstract interface for running synthesis to extract PPA metrics.
Currently supports Yosys for Area (cell count) and Timing (logic levels).
"""
import os
import re
import json
import logging
from abc import ABC, abstractmethod
from pathlib import Path
from typing import Dict, Any, Tuple

from scripts.yosys_synthesis import YosysSynthesizer
from scripts.utils import CommandExecutor

logger = logging.getLogger(__name__)

class SynthesisRunner(ABC):
    @abstractmethod
    def run_synthesis(self, verilog_file: str, top_module: str = "") -> Dict[str, Any]:
        """
        Run synthesis on the given file and return a dictionary of metrics.
        Required keys in output:
        - "area": {"cell_count": int, ...}
        - "timing": {"logic_levels": int, ...}
        - "power": {} # if available
        """
        pass

class YosysRunner(SynthesisRunner):
    def __init__(self, work_dir: str = "temp/synth"):
        self.work_dir = Path(work_dir)
        self.work_dir.mkdir(parents=True, exist_ok=True)
        try:
            self.yosys_bin = YosysSynthesizer.get_yosys_binary()
        except RuntimeError as e:
            self.yosys_bin = None
            logger.error(f"Yosys not found: {e}")

    def run_synthesis(self, verilog_file: str, top_module: str = "", target: str = "asic") -> Dict[str, Any]:
        if not self.yosys_bin:
            return {"error": "Yosys not available in environment."}

        verilog_path = Path(verilog_file).resolve()
        if not top_module:
            top_module = verilog_path.stem

        import uuid
        uid = uuid.uuid4().hex[:8]
        bom_free_path = None
        yosys_input_path = verilog_path
        try:
            source_bytes = verilog_path.read_bytes()
            if source_bytes.startswith(b'\xef\xbb\xbf'):
                # Yosys treats a BOM as an invalid first Verilog token. Keep
                # the caller's file untouched and synthesize a private copy.
                bom_free_path = self.work_dir / f"source_{top_module}_{uid}.v"
                bom_free_path.write_bytes(source_bytes[3:])
                yosys_input_path = bom_free_path
        except OSError as exc:
            return {"error": f"Unable to prepare RTL for synthesis: {exc}"}

        script_path = self.work_dir / f"synth_{top_module}_{uid}.ys"
        with open(script_path, "w", encoding="utf-8") as f:
            f.write(f'read_verilog -sv "{str(yosys_input_path).replace(chr(92), "/")}"\n')
            f.write(f'hierarchy -check -top {top_module}\n')
            if target == "xilinx":
                f.write('synth_xilinx -flatten\n')
            elif target == "intel":
                f.write('synth_intel -family max10\n')
            else:
                f.write('synth\n')
            f.write('stat\n')
            f.write('ltp\n') # Longest topological path for logic levels

        cmd = f'"{self.yosys_bin}" -s "{script_path}"'
        returncode, stdout, stderr = CommandExecutor.run_command(cmd, timeout=300)

        for temporary_path in (script_path, bom_free_path):
            try:
                if temporary_path and temporary_path.exists():
                    temporary_path.unlink()
            except OSError:
                pass
        output = stdout + "\n" + stderr

        if returncode != 0:
            logger.warning(f"Yosys synthesis failed for {top_module}: {stderr}")
            return {"error": f"Synthesis failed: {stderr.strip()}"}

        # Parse Area (Cell count)
        # Re-use the parsing logic or do a simple extraction
        cell_count = self._parse_stat(output)
        
        # Parse Timing (Logic levels from ltp)
        logic_levels = self._parse_ltp(output)

        return {
            "area": {
                "cell_count": cell_count
            },
            "timing": {
                "logic_levels": logic_levels
            },
            "power": {},
            "raw_log": output
        }

    def _parse_stat(self, text: str) -> int:
        stat_marker = 'Printing statistics.'
        stat_section_start = text.rfind(stat_marker)
        stat_text = text[stat_section_start:] if stat_section_start != -1 else text

        hier_match = re.search(
            r'=== design hierarchy ===.*?Count including submodules\.\s*\|\s*(\d+)',
            stat_text,
            re.DOTALL,
        )
        if hier_match:
            return int(hier_match.group(1))

        cells_match = re.search(r'^\s*(\d+)\s+cells\s*$', stat_text, re.MULTILINE)
        if cells_match:
            return int(cells_match.group(1))
        
        return 0

    def _parse_ltp(self, text: str) -> int:
        # ltp output looks like: Longest topological path in <module> (length=12):
        match = re.search(r'Longest topological path in .*? \(length=(\d+)\):', text)
        if match:
            return int(match.group(1))
        return 0

def get_synthesis_runner(runner_type: str = "yosys", work_dir: str = "temp/synth") -> SynthesisRunner:
    if runner_type.lower() == "yosys":
        return YosysRunner(work_dir)
    # Could add genus runner here
    raise ValueError(f"Unknown synthesis runner: {runner_type}")
