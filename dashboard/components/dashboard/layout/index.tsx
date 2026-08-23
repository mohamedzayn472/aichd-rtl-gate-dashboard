import React from "react";

interface DashboardPageLayoutProps {
  children: React.ReactNode;
  header: {
    title: string;
    description?: string;
    icon: React.ElementType;
  };
}

export default function DashboardPageLayout({ children, header }: DashboardPageLayoutProps) {
  return (
    <div className="observatory-page flex flex-col w-full min-h-full">
      <header className="observatory-page-header sticky top-header-mobile lg:top-4 z-20 flex items-center gap-3 md:gap-4 px-4 md:px-6 py-3.5 lg:py-4">
        <div className="observatory-page-icon size-9 md:size-10 flex items-center justify-center shrink-0">
          <header.icon className="size-5" />
        </div>
        <div className="min-w-0">
          {header.description && <p className="observatory-page-eyebrow m-0">AICHD / {header.description}</p>}
          <h1 className="observatory-page-title text-2xl lg:text-4xl leading-[0.92] m-0 mt-1">{header.title}</h1>
        </div>
        <div className="ml-auto hidden md:flex items-center gap-2 text-[10px] text-primary tracking-[0.12em] uppercase">
          <span className="size-2 rounded-full bg-primary shadow-[0_0_14px_rgba(125,231,250,0.8)]" />
          Instrument online
        </div>
      </header>
      <div className="observatory-page-main min-h-full flex-1 flex flex-col gap-8 md:gap-10 px-1 md:px-2 py-6 md:py-8">{children}</div>
    </div>
  );
}
