-- Seed: Suites et motifs numériques (7 exercices)
-- Subdomain: nombres_calcul | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Suites et motifs numériques', 'Intermediaire',
  'qcm',
  'Quelle est la raison de la suite arithmétique suivante : 3, 7, 11, 15, 19 ?',
  NULL,
  '[{"id":"a","label":"3"},{"id":"b","label":"4"},{"id":"c","label":"5"},{"id":"d","label":"7"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Une suite arithmétique est une suite dans laquelle chaque terme s''obtient en ajoutant une constante (appelée raison) au terme précédent. Ici : 7 − 3 = 4, 11 − 7 = 4, 15 − 11 = 4, 19 − 15 = 4. La raison est donc 4. Pour identifier la raison, il suffit de calculer la différence entre deux termes consécutifs et de vérifier qu''elle est constante.',
  'Confondre la raison avec le premier terme de la suite ou avec l''écart entre le premier et le dernier terme.',
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
  'f80a0000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Suites et motifs numériques', 'Intermediaire',
  'reponse_courte',
  'Dans la suite 5, 10, 20, 40, … quel est le terme suivant ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["80"]}'::jsonb,
  'Il s''agit d''une suite géométrique de raison 2 : chaque terme est obtenu en multipliant le précédent par 2. On a : 5 × 2 = 10, 10 × 2 = 20, 20 × 2 = 40, donc le terme suivant est 40 × 2 = 80. Dans une suite géométrique, la raison est le quotient constant entre deux termes consécutifs (ici 10 ÷ 5 = 2).',
  'Additionner au lieu de multiplier : penser que la suite augmente de 5 en 5 ou de 10 en 10 au lieu de doubler.',
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
  'f80a0000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Suites et motifs numériques', 'Intermediaire',
  'qcm',
  'Une suite géométrique a pour premier terme 2 et pour raison 3. Quel est son quatrième terme ?',
  NULL,
  '[{"id":"a","label":"8"},{"id":"b","label":"11"},{"id":"c","label":"54"},{"id":"d","label":"18"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Dans une suite géométrique, le terme de rang n s''obtient par la formule : u(n) = u(1) × r^(n−1), où u(1) est le premier terme et r la raison. Ici : u(1) = 2, u(2) = 2 × 3 = 6, u(3) = 6 × 3 = 18, u(4) = 18 × 3 = 54. On peut aussi calculer directement : u(4) = 2 × 3^3 = 2 × 27 = 54.',
  'Confondre suite arithmétique et suite géométrique : additionner la raison (2 + 3 + 3 + 3 = 11) au lieu de multiplier.',
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
  'f80a0000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Suites et motifs numériques', 'Intermediaire',
  'vrai_faux',
  'Dans une suite arithmétique de premier terme 10 et de raison 5, le 20e terme vaut 105.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le terme général d''une suite arithmétique est : u(n) = u(1) + (n − 1) × r. Ici : u(20) = 10 + (20 − 1) × 5 = 10 + 19 × 5 = 10 + 95 = 105. L''affirmation est donc vraie. Attention : on multiplie la raison par (n − 1) et non par n, car le premier terme correspond au rang 1.',
  'Calculer u(20) = 10 + 20 × 5 = 110, en oubliant que l''on ajoute la raison seulement 19 fois (et non 20) à partir du premier terme.',
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
  'f80a0000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Suites et motifs numériques', 'Intermediaire',
  'qcm',
  'Un élève épargne chaque semaine : 5 € la première semaine, 8 € la deuxième, 11 € la troisième, et ainsi de suite. Combien aura-t-il épargné au total après 10 semaines ?',
  NULL,
  '[{"id":"a","label":"185 €"},{"id":"b","label":"32 €"},{"id":"c","label":"50 €"},{"id":"d","label":"155 €"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les montants épargnés forment une suite arithmétique de premier terme u(1) = 5 et de raison r = 3. Le 10e terme vaut : u(10) = 5 + 9 × 3 = 32 €. La somme des n premiers termes d''une suite arithmétique est : S(n) = n × (u(1) + u(n)) / 2. Donc S(10) = 10 × (5 + 32) / 2 = 10 × 37 / 2 = 185 €. Ce type de problème contextualise la notion de suite arithmétique dans une situation concrète d''épargne.',
  'Calculer seulement le 10e terme (32 €) au lieu de la somme des 10 termes, ou oublier de diviser par 2 dans la formule de la somme.',
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
  'f80a0000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Suites et motifs numériques', 'Intermediaire',
  'vrai_faux',
  'La suite définie par u(1) = 3 et u(n+1) = u(n) + 2n est une suite arithmétique.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Une suite arithmétique a une raison constante : la différence entre deux termes consécutifs est toujours la même. Ici, u(2) − u(1) = 2 × 1 = 2, u(3) − u(2) = 2 × 2 = 4, u(4) − u(3) = 2 × 3 = 6. La différence varie (2, 4, 6…), donc la suite n''est pas arithmétique. Il s''agit d''une suite récurrente dont le « pas » augmente. On distingue ici une définition récursive (chaque terme dépend du précédent) d''une définition explicite (formule directe pour le nième terme).',
  'Ne vérifier que les deux premiers termes et conclure hâtivement que la suite est arithmétique de raison 2.',
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
  'f80a0000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Suites et motifs numériques', 'Intermediaire',
  'reponse_courte',
  'Dans une colonie de bactéries, on observe 1 bactérie le jour 1, 1 le jour 2, 2 le jour 3, 3 le jour 4, 5 le jour 5. Cette suite suit un motif similaire à la suite de Fibonacci. Combien de bactéries y aura-t-il le jour 8 ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["21"]}'::jsonb,
  'La suite de Fibonacci se construit en additionnant les deux termes précédents : F(1) = 1, F(2) = 1, F(3) = 2, F(4) = 3, F(5) = 5, F(6) = 8, F(7) = 13, F(8) = 21. Chaque terme est la somme des deux précédents : 5 + 8 = 13, 8 + 13 = 21. Cette suite apparaît dans de nombreux contextes naturels (croissance de populations, spirales végétales, etc.). Le jour 8, on comptera donc 21 bactéries.',
  'Confondre avec une suite géométrique (doubler à chaque étape) ou se tromper en additionnant des termes non consécutifs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
