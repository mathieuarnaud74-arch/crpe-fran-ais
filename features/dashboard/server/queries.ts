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

export async function getDashboardData(
  userId: string,
  isPremium: boolean,
  subject: Subject = "Francais",
): Promise<DashboardDataWithNewBadges> {
  const supabase = await createSupabaseServerClient();
  const sessions = await getDashboardSessions({ subject });
  const { data } = await supabase
    .from("attempts")
    .select("id, exercise_id, is_correct, answered_at")
    .eq("user_id", userId)
    .order("answered_at", { ascending: false })
    .limit(500);

  const attempts = (data ?? []) as AttemptRow[];

  const dashboardData = buildDashboardData(
    sessions,
    attempts.map((attempt) => ({
      id: attempt.id,
      exercise_id: attempt.exercise_id,
      is_correct: attempt.is_correct,
      answered_at: attempt.answered_at,
    })),
    isPremium,
    subject,
  );

  // Persist newly earned badges and get the list of just-unlocked ones
  let newlyUnlockedBadges: EarnedBadge[] = [];
  try {
    newlyUnlockedBadges = await syncBadges(userId, dashboardData.earnedBadges);
  } catch {
    // user_badges table may not exist yet, fail gracefully
  }

  return {
    ...dashboardData,
    newlyUnlockedBadges,
  };
}
