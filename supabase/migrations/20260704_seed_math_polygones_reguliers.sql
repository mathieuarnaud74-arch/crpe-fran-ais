-- Seed: Polygones réguliers — Angles et propriétés (7 exercices)
-- Subdomain: geometrie | Level: Intermediaire | Access: premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — AMORCE — QCM — Somme des angles intérieurs d'un polygone
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'qcm',
  'Quelle est la somme des angles intérieurs d''un pentagone (polygone à 5 côtés) ?',
  NULL,
  '[{"id":"a","label":"360°"},{"id":"b","label":"540°"},{"id":"c","label":"720°"},{"id":"d","label":"900°"}]',
  '{"mode":"single","value":"b"}',
  'La somme des angles intérieurs d''un polygone à n côtés est donnée par la formule (n − 2) × 180°. Pour un pentagone : n = 5, donc S = (5 − 2) × 180° = 3 × 180° = 540°. Cette formule se démontre en décomposant le polygone en triangles à partir d''un sommet : un polygone à n côtés se décompose en (n − 2) triangles, et chaque triangle a une somme d''angles de 180°. Exemples courants : triangle (180°), quadrilatère (360°), pentagone (540°), hexagone (720°).',
  'Appliquer n × 180° au lieu de (n − 2) × 180°, ce qui donnerait 5 × 180° = 900°. Il faut retrancher 2 au nombre de côtés avant de multiplier.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Réponse courte — Angle intérieur d'un polygone régulier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'reponse_courte',
  'Combien mesure chaque angle intérieur d''un hexagone régulier ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120°","120","120 °","120 degrés"]}',
  'Un hexagone régulier a 6 côtés tous égaux et 6 angles tous égaux. La somme des angles intérieurs vaut (6 − 2) × 180° = 4 × 180° = 720°. Chaque angle intérieur mesure donc 720° ÷ 6 = 120°. Dans un polygone régulier à n côtés, chaque angle intérieur mesure (n − 2) × 180° / n. L''hexagone régulier est un polygone très important en géométrie car il pave le plan et se décompose naturellement en 6 triangles équilatéraux.',
  'Diviser 360° par 6 pour obtenir 60°. La valeur 360° / n = 60° correspond à l''angle au centre (ou à l''angle extérieur), pas à l''angle intérieur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Vrai/Faux — Identification d'un polygone régulier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : un losange est toujours un polygone régulier.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}',
  'C''est faux. Un polygone régulier a tous ses côtés égaux ET tous ses angles égaux. Le losange a bien ses 4 côtés égaux, mais ses angles ne sont pas nécessairement tous égaux (sauf s''il est un carré). Par exemple, un losange dont les angles mesurent 60°, 120°, 60°, 120° a 4 côtés égaux mais pas 4 angles égaux : ce n''est pas un polygone régulier. Le seul quadrilatère régulier est le carré (4 côtés égaux et 4 angles droits). Cette distinction entre « équilatéral » (côtés égaux) et « régulier » (côtés et angles égaux) est importante au CRPE.',
  'Penser qu''avoir tous les côtés égaux suffit pour être régulier. La régularité exige aussi l''égalité de tous les angles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Angle extérieur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'reponse_courte',
  'Combien mesure chaque angle extérieur d''un décagone régulier (polygone régulier à 10 côtés) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["36°","36","36 °","36 degrés"]}',
  'La somme des angles extérieurs de tout polygone convexe vaut 360°. Dans un polygone régulier à n côtés, chaque angle extérieur mesure donc 360° / n. Pour un décagone régulier : 360° / 10 = 36°. On peut vérifier : chaque angle intérieur mesure (10 − 2) × 180° / 10 = 144°, et 180° − 144° = 36°, ce qui confirme le résultat. La propriété « somme des angles extérieurs = 360° » est très utile et souvent plus rapide que la formule des angles intérieurs.',
  'Calculer (10 − 2) × 180° / 10 = 144° et s''arrêter là. C''est l''angle intérieur, pas l''angle extérieur. Il faut encore calculer 180° − 144° = 36°.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — QCM — Nombre de diagonales
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'qcm',
  'Combien de diagonales possède un octogone (polygone à 8 côtés) ?',
  NULL,
  '[{"id":"a","label":"16"},{"id":"b","label":"20"},{"id":"c","label":"24"},{"id":"d","label":"28"}]',
  '{"mode":"single","value":"b"}',
  'Le nombre de diagonales d''un polygone à n côtés est n(n − 3) / 2. Pour un octogone : n = 8, donc d = 8 × (8 − 3) / 2 = 8 × 5 / 2 = 40 / 2 = 20 diagonales. Explication de la formule : depuis chaque sommet, on peut tracer (n − 3) diagonales (on exclut le sommet lui-même et ses 2 voisins). Il y a n sommets, donc n(n − 3) segments, mais chaque diagonale est comptée deux fois (une fois depuis chaque extrémité), d''où la division par 2. Vérifications : triangle (0), quadrilatère (2), pentagone (5), hexagone (9).',
  'Calculer 8 × 5 = 40 sans diviser par 2 (chaque diagonale relie deux sommets, elle est comptée deux fois).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Décomposition de l'hexagone régulier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'qcm',
  'On trace toutes les diagonales principales d''un hexagone régulier ABCDEF (c''est-à-dire les segments reliant des sommets opposés : AD, BE et CF). En combien de triangles équilatéraux l''hexagone est-il décomposé ?',
  NULL,
  '[{"id":"a","label":"4"},{"id":"b","label":"6"},{"id":"c","label":"8"},{"id":"d","label":"12"}]',
  '{"mode":"single","value":"b"}',
  'Les trois grandes diagonales d''un hexagone régulier se coupent en son centre O et décomposent l''hexagone en 6 triangles équilatéraux : OAB, OBC, OCD, ODE, OEF et OFA. Chacun de ces triangles est équilatéral car : le côté de l''hexagone et le rayon du cercle circonscrit ont la même longueur (propriété caractéristique de l''hexagone régulier), et l''angle au centre vaut 360° / 6 = 60°, ce qui donne un triangle isocèle avec un angle de 60°, donc équilatéral. Cette propriété explique pourquoi l''hexagone régulier pave le plan.',
  'Répondre 4 en pensant à une décomposition en triangles quelconques, ou 12 en comptant des demi-triangles. Les 3 diagonales principales créent exactement 6 régions, toutes des triangles équilatéraux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Pavage et angles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'reponse_courte',
  'Un pavage régulier du plan est constitué d''un seul type de polygone régulier, sans trou ni chevauchement. L''angle intérieur du polygone doit être un diviseur de 360°. Parmi le triangle équilatéral, le carré et l''hexagone régulier, combien de ces polygones permettent un pavage régulier du plan ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","trois"]}',
  'Les trois permettent un pavage régulier du plan. Pour qu''un polygone régulier pave le plan, il faut que son angle intérieur divise 360° (pour que des polygones se rejoignent exactement autour de chaque sommet). Triangle équilatéral : angle = 60°, et 360° / 60° = 6 triangles autour de chaque sommet. Carré : angle = 90°, et 360° / 90° = 4 carrés autour de chaque sommet. Hexagone régulier : angle = 120°, et 360° / 120° = 3 hexagones autour de chaque sommet. Le pentagone régulier (angle = 108°) ne pave pas le plan car 360° / 108° ≈ 3,33, qui n''est pas entier. Ce sont les trois seuls pavages réguliers du plan, résultat connu depuis l''Antiquité.',
  'Oublier l''hexagone régulier ou penser que seul le carré pave le plan. Les trois polygones (triangle, carré, hexagone) sont les seuls polygones réguliers qui pavent le plan.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
