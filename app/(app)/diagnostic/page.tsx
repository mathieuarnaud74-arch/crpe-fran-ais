import { redirect } from "next/navigation";

import { requireUser } from "@/features/auth/server/guards";
import { getDiagnosticResult } from "@/features/diagnostic/server/queries";
import { DiagnosticClient } from "@/features/diagnostic/components/diagnostic-client";

export default async function DiagnosticPage() {
  const user = await requireUser();
  const existing = await getDiagnosticResult(user.id);

  if (existing) {
    redirect("/tableau-de-bord");
  }

  return <DiagnosticClient />;
}
