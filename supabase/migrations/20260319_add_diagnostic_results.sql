-- Table to store one diagnostic result per user
CREATE TABLE IF NOT EXISTS public.diagnostic_results (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  completed_at timestamptz NOT NULL,
  score int NOT NULL,
  total int NOT NULL,
  profile_label text NOT NULL,
  profile_detail text NOT NULL,
  subdomains jsonb NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now()
);

-- Enforce one diagnostic per user at the database level
CREATE UNIQUE INDEX diagnostic_results_user_id_unique ON public.diagnostic_results(user_id);

-- Row-level security
ALTER TABLE public.diagnostic_results ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can read own diagnostic result"
  ON public.diagnostic_results
  FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own diagnostic result"
  ON public.diagnostic_results
  FOR INSERT
  WITH CHECK (auth.uid() = user_id);
