"use client";

import React, { useState } from "react";
import DashboardPageLayout from "@/components/dashboard/layout";
import DashboardCard from "@/components/dashboard/card";
import { Badge } from "@/components/ui/badge";
import AtomIcon from "@/components/icons/atom";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
} from "recharts";

import trainingMetrics from "@/data/training_metrics.json";
import faithfulnessReport from "@/data/faithfulness_report.json";
import shapValuesData from "@/data/shap_values.json";
import ablationDataRaw from "@/data/ablation_study_results.json";

export default function InteractiveDashboard() {
  const [searchQuery, setSearchQuery] = useState("");

  const totalModules = trainingMetrics.split_sizes.train + trainingMetrics.split_sizes.val + trainingMetrics.split_sizes.test;

  const kpis = [
    { label: "RTL MODULES", value: totalModules, description: "TRAINING SAMPLES" },
    { label: "FEATURES ANALYZED", value: trainingMetrics.num_features, description: "INPUT DIMENSIONS" },
    { label: "TEST R² SCORE", value: trainingMetrics.metrics.test.r2, description: "MODEL ACCURACY", decimals: 4 },
    { label: "FAITHFULNESS", value: faithfulnessReport.faithfulness_score, description: "SHAP FIDELITY", decimals: 4 },
  ];

  // Map real SHAP importance
  const shapData = shapValuesData.feature_importance.map((f) => ({
    feature: f.feature,
    importance: f.importance,
  }));

  // Map real Ablation impact
  const ablationData = ablationDataRaw.map((a) => ({
    feature: a.feature,
    delta: a.ablation_score,
  }));

  // Combine into Feature Table Data
  const ablationMap = new Map(ablationDataRaw.map((a) => [a.feature, a.ablation_score]));
  const featureTableData = shapValuesData.feature_importance.map((f, i) => ({
    name: f.feature,
    shap: f.importance,
    ablation: ablationMap.get(f.feature) || 0,
    rank: i + 1,
    category: f.feature.startsWith("complex") ? "Logic Gate" : f.feature.startsWith("struct") ? "Structural" : "Bitwidth",
  }));

  const filteredFeatures = featureTableData.filter(
    (f) =>
      f.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
      f.category.toLowerCase().includes(searchQuery.toLowerCase())
  );

  return (
    <DashboardPageLayout
      header={{
        title: "Interactive Dashboard",
        description: "Global Model Explainability & Feature Importance",
        icon: AtomIcon,
      }}
    >
      {/* KPI Cards */}
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
        {kpis.map((kpi) => (
          <div key={kpi.label} className="rounded-lg bg-card border border-border p-4">
            <div className="text-xs uppercase text-muted-foreground tracking-wide font-medium mb-1">
              {kpi.label}
            </div>
            <div className="text-2xl font-display text-primary">
              {typeof kpi.value === "number" && kpi.decimals
                ? kpi.value.toFixed(kpi.decimals)
                : kpi.value}
            </div>
            <div className="text-xs text-muted-foreground mt-1">{kpi.description}</div>
          </div>
        ))}
      </div>

      {/* Dual Importance Charts */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6">
        <DashboardCard title="GLOBAL SHAP FEATURE IMPORTANCE">
          <div className="h-80 w-full pt-4">
            <ResponsiveContainer width="100%" height="100%">
              <BarChart data={shapData} layout="vertical">
                <CartesianGrid strokeDasharray="3 3" stroke="var(--border)" />
                <XAxis type="number" stroke="var(--muted-foreground)" />
                <YAxis dataKey="feature" type="category" width={140} tick={{ fontSize: 11 }} stroke="var(--muted-foreground)" />
                <Tooltip
                  contentStyle={{
                    backgroundColor: "var(--card)",
                    borderColor: "var(--border)",
                    borderRadius: "8px",
                  }}
                />
                <Bar dataKey="importance" fill="var(--color-primary)" radius={[0, 4, 4, 0]} />
              </BarChart>
            </ResponsiveContainer>
          </div>
        </DashboardCard>

        <DashboardCard title="EMPIRICAL ABLATION IMPACT (R² Δ)">
          <div className="h-80 w-full pt-4">
            <ResponsiveContainer width="100%" height="100%">
              <BarChart data={ablationData} layout="vertical">
                <CartesianGrid strokeDasharray="3 3" stroke="var(--border)" />
                <XAxis type="number" stroke="var(--muted-foreground)" />
                <YAxis dataKey="feature" type="category" width={140} tick={{ fontSize: 11 }} stroke="var(--muted-foreground)" />
                <Tooltip
                  contentStyle={{
                    backgroundColor: "var(--card)",
                    borderColor: "var(--border)",
                    borderRadius: "8px",
                  }}
                />
                <Bar dataKey="delta" fill="var(--color-warning)" radius={[0, 4, 4, 0]} />
              </BarChart>
            </ResponsiveContainer>
          </div>
        </DashboardCard>
      </div>

      {/* Searchable Feature Table */}
      <DashboardCard
        title="SEARCHABLE FEATURE ANALYSIS TABLE"
        addon={<Badge variant="outline">{filteredFeatures.length} FEATURES</Badge>}
      >
        <div className="mb-4">
          <input
            type="text"
            placeholder="Search features by name or category..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="w-full max-w-sm px-3 py-2 text-sm rounded-md border border-border bg-background text-foreground outline-none focus:ring-1 focus:ring-primary"
          />
        </div>
        <div className="overflow-x-auto">
          <table className="w-full text-sm text-left">
            <thead className="text-xs uppercase bg-accent/50 text-muted-foreground border-b border-border">
              <tr>
                <th className="px-4 py-3">Rank</th>
                <th className="px-4 py-3">Feature Name</th>
                <th className="px-4 py-3">Category</th>
                <th className="px-4 py-3">SHAP Importance</th>
                <th className="px-4 py-3">Ablation Impact</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-border">
              {filteredFeatures.map((row) => (
                <tr key={row.name} className="hover:bg-accent/30 transition-colors">
                  <td className="px-4 py-3 font-display">#{row.rank}</td>
                  <td className="px-4 py-3 font-mono font-medium">{row.name}</td>
                  <td className="px-4 py-3">
                    <Badge variant="outline">{row.category}</Badge>
                  </td>
                  <td className="px-4 py-3 font-display text-primary">{row.shap.toFixed(4)}</td>
                  <td className="px-4 py-3 font-display text-warning">{row.ablation.toFixed(4)}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </DashboardCard>
    </DashboardPageLayout>
  );
}
