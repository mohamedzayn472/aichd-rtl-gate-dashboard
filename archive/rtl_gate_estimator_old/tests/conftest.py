"""Shared fixtures for rtl_gate_estimator tests."""
import shutil
import sys
from pathlib import Path

import pytest
import yaml

PROJECT_ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(PROJECT_ROOT))


@pytest.fixture
def project_root():
    return PROJECT_ROOT


@pytest.fixture
def temp_workspace(tmp_path):
    """Create an isolated workspace with a minimal config."""
    workspace = tmp_path / 'workspace'
    for name in ['data/rtl', 'data/features', 'data/labels', 'models', 'results', 'config']:
        (workspace / name).mkdir(parents=True)

    base_config = yaml.safe_load((PROJECT_ROOT / 'config' / 'config.yaml').read_text())
    base_config['data']['num_samples'] = 80
    base_config['paths'] = {
        'data_dir': str(workspace / 'data'),
        'rtl_dir': str(workspace / 'data' / 'rtl'),
        'features_dir': str(workspace / 'data' / 'features'),
        'labels_dir': str(workspace / 'data' / 'labels'),
        'ablation_dir': str(workspace / 'data' / 'ablation'),
        'models_dir': str(workspace / 'models'),
        'results_dir': str(workspace / 'results'),
        'notebooks_dir': str(workspace / 'notebooks'),
        'config_dir': str(workspace / 'config'),
    }
    config_path = workspace / 'config' / 'config.yaml'
    config_path.write_text(yaml.dump(base_config), encoding='utf-8')

    return workspace, config_path
