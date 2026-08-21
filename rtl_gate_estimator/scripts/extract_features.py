"""
Feature Extractor - Extracts RTL features from Verilog code.
Usage: python extract_features.py --input data/rtl --output data/features
"""
import argparse
import logging
import re
from pathlib import Path
from typing import Dict, Optional

import pandas as pd

import sys
sys.path.append(str(Path(__file__).parent.parent))
from scripts.utils import ConfigLoader, FileManager, setup_logging

logger = logging.getLogger(__name__)

# Verilog keywords to ignore when counting identifiers in declarations.
_PORT_KEYWORDS = frozenset({
    'wire', 'reg', 'logic', 'tri', 'wand', 'wor', 'signed', 'unsigned',
    'supply0', 'supply1', 'input', 'output', 'inout', 'parameter', 'localparam',
})


class RTLFeatureExtractor:
    """Extract features from RTL modules without requiring a full HDL parser."""

    @staticmethod
    def _strip_comments(verilog_content: str) -> str:
        """Remove line and block comments before applying structural regexes."""
        content = re.sub(r'//[^\n]*', '', verilog_content)
        return re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)

    @staticmethod
    def validate_verilog(verilog_content: str) -> tuple[bool, str]:
        """Perform lightweight structural validation for uploaded RTL."""
        stripped = RTLFeatureExtractor._strip_comments(verilog_content.strip())
        if not stripped:
            return False, 'Empty Verilog content'

        module_count = len(re.findall(r'\bmodule\s+[a-zA-Z_]\w*', stripped))
        endmodule_count = len(re.findall(r'\bendmodule\b', stripped))
        if module_count == 0:
            return False, 'No module declaration found — expected "module <name> (...)"'
        if endmodule_count == 0:
            return False, 'No endmodule found — module appears incomplete'
        if module_count != endmodule_count:
            return False, 'Mismatched module/endmodule declarations'

        # Accept ANSI declarations, legacy declarations, parameterized modules,
        # and empty modules. Reject a declaration that never reaches ';'.
        module_header = re.compile(
            r'\bmodule\s+[a-zA-Z_]\w*\s*'
            r'(?:#\s*\([^;]*?\)\s*)?'
            r'(?:\([^;]*?\)\s*)?;',
            flags=re.DOTALL,
        )
        if not module_header.search(stripped):
            return False, 'Malformed module declaration'

        pairs = {')': '(', ']': '[', '}': '{'}
        openings = set(pairs.values())
        stack = []
        for ch in stripped:
            if ch in openings:
                stack.append(ch)
            elif ch in pairs:
                if not stack or stack.pop() != pairs[ch]:
                    return False, 'Unbalanced Verilog delimiters'
        if stack:
            return False, 'Unbalanced Verilog delimiters'

        return True, ''

    def _count_direction_ports(self, verilog_content: str, direction: str) -> int:
        """Count input/output/inout identifiers, including comma lists."""
        count = 0
        pattern = rf'\b{direction}\s+(?:wire\s+|reg\s+|logic\s+|signed\s+|unsigned\s+)*'
        boundary = re.compile(r'\b(input|output|inout)\b')

        for match in re.finditer(pattern, verilog_content):
            start = match.end()
            segment = []
            paren_depth = 0
            i = start
            while i < len(verilog_content):
                ch = verilog_content[i]
                if ch == '(':
                    paren_depth += 1
                elif ch == ')':
                    if paren_depth == 0:
                        break
                    paren_depth -= 1
                elif ch == ';' and paren_depth == 0:
                    break
                elif paren_depth == 0 and boundary.match(verilog_content, i):
                    break
                segment.append(ch)
                i += 1

            declaration = ''.join(segment)
            declaration = re.sub(r'\[[^\]]*\]', ' ', declaration)
            declaration = re.sub(r'=\s*[^,]+', '', declaration)
            names = re.findall(r'\b([a-zA-Z_]\w*)\b', declaration)
            count += sum(1 for name in names if name not in _PORT_KEYWORDS)
        return count

    def _count_structural_ports(self, verilog_content: str, direction: str) -> int:
        """Count ports in ANSI, legacy, scalar, and vector declarations."""
        return self._count_direction_ports(verilog_content, direction)

    @staticmethod
    def _count_net_declarations(verilog_content: str) -> int:
        """Count scalar and vector net identifiers, including comma lists."""
        count = 0
        pattern = r'\b(?:wire|reg|logic|tri|wand|wor)\b([^;]*);'
        for match in re.finditer(pattern, verilog_content, flags=re.DOTALL):
            declaration = re.sub(r'\[[^\]]*\]', ' ', match.group(1))
            declaration = re.sub(r'=\s*[^,]+', '', declaration)
            identifiers = re.findall(r'\b[a-zA-Z_]\w*\b', declaration)
            count += sum(1 for name in identifiers if name not in _PORT_KEYWORDS)
        return count

    @staticmethod
    def _count_module_instances(verilog_content: str) -> int:
        """Count simple and parameterized submodule instances."""
        keywords = {
            'module', 'assign', 'always', 'always_comb', 'always_ff', 'always_latch',
            'if', 'else', 'for', 'case', 'function', 'task', 'generate', 'begin',
        }
        parameterized = re.findall(
            r'\b([a-zA-Z_]\w*)\s*#\s*\([^;]*?\)\s+[a-zA-Z_]\w*\s*\(',
            verilog_content,
            flags=re.DOTALL,
        )
        simple = re.findall(r'\b([a-zA-Z_]\w*)\s+[a-zA-Z_]\w*\s*\(', verilog_content)
        return sum(1 for name in parameterized + simple if name not in keywords)

    def __init__(self, config: dict):
        """Initialize extractor from config/config.yaml."""
        self.config = config
        self.extract_structural = config['feature_extraction']['extract_structural']
        self.extract_complexity = config['feature_extraction']['extract_complexity']
        self.extract_bitwidth = config['feature_extraction']['extract_bitwidth']

    def _count_gates(self, verilog_content: str) -> Dict[str, int]:
        """Count operators across complete, possibly nested assign expressions."""
        counts: Dict[str, int] = {
            'and': 0, 'or': 0, 'xor': 0, 'not': 0, 'nand': 0, 'nor': 0,
        }
        for match in re.finditer(r'assign\s+.*?;', verilog_content, flags=re.DOTALL):
            rhs = match.group(0).split('=', 1)[1].strip().rstrip(';').strip()
            self._scan_expr(rhs, counts)
        return counts

    def _scan_expr(self, expr: str, counts: Dict[str, int]) -> Dict[str, int]:
        """Walk one expression string, updating counts in place."""
        i, n = 0, len(expr)
        while i < n:
            ch = expr[i]
            if ch == '~':
                j = i + 1
                while j < n and expr[j].isspace():
                    j += 1
                if j < n and expr[j] == '(':
                    depth, k = 1, j + 1
                    while k < n and depth > 0:
                        if expr[k] == '(':
                            depth += 1
                        elif expr[k] == ')':
                            depth -= 1
                        k += 1
                    inner = expr[j + 1:k - 1] if depth == 0 else expr[j + 1:]
                    top_idx, top_op = self._top_level_op(inner)
                    if top_op in ('&', '|'):
                        counts['nand' if top_op == '&' else 'nor'] += 1
                        self._scan_expr(inner[:top_idx], counts)
                        self._scan_expr(inner[top_idx + 1:], counts)
                    else:
                        counts['not'] += 1
                        self._scan_expr(inner, counts)
                    i = k
                    continue
                counts['not'] += 1
            elif ch == '&':
                counts['and'] += 1
            elif ch == '|':
                counts['or'] += 1
            elif ch == '^':
                counts['xor'] += 1
            i += 1
        return counts

    @staticmethod
    def _top_level_op(expr: str):
        """Return the first & or | at parenthesis depth zero."""
        depth = 0
        for idx, ch in enumerate(expr):
            if ch == '(':
                depth += 1
            elif ch == ')':
                depth -= 1
            elif depth == 0 and ch in '&|':
                return idx, ch
        return -1, ''

    def parse_verilog(self, verilog_content: str) -> Dict[str, int | float]:
        """Parse Verilog content and extract basic structural information."""
        content = self._strip_comments(verilog_content)
        inputs = self._count_structural_ports(content, 'input')
        outputs = self._count_structural_ports(content, 'output')
        wires = self._count_net_declarations(content)
        instances = self._count_module_instances(content)

        bitwidths = re.findall(r'\[(\d+)\s*:\s*(\d+)\]', content)
        widths = [abs(int(msb) - int(lsb)) + 1 for msb, lsb in bitwidths]
        avg_bitwidth = sum(widths) / len(widths) if widths else 0
        max_bitwidth = max(widths, default=0)
        gate_counts = self._count_gates(content)

        return {
            'num_inputs': inputs,
            'num_outputs': outputs,
            'num_wires': wires,
            'num_instances': instances,
            'avg_bitwidth': avg_bitwidth,
            'max_bitwidth': max_bitwidth,
            'num_assignments': len(re.findall(r'\bassign\s+', content)),
            'num_lines': len(content.split('\n')),
            'num_chars': len(content),
            **gate_counts,
        }

    def extract_features_from_content(
        self,
        verilog_content: str,
        module_name: str = 'uploaded_module',
    ) -> Optional[Dict[str, float]]:
        """Extract model features directly from Verilog source text."""
        is_valid, error = self.validate_verilog(verilog_content)
        if not is_valid:
            logger.error('Invalid Verilog in %s: %s', module_name, error)
            return None

        basic_info = self.parse_verilog(verilog_content)
        features: Dict[str, float] = {}

        if self.extract_structural:
            features.update({
                'struct_num_inputs': basic_info['num_inputs'],
                'struct_num_outputs': basic_info['num_outputs'],
                'struct_num_wires': basic_info['num_wires'],
                'struct_num_instances': basic_info['num_instances'],
            })

        if self.extract_complexity:
            features.update({
                'complex_and_gates': basic_info['and'],
                'complex_or_gates': basic_info['or'],
                'complex_xor_gates': basic_info['xor'],
                'complex_not_gates': basic_info['not'],
                'complex_nand_gates': basic_info['nand'],
                'complex_nor_gates': basic_info['nor'],
                'complex_lines': basic_info['num_lines'],
                'complex_chars': basic_info['num_chars'],
            })

        if self.extract_bitwidth:
            features.update({
                'bitwidth_avg': basic_info['avg_bitwidth'],
                'bitwidth_max': basic_info['max_bitwidth'],
            })

        features['module_id'] = Path(module_name).stem
        return features

    def extract_features(self, rtl_file: Path) -> Optional[Dict[str, float]]:
        """Extract features from one Verilog file."""
        with open(rtl_file, 'r', encoding='utf-8') as f:
            return self.extract_features_from_content(f.read(), str(rtl_file))


def main():
    parser = argparse.ArgumentParser(description='Extract RTL features')
    parser.add_argument('--input', type=str, required=True, help='Input RTL directory')
    parser.add_argument('--output', type=str, default='data/features', help='Output directory')
    parser.add_argument('--format', type=str, default='csv', choices=['csv', 'parquet'])
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file path')
    args = parser.parse_args()

    config = ConfigLoader.load_config(args.config)
    log_file = Path(config['paths']['results_dir']) / 'pipeline.log'
    setup_logging(log_file=str(log_file), level=config['logging']['level'])
    extractor = RTLFeatureExtractor(config)
    input_dir = Path(args.input)
    rtl_files = sorted(input_dir.glob('*.v'))
    all_features = [extractor.extract_features(rtl_file) for rtl_file in rtl_files]
    df = pd.DataFrame(all_features)
    output_path = Path(args.output) / f'features.{args.format}'
    FileManager.save_dataframe(df, str(output_path), format=args.format)
    logger.info('[OK] Extracted features for %s modules', len(df))
    logger.info('Feature columns: %s', list(df.columns))


if __name__ == '__main__':
    main()
