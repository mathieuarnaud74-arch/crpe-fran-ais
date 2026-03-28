/**
 * Database operations for push_subscriptions table.
 * Typed wrapper since this table is not in the generated Supabase types yet.
 * Once `supabase gen types` is re-run after the migration, these casts
 * can be removed and the table used directly.
 */

import { createSupabaseAdminClient } from "@/lib/supabase/admin";

export type PushSubscriptionRow = {
  id: string;
  user_id: string;
  endpoint: string;
  p256dh: string;
  auth: string;
  created_at: string;
  updated_at: string;
};

export async function upsertSubscription(params: {
  userId: string;
  endpoint: string;
  p256dh: string;
  auth: string;
}): Promise<{ error: { message: string } | null }> {
  const admin = createSupabaseAdminClient();
  const { error } = await admin.from("push_subscriptions").upsert(
    {
      user_id: params.userId,
      endpoint: params.endpoint,
      p256dh: params.p256dh,
      auth: params.auth,
      updated_at: new Date().toISOString(),
    } as never,
    { onConflict: "user_id,endpoint" },
  );
  return { error };
}

export async function deleteSubscription(
  userId: string,
  endpoint: string,
): Promise<void> {
  const admin = createSupabaseAdminClient();
  await admin
    .from("push_subscriptions")
    .delete()
    .eq("user_id" as never, userId)
    .eq("endpoint" as never, endpoint);
}

export async function getSubscriptions(
  userId?: string,
): Promise<{ data: PushSubscriptionRow[]; error: { message: string } | null }> {
  const admin = createSupabaseAdminClient();
  const query = admin.from("push_subscriptions").select("*");
  const result = userId
    ? await query.eq("user_id" as never, userId)
    : await query;

  return {
    data: (result.data ?? []) as unknown as PushSubscriptionRow[],
    error: result.error,
  };
}

export async function deleteSubscriptionByEndpoint(
  endpoint: string,
): Promise<void> {
  const admin = createSupabaseAdminClient();
  await admin
    .from("push_subscriptions")
    .delete()
    .eq("endpoint" as never, endpoint);
}
