create type public.page_status as enum ('draft', 'published');
create type public.page_section_stage as enum ('draft', 'published');

create table public.pages (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  title text not null,
  status public.page_status not null default 'draft',
  last_published_at timestamptz,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now())
);

create table public.page_sections (
  id uuid primary key default gen_random_uuid(),
  page_id uuid not null references public.pages(id) on delete cascade,
  stage public.page_section_stage not null default 'draft',
  type text not null,
  order_index integer not null default 0,
  visible boolean not null default true,
  props_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now())
);

create index page_sections_page_stage_order_idx
  on public.page_sections (page_id, stage, order_index asc, created_at asc);

create trigger pages_handle_updated_at
before update on public.pages
for each row execute procedure public.handle_updated_at();

create trigger page_sections_handle_updated_at
before update on public.page_sections
for each row execute procedure public.handle_updated_at();

alter table public.pages enable row level security;
alter table public.page_sections enable row level security;

create policy "pages_select_public"
on public.pages
for select
to anon, authenticated
using (true);

create policy "page_sections_select_published_visible"
on public.page_sections
for select
to anon, authenticated
using (stage = 'published' and visible = true);

create policy "pages_insert_admin"
on public.pages
for insert
to authenticated
with check (public.is_admin_user(auth.uid()));

create policy "pages_update_admin"
on public.pages
for update
to authenticated
using (public.is_admin_user(auth.uid()))
with check (public.is_admin_user(auth.uid()));

create policy "pages_delete_admin"
on public.pages
for delete
to authenticated
using (public.is_admin_user(auth.uid()));

create policy "page_sections_select_admin"
on public.page_sections
for select
to authenticated
using (public.is_admin_user(auth.uid()));

create policy "page_sections_insert_admin"
on public.page_sections
for insert
to authenticated
with check (public.is_admin_user(auth.uid()));

create policy "page_sections_update_admin"
on public.page_sections
for update
to authenticated
using (public.is_admin_user(auth.uid()))
with check (public.is_admin_user(auth.uid()));

create policy "page_sections_delete_admin"
on public.page_sections
for delete
to authenticated
using (public.is_admin_user(auth.uid()));

create or replace function public.publish_page_sections(target_page_slug text)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  target_page public.pages%rowtype;
begin
  if not public.is_admin_user(auth.uid()) then
    raise exception 'forbidden';
  end if;

  select *
  into target_page
  from public.pages
  where slug = target_page_slug
  limit 1;

  if target_page.id is null then
    raise exception 'page_not_found';
  end if;

  if not exists (
    select 1
    from public.page_sections
    where page_id = target_page.id
      and stage = 'draft'
  ) then
    raise exception 'draft_not_found';
  end if;

  delete from public.page_sections
  where page_id = target_page.id
    and stage = 'published';

  insert into public.page_sections (page_id, stage, type, order_index, visible, props_json)
  select
    page_id,
    'published'::public.page_section_stage,
    type,
    order_index,
    visible,
    props_json
  from public.page_sections
  where page_id = target_page.id
    and stage = 'draft'
  order by order_index asc, created_at asc;

  update public.pages
  set
    status = 'published',
    last_published_at = timezone('utc', now())
  where id = target_page.id;
end;
$$;

grant execute on function public.publish_page_sections(text) to authenticated;
