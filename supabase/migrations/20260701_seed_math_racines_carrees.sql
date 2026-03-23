-- Seed: Racines carrées — Propriétés et calculs (7 exercices)
-- Subdomain: nombres_calcul | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_racines_carrees',
  'Racines carrées — Propriétés et calculs', 'Intermediaire',
  'qcm',
  'Quelle est la valeur de √144 ?',
  NULL,
  '[{"id":"a","label":"11"},{"id":"b","label":"12"},{"id":"c","label":"14"},{"id":"d","label":"72"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  '√144 = 12 car 12² = 12 × 12 = 144. On dit que 144 est un carré parfait. Les carrés parfaits courants à connaître sont : 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225.',
  'Confondre √144 avec 144/2 = 72. La racine carrée n''est pas la division par 2 : √a désigne le nombre positif dont le carré vaut a.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_racines_carrees',
  'Racines carrées — Propriétés et calculs', 'Intermediaire',
  'reponse_courte',
  'Simplifier √50. Écrire le résultat sous la forme a√b avec b le plus petit possible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5√2","5*√2","5 √2","5*racine(2)","5racine2"]}'::jsonb,
  'On décompose 50 en produit d''un carré parfait et d''un autre facteur : 50 = 25 × 2. Donc √50 = √(25 × 2) = √25 × √2 = 5√2. Pour simplifier une racine carrée, on cherche le plus grand carré parfait qui divise le nombre sous le radical.',
  'L''erreur courante est d''écrire √50 = 25 en « divisant par 2 » la racine. La simplification utilise la propriété √(a × b) = √a × √b, pas une division.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_racines_carrees',
  'Racines carrées — Propriétés et calculs', 'Intermediaire',
  'vrai_faux',
  '√(3 × 12) = √3 × √12. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La propriété fondamentale des racines carrées affirme que pour tous nombres positifs a et b : √(a × b) = √a × √b. Ici, √(3 × 12) = √36 = 6, et √3 × √12 = √3 × 2√3 = 2 × (√3)² = 2 × 3 = 6. Les deux expressions sont bien égales.',
  'Certains candidats pensent à tort que cette propriété n''est valable que pour des carrés parfaits. Elle est valable pour tous nombres positifs ou nuls.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_racines_carrees',
  'Racines carrées — Propriétés et calculs', 'Intermediaire',
  'qcm',
  'Simplifier √(48/75). Donner le résultat sous forme simplifiée.',
  NULL,
  '[{"id":"a","label":"4/5"},{"id":"b","label":"√(48/75)"},{"id":"c","label":"4√3 / 5√3"},{"id":"d","label":"16/25"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On utilise la propriété √(a/b) = √a / √b. On simplifie d''abord la fraction : 48/75. On décompose : 48 = 16 × 3 et 75 = 25 × 3. Donc 48/75 = (16 × 3)/(25 × 3) = 16/25. Ainsi √(48/75) = √(16/25) = √16 / √25 = 4/5.',
  'L''erreur est de ne pas simplifier la fraction sous le radical avant de calculer, ce qui rend le calcul inutilement complexe. Toujours simplifier d''abord.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_racines_carrees',
  'Racines carrées — Propriétés et calculs', 'Intermediaire',
  'qcm',
  'Rationaliser le dénominateur de la fraction 6/√3.',
  NULL,
  '[{"id":"a","label":"6/√3"},{"id":"b","label":"2√3"},{"id":"c","label":"6/3"},{"id":"d","label":"√2"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour rationaliser le dénominateur, on multiplie numérateur et dénominateur par √3 : 6/√3 = (6 × √3)/(√3 × √3) = 6√3/3 = 2√3. Le distracteur a (6/√3) est la forme non rationalisée : elle est égale à 2√3 mais n''a pas le dénominateur rationalisé. La forme la plus réduite et rationalisée est 2√3.',
  'L''erreur courante est de croire que rationaliser signifie simplement supprimer le symbole √. Il faut multiplier par une fraction égale à 1 (ici √3/√3) pour éliminer la racine au dénominateur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_racines_carrees',
  'Racines carrées — Propriétés et calculs', 'Intermediaire',
  'reponse_courte',
  'Résoudre l''équation x² = 49 dans l''ensemble des nombres réels. Donner les deux solutions séparées par un point-virgule.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7 ; -7","-7 ; 7","7;-7","-7;7","7 et -7","-7 et 7","x=7 ou x=-7","x=-7 ou x=7"]}'::jsonb,
  'L''équation x² = 49 admet deux solutions dans ℝ : x = √49 = 7 et x = −√49 = −7. En effet, 7² = 49 et (−7)² = 49. De manière générale, pour a > 0, l''équation x² = a a deux solutions : x = √a et x = −√a.',
  'L''erreur la plus fréquente est d''oublier la solution négative. L''équation x² = a (avec a > 0) a toujours deux solutions réelles opposées.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_racines_carrees',
  'Racines carrées — Propriétés et calculs', 'Intermediaire',
  'qcm',
  'Un triangle rectangle a pour côtés de l''angle droit 5 cm et 12 cm. Quelle est la longueur de l''hypoténuse ?',
  NULL,
  '[{"id":"a","label":"√17 cm ≈ 4,1 cm"},{"id":"b","label":"13 cm"},{"id":"c","label":"17 cm"},{"id":"d","label":"√119 cm ≈ 10,9 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'D''après le théorème de Pythagore, dans un triangle rectangle, le carré de l''hypoténuse est égal à la somme des carrés des deux autres côtés : h² = 5² + 12² = 25 + 144 = 169. Donc h = √169 = 13 cm. Le triplet (5, 12, 13) est un triplet pythagoricien classique à connaître.',
  'Une erreur fréquente est d''additionner directement les côtés (5 + 12 = 17) au lieu d''appliquer le théorème de Pythagore. L''hypoténuse n''est pas la somme des côtés mais la racine carrée de la somme de leurs carrés.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
