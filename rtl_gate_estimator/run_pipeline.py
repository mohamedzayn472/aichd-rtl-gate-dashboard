"""
RTL Gate Count Estimator - End-to-end pipeline orchestrator.

Usage:
    python run_pipeline.py
    python run_pipeline.py --num-samples 100 --skip-phases 1 2 3
    python run_pipeline.py --config config/config.yaml
"""
import argparse
import json
import logging
import random
import sys
from datetime import datetime, timezone
from pathlib import Path

import pandas as pd

PROJECT_ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(PROJECT_ROOT))

from scripts.utils import ConfigLoader, setup_logging, validate_paths
from scripts.generate_rtl import RTLGenerator
from scripts.extract_features import RTLFeatureExtractor
from scripts.collect_labels import LabelCollector
from scripts.train_model import ModelTrainer
from scripts.run_shap import SHAPExplainer
from scripts.ablation_sweep import AblationStudy
from scripts.compare_faithfulness import FaithfulnessVerifier

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


class RTLGateCountPipeline:
    """Orchestrates all seven pipeline phases."""

    def __init__(self, config_path: str = 'config/config.yaml', project_root: Path = None):
        self.project_root = Path(project_root or PROJECT_ROOT)
        self.config_path = self.project_root / config_path
        self.config = ConfigLoader.load_config(str(self.config_path))
        self.results = {}

    def _path(self, key: str) -> Path:
        value = self.config['paths'][key]
        path = Path(value)
        if not path.is_absolute():
            path = self.project_root / path
        path.mkdir(parents=True, exist_ok=True)
        return path.resolve()

    def phase_1_generate_rtl(self, num_samples: int = None):
        logger.info('=' * 80)
        logger.info('PHASE 1: RTL Generation')
        logger.info('=' * 80)

        num_samples = num_samples or self.config['data']['num_samples']
        rtl_dir = self._path('rtl_dir')
        random.seed(self.config['data']['seed'])

        generator = RTLGenerator(self.config)
        import csv
        ground_truth_rows = []

        for i in range(num_samples):
            verilog_code, gate_counts = generator.generate_module_with_counts(i)
            (rtl_dir / f'rtl_module_{i}.v').write_text(verilog_code, encoding='utf-8')

            row = {'module_id': i, 'gate_count': sum(gate_counts.values())}
            for g in ('and', 'or', 'xor', 'not', 'nand', 'nor'):
                row[f'{g}_gates'] = gate_counts[g]
            ground_truth_rows.append(row)

            if (i + 1) % 50 == 0:
                logger.info(f'Generated {i + 1}/{num_samples} modules')

        gt_path = rtl_dir / 'ground_truth_gates.csv'
        with open(gt_path, 'w', newline='') as f:
            fields = ['module_id', 'gate_count',
                      'and_gates', 'or_gates', 'xor_gates',
                      'not_gates', 'nand_gates', 'nor_gates']
            writer = csv.DictWriter(f, fieldnames=fields)
            writer.writeheader()
            writer.writerows(ground_truth_rows)
        logger.info(f'[OK] Ground-truth gate counts saved to {gt_path}')

        logger.info(f'[OK] Phase 1 complete: {num_samples} modules in {rtl_dir}')
        self.results['phase_1'] = {'num_modules': num_samples, 'rtl_dir': str(rtl_dir)}
        return num_samples

    def phase_2_extract_features(self):
        logger.info('=' * 80)
        logger.info('PHASE 2: Feature Extraction')
        logger.info('=' * 80)

        rtl_dir = self._path('rtl_dir')
        features_dir = self._path('features_dir')
        extractor = RTLFeatureExtractor(self.config)
        rtl_files = sorted(rtl_dir.glob('*.v'))
        all_features = []
        for i, rtl_file in enumerate(rtl_files):
            all_features.append(extractor.extract_features(rtl_file))
            if (i + 1) % 50 == 0:
                logger.info(f'Processed {i + 1}/{len(rtl_files)} files')

        df = pd.DataFrame(all_features)
        output_path = features_dir / 'features.csv'
        df.to_csv(output_path, index=False)

        logger.info(f'[OK] Phase 2 complete: {len(df)} feature rows -> {output_path}')
        self.results['phase_2'] = {'num_rows': len(df), 'features_path': str(output_path)}
        return df

    def phase_3_collect_labels(self, method: str = 'auto'):
        logger.info('=' * 80)
        logger.info('PHASE 3: Label Collection')
        logger.info('=' * 80)

        collector = LabelCollector(
            self._path('rtl_dir'),
            self._path('labels_dir'),
            method=method,
        )
        df = collector.collect_labels()

        logger.info(f'[OK] Phase 3 complete: {len(df)} labels')
        self.results['phase_3'] = {
            'num_rows': len(df),
            'labels_path': str(self._path('labels_dir') / 'labels.csv'),
        }
        return df

    def phase_4_train_model(self):
        logger.info('=' * 80)
        logger.info('PHASE 4: Model Training')
        logger.info('=' * 80)

        trainer = ModelTrainer(
            self._path('features_dir') / 'features.csv',
            self._path('labels_dir') / 'labels.csv',
            self._path('models_dir') / 'model.pkl',
            self.config_path,
            metrics_path=self._path('results_dir') / 'training_metrics.json',
        )
        _, test_metrics = trainer.train()

        logger.info(f'[OK] Phase 4 complete: test R2={test_metrics["r2"]:.4f}')
        self.results['phase_4'] = {
            'model_path': str(self._path('models_dir') / 'model.pkl'),
            'test_r2': test_metrics['r2'],
        }
        return test_metrics

    def phase_5_shap_explanations(self):
        logger.info('=' * 80)
        logger.info('PHASE 5: SHAP Explanations')
        logger.info('=' * 80)

        results_dir = self._path('results_dir')
        explainer = SHAPExplainer(
            self._path('models_dir') / 'model.pkl',
            self._path('features_dir') / 'features.csv',
            results_dir,
            self.config['shap']['num_explanation_samples'],
        )
        shap_results = explainer.run()

        logger.info('[OK] Phase 5 complete: SHAP values and plots generated')
        self.results['phase_5'] = {'shap_path': str(results_dir / 'shap_values.json')}
        return shap_results

    def phase_6_ablation_study(self):
        logger.info('=' * 80)
        logger.info('PHASE 6: Ablation Study')
        logger.info('=' * 80)

        results_dir = self._path('results_dir')
        study = AblationStudy(
            self._path('models_dir') / 'model.pkl',
            self._path('features_dir') / 'features.csv',
            results_dir,
            self.config_path,
        )
        ablation_results = study.run()

        logger.info('[OK] Phase 6 complete: ablation results saved')
        self.results['phase_6'] = {
            'ablation_path': str(results_dir / 'ablation_study_results.json'),
        }
        return ablation_results

    def phase_7_verify_faithfulness(self):
        logger.info('=' * 80)
        logger.info('PHASE 7: Faithfulness Verification')
        logger.info('=' * 80)

        results_dir = self._path('results_dir')
        verifier = FaithfulnessVerifier(
            results_dir / 'shap_values.json',
            results_dir / 'ablation_study_results.json',
            results_dir,
            self.config_path,
        )
        report = verifier.run()

        logger.info(
            f'[OK] Phase 7 complete: faithfulness_score={report["faithfulness_score"]:.4f}'
        )
        self.results['phase_7'] = {
            'faithfulness_score': report['faithfulness_score'],
        }
        return report

    def run(
        self,
        num_samples: int = None,
        skip_phases: list = None,
        label_method: str = 'auto',
    ) -> dict:
        """Run the full pipeline or selected phases."""
        skip_phases = set(skip_phases or [])
        validate_paths(self.config)
        self.results = {}

        log_file = self._path('results_dir') / 'pipeline.log'
        setup_logging(log_file=str(log_file), level=self.config['logging']['level'])

        phase_runners = {
            1: lambda: self.phase_1_generate_rtl(num_samples),
            2: self.phase_2_extract_features,
            3: lambda: self.phase_3_collect_labels(label_method),
            4: self.phase_4_train_model,
            5: self.phase_5_shap_explanations,
            6: self.phase_6_ablation_study,
            7: self.phase_7_verify_faithfulness,
        }

        for phase_num, runner in phase_runners.items():
            if phase_num in skip_phases:
                logger.info(f'Skipping phase {phase_num}')
                continue
            runner()

        summary = {
            'timestamp': datetime.now(timezone.utc).isoformat(),
            'config': str(self.config_path),
            'phases': self.results,
        }
        results_dir = self._path('results_dir')
        summary_path = results_dir / 'pipeline_summary.json'
        with open(summary_path, 'w') as f:
            json.dump(summary, f, indent=2)

        # Convert JSON files to JS files for CORS-free local execution
        try:
            json_to_js = {
                'pipeline_summary.json': 'PIPELINE_SUMMARY',
                'training_metrics.json': 'TRAINING_METRICS',
                'ablation_study_results.json': 'ABLATION_STUDY_RESULTS',
                'faithfulness_report.json': 'FAITHFULNESS_REPORT',
                'shap_values.json': 'SHAP_VALUES'
            }
            for json_name, var_name in json_to_js.items():
                json_path = results_dir / json_name
                js_path = results_dir / json_name.replace('.json', '.js')
                if json_path.exists():
                    content = json_path.read_text(encoding='utf-8')
                    js_path.write_text(f"window.{var_name} = {content};", encoding='utf-8')
                    logger.info(f"Exported {js_path.name} with variable {var_name}")
        except Exception as js_err:
            logger.warning(f"Failed to export JS files: {js_err}")

        # Convert RandomForest pickle to JS script for client-side evaluation
        try:
            model_pkl_path = self.project_root / 'models' / 'model.pkl'
            if not model_pkl_path.exists():
                model_pkl_path = results_dir.parent / 'models' / 'model.pkl'
            
            if model_pkl_path.exists():
                import pickle
                with open(model_pkl_path, 'rb') as f:
                    bundle = pickle.load(f)
                
                model = bundle['model']
                feature_cols = bundle.get('feature_columns', [])
                
                trees = []
                for idx, estimator in enumerate(model.estimators_):
                    tree_ = estimator.tree_
                    children_left = tree_.children_left.tolist()
                    children_right = tree_.children_right.tolist()
                    features = tree_.feature.tolist()
                    thresholds = tree_.threshold.tolist()
                    values = [val[0][0] for val in tree_.value]
                    
                    tree_struct = {
                        'children_left': children_left,
                        'children_right': children_right,
                        'features': features,
                        'thresholds': thresholds,
                        'values': values
                    }
                    trees.append(tree_struct)
                
                model_json = {
                    'feature_columns': feature_cols,
                    'trees': trees
                }
                js_model_path = results_dir / 'model_structure.js'
                js_model_path.write_text(f"window.RANDOM_FOREST_MODEL = {json.dumps(model_json)};", encoding='utf-8')
                logger.info(f"Exported Random Forest model parameters to {js_model_path.name}")
        except Exception as rf_err:
            logger.warning(f"Failed to export Random Forest model parameters: {rf_err}")

        logger.info('=' * 80)
        logger.info(f'Pipeline complete. Summary saved to {summary_path}')
        logger.info('=' * 80)
        return summary


