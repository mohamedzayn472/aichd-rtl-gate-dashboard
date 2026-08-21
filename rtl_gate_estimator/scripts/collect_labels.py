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
    """Collects gate count labels from RTL files.

    Priority order:
      1. ground_truth_gates.csv  — exact counts from the generator (best)
      2. Yosys synthesis         — real synthesis-based counts
      3. Regex fallback          — approximate text-based counting
    """

    def __init__(
        self,
        rtl_dir: Path,
        output_dir: Path,
        method: str = 'auto',
        config_path: Path = None,
        output_file: Path = None,
    ):
        self.rtl_dir = Path(rtl_dir).resolve()
        self.output_dir = Path(output_dir).resolve()
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.method = method
        if output_file:
            out_p = Path(output_file)
            self.output_file = out_p.resolve() if out_p.is_absolute() else (self.output_dir / out_p.name).resolve()
        else:
            self.output_file = (self.output_dir / ('labels_yosys.csv' if method == 'yosys' else 'labels.csv')).resolve()
        self.output_file.parent.mkdir(parents=True, exist_ok=True)
        self.synthesis_dir = self.output_dir / 'synthesis'
        self.synthesizer = YosysSynthesizer(
            synthesis_dir=self.synthesis_dir,
            timeout=300,
        )

        # Ground-truth CSV written by generate_rtl.py — preferred when present in auto mode
        self.ground_truth_path = self.rtl_dir / 'ground_truth_gates.csv'
        self.use_ground_truth = (
            method == 'auto' and self.ground_truth_path.exists()
        )

        self.use_yosys = (
            method == 'yosys' or (
                not self.use_ground_truth and
                method == 'auto' and self.synthesizer.yosys_available
            )
        )
        if method == 'regex':
            self.use_yosys = False
            self.use_ground_truth = False

        if self.use_ground_truth:
            logger.info(f'Using generator ground truth from {self.ground_truth_path}')
        elif self.use_yosys:
            logger.info('Using Yosys synthesis for label collection')
        else:
            logger.info('Using regex-based gate counting for label collection')

        # Pre-load ground truth lookup if available
        self._gt_lookup: dict = {}
        if self.use_ground_truth:
            gt_df = pd.read_csv(self.ground_truth_path)
            for _, row in gt_df.iterrows():
                self._gt_lookup[int(row['module_id'])] = row.to_dict()

    def _labels_from_ground_truth(self, module_id: int) -> dict:
        """Return exact labels from the generator's own ground-truth CSV."""
        row = self._gt_lookup[module_id]
        return {
            'gate_count':  int(row['gate_count']),
            'and_gates':   int(row['and_gates']),
            'or_gates':    int(row['or_gates']),
            'xor_gates':   int(row['xor_gates']),
            'not_gates':   int(row['not_gates']),
            'nand_gates':  int(row['nand_gates']),
            'nor_gates':   int(row['nor_gates']),
            'label_source': 'ground_truth',
        }

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

        logger.error(
            f'Yosys synthesis failed for {rtl_file.name}.'
        )
        raise RuntimeError(f"Yosys synthesis failed for {rtl_file.name}. Raw log available in yosys_raw_logs.")

    def collect_labels(self):
        """Collect labels from all RTL files."""
        rtl_files = sorted(self.rtl_dir.glob('*.v'))
        logger.info(f'Found {len(rtl_files)} RTL files')

        labels = []
        source_counts = {'ground_truth': 0, 'yosys': 0, 'regex': 0, 'regex_fallback': 0}

        for idx, rtl_file in enumerate(rtl_files):
            clean_stem = rtl_file.stem.replace('rtl_module_', '')
            try:
                module_id = int(clean_stem)
            except ValueError:
                module_id = clean_stem

            with open(rtl_file, 'r') as f:
                content = f.read()

            if self.use_ground_truth and isinstance(module_id, int) and module_id in self._gt_lookup:
                gate_labels = self._labels_from_ground_truth(module_id)
            elif self.use_yosys:
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

            if (idx + 1) % 50 == 0:
                logger.info(f'Processed {idx + 1}/{len(rtl_files)} files')

        df = pd.DataFrame(labels)
        if 'module_id' in df.columns and pd.api.types.is_numeric_dtype(df['module_id']):
            df = df.sort_values('module_id').reset_index(drop=True)

        output_path = self.output_file
        df.to_csv(str(output_path), index=False)
        logger.info(f'Labels saved to {output_path}')
        logger.info(f'Total labels: {len(df)}')
        logger.info(f'Label columns: {list(df.columns)}')

        metadata = {
            'method_requested': self.method,
            'yosys_available': self.synthesizer.yosys_available,
            'label_sources': source_counts,
            'total_modules': len(df),
        }
        metadata_path = output_path.parent / (output_path.stem + '_metadata.json')
        with open(str(metadata_path), 'w') as f:
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
    parser.add_argument('--use-yosys', action='store_true', help='Force Yosys synthesis for label collection')
    parser.add_argument('--output-file', type=str, default=None, help='Specific CSV output filepath')
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file')

    args = parser.parse_args()

    method = 'yosys' if args.use_yosys else args.method
    collector = LabelCollector(
        args.input,
        args.output,
        method=method,
        output_file=Path(args.output_file) if args.output_file else None,
    )
    collector.collect_labels()


if __name__ == '__main__':
    main()


if __name__ == '__main__':
    main()
