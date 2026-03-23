-- Série : Échelles, plans et cartes — Applications (7 exercices, Intermédiaire, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_echelles_plans',
  'Échelles, plans et cartes — Applications', 'Intermediaire',
  'qcm',
  'Sur une carte à l''échelle 1/25 000, deux villes sont séparées par 8 cm. Quelle est la distance réelle entre ces deux villes ?',
  NULL,
  '[{"id":"a","label":"200 m"},{"id":"b","label":"2 km"},{"id":"c","label":"20 km"},{"id":"d","label":"0,2 km"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''échelle 1/25 000 signifie que 1 cm sur la carte correspond à 25 000 cm en réalité. Distance réelle : 8 × 25 000 = 200 000 cm. Conversion en mètres : 200 000 ÷ 100 = 2 000 m. Conversion en kilomètres : 2 000 ÷ 1 000 = 2 km. Méthode : on multiplie la mesure sur la carte par le dénominateur de l''échelle, puis on convertit dans l''unité demandée.',
  'Répondre 200 m en oubliant un facteur 10 dans la conversion, ou 20 km en ajoutant un zéro de trop. L''erreur fréquente est de mal gérer la chaîne de conversions cm → m → km.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_echelles_plans',
  'Échelles, plans et cartes — Applications', 'Intermediaire',
  'vrai_faux',
  'L''échelle 1/50 000 et l''écriture « 1 cm = 500 m » représentent la même échelle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Vérifions la correspondance : 500 m = 50 000 cm. Donc 1 cm sur la carte correspond à 50 000 cm en réalité, ce qui s''écrit 1/50 000. Les deux écritures sont équivalentes. L''écriture fractionnaire (1/50 000) est la notation mathématique standard, tandis que l''écriture « 1 cm = 500 m » est la notation pratique utilisée sur les cartes. Pour convertir, il suffit de transformer le dénominateur en centimètres : 50 000 cm = 500 m.',
  'Convertir incorrectement 50 000 cm en 5 000 m (en divisant par 10 au lieu de 100) et conclure que les échelles sont différentes. L''élève confond les facteurs de conversion entre cm et m.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_echelles_plans',
  'Échelles, plans et cartes — Applications', 'Intermediaire',
  'reponse_courte',
  'Sur un plan, un mur mesure 4 cm. En réalité, ce mur mesure 6 m. Quelle est l''échelle de ce plan ? Donner la réponse sous la forme 1/... (écrire uniquement le dénominateur).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["150","1/150"]}'::jsonb,
  'L''échelle est le rapport entre la mesure sur le plan et la mesure réelle, exprimées dans la même unité. Mesure sur le plan : 4 cm. Mesure réelle : 6 m = 600 cm. Échelle = 4/600 = 1/150. Cela signifie que 1 cm sur le plan représente 150 cm (soit 1,5 m) en réalité. Pour trouver l''échelle, on simplifie la fraction mesure plan / mesure réelle jusqu''à obtenir 1 au numérateur.',
  'Oublier de convertir les mètres en centimètres et calculer 4/6, soit une échelle de 2/3 qui n''a pas de sens pour un plan (cela signifierait que le plan est presque aussi grand que la réalité).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_echelles_plans',
  'Échelles, plans et cartes — Applications', 'Intermediaire',
  'qcm',
  'Sur un plan à l''échelle 1/200, une pièce rectangulaire mesure 3 cm × 2,5 cm. Quelle est l''aire réelle de cette pièce ?',
  NULL,
  '[{"id":"a","label":"15 m²"},{"id":"b","label":"30 m²"},{"id":"c","label":"7,5 m²"},{"id":"d","label":"1 500 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Méthode 1 (dimensions réelles) : Longueur réelle = 3 × 200 = 600 cm = 6 m. Largeur réelle = 2,5 × 200 = 500 cm = 5 m. Aire réelle = 6 × 5 = 30 m². Méthode 2 (facteur d''aire) : l''aire sur le plan est 3 × 2,5 = 7,5 cm². Le facteur d''échelle pour les aires est le carré du facteur linéaire : 200² = 40 000. Aire réelle = 7,5 × 40 000 = 300 000 cm² = 30 m². Point essentiel : pour les aires, le facteur d''échelle est élevé au carré.',
  'Répondre 15 m² en calculant l''aire sur le plan (7,5 cm²) puis en multipliant par 200 au lieu de 200². L''élève applique le facteur linéaire à l''aire au lieu du facteur quadratique. C''est l''erreur la plus fréquente sur les échelles et les aires.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_echelles_plans',
  'Échelles, plans et cartes — Applications', 'Intermediaire',
  'qcm',
  'Sur une carte au 1/100 000, un lac a une surface de 2 cm² sur la carte. Quelle est la surface réelle du lac ?',
  NULL,
  '[{"id":"a","label":"2 km²"},{"id":"b","label":"0,2 km²"},{"id":"c","label":"20 km²"},{"id":"d","label":"200 m²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour les aires, le facteur d''échelle est élevé au carré. À l''échelle 1/100 000, on a 1 cm sur la carte = 100 000 cm = 1 km en réalité. Pour les aires : 1 cm² sur la carte correspond à (100 000)² cm² = 10^10 cm² = 1 km² en réalité. Donc 2 cm² sur la carte correspondent à 2 km² en réalité. Conversion détaillée : 1 km = 100 000 cm, donc 1 km² = 10^10 cm². Surface réelle = 2 × 10^10 cm² = 2 km².',
  'Multiplier par 100 000 au lieu de (100 000)² : l''élève obtient 200 000 cm² = 20 m², confondant facteur linéaire et facteur d''aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_echelles_plans',
  'Échelles, plans et cartes — Applications', 'Intermediaire',
  'vrai_faux',
  'Sur un plan d''architecte à l''échelle 1/100, une porte mesure 0,9 cm de large. En réalité, cette porte mesure 90 cm de large.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'À l''échelle 1/100, chaque centimètre sur le plan correspond à 100 cm en réalité. La porte mesure 0,9 cm sur le plan, donc sa largeur réelle est : 0,9 × 100 = 90 cm. Cela correspond à une porte standard de 90 cm de large, ce qui est cohérent avec les dimensions courantes en architecture résidentielle.',
  'Multiplier par 1 000 au lieu de 100 et trouver 900 cm = 9 m, une dimension absurde pour une porte. L''erreur provient d''une confusion entre l''échelle 1/100 et l''échelle 1/1 000.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00b0000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_echelles_plans',
  'Échelles, plans et cartes — Applications', 'Intermediaire',
  'reponse_courte',
  'Un architecte dessine un terrain rectangulaire de 45 m × 30 m sur un plan à l''échelle 1/500. Il souhaite ajouter une piscine rectangulaire de 10 m × 5 m. Quelle longueur (en cm) la piscine aura-t-elle sur le plan ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2","2 cm","2cm"]}'::jsonb,
  'Pour représenter la piscine sur le plan à l''échelle 1/500, on divise les dimensions réelles par 500. Longueur réelle de la piscine : 10 m = 1 000 cm. Longueur sur le plan : 1 000 ÷ 500 = 2 cm. Largeur réelle : 5 m = 500 cm. Largeur sur le plan : 500 ÷ 500 = 1 cm. La piscine sera représentée par un rectangle de 2 cm × 1 cm sur le plan. Vérification du terrain : 45 m = 4 500 cm → 4 500 ÷ 500 = 9 cm et 30 m = 3 000 cm → 3 000 ÷ 500 = 6 cm sur le plan.',
  'Multiplier par 500 au lieu de diviser : l''élève confond le passage réalité → plan (division) avec le passage plan → réalité (multiplication). Pour aller de la réalité au plan, on divise par le dénominateur de l''échelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
