import { buildDashboardData } from "@/lib/dashboard";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { getExercises } from "@/features/exercises/server/queries";
import { Subject } from "@/types/domain";

type AttemptRow = {
  id: string;
  exercise_id: string;
  is_correct: boolean;
  answered_at: string;
};

export async function getDashboardData(userId: string, isPremium: boolean, subject: Subject = "Francais") {
  const supabase = await createSupabaseServerClient();
  const sessions = await getExercises({ subject });
  const { data } = await supabase
    .from("attempts")
    .select("id, exercise_id, is_correct, answered_at")
    .eq("user_id", userId)
    .order("answered_at", { ascending: false })
    .limit(500);

  const attempts = (data ?? []) as AttemptRow[];

  return buildDashboardData(
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
}
