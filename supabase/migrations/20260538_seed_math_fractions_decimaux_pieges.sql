-- Série 9 : Fractions et décimaux — Passages et pièges
-- 7 questions, Avancé (Difficile), premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — AMORCE — Vrai/Faux — Fraction et décimal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0090000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : toute fraction peut s''écrire sous forme d''un nombre décimal à virgule finie.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX. Seules les fractions dont le dénominateur (irréductible) ne comporte que les facteurs premiers 2 et/ou 5 ont un développement décimal fini. Par exemple : 1/4 = 0,25 (4 = 2²) ✓, 3/8 = 0,375 (8 = 2³) ✓, 7/20 = 0,35 (20 = 2² × 5) ✓. En revanche : 1/3 = 0,333... (3 est premier, ≠ 2 ou 5) → développement infini périodique. De même : 1/7 = 0,142857142857... Critère : une fraction a/b (irréductible) a un développement décimal fini si et seulement si b = 2^m × 5^n (avec m, n entiers ≥ 0). Cela vient du fait que notre système de numération est en base 10 = 2 × 5.',
  'Croire que toute fraction « donne un nombre à virgule ». C''est confondre nombre décimal (développement fini) et nombre rationnel (qui peut avoir un développement périodique infini).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — QCM — Passage fraction → décimal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0090000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Difficile',
  'qcm',
  'Quelle est l''écriture décimale de la fraction 7/8 ?',
  NULL,
  '[{"id":"a","label":"0,78"},{"id":"b","label":"0,875"},{"id":"c","label":"0,785"},{"id":"d","label":"1,142857..."}]',
  '{"mode":"single_choice","value":"b"}',
  '7/8 = 7 ÷ 8. Posons la division : 7,000 ÷ 8 = 0,875. Vérification : 8 × 0,875 = 7 ✓. Méthode alternative : 7/8 = 7/(2³) = 7 × 5³ / (2³ × 5³) = 7 × 125 / 1000 = 875/1000 = 0,875. Le distracteur 0,78 vient de la juxtaposition des chiffres 7 et 8. Le distracteur 1,142857... correspond à 8/7 (fraction inversée). 7/8 < 1 car le numérateur est inférieur au dénominateur, ce qui élimine la réponse D.',
  'Juxtaposer numérateur et dénominateur pour obtenir le décimal (7/8 → « 0,78 »). La fraction n''est pas une concaténation de chiffres — il faut effectuer la division.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Encadrement d'une fraction entre deux décimaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0090000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Difficile',
  'reponse_courte',
  'Intercalez une fraction entre 0,3 et 0,4. (Donnez une fraction dont le dénominateur est différent de 10.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/3","7/20","3/8","7/20","11/30","2/6","17/50","3/9","13/40","9/25"]}',
  'Plusieurs réponses sont possibles. La plus classique est 1/3 ≈ 0,333... qui est bien entre 0,3 et 0,4. Autres exemples : 7/20 = 0,35 ; 3/8 = 0,375 ; 11/30 ≈ 0,367. Méthode systématique : on cherche a/b tel que 0,3 < a/b < 0,4, soit 0,3b < a < 0,4b. Pour b = 3 : 0,9 < a < 1,2, donc a = 1, ce qui donne 1/3. Pour b = 8 : 2,4 < a < 3,2, donc a = 3, ce qui donne 3/8. L''exercice teste la compréhension de la densité des rationnels : entre deux décimaux, il existe toujours une infinité de fractions.',
  'Ne pas savoir intercaler un nombre entre deux décimaux. Certains candidats croient qu''il n''y a « rien » entre 0,3 et 0,4 (conception discrète de la droite numérique).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Comparaison de fractions
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0090000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Difficile',
  'qcm',
  'Rangez dans l''ordre croissant : 5/6, 7/9, 3/4.',
  NULL,
  '[{"id":"a","label":"3/4 < 7/9 < 5/6"},{"id":"b","label":"7/9 < 3/4 < 5/6"},{"id":"c","label":"3/4 < 5/6 < 7/9"},{"id":"d","label":"5/6 < 7/9 < 3/4"}]',
  '{"mode":"single_choice","value":"a"}',
  'Réduisons au même dénominateur. PPCM(6, 9, 4) = 36. 5/6 = 30/36, 7/9 = 28/36, 3/4 = 27/36. Ordre croissant : 27/36 < 28/36 < 30/36, soit 3/4 < 7/9 < 5/6. Méthode alternative par conversion en décimaux : 3/4 = 0,75, 7/9 ≈ 0,778, 5/6 ≈ 0,833. L''ordre est confirmé : 0,75 < 0,778 < 0,833. Piège : comparer les numérateurs seuls (5 < 7 ?) est FAUX car les dénominateurs sont différents. Pour comparer des fractions, il faut un dénominateur commun ou passer par les décimaux.',
  'Comparer les fractions en ne regardant que les numérateurs ou que les dénominateurs, sans les réduire au même dénominateur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Multiplication par un décimal < 1
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0090000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : quand on multiplie un nombre par 0,8, le résultat est toujours plus petit que le nombre de départ.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX dans le cas général. Si le nombre de départ est POSITIF, alors oui : multiplier par 0,8 (qui est < 1) donne un résultat plus petit. Par exemple : 10 × 0,8 = 8 < 10. Mais si le nombre est NÉGATIF : (−10) × 0,8 = −8, et −8 > −10. Le résultat est plus GRAND que le nombre de départ ! Et si le nombre est 0 : 0 × 0,8 = 0, le résultat est égal. L''affirmation n''est vraie que pour les nombres strictement positifs. Au CRPE, ce type de question teste la rigueur du raisonnement : une propriété qui semble « évidente » peut être fausse si on oublie les cas particuliers (nombres négatifs, zéro).',
  'Raisonner uniquement sur les nombres positifs et généraliser à tous les nombres. La multiplication par un nombre entre 0 et 1 diminue les positifs mais augmente les négatifs (en valeur algébrique).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Fraction irréductible
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0090000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Difficile',
  'reponse_courte',
  'Rendez irréductible la fraction 84/126.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2/3","2 / 3"]}',
  'Il faut trouver le PGCD de 84 et 126. Décompositions : 84 = 2² × 3 × 7 et 126 = 2 × 3² × 7. PGCD(84, 126) = 2 × 3 × 7 = 42. Donc 84/126 = (84÷42)/(126÷42) = 2/3. Vérification : 2 et 3 sont premiers entre eux (PGCD = 1), la fraction est bien irréductible. Méthode alternative (algorithme d''Euclide) : 126 = 1 × 84 + 42, puis 84 = 2 × 42 + 0. Le dernier reste non nul est 42, donc PGCD = 42. Piège : simplifier par 2 donne 42/63, par 3 donne 14/21, par 7 donne 2/3. Si on ne simplifie pas complètement (par exemple s''arrêter à 14/21), la fraction n''est pas irréductible.',
  'Simplifier partiellement (par 2, par 3 ou par 7 seul) sans aller jusqu''à la fraction irréductible. Il faut diviser par le PGCD (42), pas par un diviseur partiel.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Passage décimal → fraction et piège de l'écriture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0090000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Difficile',
  'qcm',
  'Quelle fraction irréductible est égale à 0,125 ?',
  NULL,
  '[{"id":"a","label":"1/8"},{"id":"b","label":"125/100"},{"id":"c","label":"1/125"},{"id":"d","label":"5/40"}]',
  '{"mode":"single_choice","value":"a"}',
  '0,125 = 125/1000. Simplifions : PGCD(125, 1000) = 125. 125/1000 = 1/8. Vérification : 1 ÷ 8 = 0,125 ✓. Le distracteur 125/100 = 1,25 (erreur de placement de virgule). Le distracteur 1/125 = 0,008 (inversion). Le distracteur 5/40 = 1/8 est en fait correct mais n''est PAS irréductible (PGCD(5,40) = 5, donc 5/40 = 1/8). La question demande la fraction irréductible, ce qui exclut 5/40. Connaître les fractions-repères (1/2 = 0,5, 1/4 = 0,25, 1/8 = 0,125, 1/5 = 0,2, 3/4 = 0,75) est indispensable au CRPE pour gagner du temps.',
  'Confondre 0,125 et 1,25 (erreur de placement de la virgule), ou ne pas simplifier la fraction jusqu''à l''irréductible.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
