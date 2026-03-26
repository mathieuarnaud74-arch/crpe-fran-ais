-- Migration: 10 exercices — Trigonométrie dans le triangle rectangle
-- Série : math_sin_cos_tan_triangle_rect (Mathématiques, geometrie)
-- Sinus, cosinus, tangente — définitions, calculs de côtés et d'angles
-- UUID prefix: e8190000

-- Q1 — QCM — Définition de cos(B) dans un triangle rectangle en A
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'qcm',
  'Dans un triangle ABC rectangle en A, quelle est la valeur de cos(B) ?',
  NULL,
  '[{"id":"a","label":"AB / BC"},{"id":"b","label":"AC / BC"},{"id":"c","label":"AC / AB"},{"id":"d","label":"BC / AB"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le mnémonique SOH-CAH-TOA résume les trois rapports trigonométriques. CAH signifie : Cosinus = côté Adjacent / Hypoténuse. Dans le triangle ABC rectangle en A, l''angle étudié est B. L''hypoténuse est le côté opposé à l''angle droit, soit BC. Le côté adjacent à B (qui « touche » B sans être l''hypoténuse) est AB. Le côté opposé à B (qui ne touche pas B) est AC. Donc cos(B) = côté adjacent / hypoténuse = AB / BC. La proposition (b) AC/BC correspond à sin(B) (SOH : Sinus = côté Opposé / Hypoténuse).',
  'Confondre le côté adjacent et le côté opposé par rapport à l''angle B. Le côté adjacent est celui qui est entre l''angle droit et l''angle B (ici AB), tandis que le côté opposé est en face de B (ici AC). Utiliser systématiquement SOH-CAH-TOA pour ne pas inverser les deux.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — sin(30°) = 1/2
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : sin(30°) = 1/2.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. C''est une valeur exacte à connaître. Dans un triangle équilatéral de côté 1, la médiatrice partage le triangle en deux triangles rectangles avec les angles 30°-60°-90°. Dans l''un de ces triangles, l''hypoténuse vaut 1 et le côté opposé à 30° vaut 1/2. Par SOH (Sinus = côté Opposé / Hypoténuse) : sin(30°) = (1/2) / 1 = 1/2. On retient aussi : sin(0°) = 0, sin(30°) = 1/2, sin(45°) = √2/2 ≈ 0,707, sin(60°) = √3/2 ≈ 0,866, sin(90°) = 1. Ces valeurs remarquables sont au programme du CRPE.',
  'Confondre sin(30°) et cos(30°) : cos(30°) = √3/2 ≈ 0,866, et non 1/2. Le moyen mémo-technique : pour les angles 30° et 60°, sin et cos se « complètent » (sin(30°) = cos(60°) = 1/2 et cos(30°) = sin(60°) = √3/2), car ces deux angles sont complémentaires (30° + 60° = 90°).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Calculer le côté opposé à 30° dans un triangle rectangle (hyp = 10)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'qcm',
  'Dans un triangle rectangle, l''hypoténuse mesure 10 cm et un angle aigu mesure 30°. Quelle est la longueur du côté opposé à cet angle ?',
  NULL,
  '[{"id":"a","label":"10 cm"},{"id":"b","label":"5 cm"},{"id":"c","label":"5√3 cm ≈ 8,66 cm"},{"id":"d","label":"10√3 cm ≈ 17,32 cm"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'On applique SOH : Sinus = côté Opposé / Hypoténuse. On cherche le côté opposé à 30°, l''hypoténuse vaut 10 cm. On pose : sin(30°) = côté opposé / 10. Donc côté opposé = 10 × sin(30°) = 10 × 1/2 = 5 cm. La proposition (c) 5√3 cm correspond au côté adjacent à 30°, calculé via CAH : cos(30°) = adj/10, soit adj = 10 × √3/2 = 5√3 ≈ 8,66 cm. On vérifie la cohérence : 5² + (5√3)² = 25 + 75 = 100 = 10² ✓ (théorème de Pythagore).',
  'Utiliser cos au lieu de sin, ce qui donne le côté adjacent (5√3 ≈ 8,66 cm) au lieu du côté opposé. Rappel SOH-CAH-TOA : SOH → sin = Opposé/Hypoténuse. Identifier d''abord quel côté est cherché (opposé ou adjacent) par rapport à l''angle donné avant de choisir la formule.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — reponse_courte — sin(A) et cos(A) si tan(A) = 3/4
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'reponse_courte',
  'Dans un triangle rectangle, tan(A) = 3/4. Calculer sin(A) et cos(A). (Donner les réponses sous forme de fractions.)',
  NULL,
  NULL,
  '{"mode":"exact_match","value":"sin(A) = 3/5, cos(A) = 4/5"}'::jsonb,
  'TOA signifie : Tangente = côté Opposé / côté Adjacent. Avec tan(A) = 3/4, on pose : côté opposé = 3k et côté adjacent = 4k pour un réel k > 0. L''hypoténuse se calcule par Pythagore : hyp² = (3k)² + (4k)² = 9k² + 16k² = 25k², donc hyp = 5k. On applique ensuite SOH et CAH : sin(A) = opposé/hyp = 3k/5k = 3/5 et cos(A) = adjacent/hyp = 4k/5k = 4/5. Vérification par l''identité fondamentale : sin²(A) + cos²(A) = (3/5)² + (4/5)² = 9/25 + 16/25 = 25/25 = 1 ✓. Le triplet (3, 4, 5) est le triplet pythagoricien le plus classique.',
  'Oublier de calculer l''hypoténuse via Pythagore et confondre côté opposé/adjacent avec hypoténuse. Certains écrivent directement sin(A) = 3 et cos(A) = 4 sans diviser par l''hypoténuse. Le rapport trigonométrique est toujours un quotient de deux longueurs, donc une valeur sans unité comprise entre 0 et 1 pour un angle aigu.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Valeur de cos(45°)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'qcm',
  'Quelle est la valeur exacte de cos(45°) ?',
  NULL,
  '[{"id":"a","label":"1/2"},{"id":"b","label":"√3/2 ≈ 0,866"},{"id":"c","label":"√2/2 ≈ 0,707"},{"id":"d","label":"1"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans un triangle rectangle isocèle (angles 45°-45°-90°), les deux cathètes sont égales. Posons-les égales à 1 ; l''hypoténuse vaut alors √(1² + 1²) = √2. Par CAH : cos(45°) = côté adjacent / hypoténuse = 1/√2 = √2/2 ≈ 0,707. Par symétrie, sin(45°) = √2/2 également (les deux angles de 45° sont égaux). La proposition (a) 1/2 est sin(30°), la proposition (b) √3/2 est cos(30°) ou sin(60°), et (d) 1 est cos(0°) ou sin(90°). Valeur à retenir : cos(45°) = sin(45°) = √2/2 ≈ 0,707.',
  'Confondre cos(45°) avec cos(30°) = √3/2 ou avec sin(30°) = 1/2. Le point clé : à 45°, sinus et cosinus sont égaux car les deux cathètes sont égales dans le triangle rectangle isocèle. C''est la seule valeur remarquable pour laquelle sin = cos.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Identité fondamentale sin²(A) + cos²(A) = 1
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : pour tout angle aigu A d''un triangle rectangle, sin²(A) + cos²(A) = 1.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. C''est l''identité trigonométrique fondamentale. Démonstration par SOH-CAH-TOA : dans un triangle rectangle de cathètes a (opposée) et b (adjacente) et d''hypoténuse c, sin(A) = a/c et cos(A) = b/c. Donc sin²(A) + cos²(A) = a²/c² + b²/c² = (a² + b²)/c². Or, par le théorème de Pythagore, a² + b² = c². On obtient donc c²/c² = 1 ✓. Cette identité est valable pour tout angle (pas seulement les angles aigus d''un triangle rectangle) et est omniprésente en trigonométrie au lycée. Elle permet de retrouver cos(A) si on connaît sin(A), et vice versa.',
  'Penser que sin²(A) + cos²(A) dépend de la valeur de A et qu''il faut la vérifier cas par cas. Ce résultat est une identité, vrai pour toute valeur de A. Une autre erreur est d''écrire sin(A²) au lieu de sin²(A) = (sin(A))² : l''exposant porte sur la valeur du sinus, pas sur l''angle.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — reponse_courte — sin, cos et tan d''un angle dans un triangle rectangle de cathètes 6 et 8
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'reponse_courte',
  'Un triangle rectangle a ses deux cathètes de longueur 6 cm et 8 cm. Calculer sin, cos et tan de l''angle aigu adjacent à la cathète de 8 cm. (Donner les réponses sous forme de fractions simplifiées.)',
  NULL,
  NULL,
  '{"mode":"exact_match","value":"sin = 3/5, cos = 4/5, tan = 3/4"}'::jsonb,
  'On commence par calculer l''hypoténuse via Pythagore : hyp² = 6² + 8² = 36 + 64 = 100, donc hyp = 10 cm. L''angle étudié, appelons-le A, est adjacent à la cathète de 8 cm. Cela signifie que le côté adjacent à A est 8 cm et le côté opposé à A est 6 cm. On applique SOH-CAH-TOA : SOH → sin(A) = opposé/hyp = 6/10 = 3/5 ; CAH → cos(A) = adjacent/hyp = 8/10 = 4/5 ; TOA → tan(A) = opposé/adjacent = 6/8 = 3/4. Vérification : sin²(A) + cos²(A) = 9/25 + 16/25 = 25/25 = 1 ✓. Le triplet (6, 8, 10) est le triplet (3, 4, 5) multiplié par 2.',
  'Inverser le côté opposé et le côté adjacent par rapport à l''angle A : comme A est adjacent à 8, le côté de 8 est ADJACENT (pas opposé). Le côté opposé est celui qui ne touche pas A (ici 6). Identifier précisément la position de l''angle avant d''appliquer les formules.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Calculer un angle dont on connaît sin(A) = 0,5
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'qcm',
  'On sait que sin(A) = 0,5. Pour trouver la mesure de l''angle A, quelle opération utilise-t-on ?',
  NULL,
  '[{"id":"a","label":"A = sin(0,5°)"},{"id":"b","label":"A = arcsin(0,5) → A = 30°"},{"id":"c","label":"A = 1 / sin(0,5)"},{"id":"d","label":"A = cos(0,5°) → A = 60°"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La fonction sinus transforme un angle en un rapport. Pour faire l''opération inverse (trouver l''angle à partir du rapport), on utilise la fonction réciproque arcsin (arcsinus), notée sin⁻¹ sur les calculatrices. Ici sin(A) = 0,5, donc A = arcsin(0,5). Comme sin(30°) = 1/2 = 0,5 est une valeur remarquable connue, on obtient A = 30°. On vérifie : sin(30°) = 0,5 ✓. De la même façon, arccos donne l''angle à partir du cosinus, et arctan à partir de la tangente. Sur une calculatrice, on utilise les touches sin⁻¹, cos⁻¹ et tan⁻¹.',
  'Calculer sin(0,5°) au lieu de arcsin(0,5) : sin(0,5°) ≈ 0,00873, ce qui n''est pas un angle mais un rapport. L''erreur fondamentale est de confondre le sens de la fonction sinus (angle → rapport) avec son inverse arcsin (rapport → angle). Pour trouver un angle, on utilise TOUJOURS la fonction réciproque arc.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — tan(60°) = √3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : tan(60°) = √3.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. On calcule à partir des valeurs remarquables : sin(60°) = √3/2 et cos(60°) = 1/2. Par la définition TOA, tan(60°) = sin(60°) / cos(60°) = (√3/2) / (1/2) = (√3/2) × (2/1) = √3 ≈ 1,732. On peut aussi retrouver ce résultat géométriquement : dans le triangle rectangle 30°-60°-90° de cathètes 1 (opposée à 30°) et √3 (opposée à 60°), tan(60°) = côté opposé à 60° / côté adjacent à 60° = √3 / 1 = √3. Valeurs remarquables à connaître : tan(30°) = 1/√3 = √3/3, tan(45°) = 1, tan(60°) = √3.',
  'Confondre tan(60°) avec tan(30°) = 1/√3 ≈ 0,577. Les valeurs de la tangente croissent de 0 (pour 0°) vers l''infini (pour 90°) : tan(30°) < tan(45°) = 1 < tan(60°). Comme 60° > 45°, tan(60°) doit être supérieure à 1, ce qui permet d''éliminer les valeurs inférieures à 1.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Angle d''élévation du soleil : poteau de 5 m, ombre de 5√3 m
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e8190000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_sin_cos_tan_triangle_rect',
  'Trigonométrie dans le triangle rectangle',
  'Standard',
  'reponse_courte',
  'Un poteau vertical de 5 m projette une ombre de 5√3 m au sol. Calculer l''angle d''élévation du soleil (angle entre l''ombre et le rayon solaire).',
  NULL,
  NULL,
  '{"mode":"exact_match","value":"30°"}'::jsonb,
  'Le poteau (5 m), son ombre (5√3 m) et le rayon solaire forment un triangle rectangle. L''angle d''élévation α est l''angle au sol entre l''ombre et le rayon solaire (à la base du poteau). Par TOA (Tangente = côté Opposé / côté Adjacent) : tan(α) = hauteur du poteau / longueur de l''ombre = 5 / (5√3) = 1/√3. On reconnaît la valeur remarquable tan(30°) = 1/√3 = √3/3. Donc α = arctan(1/√3) = 30°. Vérification : tan(30°) = sin(30°)/cos(30°) = (1/2)/(√3/2) = 1/√3 ✓. Plus le soleil est bas sur l''horizon, plus l''ombre est longue et plus α est petit.',
  'Calculer tan(α) = ombre/hauteur au lieu de hauteur/ombre, ce qui donnerait tan(α) = √3 → α = 60° (angle complémentaire). Le côté opposé à α est la hauteur verticale du poteau, et le côté adjacent est l''ombre au sol. Se rappeler : dans TOA, Opposé est le côté en face de l''angle, Adjacent est le côté qui « touche » l''angle sans être l''hypoténuse.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
