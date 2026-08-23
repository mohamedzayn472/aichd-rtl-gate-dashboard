import Link from "next/link";
import DashboardPageLayout from "@/components/dashboard/layout";
import DashboardCard from "@/components/dashboard/card";
import BracketsIcon from "@/components/icons/brackets";
import { Badge } from "@/components/ui/badge";
import trainingMetrics from "@/data/training_metrics.json";
import faithfulnessReport from "@/data/faithfulness_report.json";
import modelComparison from "@/data/model_comparison.json";

export default function RTLOverview() {
  const totalModules = trainingMetrics.split_sizes.train + trainingMetrics.split_sizes.val + trainingMetrics.split_sizes.test;
  const testR2 = trainingMetrics.metrics.test.r2;
  const faithfulnessScore = faithfulnessReport.faithfulness_score;
  const primaryModel = modelComparison.find((model) => model.model_name === "RandomForest");
  const topFeatures = trainingMetrics.feature_importance.slice(0, 5);
  const maxImportance = topFeatures[0]?.importance ?? 1;

  return (
    <DashboardPageLayout header={{ title: "Observation deck", description: "MODEL INTELLIGENCE / LIVE EVIDENCE", icon: BracketsIcon }}>
      <section className="obs-hero">
        <div className="obs-hero-copy">
          <p className="obs-eyebrow">AICHD / RTL ESTIMATION OBSERVATORY</p>
          <h2>One module.<br />A clearer <em>signal.</em></h2>
          <p className="obs-hero-text">Follow an RTL design from source structure to an explainable gate estimate. Every surface below is connected to the current verified model artifact, not a preview-only demonstration.</p>
          <div className="obs-hero-actions">
            <Link className="obs-primary-button" href="/predict">Open live inference <span>→</span></Link>
            <Link className="obs-secondary-button" href="/validation">Inspect validation evidence <span>↗</span></Link>
          </div>
        </div>
        <div className="obs-hero-instruments" aria-label="Current model confidence instrument">
          <div className="obs-orbital-core"><div><span>TEST R²</span><b>{testR2.toFixed(3)}</b><small>MODEL SYNCHRONIZED</small></div></div>
          <div className="obs-floating-readout"><span>PRIMARY ENGINE</span><b>Random Forest</b><small>{trainingMetrics.num_features} feature signals online</small><i /></div>
        </div>
      </section>

      <section className="obs-metric-grid" aria-label="Key project metrics">
        <article className="obs-metric-card"><span>RTL MODULES</span><b>{totalModules}</b><small>audited training samples</small></article>
        <article className="obs-metric-card"><span>TEST ACCURACY</span><b>{testR2.toFixed(4)}</b><small>held-out model score</small></article>
        <article className="obs-metric-card"><span>EXPLANATION TRUST</span><b>{faithfulnessScore.toFixed(4)}</b><small>SHAP fidelity measure</small></article>
      </section>

      <section className="obs-panel-grid">
        <DashboardCard title="SIGNAL SPECTRUM" addon={<Badge variant="outline-success">LIVE ARTIFACT</Badge>} intent="success">
          <p className="obs-panel-title">TOP STRUCTURAL INFLUENCES</p>
          {topFeatures.map((feature) => <div className="obs-signal-row" key={feature.feature}><span>{feature.feature}</span><i style={{ width: `${Math.max(12, (feature.importance / maxImportance) * 100)}%` }} /><b>{(feature.importance * 100).toFixed(1)}%</b></div>)}
        </DashboardCard>
        <DashboardCard title="TRUST SURFACE" addon={<Badge variant="outline">AUDITED</Badge>}>
          <div className="grid grid-cols-[1fr_auto] gap-5 items-center min-h-[188px]">
            <div><p className="obs-panel-title">EXPLANATION FIDELITY</p><p className="text-sm text-muted-foreground leading-relaxed">The attribution layer is measured against the model behavior so inference results remain connected to understandable RTL signals.</p><Link className="text-xs text-primary hover:underline" href="/faithfulness">Open faithfulness study →</Link></div>
            <div className="obs-confidence-ring"><div><b>{(faithfulnessScore * 100).toFixed(1)}%</b><span>FIDELITY</span></div></div>
          </div>
        </DashboardCard>
      </section>

      <DashboardCard title="INSTRUMENT STATUS" addon={<Badge variant="outline-success">SYSTEM READY</Badge>} intent="success">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
          <div className="rounded-lg border border-border bg-background/30 p-4"><p className="obs-panel-title">INFERENCE</p><b className="text-lg font-display">{primaryModel?.model_name ?? "RandomForest"}</b><p className="text-xs text-muted-foreground mt-2">{primaryModel ? `${primaryModel.latency_per_sample_ms.toFixed(2)} ms per sample` : "Model ready"}</p></div>
          <div className="rounded-lg border border-border bg-background/30 p-4"><p className="obs-panel-title">FEATURE EXTRACTION</p><b className="text-lg font-display">{trainingMetrics.num_features} live signals</b><p className="text-xs text-muted-foreground mt-2">Structural and complexity evidence is captured per source module.</p></div>
          <div className="rounded-lg border border-border bg-background/30 p-4"><p className="obs-panel-title">VALIDATION</p><b className="text-lg font-display">17 real modules</b><p className="text-xs text-muted-foreground mt-2">Open the validation instrument to review out-of-distribution evidence.</p></div>
        </div>
      </DashboardCard>
    </DashboardPageLayout>
  );
}
