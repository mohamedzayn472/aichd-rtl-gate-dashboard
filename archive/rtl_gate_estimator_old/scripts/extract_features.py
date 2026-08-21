"""
Feature Extractor - Extracts RTL features from Verilog code.
Usage: python extract_features.py --input data/rtl --output data/features
"""
import argparse
import logging
import re
from pathlib import Path
from typing import Dict, List
import pandas as pd
import sys
sys.path.append(str(Path(__file__).parent.parent))
from scripts.utils import ConfigLoader, FileManager, setup_logging

logger = logging.getLogger(__name__)


class RTLFeatureExtractor:
    """Extract features from Verilog RTL modules."""
    
    def __init__(self, config: dict):
        """Initialize extractor with config."""
        self.config = config
        self.extract_structural = config['feature_extraction']['extract_structural']
        self.extract_complexity = config['feature_extraction']['extract_complexity']
        self.extract_bitwidth = config['feature_extraction']['extract_bitwidth']
    
    def _count_gates(self, verilog_content: str) -> Dict[str, int]:
        """Count gate types from assign statements (matches generator output format)."""
        counts = {'and': 0, 'or': 0, 'xor': 0, 'not': 0, 'nand': 0, 'nor': 0}
        
        for match in re.finditer(r'assign\s+.*?;', verilog_content):
            rhs = match.group(0).split('=', 1)[1].strip().rstrip(';').strip()
            
            if rhs.startswith('~(') and '&' in rhs:
                counts['nand'] += 1
            elif rhs.startswith('~(') and '|' in rhs:
                counts['nor'] += 1
            elif rhs.startswith('~'):
                counts['not'] += 1
            elif '&' in rhs:
                counts['and'] += 1
            elif '|' in rhs:
                counts['or'] += 1
            elif '^' in rhs:
                counts['xor'] += 1
        
        return counts
    
    def parse_verilog(self, verilog_content: str) -> Dict[str, any]:
        """Parse Verilog content and extract basic info."""
        # Count inputs, outputs, wires
        inputs = len(re.findall(r'input\s+wire', verilog_content))
        outputs = len(re.findall(r'output\s+wire', verilog_content))
        wires = len(re.findall(r'wire\s+\[', verilog_content))
        
        # Extract bitwidths
        bitwidths = re.findall(r'\[(\d+):0\]', verilog_content)
        avg_bitwidth = sum(int(bw) for bw in bitwidths) / len(bitwidths) if bitwidths else 0
        max_bitwidth = max((int(bw) for bw in bitwidths), default=0)
        
        gate_counts = self._count_gates(verilog_content)
        
        # Count assignments
        assignments = len(re.findall(r'assign\s+', verilog_content))
        
        # Module size metrics
        lines = len(verilog_content.split('\n'))
        chars = len(verilog_content)
        
        return {
            'num_inputs': inputs,
            'num_outputs': outputs,
            'num_wires': wires,
            'avg_bitwidth': avg_bitwidth,
            'max_bitwidth': max_bitwidth,
            'num_assignments': assignments,
            'num_lines': lines,
            'num_chars': chars,
            **gate_counts
        }
    
    def extract_features(self, rtl_file: Path) -> Dict[str, float]:
        """Extract all features from a single RTL file."""
        with open(rtl_file, 'r') as f:
            verilog_content = f.read()
        
        basic_info = self.parse_verilog(verilog_content)
        
        features = {}
        
        # Structural features
        if self.extract_structural:
            features.update({
                'struct_num_inputs': basic_info['num_inputs'],
                'struct_num_outputs': basic_info['num_outputs'],
                'struct_num_wires': basic_info['num_wires'],
                'struct_num_assignments': basic_info['num_assignments']
            })
        
        # Complexity features
        if self.extract_complexity:
            total_gates = sum(basic_info[k] for k in ['and', 'or', 'xor', 'not', 'nand', 'nor'])
            features.update({
                'complex_total_gates': total_gates,
                'complex_and_gates': basic_info['and'],
                'complex_or_gates': basic_info['or'],
                'complex_xor_gates': basic_info['xor'],
                'complex_not_gates': basic_info['not'],
                'complex_nand_gates': basic_info['nand'],
                'complex_nor_gates': basic_info['nor'],
                'complex_lines': basic_info['num_lines'],
                'complex_chars': basic_info['num_chars']
            })
        
        # Bitwidth features
        if self.extract_bitwidth:
            features.update({
                'bitwidth_avg': basic_info['avg_bitwidth'],
                'bitwidth_max': basic_info['max_bitwidth']
            })
        
        # Add module ID
        features['module_id'] = rtl_file.stem
        
        return features


def main():
    """Extract features from RTL."""
    parser = argparse.ArgumentParser(description='Extract RTL features')
    parser.add_argument('--input', type=str, required=True, help='Input RTL directory')
    parser.add_argument('--output', type=str, default='data/features', help='Output directory')
    parser.add_argument('--format', type=str, default='csv', choices=['csv', 'parquet'])
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file path')
    
    args = parser.parse_args()
    
    # Load config
    config = ConfigLoader.load_config(args.config)
    
    # Setup logging
    log_file = Path(config['paths']['results_dir']) / 'pipeline.log'
    setup_logging(log_file=str(log_file), level=config['logging']['level'])
    
    logger.info(f"Extracting features from {args.input}...")
    
    # Initialize extractor
    extractor = RTLFeatureExtractor(config)
    
    # Get all RTL files
    input_dir = Path(args.input)
    rtl_files = sorted(input_dir.glob('*.v'))
    
    logger.info(f"Found {len(rtl_files)} RTL files")
    
    # Extract features from each file
    all_features = []
    for i, rtl_file in enumerate(rtl_files):
        features = extractor.extract_features(rtl_file)
        all_features.append(features)
        
        if (i + 1) % 50 == 0:
            logger.info(f"Processed {i + 1}/{len(rtl_files)} files")
    
    # Create DataFrame
    df = pd.DataFrame(all_features)
    
    # Save to file
    output_path = Path(args.output) / f'features.{args.format}'
    FileManager.save_dataframe(df, str(output_path), format=args.format)
    
    logger.info(f"[OK] Extracted features for {len(df)} modules")
    logger.info(f"Feature columns: {list(df.columns)}")


if __name__ == '__main__':
    main()
