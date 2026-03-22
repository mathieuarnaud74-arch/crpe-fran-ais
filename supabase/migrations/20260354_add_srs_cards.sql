-- ============================================================
-- SRS Cards table — stores FSRS spaced-repetition state
-- per (user, exercise) pair.
-- ============================================================

create table if not exists public.srs_cards (
  id          uuid primary key default gen_random_uuid(),
  user_id     uuid not null references auth.users(id) on delete cascade,
  exercise_id uuid not null references public.exercises(id) on delete cascade,

  -- FSRS core fields
  due             timestamptz not null default now(),
  stability       double precision not null default 0,
  difficulty      double precision not null default 0,
  elapsed_days    integer not null default 0,
  scheduled_days  integer not null default 0,
  reps            integer not null default 0,
  lapses          integer not null default 0,
  state           smallint not null default 0,  -- 0=New, 1=Learning, 2=Review, 3=Relearning
  last_review     timestamptz,

  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),

  constraint srs_cards_user_exercise_unique unique (user_id, exercise_id)
);

-- Fast lookups: "give me all cards due for this user"
create index if not exists idx_srs_cards_user_due
  on public.srs_cards (user_id, due);

-- RLS
alter table public.srs_cards enable row level security;

create policy "Users can read their own SRS cards"
  on public.srs_cards for select
  using (auth.uid() = user_id);

create policy "Users can insert their own SRS cards"
  on public.srs_cards for insert
  with check (auth.uid() = user_id);

create policy "Users can update their own SRS cards"
  on public.srs_cards for update
  using (auth.uid() = user_id);
