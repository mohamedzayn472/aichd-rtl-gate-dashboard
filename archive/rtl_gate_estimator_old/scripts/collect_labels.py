"""
Label Collector - Collects ground truth gate counts from RTL files.
Usage: python collect_labels.py --input data/rtl --output data/labels
"""
import argparse
import json
import logging
import re
import sys
import pandas as pd
from pathlib import Path

sys.path.append(str(Path(__file__).parent.parent))

from scripts.yosys_synthesis import YosysSynthesizer

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


class LabelCollector:
    """Collects gate count labels from RTL files via Yosys or regex fallback."""

    def __init__(
        self,
        rtl_dir: Path,
        output_dir: Path,
        method: str = 'auto',
        config_path: Path = None,
    ):
        self.rtl_dir = Path(rtl_dir)
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.method = method
        self.synthesis_dir = self.output_dir / 'synthesis'
        self.synthesizer = YosysSynthesizer(
            synthesis_dir=self.synthesis_dir,
            timeout=300,
        )
        self.use_yosys = method == 'yosys' or (
            method == 'auto' and self.synthesizer.yosys_available
        )
        if method == 'regex':
            self.use_yosys = False

        if self.use_yosys:
            logger.info('Using Yosys synthesis for label collection')
        else:
            logger.info('Using regex-based gate counting for label collection')

    def _count_gates(self, rtl_content: str) -> dict:
        """Count gate types in RTL content using regex parsing."""
        gates = {
            'and': 0,
            'or': 0,
            'xor': 0,
            'not': 0,
            'nand': 0,
            'nor': 0,
        }

        assign_pattern = r'assign\s+\w+\s*=\s*([^;]+);'
        assigns = re.findall(assign_pattern, rtl_content)

        for expr in assigns:
            expr = expr.strip()
            nand_matches = re.findall(r'~\(&\s*[^)]+\)', expr)
            gates['nand'] += len(nand_matches)
            expr = re.sub(r'~\(&\s*[^)]+\)', '', expr)

            nor_matches = re.findall(r'~\(\|\s*[^)]+\)', expr)
            gates['nor'] += len(nor_matches)
            expr = re.sub(r'~\(\|\s*[^)]+\)', '', expr)

            not_matches = re.findall(r'~(?![&|])', expr)
            gates['not'] += len(not_matches)

            gates['and'] += len(re.findall(r'&', expr))
            gates['or'] += len(re.findall(r'\|', expr))
            gates['xor'] += len(re.findall(r'\^', expr))

        gates['total'] = sum(gates.values())
        return gates

    def _labels_from_regex(self, content: str) -> dict:
        gate_counts = self._count_gates(content)
        return {
            'gate_count': gate_counts['total'],
            'and_gates': gate_counts['and'],
            'or_gates': gate_counts['or'],
            'xor_gates': gate_counts['xor'],
            'not_gates': gate_counts['not'],
            'nand_gates': gate_counts['nand'],
            'nor_gates': gate_counts['nor'],
            'label_source': 'regex',
        }

    def _labels_from_yosys(self, rtl_file: Path, content: str) -> dict:
        result = self.synthesizer.run_synthesis(rtl_file)
        if result.get('synthesis_status') == 'success':
            return {
                'gate_count': result['gate_count'],
                'and_gates': result['and_gates'],
                'or_gates': result['or_gates'],
                'xor_gates': result['xor_gates'],
                'not_gates': result['not_gates'],
                'nand_gates': result['nand_gates'],
                'nor_gates': result['nor_gates'],
                'label_source': 'yosys',
            }

        logger.warning(
            f'Yosys failed for {rtl_file.name}; falling back to regex counting'
        )
        labels = self._labels_from_regex(content)
        labels['label_source'] = 'regex_fallback'
        return labels

    def collect_labels(self):
        """Collect labels from all RTL files."""
        rtl_files = sorted(self.rtl_dir.glob('*.v'))
        logger.info(f'Found {len(rtl_files)} RTL files')

        labels = []
        source_counts = {'yosys': 0, 'regex': 0, 'regex_fallback': 0}

        for rtl_file in rtl_files:
            module_id = int(rtl_file.stem.replace('rtl_module_', ''))

            with open(rtl_file, 'r') as f:
                content = f.read()

            if self.use_yosys:
                gate_labels = self._labels_from_yosys(rtl_file, content)
            else:
                gate_labels = self._labels_from_regex(content)

            source_counts[gate_labels['label_source']] += 1
            labels.append({
                'module_id': module_id,
                'gate_count': gate_labels['gate_count'],
                'and_gates': gate_labels['and_gates'],
                'or_gates': gate_labels['or_gates'],
                'xor_gates': gate_labels['xor_gates'],
                'not_gates': gate_labels['not_gates'],
                'nand_gates': gate_labels['nand_gates'],
                'nor_gates': gate_labels['nor_gates'],
            })

            if (module_id + 1) % 50 == 0:
                logger.info(f'Processed {module_id + 1}/{len(rtl_files)} files')

        df = pd.DataFrame(labels)
        df = df.sort_values('module_id').reset_index(drop=True)

        output_path = self.output_dir / 'labels.csv'
        df.to_csv(output_path, index=False)
        logger.info(f'Labels saved to {output_path}')
        logger.info(f'Total labels: {len(df)}')
        logger.info(f'Label columns: {list(df.columns)}')

        metadata = {
            'method_requested': self.method,
            'yosys_available': self.synthesizer.yosys_available,
            'label_sources': source_counts,
            'total_modules': len(df),
        }
        metadata_path = self.output_dir / 'labels_metadata.json'
        with open(metadata_path, 'w') as f:
            json.dump(metadata, f, indent=2)
        logger.info(f'Label metadata saved to {metadata_path}')

        return df


def main():
    """Collect labels from RTL files."""
    parser = argparse.ArgumentParser(description='Collect gate count labels')
    parser.add_argument('--input', type=str, required=True, help='Input RTL directory')
    parser.add_argument('--output', type=str, default='data/labels', help='Output directory')
    parser.add_argument(
        '--method',
        type=str,
        default='auto',
        choices=['auto', 'yosys', 'regex'],
        help='Label collection method (auto tries Yosys first)',
    )
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file')

    args = parser.parse_args()

    collector = LabelCollector(args.input, args.output, method=args.method)
    collector.collect_labels()


if __name__ == '__main__':
    main()