def main():
    parser = argparse.ArgumentParser(description='Run RTL gate count estimator pipeline')
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file')
    parser.add_argument('--num-samples', type=int, default=None, help='RTL samples for phase 1')
    parser.add_argument(
        '--skip-phases',
        type=int,
        nargs='*',
        default=[],
        help='Phase numbers to skip (1-7)',
    )
    parser.add_argument(
        '--label-method',
        type=str,
        default='auto',
        choices=['auto', 'yosys', 'regex'],
        help='Label collection method for phase 3',
    )
    parser.add_argument(
        '--phase',
        type=int,
        choices=range(1, 8),
        help='Run a single phase only',
    )

    args = parser.parse_args()
    pipeline = RTLGateCountPipeline(config_path=args.config)

    if args.phase:
        phase_runners = {
            1: lambda: pipeline.phase_1_generate_rtl(args.num_samples),
            2: pipeline.phase_2_extract_features,
            3: lambda: pipeline.phase_3_collect_labels(args.label_method),
            4: pipeline.phase_4_train_model,
            5: pipeline.phase_5_shap_explanations,
            6: pipeline.phase_6_ablation_study,
            7: pipeline.phase_7_verify_faithfulness,
        }
        phase_runners[args.phase]()
    else:
        pipeline.run(
            num_samples=args.num_samples,
            skip_phases=args.skip_phases,
            label_method=args.label_method,
        )


if __name__ == '__main__':
    main()
