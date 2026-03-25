-- Update premium price from 6,99€ to 4,99€ in page_sections (final_cta pricingTiers)
UPDATE page_sections
SET props_json = jsonb_set(
  props_json,
  '{pricingTiers}',
  '[{"label":"Gratuit","price":"0 €","highlight":false},{"label":"Premium","price":"4,99 €/mois","highlight":true}]'::jsonb
)
WHERE type = 'final_cta'
  AND props_json->'pricingTiers' IS NOT NULL;
