import streamlit as st
import pandas as pd
import json
import plotly.express as px
import plotly.graph_objects as go
from pathlib import Path
import numpy as np

st.set_page_config(
    page_title="RTL Gate Count Estimator Dashboard",
    page_icon="🔧",
    layout="wide",
    initial_sidebar_state="expanded"
)

st.title("🔧 RTL Gate Count Estimator Dashboard")
st.markdown("---")

# Sidebar
st.sidebar.header("Navigation")
page = st.sidebar.radio(
    "Select Page",
    ["Overview", "Training Metrics", "SHAP Analysis", "Feature Importance", "Faithfulness Report"]
)

# Paths
BASE_DIR = Path(__file__).parent
RESULTS_DIR = BASE_DIR / "results"
DATA_DIR = BASE_DIR / "data"
MODELS_DIR = BASE_DIR / "models"

def load_json(filepath):
    if filepath.exists():
        with open(filepath, 'r') as f:
            return json.load(f)
    return None

def load_csv(filepath):
    if filepath.exists():
        return pd.read_csv(filepath)
    return None

# Overview Page
if page == "Overview":
    st.header("📊 Pipeline Overview")
    
    col1, col2, col3, col4 = st.columns(4)
    
    # Count RTL files
    rtl_count = len(list((DATA_DIR / "rtl").glob("*.v")))
    col1.metric("RTL Modules", rtl_count)
    
    # Load features
    features = load_csv(DATA_DIR / "features" / "features.csv")
    if features is not None:
        col2.metric("Features Extracted", len(features))
        col3.metric("Feature Columns", len(features.columns) - 1)  # Exclude module_id
    else:
        col2.metric("Features Extracted", "N/A")
        col3.metric("Feature Columns", "N/A")
    
    # Load labels
    labels = load_csv(DATA_DIR / "labels" / "labels.csv")
    if labels is not None:
        col4.metric("Labels Collected", len(labels))
    else:
        col4.metric("Labels Collected", "N/A")
    
    st.markdown("---")
    
    # Pipeline Status
    st.subheader("Pipeline Status")
    
    status_data = {
        "Phase": ["RTL Generation", "Feature Extraction", "Label Collection", "Model Training", "SHAP Analysis", "Ablation Study", "Faithfulness Check"],
        "Status": ["✅ Complete", "✅ Complete", "✅ Complete", "✅ Complete", "✅ Complete", "✅ Complete", "✅ Complete"],
        "Output": [
            f"{rtl_count} .v files",
            "features.csv" if features is not None else "Missing",
            "labels.csv" if labels is not None else "Missing",
            "model.pkl" if (MODELS_DIR / "model.pkl").exists() else "Missing",
            "shap_values.json" if (RESULTS_DIR / "shap_values.json").exists() else "Missing",
            "ablation_study_results.json" if (RESULTS_DIR / "ablation_study_results.json").exists() else "Missing",
            "faithfulness_report.json" if (RESULTS_DIR / "faithfulness_report.json").exists() else "Missing"
        ]
    }
    
    status_df = pd.DataFrame(status_data)
    st.table(status_df)
    
    # Quick Stats
    st.markdown("---")
    st.subheader("Quick Statistics")
    
    if labels is not None:
        col1, col2 = st.columns(2)
        with col1:
            st.metric("Average Gate Count", f"{labels['gate_count'].mean():.2f}")
            st.metric("Max Gate Count", f"{labels['gate_count'].max():.0f}")
        with col2:
            st.metric("Min Gate Count", f"{labels['gate_count'].min():.0f}")
            st.metric("Std Dev", f"{labels['gate_count'].std():.2f}")

