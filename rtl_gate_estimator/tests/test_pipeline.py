"""Tests for rtl_gate_estimator pipeline scripts."""
import json
import sys
from pathlib import Path

import pytest
import yaml

PROJECT_ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(PROJECT_ROOT))

from run_pipeline import RTLGateCountPipeline
from scripts.collect_labels import LabelCollector
from scripts.extract_features import RTLFeatureExtractor
from scripts.run_shap import SHAPExplainer


NUM_SAMPLES = 80


def test_feature_extractor_excludes_redundant_total_gates(project_root):
    config = yaml.safe_load((project_root / 'config' / 'config.yaml').read_text())
    extractor = RTLFeatureExtractor(config)
    rtl_file = project_root / 'data' / 'rtl' / 'rtl_module_0.v'

    features = extractor.extract_features(rtl_file)

    assert 'complex_total_gates' not in features


def test_feature_extractor_supports_content_input(project_root):
    config = yaml.safe_load((project_root / 'config' / 'config.yaml').read_text())
    extractor = RTLFeatureExtractor(config)
    rtl_file = project_root / 'data' / 'rtl' / 'rtl_module_0.v'

    features = extractor.extract_features_from_content(
        rtl_file.read_text(encoding='utf-8'),
        rtl_file.name,
    )

    assert features['module_id'] == rtl_file.stem
    assert features['struct_num_inputs'] >= 0
    assert features['struct_num_wires'] >= 0


def test_feature_extractor_supports_standard_verilog_ports(project_root):
    """Standard Verilog (without explicit 'wire' on ports) should extract I/O counts."""
    config = yaml.safe_load((project_root / 'config' / 'config.yaml').read_text())
    extractor = RTLFeatureExtractor(config)

    standard_verilog = """
    module adder(
        input  [3:0] a, b,
        input        cin,
        output [3:0] sum,
        output       cout
    );
        wire [3:0] carry;
        assign {cout, sum[0]} = a[0] + b[0] + cin;
    endmodule
    """
    features = extractor.extract_features_from_content(standard_verilog, 'adder.v')

    assert features is not None
    assert features['struct_num_inputs'] == 3
    assert features['struct_num_outputs'] == 2
    assert features['struct_num_wires'] >= 1


def test_feature_extractor_rejects_invalid_verilog(project_root):
    config = yaml.safe_load((project_root / 'config' / 'config.yaml').read_text())
    extractor = RTLFeatureExtractor(config)

    features = extractor.extract_features_from_content('not valid verilog at all', 'bad.v')
    assert features is None


def test_label_collector_regex(temp_workspace):
    workspace, _ = temp_workspace
    rtl_dir = workspace / 'data' / 'rtl'
    labels_dir = workspace / 'data' / 'labels'

    from scripts.generate_rtl import RTLGenerator
    import random
    import yaml

    config = yaml.safe_load((workspace / 'config' / 'config.yaml').read_text())
    random.seed(42)
    generator = RTLGenerator(config)
    for i in range(5):
        (rtl_dir / f'rtl_module_{i}.v').write_text(generator.generate_module(i))

    collector = LabelCollector(rtl_dir, labels_dir, method='regex')
    df = collector.collect_labels()

    assert len(df) == 5
    assert list(df.columns) == [
        'module_id', 'gate_count', 'and_gates', 'or_gates',
        'xor_gates', 'not_gates', 'nand_gates', 'nor_gates',
    ]
    assert (workspace / 'data' / 'labels' / 'labels_metadata.json').exists()


def test_train_model_writes_metrics(temp_workspace):
    workspace, config_path = temp_workspace
    pipeline = RTLGateCountPipeline(str(config_path.relative_to(workspace)), project_root=workspace)
    pipeline.phase_1_generate_rtl(NUM_SAMPLES)
    pipeline.phase_2_extract_features()
    pipeline.phase_3_collect_labels(method='regex')
    test_metrics = pipeline.phase_4_train_model()

    metrics_path = workspace / 'results' / 'training_metrics.json'
    model_path = workspace / 'models' / 'model.pkl'

    assert model_path.exists()
    assert metrics_path.exists()
    assert test_metrics['r2'] > 0.85

    metrics = json.loads(metrics_path.read_text())
    assert 'metrics' in metrics
    assert 'feature_importance' in metrics
    assert metrics['metrics']['test']['r2'] == pytest.approx(test_metrics['r2'], rel=1e-4)


def test_shap_generates_plots(temp_workspace):
    workspace, config_path = temp_workspace
    pipeline = RTLGateCountPipeline(str(config_path.relative_to(workspace)), project_root=workspace)
    pipeline.phase_1_generate_rtl(NUM_SAMPLES)
    pipeline.phase_2_extract_features()
    pipeline.phase_3_collect_labels(method='regex')
    pipeline.phase_4_train_model()

    explainer = SHAPExplainer(
        workspace / 'models' / 'model.pkl',
        workspace / 'data' / 'features' / 'features.csv',
        workspace / 'results',
        num_samples=20,
    )
    explainer.run()

    results_dir = workspace / 'results'
    assert (results_dir / 'shap_values.json').exists()
    assert (results_dir / 'shap_summary.png').exists()
    assert (results_dir / 'shap_beeswarm.png').exists()
    assert (results_dir / 'shap_dependence').is_dir()


def test_ablation_and_faithfulness(temp_workspace):
    workspace, config_path = temp_workspace
    pipeline = RTLGateCountPipeline(str(config_path.relative_to(workspace)), project_root=workspace)
    pipeline.phase_1_generate_rtl(NUM_SAMPLES)
    pipeline.phase_2_extract_features()
    pipeline.phase_3_collect_labels(method='regex')
    pipeline.phase_4_train_model()
    pipeline.phase_5_shap_explanations()
    pipeline.phase_6_ablation_study()
    report = pipeline.phase_7_verify_faithfulness()

    assert (workspace / 'results' / 'ablation_study_results.json').exists()
    assert (workspace / 'results' / 'faithfulness_report.json').exists()
    assert report['faithfulness_score'] > 0.5


def test_full_pipeline_run(temp_workspace):
    workspace, config_path = temp_workspace
    pipeline = RTLGateCountPipeline(str(config_path.relative_to(workspace)), project_root=workspace)
    summary = pipeline.run(num_samples=NUM_SAMPLES, label_method='regex')

    assert (workspace / 'data' / 'rtl').glob('*.v')
    assert len(list((workspace / 'data' / 'rtl').glob('*.v'))) == NUM_SAMPLES
    assert (workspace / 'data' / 'features' / 'features.csv').exists()
    assert (workspace / 'data' / 'labels' / 'labels.csv').exists()
    assert (workspace / 'models' / 'model.pkl').exists()
    assert (workspace / 'results' / 'training_metrics.json').exists()
    assert (workspace / 'results' / 'pipeline_summary.json').exists()
    assert summary['phases']['phase_4']['test_r2'] > 0.85
    assert summary['phases']['phase_7']['faithfulness_score'] > 0.5


def test_skip_phases(temp_workspace):
    workspace, config_path = temp_workspace
    pipeline = RTLGateCountPipeline(str(config_path.relative_to(workspace)), project_root=workspace)
    pipeline.phase_1_generate_rtl(NUM_SAMPLES)
    pipeline.phase_2_extract_features()
    pipeline.phase_3_collect_labels(method='regex')

    summary = pipeline.run(skip_phases=[1, 2, 3], label_method='regex')
    assert 'phase_4' in summary['phases']
    assert 'phase_7' in summary['phases']
    assert 'phase_1' not in summary['phases']
