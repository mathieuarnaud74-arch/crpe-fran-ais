import type { Metadata } from "next";
import { redirect } from "next/navigation";

import { getOptionalUser } from "@/features/auth/server/guards";

export const metadata: Metadata = {
  title: "Diagnostic gratuit — Évaluez votre niveau en français",
  description:
    "Testez votre niveau en français pour le CRPE en quelques minutes. Diagnostic personnalisé avec recommandations ciblées.",
  openGraph: {
    title: "Diagnostic gratuit — CRPE Français",
    description:
      "Évaluez votre niveau en français pour le CRPE et recevez des recommandations personnalisées.",
  },
};
import { getDiagnosticResult } from "@/features/diagnostic/server/queries";
import { DiagnosticClient } from "@/features/diagnostic/components/diagnostic-client";

export default async function PublicDiagnosticPage() {
  const user = await getOptionalUser();

  if (user) {
    const existing = await getDiagnosticResult(user.id);
    if (existing) {
      redirect("/tableau-de-bord");
    }
  }

  return (
    <div className="mx-auto max-w-4xl px-6 py-12">
      <DiagnosticClient isAuthenticated={!!user} />
    </div>
  );
}
