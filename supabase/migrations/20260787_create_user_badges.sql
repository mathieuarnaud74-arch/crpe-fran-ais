-- ─────────────────────────────────────────────────────────────
-- Table : user_badges — persiste les badges débloqués par user
-- ─────────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS public.user_badges (
  user_id   uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  badge_id  text        NOT NULL,
  earned_at timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY (user_id, badge_id)
);

-- Index pour requêtes « tous les badges d'un user » (déjà couvert par PK mais explicite)
CREATE INDEX IF NOT EXISTS idx_user_badges_user_id ON public.user_badges(user_id);

-- ─── RLS ────────────────────────────────────────────────────
ALTER TABLE public.user_badges ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view their own badges"
  ON public.user_badges
  FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own badges"
  ON public.user_badges
  FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Pas de UPDATE / DELETE : les badges sont permanents.
