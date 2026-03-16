import { cache } from "react";

import { createSupabaseServerClient } from "@/lib/supabase/server";

export const getUserSubscription = cache(async function getUserSubscription(userId: string) {
  const supabase = await createSupabaseServerClient();
  const { data } = await supabase
    .from("subscriptions")
    .select("*")
    .eq("user_id", userId)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();

  return data;
});

export async function isPremiumUser(userId: string) {
  const subscription = await getUserSubscription(userId);
  if (!subscription) return false;
  const isActiveStatus =
    subscription.status === "active" || subscription.status === "trialing";
  const isNotExpired = new Date(subscription.current_period_end) > new Date();
  return isActiveStatus && isNotExpired;
}
