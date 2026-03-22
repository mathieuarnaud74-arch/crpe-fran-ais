-- Migration: série math_chasse_erreurs_geometrie (7 questions)
-- Chasse aux erreurs — Géométrie — Mathématiques CRPE
-- UUID prefix: b0040000
-- Types : qcm, vrai_faux, reponse_courte
-- Niveau : Intermediaire
-- Access : free

-- ============================================================================
-- Q1 — QCM — Confusion des propriétés des quadrilatères (AMORCE)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'qcm',
  'Emma affirme : « Tous les parallélogrammes ont quatre angles droits. » Quelle est l''erreur dans son raisonnement ?',
  NULL,
  '[{"id":"a","label":"Elle confond parallélogramme et rectangle : seul le rectangle (cas particulier du parallélogramme) possède quatre angles droits"},{"id":"b","label":"Elle confond parallélogramme et losange : le losange a quatre angles droits"},{"id":"c","label":"Elle a raison, tous les parallélogrammes ont bien quatre angles droits"},{"id":"d","label":"Elle confond parallélogramme et trapèze : le trapèze a quatre angles droits"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Un parallélogramme est un quadrilatère dont les côtés opposés sont parallèles deux à deux. Cette définition n''impose AUCUNE condition sur la mesure des angles. Un parallélogramme peut avoir des angles de 60° et 120° par exemple. Le rectangle est un parallélogramme particulier qui possède, en plus, quatre angles droits. Emma commet une erreur d''inclusion : elle attribue au parallélogramme (catégorie générale) une propriété qui n''appartient qu''au rectangle (catégorie particulière). Pour retenir : tout rectangle est un parallélogramme, mais tout parallélogramme n''est pas un rectangle. De même, le carré est à la fois un rectangle, un losange et un parallélogramme.',
  'Confondre la catégorie générale (parallélogramme) avec un cas particulier (rectangle). L''élève ne maîtrise pas la hiérarchie d''inclusion des quadrilatères : carré ⊂ rectangle ⊂ parallélogramme ⊂ quadrilatère.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — VRAI/FAUX — Symétrie axiale du parallélogramme (AMORCE)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'vrai_faux',
  'Emma affirme : « Un parallélogramme possède toujours au moins un axe de symétrie. » Cette affirmation est-elle vraie ou fausse ?',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est FAUX. Un parallélogramme quelconque (qui n''est ni un rectangle, ni un losange) ne possède AUCUN axe de symétrie. Il possède uniquement une symétrie centrale : le centre de symétrie est le point d''intersection de ses diagonales. Emma confond symétrie axiale et symétrie centrale. Un rectangle possède 2 axes de symétrie (les médiatrices de ses côtés). Un losange possède 2 axes de symétrie (ses diagonales). Un carré possède 4 axes de symétrie (les 2 du rectangle + les 2 du losange). Mais le parallélogramme quelconque n''en possède aucun. Pour vérifier, on peut tenter de plier un parallélogramme non rectangle le long de n''importe quelle droite : les deux moitiés ne se superposent jamais exactement.',
  'Confondre symétrie axiale et symétrie centrale. Le parallélogramme possède un centre de symétrie mais pas d''axe de symétrie (sauf cas particuliers : rectangle, losange, carré).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — QCM — Erreur d''application du théorème de Pythagore (CONSOLIDATION)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'qcm',
  'Dans un triangle rectangle ABC, l''angle droit est en C. On donne AC = 3 cm et BC = 4 cm. Emma écrit : « D''après le théorème de Pythagore : AC² + BC² = AB², donc AB² = 9 + 16 = 25, donc AB = 5 cm. » Puis elle applique le même théorème dans un autre triangle rectangle DEF, angle droit en F, avec DE = 13 cm et DF = 5 cm. Elle écrit : « DE² + DF² = EF², donc EF² = 169 + 25 = 194. » Quelle erreur Emma commet-elle dans le second calcul ?',
  NULL,
  '[{"id":"a","label":"Elle place l''hypoténuse du mauvais côté : DE est l''hypoténuse (côté opposé à l''angle droit en F), donc on devrait écrire DE² = DF² + EF²"},{"id":"b","label":"Elle a mal calculé 13² : ce n''est pas 169 mais 156"},{"id":"c","label":"Elle devrait utiliser le théorème de Thalès, pas celui de Pythagore"},{"id":"d","label":"Le théorème de Pythagore ne s''applique que si les trois côtés sont connus"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le théorème de Pythagore stipule que dans un triangle rectangle, le carré de l''hypoténuse est égal à la somme des carrés des deux autres côtés. L''hypoténuse est TOUJOURS le côté opposé à l''angle droit, et c''est TOUJOURS le plus long côté du triangle. Dans le triangle DEF rectangle en F, l''hypoténuse est [DE] (côté opposé à l''angle droit F). Donc la relation correcte est : DE² = DF² + EF², soit 13² = 5² + EF², d''où 169 = 25 + EF², donc EF² = 144 et EF = 12 cm. Emma a commis l''erreur en plaçant DE (l''hypoténuse) à gauche de l''addition au lieu de l''isoler. Dans le premier calcul, elle avait correctement identifié AB comme hypoténuse (opposée à l''angle droit en C). L''erreur provient d''un manque de rigueur dans l''identification systématique de l''hypoténuse avant d''écrire la relation.',
  'Appliquer mécaniquement la formule a² + b² = c² sans identifier correctement l''hypoténuse. L''élève place arbitrairement le plus grand côté dans la somme au lieu de l''isoler comme résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — QCM — Confusion périmètre/aire (CONSOLIDATION)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'qcm',
  'On demande à Emma de calculer l''aire d''un rectangle de longueur 8 cm et de largeur 5 cm. Elle écrit : « Aire = 8 + 5 + 8 + 5 = 26 cm². » Identifiez l''erreur (ou les erreurs) commise(s) par Emma.',
  NULL,
  '[{"id":"a","label":"Elle a calculé le périmètre (somme des côtés) au lieu de l''aire (produit longueur × largeur), et l''unité devrait être cm et non cm²"},{"id":"b","label":"Elle a simplement oublié de diviser par 2 : l''aire d''un rectangle est (L + l) / 2"},{"id":"c","label":"Elle a additionné au lieu de multiplier, mais l''unité cm² est correcte pour un périmètre"},{"id":"d","label":"Le calcul est correct mais elle aurait dû écrire 26 cm au lieu de 26 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Emma commet une double erreur. Premièrement, elle additionne les quatre côtés (8 + 5 + 8 + 5 = 26), ce qui correspond au calcul du PÉRIMÈTRE et non de l''aire. Le périmètre est la longueur du contour, exprimé en cm (unité de longueur). L''aire mesure la surface intérieure et se calcule par le produit Longueur × largeur = 8 × 5 = 40, exprimé en cm² (unité de surface). Deuxièmement, Emma utilise l''unité cm² pour un résultat qui est en réalité un périmètre (qui s''exprime en cm). Cette confusion entre grandeurs de dimensions différentes (longueur vs surface) est une erreur conceptuelle fondamentale. Rappel : le périmètre d''un rectangle est P = 2 × (L + l) = 2 × (8 + 5) = 26 cm. L''aire est A = L × l = 8 × 5 = 40 cm².',
  'Confondre le calcul du périmètre (somme des longueurs des côtés) et celui de l''aire (produit des dimensions). L''élève ne distingue pas les grandeurs géométriques ni leurs unités associées (cm vs cm²).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — RÉPONSE COURTE — Somme des angles d''un triangle (CONSOLIDATION)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'reponse_courte',
  'Dans un triangle ABC, Emma mesure l''angle A = 65° et l''angle B = 50°. Elle affirme que l''angle C mesure 75° car « il faut que le plus grand angle soit en face du plus grand côté ». Calculez la vraie mesure de l''angle C (en degrés, nombre entier uniquement).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["65","65°","65 degrés","65 degres"]}'::jsonb,
  'La somme des angles d''un triangle est TOUJOURS égale à 180°. C''est une propriété fondamentale valable pour tout triangle du plan euclidien. Donc : angle C = 180° − angle A − angle B = 180° − 65° − 50° = 65°. Emma trouve 75°, ce qui donnerait une somme de 65° + 50° + 75° = 190° ≠ 180°. Son raisonnement sur « le plus grand angle en face du plus grand côté » est une propriété vraie (dans un triangle, le plus grand angle est bien opposé au plus grand côté), mais elle ne permet PAS de calculer la mesure d''un angle. Elle a inventé une valeur au lieu d''appliquer la propriété de la somme des angles. On peut vérifier : 65° + 50° + 65° = 180° ✓. Remarque : ce triangle est isocèle car il a deux angles égaux (A = C = 65°), donc les côtés [BC] et [AB] sont de même longueur.',
  'Ne pas utiliser la propriété « somme des angles d''un triangle = 180° » et inventer une valeur d''angle à partir d''un raisonnement qualitatif incorrect.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — RÉPONSE COURTE — Théorème de Thalès (APPROFONDISSEMENT)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'reponse_courte',
  'Soit un triangle ABC avec une droite (DE) parallèle à (BC), D étant sur [AB] et E sur [AC]. On donne : AD = 3 cm, DB = 5 cm et AE = 4,5 cm. Emma applique le théorème de Thalès et écrit : « AD/AB = AE/EC, donc 3/8 = 4,5/EC, donc EC = 4,5 × 8 / 3 = 12 cm. » Quelle est la valeur correcte de EC ? (Répondez en cm, par exemple : 7,5)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7,5","7.5","7,5 cm","7.5 cm"]}'::jsonb,
  'Le théorème de Thalès, dans la configuration décrite, donne les rapports d''égalité : AD/AB = AE/AC = DE/BC. Emma écrit AD/AB = AE/EC, ce qui est FAUX. Elle mélange AC (longueur totale) et EC (partie du segment). La proportion correcte est : AD/AB = AE/AC. On a AB = AD + DB = 3 + 5 = 8 cm. Donc : 3/8 = 4,5/AC, d''où AC = 4,5 × 8 / 3 = 12 cm. Par conséquent, EC = AC − AE = 12 − 4,5 = 7,5 cm. On peut vérifier avec une autre proportion : AD/DB = AE/EC, soit 3/5 = 4,5/EC, d''où EC = 4,5 × 5 / 3 = 7,5 cm ✓. L''erreur d''Emma est de confondre le segment entier AC avec la partie EC dans le rapport de Thalès. Le théorème met en relation des segments homologues pris sur la même droite à partir du MÊME SOMMET.',
  'Confondre le segment entier (AC) et une de ses parties (EC) dans les rapports du théorème de Thalès. L''élève ne distingue pas les segments « entiers » des segments « partiels » dans la configuration.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — QCM — Analyse de construction géométrique avec erreurs multiples (APPROFONDISSEMENT)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'qcm',
  'Emma doit construire un triangle ABC tel que AB = 6 cm, l''angle en A = 40° et l''angle en B = 60°. Elle procède ainsi : (1) elle trace [AB] = 6 cm, (2) elle construit un angle de 40° en A, (3) elle construit un angle de 60° en B, (4) elle affirme que l''angle en C vaut 90° car « 40 + 60 = 100 et il reste 90° ». De plus, elle déclare que le triangle est isocèle. Combien d''erreurs Emma commet-elle dans ses affirmations ?',
  NULL,
  '[{"id":"a","label":"Aucune erreur : l''angle C vaut bien 90° et le triangle est isocèle"},{"id":"b","label":"Une seule erreur : l''angle C vaut 80° (pas 90°), mais le triangle pourrait être isocèle"},{"id":"c","label":"Deux erreurs : l''angle C vaut 80° (pas 90°) et le triangle n''est pas isocèle car ses trois angles sont différents"},{"id":"d","label":"Trois erreurs : la construction elle-même est impossible avec ces mesures"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Emma commet DEUX erreurs distinctes. Première erreur (calcul de l''angle C) : la somme des angles d''un triangle vaut 180°, donc l''angle C = 180° − 40° − 60° = 80°, et non 90°. Emma fait l''erreur de calcul « 40 + 60 = 100, il reste 90 » : elle calcule 190° − 100° = 90° au lieu de 180° − 100° = 80°, ou bien elle confond la somme totale (180°) avec 190°. Deuxième erreur (triangle isocèle) : un triangle est isocèle s''il possède au moins deux côtés de même longueur, ce qui équivaut à avoir au moins deux angles de même mesure. Or les trois angles mesurent 40°, 60° et 80° : ils sont tous différents. Le triangle ABC est donc scalène (tous les côtés sont de longueurs différentes). Seule la construction aux étapes (1), (2) et (3) est correcte : tracer un segment de 6 cm puis reporter les angles aux extrémités est une méthode valide pour construire un triangle connaissant un côté et deux angles adjacents.',
  'Erreur de calcul sur la somme des angles (utiliser 190° au lieu de 180°) et affirmer qu''un triangle est isocèle sans vérifier l''égalité de deux angles ou deux côtés.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
