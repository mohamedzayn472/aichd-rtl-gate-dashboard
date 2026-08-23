"use client";

import NumberFlow from "@number-flow/react";
import { motion, useReducedMotion } from "framer-motion";
import type { ReactNode } from "react";

export function PremiumReveal({ children, delay = 0, className = "" }: { children: ReactNode; delay?: number; className?: string }) {
  const reduceMotion = useReducedMotion();
  return <motion.div className={className} initial={reduceMotion ? false : { opacity: 0, y: 20, scale: 0.985 }} whileInView={{ opacity: 1, y: 0, scale: 1 }} viewport={{ once: true, amount: 0.18 }} transition={reduceMotion ? { duration: 0 } : { type: "spring", stiffness: 300, damping: 30, delay }}>{children}</motion.div>;
}

export function PremiumMetricCard({ label, value, decimals = 0, suffix = "", description, tone = "cyan", delay = 0 }: { label: string; value: number; decimals?: number; suffix?: string; description: string; tone?: "cyan" | "indigo" | "emerald" | "violet"; delay?: number }) {
  const reduceMotion = useReducedMotion();
  return <motion.article className={`obs-metric-card obs-metric-${tone}`} initial={reduceMotion ? false : { opacity: 0, y: 24, scale: 0.97 }} whileInView={{ opacity: 1, y: 0, scale: 1 }} whileHover={reduceMotion ? undefined : { y: -4 }} viewport={{ once: true, amount: 0.2 }} transition={reduceMotion ? { duration: 0 } : { type: "spring", stiffness: 300, damping: 30, delay }}><span>{label}</span><b><NumberFlow value={value} format={{ minimumFractionDigits: decimals, maximumFractionDigits: decimals }} />{suffix}</b><small>{description}</small><i aria-hidden="true" /></motion.article>;
}
