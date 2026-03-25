-- Shorten hero title to "Préparez le CRPE avec méthode."
UPDATE public.page_sections
SET props_json = jsonb_set(props_json, '{title}', '"Préparez le CRPE avec méthode."')
WHERE type = 'hero'
  AND props_json->>'title' LIKE '%Préparez%';
