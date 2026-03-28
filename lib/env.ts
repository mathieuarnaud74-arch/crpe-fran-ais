const fallbackSupabaseUrl = "https://placeholder.supabase.co";
const fallbackSupabaseAnonKey = "public-anon-key-placeholder";
const fallbackServiceRoleKey = "service-role-key-placeholder";
const fallbackStripeSecretKey = "sk_test_placeholder";
const fallbackStripePublishableKey = "pk_test_placeholder";
const fallbackWebhookSecret = "whsec_placeholder";
const fallbackPriceId = "price_placeholder";

export const env = {
  appUrl: process.env.NEXT_PUBLIC_APP_URL ?? "http://localhost:3000",
  supabaseUrl: process.env.NEXT_PUBLIC_SUPABASE_URL ?? fallbackSupabaseUrl,
  supabaseAnonKey:
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ?? fallbackSupabaseAnonKey,
  supabaseServiceRoleKey:
    process.env.SUPABASE_SERVICE_ROLE_KEY ?? fallbackServiceRoleKey,
  stripeSecretKey: process.env.STRIPE_SECRET_KEY ?? fallbackStripeSecretKey,
  stripePublishableKey:
    process.env.NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY ?? fallbackStripePublishableKey,
  stripeWebhookSecret:
    process.env.STRIPE_WEBHOOK_SECRET ?? fallbackWebhookSecret,
  stripePricePremiumDailyId:
    process.env.STRIPE_PRICE_PREMIUM_DAILY_ID ?? fallbackPriceId,
  stripePricePremiumWeeklyId:
    process.env.STRIPE_PRICE_PREMIUM_WEEKLY_ID ?? fallbackPriceId,
  stripePricePremiumMonthlyId:
    process.env.STRIPE_PRICE_PREMIUM_MONTHLY_ID ?? fallbackPriceId,
  freeDailyQuestionLimit: (() => { const n = Number(process.env.FREE_DAILY_QUESTION_LIMIT); return isNaN(n) ? 30 : n; })(),
  freeDailyFicheLimit: (() => { const n = Number(process.env.FREE_DAILY_FICHE_LIMIT); return isNaN(n) ? 5 : n; })(),
  vapidPublicKey: process.env.NEXT_PUBLIC_VAPID_PUBLIC_KEY ?? "",
  vapidPrivateKey: process.env.VAPID_PRIVATE_KEY ?? "",
  vapidSubject: process.env.VAPID_SUBJECT ?? "mailto:contact@crpe-francais.fr",
};

// Warn in production if critical env vars are missing.
// Use the resolved `env` object (not process.env[key]) because Vercel
// inlines NEXT_PUBLIC_* at build time — they don't exist in runtime process.env.
// Only the Supabase client vars are fatal (needed for every page);
// the service role key is only needed for admin operations.
if (process.env.NODE_ENV === "production") {
  if (env.supabaseUrl === fallbackSupabaseUrl) {
    throw new Error("Missing required environment variable: NEXT_PUBLIC_SUPABASE_URL");
  }
  if (env.supabaseAnonKey === fallbackSupabaseAnonKey) {
    throw new Error("Missing required environment variable: NEXT_PUBLIC_SUPABASE_ANON_KEY");
  }
  if (env.supabaseServiceRoleKey === fallbackServiceRoleKey) {
    console.warn("[env] SUPABASE_SERVICE_ROLE_KEY is not set — admin operations will fail.");
  }
}

export function isSupabaseConfigured() {
  return (
    env.supabaseUrl !== fallbackSupabaseUrl &&
    env.supabaseAnonKey !== fallbackSupabaseAnonKey
  );
}

export function isSupabaseAdminConfigured() {
  return (
    isSupabaseConfigured() &&
    env.supabaseServiceRoleKey !== fallbackServiceRoleKey
  );
}

export function isWebPushConfigured() {
  return env.vapidPublicKey !== "" && env.vapidPrivateKey !== "";
}

export function isStripeConfigured() {
  return (
    env.stripeSecretKey !== fallbackStripeSecretKey &&
    env.stripeWebhookSecret !== fallbackWebhookSecret &&
    env.stripePricePremiumMonthlyId !== fallbackPriceId
  );
}
