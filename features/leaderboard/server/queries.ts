import { cache } from "react";

import { createSupabaseServerClient } from "@/lib/supabase/server";

export type LeaderboardEntry = {
  rank: number;
  user_id: string;
  display_name: string;
  weekly_xp: number;
  total_xp: number;
  level: number;
  is_current_user: boolean;
};

/**
 * Fetches the weekly leaderboard via the `get_weekly_leaderboard` RPC.
 * Always includes the calling user's row even if outside top N.
 */
export const getWeeklyLeaderboard = cache(async function getWeeklyLeaderboard(
  userId: string,
  limit = 50,
): Promise<LeaderboardEntry[]> {
  const supabase = await createSupabaseServerClient();

  const { data, error } = await supabase.rpc("get_weekly_leaderboard", {
    p_limit: limit,
    p_calling_user_id: userId,
  });

  if (error) {
    console.error("[leaderboard]", error.message);
    return [];
  }

  return (data ?? []) as LeaderboardEntry[];
});

/**
 * Fetches the display name of a user from the profiles table.
 */
export const getUserDisplayName = cache(async function getUserDisplayName(
  userId: string,
): Promise<string | null> {
  const supabase = await createSupabaseServerClient();

  const { data } = await supabase
    .from("profiles")
    .select("display_name")
    .eq("id", userId)
    .single();

  return data?.display_name ?? null;
});
