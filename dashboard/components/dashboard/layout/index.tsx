/* Circuit Canvas layout: preserve route title and system state while framing each page as a connected board subsystem. */
import React from "react";

interface DashboardPageLayoutProps {
  children: React.ReactNode;
  header: { title: string; description?: string; icon: React.ElementType };
}

export default function DashboardPageLayout({ children, header }: DashboardPageLayoutProps) {
  return (
    <section className="obs-route circuit-route">
      <header className="obs-route-header">
        <div className="obs-route-icon"><header.icon className="size-5" /></div>
        <div><p>CIRCUIT CANVAS / {header.description ?? "ANALYSIS SURFACE"}</p><h1>{header.title}</h1></div>
        <div className="obs-route-live"><i />Signal synchronized</div>
      </header>
      <div className="obs-route-content">{children}</div>
    </section>
  );
}
