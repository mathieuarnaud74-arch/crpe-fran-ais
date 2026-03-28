import type { Metadata } from "next";
import { ReactNode } from "react";

import { AppShell } from "@/components/app-shell";
import { ConnectivityIndicator } from "@/components/connectivity-indicator";
import { PwaInstallPrompt } from "@/components/pwa-install-prompt";
import { requireUser } from "@/features/auth/server/guards";
import { GamificationProvider } from "@/features/gamification/context";
import { getUserGamification } from "@/features/gamification/server/queries";

export const metadata: Metadata = {
  title: {
    template: "%s | CRPE Français",
    default: "CRPE Français — Préparation au concours",
  },
};

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
      daily_streak: 0,
      longest_daily_streak: 0,
      streak_freeze_remaining: 1,
      streak_frozen_on: null,
    };
  }

  return (
    <AppShell userEmail={user.email ?? "Utilisateur connecté"} dailyStreak={gamification.daily_streak}>
      <GamificationProvider initial={gamification}>
        {children}
        <PwaInstallPrompt />
        <ConnectivityIndicator />
      </GamificationProvider>
    </AppShell>
  );
}