# Training Metrics Page
elif page == "Training Metrics":
    st.header("📈 Training Metrics")
    
    metrics = load_json(RESULTS_DIR / "training_metrics.json")
    
    if metrics:
        # Split metrics - handle nested structure
        all_metrics = metrics.get('metrics', {})
        train_metrics = all_metrics.get('train', {})
        val_metrics = all_metrics.get('val', {})
        test_metrics = all_metrics.get('test', {})
        
        col1, col2, col3 = st.columns(3)
        
        with col1:
            st.subheader("Train Set")
            st.metric("MSE", f"{train_metrics.get('mse', 0):.4f}")
            st.metric("MAE", f"{train_metrics.get('mae', 0):.4f}")
            st.metric("R² Score", f"{train_metrics.get('r2', 0):.4f}")
        
        with col2:
            st.subheader("Validation Set")
            st.metric("MSE", f"{val_metrics.get('mse', 0):.4f}")
            st.metric("MAE", f"{val_metrics.get('mae', 0):.4f}")
            st.metric("R² Score", f"{val_metrics.get('r2', 0):.4f}")
        
        with col3:
            st.subheader("Test Set")
            st.metric("MSE", f"{test_metrics.get('mse', 0):.4f}")
            st.metric("MAE", f"{test_metrics.get('mae', 0):.4f}")
            st.metric("R² Score", f"{test_metrics.get('r2', 0):.4f}")
        
        # Visualization
        st.markdown("---")
        st.subheader("R² Score Comparison")
        
        r2_data = {
            "Dataset": ["Train", "Validation", "Test"],
            "R² Score": [
                train_metrics.get('r2', 0),
                val_metrics.get('r2', 0),
                test_metrics.get('r2', 0)
            ]
        }
        
        fig = px.bar(r2_data, x="Dataset", y="R² Score", 
                     title="R² Score Across Datasets",
                     color="Dataset",
                     text_auto='.4f')
        fig.update_layout(yaxis_range=[0, 1])
        st.plotly_chart(fig, use_container_width=True)
        
        # MAE Comparison
        st.subheader("MAE Comparison")
        
        mae_data = {
            "Dataset": ["Train", "Validation", "Test"],
            "MAE": [
                train_metrics.get('mae', 0),
                val_metrics.get('mae', 0),
                test_metrics.get('mae', 0)
            ]
        }
        
        fig = px.bar(mae_data, x="Dataset", y="MAE",
                     title="Mean Absolute Error Across Datasets",
                     color="Dataset",
                     text_auto='.4f')
        st.plotly_chart(fig, use_container_width=True)
    else:
        st.error("Training metrics not found. Please run the training pipeline first.")

# SHAP Analysis Page
elif page == "SHAP Analysis":
    st.header("🔍 SHAP Analysis")
    
    shap_data = load_json(RESULTS_DIR / "shap_values.json")
    
    if shap_data:
        # Display summary plot
        st.subheader("SHAP Summary Plot")
        summary_plot_path = RESULTS_DIR / "shap_summary.png"
        if summary_plot_path.exists():
            st.image(str(summary_plot_path), use_column_width=True)
        
        # Display beeswarm plot
        st.subheader("SHAP Beeswarm Plot")
        beeswarm_plot_path = RESULTS_DIR / "shap_beeswarm.png"
        if beeswarm_plot_path.exists():
            st.image(str(beeswarm_plot_path), use_column_width=True)
        
        # Feature importance table
        st.markdown("---")
        st.subheader("Feature Importance (SHAP)")
        
        importance = shap_data.get('feature_importance', [])
        if importance:
            # Handle both dict and list of dict formats
            if isinstance(importance, dict):
                importance_df = pd.DataFrame([
                    {"Feature": k, "Importance": v}
                    for k, v in importance.items()
                ])
            else:
                # List of dicts format
                importance_df = pd.DataFrame(importance)
                if 'feature' in importance_df.columns and 'importance' in importance_df.columns:
                    importance_df = importance_df.rename(columns={'feature': 'Feature', 'importance': 'Importance'})
            
            importance_df = importance_df.sort_values("Importance", ascending=False).reset_index(drop=True)
            
            importance_df.index = importance_df.index + 1
            st.dataframe(importance_df, use_container_width=True)
            
            # Bar chart
            fig = px.bar(importance_df.head(10), x="Importance", y="Feature",
                         orientation='h',
                         title="Top 10 Features by SHAP Importance",
                         color="Importance")
            fig.update_layout(yaxis={'categoryorder': 'total ascending'})
            st.plotly_chart(fig, use_container_width=True)
        
        # Dependence plots
        st.markdown("---")
        st.subheader("SHAP Dependence Plots")
        
        dependence_dir = RESULTS_DIR / "shap_dependence"
        if dependence_dir.exists():
            plot_files = list(dependence_dir.glob("*.png"))
            if plot_files:
                cols = st.columns(min(3, len(plot_files)))
                for idx, plot_file in enumerate(plot_files):
                    with cols[idx % 3]:
                        st.image(str(plot_file), caption=plot_file.stem, use_column_width=True)
    else:
        st.error("SHAP values not found. Please run the SHAP analysis first.")

