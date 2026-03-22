-- Seed: Géométrie — Repérage et coordonnées (7 exercices, Intermediaire, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées', 'Intermediaire', 'qcm',
  'Quelles sont les coordonnées du milieu du segment [AB] avec A(2, 6) et B(8, 2) ?', NULL,
  '[{"id":"a","label":"(5, 4)"},{"id":"b","label":"(6, 4)"},{"id":"c","label":"(10, 8)"},{"id":"d","label":"(3, 2)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le milieu M d''un segment [AB] a pour coordonnées M = ((xA + xB) / 2, (yA + yB) / 2). Ici : xM = (2 + 8) / 2 = 5 et yM = (6 + 2) / 2 = 4. Donc M(5, 4).',
  'Additionner les coordonnées sans diviser par 2, ce qui donne (10, 8).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées', 'Intermediaire', 'vrai_faux',
  'Le point C(3, 5) appartient à la droite passant par A(1, 1) et B(5, 9).', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le coefficient directeur de la droite (AB) est m = (9 − 1) / (5 − 1) = 8 / 4 = 2. L''équation de la droite est y = 2x + p. En remplaçant avec A(1, 1) : 1 = 2 × 1 + p, donc p = −1. L''équation est y = 2x − 1. Vérification pour C(3, 5) : 2 × 3 − 1 = 5. Le point C appartient bien à la droite.',
  'Oublier de vérifier le point dans l''équation complète et se fier uniquement au coefficient directeur.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées', 'Intermediaire', 'reponse_courte',
  'Calculez la distance entre les points A(1, 2) et B(4, 6).', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5"]}'::jsonb,
  'On applique la formule de la distance : AB = √((xB − xA)² + (yB − yA)²) = √((4 − 1)² + (6 − 2)²) = √(9 + 16) = √25 = 5.',
  'Oublier de mettre au carré les différences de coordonnées ou confondre addition et multiplication sous le radical.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées', 'Intermediaire', 'qcm',
  'Le triangle ABC avec A(0, 0), B(6, 0) et C(3, 4) est-il isocèle ? Si oui, quel type ?', NULL,
  '[{"id":"a","label":"Isocèle en C (AC = BC)"},{"id":"b","label":"Équilatéral"},{"id":"c","label":"Rectangle"},{"id":"d","label":"Scalène (aucun côté égal)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Calculons les longueurs des côtés : AB = √((6 − 0)² + (0 − 0)²) = 6. AC = √((3 − 0)² + (4 − 0)²) = √(9 + 16) = 5. BC = √((3 − 6)² + (4 − 0)²) = √(9 + 16) = 5. Comme AC = BC = 5, le triangle est isocèle en C.',
  'Confondre le sommet principal du triangle isocèle : c''est le sommet opposé à la base, ici C car AB est la base.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées', 'Intermediaire', 'reponse_courte',
  'Quelles sont les coordonnées du point D tel que ABCD soit un parallélogramme, avec A(1, 1), B(4, 1) et C(5, 4) ? Répondez sous la forme (x, y).', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(2, 4)","(2,4)","2, 4","2,4"]}'::jsonb,
  'Dans un parallélogramme ABCD, on a la relation vectorielle AB = DC. Donc D = A + C − B = (1 + 5 − 4, 1 + 4 − 1) = (2, 4). Vérification : AB = (3, 0) et DC = (5 − 2, 4 − 4) = ... Non, recalculons : DC = C − D = (5 − 2, 4 − 4) = (3, 0) = AB. Et AD = (1, 3) et BC = (1, 3). Les côtés opposés sont bien parallèles et de même longueur.',
  'Confondre l''ordre des sommets du parallélogramme et calculer D = A + B − C au lieu de D = A + C − B.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées', 'Intermediaire', 'qcm',
  'Un cercle a pour centre O(3, 2) et passe par le point A(6, 6). Le point B(8, 2) appartient-il à ce cercle ?', NULL,
  '[{"id":"a","label":"Le rayon est 5 et B appartient au cercle"},{"id":"b","label":"Le rayon est 5 et B n''appartient pas au cercle"},{"id":"c","label":"Le rayon est 25 et B appartient au cercle"},{"id":"d","label":"Le rayon est √20 et B n''appartient pas au cercle"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le rayon du cercle est OA = √((6 − 3)² + (6 − 2)²) = √(9 + 16) = √25 = 5. La distance OB = √((8 − 3)² + (2 − 2)²) = √(25 + 0) = 5. Comme OB = OA = 5, le point B appartient bien au cercle.',
  'Confondre le rayon (distance) avec le carré de la distance. Le rayon est √25 = 5, et non 25.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées', 'Intermediaire', 'reponse_courte',
  'Les points A(0, 0), B(4, 0), C(6, 3) et D(2, 3) forment un quadrilatère. Déterminez sa nature.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["parallélogramme","parallelogramme","Parallélogramme","Parallelogramme"]}'::jsonb,
  'Calculons les vecteurs des côtés : AB = (4, 0) et DC = C − D = (6 − 2, 3 − 3) = (4, 0). Donc AB = DC. AD = (2, 3) et BC = (6 − 4, 3 − 0) = (2, 3). Donc AD = BC. Les côtés opposés sont parallèles et de même longueur : ABCD est un parallélogramme. Vérifions s''il est plus particulier : |AB| = 4 et |AD| = √(4 + 9) = √13 ≠ 4, donc ce n''est pas un losange. AB · AD = 4 × 2 + 0 × 3 = 8 ≠ 0, donc ce n''est pas un rectangle. C''est un parallélogramme quelconque.',
  'Conclure hâtivement qu''il s''agit d''un rectangle ou d''un losange sans vérifier les diagonales ou les angles.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
