"""
Permutation Importance Calculator - Computes permutation feature importance for trained model.
Usage: python scripts/compute_permutation_importance.py --model models/model.pkl --features data/features/features.csv
"""
import argparse
import json
import logging
import pickle
import pandas as pd
import numpy as np
from pathlib import Path
from sklearn.inspection import permutation_importance

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


def compute_permutation_importance(model_path: Path, features_path: Path, labels_path: Path, output_path: Path, n_repeats: int = 10):
    model_path = Path(model_path)
    features_path = Path(features_path)
    labels_path = Path(labels_path) if labels_path else None
    output_path = Path(output_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    
    # Load model
    with open(model_path, 'rb') as f:
        model_data = pickle.load(f)
    
    model = model_data['model']
    feature_columns = model_data['feature_columns']
    logger.info(f"Loaded model from {model_path} with {len(feature_columns)} features.")
    
    # Load features
    features_df = pd.read_csv(features_path)
    extracted = features_df['module_id'].astype(str).str.extract(r'(\d+)')
    features_df['module_id'] = pd.to_numeric(extracted[0], errors='coerce')
    features_df = features_df.dropna(subset=['module_id'])
    features_df['module_id'] = features_df['module_id'].astype(int)
    features_df = features_df.sort_values('module_id').reset_index(drop=True)
    
    X = features_df[feature_columns]
    
    # Load labels if available
    if labels_path and labels_path.exists():
        labels_df = pd.read_csv(labels_path)
        ext_lbl = labels_df['module_id'].astype(str).str.extract(r'(\d+)')
        labels_df['module_id'] = pd.to_numeric(ext_lbl[0], errors='coerce')
        labels_df = labels_df.dropna(subset=['module_id'])
        labels_df['module_id'] = labels_df['module_id'].astype(int)
        
        merged = pd.merge(features_df, labels_df, on='module_id')
        X = merged[feature_columns]
        y_col = 'gate_count' if 'gate_count' in merged.columns else ('total_gates' if 'total_gates' in merged.columns else merged.columns[-1])
        y = merged[y_col]
        logger.info(f"Loaded labels from {labels_path}, dataset size: {len(X)}")
    else:
        y = model.predict(X)
        logger.info(f"No ground truth labels provided, using model predictions for baseline, dataset size: {len(X)}")
    
    # Compute permutation importance
    logger.info(f"Computing permutation importance with n_repeats={n_repeats}...")
    result = permutation_importance(model, X, y, n_repeats=n_repeats, random_state=42, scoring='neg_mean_squared_error')
    
    # Format results
    importances_mean = result.importances_mean
    
    importance_list = []
    for feat, imp in zip(feature_columns, importances_mean):
        importance_list.append({
            'feature': feat,
            'importance': float(imp)
        })
    
    importance_list.sort(key=lambda x: x['importance'], reverse=True)
    
    # Save JSON
    with open(output_path, 'w') as f:
        json.dump(importance_list, f, indent=2)
    logger.info(f"Saved permutation importance to {output_path}")
    
    # Also save JS file for offline dashboard compatibility
    js_output_path = output_path.with_suffix('.js')
    with open(js_output_path, 'w') as f:
        f.write(f"const PERMUTATION_IMPORTANCE = {json.dumps(importance_list, indent=2)};\n")
    logger.info(f"Saved JS permutation importance to {js_output_path}")
    
    return importance_list


def main():
    parser = argparse.ArgumentParser(description='Compute Permutation Feature Importance')
    parser.add_argument('--model', type=str, default='models/model.pkl', help='Model pickle file path')
    parser.add_argument('--features', type=str, default='data/features/features.csv', help='Features CSV file path')
    parser.add_argument('--labels', type=str, default='data/labels/labels.csv', help='Labels CSV file path')
    parser.add_argument('--output', type=str, default='results/permutation_importance.json', help='Output JSON path')
    parser.add_argument('--repeats', type=int, default=10, help='Number of permutation repeats')
    
    args = parser.parse_args()
    compute_permutation_importance(Path(args.model), Path(args.features), Path(args.labels), Path(args.output), args.repeats)


if __name__ == '__main__':
    main()
