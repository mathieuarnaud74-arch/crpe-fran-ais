-- Push notification subscriptions for Web Push API
CREATE TABLE IF NOT EXISTS public.push_subscriptions (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  endpoint text NOT NULL,
  p256dh text NOT NULL,
  auth text NOT NULL,
  created_at timestamptz DEFAULT now() NOT NULL,
  updated_at timestamptz DEFAULT now() NOT NULL,
  UNIQUE(user_id, endpoint)
);

-- Index for fast lookups by user
CREATE INDEX IF NOT EXISTS idx_push_subscriptions_user_id ON public.push_subscriptions(user_id);

-- RLS policies
ALTER TABLE public.push_subscriptions ENABLE ROW LEVEL SECURITY;

-- Users can read their own subscriptions
CREATE POLICY "Users can view own subscriptions"
  ON public.push_subscriptions FOR SELECT
  USING (auth.uid() = user_id);

-- Service role can do everything (for API routes)
CREATE POLICY "Service role has full access"
  ON public.push_subscriptions FOR ALL
  USING (auth.role() = 'service_role');
