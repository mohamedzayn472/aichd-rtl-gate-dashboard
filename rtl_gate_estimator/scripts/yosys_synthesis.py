"""Yosys synthesis integration for rtl_gate_estimator."""
import json
import logging
import re
import shutil
from pathlib import Path
from typing import Any, Dict, Optional, List

from scripts.utils import CommandExecutor

logger = logging.getLogger(__name__)

YOSYS_GATE_MAP = {
    'and': ['$_AND_', '$_NAND_', 'and', 'AND'],
    'or': ['$_OR_', '$_NOR_', 'or', 'OR'],
    'xor': ['$_XOR_', 'xor', 'XOR'],
    'not': ['$_NOT_', 'not', 'NOT'],
    'nand': ['$_NAND_', 'nand', 'NAND'],
    'nor': ['$_NOR_', 'nor', 'NOR'],
}


class YosysSynthesizer:
    """Run real Yosys synthesis and extract gate counts from stat output."""

    def __init__(self, synthesis_dir: Path, timeout: int = 300):
        self.synthesis_dir = Path(synthesis_dir)
        self.synthesis_dir.mkdir(parents=True, exist_ok=True)
        self.raw_logs_dir = self.synthesis_dir.parent / "yosys_raw_logs"
        self.raw_logs_dir.mkdir(parents=True, exist_ok=True)
        self.timeout = timeout
        self.yosys_available = self.verify_yosys_installed()

    @staticmethod
    def get_yosys_binary() -> str:
        yosys_path = shutil.which("yosys")
        if yosys_path:
            return yosys_path
        win_yosys = Path.home() / "oss-cad-suite" / "bin" / "yosys.exe"
        if win_yosys.exists():
            return str(win_yosys)
        raise RuntimeError("Real Yosys binary not found. Please install Yosys or add oss-cad-suite/bin to system PATH.")

    @staticmethod
    def verify_yosys_installed() -> bool:
        yosys_bin = YosysSynthesizer.get_yosys_binary()
        returncode, stdout, stderr = CommandExecutor.run_command(f'"{yosys_bin}" -V')
        if returncode == 0:
            version_line = stdout.strip().splitlines()[0] if stdout.strip() else 'unknown'
            logger.info(f'Real Yosys found: {version_line}')
            return True
        logger.error(f'Real Yosys execution check failed. Returncode: {returncode}, Stderr: {stderr}')
        return False

    def run_synthesis(self, verilog_file: Path, dependencies: Optional[List[str]] = None) -> Dict[str, Any]:
        """Synthesize a Verilog file using real Yosys and return parsed gate counts."""
        verilog_file = Path(verilog_file).resolve()
        module_name = verilog_file.stem

        if not self.yosys_available:
            raise RuntimeError(
                f"Real Yosys executable is not available on system PATH. Cannot synthesize {module_name}."
            )

        # Only load the target file plus any explicitly declared dependencies.
        # Loading all sibling .v files causes severe slowdowns (e.g. lfsr.v is
        # a huge parameterised module that makes Yosys hang for 5+ minutes).
        dep_paths = []
        if dependencies:
            parent_dir = verilog_file.parent
            for dep in dependencies:
                dep_path = parent_dir / dep
                if dep_path.exists():
                    dep_paths.append(str(dep_path.resolve()).replace('\\', '/'))
                else:
                    logger.warning(f"Declared dependency {dep} not found; skipping")

        # Write Yosys script file to prevent Windows CLI escaping issues
        ys_script_path = self.synthesis_dir / f"synth_{module_name}.ys"
        with open(ys_script_path, "w", encoding="utf-8") as f:
            # Dependencies first so the top module can resolve references
            for dep_vf in dep_paths:
                f.write(f'read_verilog "{dep_vf}"\n')
            f.write(f'read_verilog "{str(verilog_file).replace(chr(92), "/")}"\n')
            f.write(f'synth -top {module_name}\n')
            f.write('stat\n')

        yosys_bin = self.get_yosys_binary()
        cmd = f'"{yosys_bin}" -s "{ys_script_path}"'
        returncode, stdout, stderr = CommandExecutor.run_command(
            cmd, timeout=self.timeout
        )
        text = stdout + '\n' + stderr

        # Save raw log for auditability
        raw_log_path = self.raw_logs_dir / f"{module_name}.log"
        with open(raw_log_path, 'w', encoding='utf-8') as f:
            f.write(f"=== Command: {cmd} ===\n")
            f.write(f"=== Returncode: {returncode} ===\n")
            f.write(text)

        if returncode != 0:
            logger.warning(f'Yosys failed for {module_name}: {stderr.strip()}')
            return {
                'synthesis_status': 'failed',
                'module_name': module_name,
                'error': stderr.strip(),
            }

        gate_counts = self._parse_stat_output(text)
        gate_counts['module_name'] = module_name
        gate_counts['synthesis_status'] = 'success'

        result_path = self.synthesis_dir / f'{module_name}_result.json'
        with open(result_path, 'w') as f:
            json.dump(gate_counts, f, indent=2)

        return gate_counts

    def _parse_stat_output(self, text: str) -> Dict[str, Any]:
        """Parse Yosys stat output into a hierarchy-inclusive gate count.

        Methodology: **hierarchy-inclusive** (the sum of all primitive cells
        across the top module and all instantiated submodules).  This matches
        what Yosys reports in the "=== design hierarchy ===" block at the end
        of the stat command — the row labelled with the top module name gives
        the cell count including all submodule internals.

        Why not local-only?  For wrapper modules (e.g. ``uart``, which merely
        instantiates ``uart_rx`` and ``uart_tx``) the local cell count is 0,
        which would make the ground truth useless.  The hierarchy-inclusive
        count (420 for ``uart``) is the real implementation cost.

        Parsing strategy:
        1. Find the final "Printing statistics." section in the log.
        2. Within that section, locate the "=== design hierarchy ===" block.
        3. Read the *first* integer on the top-module hierarchy row (format:
           ``  N  <module_name>``).  That integer is the hierarchy-inclusive
           cell count.
        4. If step 3 fails (no hierarchy block — simple flat module), fall back
           to the first "N cells" line in the stat section.
        5. Also accumulate per-type gate counters from all cell-list lines
           (``  N   $_AND_`` etc.) across the whole stat section for gate-type
           breakdown.
        """
        gates = {key: 0 for key in YOSYS_GATE_MAP}
        total_cells = 0

        # ── Isolate the final stat command output ────────────────────────────
        # Yosys emits "Printing statistics." before the stat block.
        # We take everything after the LAST such marker so that intermediate
        # stat-like output from the synth pass doesn't confuse us.
        stat_marker = 'Printing statistics.'
        stat_section_start = text.rfind(stat_marker)
        stat_text = text[stat_section_start:] if stat_section_start != -1 else text

        # ── Strategy 1: design hierarchy block ───────────────────────────────
        # The block looks like:
        #   === design hierarchy ===
        #
        #           +----------Count including submodules.
        #           |
        #         420 uart
        #         249 $paramod\uart_rx\...
        #         ...
        #
        # The FIRST integer on the first data row (top module) is what we want.
        hier_match = re.search(
            r'=== design hierarchy ===.*?Count including submodules\.\s*\|\s*(\d+)',
            stat_text,
            re.DOTALL,
        )
        if hier_match:
            total_cells = int(hier_match.group(1))
        else:
            # ── Strategy 2: plain "N cells" in the stat section ──────────────
            # Flat modules with no submodules emit a single stat block without
            # a hierarchy section.  The line is "      N cells".
            cells_match = re.search(r'^\s*(\d+)\s+cells\s*$', stat_text, re.MULTILINE)
            if cells_match:
                total_cells = int(cells_match.group(1))

        # ── Per-type gate counter ─────────────────────────────────────────────
        # Accumulate from lines of the form "   N   $_TYPE_" across the whole
        # stat section (covers all submodule breakdowns, giving us per-type
        # totals for the whole hierarchy).
        for line in stat_text.splitlines():
            line_stripped = line.strip()
            if not line_stripped:
                continue
            # Format: "   N   $_CELL_TYPE_"
            cell_match = re.match(r'^(\d+)\s+(\S+)$', line_stripped)
            if not cell_match:
                continue
            count, cell_type = int(cell_match.group(1)), cell_match.group(2)
            for gate_key, patterns in YOSYS_GATE_MAP.items():
                if any(pattern in cell_type for pattern in patterns):
                    gates[gate_key] += count

        gate_total = total_cells if total_cells > 0 else sum(gates.values())
        return {
            'gate_count': gate_total,
            'and_gates': gates['and'],
            'or_gates': gates['or'],
            'xor_gates': gates['xor'],
            'not_gates': gates['not'],
            'nand_gates': gates['nand'],
            'nor_gates': gates['nor'],
            'total_cells': total_cells,
        }

