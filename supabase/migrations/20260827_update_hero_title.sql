-- Update hero section title on the live homepage
UPDATE public.page_sections
SET props_json = jsonb_set(props_json, '{title}', '"Préparez le CRPE avec méthode."')
WHERE type = 'hero'
  AND props_json->>'title' LIKE '%Préparez%';
