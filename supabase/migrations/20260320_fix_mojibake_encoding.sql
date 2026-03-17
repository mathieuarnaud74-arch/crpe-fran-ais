-- Fix Mojibake encoding in exercises table
-- Affected fields: detailed_explanation
-- Cause: seed files (conjugaison, orthographe) inserted UTF-8 bytes interpreted as cp1252

create or replace function fix_mojibake(t text) returns text language sql immutable as $$
  select
    replace(replace(replace(replace(replace(replace(replace(replace(
    replace(replace(replace(replace(replace(replace(replace(replace(
    replace(replace(replace(replace(replace(replace(replace(replace(
    t,
    E'\u00c3\u00a9', E'\u00e9'),
    E'\u00c3\u00a8', E'\u00e8'),
    E'\u00c3\u00a0', E'\u00e0'),
    E'\u00c3\u00a2', E'\u00e2'),
    E'\u00c3\u00ae', E'\u00ee'),
    E'\u00c3\u00b4', E'\u00f4'),
    E'\u00c3\u00bb', E'\u00fb'),
    E'\u00c3\u00a7', E'\u00e7'),
    E'\u00c3\u00b9', E'\u00f9'),
    E'\u00c3\u0089', E'\u00c9'),
    E'\u00c3\u00aa', E'\u00ea'),
    E'\u00c3\u00ab', E'\u00eb'),
    E'\u00c3\u00af', E'\u00ef'),
    E'\u00c3\u00bc', E'\u00fc'),
    E'\u00c3\u20ac', E'\u00c0'),
    E'\u00c3\u201a', E'\u00c2'),
    E'\u00c3\u2021', E'\u00c7'),
    E'\u00e2\u20ac\u201c', E'\u2014'),
    E'\u00e2\u20ac\u2122', E'\u2019'),
    E'\u00e2\u20ac\u0153', E'\u201c'),
    E'\u00e2\u20ac', E'\u201d'),
    E'\u00e2\u20ac\u00a6', E'\u2026'),
    E'\u00c2\u00ab', E'\u00ab'),
    E'\u00c2\u00bb', E'\u00bb')
$$;

update public.exercises
set
  detailed_explanation = fix_mojibake(detailed_explanation)
where
  detailed_explanation like E'%\u00c3\u00a9%' or detailed_explanation like E'%\u00e2\u20ac%';

drop function fix_mojibake;
