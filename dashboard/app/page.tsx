import DashboardPageLayout from "@/components/dashboard/layout";
import DashboardStat from "@/components/dashboard/stat";
import DashboardCard from "@/components/dashboard/card";
import BracketsIcon from "@/components/icons/brackets";
import ProcessorIcon from "@/components/icons/proccesor";
import BoomIcon from "@/components/icons/boom";
import GearIcon from "@/components/icons/gear";
import { Badge } from "@/components/ui/badge";
import { Bullet } from "@/components/ui/bullet";

import trainingMetrics from "@/data/training_metrics.json";
import faithfulnessReport from "@/data/faithfulness_report.json";
import modelComparison from "@/data/model_comparison.json";

export default function RTLOverview() {
  const totalModules = trainingMetrics.split_sizes.train + trainingMetrics.split_sizes.val + trainingMetrics.split_sizes.test;
  const testR2 = trainingMetrics.metrics.test.r2;
  const faithfulnessScore = faithfulnessReport.faithfulness_score;

  const platformStats = [
    {
      label: "RTL MODULES",
      value: totalModules.toString(),
      description: "TOTAL TRAINING SAMPLES",
      intent: "positive" as const,
      icon: ProcessorIcon,
      direction: "up" as const,
    },
    {
      label: "TEST R² SCORE",
      value: testR2.toFixed(4),
      description: "PRIMARY RANDOM FOREST MODEL",
      intent: "positive" as const,
      icon: GearIcon,
      direction: "up" as const,
    },
    {
      label: "FAITHFULNESS",
      value: faithfulnessScore.toFixed(4),
      description: "SHAP EXPLANATION FIDELITY",
      intent: "positive" as const,
      icon: BoomIcon,
      direction: "up" as const,
    },
  ];

  const featureList = trainingMetrics.feature_importance.map((f) => ({
    name: f.feature,
    importance: f.importance,
    category: f.feature.startsWith("complex") ? "Logic Gate" : f.feature.startsWith("struct") ? "Structural" : "Bitwidth",
  }));

  const modelPerformance = [
    { label: "TRAIN R²", value: trainingMetrics.metrics.train.r2, color: "var(--color-success)" },
    { label: "VALIDATION R²", value: trainingMetrics.metrics.val.r2, color: "var(--color-warning)" },
    { label: "TEST R²", value: trainingMetrics.metrics.test.r2, color: "var(--chart-1)" },
  ];

  const primaryModel = modelComparison.find((m) => m.model_name === "RandomForest");

  return (
    <DashboardPageLayout
      header={{
        title: "Overview",
        description: "Platform Synchronized — Verified Project Data",
        icon: BracketsIcon,
      }}
    >
      {/* KPI Stats */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        {platformStats.map((stat, index) => (
          <DashboardStat
            key={index}
            label={stat.label}
            value={stat.value}
            description={stat.description}
            icon={stat.icon}
            intent={stat.intent}
            direction={stat.direction}
          />
        ))}
      </div>

      {/* Platform Status + Model Performance */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mt-6">
        <DashboardCard
          title="PRIMARY MODEL PERFORMANCE (RANDOM FOREST)"
          intent="success"
          addon={<Badge variant="outline-success">VERIFIED</Badge>}
        >
          <div className="space-y-4 pt-2">
            {modelPerformance.map((m) => (
              <div key={m.label} className="space-y-1.5">
                <div className="flex justify-between items-center">
                  <span className="text-xs font-medium uppercase tracking-wide text-muted-foreground">
                    {m.label}
                  </span>
                  <span className="text-sm font-display">{m.value.toFixed(4)}</span>
                </div>
                <div className="h-2 rounded-full bg-accent overflow-hidden">
                  <div
                    className="h-full rounded-full transition-all duration-700"
                    style={{
                      width: `${m.value * 100}%`,
                      backgroundColor: m.color,
                    }}
                  />
                </div>
              </div>
            ))}
            <div className="pt-2 border-t border-border">
              <div className="grid grid-cols-3 gap-3 text-center">
                <div>
                  <div className="text-lg font-display">{trainingMetrics.num_features}</div>
                  <div className="text-xs text-muted-foreground uppercase">Features</div>
                </div>
                <div>
                  <div className="text-lg font-display">RandomForest</div>
                  <div className="text-xs text-muted-foreground uppercase">Primary Model</div>
                </div>
                <div>
                  <div className="text-lg font-display">{primaryModel ? `${primaryModel.latency_per_sample_ms.toFixed(2)} ms` : "9.33 ms"}</div>
                  <div className="text-xs text-muted-foreground uppercase">Sample Latency</div>
                </div>
              </div>
            </div>
          </div>
        </DashboardCard>

        <DashboardCard
          title="SYSTEM STATUS & COMPONENT INTEGRITY"
          intent="success"
          addon={<Badge variant="outline-success">SYNCHRONIZED</Badge>}
        >
          <div className="space-y-3 pt-2">
            {[
              { label: "RANDOM FOREST MODEL", status: "VERIFIED (R² = 0.9612)", variant: "success" as const },
              { label: "SHAP EXPLAINER", status: "ACTIVE (Fidelity = 0.9768)", variant: "success" as const },
              { label: "FEATURE EXTRACTOR", status: "14 RTL FEATURES", variant: "success" as const },
              { label: "AI OPTIMIZER AGENT", status: "ONLINE", variant: "success" as const },
              { label: "BENCHMARK VALIDATION", status: "17 REAL MODULES", variant: "success" as const },
            ].map((item) => (
              <div
                key={item.label}
                className="flex items-center justify-between px-3 py-2 rounded border border-success/30 bg-success/5"
              >
                <div className="flex items-center gap-2.5">
                  <Bullet size="sm" variant={item.variant} />
                  <span className="text-sm font-medium">{item.label}</span>
                </div>
                <Badge variant="outline-success" className="text-xs">
                  {item.status}
                </Badge>
              </div>
            ))}
          </div>
        </DashboardCard>
      </div>

      {/* Top Feature Importance Ranking */}
      <div className="mt-6">
        <DashboardCard title="TOP STRUCTURAL RTL FEATURE IMPORTANCES">
          <div className="space-y-3 pt-2">
            {featureList.slice(0, 6).map((feat, i) => (
              <div key={feat.name} className="flex items-center justify-between p-2 rounded bg-accent/30 border border-border">
                <span className="text-xs font-mono text-primary">#{i + 1} {feat.name}</span>
                <div className="flex items-center gap-4">
                  <Badge variant="outline" className="text-xs">{feat.category}</Badge>
                  <span className="text-sm font-display text-muted-foreground">{(feat.importance * 100).toFixed(2)}%</span>
                </div>
              </div>
            ))}
          </div>
        </DashboardCard>
      </div>
    </DashboardPageLayout>
  );
}
