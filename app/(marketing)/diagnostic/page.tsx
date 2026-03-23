import type { Metadata } from "next";
import { redirect } from "next/navigation";

import { getOptionalUser } from "@/features/auth/server/guards";
import { getAllDiagnosticResults } from "@/features/diagnostic/server/queries";
import { DiagnosticClient } from "@/features/diagnostic/components/diagnostic-client";
import type { DiagnosticSubject } from "@/features/diagnostic/types";

export const metadata: Metadata = {
  title: "Diagnostic gratuit — Évaluez votre niveau CRPE",
  description:
    "Testez votre niveau en français et en maths pour le CRPE en quelques minutes. Diagnostic personnalisé avec recommandations ciblées.",
  openGraph: {
    title: "Diagnostic gratuit — CRPE Français & Maths",
    description:
      "Évaluez votre niveau pour le CRPE et recevez des recommandations personnalisées.",
  },
};

export default async function PublicDiagnosticPage() {
  const user = await getOptionalUser();

  let completedSubjects: DiagnosticSubject[] = [];

  if (user) {
    const results = await getAllDiagnosticResults(user.id);
    completedSubjects = results.map((r) => r.subject);

    if (completedSubjects.includes("francais") && completedSubjects.includes("maths")) {
      redirect("/tableau-de-bord");
    }
  }

  return (
    <div className="mx-auto max-w-4xl px-6 py-12">
      <DiagnosticClient
        isAuthenticated={!!user}
        completedSubjects={completedSubjects}
      />
    </div>
  );
}
