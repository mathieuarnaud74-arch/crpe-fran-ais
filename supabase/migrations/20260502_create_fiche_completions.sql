-- Suivi des fiches lues par les utilisateurs
create table public.fiche_completions (
  user_id uuid not null references auth.users(id) on delete cascade,
  fiche_slug text not null,
  completed_at timestamptz not null default timezone('utc', now()),
  primary key (user_id, fiche_slug)
);

create index fiche_completions_user_idx on public.fiche_completions (user_id);

alter table public.fiche_completions enable row level security;

create policy "Users can read their own completions"
  on public.fiche_completions for select
  using (auth.uid() = user_id);

create policy "Users can insert their own completions"
  on public.fiche_completions for insert
  with check (auth.uid() = user_id);
