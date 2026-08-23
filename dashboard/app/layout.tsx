import { Roboto_Mono } from "next/font/google";
import "./globals.css";
import { Metadata } from "next";
import localFont from "next/font/local";
import ObservatoryShell from "@/components/observatory/ObservatoryShell";

const robotoMono = Roboto_Mono({ variable: "--font-roboto-mono", subsets: ["latin"] });
const rebelGrotesk = localFont({ src: "../public/fonts/Rebels-Fett.woff2", variable: "--font-rebels", display: "swap" });

export const metadata: Metadata = {
  metadataBase: new URL(process.env.NEXT_PUBLIC_APP_URL ?? "http://localhost:3000"),
  title: { template: "%s – AICHD Observatory", default: "AICHD Observatory — Explainable RTL Gate Estimation" },
  description: "AICHD is an interactive observatory for explainable RTL gate estimation, structural evidence, and Verilog inference.",
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return <html lang="en" className="dark"><body className={`${rebelGrotesk.variable} ${robotoMono.variable} antialiased`}><ObservatoryShell>{children}</ObservatoryShell></body></html>;
}
