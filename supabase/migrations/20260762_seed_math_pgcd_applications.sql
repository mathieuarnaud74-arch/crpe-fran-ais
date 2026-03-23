-- Migration: série math_pgcd_applications (7 questions)
-- PGCD — Applications pratiques
-- UUID prefix: f80f0000
-- Types : qcm (2), vrai_faux (2), reponse_courte (3)
-- Niveau : Intermediaire
-- Access : premium

-- ============================================================================
-- Q1 — QCM — AMORCE — Trouver le PGCD en listant les diviseurs
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Intermediaire',
  'qcm',
  'Quel est le PGCD de 36 et 48 ?',
  NULL,
  '[{"id":"a","label":"6"},{"id":"b","label":"8"},{"id":"c","label":"12"},{"id":"d","label":"24"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Listons les diviseurs de chaque nombre. Diviseurs de 36 : 1, 2, 3, 4, 6, 9, 12, 18, 36. Diviseurs de 48 : 1, 2, 3, 4, 6, 8, 12, 16, 24, 48. Les diviseurs communs sont : 1, 2, 3, 4, 6, 12. Le plus grand diviseur commun est 12. Donc PGCD(36, 48) = 12.',
  'Confondre PGCD et PPCM. Le PPCM de 36 et 48 est 144. Autre erreur : s''arrêter à un diviseur commun sans vérifier qu''il est bien le plus grand (par exemple répondre 6).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — REPONSE COURTE — AMORCE — Algorithme d''Euclide
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Intermediaire',
  'reponse_courte',
  'En utilisant l''algorithme d''Euclide, calculer PGCD(154, 56).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["14"]}'::jsonb,
  'On applique l''algorithme d''Euclide par divisions euclidiennes successives. 154 = 56 × 2 + 42. 56 = 42 × 1 + 14. 42 = 14 × 3 + 0. Le dernier reste non nul est 14. Donc PGCD(154, 56) = 14.',
  'Se tromper dans les divisions euclidiennes successives, notamment en calculant mal le quotient ou le reste. Par exemple, écrire 154 = 56 × 3 + (−14), ce qui donne un reste négatif invalide.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — REPONSE COURTE — RENFORCEMENT — Simplification de fraction avec le PGCD
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Intermediaire',
  'reponse_courte',
  'Simplifier la fraction 84/126 en fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2/3"]}'::jsonb,
  'Pour simplifier 84/126, on calcule le PGCD de 84 et 126. Par l''algorithme d''Euclide : 126 = 84 × 1 + 42. 84 = 42 × 2 + 0. Donc PGCD(84, 126) = 42. On simplifie : 84/126 = (84 ÷ 42)/(126 ÷ 42) = 2/3. La fraction 2/3 est irréductible car PGCD(2, 3) = 1.',
  'Simplifier partiellement (par exemple diviser par 2 pour obtenir 42/63, puis oublier de continuer). Ou confondre numérateur et dénominateur dans la division.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — VRAI/FAUX — RENFORCEMENT — PPCM à partir du PGCD
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Si PGCD(18, 24) = 6, alors PPCM(18, 24) = 72.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'On utilise la relation fondamentale : PGCD(a, b) × PPCM(a, b) = a × b. Donc PPCM(18, 24) = (18 × 24) / PGCD(18, 24) = 432 / 6 = 72. On vérifie : 72 = 18 × 4 = 24 × 3, donc 72 est bien un multiple commun de 18 et 24, et c''est le plus petit. L''affirmation est vraie.',
  'Multiplier les deux nombres sans diviser par le PGCD, ce qui donnerait 432 au lieu de 72. Ou diviser le produit par un mauvais PGCD.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — QCM — RENFORCEMENT — Problème concret : carrelage d''une pièce
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Intermediaire',
  'qcm',
  'On veut carreler une pièce rectangulaire de 360 cm par 480 cm avec des carreaux carrés les plus grands possible, sans découpe. Quel est le côté de chaque carreau ?',
  NULL,
  '[{"id":"a","label":"60 cm"},{"id":"b","label":"80 cm"},{"id":"c","label":"120 cm"},{"id":"d","label":"40 cm"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Pour que les carreaux carrés recouvrent parfaitement la pièce sans découpe, le côté du carreau doit diviser à la fois 360 et 480. On cherche le plus grand diviseur commun. PGCD(360, 480) : 480 = 360 × 1 + 120. 360 = 120 × 3 + 0. Donc PGCD(360, 480) = 120. Le côté de chaque carreau est de 120 cm. Vérification : 360 ÷ 120 = 3 carreaux en largeur, 480 ÷ 120 = 4 carreaux en longueur, soit 12 carreaux au total.',
  'Confondre PGCD et PPCM : le PPCM donnerait 1440, ce qui n''a pas de sens ici (un carreau plus grand que la pièce). Autre erreur : choisir un diviseur commun qui n''est pas le plus grand.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — REPONSE COURTE — APPROFONDISSEMENT — Problème concret : découper deux cordes
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Intermediaire',
  'reponse_courte',
  'On dispose de deux cordes de 168 cm et 120 cm. On veut les couper en morceaux de même longueur, la plus grande possible, sans reste. Combien de morceaux obtient-on au total ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12"]}'::jsonb,
  'La longueur de chaque morceau doit diviser 168 et 120. On cherche PGCD(168, 120). Par l''algorithme d''Euclide : 168 = 120 × 1 + 48. 120 = 48 × 2 + 24. 48 = 24 × 2 + 0. Donc PGCD(168, 120) = 24. Chaque morceau mesure 24 cm. Nombre de morceaux : 168 ÷ 24 + 120 ÷ 24 = 7 + 5 = 12 morceaux au total.',
  'Donner la longueur du morceau (24) au lieu du nombre total de morceaux. Ou calculer uniquement le nombre de morceaux d''une seule corde au lieu des deux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — VRAI/FAUX — APPROFONDISSEMENT — Problème combiné PGCD + PPCM
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Deux bus partent de la gare : le bus A toutes les 12 minutes, le bus B toutes les 18 minutes. S''ils partent ensemble à 8 h 00, ils repartiront ensemble pour la première fois à 8 h 36.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Les deux bus repartiront ensemble quand le temps écoulé sera un multiple commun de 12 et 18. On cherche le PPCM(12, 18). D''abord, PGCD(12, 18) = 6. Puis PPCM(12, 18) = (12 × 18) / 6 = 216 / 6 = 36. Les bus repartiront ensemble après 36 minutes, soit à 8 h 36. L''affirmation est vraie.',
  'Multiplier 12 × 18 = 216 minutes (soit 3 h 36) sans diviser par le PGCD. Ou confondre PGCD et PPCM et répondre 6 minutes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
