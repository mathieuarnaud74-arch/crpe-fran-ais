-- Aligne is_premium_user() avec la logique TypeScript :
-- vérifie le status ET que current_period_end est dans le futur.
-- Évite qu'un abonnement expiré (webhook raté) reste actif via RLS.
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
      and subscriptions.current_period_end > now()
  );
$$;
