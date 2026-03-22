-- Série : Logique et raisonnement — Problèmes ouverts
-- 7 questions, Avancé (Difficile), premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte
-- Compétences : déduction, combinatoire, contre-exemples, raisonnement par l'absurde

-- Q1 — AMORCE — Vrai/Faux — Raisonnement par contre-exemple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0140000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement — Problèmes ouverts',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : « Si un nombre est divisible par 4 et par 6, alors il est divisible par 24. »',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX. Contre-exemple : 12 est divisible par 4 (12 = 3×4) et par 6 (12 = 2×6), mais 12 n''est PAS divisible par 24. La bonne règle : si un nombre est divisible par a et par b, il est divisible par PPCM(a, b) — pas par a×b. PPCM(4, 6) = 12 (pas 24 = 4×6). La relation a×b ne vaut que si a et b sont premiers entre eux (PGCD = 1). Ici PGCD(4, 6) = 2 ≠ 1, donc PPCM(4, 6) = 4×6/2 = 12. Au CRPE, savoir produire un contre-exemple est une compétence de raisonnement fondamentale : un seul contre-exemple suffit à invalider une affirmation universelle.',
  'Croire que divisible par a ET par b implique divisible par a×b. C''est vrai seulement si a et b sont premiers entre eux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — QCM — Raisonnement déductif simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0140000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement — Problèmes ouverts',
  'Difficile',
  'qcm',
  'Si « tous les multiples de 6 sont pairs » est vrai, laquelle de ces affirmations est NÉCESSAIREMENT vraie ?',
  NULL,
  '[{"id":"a","label":"Tous les nombres pairs sont des multiples de 6"},{"id":"b","label":"Si un nombre n''est pas pair, alors ce n''est pas un multiple de 6"},{"id":"c","label":"Si un nombre n''est pas un multiple de 6, alors il n''est pas pair"},{"id":"d","label":"Certains nombres impairs sont des multiples de 6"}]',
  '{"mode":"single_choice","value":"b"}',
  'La réponse B est la CONTRAPOSÉE de l''affirmation initiale. Si « A ⟹ B » (tout multiple de 6 est pair), alors « non B ⟹ non A » (tout nombre non pair n''est pas un multiple de 6) est AUSSI VRAIE. La contraposée est logiquement équivalente à l''implication directe. La réponse A est la RÉCIPROQUE (B ⟹ A), qui n''est PAS nécessairement vraie (4 est pair mais pas multiple de 6). La réponse C est l''INVERSE (non A ⟹ non B), qui n''est pas nécessairement vraie non plus. Au CRPE, distinguer implication, réciproque, contraposée et inverse est une compétence logique attendue.',
  'Confondre réciproque (B⟹A) et contraposée (¬B⟹¬A). La réciproque n''est PAS toujours vraie, la contraposée l''est TOUJOURS.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Combinatoire simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0140000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement — Problèmes ouverts',
  'Difficile',
  'reponse_courte',
  'Avec les chiffres 1, 3, 5 et 7 (chaque chiffre utilisé exactement une fois), combien de nombres de 4 chiffres différents peut-on former ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["24","24 nombres"]}'  ,
  'C''est un problème de permutations. On a 4 chiffres distincts à placer dans 4 positions. Nombre de permutations = 4! = 4 × 3 × 2 × 1 = 24. Raisonnement position par position : 4 choix pour le 1er chiffre, 3 pour le 2e (un chiffre déjà utilisé), 2 pour le 3e, 1 pour le 4e. Total = 4 × 3 × 2 × 1 = 24. Les 24 nombres vont de 1 357 (le plus petit) à 7 531 (le plus grand). Au CRPE, les problèmes de dénombrement utilisent souvent cette logique « arbre des choix » : combien de choix à chaque étape, et on multiplie.',
  'Calculer 4⁴ = 256 (avec répétition autorisée) au lieu de 4! = 24 (sans répétition). L''énoncé dit « chaque chiffre utilisé exactement une fois ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Problème de logique avec tableau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0140000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement — Problèmes ouverts',
  'Difficile',
  'qcm',
  'Alice, Béa et Clara jouent chacune d''un instrument différent parmi piano, violon et flûte. On sait que : (1) Alice ne joue pas du piano. (2) Béa ne joue ni du piano ni de la flûte. Qui joue du piano ?',
  NULL,
  '[{"id":"a","label":"Alice"},{"id":"b","label":"Béa"},{"id":"c","label":"Clara"},{"id":"d","label":"On ne peut pas déterminer"}]',
  '{"mode":"single_choice","value":"c"}',
  'D''après (2), Béa ne joue ni du piano ni de la flûte, donc Béa joue du violon. D''après (1), Alice ne joue pas du piano. Comme Béa joue du violon et Alice ne joue pas du piano, Alice joue de la flûte. Par élimination, Clara joue du piano. Récapitulatif : Alice → flûte, Béa → violon, Clara → piano. Ce type de problème de logique combinatoire se résout par élimination successive. Au CRPE, les problèmes de logique testent la capacité à enchaîner des déductions rigoureuses à partir de contraintes.',
  'Ne pas utiliser la méthode d''élimination systématique. Commencer par l''indice le plus restrictif (ici l''indice 2, qui élimine 2 options pour Béa) accélère la résolution.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Réponse courte — Problème de chiffres
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0140000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement — Problèmes ouverts',
  'Difficile',
  'reponse_courte',
  'Je suis un nombre à deux chiffres. La somme de mes chiffres est 11. Si on inverse mes chiffres, on obtient un nombre qui me dépasse de 27. Qui suis-je ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["47","quarante-sept"]}'  ,
  'Soit le nombre 10a + b (a = chiffre des dizaines, b = chiffre des unités). Conditions : a + b = 11 et (10b + a) − (10a + b) = 27. La 2e équation se simplifie : 9b − 9a = 27 → b − a = 3. Système : a + b = 11 et b − a = 3. Addition des deux : 2b = 14 → b = 7. Donc a = 11 − 7 = 4. Le nombre est 47. Vérification : somme des chiffres = 4 + 7 = 11 ✓. Nombre inversé = 74. Différence = 74 − 47 = 27 ✓. Ce type de problème « qui suis-je » est un classique de mise en équation avec raisonnement sur les chiffres.',
  'Se tromper dans l''expression du nombre inversé (écrire ba au lieu de 10b+a), ou faire une erreur de signe dans la différence.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Raisonnement par l'absurde
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0140000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement — Problèmes ouverts',
  'Difficile',
  'qcm',
  'On veut montrer que √2 n''est pas un nombre rationnel. Quel type de raisonnement utilise-t-on classiquement ?',
  NULL,
  '[{"id":"a","label":"Le raisonnement par récurrence"},{"id":"b","label":"Le raisonnement par l''absurde : on suppose que √2 = p/q (fraction irréductible) et on aboutit à une contradiction"},{"id":"c","label":"Le raisonnement par contraposée"},{"id":"d","label":"Un calcul direct de √2"}]',
  '{"mode":"single_choice","value":"b"}',
  'La preuve classique de l''irrationalité de √2 utilise le raisonnement par l''absurde. On suppose que √2 = p/q avec p et q entiers, la fraction étant irréductible (PGCD(p,q) = 1). Alors 2 = p²/q², soit p² = 2q². Donc p² est pair, ce qui implique que p est pair (car le carré d''un impair est impair). Écrivons p = 2k. Alors 4k² = 2q², soit q² = 2k². Donc q est aussi pair. Contradiction : p et q sont tous les deux pairs, donc la fraction n''est pas irréductible. L''hypothèse initiale (√2 rationnel) est donc fausse. Ce raisonnement est un classique de la culture mathématique attendue au CRPE.',
  'Confondre les types de raisonnement (récurrence, contraposée, absurde). Le raisonnement par l''absurde suppose la négation de ce qu''on veut montrer et aboutit à une contradiction.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Problème ouvert de dénombrement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0140000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement — Problèmes ouverts',
  'Difficile',
  'reponse_courte',
  'Lors d''un tournoi, chaque équipe rencontre chaque autre équipe exactement une fois. Il y a 10 équipes. Combien de matchs sont joués au total ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["45","45 matchs"]}'  ,
  'Chaque match oppose 2 équipes parmi 10. Le nombre de matchs = nombre de paires possibles parmi 10 = C(10,2) = 10! / (2! × 8!) = (10 × 9) / (2 × 1) = 90/2 = 45. Raisonnement alternatif : la 1re équipe joue 9 matchs, la 2e en joue 8 (elle a déjà joué contre la 1re), etc. Total = 9 + 8 + 7 + ... + 1 = 9 × 10 / 2 = 45. Formule générale : pour n équipes, le nombre de matchs est n(n−1)/2. Vérification pour 4 équipes : 4 × 3 / 2 = 6 matchs (AB, AC, AD, BC, BD, CD — on peut les lister) ✓.',
  'Compter chaque match deux fois : 10 × 9 = 90 (chaque équipe joue 9 matchs, mais chaque match est compté pour les deux équipes). Il faut diviser par 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
