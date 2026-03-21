import { createSupabaseServerClient } from "@/lib/supabase/server";
import type { UserGamification } from "@/types/domain";

/**
 * Fetches user gamification data, creating a default row if none exists.
 */
export async function getUserGamification(userId: string): Promise<UserGamification> {
  const supabase = await createSupabaseServerClient();

  const { data, error } = await supabase
    .from("user_gamification")
    .select("*")
    .eq("user_id", userId)
    .single();

  if (data && !error) {
    return data as UserGamification;
  }

  // Upsert a default row
  const { data: newData, error: insertError } = await supabase
    .from("user_gamification")
    .upsert({ user_id: userId }, { onConflict: "user_id" })
    .select("*")
    .single();

  if (insertError || !newData) {
    // Fallback defaults if DB not available
    return {
      user_id: userId,
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

  return newData as UserGamification;
}

/**
 * Updates XP and streak after an attempt.
 */
export async function updateUserXp(
  userId: string,
  xpDelta: number,
  currentStreak: number,
): Promise<{ newXp: number; newLevel: number }> {
  const { getLevelForXp } = await import("@/lib/xp");
  const supabase = await createSupabaseServerClient();

  const gamification = await getUserGamification(userId);
  const newXp = gamification.xp + xpDelta;
  const newLevel = getLevelForXp(newXp);
  const today = new Date().toISOString().split("T")[0];

  const longestStreak = Math.max(gamification.longest_streak, currentStreak);

  await supabase
    .from("user_gamification")
    .update({
      xp: newXp,
      level: newLevel,
      current_streak: currentStreak,
      longest_streak: longestStreak,
      last_activity_date: today,
    })
    .eq("user_id", userId);

  return { newXp, newLevel };
}

/**
 * Updates user gamification settings (sound, animations, daily goal).
 */
export async function updateGamificationSettings(
  userId: string,
  settings: Partial<Pick<UserGamification, "sound_enabled" | "reduced_animations" | "daily_goal">>,
): Promise<void> {
  const supabase = await createSupabaseServerClient();

  await supabase
    .from("user_gamification")
    .update(settings)
    .eq("user_id", userId);
}

/**
 * Updates personal best sprint time.
 */
export async function updateSprintPersonalBest(
  userId: string,
  timeMs: number,
): Promise<boolean> {
  const gamification = await getUserGamification(userId);
  if (gamification.personal_best_sprint_time !== null && gamification.personal_best_sprint_time <= timeMs) {
    return false; // not a new record
  }

  const supabase = await createSupabaseServerClient();
  await supabase
    .from("user_gamification")
    .update({ personal_best_sprint_time: timeMs })
    .eq("user_id", userId);

  return true;
}

/**
 * Marks onboarding as completed.
 */
export async function completeOnboarding(userId: string): Promise<void> {
  const supabase = await createSupabaseServerClient();
  await supabase
    .from("user_gamification")
    .update({ onboarding_completed: true })
    .eq("user_id", userId);
}
