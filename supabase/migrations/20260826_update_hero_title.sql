-- Update hero section title on the live homepage
UPDATE homepage_sections
SET props = jsonb_set(props, '{title}', '"Préparez les épreuves de français et mathématiques du CRPE avec méthode."')
WHERE type = 'hero'
  AND props->>'title' LIKE '%Préparez%';
