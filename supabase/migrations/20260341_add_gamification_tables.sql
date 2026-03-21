-- ============================================================
-- Gamification: user_gamification table + attempts extensions
-- ============================================================

-- 1. User gamification profile
create table if not exists public.user_gamification (
  user_id    uuid primary key references auth.users(id) on delete cascade,
  xp         integer not null default 0,
  level      integer not null default 1,

  current_streak   integer not null default 0,
  longest_streak   integer not null default 0,
  last_activity_date date,

  sound_enabled       boolean not null default true,
  reduced_animations  boolean not null default false,
  daily_goal          integer not null default 20,

  personal_best_sprint_time integer,  -- milliseconds
  onboarding_completed      boolean not null default false,

  created_at  timestamptz not null default timezone('utc', now()),
  updated_at  timestamptz not null default timezone('utc', now())
);

-- auto-update updated_at
create or replace trigger handle_user_gamification_updated_at
  before update on public.user_gamification
  for each row execute function public.handle_updated_at();

-- 2. RLS policies
alter table public.user_gamification enable row level security;

create policy "Users can view own gamification" on public.user_gamification
  for select using (auth.uid() = user_id);

create policy "Users can insert own gamification" on public.user_gamification
  for insert with check (auth.uid() = user_id);

create policy "Users can update own gamification" on public.user_gamification
  for update using (auth.uid() = user_id);

-- 3. Extend attempts table
alter table public.attempts
  add column if not exists time_spent_ms   integer,
  add column if not exists xp_earned       integer not null default 0,
  add column if not exists exercise_mode   text not null default 'standard';
