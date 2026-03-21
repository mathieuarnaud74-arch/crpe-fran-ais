import { ReactNode } from "react";

import { AppShell } from "@/components/app-shell";
import { requireUser } from "@/features/auth/server/guards";
import { GamificationProvider } from "@/features/gamification/context";
import { getUserGamification } from "@/features/gamification/server/queries";

export default async function PrivateLayout({ children }: { children: ReactNode }) {
  const user = await requireUser();

  let gamification;
  try {
    gamification = await getUserGamification(user.id);
  } catch {
    // Gamification table may not exist yet
    gamification = {
      user_id: user.id,
      xp: 0,
      level: 1,
      current_streak: 0,
      longest_streak: 0,
      last_activity_date: null,
      sound_enabled: true,
      reduced_animations: false,
      daily_goal: 20,
      personal_best_sprint_time: null,
      onboarding_completed: false,
    };
  }

  return (
    <AppShell userEmail={user.email ?? "Utilisateur connecté"}>
      <GamificationProvider initial={gamification}>
        {children}
      </GamificationProvider>
    </AppShell>
  );
}
