"use client";

import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { motion } from "framer-motion";

const navigation = [
  { href: "/", label: "Overview", index: "01" },
  { href: "/predict", label: "Inference", index: "02" },
  { href: "/dashboard", label: "Analysis", index: "03" },
  { href: "/validation", label: "Validation", index: "04" },
  { href: "/docs", label: "Methods", index: "05" },
];

export default function ObservatoryShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const router = useRouter();
  const [commandOpen, setCommandOpen] = useState(false);
  const [reduceMotion, setReduceMotion] = useState(false);

  useEffect(() => {
    const stored = window.localStorage.getItem("aichd-reduce-motion");
    if (stored === "true") setReduceMotion(true);
  }, []);

  useEffect(() => {
    document.documentElement.classList.toggle("obs-motion-reduced", reduceMotion);
    window.localStorage.setItem("aichd-reduce-motion", String(reduceMotion));
  }, [reduceMotion]);

  useEffect(() => {
    const handleKeyDown = (event: KeyboardEvent) => {
      if ((event.metaKey || event.ctrlKey) && event.key.toLowerCase() === "k") {
        event.preventDefault();
        setCommandOpen(true);
      }
      if (event.key === "Escape") setCommandOpen(false);
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, []);

  const navigate = (href: string) => {
    setCommandOpen(false);
    router.push(href);
  };

  return (
    <div className="obs-shell">
      <div className="obs-starfield" aria-hidden="true" />
      <div className="obs-ambient-orb obs-ambient-indigo" aria-hidden="true" />
      <div className="obs-ambient-orb obs-ambient-cyan" aria-hidden="true" />
      <div className="obs-ambient-orb obs-ambient-violet" aria-hidden="true" />
      <header className="obs-topbar">
        <Link href="/" className="obs-brand" aria-label="AICHD Observatory home">
          <span className="obs-brand-sigil" aria-hidden="true"><i /><i /><i /></span>
          <span><b>AICHD</b><small>GLASS OBSERVATORY</small></span>
        </Link>
        <nav className="obs-nav" aria-label="Primary navigation">
          {navigation.map((item) => (
            <Link key={item.href} href={item.href} className={pathname === item.href ? "active" : ""} aria-current={pathname === item.href ? "page" : undefined}>
              {pathname === item.href && <motion.span className="obs-nav-indicator" layoutId="obs-nav-indicator" transition={{ type: "spring", stiffness: 420, damping: 34 }} />}
              <em>{item.index}</em><span>{item.label}</span>
            </Link>
          ))}
        </nav>
        <div className="obs-topbar-actions">
          <button className="obs-motion-toggle" onClick={() => setReduceMotion((value) => !value)} aria-pressed={reduceMotion} title="Toggle decorative motion">
            <span className={reduceMotion ? "paused" : ""} /> {reduceMotion ? "Motion off" : "Motion on"}
          </button>
          <button className="obs-command-trigger" onClick={() => setCommandOpen(true)}><span>Command</span><kbd>⌘ K</kbd></button>
        </div>
      </header>
      <main className="obs-main">{children}</main>
      <nav className="obs-mobile-dock" aria-label="Mobile primary navigation">
        {navigation.slice(0, 4).map((item) => <Link key={item.href} href={item.href} className={pathname === item.href ? "active" : ""} aria-current={pathname === item.href ? "page" : undefined}><em>{item.index}</em><span>{item.label}</span></Link>)}
      </nav>

      {commandOpen && (
        <div className="obs-command-backdrop" role="presentation" onMouseDown={() => setCommandOpen(false)}>
          <section className="obs-command-palette" role="dialog" aria-modal="true" aria-label="Quick navigation" onMouseDown={(event) => event.stopPropagation()}>
            <div className="obs-command-heading"><span>OBSERVATORY COMMAND</span><button onClick={() => setCommandOpen(false)} aria-label="Close command palette">Esc</button></div>
            <p>Jump directly to an instrument surface.</p>
            <div className="obs-command-list">
              {navigation.map((item) => <button key={item.href} onClick={() => navigate(item.href)}><em>{item.index}</em><span>{item.label}</span><small>Open →</small></button>)}
            </div>
          </section>
        </div>
      )}
    </div>
  );
}
