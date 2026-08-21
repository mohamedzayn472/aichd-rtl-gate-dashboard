"""Yosys synthesis integration for rtl_gate_estimator."""
import json
import logging
import re
from pathlib import Path
from typing import Any, Dict, Optional

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
    """Run Yosys synthesis and extract gate counts from stat output."""

    def __init__(self, synthesis_dir: Path, timeout: int = 300):
        self.synthesis_dir = Path(synthesis_dir)
        self.synthesis_dir.mkdir(parents=True, exist_ok=True)
        self.timeout = timeout
        self.yosys_available = self.verify_yosys_installed()

    @staticmethod
    def verify_yosys_installed() -> bool:
        returncode, stdout, _ = CommandExecutor.run_command('yosys -version')
        if returncode == 0:
            version_line = stdout.strip().splitlines()[0] if stdout.strip() else 'unknown'
            logger.info(f'Yosys found: {version_line}')
            return True
        logger.warning('Yosys not found. Label collection will use regex fallback.')
        return False

    def run_synthesis(self, verilog_file: Path) -> Dict[str, Any]:
        """Synthesize a Verilog file and return parsed gate counts."""
        verilog_file = Path(verilog_file).resolve()
        module_name = verilog_file.stem

        if not self.yosys_available:
            return {'synthesis_status': 'unavailable', 'module_name': module_name}

        cmd = (
            f'yosys -p "read_verilog {verilog_file}; '
            f'synth -top {module_name}; stat"'
        )
        returncode, stdout, stderr = CommandExecutor.run_command(
            cmd, timeout=self.timeout
        )
        text = stdout + '\n' + stderr

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
        """Parse Yosys stat output into gate count labels."""
        gates = {key: 0 for key in YOSYS_GATE_MAP}
        total_cells = 0

        total_match = re.search(r'Number of cells:\s*(\d+)', text)
        if total_match:
            total_cells = int(total_match.group(1))

        for line in text.splitlines():
            line = line.strip()
            if not line:
                continue
            cell_match = re.match(r'(\S+)\s+(\d+)\s*$', line)
            if not cell_match:
                continue
            cell_type, count = cell_match.group(1), int(cell_match.group(2))
            for gate_key, patterns in YOSYS_GATE_MAP.items():
                if any(pattern in cell_type for pattern in patterns):
                    gates[gate_key] += count

        gate_total = sum(gates.values()) or total_cells
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
