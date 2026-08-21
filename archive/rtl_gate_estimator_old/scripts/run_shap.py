"""
SHAP Explainer - Generates SHAP explanations for model predictions.
Usage: python run_shap.py --model models/model.pkl --features data/features/features.csv
"""
import argparse
import logging
import pickle
import json
import pandas as pd
import numpy as np
import shap
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from pathlib import Path

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


class SHAPExplainer:
    """Generates SHAP explanations for RandomForest model."""
    
    def __init__(self, model_path: Path, features_path: Path, output_dir: Path, num_samples: int):
        self.model_path = Path(model_path)
        self.features_path = Path(features_path)
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.num_samples = num_samples
        
        # Load model and feature columns
        with open(self.model_path, 'rb') as f:
            model_data = pickle.load(f)
        
        self.model = model_data['model']
        self.feature_columns = model_data['feature_columns']
        
        logger.info(f"Loaded model from {self.model_path}")
        logger.info(f"Feature columns: {len(self.feature_columns)}")
    
    def load_features(self):
        """Load and prepare features for SHAP analysis."""
        df = pd.read_csv(self.features_path)
        
        # Extract numeric module_id
        df['module_id'] = df['module_id'].str.extract(r'rtl_module_(\d+)').astype(int)
        df = df.sort_values('module_id').reset_index(drop=True)
        
        # Select feature columns
        X = df[self.feature_columns]
        
        # Sample if requested
        if self.num_samples and len(X) > self.num_samples:
            X = X.sample(n=self.num_samples, random_state=42)
            logger.info(f"Sampled {self.num_samples} instances for SHAP analysis")
        
        return X
    
    def generate_shap_values(self, X):
        """Generate SHAP values using TreeExplainer."""
        logger.info("Generating SHAP values with TreeExplainer...")
        
        explainer = shap.TreeExplainer(self.model)
        shap_values = explainer.shap_values(X)
        
        logger.info(f"SHAP values shape: {np.array(shap_values).shape}")
        
        return explainer, shap_values
    
    def compute_feature_importance(self, shap_values, feature_names):
        """Compute mean absolute SHAP values for feature importance."""
        mean_abs_shap = np.mean(np.abs(shap_values), axis=0)
        
        importance = {
            'feature': feature_names,
            'importance': mean_abs_shap.tolist()
        }
        
        # Sort by importance
        importance_df = pd.DataFrame(importance).sort_values('importance', ascending=False)
        
        return importance_df.to_dict('records')
    
    def save_results(self, explainer, shap_values, X, importance):
        """Save SHAP results to JSON."""
        results = {
            'feature_importance': importance,
            'shap_values': shap_values.tolist() if isinstance(shap_values, np.ndarray) else [sv.tolist() for sv in shap_values],
            'feature_names': self.feature_columns,
            'num_samples': len(X),
            'expected_value': float(explainer.expected_value) if np.isscalar(explainer.expected_value) else [float(v) for v in explainer.expected_value]
        }
        
        output_path = self.output_dir / 'shap_values.json'
        with open(output_path, 'w') as f:
            json.dump(results, f, indent=2)
        
        logger.info(f"SHAP results saved to {output_path}")
        
        return results

    def generate_plots(self, explainer, shap_values, X, importance):
        """Generate SHAP summary and dependence plots."""
        plot_paths = []

        summary_path = self.output_dir / 'shap_summary.png'
        shap.summary_plot(
            shap_values,
            X,
            feature_names=self.feature_columns,
            show=False,
            plot_type='bar',
            max_display=min(15, len(self.feature_columns)),
        )
        plt.tight_layout()
        plt.savefig(summary_path, dpi=150, bbox_inches='tight')
        plt.close()
        plot_paths.append(summary_path)
        logger.info(f'SHAP summary plot saved to {summary_path}')

        beeswarm_path = self.output_dir / 'shap_beeswarm.png'
        shap.summary_plot(
            shap_values,
            X,
            feature_names=self.feature_columns,
            show=False,
            max_display=min(15, len(self.feature_columns)),
        )
        plt.tight_layout()
        plt.savefig(beeswarm_path, dpi=150, bbox_inches='tight')
        plt.close()
        plot_paths.append(beeswarm_path)
        logger.info(f'SHAP beeswarm plot saved to {beeswarm_path}')

        dependence_dir = self.output_dir / 'shap_dependence'
        dependence_dir.mkdir(parents=True, exist_ok=True)
        top_features = [item['feature'] for item in importance[:3]]

        for feature in top_features:
            dep_path = dependence_dir / f'shap_dependence_{feature}.png'
            shap.dependence_plot(
                feature,
                shap_values,
                X,
                feature_names=self.feature_columns,
                show=False,
            )
            plt.tight_layout()
            plt.savefig(dep_path, dpi=150, bbox_inches='tight')
            plt.close()
            plot_paths.append(dep_path)
            logger.info(f'SHAP dependence plot saved to {dep_path}')

        return plot_paths
    
    def run(self):
        """Full SHAP analysis pipeline."""
        # Load features
        X = self.load_features()
        
        # Generate SHAP values
        explainer, shap_values = self.generate_shap_values(X)
        
        # Compute feature importance
        importance = self.compute_feature_importance(shap_values, self.feature_columns)
        
        # Log top features
        logger.info("Top 10 features by importance:")
        for i, feat in enumerate(importance[:10]):
            logger.info(f"  {i+1}. {feat['feature']}: {feat['importance']:.4f}")
        
        # Save results
        results = self.save_results(explainer, shap_values, X, importance)

        # Generate plots
        self.generate_plots(explainer, shap_values, X, importance)
        
        return results


def main():
    """Generate SHAP explanations."""
    parser = argparse.ArgumentParser(description='Generate SHAP explanations')
    parser.add_argument('--model', type=str, required=True, help='Trained model path')
    parser.add_argument('--features', type=str, required=True, help='Features CSV file')
    parser.add_argument('--output', type=str, default='results', help='Output directory')
    parser.add_argument('--num-samples', type=int, default=100, help='Number of samples to explain')
    
    args = parser.parse_args()
    
    explainer = SHAPExplainer(args.model, args.features, args.output, args.num_samples)
    explainer.run()


if __name__ == '__main__':
    main()
