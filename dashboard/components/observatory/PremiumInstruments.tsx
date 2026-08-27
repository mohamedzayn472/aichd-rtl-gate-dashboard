"use client";

import NumberFlow from "@number-flow/react";
import { AnimatePresence, motion, useReducedMotion } from "framer-motion";
import { ChevronDown } from "lucide-react";
import { useState, type ReactNode } from "react";

export function PremiumReveal({ children, delay = 0, className = "" }: { children: ReactNode; delay?: number; className?: string }) {
  const reduceMotion = useReducedMotion();
  return <motion.div className={className} initial={false} whileInView={{ opacity: 1, y: 0, scale: 1 }} viewport={{ once: true, amount: 0.18 }} transition={reduceMotion ? { duration: 0 } : { type: "spring", stiffness: 300, damping: 30, delay }}>{children}</motion.div>;
}

export function PremiumMetricCard({ label, value, decimals = 0, suffix = "", description, tone = "cyan", delay = 0 }: { label: string; value: number; decimals?: number; suffix?: string; description: string; tone?: "cyan" | "indigo" | "emerald" | "violet"; delay?: number }) {
  const reduceMotion = useReducedMotion();
  return <motion.article className={`obs-metric-card obs-metric-${tone}`} initial={false} whileInView={{ opacity: 1, y: 0, scale: 1 }} whileHover={reduceMotion ? undefined : { y: -4 }} viewport={{ once: true, amount: 0.2 }} transition={reduceMotion ? { duration: 0 } : { type: "spring", stiffness: 300, damping: 30, delay }}><i className="obs-metric-glyph" aria-hidden="true" /><span>{label}</span><b><NumberFlow value={value} format={{ minimumFractionDigits: decimals, maximumFractionDigits: decimals }} />{suffix}</b><small>{description}</small></motion.article>;
}

export function AnimatedDisclosure({ label, summary, children }: { label: string; summary: string; children: ReactNode }) {
  const [open, setOpen] = useState(false);
  const reduceMotion = useReducedMotion();
  return <div className="obs-disclosure"><button type="button" onClick={() => setOpen((value) => !value)} aria-expanded={open}><span><b>{label}</b><small>{summary}</small></span><motion.i animate={{ rotate: open ? 180 : 0 }} transition={reduceMotion ? { duration: 0 } : { type: "spring", stiffness: 340, damping: 24 }}><ChevronDown /></motion.i></button><AnimatePresence initial={false}>{open && <motion.div className="obs-disclosure-content" initial={reduceMotion ? false : { opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }} exit={reduceMotion ? undefined : { opacity: 0, height: 0 }} transition={reduceMotion ? { duration: 0 } : { duration: .22, ease: [0.22, 1, 0.36, 1] }}>{children}</motion.div>}</AnimatePresence></div>;
}
