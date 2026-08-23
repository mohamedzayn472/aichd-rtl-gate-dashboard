import { Roboto_Mono } from "next/font/google";
import "./globals.css";
import { Metadata } from "next";
import { V0Provider } from "@/lib/v0-context";
import localFont from "next/font/local";
import { SidebarProvider } from "@/components/ui/sidebar";
import { MobileHeader } from "@/components/dashboard/mobile-header";
import { DashboardSidebar } from "@/components/dashboard/sidebar";
import mockDataJson from "@/mock.json";
import type { MockData } from "@/types/dashboard";
import Widget from "@/components/dashboard/widget";
import Notifications from "@/components/dashboard/notifications";
import { MobileChat } from "@/components/chat/mobile-chat";
import Chat from "@/components/chat";

const mockData = mockDataJson as MockData;

const robotoMono = Roboto_Mono({
  variable: "--font-roboto-mono",
  subsets: ["latin"],
});

const rebelGrotesk = localFont({
  src: "../public/fonts/Rebels-Fett.woff2",
  variable: "--font-rebels",
  display: "swap",
});

const isV0 = process.env["VERCEL_URL"]?.includes("vusercontent.net") ?? false;

export const metadata: Metadata = {
  metadataBase: new URL(process.env.NEXT_PUBLIC_APP_URL ?? "http://localhost:3000"),
  title: {
    template: "%s – AICHD Observatory",
    default: "AICHD Observatory — Explainable RTL Gate Estimation",
  },
  description: "AICHD is an explainable RTL gate-estimation workspace for Verilog inference, model evidence, and structural analysis.",
  generator: "v0.app",
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="en" className="dark">
      <head>
        <link rel="preload" href="/fonts/Rebels-Fett.woff2" as="font" type="font/woff2" crossOrigin="anonymous" />
      </head>
      <body className={`${rebelGrotesk.variable} ${robotoMono.variable} antialiased`}>
        <V0Provider isV0={isV0}>
          <SidebarProvider>
            <div className="app-observatory-shell">
              <MobileHeader mockData={mockData} />
              <div className="w-full max-w-[1800px] mx-auto grid grid-cols-1 lg:grid-cols-[15.5rem_minmax(0,1fr)_19rem] gap-0">
                <aside className="hidden lg:block observatory-sidebar-wrap">
                  <DashboardSidebar />
                </aside>
                <main className="min-w-0 px-3 pb-3 lg:px-0 lg:py-4">{children}</main>
                <aside className="hidden lg:block observatory-right-rail">
                  <div className="space-y-gap min-h-[calc(100vh-2rem)] max-h-[calc(100vh-2rem)] sticky top-4 overflow-clip">
                    <Widget />
                    <Notifications initialNotifications={mockData.notifications} />
                    <Chat />
                  </div>
                </aside>
              </div>
              <MobileChat />
            </div>
          </SidebarProvider>
        </V0Provider>
      </body>
    </html>
  );
}
