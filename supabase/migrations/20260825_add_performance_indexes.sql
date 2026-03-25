-- Performance indexes for high-cardinality queries
-- Covers: dashboard attempts, SRS due cards, exercise listing

-- Dashboard: attempts by user ordered by date (used with .gte + .order)
CREATE INDEX IF NOT EXISTS idx_attempts_user_answered
  ON public.attempts (user_id, answered_at DESC);

-- SRS: cards due for review (used with .eq user_id + .lte due + .order due)
CREATE INDEX IF NOT EXISTS idx_srs_cards_user_due
  ON public.srs_cards (user_id, due ASC);

-- Exercise listing: published exercises filtered by subject + subdomain
CREATE INDEX IF NOT EXISTS idx_exercises_subject_published
  ON public.exercises (subject, subdomain)
  WHERE is_published = true;

-- Attempts count today: user_id + answered_at for daily quota check
-- (covered by idx_attempts_user_answered above)

-- User badges: lookup by user_id
CREATE INDEX IF NOT EXISTS idx_user_badges_user
  ON public.user_badges (user_id);
