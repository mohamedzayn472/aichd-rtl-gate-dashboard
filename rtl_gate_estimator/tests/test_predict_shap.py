"""Test that predict.py --json emits shap_values in its output."""
import json
import subprocess
import sys
from pathlib import Path

import pytest

PROJECT_ROOT = Path(__file__).resolve().parent.parent


@pytest.fixture
def sample_rtl():
    """Return path to a known sample RTL file."""
    sample = PROJECT_ROOT / "data" / "rtl" / "rtl_module_0.v"
    if not sample.exists():
        pytest.skip("Sample RTL file rtl_module_0.v not found")
    return sample


@pytest.fixture
def model_pkl():
    """Assert model.pkl exists before running inference."""
    model = PROJECT_ROOT / "models" / "model.pkl"
    if not model.exists():
        pytest.skip("Trained model not found at models/model.pkl")
    return model


def test_predict_json_contains_shap_values(sample_rtl, model_pkl):
    """Run predict.py --json and assert shap_values is a non-empty list."""
    cmd = [
        sys.executable,
        str(PROJECT_ROOT / "scripts" / "predict.py"),
        "--input", str(sample_rtl),
        "--json",
    ]
    result = subprocess.run(
        cmd, capture_output=True, text=True, cwd=str(PROJECT_ROOT)
    )
    assert result.returncode == 0, f"predict.py failed: {result.stderr}"

    # Extract JSON from stdout (predict.py prints text before the JSON block)
    stdout = result.stdout
    json_start = stdout.find("{")
    assert json_start != -1, f"No JSON found in stdout: {stdout[:500]}"
    json_str = stdout[json_start:]
    # Find the outermost closing brace
    brace_depth = 0
    json_end = -1
    for i, ch in enumerate(json_str):
        if ch == "{":
            brace_depth += 1
        elif ch == "}":
            brace_depth -= 1
            if brace_depth == 0:
                json_end = i + 1
                break
    assert json_end > 0, "Could not find complete JSON object"
    data = json.loads(json_str[:json_end])

    # Verify shap_values key exists and is non-empty
    assert "shap_values" in data, f"Missing shap_values key. Keys: {list(data.keys())}"
    shap_values = data["shap_values"]
    assert isinstance(shap_values, list), f"shap_values is not a list: {type(shap_values)}"
    assert len(shap_values) > 0, "shap_values is empty"

    # Verify structure of each entry
    for entry in shap_values:
        assert "feature" in entry, f"Missing 'feature' key in entry: {entry}"
        assert "importance" in entry, f"Missing 'importance' key in entry: {entry}"
        assert "raw_value" in entry, f"Missing 'raw_value' key in entry: {entry}"
        assert isinstance(entry["importance"], (int, float))
        assert isinstance(entry["raw_value"], (int, float))


def test_predict_json_contains_gate_count(sample_rtl, model_pkl):
    """Verify predicted_gate_count is present and positive."""
    cmd = [
        sys.executable,
        str(PROJECT_ROOT / "scripts" / "predict.py"),
        "--input", str(sample_rtl),
        "--json",
    ]
    result = subprocess.run(
        cmd, capture_output=True, text=True, cwd=str(PROJECT_ROOT)
    )
    assert result.returncode == 0

    stdout = result.stdout
    json_start = stdout.find("{")
    json_str = stdout[json_start:]
    brace_depth = 0
    json_end = -1
    for i, ch in enumerate(json_str):
        if ch == "{":
            brace_depth += 1
        elif ch == "}":
            brace_depth -= 1
            if brace_depth == 0:
                json_end = i + 1
                break
    data = json.loads(json_str[:json_end])

    assert "predicted_gate_count" in data
    assert isinstance(data["predicted_gate_count"], (int, float))
    assert data["predicted_gate_count"] >= 0
