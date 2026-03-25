-- Update premium price from 6,99€ to 4,99€ in homepage sections (final_cta pricingTiers)
UPDATE homepage_sections
SET props = jsonb_set(
  props,
  '{pricingTiers}',
  '[{"label":"Gratuit","price":"0 €","highlight":false},{"label":"Premium","price":"4,99 €/mois","highlight":true}]'::jsonb
)
WHERE type = 'final_cta'
  AND props->'pricingTiers' IS NOT NULL;
