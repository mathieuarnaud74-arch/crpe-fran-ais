-- Seed: Contenances — Litres, centilitres et millilitres (7 exercices)
-- Subdomain: grandeurs_mesures | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres', 'Facile',
  'qcm',
  'Convertir 1,5 L en centilitres.',
  NULL,
  '[{"id":"a","label":"15 cL"},{"id":"b","label":"150 cL"},{"id":"c","label":"1 500 cL"},{"id":"d","label":"0,15 cL"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour convertir des litres en centilitres, on multiplie par 100. Ainsi : 1,5 × 100 = 150 cL. Le préfixe « centi » signifie « centième », donc 1 L = 100 cL.',
  'Erreur fréquente : multiplier par 10 ou par 1 000 au lieu de 100.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres', 'Facile',
  'reponse_courte',
  'Exprimer 75 cL en millilitres.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["750","750 mL","750mL"]}'::jsonb,
  'Pour convertir des centilitres en millilitres, on multiplie par 10. Ainsi : 75 × 10 = 750 mL. En effet, 1 cL = 10 mL.',
  'Erreur fréquente : multiplier par 100 au lieu de 10, ce qui donnerait 7 500 mL.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres', 'Facile',
  'vrai_faux',
  '2 500 mL = 2,5 L. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir des millilitres en litres, on divise par 1 000. Ainsi : 2 500 ÷ 1 000 = 2,5 L. En effet, 1 L = 1 000 mL. L''affirmation est donc vraie.',
  'Erreur fréquente : diviser par 100 au lieu de 1 000, ce qui donnerait 25 L.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres', 'Facile',
  'qcm',
  'Parmi les contenances suivantes, laquelle est la plus grande ? 0,6 L — 65 cL — 590 mL — 0,62 L.',
  NULL,
  '[{"id":"a","label":"0,6 L"},{"id":"b","label":"65 cL"},{"id":"c","label":"590 mL"},{"id":"d","label":"0,62 L"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Convertissons tout en millilitres pour comparer. 0,6 L = 600 mL. 65 cL = 650 mL. 590 mL = 590 mL. 0,62 L = 620 mL. La plus grande contenance est 65 cL = 650 mL.',
  'Erreur fréquente : ne pas convertir toutes les contenances dans la même unité avant de comparer.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres', 'Facile',
  'qcm',
  'Un médicament doit être administré à raison de 5 mL par prise, 3 fois par jour, pendant 7 jours. Quelle quantité totale de médicament faut-il en centilitres ?',
  NULL,
  '[{"id":"a","label":"10,5 cL"},{"id":"b","label":"105 cL"},{"id":"c","label":"1,05 cL"},{"id":"d","label":"15 cL"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Quantité par jour : 5 mL × 3 = 15 mL. Quantité totale : 15 × 7 = 105 mL. Conversion en centilitres : 105 ÷ 10 = 10,5 cL.',
  'Erreur fréquente : oublier l''une des étapes (nombre de prises par jour ou nombre de jours), ou se tromper dans la conversion mL → cL.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres', 'Facile',
  'reponse_courte',
  'Un seau a une capacité de 10 L. On y verse 3 bouteilles de 1,5 L et 4 verres de 25 cL. Combien de litres reste-t-il de place dans le seau ? Donner la réponse sous forme décimale (ex. : 1,5).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4,5","4.5","4,50","4.50"]}'::jsonb,
  'Eau des bouteilles : 3 × 1,5 = 4,5 L. Eau des verres : 4 × 25 cL = 100 cL = 1 L. Total versé : 4,5 + 1 = 5,5 L. Place restante : 10 − 5,5 = 4,5 L.',
  'Erreur fréquente : oublier de convertir les centilitres en litres, ou additionner 25 cL directement avec des litres sans conversion.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa080000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_contenances_conversions',
  'Contenances — Litres, centilitres et millilitres', 'Facile',
  'vrai_faux',
  '1 litre = 1 dm³ (un décimètre cube). Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est une équivalence fondamentale : 1 L = 1 dm³. Un cube de 1 dm de côté (10 cm × 10 cm × 10 cm = 1 000 cm³) contient exactement 1 litre. Cette relation permet de passer des unités de volume aux unités de contenance.',
  'Erreur fréquente : confondre dm³ et m³, ou penser que 1 L = 1 cm³.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
