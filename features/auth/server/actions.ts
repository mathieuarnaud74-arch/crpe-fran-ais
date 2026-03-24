"use server";

import { headers } from "next/headers";
import { redirect } from "next/navigation";

import { rateLimit } from "@/lib/rate-limit";
import { createSupabaseAdminClient } from "@/lib/supabase/admin";
import { createSupabaseServerClient } from "@/lib/supabase/server";

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

async function getClientIp(): Promise<string> {
  const h = await headers();
  return h.get("x-forwarded-for")?.split(",")[0]?.trim() ?? "unknown";
}

const AUTH_RATE_LIMIT = { limit: 10, windowSeconds: 15 * 60 } as const;

// ---------------------------------------------------------------------------
// Sign-in / Sign-up (rate-limited)
// ---------------------------------------------------------------------------

type AuthActionResult = {
  status: "success" | "error";
  message?: string;
};

export async function signInAction(email: string, password: string): Promise<AuthActionResult> {
  const ip = await getClientIp();
  const rl = rateLimit(`auth:signin:${ip}`, AUTH_RATE_LIMIT);
  if (!rl.success) {
    return { status: "error", message: "Trop de tentatives. Réessayez dans quelques minutes." };
  }

  const supabase = await createSupabaseServerClient();
  const { error } = await supabase.auth.signInWithPassword({ email, password });

  if (error) {
    return { status: "error", message: translateAuthError(error.message) };
  }

  return { status: "success" };
}

export async function signUpAction(
  email: string,
  password: string,
  displayName: string,
): Promise<AuthActionResult> {
  const ip = await getClientIp();
  const rl = rateLimit(`auth:signup:${ip}`, AUTH_RATE_LIMIT);
  if (!rl.success) {
    return { status: "error", message: "Trop de tentatives. Réessayez dans quelques minutes." };
  }

  const supabase = await createSupabaseServerClient();
  const { error } = await supabase.auth.signUp({
    email,
    password,
    options: { data: { display_name: displayName } },
  });

  if (error) {
    return { status: "error", message: translateAuthError(error.message) };
  }

  return { status: "success" };
}

function translateAuthError(message: string): string {
  const lower = message.toLowerCase();
  if (lower.includes("invalid login credentials"))
    return "Adresse email ou mot de passe incorrect.";
  if (lower.includes("email not confirmed"))
    return "Votre adresse email n'est pas encore confirmée. Vérifiez vos emails.";
  if (lower.includes("user already registered"))
    return "Un compte existe déjà avec cette adresse email.";
  if (lower.includes("password should be at least"))
    return "Le mot de passe doit contenir au moins 8 caractères.";
  if (lower.includes("rate limit"))
    return "Trop de tentatives. Veuillez réessayer dans quelques minutes.";
  return "Une erreur est survenue. Veuillez réessayer.";
}

// ---------------------------------------------------------------------------
// Sign-out
// ---------------------------------------------------------------------------

export async function signOutAction() {
  const supabase = await createSupabaseServerClient();
  await supabase.auth.signOut();
  redirect("/");
}

// ---------------------------------------------------------------------------
// Delete account
// ---------------------------------------------------------------------------

export async function deleteAccountAction() {
  const supabase = await createSupabaseServerClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/connexion");

  // Cancel active Stripe subscription before deleting the account
  try {
    const { getUserSubscription } = await import("@/features/billing/server/queries");
    const subscription = await getUserSubscription(user.id);
    if (
      subscription?.stripe_subscription_id &&
      (subscription.status === "active" || subscription.status === "trialing")
    ) {
      const { getStripeServerClient } = await import("@/lib/stripe/server");
      const stripe = getStripeServerClient();
      await stripe.subscriptions.cancel(subscription.stripe_subscription_id);
    }
  } catch {
    // Stripe may not be configured — proceed with deletion anyway
  }

  const admin = createSupabaseAdminClient();
  const { error } = await admin.auth.admin.deleteUser(user.id);

  if (error) {
    throw new Error("Impossible de supprimer le compte. Réessayez ou contactez le support.");
  }

  await supabase.auth.signOut();
  redirect("/");
}
