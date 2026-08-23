"use client";

import { useEffect, useRef, useState } from "react";
import DashboardPageLayout from "@/components/dashboard/layout";
import ProcessorIcon from "@/components/icons/proccesor";
import { Bar, BarChart, CartesianGrid, ResponsiveContainer, Tooltip, XAxis, YAxis } from "recharts";
import NumberFlow from "@number-flow/react";
import { AnimatePresence, motion, useReducedMotion } from "framer-motion";

const DEMO_VERILOG = `module ripple_adder_4bit (
  input  wire [3:0] a,
  input  wire [3:0] b,
  input  wire       cin,
  output wire [3:0] sum,
  output wire       cout
);
  wire [3:0] carry;
  assign {cout, sum[0]} = a[0] + b[0] + cin;
  assign {carry[0], sum[1]} = a[1] + b[1] + carry[0];
  assign {carry[1], sum[2]} = a[2] + b[2] + carry[1];
  assign {carry[2], sum[3]} = a[3] + b[3] + carry[2];
endmodule`;

type ShapItem = { feature?: string; importance?: number; raw_value?: number; [key: string]: unknown };
type PredictApiResponse = { success?: boolean; error?: string; gateCount?: number; features?: Record<string, number>; shapValues?: ShapItem[] };
type HistoryEntry = { id: string; name: string; timestamp: string; gateCount: number; topFeature: string; code: string };
type InstrumentTab = "observation" | "evidence" | "history";

function isValidVerilogFile(name: string) { const lower = name.toLowerCase(); return lower.endsWith(".v") || lower.endsWith(".sv"); }

