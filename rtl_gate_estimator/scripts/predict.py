"""
RTL Gate Count Predictor — single-file inference.

Usage:
    python scripts/predict.py --input path/to/your_design.v
    python scripts/predict.py --input path/to/your_design.v --config config/config.yaml
    python scripts/predict.py --input path/to/your_design.v --no-shap

Loads the trained model (models/model.pkl) and runs prediction on any
Verilog RTL file, then prints the estimated gate count plus a SHAP-based
explanation of which features drove that prediction.
"""
import argparse
import json
import logging
import pickle
import sys
from pathlib import Path

import numpy as np
import pandas as pd

sys.path.append(str(Path(__file__).parent.parent))
from scripts.extract_features import RTLFeatureExtractor
from scripts.utils import ConfigLoader

logging.basicConfig(
    level=logging.INFO,
    format='[%(levelname)s] %(asctime)s - %(message)s'
)
logger = logging.getLogger(__name__)


def load_model(model_path: Path):
    """Load trained model bundle from pickle file."""
    if not model_path.exists():
        logger.error(f"Model file not found: {model_path}")
        logger.error("Run the full pipeline first: python run_pipeline.py")
        sys.exit(1)
    with open(model_path, 'rb') as f:
        bundle = pickle.load(f)
    return bundle


def predict_single(rtl_path: Path, config: dict, model_path: Path, use_shap: bool = True, is_json: bool = False):
    """
    Predict gate count for a single RTL file and explain the prediction.

    Parameters
    ----------
    rtl_path   : path to the .v file to predict on
    config     : loaded config dict
    model_path : path to models/model.pkl
    use_shap   : whether to print SHAP feature attributions
    is_json    : whether we are outputting JSON (suppress human prints)
    """
    # --- Load RTL ---
    if not rtl_path.exists():
        logger.error(f"RTL file not found: {rtl_path}")
        sys.exit(1)

    with open(rtl_path, 'r') as f:
        verilog_content = f.read()

    logger.info(f"Loaded RTL file: {rtl_path.name}")

    # --- Validate & extract features ---
    extractor = RTLFeatureExtractor(config)
    is_valid, validation_error = extractor.validate_verilog(verilog_content)
    if not is_valid:
        logger.error(f"Invalid Verilog: {validation_error}")
        if is_json:
            print(json.dumps({'error': validation_error}))
        sys.exit(1)

    features = extractor.extract_features_from_content(verilog_content, str(rtl_path))
    if features is None:
        msg = "Feature extraction failed — check RTL file is valid Verilog."
        logger.error(msg)
        if is_json:
            print(json.dumps({'error': msg}))
        sys.exit(1)

    feature_df = pd.DataFrame([features])

    # --- Load model ---
    bundle = load_model(model_path)
    model        = bundle['model']
    feature_cols = bundle.get('feature_columns', list(feature_df.columns))
    scaler       = bundle.get('scaler', None)

    # Align columns to what the model was trained on. Older model bundles do
    # not contain struct_num_instances; fold that signal into the legacy wire
    # feature so hierarchical designs are not silently treated as flat modules.
    if 'struct_num_instances' not in feature_cols and 'struct_num_instances' in feature_df.columns:
        feature_df['struct_num_wires'] = (
            feature_df.get('struct_num_wires', 0)
            + feature_df['struct_num_instances']
        )
    for col in feature_cols:
        if col not in feature_df.columns:
            feature_df[col] = 0
    X = feature_df[feature_cols]

    if scaler is not None:
        X_scaled = scaler.transform(X)
    else:
        X_scaled = X

    # --- Predict ---
    predicted_gate_count = float(model.predict(X_scaled)[0])
    predicted_gate_count = max(0, round(predicted_gate_count))

    if not is_json:
        print("\n" + "="*55)
        print(f"  RTL File  : {rtl_path.name}")
        print(f"  Estimated Gate Count : {predicted_gate_count:,}")
        print("="*55)

    # --- SHAP explanation ---
    shap_data = []  # structured SHAP output for JSON consumers
    if use_shap:
        try:
            import shap
            explainer   = shap.TreeExplainer(model)
            shap_values = explainer.shap_values(X_scaled)
            shap_row    = shap_values[0] if shap_values.ndim > 1 else shap_values

            shap_series = pd.Series(shap_row, index=feature_cols)
            shap_sorted = shap_series.reindex(
                shap_series.abs().sort_values(ascending=False).index
            )

            # Build structured SHAP data (mirrors dashboard.py logic)
            for feat, val in shap_sorted.head(10).items():
                raw_val = float(feature_df[feat].iloc[0])
                shap_data.append({
                    'feature': feat,
                    'importance': round(float(val), 4),
                    'raw_value': round(raw_val, 4),
                })

            if not is_json:
                print("\n  Why this estimate? (SHAP feature attributions)")
                print("  " + "-"*51)
                print(f"  {'Feature':<35} {'Impact':>10}")
                print("  " + "-"*51)
                for feat, val in shap_sorted.head(10).items():
                    direction = "+" if val > 0 else "-"
                    raw_val   = float(feature_df[feat].iloc[0])
                    print(f"  {feat:<35} {direction} {abs(val):>8.2f}  (value={raw_val:.1f})")
                print("  " + "-"*51)
                expected_value = explainer.expected_value
                if isinstance(expected_value, np.ndarray):
                    expected_value = float(np.ravel(expected_value)[0])
                else:
                    expected_value = float(expected_value)
                print(f"  Baseline (avg prediction) : {expected_value:.1f}")
                print(f"  SHAP sum + baseline       : {expected_value + shap_row.sum():.1f}")
                print(f"  Model prediction          : {predicted_gate_count}")
                print("="*55 + "\n")

        except ImportError:
            logger.warning("SHAP not installed — skipping explanation. pip install shap")
        except Exception as e:
            logger.warning(f"SHAP explanation failed: {e}")

    return predicted_gate_count, features, shap_data


def main():
    parser = argparse.ArgumentParser(
        description='Predict gate count for a single RTL Verilog file'
    )
    parser.add_argument(
        '--input', '-i', required=True,
        help='Path to the RTL .v file to predict on'
    )
    parser.add_argument(
        '--model', '-m', default='models/model.pkl',
        help='Path to trained model.pkl (default: models/model.pkl)'
    )
    parser.add_argument(
        '--config', '-c', default='config/config.yaml',
        help='Path to config.yaml (default: config/config.yaml)'
    )
    parser.add_argument(
        '--no-shap', action='store_true',
        help='Skip SHAP explanation (faster, just prints the number)'
    )
    parser.add_argument(
        '--json', action='store_true',
        help='Output result as JSON (useful for piping into other tools)'
    )
    args = parser.parse_args()

    if args.json:
        logging.getLogger().setLevel(logging.WARNING)

    config     = ConfigLoader.load_config(args.config)
    rtl_path   = Path(args.input)
    model_path = Path(args.model)

    gate_count, features, shap_data = predict_single(
        rtl_path   = rtl_path,
        config     = config,
        model_path = model_path,
        use_shap   = not args.no_shap,
        is_json    = args.json,
    )

    if args.json:
        result = {
            'file': str(rtl_path),
            'predicted_gate_count': gate_count,
            'features': {k: float(v) for k, v in features.items()
                         if isinstance(v, (int, float))},
            'shap_values': shap_data,
        }
        print(json.dumps(result, indent=2))


if __name__ == '__main__':
    main()
