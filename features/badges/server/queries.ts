import { createSupabaseServerClient } from "@/lib/supabase/server";
import type { EarnedBadge } from "@/types/domain";

/**
 * Fetches all badge IDs already persisted for a user.
 */
export async function getUserBadgeIds(userId: string): Promise<Set<string>> {
  const supabase = await createSupabaseServerClient();

  const { data, error } = await supabase
    .from("user_badges")
    .select("badge_id")
    .eq("user_id", userId);

  if (error) {
    console.error("[badges] Failed to fetch user badges:", error.message);
    return new Set();
  }

  return new Set((data ?? []).map((row) => row.badge_id));
}

/**
 * Fetches all persisted badges with their earned_at date for a user.
 */
export async function getUserBadgesWithDates(
  userId: string,
): Promise<Array<{ badge_id: string; earned_at: string }>> {
  const supabase = await createSupabaseServerClient();

  const { data, error } = await supabase
    .from("user_badges")
    .select("badge_id, earned_at")
    .eq("user_id", userId)
    .order("earned_at", { ascending: true });

  if (error) {
    console.error("[badges] Failed to fetch user badges:", error.message);
    return [];
  }

  return data ?? [];
}

/**
 * Syncs computed badges with the database.
 * Inserts any newly earned badges and returns the list of newly unlocked ones.
 *
 * This is the core persistence function — call it after computeEarnedBadges().
 */
export async function syncBadges(
  userId: string,
  computedBadges: EarnedBadge[],
): Promise<EarnedBadge[]> {
  if (computedBadges.length === 0) return [];

  const existingIds = await getUserBadgeIds(userId);
  const newBadges = computedBadges.filter((b) => !existingIds.has(b.id));

  if (newBadges.length === 0) return [];

  const supabase = await createSupabaseServerClient();

  const rows = newBadges.map((b) => ({
    user_id: userId,
    badge_id: b.id,
  }));

  const { error } = await supabase.from("user_badges").insert(rows);

  if (error) {
    console.error("[badges] Failed to insert new badges:", error.message);
    return [];
  }

  return newBadges;
}