export default function PredictTool() {
  const [code, setCode] = useState(DEMO_VERILOG);
  const [uploadedFileName, setUploadedFileName] = useState<string | null>(null);
  const [isDragging, setIsDragging] = useState(false);
  const [isRunning, setIsRunning] = useState(false);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);
  const [hasResult, setHasResult] = useState(false);
  const [gateCount, setGateCount] = useState(0);
  const [shapData, setShapData] = useState<ShapItem[]>([]);
  const [features, setFeatures] = useState<Record<string, number>>({});
  const [activeTab, setActiveTab] = useState<InstrumentTab>("observation");
  const [history, setHistory] = useState<HistoryEntry[]>([]);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const reduceMotion = useReducedMotion();

  useEffect(() => {
    const savedDraft = window.localStorage.getItem("aichd-observatory-draft");
    const savedHistory = window.localStorage.getItem("aichd-observatory-history");
    if (savedDraft) setCode(savedDraft);
    if (savedHistory) {
      try { setHistory(JSON.parse(savedHistory) as HistoryEntry[]); } catch { window.localStorage.removeItem("aichd-observatory-history"); }
    }
  }, []);

  useEffect(() => { window.localStorage.setItem("aichd-observatory-draft", code); }, [code]);
  useEffect(() => { window.localStorage.setItem("aichd-observatory-history", JSON.stringify(history)); }, [history]);

  const loadFile = async (file: File) => {
    if (!isValidVerilogFile(file.name)) { setErrorMsg(`Unsupported source "${file.name}". Choose a .v or .sv file.`); return; }
    try { setCode(await file.text()); setUploadedFileName(file.name); setErrorMsg(null); setHasResult(false); }
    catch { setErrorMsg(`The source file "${file.name}" could not be read.`); }
  };

  const runInference = async () => {
    setIsRunning(true); setErrorMsg(null);
    try {
      const response = await fetch("/api/predict", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ code }) });
      const data = await response.json() as PredictApiResponse;
      if (!response.ok || data.success === false || data.error) throw new Error(data.error ?? "Inference could not complete.");
      const nextGateCount = data.gateCount ?? 0;
      const nextShap = data.shapValues ?? [];
      setGateCount(nextGateCount); setShapData(nextShap); setFeatures(data.features ?? {}); setHasResult(true); setActiveTab("observation");
      const entry: HistoryEntry = { id: `${Date.now()}`, name: uploadedFileName ?? "untitled_module.v", timestamp: new Date().toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" }), gateCount: nextGateCount, topFeature: nextShap[0]?.feature ?? "structural evidence", code };
      setHistory((current) => [entry, ...current.filter((item) => item.code !== code)].slice(0, 6));
    } catch (error) {
      setHasResult(false);
      setErrorMsg(error instanceof Error ? error.message : "The inference request could not be completed.");
    } finally { setIsRunning(false); }
  };

  const resetDraft = () => { setCode(DEMO_VERILOG); setUploadedFileName(null); setErrorMsg(null); setHasResult(false); };
  const topFeature = shapData[0]?.feature ?? "Awaiting analysis";
  const topImpact = shapData[0]?.importance;
  const totalInputs = features.num_inputs ?? features.struct_num_inputs ?? 0;
  const totalOutputs = features.num_outputs ?? features.struct_num_outputs ?? 0;
  const totalWires = features.num_wires ?? features.struct_num_wires ?? 0;

  return (
    <DashboardPageLayout header={{ title: "Inference workbench", description: "LIVE VERILOG / MODEL EVIDENCE", icon: ProcessorIcon }}>
      <section className="obs-inference-intro">
        <div><p className="obs-eyebrow">OBSERVATION MODE / SOURCE TO SIGNAL</p><h2>Make the next<br /><em>estimate observable.</em></h2><p>Load a Verilog source, run the current model, and retain the useful evidence in a local Observatory history. No preview-only values are used in this workbench.</p></div>
        <div className="obs-inference-status"><span>API CHANNEL</span><b>{isRunning ? "Processing" : "Ready"}</b><small>{history.length} local observations retained</small><i /></div>
      </section>

      {errorMsg && <div className="obs-error" role="alert"><b>Inference signal interrupted</b><span>{errorMsg}</span></div>}

      <section className="obs-workbench">
        <article className={`obs-source-instrument ${isRunning ? "is-running" : ""}`}>
          <header className="obs-instrument-header"><div><span>01 / SOURCE INSTRUMENT</span><b>{uploadedFileName ?? "Untitled Verilog module"}</b></div><small>draft saves locally</small></header>
          <div className={`obs-dropzone ${isDragging ? "dragging" : ""}`} onDragOver={(event) => { event.preventDefault(); setIsDragging(true); }} onDragLeave={() => setIsDragging(false)} onDrop={async (event) => { event.preventDefault(); setIsDragging(false); const file = event.dataTransfer.files?.[0]; if (file) await loadFile(file); }} onClick={() => fileInputRef.current?.click()}>
            <input ref={fileInputRef} type="file" accept=".v,.sv" className="hidden" onChange={async (event) => { const file = event.target.files?.[0]; if (file) await loadFile(file); event.target.value = ""; }} />
            <span>Drop a .v / .sv source file or browse</span><small>Structural parsing occurs only when you run inference.</small>
          </div>
          <textarea aria-label="Verilog source code" value={code} onChange={(event) => { setCode(event.target.value); setUploadedFileName(null); }} spellCheck={false} />
          <footer className="obs-source-actions"><button onClick={resetDraft} className="obs-text-button">Restore example</button><span>{code.length.toLocaleString()} characters</span><button id="btn-predict-run" onClick={runInference} disabled={isRunning} className="obs-run-button">{isRunning ? "Reading source…" : "Run live estimate →"}</button></footer>
        </article>

        <article className={`obs-result-instrument ${isRunning ? "is-running" : ""}`}>
          <header className="obs-instrument-header"><div><span>02 / EVIDENCE INSTRUMENT</span><b>{hasResult ? "Live observation complete" : "Awaiting source signal"}</b></div><small>{hasResult ? "saved locally" : "no result yet"}</small></header>
          <div className="obs-result-tabs" role="tablist" aria-label="Inference results">
            {(["observation", "evidence", "history"] as InstrumentTab[]).map((tab) => <button key={tab} role="tab" aria-selected={activeTab === tab} className={activeTab === tab ? "active" : ""} onClick={() => setActiveTab(tab)}>{activeTab === tab && <motion.i layoutId="obs-result-tab-indicator" transition={{ type: "spring", stiffness: 420, damping: 34 }} />}<span>{tab}</span></button>)}
          </div>

          <AnimatePresence mode="wait">
            {activeTab === "observation" && (hasResult ? <motion.div key="observation-result" className="obs-live-result" initial={false} animate={{ opacity: 1, y: 0, scale: 1 }} transition={{ type: "spring", stiffness: 290, damping: 28 }}><div className="obs-gate-orb"><span>ESTIMATED GATES</span><b><NumberFlow value={gateCount} /></b><small>NAND2 EQUIVALENT</small></div><div className="obs-result-readout"><div><span>TOP INFLUENCE</span><b>{topFeature}</b><small>{typeof topImpact === "number" ? `${topImpact >= 0 ? "+" : ""}${topImpact.toFixed(4)} contribution` : "Feature attribution returned"}</small></div><div className="obs-structural-row"><span><b><NumberFlow value={totalInputs} /></b> inputs</span><span><b><NumberFlow value={totalOutputs} /></b> outputs</span><span><b><NumberFlow value={totalWires} /></b> wires</span></div></div></motion.div> : <motion.div key="observation-empty" className="obs-empty-result" initial={false} animate={{ opacity: 1, y: 0 }}><i /><b>Source instrument ready.</b><span>Run an estimate to open the gate-count and structural evidence surfaces.</span></motion.div>)}

            {activeTab === "evidence" && (hasResult ? <motion.div key="evidence-result" className="obs-evidence-view" initial={false} animate={{ opacity: 1, y: 0 }}><p>Positive values increase the estimated gate count; negative values reduce it.</p><div className="h-[260px] w-full"><ResponsiveContainer width="100%" height="100%"><BarChart data={shapData} layout="vertical" margin={{ left: 4, right: 12 }}><CartesianGrid strokeDasharray="3 3" stroke="rgba(160,230,247,.18)" /><XAxis type="number" stroke="#8bb5c4" tick={{ fontSize: 10 }} /><YAxis dataKey="feature" type="category" width={125} tick={{ fontSize: 10, fill: "#c9e9f0" }} /><Tooltip contentStyle={{ backgroundColor: "rgba(11, 26, 56, .92)", backdropFilter: "blur(16px)", borderColor: "rgba(160,230,247,.35)", borderRadius: "12px" }} /><Bar dataKey="importance" fill="#8be8f6" radius={[0, 6, 6, 0]} animationDuration={reduceMotion ? 0 : 1200} animationEasing="ease-out" /></BarChart></ResponsiveContainer></div></motion.div> : <motion.div key="evidence-empty" className="obs-empty-result" initial={false} animate={{ opacity: 1, y: 0 }}><i /><b>Evidence will appear here.</b><span>The chart is populated only after a successful live inference.</span></motion.div>)}

            {activeTab === "history" && <motion.div key="history" className="obs-history-view" initial={false} animate={{ opacity: 1, y: 0 }}>{history.length === 0 ? <div className="obs-empty-result"><i /><b>No local observations yet.</b><span>Completed estimates are retained in this browser for quick source restoration.</span></div> : <><div className="obs-history-heading"><span>Recent local results</span><button className="obs-text-button" onClick={() => setHistory([])}>Clear history</button></div>{history.map((item) => <button className="obs-history-item" key={item.id} onClick={() => { setCode(item.code); setUploadedFileName(item.name); setActiveTab("observation"); setHasResult(false); }}><span>{item.timestamp}</span><b>{item.name}</b><small>{item.gateCount} gates · {item.topFeature}</small><em>Restore →</em></button>)}</>}</motion.div>}
          </AnimatePresence>
        </article>
      </section>
    </DashboardPageLayout>
  );
}
