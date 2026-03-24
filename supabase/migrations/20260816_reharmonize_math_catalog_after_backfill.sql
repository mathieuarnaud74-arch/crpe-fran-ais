-- Re-harmonize published math metadata after backfilling the missing seed questions.
-- This ensures one visible series per topic_key in the catalog.

with published_math as (
  select *
  from public.exercises
  where subject = 'Mathematiques'
    and is_published = true
),
access_choice as (
  select
    topic_key,
    case
      when bool_or(access_tier = 'premium') then 'premium'::public.access_tier
      else 'free'::public.access_tier
    end as canonical_access_tier
  from published_math
  group by topic_key
),
level_choice as (
  select distinct on (topic_key)
    topic_key,
    level as canonical_level
  from published_math
  group by topic_key, level
  order by
    topic_key,
    count(*) desc,
    case level
      when 'Facile' then 1
      when 'Intermediaire' then 2
      when 'Avance' then 3
      when 'Difficile' then 4
      else 5
    end
),
label_choice as (
  select distinct on (topic_key)
    topic_key,
    topic_label as canonical_topic_label
  from published_math
  where topic_label is not null
  group by topic_key, topic_label
  order by topic_key, count(*) desc, topic_label
)
update public.exercises as exercise
set
  access_tier = access_choice.canonical_access_tier,
  level = level_choice.canonical_level,
  topic_label = coalesce(label_choice.canonical_topic_label, exercise.topic_label)
from access_choice
join level_choice using (topic_key)
left join label_choice using (topic_key)
where exercise.subject = 'Mathematiques'
  and exercise.is_published = true
  and exercise.topic_key = access_choice.topic_key;
