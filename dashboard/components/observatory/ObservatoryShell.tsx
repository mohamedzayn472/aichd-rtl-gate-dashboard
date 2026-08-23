"use client";
/* AICHD Glass Observatory shell: preserve the technical observatory identity; motion is atmospheric, brief, and never blocks navigation. */
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { AnimatePresence, motion, useReducedMotion } from "framer-motion";

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
  const [arrivalVisible, setArrivalVisible] = useState(true);
  const systemReducedMotion = useReducedMotion();
  const motionReduced = reduceMotion || systemReducedMotion;

  useEffect(() => {
    const stored = window.localStorage.getItem("aichd-reduce-motion");
    if (stored === "true") setReduceMotion(true);
  }, []);

  useEffect(() => {
    document.documentElement.classList.toggle("obs-motion-reduced", reduceMotion);
    window.localStorage.setItem("aichd-reduce-motion", String(reduceMotion));
  }, [reduceMotion]);

  useEffect(() => {
    if (motionReduced) { setArrivalVisible(false); return; }
    const timer = window.setTimeout(() => setArrivalVisible(false), 1320);
    return () => window.clearTimeout(timer);
  }, [motionReduced]);

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
      <AnimatePresence>
        {arrivalVisible && !motionReduced && <motion.div className="obs-arrival" aria-hidden="true" initial={{ opacity: 1 }} exit={{ opacity: 0, scale: 1.018, transition: { duration: .34, ease: [0.22, 1, 0.36, 1] } }}><div className="obs-arrival-grid" /><motion.div className="obs-arrival-signal" initial={{ scale: .76, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} transition={{ type: "spring", stiffness: 200, damping: 20 }}><i /><i /><i /><b>AI</b></motion.div><div className="obs-arrival-copy"><span>OBSERVATORY LINK</span><b>AICHD</b><small>Synchronizing inference instruments</small></div><motion.div className="obs-arrival-progress" initial={{ scaleX: 0 }} animate={{ scaleX: 1 }} transition={{ duration: 1.08, ease: [0.22, 1, 0.36, 1] }} /></motion.div>}
      </AnimatePresence>
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
