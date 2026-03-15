import { ReactNode } from "react";

import { AppShell } from "@/components/app-shell";
import { requireUser } from "@/features/auth/server/guards";

export default async function PrivateLayout({ children }: { children: ReactNode }) {
  const user = await requireUser();

  return <AppShell userEmail={user.email ?? "Utilisateur connecté"}>{children}</AppShell>;
}
