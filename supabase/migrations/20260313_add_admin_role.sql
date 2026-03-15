-- Ajout du rôle utilisateur sur les profils
alter table public.profiles
  add column if not exists role text not null default 'user';

-- Fonction serveur pour vérifier le rôle admin (security definer = bypass RLS)
create or replace function public.is_admin_user(user_id uuid)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.profiles
    where profiles.id = is_admin_user.user_id
      and profiles.role = 'admin'
  );
$$;

-- L'admin peut voir tous les exercices (y compris non publiés, pour tests futurs)
create policy "exercises_select_all_for_admin"
on public.exercises
for select
to authenticated
using (public.is_admin_user(auth.uid()));

-- L'admin peut voir toutes les tentatives (pour débogage et tests)
create policy "attempts_select_all_for_admin"
on public.attempts
for select
to authenticated
using (public.is_admin_user(auth.uid()));

-- L'admin peut voir tous les abonnements
create policy "subscriptions_select_all_for_admin"
on public.subscriptions
for select
to authenticated
using (public.is_admin_user(auth.uid()));

-- L'admin peut voir tous les profils
create policy "profiles_select_admin"
on public.profiles
for select
to authenticated
using (public.is_admin_user(auth.uid()));