# Feature Importance Page
elif page == "Feature Importance":
    st.header("⚖️ Feature Importance Comparison")
    
    shap_data = load_json(RESULTS_DIR / "shap_values.json")
    ablation_data = load_json(RESULTS_DIR / "ablation_study_results.json")
    
    if shap_data and ablation_data:
        # Handle SHAP importance
        shap_importance_raw = shap_data.get('feature_importance', [])
        if isinstance(shap_importance_raw, dict):
            shap_importance = shap_importance_raw
        else:
            shap_importance = {item['feature']: item['importance'] for item in shap_importance_raw}
        
        # Handle ablation importance (file is a list directly)
        if isinstance(ablation_data, list):
            ablation_importance = {item['feature']: item['ablation_score'] for item in ablation_data}
        else:
            ablation_importance_raw = ablation_data.get('feature_importance', [])
            if isinstance(ablation_importance_raw, dict):
                ablation_importance = ablation_importance_raw
            else:
                ablation_importance = {item['feature']: item['ablation_score'] for item in ablation_importance_raw}
        
        # Create comparison dataframe
        comparison_data = []
        for feature in set(shap_importance.keys()) | set(ablation_importance.keys()):
            comparison_data.append({
                "Feature": feature,
                "SHAP Importance": shap_importance.get(feature, 0),
                "Ablation Importance": ablation_importance.get(feature, 0)
            })
        
        comparison_df = pd.DataFrame(comparison_data)
        
        # Sort by SHAP importance
        comparison_df = comparison_df.sort_values("SHAP Importance", ascending=False).reset_index(drop=True)
        
        # Display table
        st.subheader("Feature Importance Comparison")
        st.dataframe(comparison_df, use_container_width=True)
        
        # Comparison chart
        st.markdown("---")
        st.subheader("Top 10 Features Comparison")
        
        top_10 = comparison_df.head(10)
        
        fig = go.Figure()
        fig.add_trace(go.Bar(
            name='SHAP',
            x=top_10['Feature'],
            y=top_10['SHAP Importance'],
            marker_color='rgb(55, 83, 109)'
        ))
        fig.add_trace(go.Bar(
            name='Ablation',
            x=top_10['Feature'],
            y=top_10['Ablation Importance'],
            marker_color='rgb(26, 118, 255)'
        ))
        
        fig.update_layout(
            title='SHAP vs Ablation Importance (Top 10)',
            xaxis_title='Feature',
            yaxis_title='Importance Score',
            barmode='group',
            xaxis={'tickangle': -45}
        )
        
        st.plotly_chart(fig, use_container_width=True)
        
        # Scatter plot
        st.markdown("---")
        st.subheader("Correlation Scatter Plot")
        
        fig = px.scatter(comparison_df, 
                         x="SHAP Importance", 
                         y="Ablation Importance",
                         hover_data=["Feature"],
                         title="SHAP vs Ablation Importance Correlation")
        
        # Add diagonal line
        max_val = max(comparison_df["SHAP Importance"].max(), comparison_df["Ablation Importance"].max())
        fig.add_trace(go.Scatter(
            x=[0, max_val],
            y=[0, max_val],
            mode='lines',
            name='Perfect Correlation',
            line=dict(dash='dash', color='red')
        ))
        
        st.plotly_chart(fig, use_container_width=True)
    else:
        st.error("SHAP or ablation data not found. Please run the analysis first.")

