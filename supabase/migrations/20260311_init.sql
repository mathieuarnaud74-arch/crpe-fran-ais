create extension if not exists pgcrypto;

create type public.exercise_subdomain as enum (
  'grammaire',
  'orthographe',
  'conjugaison',
  'lexique',
  'comprehension_texte',
  'analyse_langue',
  'didactique_francais'
);

create type public.exercise_type as enum (
  'qcm',
  'vrai_faux',
  'reponse_courte',
  'identification_grammaticale',
  'correction_orthographique',
  'analyse_texte'
);

create type public.validation_status as enum ('brouillon', 'valide');
create type public.access_tier as enum ('free', 'premium');

create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  display_name text,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now())
);

create table public.subscriptions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null unique references auth.users(id) on delete cascade,
  stripe_customer_id text,
  stripe_subscription_id text,
  stripe_price_id text,
  status text not null default 'inactive',
  current_period_end timestamptz,
  cancel_at_period_end boolean not null default false,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now())
);

create table public.exercises (
  id uuid primary key default gen_random_uuid(),
  subject text not null default 'Français',
  subdomain public.exercise_subdomain not null,
  level text not null,
  exercise_type public.exercise_type not null,
  instruction text not null,
  support_text text,
  choices jsonb,
  expected_answer jsonb not null,
  detailed_explanation text not null,
  validation_status public.validation_status not null default 'brouillon',
  source text,
  access_tier public.access_tier not null default 'free',
  is_published boolean not null default false,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now())
);

create table public.attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  exercise_id uuid not null references public.exercises(id) on delete cascade,
  submitted_answer jsonb not null,
  is_correct boolean not null,
  score integer not null default 0,
  answered_at timestamptz not null default timezone('utc', now())
);

create index attempts_user_id_answered_at_idx on public.attempts (user_id, answered_at desc);
create index attempts_exercise_id_idx on public.attempts (exercise_id);
create index exercises_subdomain_idx on public.exercises (subdomain);
create index exercises_access_tier_idx on public.exercises (access_tier);

create or replace function public.handle_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = timezone('utc', now());
  return new;
end;
$$;

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, display_name)
  values (new.id, new.raw_user_meta_data ->> 'display_name')
  on conflict (id) do nothing;
  return new;
end;
$$;

create trigger profiles_handle_updated_at
before update on public.profiles
for each row execute procedure public.handle_updated_at();

create trigger subscriptions_handle_updated_at
before update on public.subscriptions
for each row execute procedure public.handle_updated_at();

create trigger exercises_handle_updated_at
before update on public.exercises
for each row execute procedure public.handle_updated_at();

create trigger on_auth_user_created
after insert on auth.users
for each row execute procedure public.handle_new_user();

create or replace function public.is_premium_user(user_id uuid)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.subscriptions
    where subscriptions.user_id = is_premium_user.user_id
      and subscriptions.status in ('active', 'trialing')
  );
$$;

alter table public.profiles enable row level security;
alter table public.subscriptions enable row level security;
alter table public.exercises enable row level security;
alter table public.attempts enable row level security;

create policy "profiles_select_self"
on public.profiles
for select
to authenticated
using (auth.uid() = id);

create policy "profiles_update_self"
on public.profiles
for update
to authenticated
using (auth.uid() = id);

create policy "subscriptions_select_self"
on public.subscriptions
for select
to authenticated
using (auth.uid() = user_id);

create policy "exercises_select_published_for_users"
on public.exercises
for select
to authenticated
using (
  is_published = true
  and (
    access_tier = 'free'
    or public.is_premium_user(auth.uid())
  )
);

create policy "attempts_select_self"
on public.attempts
for select
to authenticated
using (auth.uid() = user_id);

create policy "attempts_insert_self"
on public.attempts
for insert
to authenticated
with check (auth.uid() = user_id);

