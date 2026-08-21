"use client";

import DashboardPageLayout from "@/components/dashboard/layout";
import DashboardCard from "@/components/dashboard/card";
import { Badge } from "@/components/ui/badge";
import { Bullet } from "@/components/ui/bullet";
import CuteRobotIcon from "@/components/icons/cute-robot";

import shapFaithfulness from "@/data/faithfulness_report.json";
import permFaithfulness from "@/data/faithfulness_report_permutation.json";

export default function FaithfulnessPage() {
  return (
    <DashboardPageLayout
      header={{
        title: "Faithfulness Verification",
        description: "Explanation Quality Audit — Side-by-Side Verification",
        icon: CuteRobotIcon,
      }}
    >
      {/* SHAP vs Permutation KPI Summary */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
        <div className="rounded-lg border border-success/40 bg-success/5 p-4">
          <div className="flex items-center justify-between mb-2">
            <div className="flex items-center gap-2">
              <Bullet size="sm" variant="success" />
              <span className="text-xs uppercase text-muted-foreground tracking-wide font-medium">
                SHAP EXPLANATION FAITHFULNESS
              </span>
            </div>
            <Badge variant="outline-success">PRIMARY METHOD</Badge>
          </div>
          <div className="text-3xl font-display text-success">{shapFaithfulness.faithfulness_score.toFixed(4)}</div>
          <p className="text-xs text-muted-foreground mt-2">{shapFaithfulness.interpretation}</p>
        </div>

        <div className="rounded-lg border border-primary/40 bg-primary/5 p-4">
          <div className="flex items-center justify-between mb-2">
            <div className="flex items-center gap-2">
              <Bullet size="sm" variant="default" />
              <span className="text-xs uppercase text-muted-foreground tracking-wide font-medium">
                PERMUTATION IMPORTANCE FAITHFULNESS
              </span>
            </div>
            <Badge variant="outline">BENCHMARK METHOD</Badge>
          </div>
          <div className="text-3xl font-display text-primary">{permFaithfulness.faithfulness_score.toFixed(4)}</div>
          <p className="text-xs text-muted-foreground mt-2">{permFaithfulness.interpretation}</p>
        </div>
      </div>

      {/* Side-by-Side Detailed Metrics Table */}
      <DashboardCard title="SHAP VS PERMUTATION CORRELATION METRICS SIDE-BY-SIDE">
        <div className="overflow-x-auto">
          <table className="w-full text-sm text-left">
            <thead className="text-xs uppercase bg-accent/50 text-muted-foreground border-b border-border">
              <tr>
                <th className="px-4 py-3">Metric Name</th>
                <th className="px-4 py-3">SHAP Explanation Value</th>
                <th className="px-4 py-3">Permutation Importance Value</th>
                <th className="px-4 py-3">Interpretation Rationale</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-border">
              <tr className="hover:bg-accent/30 transition-colors">
                <td className="px-4 py-3 font-medium">Faithfulness Score</td>
                <td className="px-4 py-3 font-display text-success">{shapFaithfulness.faithfulness_score.toFixed(4)}</td>
                <td className="px-4 py-3 font-display text-primary">{permFaithfulness.faithfulness_score.toFixed(4)}</td>
                <td className="px-4 py-3 text-xs text-muted-foreground">Correlation between explanation &amp; ablation reduction</td>
              </tr>
              <tr className="hover:bg-accent/30 transition-colors">
                <td className="px-4 py-3 font-medium">Spearman Rank Correlation</td>
                <td className="px-4 py-3 font-display text-success">{shapFaithfulness.correlation_metrics.spearman_correlation.toFixed(4)}</td>
                <td className="px-4 py-3 font-display text-primary">{permFaithfulness.correlation_metrics.spearman_correlation.toFixed(4)}</td>
                <td className="px-4 py-3 text-xs text-muted-foreground">Non-parametric monotonic rank alignment</td>
              </tr>
              <tr className="hover:bg-accent/30 transition-colors">
                <td className="px-4 py-3 font-medium">Kendall Tau Correlation</td>
                <td className="px-4 py-3 font-display text-success">{shapFaithfulness.correlation_metrics.kendall_correlation.toFixed(4)}</td>
                <td className="px-4 py-3 font-display text-primary">{permFaithfulness.correlation_metrics.kendall_correlation.toFixed(4)}</td>
                <td className="px-4 py-3 text-xs text-muted-foreground">Concordant vs discordant feature pairs ratio</td>
              </tr>
              <tr className="hover:bg-accent/30 transition-colors">
                <td className="px-4 py-3 font-medium">Top 5 Overlap Ratio</td>
                <td className="px-4 py-3 font-display text-success">{(shapFaithfulness.overlap_metrics.top_5_overlap_ratio * 100).toFixed(1)}%</td>
                <td className="px-4 py-3 font-display text-primary">{(permFaithfulness.overlap_metrics.top_5_overlap_ratio * 100).toFixed(1)}%</td>
                <td className="px-4 py-3 text-xs text-muted-foreground">Match percentage for top 5 dominant features</td>
              </tr>
              <tr className="hover:bg-accent/30 transition-colors">
                <td className="px-4 py-3 font-medium">Top 10 Overlap Ratio</td>
                <td className="px-4 py-3 font-display text-success">{(shapFaithfulness.overlap_metrics.top_10_overlap_ratio * 100).toFixed(1)}%</td>
                <td className="px-4 py-3 font-display text-primary">{(permFaithfulness.overlap_metrics.top_10_overlap_ratio * 100).toFixed(1)}%</td>
                <td className="px-4 py-3 text-xs text-muted-foreground">Match percentage for top 10 dominant features</td>
              </tr>
            </tbody>
          </table>
        </div>
      </DashboardCard>

      {/* Top Features Comparison */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
        <DashboardCard title="SHAP TOP 5 IDENTIFIED FEATURES">
          <div className="space-y-2 pt-2">
            {shapFaithfulness.overlap_metrics.top_5_features.map((f, i) => (
              <div key={f} className="flex items-center justify-between p-2 rounded bg-success/10 border border-success/20">
                <span className="text-xs font-mono font-medium">#{i + 1} {f}</span>
                <Badge variant="outline-success">SHAP RANK #{i + 1}</Badge>
              </div>
            ))}
          </div>
        </DashboardCard>

        <DashboardCard title="PERMUTATION TOP 5 IDENTIFIED FEATURES">
          <div className="space-y-2 pt-2">
            {permFaithfulness.overlap_metrics.top_5_features.map((f, i) => (
              <div key={f} className="flex items-center justify-between p-2 rounded bg-primary/10 border border-primary/20">
                <span className="text-xs font-mono font-medium">#{i + 1} {f}</span>
                <Badge variant="outline">PERM RANK #{i + 1}</Badge>
              </div>
            ))}
          </div>
        </DashboardCard>
      </div>
    </DashboardPageLayout>
  );
}
