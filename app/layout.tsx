import type { Metadata, Viewport } from "next";
import { Cormorant_Garamond, Manrope } from "next/font/google";
import { Analytics } from "@vercel/analytics/react";
import { SpeedInsights } from "@vercel/speed-insights/next";
import NextTopLoader from "nextjs-toploader";
import { Toaster } from "sonner";

import { ServiceWorkerRegister } from "@/components/sw-register";
import "./globals.css";

const sans = Manrope({
  subsets: ["latin"],
  variable: "--font-sans",
  display: "swap",
});

const serif = Cormorant_Garamond({
  subsets: ["latin"],
  variable: "--font-serif",
  display: "swap",
  weight: ["500", "600", "700"],
});

export const metadata: Metadata = {
  metadataBase: new URL("https://crpe-francais.fr"),
  title: {
    default: "CRPE Français — Révise le français pour le concours",
    template: "%s | CRPE Français",
  },
  description:
    "Prépare le CRPE avec des centaines d'exercices de français corrigés, des fiches de révision ciblées et un suivi de progression personnalisé.",
  keywords: [
    "CRPE",
    "concours professeur des écoles",
    "français",
    "révision",
    "exercices CRPE",
    "QCM français",
  ],
  openGraph: {
    title: "CRPE Français — Révise le français pour le concours",
    description:
      "Prépare le CRPE avec des centaines d'exercices de français corrigés, des fiches de révision ciblées et un suivi de progression personnalisé.",
    siteName: "CRPE Français",
    locale: "fr_FR",
    type: "website",
  },
  twitter: {
    card: "summary_large_image",
    title: "CRPE Français — Révise le français pour le concours",
    description:
      "Exercices corrigés, fiches de révision et diagnostic personnalisé pour le CRPE.",
  },
  manifest: "/manifest.json",
  appleWebApp: {
    capable: true,
    statusBarStyle: "default",
    title: "CRPE Français",
  },
};

export const viewport: Viewport = {
  width: "device-width",
  initialScale: 1,
  viewportFit: "cover",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="fr" className={`${sans.variable} ${serif.variable}`}>
      <body className="font-sans antialiased">
        <NextTopLoader color="#476257" showSpinner={false} height={2} />
        {children}
        <Toaster position="top-center" richColors />
        <ServiceWorkerRegister />
        <Analytics />
        <SpeedInsights />
      </body>
    </html>
  );
}
