import { cache } from "react";

import { buildDashboardData } from "@/lib/dashboard";
import { syncBadges } from "@/features/badges/server/queries";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { getDashboardSessions } from "@/features/exercises/server/queries";
import type { EarnedBadge, Subject } from "@/types/domain";

type AttemptRow = {
  id: string;
  exercise_id: string;
  is_correct: boolean;
  answered_at: string;
};

export type DashboardDataWithNewBadges = ReturnType<typeof buildDashboardData> & {
  newlyUnlockedBadges: EarnedBadge[];
};

export const getDashboardData = cache(async function getDashboardData(
  userId: string,
  isPremium: boolean,
  subject: Subject = "Francais",
): Promise<DashboardDataWithNewBadges> {
  const supabase = await createSupabaseServerClient();
  const sessions = await getDashboardSessions({ subject });
  const { data, error: attemptsError } = await supabase
    .from("attempts")
    .select("id, exercise_id, is_correct, answered_at")
    .eq("user_id", userId)
    .order("answered_at", { ascending: false })
    .limit(1000);

  if (attemptsError) {
    console.error("[dashboard] attempts query failed:", attemptsError.message);
  }

  const attempts = (data ?? []) as AttemptRow[];

  if (attempts.length === 1000) {
    console.warn("[dashboard] attempts limit reached (1000) — stats may be incomplete for user", userId);
  }

  const dashboardData = buildDashboardData(
    sessions,
    attempts,
    isPremium,
    subject,
  );

  // Persist newly earned badges and get the list of just-unlocked ones
  let newlyUnlockedBadges: EarnedBadge[] = [];
  try {
    newlyUnlockedBadges = await syncBadges(userId, dashboardData.earnedBadges);
  } catch (e) {
    console.warn("[getDashboardData] badge sync failed:", e);
  }

  return {
    ...dashboardData,
    newlyUnlockedBadges,
  };
});
