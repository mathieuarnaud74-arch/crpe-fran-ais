-- Migration: 10 exercices — Quadrilatères particuliers : propriétés et classification
-- Série : math_quadrilateres_particuliers (Mathématiques, geometrie)
-- Parallélogramme, rectangle, losange, carré, trapèze — propriétés, hiérarchie, diagonales
-- UUID prefix: f5e60000

-- Q1 — QCM — Propriétés du parallélogramme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'qcm',
  'Quelle propriété caractérise un parallélogramme ?',
  NULL,
  '[{"id":"a","label":"Ses diagonales se coupent en leur milieu"},{"id":"b","label":"Ses diagonales sont perpendiculaires"},{"id":"c","label":"Ses diagonales sont de même longueur"},{"id":"d","label":"Ses quatre angles sont droits"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Un parallélogramme est un quadrilatère dont les diagonales se coupent en leur milieu. C''est la propriété caractéristique : elle est nécessaire ET suffisante. Autres propriétés équivalentes : (1) les côtés opposés sont parallèles deux à deux ; (2) les côtés opposés sont de même longueur ; (3) les angles opposés sont égaux. Les diagonales perpendiculaires caractérisent le losange. Les diagonales de même longueur caractérisent le rectangle. Les quatre angles droits caractérisent aussi le rectangle.',
  'Croire que les diagonales d''un parallélogramme sont de même longueur ou perpendiculaires. Ce n''est pas le cas en général : ces propriétés supplémentaires définissent des cas particuliers (rectangle, losange).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Le carré est un losange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : tout carré est un losange.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Un losange est un quadrilatère dont les 4 côtés sont de même longueur. Un carré a 4 côtés de même longueur ET 4 angles droits. Donc un carré vérifie la définition du losange : c''est un losange particulier (un losange qui a en plus un angle droit). Hiérarchie : carré ⊂ losange ⊂ parallélogramme. De même : carré ⊂ rectangle ⊂ parallélogramme. Le carré est à l''intersection du losange et du rectangle : c''est un losange rectangle.',
  'Croire que losange et carré sont deux figures sans rapport. En fait, le carré est un cas particulier de losange (et de rectangle). La relation d''inclusion est fondamentale et très testée au CRPE.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Diagonales du losange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'qcm',
  'Quelles sont les propriétés des diagonales d''un losange ?',
  NULL,
  '[{"id":"a","label":"Elles se coupent en leur milieu et sont perpendiculaires"},{"id":"b","label":"Elles se coupent en leur milieu et sont de même longueur"},{"id":"c","label":"Elles sont perpendiculaires et de même longueur"},{"id":"d","label":"Elles se coupent en leur milieu, sont perpendiculaires et de même longueur"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Les diagonales d''un losange se coupent en leur milieu (car c''est un parallélogramme) ET sont perpendiculaires. Elles ne sont PAS de même longueur en général (sauf si le losange est un carré). Récapitulatif des diagonales : parallélogramme → se coupent en leur milieu ; rectangle → + même longueur ; losange → + perpendiculaires ; carré → les trois propriétés (milieu + perpendiculaires + même longueur).',
  'Ajouter « de même longueur » aux propriétés du losange. Les diagonales d''un losange sont de longueurs différentes (sauf cas du carré). Seul le rectangle garantit des diagonales de même longueur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Identifier le quadrilatère
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'reponse_courte',
  'Un quadrilatère a ses diagonales qui se coupent en leur milieu, sont perpendiculaires et de même longueur. De quel quadrilatère s''agit-il ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["carré","un carré","carre","Carré"]}'::jsonb,
  'C''est un carré. Raisonnement : diagonales qui se coupent en leur milieu → parallélogramme. + perpendiculaires → losange. + même longueur → rectangle. Un parallélogramme qui est à la fois losange ET rectangle est un carré. Le carré est le seul quadrilatère qui cumule les trois propriétés des diagonales. Ce type de question « à rebours » (des propriétés vers la figure) est un classique du CRPE.',
  'Répondre « losange » (diagonales perpendiculaires) en oubliant la condition « de même longueur ». Ou répondre « rectangle » en oubliant la condition « perpendiculaires ». Le carré est le seul qui réunit les trois.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Propriétés du rectangle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'qcm',
  'Parmi ces propositions, laquelle est une propriété du rectangle qui n''est PAS une propriété de tout parallélogramme ?',
  NULL,
  '[{"id":"a","label":"Les côtés opposés sont parallèles"},{"id":"b","label":"Les diagonales se coupent en leur milieu"},{"id":"c","label":"Les diagonales sont de même longueur"},{"id":"d","label":"Les côtés opposés sont de même longueur"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les réponses a, b et d sont des propriétés de TOUT parallélogramme (et donc aussi du rectangle, qui est un parallélogramme particulier). La réponse c — « les diagonales sont de même longueur » — est spécifique au rectangle (et au carré). C''est même une propriété caractéristique : un parallélogramme dont les diagonales sont de même longueur est un rectangle. Au CRPE, on demande souvent de distinguer les propriétés héritées (du parallélogramme) des propriétés spécifiques (du rectangle ou du losange).',
  'Penser que « les côtés opposés sont parallèles » est spécifique au rectangle. C''est en fait la définition même du parallélogramme, dont le rectangle hérite.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Le trapèze
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : un parallélogramme est un trapèze particulier.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Un trapèze est un quadrilatère qui possède au moins une paire de côtés parallèles. Un parallélogramme possède DEUX paires de côtés parallèles, donc il vérifie bien la définition du trapèze (avec la convention « au moins »). Hiérarchie complète : carré ⊂ losange ⊂ parallélogramme ⊂ trapèze ⊂ quadrilatère, et carré ⊂ rectangle ⊂ parallélogramme ⊂ trapèze. Attention : certains manuels utilisent la convention « exactement une paire » (trapèze exclusif), mais la convention Éduscol/CRPE est « au moins une paire » (trapèze inclusif).',
  'Croire que le parallélogramme n''est pas un trapèze. Avec la convention inclusive (au moins une paire de côtés parallèles), tout parallélogramme est un trapèze. Vérifier la convention utilisée dans l''énoncé au CRPE.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Aire du losange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'qcm',
  'Un losange a des diagonales de longueurs 10 cm et 6 cm. Quelle est son aire ?',
  NULL,
  '[{"id":"a","label":"60 cm²"},{"id":"b","label":"30 cm²"},{"id":"c","label":"15 cm²"},{"id":"d","label":"16 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Aire du losange = (d₁ × d₂) / 2 = (10 × 6) / 2 = 30 cm². Cette formule vient du fait que le losange est composé de 4 triangles rectangles formés par les diagonales (qui sont perpendiculaires et se coupent en leur milieu). L''aire totale est la moitié du rectangle englobant de dimensions d₁ × d₂. Cette formule s''applique aussi à tout quadrilatère dont les diagonales sont perpendiculaires (cerf-volant, par exemple).',
  'Oublier de diviser par 2 et répondre 60 cm². L''aire est d₁ × d₂ / 2, pas d₁ × d₂. Le losange occupe exactement la moitié du rectangle formé par ses diagonales.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Réponse courte — Périmètre du losange via Pythagore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'reponse_courte',
  'Un losange a des diagonales de longueurs 16 cm et 12 cm. Calculez son périmètre.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["40 cm","40","40cm"]}'::jsonb,
  'Les diagonales du losange se coupent en leur milieu et sont perpendiculaires. Chaque demi-diagonale mesure 16/2 = 8 cm et 12/2 = 6 cm. Un côté du losange est l''hypoténuse du triangle rectangle formé par les deux demi-diagonales. Par le théorème de Pythagore : côté² = 8² + 6² = 64 + 36 = 100, donc côté = 10 cm. Le losange a 4 côtés égaux, donc périmètre = 4 × 10 = 40 cm. Ce problème combine propriétés du losange et Pythagore — un classique CRPE.',
  'Calculer le périmètre en additionnant les diagonales (16 + 12 = 28) au lieu de trouver le côté par Pythagore. Les diagonales ne sont pas les côtés !',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Conditions suffisantes pour un rectangle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'qcm',
  'ABCD est un parallélogramme. Quelle condition supplémentaire suffit pour que ce soit un rectangle ?',
  NULL,
  '[{"id":"a","label":"Un seul angle droit suffit"},{"id":"b","label":"Il faut que les 4 angles soient droits"},{"id":"c","label":"Il faut que les diagonales soient perpendiculaires"},{"id":"d","label":"Il faut que les 4 côtés soient égaux"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Dans un parallélogramme, les angles opposés sont égaux et les angles consécutifs sont supplémentaires. Donc si un angle est droit (90°), l''angle opposé est aussi droit, et les deux angles consécutifs valent 180° − 90° = 90°. Un seul angle droit suffit à garantir les quatre. C''est une propriété très utilisée en démonstration au CRPE : parallélogramme + 1 angle droit = rectangle. De même : parallélogramme + 2 côtés consécutifs égaux = losange.',
  'Croire qu''il faut vérifier les 4 angles. Grâce aux propriétés du parallélogramme, un seul angle droit entraîne les trois autres. C''est le principe des conditions minimales, souvent testé au CRPE.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Trapèze isocèle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_particuliers',
  'Quadrilatères particuliers : propriétés et classification',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : les diagonales d''un trapèze isocèle sont de même longueur.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Un trapèze isocèle possède deux côtés non parallèles de même longueur (les « jambes »). Ses diagonales sont de même longueur. Il possède aussi un axe de symétrie (la médiatrice des deux bases). Autres propriétés : les angles adjacents à chaque base sont égaux. Attention : un trapèze quelconque n''a PAS de diagonales de même longueur — cette propriété est spécifique au trapèze isocèle. Le rectangle est un cas particulier de trapèze isocèle (avec la convention inclusive).',
  'Croire que tous les trapèzes ont des diagonales de même longueur. Seul le trapèze isocèle (côtés non parallèles égaux) vérifie cette propriété.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
