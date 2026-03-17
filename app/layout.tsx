import type { Metadata } from "next";
import { Cormorant_Garamond, Manrope } from "next/font/google";
import NextTopLoader from "nextjs-toploader";
import { Toaster } from "sonner";

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
  title: "CRPE Français",
  description:
    "Plateforme de révision du CRPE centrée sur le français : exercices, corrections immédiates et abonnement premium.",
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
        <Toaster position="bottom-right" richColors />
      </body>
    </html>
  );
}
