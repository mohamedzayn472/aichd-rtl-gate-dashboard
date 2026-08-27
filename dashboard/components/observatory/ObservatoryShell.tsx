"use client";
/* Circuit Canvas shell: an uncluttered engineering workbench. Navigation, command behavior, motion preference, and routes stay unchanged. */
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect, useState } from "react";

const navigation = [
  { href: "/", label: "Overview", index: "01" },
  { href: "/predict", label: "Inference", index: "02" },
  { href: "/dashboard", label: "Analysis", index: "03" },
  { href: "/validation", label: "Validation", index: "04" },
  { href: "/docs", label: "Methods", index: "05" },
];

function CircuitMark() {
  return <svg className="cc-mark" viewBox="0 0 42 42" aria-hidden="true"><path d="M5 9h11v8h10v-7h11M5 33h10v-9h12v9h10M16 13v16M26 12v10" /><circle cx="5" cy="9" r="2" /><circle cx="37" cy="10" r="2" /><circle cx="5" cy="33" r="2" /><circle cx="37" cy="33" r="2" /><circle cx="21" cy="21" r="3" /></svg>;
}

export default function ObservatoryShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const router = useRouter();
  const [commandOpen, setCommandOpen] = useState(false);
  const [reduceMotion, setReduceMotion] = useState(false);

  useEffect(() => {
    if (window.localStorage.getItem("aichd-reduce-motion") === "true") setReduceMotion(true);
  }, []);
  useEffect(() => {
    document.documentElement.classList.toggle("cc-motion-reduced", reduceMotion);
    window.localStorage.setItem("aichd-reduce-motion", String(reduceMotion));
  }, [reduceMotion]);
  useEffect(() => {
    const handleKeyDown = (event: KeyboardEvent) => {
      if ((event.metaKey || event.ctrlKey) && event.key.toLowerCase() === "k") { event.preventDefault(); setCommandOpen(true); }
      if (event.key === "Escape") setCommandOpen(false);
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, []);

  const navigate = (href: string) => { setCommandOpen(false); router.push(href); };

  return <div className="cc-shell">
    <header className="cc-topbar">
      <Link href="/" className="cc-brand" aria-label="AICHD Circuit Canvas home"><CircuitMark /><span><b>AICHD</b><small>Circuit Canvas</small></span></Link>
      <nav className="cc-nav" aria-label="Primary navigation">
        {navigation.map((item) => <Link key={item.href} href={item.href} className={pathname === item.href ? "active" : ""} aria-current={pathname === item.href ? "page" : undefined}><em>{item.index}</em><span>{item.label}</span></Link>)}
      </nav>
      <div className="cc-topbar-actions">
        <button className="cc-motion-toggle" onClick={() => setReduceMotion((value) => !value)} aria-pressed={reduceMotion} title="Toggle decorative motion"><i className={reduceMotion ? "paused" : ""} />{reduceMotion ? "Motion off" : "Motion on"}</button>
        <button className="cc-command-trigger" onClick={() => setCommandOpen(true)} aria-label="Open quick navigation"><span>Jump</span><kbd>⌘K</kbd></button>
      </div>
    </header>
    <main className="cc-main">{children}</main>
    <nav className="cc-mobile-dock" aria-label="Mobile primary navigation">
      {navigation.slice(0, 4).map((item) => <Link key={item.href} href={item.href} className={pathname === item.href ? "active" : ""} aria-current={pathname === item.href ? "page" : undefined}><em>{item.index}</em><span>{item.label}</span></Link>)}
    </nav>
    {commandOpen && <div className="cc-command-backdrop" role="presentation" onMouseDown={() => setCommandOpen(false)}><section className="cc-command-palette" role="dialog" aria-modal="true" aria-label="Quick navigation" onMouseDown={(event) => event.stopPropagation()}><header><span>ROUTE BOARD</span><button onClick={() => setCommandOpen(false)} aria-label="Close quick navigation">Esc</button></header><p>Jump to an AICHD work surface.</p><div>{navigation.map((item) => <button key={item.href} onClick={() => navigate(item.href)}><em>{item.index}</em><span>{item.label}</span><small>Open</small></button>)}</div></section></div>}
  </div>;
}
