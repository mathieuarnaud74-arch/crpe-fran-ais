-- Seed: Masses — Conversions et problèmes (7 exercices)
-- Subdomain: grandeurs_mesures | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa070000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Facile',
  'qcm',
  'Convertir 2,75 kg en grammes.',
  NULL,
  '[{"id":"a","label":"275 g"},{"id":"b","label":"2 750 g"},{"id":"c","label":"27 500 g"},{"id":"d","label":"27,5 g"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour convertir des kilogrammes en grammes, on multiplie par 1 000. Ainsi : 2,75 × 1 000 = 2 750 g. Le préfixe « kilo » signifie « mille », donc 1 kg = 1 000 g.',
  'Erreur fréquente : multiplier par 100 au lieu de 1 000, ce qui donnerait 275 g.',
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
  'fa070000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Facile',
  'reponse_courte',
  'Exprimer 4 500 g en kilogrammes. Donner la réponse sous forme décimale (ex. : 1,5).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4,5","4.5","4,50","4.50"]}'::jsonb,
  'Pour convertir des grammes en kilogrammes, on divise par 1 000. Ainsi : 4 500 ÷ 1 000 = 4,5 kg.',
  'Erreur fréquente : diviser par 100 au lieu de 1 000, ce qui donnerait 45 kg.',
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
  'fa070000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Facile',
  'vrai_faux',
  '500 mg = 0,5 g. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir des milligrammes en grammes, on divise par 1 000. Ainsi : 500 ÷ 1 000 = 0,5 g. Le préfixe « milli » signifie « millième », donc 1 mg = 0,001 g. L''affirmation est donc vraie.',
  'Erreur fréquente : confondre mg et g en pensant que 1 mg = 0,01 g (division par 100 au lieu de 1 000).',
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
  'fa070000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Facile',
  'qcm',
  'Parmi les masses suivantes, laquelle est la plus grande ? 0,8 kg — 850 g — 7 900 mg — 0,0009 t.',
  NULL,
  '[{"id":"a","label":"0,8 kg"},{"id":"b","label":"850 g"},{"id":"c","label":"7 900 mg"},{"id":"d","label":"0,0009 t"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'Convertissons tout en grammes pour comparer. 0,8 kg = 800 g. 850 g = 850 g. 7 900 mg = 7,9 g. 0,0009 t = 0,0009 × 1 000 000 g = 900 g. La plus grande masse est 0,0009 t = 900 g.',
  'Erreur fréquente : ne pas convertir toutes les masses dans la même unité avant de comparer, ou se tromper dans la conversion des tonnes.',
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
  'fa070000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Facile',
  'qcm',
  'Une recette de gâteau nécessite 250 g de farine, 150 g de sucre, 125 g de beurre et 75 g de chocolat. Quelle est la masse totale des ingrédients ?',
  NULL,
  '[{"id":"a","label":"500 g"},{"id":"b","label":"600 g"},{"id":"c","label":"550 g"},{"id":"d","label":"700 g"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On additionne toutes les masses : 250 + 150 + 125 + 75 = 600 g. Pour vérifier, on peut regrouper : (250 + 150) + (125 + 75) = 400 + 200 = 600 g.',
  'Erreur fréquente : oublier l''un des ingrédients dans l''addition ou faire une erreur de calcul mental.',
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
  'fa070000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Facile',
  'reponse_courte',
  'Un colis contient un objet de 1,8 kg. L''emballage pèse 350 g. Quelle est la masse totale du colis en kilogrammes ? Donner la réponse sous forme décimale (ex. : 1,5).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2,15","2.15"]}'::jsonb,
  'Il faut d''abord convertir dans la même unité. 350 g = 0,35 kg. Ensuite : 1,8 + 0,35 = 2,15 kg.',
  'Erreur fréquente : additionner 1,8 et 350 sans convertir, ou mal placer la virgule lors de la conversion (350 g = 3,5 kg au lieu de 0,35 kg).',
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
  'fa070000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Facile',
  'qcm',
  'Au marché, une personne achète 1,5 kg de pommes à 2,80 €/kg et 750 g de cerises à 6 €/kg. Quel est le montant total de ses achats ?',
  NULL,
  '[{"id":"a","label":"8,70 €"},{"id":"b","label":"8,20 €"},{"id":"c","label":"4,20 €"},{"id":"d","label":"12,30 €"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pommes : 1,5 × 2,80 = 4,20 €. Cerises : il faut d''abord convertir 750 g = 0,75 kg, puis 0,75 × 6 = 4,50 €. Total : 4,20 + 4,50 = 8,70 €.',
  'Erreur fréquente : oublier de convertir 750 g en kg et multiplier 750 × 6, ou se tromper dans le calcul de 1,5 × 2,80.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
