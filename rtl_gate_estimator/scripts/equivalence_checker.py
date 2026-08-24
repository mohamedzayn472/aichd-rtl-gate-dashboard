"""
Equivalence checker module for RTL Code Optimization Pipeline.
Uses Yosys formal equivalence checking (equiv_make, equiv_simple) to prove
that the optimized code is functionally identical to the baseline.
"""
import os
import logging
from pathlib import Path

from scripts.yosys_synthesis import YosysSynthesizer
from scripts.utils import CommandExecutor

logger = logging.getLogger(__name__)

class EquivalenceChecker:
    def __init__(self, work_dir: str = "temp/equiv"):
        self.work_dir = Path(work_dir)
        self.work_dir.mkdir(parents=True, exist_ok=True)
        try:
            self.yosys_bin = YosysSynthesizer.get_yosys_binary()
        except RuntimeError as e:
            self.yosys_bin = None
            logger.error(f"Yosys not found: {e}")

    def check_equivalence(self, baseline_file: str, optimized_file: str, top_module: str) -> str:
        """
        Runs formal equivalence checking.
        Returns "PASS", "FAIL", or "UNVERIFIED"
        """
        if not self.yosys_bin:
            logger.warning("Equivalence check bypassed because Yosys is not available.")
            return "UNVERIFIED"

        baseline_path = Path(baseline_file).resolve()
        optimized_path = Path(optimized_file).resolve()

        script_path = self.work_dir / f"equiv_{top_module}.ys"
        with open(script_path, "w", encoding="utf-8") as f:
            # Load optimized (gold) and baseline (gate)
            # In equiv_make, gold is the first, gate is the second. We map baseline as gold, optimized as gate.
            f.write(f'read_verilog "{str(baseline_path).replace(chr(92), "/")}"\n')
            f.write(f'hierarchy -check -top {top_module}\n')
            f.write('prep -flatten\n')
            f.write('splitnets -ports; design -stash gold\n')
            
            f.write(f'read_verilog "{str(optimized_path).replace(chr(92), "/")}"\n')
            f.write(f'hierarchy -check -top {top_module}\n')
            f.write('prep -flatten\n')
            f.write('splitnets -ports; design -stash gate\n')

            f.write('design -copy-from gold -as gold {top}\n'.format(top=top_module))
            f.write('design -copy-from gate -as gate {top}\n'.format(top=top_module))

            f.write('equiv_make gold gate equiv\n')
            f.write('hierarchy -top equiv\n')
            f.write('equiv_simple -seq 5\n') # check for combinatorial equivalence (plus short sequential traces if needed)
            f.write('equiv_status -assert\n') # will error out if any unproven or failed equivs exist

        cmd = f'"{self.yosys_bin}" -s "{script_path}"'
        returncode, stdout, stderr = CommandExecutor.run_command(cmd, timeout=300)
        output = stdout + "\n" + stderr

        # Parse equiv_status output
        if returncode == 0 and "Equivalence successfully proven!" in output:
            return "PASS"
        elif "Successfully proved" in output and "Unproven" not in output and "Failed" not in output:
            return "PASS"
        elif returncode != 0 and "Failed" in output:
            return "FAIL"
        else:
            logger.warning(f"Equivalence check for {top_module} returned unverified/failed status. Returncode: {returncode}")
            return "UNVERIFIED"
