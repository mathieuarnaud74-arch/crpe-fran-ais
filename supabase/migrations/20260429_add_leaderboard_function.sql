-- ─── Weekly Leaderboard Function ─────────────────────────────────
-- Returns top N users by XP earned in the current ISO week (Monday→Sunday).
-- Uses SECURITY DEFINER to bypass RLS and aggregate cross-user data.
-- Only returns display_name (anonymized if null) and aggregated XP — no PII.

CREATE OR REPLACE FUNCTION public.get_weekly_leaderboard(
  p_limit integer DEFAULT 50,
  p_calling_user_id uuid DEFAULT NULL
)
RETURNS TABLE (
  rank         bigint,
  user_id      uuid,
  display_name text,
  weekly_xp    bigint,
  total_xp     integer,
  level        integer,
  is_current_user boolean
)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  WITH weekly AS (
    SELECT
      a.user_id,
      SUM(a.xp_earned)::bigint AS weekly_xp
    FROM attempts a
    WHERE a.answered_at >= date_trunc('week', now() AT TIME ZONE 'Europe/Paris')
      AND a.xp_earned > 0
    GROUP BY a.user_id
  ),
  ranked AS (
    SELECT
      ROW_NUMBER() OVER (ORDER BY w.weekly_xp DESC, ug.xp DESC) AS rank,
      w.user_id,
      COALESCE(p.display_name, 'Candidat anonyme') AS display_name,
      w.weekly_xp,
      COALESCE(ug.xp, 0) AS total_xp,
      COALESCE(ug.level, 1) AS level,
      (w.user_id = p_calling_user_id) AS is_current_user
    FROM weekly w
    LEFT JOIN profiles p ON p.id = w.user_id
    LEFT JOIN user_gamification ug ON ug.user_id = w.user_id
  )
  SELECT * FROM ranked
  WHERE rank <= p_limit
     OR user_id = p_calling_user_id
  ORDER BY rank;
$$;

-- Grant execute to authenticated users
GRANT EXECUTE ON FUNCTION public.get_weekly_leaderboard(integer, uuid) TO authenticated;
