"""
Inference Latency Benchmark - Measures wall-clock execution time for ML model inference vs. real Yosys synthesis.
Usage: python scripts/benchmark_latency.py --model models/model.pkl --features data/features/features.csv --rtl-dir data/rtl --num-modules 100
"""
import argparse
import json
import logging
import pickle
import time
import pandas as pd
import numpy as np
import sys
from pathlib import Path
from typing import Dict, Any
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from scripts.yosys_synthesis import YosysSynthesizer

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


class LatencyBenchmarker:
    """Benchmarking suite for comparing ML inference speed against real Yosys synthesis."""

    def __init__(self, model_path: Path, features_path: Path, rtl_dir: Path, output_dir: Path, num_modules: int = 100):
        self.model_path = Path(model_path)
        self.features_path = Path(features_path)
        self.rtl_dir = Path(rtl_dir)
        self.output_dir = Path(output_dir).resolve()
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.num_modules = num_modules

        # Load model and feature columns
        with open(self.model_path, 'rb') as f:
            model_data = pickle.load(f)
        self.model = model_data['model']
        self.feature_columns = model_data['feature_columns']
        logger.info(f"Loaded ML model from {self.model_path}")

        # Load features dataset
        df = pd.read_csv(self.features_path)
        extracted = df['module_id'].astype(str).str.extract(r'(\d+)')
        df['module_id'] = pd.to_numeric(extracted[0], errors='coerce')
        df = df.dropna(subset=['module_id'])
        df['module_id'] = df['module_id'].astype(int)
        df = df.sort_values('module_id').reset_index(drop=True)
        self.features_df = df.head(num_modules)
        self.X_batch = self.features_df[self.feature_columns]
        logger.info(f"Prepared feature batch of {len(self.X_batch)} modules for latency benchmark.")

    def benchmark_single_inference(self, num_runs: int = 1000) -> Dict[str, float]:
        """Measure single module ML inference latency."""
        single_row = self.X_batch.iloc[[0]]
        
        # Warmup
        for _ in range(10):
            self.model.predict(single_row)

        start_time = time.perf_counter()
        for _ in range(num_runs):
            self.model.predict(single_row)
        total_time = time.perf_counter() - start_time

        avg_latency_ms = (total_time / num_runs) * 1000.0
        logger.info(f"Single-module ML inference: {avg_latency_ms:.4f} ms per prediction ({num_runs} runs)")

        return {
            'total_time_sec': total_time,
            'num_runs': num_runs,
            'avg_latency_ms': avg_latency_ms,
            'throughput_qps': num_runs / total_time
        }

    def benchmark_batch_inference(self, num_runs: int = 100) -> Dict[str, float]:
        """Measure batch ML inference latency for N modules."""
        # Warmup
        for _ in range(5):
            self.model.predict(self.X_batch)

        start_time = time.perf_counter()
        for _ in range(num_runs):
            self.model.predict(self.X_batch)
        total_time = time.perf_counter() - start_time

        avg_batch_time_ms = (total_time / num_runs) * 1000.0
        per_module_ms = avg_batch_time_ms / len(self.X_batch)
        logger.info(f"Batch ML inference ({len(self.X_batch)} modules): {avg_batch_time_ms:.4f} ms total batch, {per_module_ms:.4f} ms per module")

        return {
            'total_time_sec': total_time,
            'num_runs': num_runs,
            'batch_size': len(self.X_batch),
            'avg_batch_time_ms': avg_batch_time_ms,
            'per_module_latency_ms': per_module_ms
        }

    def benchmark_yosys_synthesis_run(self) -> Dict[str, Any]:
        """Measure real Yosys synthesis time for the same modules."""
        synthesis_dir = self.output_dir / "temp_synth_benchmark"
        synthesizer = YosysSynthesizer(synthesis_dir=synthesis_dir)

        rtl_files = []
        for mod_id in self.features_df['module_id']:
            rtl_file = self.rtl_dir / f"rtl_module_{mod_id}.v"
            if rtl_file.exists():
                rtl_files.append(rtl_file)

        if not rtl_files:
            raise FileNotFoundError(f"No matching RTL module files found in {self.rtl_dir}")

        logger.info(f"Starting real Yosys synthesis benchmark across {len(rtl_files)} RTL files...")

        start_time = time.perf_counter()
        synth_count = 0
        for rtl_file in rtl_files:
            synthesizer.run_synthesis(rtl_file)
            synth_count += 1
        total_yosys_time_sec = time.perf_counter() - start_time

        avg_yosys_ms = (total_yosys_time_sec / synth_count) * 1000.0
        logger.info(f"Real Yosys synthesis ({synth_count} modules): {total_yosys_time_sec:.2f} s total ({avg_yosys_ms:.2f} ms per module)")

        # Cleanup temp synth dir
        import shutil
        shutil.rmtree(synthesis_dir, ignore_errors=True)

        return {
            'total_yosys_time_sec': total_yosys_time_sec,
            'modules_synthesized': synth_count,
            'avg_yosys_per_module_ms': avg_yosys_ms
        }

    def run(self) -> Dict[str, Any]:
        """Run full latency benchmark suite."""
        logger.info("Executing Single-Module ML Inference Benchmark...")
        single_ml = self.benchmark_single_inference()

        logger.info("Executing Batch ML Inference Benchmark...")
        batch_ml = self.benchmark_batch_inference()

        logger.info("Executing Real Yosys Synthesis Benchmark...")
        yosys_bench = self.benchmark_yosys_synthesis_run()

        # Speedup ratios
        speedup_per_module = yosys_bench['avg_yosys_per_module_ms'] / batch_ml['per_module_latency_ms']
        batch_yosys_equivalent_sec = (yosys_bench['avg_yosys_per_module_ms'] * batch_ml['batch_size']) / 1000.0
        speedup_total = batch_yosys_equivalent_sec / (batch_ml['avg_batch_time_ms'] / 1000.0)

        results = {
            'benchmark_config': {
                'num_modules': self.num_modules,
                'model_type': type(self.model).__name__,
                'hardware_platform': 'Windows x64'
            },
            'single_module_ml_inference': single_ml,
            'batch_ml_inference': batch_ml,
            'real_yosys_synthesis': yosys_bench,
            'speedup_metrics': {
                'speedup_ratio': float(speedup_total),
                'speedup_formatted': f"{speedup_total:,.1f}x",
                'ml_latency_per_module_ms': float(batch_ml['per_module_latency_ms']),
                'yosys_latency_per_module_ms': float(yosys_bench['avg_yosys_per_module_ms']),
                'time_saved_percent': float((1.0 - (batch_ml['per_module_latency_ms'] / yosys_bench['avg_yosys_per_module_ms'])) * 100.0)
            }
        }

        # Save JSON
        output_json = self.output_dir / 'latency_benchmark.json'
        with open(output_json, 'w') as f:
            json.dump(results, f, indent=2)
        logger.info(f"Latency benchmark saved to {output_json}")

        # Save JS for offline dashboard
        output_js = self.output_dir / 'latency_benchmark.js'
        with open(output_js, 'w') as f:
            f.write(f"const LATENCY_BENCHMARK = {json.dumps(results, indent=2)};\n")
        logger.info(f"Latency benchmark JS saved to {output_js}")

        logger.info(f"==================================================")
        logger.info(f"BENCHMARK RESULT: {speedup_total:,.1f}x SPEEDUP")
        logger.info(f"ML Model: {batch_ml['per_module_latency_ms']:.4f} ms/module")
        logger.info(f"Real Yosys: {yosys_bench['avg_yosys_per_module_ms']:.2f} ms/module")
        logger.info(f"==================================================")

        return results


def main():
    parser = argparse.ArgumentParser(description='Run Inference Latency Benchmark')
    parser.add_argument('--model', type=str, default='models/model.pkl', help='Model path')
    parser.add_argument('--features', type=str, default='data/features/features.csv', help='Features path')
    parser.add_argument('--rtl-dir', type=str, default='data/rtl', help='RTL directory')
    parser.add_argument('--output', type=str, default='results', help='Output directory')
    parser.add_argument('--num-modules', type=int, default=100, help='Number of modules for benchmark')

    args = parser.parse_args()
    benchmarker = LatencyBenchmarker(Path(args.model), Path(args.features), Path(args.rtl_dir), Path(args.output), args.num_modules)
    benchmarker.run()


if __name__ == '__main__':
    main()
