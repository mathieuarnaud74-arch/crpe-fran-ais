-- Seed: Sujet blanc CRPE — Épreuve de mathématiques (7 exercices)
-- Série transversale simulant une épreuve réelle du CRPE
-- Chaque question couvre un domaine différent du programme

-- Q1 — Arithmétique : PGCD et simplification de fraction (réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1', 'Avance', 'reponse_courte',
  'Déterminer le PGCD de 252 et 180, puis simplifier la fraction 180/252. Donner le résultat sous forme irréductible.',
  NULL, NULL,
  '{"mode":"text","acceptableAnswers":["5/7"]}'::jsonb,
  'On applique l''algorithme d''Euclide :\n• 252 = 1 × 180 + 72\n• 180 = 2 × 72 + 36\n• 72 = 2 × 36 + 0\n\nLe dernier reste non nul est 36, donc PGCD(252, 180) = 36.\n\nSimplification : 180/252 = (180 ÷ 36) / (252 ÷ 36) = 5/7.\n\nLa fraction 5/7 est irréductible car PGCD(5, 7) = 1 (5 et 7 sont premiers entre eux).',
  'Erreur fréquente : simplifier par un diviseur commun partiel (par exemple par 6 ou 12) sans aller jusqu''au PGCD, obtenant une fraction comme 30/42 ou 15/21 qui n''est pas irréductible.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Géométrie : aire et médiane d'un triangle (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1', 'Avance', 'qcm',
  'Dans un triangle ABC, la médiane issue de A coupe le segment [BC] en son milieu M. Sachant que l''aire du triangle ABC est 48 cm², quelle est l''aire du triangle ABM ?',
  NULL,
  '[{"id":"a","label":"12 cm²"},{"id":"b","label":"24 cm²"},{"id":"c","label":"16 cm²"},{"id":"d","label":"32 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Une médiane d''un triangle partage celui-ci en deux triangles de même aire.\n\nDémonstration : les triangles ABM et ACM partagent la même hauteur issue de A (perpendiculaire à BC). Leurs bases respectives BM et MC sont égales (M est le milieu de [BC]).\n\nAire(ABM) = ½ × BM × h et Aire(ACM) = ½ × MC × h.\nComme BM = MC, on a Aire(ABM) = Aire(ACM) = 48 ÷ 2 = 24 cm².',
  'Erreur fréquente : confondre la médiane avec la hauteur ou croire que la médiane divise l''aire en quatre parties égales, ce qui conduirait à répondre 12 cm².',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Grandeurs et mesures : conversion de volumes et capacités (réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1', 'Avance', 'reponse_courte',
  'Un réservoir cubique a une arête de 2 m. Il est rempli aux trois quarts de sa capacité. On transvase cette eau dans des bidons de 25 L. Combien de bidons faut-il pour contenir toute l''eau ?',
  NULL, NULL,
  '{"mode":"text","acceptableAnswers":["240"]}'::jsonb,
  'Étape 1 — Volume du cube : V = a³ = 2³ = 8 m³.\n\nÉtape 2 — Conversion : 1 m³ = 1 000 L, donc 8 m³ = 8 000 L.\n\nÉtape 3 — Volume d''eau : ¾ × 8 000 = 6 000 L.\n\nÉtape 4 — Nombre de bidons : 6 000 ÷ 25 = 240 bidons.\n\nLa division tombe juste, il faut exactement 240 bidons.',
  'Erreur fréquente : oublier la conversion m³ → L (1 m³ = 1 000 L) et travailler avec 8 L au lieu de 8 000 L, obtenant un résultat absurde. Autre erreur : confondre le volume total (8 000 L) avec le volume d''eau (6 000 L).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Proportionnalité : vitesse, distance, temps (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1', 'Avance', 'qcm',
  'Un train parcourt 315 km en 2 h 15 min à vitesse constante. Combien de temps mettra-t-il pour parcourir 490 km à la même vitesse ?',
  NULL,
  '[{"id":"a","label":"3 h 15 min"},{"id":"b","label":"3 h 30 min"},{"id":"c","label":"3 h 45 min"},{"id":"d","label":"4 h"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Étape 1 — Convertir la durée : 2 h 15 min = 2,25 h.\n\nÉtape 2 — Calculer la vitesse : v = d ÷ t = 315 ÷ 2,25 = 140 km/h.\n\nVérification : 140 × 2,25 = 140 × 2 + 140 × 0,25 = 280 + 35 = 315 ✓\n\nÉtape 3 — Calculer le temps pour 490 km : t = d ÷ v = 490 ÷ 140 = 3,5 h = 3 h 30 min.\n\nOn peut aussi raisonner par proportionnalité : 490/315 = 14/9, donc t = 2,25 × 14/9 = 31,5/9 = 3,5 h.',
  'Erreur fréquente : convertir 2 h 15 min en 2,15 h au lieu de 2,25 h (confusion entre notation décimale et notation sexagésimale du temps), ce qui fausse toute la suite du calcul.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Statistiques : effet d'une translation sur les indicateurs (vrai/faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1', 'Avance', 'vrai_faux',
  'Dans une série statistique, si on ajoute la même constante k (avec k > 0) à toutes les valeurs, alors la médiane augmente de k mais l''étendue reste inchangée.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''affirmation est VRAIE.\n\n• Effet sur la médiane : ajouter k à chaque valeur translate toute la série de k. L''ordre des valeurs est préservé, donc la valeur médiane augmente exactement de k. Si Med était la médiane, la nouvelle médiane est Med + k.\n\n• Effet sur l''étendue : l''étendue = max − min. Après transformation : (max + k) − (min + k) = max − min. L''étendue est donc inchangée.\n\nPlus généralement, une translation (ajout d''une constante) modifie les indicateurs de position (moyenne, médiane, quartiles) mais pas les indicateurs de dispersion (étendue, écart-type, variance).',
  'Erreur fréquente : penser que l''étendue augmente aussi de k, en calculant (max + k) − min au lieu de (max + k) − (min + k). L''oubli d''ajouter k à TOUTES les valeurs fausse le raisonnement sur la dispersion.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Didactique des mathématiques : analyse d'erreur en numération décimale (réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1', 'Avance', 'reponse_courte',
  'Un élève de CE2 écrit : « 3,5 + 2,41 = 5,46 ». Identifiez l''erreur commise et nommez l''obstacle didactique sous-jacent. Répondez en quelques mots-clés.',
  NULL, NULL,
  '{"mode":"text","acceptableAnswers":["alignement des virgules","numération décimale positionnelle","alignement décimal","alignement de la virgule","mauvais alignement des virgules","erreur d''alignement décimal"]}'::jsonb,
  'Le résultat correct est 3,50 + 2,41 = 5,91.\n\nAnalyse de l''erreur : l''élève a traité séparément la partie entière (3 + 2 = 5) et la partie décimale en juxtaposant les chiffres après la virgule (« 5 » et « 41 ») pour obtenir « 46 ». Il additionne 5 + 41 = 46 comme si les parties décimales étaient des entiers indépendants.\n\nObstacle didactique : c''est un défaut d''alignement des virgules (ou plus précisément de la numération décimale positionnelle). L''élève n''a pas compris que 3,5 = 3,50 et que les dixièmes s''additionnent avec les dixièmes, les centièmes avec les centièmes.\n\nRemédiation : travailler avec un tableau de numération (unités, dixièmes, centièmes) et habituer l''élève à compléter avec des zéros pour aligner les rangs décimaux.',
  'Erreur fréquente du candidat au CRPE : décrire l''erreur de l''élève sans nommer l''obstacle didactique. Le jury attend une analyse en termes de numération positionnelle et d''alignement des virgules, pas seulement un constat « l''élève s''est trompé ».',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Géométrie et mesure : division d'un trapèze en aires égales (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1', 'Avance', 'qcm',
  'Un terrain en forme de trapèze rectangle a pour grande base 30 m, petite base 18 m et hauteur 15 m. On trace un segment parallèle aux bases pour diviser ce terrain en deux parties de même aire. À quelle distance de la grande base (arrondie au dixième) faut-il tracer ce segment ?',
  NULL,
  '[{"id":"a","label":"7,5 m"},{"id":"b","label":"6,6 m"},{"id":"c","label":"5,0 m"},{"id":"d","label":"8,0 m"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Étape 1 — Aire totale du trapèze : A = (B + b) × h / 2 = (30 + 18) × 15 / 2 = 48 × 15 / 2 = 360 m².\n\nÉtape 2 — On cherche x, la distance à la grande base, telle que le trapèze partiel ait une aire de 180 m².\n\nLa longueur du segment parallèle à la distance x de la grande base vaut : l(x) = 30 − (30 − 18)/15 × x = 30 − 0,8x.\n\nÉtape 3 — Aire du trapèze partiel (entre la grande base et le segment) :\nA(x) = (30 + 30 − 0,8x) × x / 2 = (60 − 0,8x) × x / 2 = 180\n\nSoit : (60 − 0,8x) × x = 360\n60x − 0,8x² = 360\n0,8x² − 60x + 360 = 0\nx² − 75x + 450 = 0\n\nÉtape 4 — Discriminant : Δ = 75² − 4 × 450 = 5 625 − 1 800 = 3 825.\n√3 825 ≈ 61,85.\n\nDeux solutions : x = (75 − 61,85) / 2 ≈ 6,6 m ou x = (75 + 61,85) / 2 ≈ 68,4 m.\n\nSeule x ≈ 6,6 m est compatible avec la hauteur du trapèze (15 m).\n\nRéponse : le segment doit être tracé à environ 6,6 m de la grande base.',
  'Erreur fréquente : répondre 7,5 m (la moitié de la hauteur) en pensant qu''il suffit de couper le trapèze à mi-hauteur pour obtenir deux aires égales. Ce raisonnement ne fonctionne que pour un rectangle, pas pour un trapèze dont les bases sont inégales.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
