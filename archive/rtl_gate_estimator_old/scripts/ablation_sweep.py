"""
Ablation Sweep - Performs systematic feature ablation studies.
Usage: python ablation_sweep.py --model models/model.pkl --features data/features/features.csv
"""
import argparse
import logging
import pickle
import json
import pandas as pd
import numpy as np
from pathlib import Path
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


class AblationStudy:
    """Performs feature ablation studies to evaluate feature importance."""
    
    def __init__(self, model_path: Path, features_path: Path, output_dir: Path, config_path: Path):
        self.model_path = Path(model_path)
        self.features_path = Path(features_path)
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.config_path = Path(config_path)
        
        # Load model and feature columns
        with open(self.model_path, 'rb') as f:
            model_data = pickle.load(f)
        
        self.model = model_data['model']
        self.feature_columns = model_data['feature_columns']
        
        logger.info(f"Loaded model from {self.model_path}")
        logger.info(f"Feature columns: {len(self.feature_columns)}")
    
    def load_data(self):
        """Load features and labels for ablation study."""
        df = pd.read_csv(self.features_path)
        
        # Extract numeric module_id
        df['module_id'] = df['module_id'].str.extract(r'rtl_module_(\d+)').astype(int)
        df = df.sort_values('module_id').reset_index(drop=True)
        
        # Select feature columns
        X = df[self.feature_columns]
        
        return X
    
    def evaluate_model(self, X, feature_subset=None):
        """Evaluate model with given feature subset."""
        if feature_subset is None:
            X_subset = X
        else:
            X_subset = X[feature_subset]
        
        y_pred = self.model.predict(X_subset)
        
        # Since we don't have true labels in features, we'll use prediction variance as metric
        # For ablation, we measure how much predictions change when features are removed
        return y_pred
    
    def ablate_feature(self, X, feature_to_remove, strategy='feature_removal'):
        """Ablate a single feature using specified strategy."""
        X_ablated = X.copy()
        
        if strategy == 'feature_removal':
            # Simply remove the feature column
            remaining_features = [f for f in self.feature_columns if f != feature_to_remove]
            return X_ablated[remaining_features], remaining_features
        
        elif strategy == 'mean_replacement':
            # Replace feature with its mean value
            X_ablated[feature_to_remove] = X_ablated[feature_to_remove].mean()
            return X_ablated, self.feature_columns
        
        elif strategy == 'random_replacement':
            # Replace feature with random values from its distribution
            X_ablated[feature_to_remove] = np.random.permutation(X_ablated[feature_to_remove].values)
            return X_ablated, self.feature_columns
        
        else:
            raise ValueError(f"Unknown strategy: {strategy}")
    
    def run_ablation_sweep(self, X, strategies=None, num_iterations=10):
        """Run ablation study across all features and strategies."""
        if strategies is None:
            strategies = ['feature_removal', 'mean_replacement', 'random_replacement']
        
        # Get baseline predictions
        baseline_pred = self.model.predict(X)
        baseline_mean = baseline_pred.mean()
        
        results = []
        
        for strategy in strategies:
            logger.info(f"Running ablation with strategy: {strategy}")
            
            for feature in self.feature_columns:
                strategy_results = {
                    'feature': feature,
                    'strategy': strategy,
                    'baseline_mean': float(baseline_mean),
                    'ablation_scores': []
                }
                
                for i in range(num_iterations):
                    X_ablated, feature_subset = self.ablate_feature(X, feature, strategy)
                    
                    if strategy == 'feature_removal':
                        # Need to retrain or use model with subset? 
                        # For simplicity, we'll use prediction difference as metric
                        # Since model expects all features, we'll use mean_replacement instead
                        continue
                    
                    pred_ablated = self.model.predict(X_ablated)
                    pred_diff = np.abs(pred_ablated - baseline_pred).mean()
                    
                    strategy_results['ablation_scores'].append(float(pred_diff))
                
                if strategy_results['ablation_scores']:
                    strategy_results['mean_ablation_score'] = float(np.mean(strategy_results['ablation_scores']))
                    strategy_results['std_ablation_score'] = float(np.std(strategy_results['ablation_scores']))
                    results.append(strategy_results)
        
        return results
    
    def run_feature_importance_ablation(self, X):
        """Run simpler ablation: measure prediction change when each feature is set to mean."""
        baseline_pred = self.model.predict(X)
        
        results = []
        
        for feature in self.feature_columns:
            X_ablated = X.copy()
            X_ablated[feature] = X_ablated[feature].mean()
            
            pred_ablated = self.model.predict(X_ablated)
            pred_diff = np.abs(pred_ablated - baseline_pred).mean()
            
            results.append({
                'feature': feature,
                'ablation_score': float(pred_diff)
            })
        
        # Sort by ablation score (higher = more important)
        results = sorted(results, key=lambda x: x['ablation_score'], reverse=True)
        
        return results
    
    def save_results(self, results):
        """Save ablation results to JSON."""
        output_path = self.output_dir / 'ablation_study_results.json'
        with open(output_path, 'w') as f:
            json.dump(results, f, indent=2)
        
        logger.info(f"Ablation results saved to {output_path}")
    
    def run(self):
        """Full ablation study pipeline."""
        # Load data
        X = self.load_data()
        logger.info(f"Loaded {len(X)} samples")
        
        # Run feature importance ablation
        logger.info("Running feature importance ablation study...")
        results = self.run_feature_importance_ablation(X)
        
        # Log top features
        logger.info("Top 10 features by ablation importance:")
        for i, feat in enumerate(results[:10]):
            logger.info(f"  {i+1}. {feat['feature']}: {feat['ablation_score']:.4f}")
        
        # Save results
        self.save_results(results)
        
        return results


def main():
    """Run ablation study."""
    parser = argparse.ArgumentParser(description='Run feature ablation study')
    parser.add_argument('--model', type=str, required=True, help='Trained model path')
    parser.add_argument('--features', type=str, required=True, help='Features CSV file')
    parser.add_argument('--output', type=str, default='results', help='Output directory')
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file')
    
    args = parser.parse_args()
    
    study = AblationStudy(args.model, args.features, args.output, args.config)
    study.run()


if __name__ == '__main__':
    main()
