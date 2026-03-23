-- Seed: Longueurs — Conversions et calculs (7 exercices)
-- Subdomain: grandeurs_mesures | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Facile',
  'qcm',
  'Convertir 3,5 km en mètres.',
  NULL,
  '[{"id":"a","label":"350 m"},{"id":"b","label":"3 500 m"},{"id":"c","label":"35 000 m"},{"id":"d","label":"0,35 m"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour convertir des kilomètres en mètres, on multiplie par 1 000. Ainsi : 3,5 × 1 000 = 3 500 m. Le préfixe « kilo » signifie « mille », donc 1 km = 1 000 m.',
  'Erreur fréquente : multiplier par 100 au lieu de 1 000, ce qui donnerait 350 m.',
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
  'fa010000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Facile',
  'reponse_courte',
  'Exprimer 250 cm en mètres. Donner la réponse sous forme décimale (ex. : 1,5).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2,5","2.5","2,50","2.50"]}'::jsonb,
  'Pour convertir des centimètres en mètres, on divise par 100. Ainsi : 250 ÷ 100 = 2,5 m. Le préfixe « centi » signifie « centième », donc 1 cm = 0,01 m.',
  'Erreur fréquente : diviser par 10 au lieu de 100, ce qui donnerait 25 m.',
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
  'fa010000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Facile',
  'vrai_faux',
  '4 500 mm = 4,5 m. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir des millimètres en mètres, on divise par 1 000. Ainsi : 4 500 ÷ 1 000 = 4,5 m. Le préfixe « milli » signifie « millième », donc 1 mm = 0,001 m. L''affirmation est donc vraie.',
  'Erreur fréquente : confondre les conversions mm → cm (÷ 10) et mm → m (÷ 1 000).',
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
  'fa010000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Facile',
  'qcm',
  'Additionner 1,2 km et 800 m. Quel est le résultat en mètres ?',
  NULL,
  '[{"id":"a","label":"1 280 m"},{"id":"b","label":"2 000 m"},{"id":"c","label":"920 m"},{"id":"d","label":"8 120 m"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il faut d''abord convertir dans la même unité. 1,2 km = 1 200 m. Ensuite : 1 200 m + 800 m = 2 000 m. On peut aussi écrire le résultat sous la forme 2 km.',
  'Erreur fréquente : additionner directement 1,2 et 800 sans convertir, ou mal placer la virgule lors de la conversion.',
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
  'fa010000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Facile',
  'qcm',
  'Parmi les longueurs suivantes, laquelle est la plus grande ? 0,07 km — 7 200 cm — 710 dm — 70 500 mm.',
  NULL,
  '[{"id":"a","label":"0,07 km"},{"id":"b","label":"7 200 cm"},{"id":"c","label":"710 dm"},{"id":"d","label":"70 500 mm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Convertissons tout en mètres pour comparer. 0,07 km = 70 m. 7 200 cm = 72 m. 710 dm = 71 m. 70 500 mm = 70,5 m. La plus grande longueur est 7 200 cm = 72 m.',
  'Erreur fréquente : ne pas convertir toutes les longueurs dans la même unité avant de comparer.',
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
  'fa010000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Facile',
  'reponse_courte',
  'Un terrain rectangulaire mesure 45 m de long et 1 200 cm de large. Calculer son périmètre en mètres.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["114","114 m","114m"]}'::jsonb,
  'Il faut d''abord convertir la largeur : 1 200 cm = 12 m. Le périmètre d''un rectangle est P = 2 × (L + l) = 2 × (45 + 12) = 2 × 57 = 114 m.',
  'Erreur fréquente : oublier de convertir 1 200 cm en mètres et calculer avec des unités différentes, ou utiliser la formule de l''aire au lieu du périmètre.',
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
  'fa010000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Facile',
  'qcm',
  'Une piste d''athlétisme fait 400 m de long. Un coureur effectue 3 tours et demi. Quelle distance a-t-il parcourue en kilomètres ?',
  NULL,
  '[{"id":"a","label":"1,2 km"},{"id":"b","label":"1,4 km"},{"id":"c","label":"1,6 km"},{"id":"d","label":"1,35 km"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le coureur parcourt 3,5 tours × 400 m = 1 400 m. Pour convertir en kilomètres : 1 400 ÷ 1 000 = 1,4 km.',
  'Erreur fréquente : calculer 3 × 400 = 1 200 m en oubliant le demi-tour, ou mal convertir les mètres en kilomètres.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
