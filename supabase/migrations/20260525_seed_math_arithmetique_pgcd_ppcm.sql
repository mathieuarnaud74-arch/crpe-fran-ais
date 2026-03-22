-- Série : Arithmétique — Divisibilité, PGCD et PPCM
-- 7 questions, Avancé (Difficile), premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte
-- Thème fondamental CRPE : critères de divisibilité, décomposition en facteurs premiers, PGCD, PPCM

-- Q1 — AMORCE — QCM — Critères de divisibilité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'qcm',
  'Lequel de ces nombres est divisible à la fois par 3 et par 4 ?',
  NULL,
  '[{"id":"a","label":"246"},{"id":"b","label":"312"},{"id":"c","label":"515"},{"id":"d","label":"138"}]',
  '{"mode":"single_choice","value":"b"}',
  'Un nombre est divisible par 3 si la somme de ses chiffres est divisible par 3. Un nombre est divisible par 4 si le nombre formé par ses deux derniers chiffres est divisible par 4. Vérifions chaque candidat : (A) 246 : somme 2+4+6 = 12, div. par 3 ✓. Deux derniers chiffres : 46, 46÷4 = 11,5 ✗. (B) 312 : somme 3+1+2 = 6, div. par 3 ✓. Deux derniers chiffres : 12, 12÷4 = 3 ✓. Divisible par 3 ET par 4. (C) 515 : somme 5+1+5 = 11, pas div. par 3 ✗. (D) 138 : somme 1+3+8 = 12, div. par 3 ✓. Deux derniers chiffres : 38, 38÷4 = 9,5 ✗. Seul 312 satisfait les deux critères. Note : divisible par 3 ET par 4 ⟺ divisible par 12 (car PGCD(3,4) = 1).',
  'Confondre le critère de divisibilité par 4 (les deux derniers chiffres) avec celui par 2 (le dernier chiffre). Ou croire que divisible par 6 = divisible par 3 et par 4 (faux : divisible par 6 = divisible par 2 et par 3).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Réponse courte — Décomposition en facteurs premiers
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'reponse_courte',
  'Décomposez 180 en produit de facteurs premiers.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2² × 3² × 5","2^2 × 3^2 × 5","2² x 3² x 5","4 × 9 × 5","2×2×3×3×5","2 × 2 × 3 × 3 × 5","2^2 x 3^2 x 5"]}'  ,
  '180 = 2 × 90 = 2 × 2 × 45 = 2 × 2 × 3 × 15 = 2 × 2 × 3 × 3 × 5 = 2² × 3² × 5. Méthode systématique : on divise par le plus petit facteur premier possible à chaque étape. 180 ÷ 2 = 90, 90 ÷ 2 = 45, 45 ÷ 3 = 15, 15 ÷ 3 = 5, 5 ÷ 5 = 1. La décomposition en facteurs premiers est UNIQUE (théorème fondamental de l''arithmétique). Elle est la base du calcul du PGCD et du PPCM. Vérification : 4 × 9 × 5 = 36 × 5 = 180 ✓.',
  'S''arrêter trop tôt dans la décomposition (écrire 4 × 45 ou 12 × 15 — ce ne sont pas des facteurs PREMIERS). La décomposition doit n''utiliser que des nombres premiers (2, 3, 5, 7, 11…).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Calcul du PGCD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'reponse_courte',
  'Calculez le PGCD de 84 et 120.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12","PGCD = 12","PGCD(84,120) = 12"]}'  ,
  'Méthode 1 — Décomposition : 84 = 2² × 3 × 7 et 120 = 2³ × 3 × 5. PGCD = produit des facteurs communs avec le plus petit exposant = 2² × 3 = 4 × 3 = 12. Méthode 2 — Algorithme d''Euclide : 120 = 1 × 84 + 36, puis 84 = 2 × 36 + 12, puis 36 = 3 × 12 + 0. Le dernier reste non nul est 12, donc PGCD(84, 120) = 12. Vérification : 84 = 12 × 7 et 120 = 12 × 10. Effectivement, 84 et 120 sont tous deux divisibles par 12, et 7 et 10 sont premiers entre eux (PGCD(7,10) = 1).',
  'Confondre PGCD et PPCM. Le PGCD est le PLUS GRAND diviseur commun (toujours ≤ au plus petit des deux nombres). Le PPCM est le plus petit multiple commun (toujours ≥ au plus grand des deux nombres).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Application du PGCD (problème de partage)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'qcm',
  'Un fleuriste dispose de 48 roses et 36 tulipes. Il veut composer des bouquets identiques en utilisant TOUTES les fleurs, chaque bouquet contenant le même nombre de roses et le même nombre de tulipes. Quel est le nombre maximal de bouquets ?',
  NULL,
  '[{"id":"a","label":"6 bouquets"},{"id":"b","label":"12 bouquets"},{"id":"c","label":"4 bouquets"},{"id":"d","label":"8 bouquets"}]',
  '{"mode":"single_choice","value":"b"}',
  'Le nombre de bouquets doit diviser à la fois 48 (roses) et 36 (tulipes). Le nombre maximal est le PGCD(48, 36). Décomposition : 48 = 2⁴ × 3 et 36 = 2² × 3². PGCD = 2² × 3 = 12. Donc 12 bouquets, chacun contenant 48/12 = 4 roses et 36/12 = 3 tulipes. Vérification : 12 × 4 = 48 roses ✓ et 12 × 3 = 36 tulipes ✓. Ce type de problème (« partager en parts maximales identiques ») est un classique du PGCD au CRPE. Le mot-clé est « nombre maximal de parts identiques » → PGCD.',
  'Confondre PGCD et PPCM. Le PPCM(48, 36) = 144, ce qui n''a pas de sens ici (on ne peut pas faire 144 bouquets avec seulement 48 roses). Le PGCD correspond au partage MAXIMAL.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Réponse courte — Calcul du PPCM
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'reponse_courte',
  'Deux bus partent du même arrêt : l''un passe toutes les 12 minutes, l''autre toutes les 18 minutes. Ils partent ensemble à 8 h 00. À quelle heure se retrouveront-ils à nouveau ensemble ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8 h 36","8h36","8:36","08:36","8 h 36 min","8h36min"]}'  ,
  'On cherche le premier moment où les deux bus sont à nouveau ensemble, soit le PPCM(12, 18) minutes après le départ. Décomposition : 12 = 2² × 3 et 18 = 2 × 3². PPCM = produit des facteurs avec le PLUS GRAND exposant = 2² × 3² = 4 × 9 = 36. Les deux bus se retrouvent après 36 minutes, soit à 8 h 36. Vérification : 36 = 3 × 12 (le bus A passe 3 fois) et 36 = 2 × 18 (le bus B passe 2 fois). Le mot-clé « se retrouver ensemble » → PPCM. Relation utile : PGCD(a,b) × PPCM(a,b) = a × b. Ici : 6 × 36 = 216 = 12 × 18 ✓.',
  'Multiplier 12 × 18 = 216 (trop grand) ou prendre le plus grand des deux (18 minutes — les bus ne se retrouvent pas à 8 h 18 car 18 n''est pas multiple de 12).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Vrai/Faux — Nombres premiers entre eux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : deux nombres consécutifs (comme 14 et 15) sont toujours premiers entre eux.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}',
  'VRAI. Deux nombres consécutifs n et n+1 sont toujours premiers entre eux (PGCD = 1). Démonstration : si d divise n et n+1, alors d divise (n+1) − n = 1. Le seul diviseur de 1 est 1 lui-même, donc d = 1. Donc PGCD(n, n+1) = 1. Exemple : 14 = 2 × 7 et 15 = 3 × 5. Aucun facteur premier commun → PGCD(14, 15) = 1. Attention : « premiers entre eux » ne signifie PAS « premiers ». 14 et 15 ne sont pas des nombres premiers, mais ils sont premiers ENTRE EUX (leur seul diviseur commun est 1).',
  'Confondre « nombre premier » (divisible uniquement par 1 et lui-même) et « premiers entre eux » (PGCD = 1). 14 n''est pas premier, mais 14 et 15 sont premiers entre eux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Problème combiné PGCD + PPCM
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'qcm',
  'On veut carreler exactement (sans découpe) un rectangle de 120 cm × 84 cm avec des carreaux carrés les plus grands possible. Quel est le côté de chaque carreau, et combien en faut-il ?',
  NULL,
  '[{"id":"a","label":"Côté 12 cm, il faut 70 carreaux"},{"id":"b","label":"Côté 6 cm, il faut 280 carreaux"},{"id":"c","label":"Côté 24 cm, il faut 35 carreaux"},{"id":"d","label":"Côté 12 cm, il faut 84 carreaux"}]',
  '{"mode":"single_choice","value":"a"}',
  'Le côté du carreau doit diviser à la fois 120 et 84. Le plus grand possible est le PGCD(120, 84). Décomposition : 120 = 2³ × 3 × 5 et 84 = 2² × 3 × 7. PGCD = 2² × 3 = 12 cm. Nombre de carreaux : (120/12) × (84/12) = 10 × 7 = 70 carreaux. Vérification : 70 carreaux de 12 cm couvrent 70 × 144 cm² = 10 080 cm². Aire du rectangle = 120 × 84 = 10 080 cm² ✓. Le distracteur C (24 cm) ne fonctionne pas car 84/24 = 3,5 — il faudrait découper des carreaux. Le PGCD garantit un pavage exact sans découpe.',
  'Essayer des diviseurs par tâtonnement au lieu d''utiliser le PGCD. Ou choisir un carreau trop grand qui ne divise pas les deux dimensions exactement.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
