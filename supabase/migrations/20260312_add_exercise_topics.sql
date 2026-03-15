alter table public.exercises
add column if not exists topic_key text,
add column if not exists topic_label text;

create index if not exists exercises_topic_key_idx on public.exercises (topic_key);
