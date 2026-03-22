-- Add daily streak columns to user_gamification
ALTER TABLE public.user_gamification
  ADD COLUMN IF NOT EXISTS daily_streak integer NOT NULL DEFAULT 0,
  ADD COLUMN IF NOT EXISTS longest_daily_streak integer NOT NULL DEFAULT 0,
  ADD COLUMN IF NOT EXISTS streak_freeze_remaining integer NOT NULL DEFAULT 1,
  ADD COLUMN IF NOT EXISTS streak_frozen_on date;
