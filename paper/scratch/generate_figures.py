"""Generate all figures for the AICD conference paper from verified source JSON files."""
import json
import os
import sys

# Ensure matplotlib uses non-interactive backend
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np

BASE = r'c:\Users\moham\Desktop\AICD Project'
RESULTS = os.path.join(BASE, 'rtl_gate_estimator', 'results')
FIGURES = os.path.join(BASE, 'paper', 'figures')
os.makedirs(FIGURES, exist_ok=True)

# ──────────────────────────────────────────────
# Figure 1: Model Comparison (R² and MAE)
# ──────────────────────────────────────────────
with open(os.path.join(RESULTS, 'model_comparison.json')) as f:
    models = json.load(f)

names = [m['model_name'] for m in models]
test_r2 = [m['test_r2'] for m in models]
test_mae = [m['test_mae'] for m in models]

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(7, 3))

colors = ['#2196F3', '#4CAF50', '#FF9800', '#E91E63']
bars1 = ax1.bar(names, test_r2, color=colors, edgecolor='white', linewidth=0.5)
ax1.set_ylabel('Test R²', fontsize=9)
ax1.set_title('(a) Test R² by Model', fontsize=10, fontweight='bold')
ax1.set_ylim(0.90, 1.005)
ax1.tick_params(axis='x', rotation=15, labelsize=8)
ax1.tick_params(axis='y', labelsize=8)
for bar, val in zip(bars1, test_r2):
    ax1.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 0.002,
             f'{val:.4f}', ha='center', va='bottom', fontsize=7, fontweight='bold')

bars2 = ax2.bar(names, test_mae, color=colors, edgecolor='white', linewidth=0.5)
ax2.set_ylabel('Test MAE (gates)', fontsize=9)
ax2.set_title('(b) Test MAE by Model', fontsize=10, fontweight='bold')
ax2.tick_params(axis='x', rotation=15, labelsize=8)
ax2.tick_params(axis='y', labelsize=8)
for bar, val in zip(bars2, test_mae):
    ax2.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 0.05,
             f'{val:.2f}', ha='center', va='bottom', fontsize=7, fontweight='bold')

plt.tight_layout()
plt.savefig(os.path.join(FIGURES, 'model_comparison.pdf'), dpi=300, bbox_inches='tight')
plt.savefig(os.path.join(FIGURES, 'model_comparison.png'), dpi=300, bbox_inches='tight')
plt.close()
print("[OK] model_comparison.pdf/png")

# ──────────────────────────────────────────────
# Figure 2: Real-World Validation Scatter Plot
# ──────────────────────────────────────────────
with open(os.path.join(RESULTS, 'real_rtl_evaluation.json')) as f:
    real_eval = json.load(f)

preds = real_eval['per_module_predictions']
actuals = [p['actual_gates'] for p in preds]
predicted = [p['predicted_gates'] for p in preds]
names_mod = [p['module_id'] for p in preds]

fig, ax = plt.subplots(figsize=(5, 4.5))

# Plot non-outlier points
for i, p in enumerate(preds):
    if p['module_id'] == 'axis_fifo':
        continue
    ax.scatter(p['actual_gates'], p['predicted_gates'], 
               c='#2196F3', s=30, zorder=5, edgecolors='white', linewidth=0.5)
    # Label a few key ones
    if p['actual_gates'] > 400 or p['error_pct'] > 100 or p['actual_gates'] < 20:
        ax.annotate(p['module_id'], (p['actual_gates'], p['predicted_gates']),
                    fontsize=5, textcoords='offset points', xytext=(5, 5))

# Plot axis_fifo outlier
fifo = [p for p in preds if p['module_id'] == 'axis_fifo'][0]
ax.scatter(fifo['actual_gates'], fifo['predicted_gates'], 
           c='#E91E63', s=80, marker='D', zorder=6, edgecolors='white', linewidth=0.5,
           label=f'axis_fifo (actual={fifo["actual_gates"]:,})')

# Perfect prediction line
max_val = max(actuals) * 1.1
ax.plot([0, max_val], [0, max_val], '--', color='gray', alpha=0.5, linewidth=1, label='Perfect prediction')

ax.set_xlabel('Actual Gate Count (Yosys)', fontsize=9)
ax.set_ylabel('Predicted Gate Count (ML)', fontsize=9)
ax.set_title('Real-World RTL Validation (17 modules)', fontsize=10, fontweight='bold')
ax.set_xscale('log')
ax.set_yscale('log')
ax.legend(fontsize=7, loc='upper left')
ax.tick_params(labelsize=8)

plt.tight_layout()
plt.savefig(os.path.join(FIGURES, 'real_world_scatter.pdf'), dpi=300, bbox_inches='tight')
plt.savefig(os.path.join(FIGURES, 'real_world_scatter.png'), dpi=300, bbox_inches='tight')
plt.close()
print("[OK] real_world_scatter.pdf/png")

# ──────────────────────────────────────────────
# Figure 3: Learning Curve
# ──────────────────────────────────────────────
with open(os.path.join(RESULTS, 'learning_curve.json')) as f:
    lc = json.load(f)

train_sizes = [p['train_samples'] for p in lc]
train_r2 = [p['train_r2'] for p in lc]
test_r2_lc = [p['test_r2'] for p in lc]

fig, ax = plt.subplots(figsize=(5, 3.5))
ax.plot(train_sizes, train_r2, 'o-', color='#2196F3', label='Train R²', markersize=4, linewidth=1.5)
ax.plot(train_sizes, test_r2_lc, 's-', color='#E91E63', label='Test R²', markersize=4, linewidth=1.5)
ax.set_xlabel('Training Samples', fontsize=9)
ax.set_ylabel('R²', fontsize=9)
ax.set_title('Learning Curve (RandomForest)', fontsize=10, fontweight='bold')
ax.legend(fontsize=8)
ax.set_ylim(0.90, 1.01)
ax.tick_params(labelsize=8)
ax.grid(True, alpha=0.3)

plt.tight_layout()
plt.savefig(os.path.join(FIGURES, 'learning_curve.pdf'), dpi=300, bbox_inches='tight')
plt.savefig(os.path.join(FIGURES, 'learning_curve.png'), dpi=300, bbox_inches='tight')
plt.close()
print("[OK] learning_curve.pdf/png")

print("\nAll figures generated in:", FIGURES)
