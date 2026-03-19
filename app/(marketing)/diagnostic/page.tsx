import { redirect } from "next/navigation";

import { getOptionalUser } from "@/features/auth/server/guards";
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
