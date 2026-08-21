const fs = require('fs');
const path = require('path');

const srcDir = path.join(__dirname, '..', '..', 'rtl_gate_estimator', 'results');
const docsDir = path.join(__dirname, '..', '..', 'rtl_gate_estimator', 'docs');
const projectDocsDir = path.join(__dirname, '..', '..', 'docs');
const targetDataDir = path.join(__dirname, '..', 'data');
const targetPublicDir = path.join(__dirname, '..', 'public', 'data');

if (!fs.existsSync(targetDataDir)) {
  fs.mkdirSync(targetDataDir, { recursive: true });
}
if (!fs.existsSync(targetPublicDir)) {
  fs.mkdirSync(targetPublicDir, { recursive: true });
}

console.log('🔄 Syncing real verified project result JSON files into dashboard/data/...');

const filesToSync = [
  'training_metrics.json',
  'model_comparison.json',
  'faithfulness_report.json',
  'faithfulness_report_permutation.json',
  'latency_benchmark.json',
  'learning_curve.json',
  'cv_results.json',
  'real_rtl_evaluation.json',
  'ablation_study_results.json',
  'shap_values.json',
  'permutation_importance.json',
  'pipeline_summary.json'
];

filesToSync.forEach((file) => {
  const src = path.join(srcDir, file);
  if (fs.existsSync(src)) {
    fs.copyFileSync(src, path.join(targetDataDir, file));
    fs.copyFileSync(src, path.join(targetPublicDir, file));
    console.log(`  ✓ Synced ${file}`);
  } else {
    console.warn(`  ⚠️ Warning: ${file} not found in ${srcDir}`);
  }
});

// Also copy key docs markdown files
const mdFiles = [
  { src: path.join(docsDir, 'system_architecture.md'), target: 'system_architecture.md' },
  { src: path.join(docsDir, 'related_work_comparison.md'), target: 'related_work_comparison.md' },
  { src: path.join(__dirname, '..', '..', 'rtl_gate_estimator', 'PROJECT_SUMMARY_FOR_REVIEW.md'), target: 'PROJECT_SUMMARY_FOR_REVIEW.md' },
  { src: path.join(__dirname, '..', '..', 'README.md'), target: 'README.md' }
];

mdFiles.forEach(({ src, target }) => {
  if (fs.existsSync(src)) {
    fs.copyFileSync(src, path.join(targetDataDir, target));
    fs.copyFileSync(src, path.join(targetPublicDir, target));
    console.log(`  ✓ Synced doc ${target}`);
  }
});

console.log('✅ Real project data sync complete!');
