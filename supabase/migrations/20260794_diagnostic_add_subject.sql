-- Add subject column to diagnostic_results (francais or maths)
-- Default existing rows to 'francais' since the diagnostic was French-only before
ALTER TABLE public.diagnostic_results
  ADD COLUMN IF NOT EXISTS subject text NOT NULL DEFAULT 'francais';

-- Replace old unique index (one diagnostic per user) with new (one per user per subject)
DROP INDEX IF EXISTS diagnostic_results_user_id_unique;
CREATE UNIQUE INDEX diagnostic_results_user_subject_unique
  ON public.diagnostic_results(user_id, subject);
