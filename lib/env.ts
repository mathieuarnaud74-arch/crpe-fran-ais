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
  freeDailyQuestionLimit: Number(process.env.FREE_DAILY_QUESTION_LIMIT ?? "20"),
};

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

export function isStripeConfigured() {
  return (
    env.stripeSecretKey !== fallbackStripeSecretKey &&
    env.stripeWebhookSecret !== fallbackWebhookSecret &&
    env.stripePricePremiumMonthlyId !== fallbackPriceId
  );
}
