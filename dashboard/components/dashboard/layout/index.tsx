/* Circuit Canvas route frame: the title and live-status data contract remain unchanged while the surrounding presentation becomes a board module. */
import React from "react";

interface DashboardPageLayoutProps {
  children: React.ReactNode;
  header: { title: string; description?: string; icon: React.ElementType };
}

export default function DashboardPageLayout({ children, header }: DashboardPageLayoutProps) {
  return <section className="cc-route">
    <header className="cc-route-header">
      <div className="cc-route-icon"><header.icon className="size-5" /></div>
      <div><p>{header.description ?? "ANALYSIS SURFACE"}</p><h1>{header.title}</h1></div>
      <div className="cc-route-live"><i />System synchronized</div>
    </header>
    <div className="cc-route-content">{children}</div>
  </section>;
}
