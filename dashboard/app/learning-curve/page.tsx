"use client";

import DashboardPageLayout from "@/components/dashboard/layout";
import DashboardCard from "@/components/dashboard/card";
import { Badge } from "@/components/ui/badge";
import BoomIcon from "@/components/icons/boom";
import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
  Legend,
} from "recharts";

import learningCurveData from "@/data/learning_curve.json";
import cvResults from "@/data/cv_results.json";

export default function LearningCurvePage() {
  const chartData = learningCurveData.map((d) => ({
    samples: d.train_samples,
    trainR2: d.train_r2,
    testR2: d.test_r2,
    trainMae: d.train_mae,
    testMae: d.test_mae,
  }));

  const initialTestR2 = learningCurveData[0]?.test_r2;
  const finalTestR2 = learningCurveData[learningCurveData.length - 1]?.test_r2;

  return (
    <DashboardPageLayout
      header={{
        title: "Learning Curve",
        description: "Training Sample Size Trajectory & 5-Fold Cross Validation",
        icon: BoomIcon,
      }}
    >
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">INITIAL TEST R² (50)</div>
          <div className="text-2xl font-display">{initialTestR2?.toFixed(4)}</div>
          <div className="text-xs text-muted-foreground mt-1">At 50 Samples</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">FINAL TEST R² (500)</div>
          <div className="text-2xl font-display text-primary">{finalTestR2?.toFixed(4)}</div>
          <div className="text-xs text-muted-foreground mt-1">At 500 Samples</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">5-FOLD CV MEAN R²</div>
          <div className="text-2xl font-display text-destructive">{cvResults.metrics.r2_mean.toFixed(4)}</div>
          <div className="text-xs text-muted-foreground mt-1">± {cvResults.metrics.r2_std.toFixed(4)} (Cross-Val)</div>
        </div>
        <div className="rounded-lg bg-card border border-border p-4">
          <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">5-FOLD CV MEAN MAE</div>
          <div className="text-2xl font-display text-warning">{cvResults.metrics.mae_mean.toFixed(2)}</div>
          <div className="text-xs text-muted-foreground mt-1">± {cvResults.metrics.mae_std.toFixed(2)} Gates</div>
        </div>
      </div>

      {/* Learning Curve Line Chart */}
      <DashboardCard title="R² SCORE TRAJECTORY VS TRAINING SAMPLES">
        <div className="h-80 w-full pt-4">
          <ResponsiveContainer width="100%" height="100%">
            <LineChart data={chartData} margin={{ top: 10, right: 30, left: 10, bottom: 25 }}>
              <CartesianGrid strokeDasharray="3 3" stroke="var(--border)" />
              <XAxis dataKey="samples" stroke="var(--muted-foreground)" label={{ value: 'Training Sample Count', position: 'insideBottom', offset: -15 }} />
              <YAxis stroke="var(--muted-foreground)" domain={[0.9, 1.0]} />
              <Tooltip
                contentStyle={{
                  backgroundColor: "var(--card)",
                  borderColor: "var(--border)",
                  borderRadius: "8px",
                }}
              />
              <Legend verticalAlign="top" align="right" wrapperStyle={{ paddingBottom: "15px" }} />
              <Line type="monotone" dataKey="trainR2" name="Train R²" stroke="var(--color-success)" strokeWidth={2} dot={{ r: 4 }} />
              <Line type="monotone" dataKey="testR2" name="Holdout Test R²" stroke="var(--color-primary)" strokeWidth={2} dot={{ r: 4 }} />
            </LineChart>
          </ResponsiveContainer>
        </div>
      </DashboardCard>

      {/* 5-Fold Cross Validation Surface Section */}
      <div className="mt-6">
        <DashboardCard
          title="5-FOLD CROSS VALIDATION RESULTS (CV_RESULTS.JSON)"
          addon={<Badge variant="outline-destructive">UNCLEARED OUTLIER CV R² = {cvResults.metrics.r2_mean.toFixed(3)}</Badge>}
        >
          <p className="text-xs text-muted-foreground mb-4">
            Cross-validation across raw unstratified splits reveals variance due to module scale disparities across unnormalized folds.
          </p>
          <div className="overflow-x-auto">
            <table className="w-full text-sm text-left">
              <thead className="text-xs uppercase bg-accent/50 text-muted-foreground border-b border-border">
                <tr>
                  <th className="px-4 py-3">Fold Index</th>
                  <th className="px-4 py-3">Fold R² Score</th>
                  <th className="px-4 py-3">Fold MAE</th>
                  <th className="px-4 py-3">Fold RMSE</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-border">
                {cvResults.per_fold.map((fold) => (
                  <tr key={fold.fold} className="hover:bg-accent/30 transition-colors">
                    <td className="px-4 py-3 font-medium">Fold #{fold.fold}</td>
                    <td className="px-4 py-3 font-display text-destructive">{fold.r2.toFixed(4)}</td>
                    <td className="px-4 py-3 font-display">{fold.mae.toFixed(4)}</td>
                    <td className="px-4 py-3 font-display">{fold.rmse.toFixed(4)}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </DashboardCard>
      </div>
    </DashboardPageLayout>
  );
}