# Faithfulness Report Page
elif page == "Faithfulness Report":
    st.header("✅ Faithfulness Report")
    
    faithfulness_data = load_json(RESULTS_DIR / "faithfulness_report.json")
    
    if faithfulness_data:
        # Overall score
        st.subheader("Overall Faithfulness Score")
        
        overall_score = faithfulness_data.get('faithfulness_score', 0)
        
        col1, col2, col3 = st.columns(3)
        col1.metric("Faithfulness Score", f"{overall_score:.4f}")
        
        # Score interpretation
        if overall_score >= 0.9:
            col2.success("Excellent")
        elif overall_score >= 0.7:
            col2.warning("Good")
        else:
            col2.error("Poor")
        
        col3.metric("Status", "High Faithfulness" if overall_score >= 0.8 else "Low Faithfulness")
        
        # Correlation metrics
        st.markdown("---")
        st.subheader("Rank Correlations")
        
        corr_metrics = faithfulness_data.get('correlation_metrics', {})
        spearman = corr_metrics.get('spearman_correlation', 0)
        kendall = corr_metrics.get('kendall_correlation', 0)
        
        col1, col2 = st.columns(2)
        col1.metric("Spearman Correlation", f"{spearman:.4f}")
        col2.metric("Kendall Correlation", f"{kendall:.4f}")
        
        # Top-k overlap
        st.markdown("---")
        st.subheader("Top-k Overlap")
        
        overlap_metrics = faithfulness_data.get('overlap_metrics', {})
        overlap_data = {
            "Top-5": f"{overlap_metrics.get('top_5_overlap_ratio', 0) * 100:.0f}%",
            "Top-10": f"{overlap_metrics.get('top_10_overlap_ratio', 0) * 100:.0f}%",
            "Top-15": f"{overlap_metrics.get('top_15_overlap_ratio', 0) * 100:.0f}%"
        }
        
        overlap_df = pd.DataFrame([
            {"k": k, "Overlap": v}
            for k, v in overlap_data.items()
        ])
        
        st.table(overlap_df)
        
        # Visualization
        st.markdown("---")
        st.subheader("Correlation Metrics Visualization")
        
        corr_data = {
            "Metric": ["Spearman", "Kendall"],
            "Correlation": [spearman, kendall]
        }
        
        fig = px.bar(corr_data, x="Metric", y="Correlation",
                     title="Rank Correlation Metrics",
                     color="Metric",
                     text_auto='.4f',
                     range_y=[0, 1])
        st.plotly_chart(fig, use_container_width=True)
        
        # Interpretation
        st.markdown("---")
        st.subheader("Interpretation")
        
        st.info("""
        **Faithfulness Score**: Measures how well SHAP explanations align with ablation study results.
        - **Score ≥ 0.9**: Excellent - SHAP explanations are highly faithful
        - **Score ≥ 0.7**: Good - SHAP explanations are reasonably faithful
        - **Score < 0.7**: Poor - SHAP explanations may not be reliable
        
        **Spearman/Kendall Correlations**: Measure the rank correlation between SHAP and ablation feature rankings.
        - Values closer to 1.0 indicate strong agreement between methods
        """)
    else:
        st.error("Faithfulness report not found. Please run the faithfulness verification first.")

# Footer
st.markdown("---")
st.markdown("RTL Gate Count Estimator Dashboard | Built with Streamlit")
