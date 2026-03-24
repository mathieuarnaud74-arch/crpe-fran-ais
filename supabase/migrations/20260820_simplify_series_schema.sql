-- ============================================================
-- Migration: Simplify series schema
--
-- Problem: Series are computed by grouping exercises on
--   topic_key::level::access_tier, then chunking into blocks of 10.
--   This causes massive fragmentation and invisible incomplete series.
--
-- Solution: 1 topic_key = 1 series. Remove level/access_tier from
--   grouping logic. Add explicit series_order column.
-- ============================================================

-- 1. Add explicit ordering column
ALTER TABLE public.exercises ADD COLUMN IF NOT EXISTS series_order integer NOT NULL DEFAULT 0;

-- 2. Populate series_order from existing exercise ordering.
--    Within each topic_key, order by level (Facile first, then Intermediaire,
--    then Avance/Difficile) to preserve pedagogical progression,
--    then by created_at and id as tiebreakers.
WITH ordered AS (
  SELECT id, topic_key,
    ROW_NUMBER() OVER (
      PARTITION BY topic_key
      ORDER BY
        CASE level
          WHEN 'Facile' THEN 1
          WHEN 'Intermediaire' THEN 2
          WHEN 'Avance' THEN 3
          WHEN 'Difficile' THEN 4
          ELSE 5
        END,
        created_at,
        id
    ) AS rn
  FROM public.exercises
  WHERE topic_key IS NOT NULL
)
UPDATE public.exercises e
SET series_order = o.rn
FROM ordered o
WHERE e.id = o.id;

-- 3. Neutralize access_tier — all exercises become free
UPDATE public.exercises SET access_tier = 'free' WHERE access_tier != 'free';

-- 4. Neutralize level — single value
UPDATE public.exercises SET level = 'Standard' WHERE level != 'Standard';

-- 5. Index for the new query pattern (group by topic_key, sort by series_order)
CREATE INDEX IF NOT EXISTS idx_exercises_topic_order
  ON public.exercises (topic_key, series_order);
