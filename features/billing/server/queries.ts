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

export const isPremiumUser = cache(async function isPremiumUser(userId: string) {
  const subscription = await getUserSubscription(userId);
  if (!subscription) return false;

  const periodEnd = new Date(subscription.current_period_end);
  if (isNaN(periodEnd.getTime())) return false;
  if (periodEnd <= new Date()) return false;

  const { status } = subscription;

  // Active or trialing — full access
  if (status === "active" || status === "trialing") return true;

  // Past due — grace period of 3 days after the period end was supposed to renew
  if (status === "past_due") {
    const gracePeriodMs = 3 * 24 * 60 * 60 * 1000;
    return new Date() < new Date(periodEnd.getTime() + gracePeriodMs);
  }

  return false;
});
