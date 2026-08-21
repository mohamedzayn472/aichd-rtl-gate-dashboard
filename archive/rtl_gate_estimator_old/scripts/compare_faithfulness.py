"""
Faithfulness Verifier - Verifies SHAP explanation faithfulness.
Usage: python compare_faithfulness.py --shap results/shap_values.json --ablation results/ablation_study_results.json
"""
import argparse
import logging
import json
import numpy as np
from pathlib import Path
from scipy.stats import spearmanr, kendalltau

logging.basicConfig(level=logging.INFO, format='[%(levelname)s] %(asctime)s - %(message)s')
logger = logging.getLogger(__name__)


class FaithfulnessVerifier:
    """Verifies faithfulness of SHAP explanations by comparing with ablation results."""
    
    def __init__(self, shap_path: Path, ablation_path: Path, output_dir: Path, config_path: Path):
        self.shap_path = Path(shap_path)
        self.ablation_path = Path(ablation_path)
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)
        self.config_path = Path(config_path)
        
        # Load SHAP results
        with open(self.shap_path, 'r') as f:
            self.shap_data = json.load(f)
        
        # Load ablation results
        with open(self.ablation_path, 'r') as f:
            self.ablation_data = json.load(f)
        
        logger.info(f"Loaded SHAP results from {self.shap_path}")
        logger.info(f"Loaded ablation results from {self.ablation_path}")
    
    def extract_feature_rankings(self):
        """Extract feature importance rankings from both methods."""
        # SHAP rankings (by mean absolute SHAP value)
        shap_importance = {item['feature']: item['importance'] for item in self.shap_data['feature_importance']}
        shap_ranking = sorted(shap_importance.items(), key=lambda x: x[1], reverse=True)
        
        # Ablation rankings (by ablation score)
        ablation_importance = {item['feature']: item['ablation_score'] for item in self.ablation_data}
        ablation_ranking = sorted(ablation_importance.items(), key=lambda x: x[1], reverse=True)
        
        return shap_ranking, ablation_ranking
    
    def compute_rank_correlation(self, shap_ranking, ablation_ranking):
        """Compute rank correlation coefficients between SHAP and ablation rankings."""
        # Get common features
        shap_dict = dict(shap_ranking)
        ablation_dict = dict(ablation_ranking)
        common_features = set(shap_dict.keys()) & set(ablation_dict.keys())
        
        if not common_features:
            logger.warning("No common features between SHAP and ablation results")
            return None
        
        logger.info(f"Comparing {len(common_features)} common features")
        
        # Extract rankings as lists
        shap_ranks = [shap_dict[f] for f in common_features]
        ablation_ranks = [ablation_dict[f] for f in common_features]
        
        # Compute correlations
        spearman_corr, spearman_p = spearmanr(shap_ranks, ablation_ranks)
        kendall_corr, kendall_p = kendalltau(shap_ranks, ablation_ranks)
        
        results = {
            'spearman_correlation': float(spearman_corr),
            'spearman_p_value': float(spearman_p),
            'kendall_correlation': float(kendall_corr),
            'kendall_p_value': float(kendall_p),
            'num_features': len(common_features)
        }
        
        return results
    
    def compute_top_k_overlap(self, shap_ranking, ablation_ranking, k_values=[5, 10, 15]):
        """Compute overlap of top-k features between SHAP and ablation."""
        shap_top_k = {k: [f[0] for f in shap_ranking[:k]] for k in k_values}
        ablation_top_k = {k: [f[0] for f in ablation_ranking[:k]] for k in k_values}
        
        overlap_results = {}
        for k in k_values:
            overlap = set(shap_top_k[k]) & set(ablation_top_k[k])
            overlap_ratio = len(overlap) / k
            overlap_results[f'top_{k}_overlap'] = len(overlap)
            overlap_results[f'top_{k}_overlap_ratio'] = float(overlap_ratio)
            overlap_results[f'top_{k}_features'] = list(overlap)
        
        return overlap_results
    
    def compute_faithfulness_score(self, correlation_results, overlap_results):
        """Compute overall faithfulness score."""
        # Weighted combination of correlation and overlap metrics
        spearman_weight = 0.4
        kendall_weight = 0.3
        overlap_weight = 0.3
        
        # Normalize correlations to [0, 1] (assuming they're in [-1, 1])
        spearman_normalized = (correlation_results['spearman_correlation'] + 1) / 2
        kendall_normalized = (correlation_results['kendall_correlation'] + 1) / 2
        
        # Average overlap ratio across all k values
        overlap_ratios = [v for k, v in overlap_results.items() if 'overlap_ratio' in k]
        avg_overlap = np.mean(overlap_ratios)
        
        faithfulness_score = (
            spearman_weight * spearman_normalized +
            kendall_weight * kendall_normalized +
            overlap_weight * avg_overlap
        )
        
        return float(faithfulness_score)
    
    def generate_report(self, correlation_results, overlap_results, faithfulness_score):
        """Generate comprehensive faithfulness report."""
        report = {
            'faithfulness_score': faithfulness_score,
            'correlation_metrics': correlation_results,
            'overlap_metrics': overlap_results,
            'interpretation': self._interpret_score(faithfulness_score)
        }
        
        return report
    
    def _interpret_score(self, score):
        """Interpret faithfulness score."""
        if score >= 0.8:
            return "High faithfulness - SHAP explanations align well with ablation results"
        elif score >= 0.6:
            return "Moderate faithfulness - SHAP explanations reasonably align with ablation results"
        elif score >= 0.4:
            return "Low faithfulness - SHAP explanations have limited alignment with ablation results"
        else:
            return "Poor faithfulness - SHAP explanations do not align well with ablation results"
    
    def save_report(self, report):
        """Save faithfulness report to JSON."""
        output_path = self.output_dir / 'faithfulness_report.json'
        with open(output_path, 'w') as f:
            json.dump(report, f, indent=2)
        
        logger.info(f"Faithfulness report saved to {output_path}")
    
    def run(self):
        """Full faithfulness verification pipeline."""
        # Extract rankings
        logger.info("Extracting feature rankings...")
        shap_ranking, ablation_ranking = self.extract_feature_rankings()
        
        # Compute correlations
        logger.info("Computing rank correlations...")
        correlation_results = self.compute_rank_correlation(shap_ranking, ablation_ranking)
        
        if correlation_results is None:
            logger.error("Could not compute correlations")
            return None
        
        logger.info(f"Spearman correlation: {correlation_results['spearman_correlation']:.4f}")
        logger.info(f"Kendall correlation: {correlation_results['kendall_correlation']:.4f}")
        
        # Compute top-k overlap
        logger.info("Computing top-k overlap...")
        overlap_results = self.compute_top_k_overlap(shap_ranking, ablation_ranking)
        
        for k in [5, 10, 15]:
            logger.info(f"Top-{k} overlap: {overlap_results[f'top_{k}_overlap']}/{k} ({overlap_results[f'top_{k}_overlap_ratio']:.2%})")
        
        # Compute faithfulness score
        logger.info("Computing faithfulness score...")
        faithfulness_score = self.compute_faithfulness_score(correlation_results, overlap_results)
        logger.info(f"Overall faithfulness score: {faithfulness_score:.4f}")
        
        # Generate report
        report = self.generate_report(correlation_results, overlap_results, faithfulness_score)
        
        # Save report
        self.save_report(report)
        
        return report


def main():
    """Verify SHAP faithfulness."""
    parser = argparse.ArgumentParser(description='Verify SHAP faithfulness')
    parser.add_argument('--shap', type=str, required=True, help='SHAP values file')
    parser.add_argument('--ablation', type=str, required=True, help='Ablation results file')
    parser.add_argument('--output', type=str, default='results', help='Output directory')
    parser.add_argument('--config', type=str, default='config/config.yaml', help='Config file')
    
    args = parser.parse_args()
    
    verifier = FaithfulnessVerifier(args.shap, args.ablation, args.output, args.config)
    verifier.run()


if __name__ == '__main__':
    main()
