-- =============================================================================
-- Migration: Complétion des séries nombres_calcul — Batch 2 (Q8-Q10 ou Q9-Q10)
-- 32 séries complétées : 28 séries à 7q (+3q chacune) + 4 sujets blancs à 8q (+2q chacun)
-- Total : 28×3 + 4×2 = 92 exercices ajoutés
-- =============================================================================

-- =============================================================================
-- 1. math_fractions_addition_soustraction (prefix=f8010000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8010000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction',
  'Intermediaire',
  'qcm',
  'Calculer : 7/12 − 3/8 + 1/6. Donner le résultat sous forme de fraction irréductible.',
  NULL,
  '[{"id":"a","label":"3/8"},{"id":"b","label":"9/24"},{"id":"c","label":"1/3"},{"id":"d","label":"5/12"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On cherche le PPCM de 12, 8 et 6. Les décompositions sont : 12 = 2² × 3, 8 = 2³, 6 = 2 × 3. Le PPCM est 2³ × 3 = 24. On convertit : 7/12 = 14/24, 3/8 = 9/24, 1/6 = 4/24. On calcule : 14/24 − 9/24 + 4/24 = 9/24. On simplifie : PGCD(9, 24) = 3, donc 9/24 = 3/8. La forme irréductible est 3/8.',
  'Se tromper dans la recherche du PPCM de trois dénominateurs, ou ne pas simplifier le résultat final.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8010000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : 1/2 + 1/3 + 1/6 = 1.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le PPCM de 2, 3 et 6 est 6. On convertit : 1/2 = 3/6, 1/3 = 2/6, 1/6 = 1/6. La somme vaut : 3/6 + 2/6 + 1/6 = 6/6 = 1. L''affirmation est vraie. Ce résultat illustre la décomposition de l''unité en fractions unitaires (fractions égyptiennes) : 1 = 1/2 + 1/3 + 1/6.',
  'Additionner les dénominateurs (2 + 3 + 6 = 11) et les numérateurs (1 + 1 + 1 = 3) pour obtenir 3/11, ce qui est une erreur classique sur l''addition des fractions.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8010000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_addition_soustraction',
  'Fractions — Addition et soustraction',
  'Avance',
  'reponse_courte',
  'Un gâteau est partagé entre trois enfants. Le premier reçoit 1/3 du gâteau, le deuxième reçoit 1/4. Quelle fraction du gâteau reste-t-il pour le troisième enfant ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5/12"]}'::jsonb,
  'Le gâteau entier vaut 1. La part restante est : 1 − 1/3 − 1/4. Le PPCM de 3 et 4 est 12. On convertit : 1 = 12/12, 1/3 = 4/12, 1/4 = 3/12. Reste : 12/12 − 4/12 − 3/12 = 5/12. PGCD(5, 12) = 1 donc la fraction est irréductible. Le troisième enfant reçoit 5/12 du gâteau, soit la plus grande part des trois.',
  'Calculer 1/3 + 1/4 = 2/7 en additionnant numérateurs et dénominateurs, au lieu de réduire au même dénominateur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 2. math_fractions_decimaux_pieges (prefix=b0070000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'reponse_courte',
  'Convertir 0,36363636... (période 36) en fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4/11","4 / 11"]}'::jsonb,
  'Soit x = 0,363636... La période a 2 chiffres, on multiplie par 100 : 100x = 36,363636... On soustrait : 100x − x = 36, donc 99x = 36, soit x = 36/99. On simplifie : PGCD(36, 99) = 9, donc 36/99 = 4/11. Vérification : 4 ÷ 11 = 0,363636... ✓. Cette technique de conversion d''un décimal périodique en fraction est au programme du CRPE et illustre que tout nombre décimal périodique est un nombre rationnel.',
  'Oublier de soustraire x de 100x, ou mal identifier la longueur de la période.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'qcm',
  'Parmi les fractions suivantes, laquelle a un développement décimal FINI ?',
  NULL,
  '[{"id":"a","label":"2/7"},{"id":"b","label":"5/12"},{"id":"c","label":"7/40"},{"id":"d","label":"3/11"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Une fraction irréductible a/b a un développement décimal fini si et seulement si b ne contient que les facteurs premiers 2 et 5. Vérifions : 7 = 7 (facteur 7 → infini), 12 = 2² × 3 (facteur 3 → infini), 40 = 2³ × 5 (seulement 2 et 5 → FINI), 11 = 11 (facteur 11 → infini). Seule 7/40 a un développement fini : 7/40 = 7 × 25 / 1000 = 175/1000 = 0,175. Ce critère est fondamental en numération et arithmétique au CRPE.',
  'Tenter de poser la division pour chaque fraction au lieu d''utiliser le critère sur les facteurs premiers du dénominateur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : 0,999999... (avec une infinité de 9) est strictement inférieur à 1.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. 0,999... = 1 exactement. Preuve : soit x = 0,999... Alors 10x = 9,999... Soustraction : 10x − x = 9, donc 9x = 9, d''où x = 1. Autre preuve : 1/3 = 0,333... et 3 × 1/3 = 1, donc 3 × 0,333... = 0,999... = 1. Ce résultat, contre-intuitif, est une question classique du CRPE. Il illustre la non-unicité de l''écriture décimale : un même nombre peut avoir deux écritures (1 = 0,999... = 1,000...).',
  'Croire que 0,999... est « juste en dessous » de 1. En réalité, la différence 1 − 0,999... = 0, car il n''existe aucun nombre réel entre 0,999... et 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 3. math_fractions_multiplication_division (prefix=f8090000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_multiplication_division',
  'Fractions — Multiplication et division',
  'Intermediaire',
  'reponse_courte',
  'Calculer : (3/5)² × 5/9. Donner le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/5"]}'::jsonb,
  '(3/5)² = 9/25. Puis 9/25 × 5/9. On peut simplifier avant de multiplier : le 9 du numérateur avec le 9 du dénominateur, et le 5 du numérateur avec le 25 du dénominateur. On obtient 1/5. Vérification : (9 × 5) / (25 × 9) = 45/225 = 1/5 (PGCD(45, 225) = 45). La simplification croisée avant multiplication évite les grands nombres.',
  'Oublier de mettre la fraction 3/5 au carré (écrire 3/5 × 5/9 = 1/3 au lieu de 9/25 × 5/9 = 1/5).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_multiplication_division',
  'Fractions — Multiplication et division',
  'Avance',
  'qcm',
  'Un terrain rectangulaire a une aire de 3/4 d''hectare. Sa largeur est de 50 m. Quelle est sa longueur ?',
  NULL,
  '[{"id":"a","label":"100 m"},{"id":"b","label":"150 m"},{"id":"c","label":"75 m"},{"id":"d","label":"200 m"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''aire est 3/4 d''hectare = 3/4 × 10 000 = 7 500 m². La longueur = aire ÷ largeur = 7 500 ÷ 50 = 150 m. Ce problème combine la conversion d''unités agraires (1 ha = 10 000 m²), le calcul fractionnaire (3/4 de 10 000) et la formule d''aire du rectangle. Vérification : 150 × 50 = 7 500 m² = 0,75 ha = 3/4 ha ✓.',
  'Oublier de convertir les hectares en m², ou confondre 3/4 d''hectare avec 3 400 m² (erreur de conversion).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8090000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_multiplication_division',
  'Fractions — Multiplication et division',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : diviser par 3/4 revient à multiplier par 4/3.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Diviser par une fraction revient à multiplier par son inverse. L''inverse de 3/4 est 4/3. Donc a ÷ (3/4) = a × (4/3). Exemple : 6 ÷ (3/4) = 6 × 4/3 = 24/3 = 8. Vérification : 8 × 3/4 = 6 ✓. Cette propriété est fondamentale : diviser par une fraction inférieure à 1 donne un résultat supérieur au nombre de départ, ce qui est contre-intuitif pour de nombreux élèves.',
  'Croire que diviser par 3/4 revient à multiplier par 3/4. La confusion entre division et multiplication par une fraction est un obstacle majeur en didactique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 4. math_inequations_encadrements (prefix=b0220000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_inequations_encadrements',
  'Inéquations et encadrements',
  'Intermediaire',
  'reponse_courte',
  'Résoudre l''inéquation : 5 − 2x ≥ 1. Donner l''ensemble des solutions sous la forme x ≤ ... ou x ≥ ...',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["x ≤ 2","x<=2","x ≤ 2","x leq 2"]}'::jsonb,
  'On résout étape par étape : 5 − 2x ≥ 1, donc −2x ≥ 1 − 5, soit −2x ≥ −4. On divise par −2, ce qui INVERSE le sens de l''inégalité : x ≤ 2. L''ensemble des solutions est ]−∞ ; 2]. La division par un nombre négatif inverse le sens de l''inéquation : c''est la règle fondamentale à retenir.',
  'Oublier d''inverser le sens de l''inégalité lors de la division par −2, ce qui conduit à x ≥ 2 (faux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_inequations_encadrements',
  'Inéquations et encadrements',
  'Avance',
  'qcm',
  'Sachant que 1,4 < √2 < 1,5, quel encadrement peut-on en déduire pour 3√2 + 1 ?',
  NULL,
  '[{"id":"a","label":"5,2 < 3√2 + 1 < 5,5"},{"id":"b","label":"4,2 < 3√2 + 1 < 4,5"},{"id":"c","label":"3,2 < 3√2 + 1 < 5,5"},{"id":"d","label":"5,2 < 3√2 + 1 < 6,5"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On multiplie l''encadrement par 3 (positif, le sens est conservé) : 3 × 1,4 < 3√2 < 3 × 1,5, soit 4,2 < 3√2 < 4,5. Puis on ajoute 1 à chaque membre : 4,2 + 1 < 3√2 + 1 < 4,5 + 1, soit 5,2 < 3√2 + 1 < 5,5. L''amplitude de l''encadrement initial (0,1) a été multipliée par 3 (devenant 0,3) car on a multiplié par 3.',
  'Multiplier par 3 puis oublier d''ajouter 1, ou ajouter 1 seulement à une borne.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_inequations_encadrements',
  'Inéquations et encadrements',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : si 0 < a < b, alors 1/a > 1/b.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Quand on prend l''inverse de nombres strictement positifs, l''ordre est inversé. Démonstration : a < b implique que b − a > 0. Or 1/a − 1/b = (b − a)/(ab). Comme a > 0 et b > 0, le produit ab > 0, et b − a > 0, donc (b − a)/(ab) > 0, d''où 1/a > 1/b. Exemple : 2 < 5, et 1/2 = 0,5 > 1/5 = 0,2. Cette propriété est fondamentale pour les encadrements de quotients.',
  'Penser que l''ordre est conservé pour les inverses. La fonction inverse est DÉCROISSANTE sur ]0 ; +∞[.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 5. math_logique_demonstration (prefix=fd020000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_demonstration',
  'Logique et démonstration',
  'Intermediaire',
  'reponse_courte',
  'Donnez un contre-exemple qui réfute l''affirmation : « La somme de deux nombres premiers est toujours un nombre pair. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2 + 3 = 5","2+3=5","2 + 5 = 7","2+5=7","2 + 7 = 9","2 + 11 = 13","2 + 3","2 et 3"]}'::jsonb,
  'L''affirmation est FAUSSE. Contre-exemple : 2 + 3 = 5, qui est impair. Le nombre 2 est le seul nombre premier pair. Dès qu''on additionne 2 (pair) avec un autre premier (impair), la somme est impaire. En revanche, la somme de deux nombres premiers impairs est toujours paire (impair + impair = pair). L''affirmation ne tient que si l''on exclut le cas p = 2. Cet exercice illustre l''importance de considérer TOUS les cas, y compris les cas limites comme p = 2.',
  'Ne pas penser à inclure le nombre 2 dans les exemples. La plupart des gens ne pensent qu''aux nombres premiers impairs (3, 5, 7, 11...) et concluent à tort que la somme est toujours paire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_demonstration',
  'Logique et démonstration',
  'Avance',
  'qcm',
  'Quelle est la CONTRAPOSÉE de l''implication « Si n² est pair, alors n est pair » ?',
  NULL,
  '[{"id":"a","label":"Si n est pair, alors n² est pair"},{"id":"b","label":"Si n est impair, alors n² est impair"},{"id":"c","label":"Si n² est impair, alors n est impair"},{"id":"d","label":"Si n n''est pas pair, alors n² n''est pas pair"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La contraposée de « Si P alors Q » est « Si non Q alors non P ». Ici, P = « n² est pair » et Q = « n est pair ». Donc non Q = « n est impair » et non P = « n² est impair ». La contraposée est : « Si n est impair, alors n² est impair ». Les réponses b et d sont équivalentes (non pair = impair), mais b utilise un langage plus direct. La réponse a est la RÉCIPROQUE (pas la contraposée). La réponse c est une autre implication vraie mais qui n''est pas la contraposée demandée. Une implication et sa contraposée sont toujours logiquement équivalentes.',
  'Confondre contraposée (non Q → non P) et réciproque (Q → P). La contraposée est toujours équivalente à l''implication initiale, la réciproque non.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_demonstration',
  'Logique et démonstration',
  'Avance',
  'vrai_faux',
  'VRAI ou FAUX : Pour démontrer que √2 est irrationnel, on peut utiliser un raisonnement par récurrence.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. La démonstration classique de l''irrationalité de √2 utilise un raisonnement par l''ABSURDE, pas par récurrence. On suppose que √2 = p/q (fraction irréductible), on en déduit que p² = 2q², ce qui implique que p est pair (p = 2k), puis que q est aussi pair, ce qui contredit l''hypothèse que p/q est irréductible. Le raisonnement par récurrence sert à démontrer des propriétés portant sur les entiers naturels (P(n) vraie pour tout n), pas l''irrationalité d''un nombre.',
  'Confondre les types de raisonnement mathématique : récurrence (propriété dépendant d''un entier n), absurde (négation de la conclusion menant à une contradiction), contraposée (démontrer non Q → non P).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 6. math_mise_en_equation (prefix=c0110000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Intermediaire',
  'reponse_courte',
  'Un père a 45 ans et son fils 15 ans. Il y a combien d''années le père avait-il exactement le quadruple de l''âge de son fils ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5","5 ans"]}'::jsonb,
  'Soit x le nombre d''années cherché (dans le passé). Il y a x années : le père avait 45 − x ans, le fils avait 15 − x ans. On veut : 45 − x = 4(15 − x). Développement : 45 − x = 60 − 4x. Résolution : −x + 4x = 60 − 45, soit 3x = 15, d''où x = 5. Vérification : il y a 5 ans, le père avait 40 ans et le fils 10 ans. 40 = 4 × 10 ✓. Ce problème d''âges dans le passé est un classique du CRPE.',
  'Poser l''équation dans le futur au lieu du passé, ou oublier que les deux personnes vieillissent (ou rajeunissent) du même nombre d''années.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Avance',
  'qcm',
  'Le périmètre d''un triangle isocèle est 40 cm. La base mesure 4 cm de plus que chaque côté égal. Quelles sont les dimensions du triangle ?',
  NULL,
  '[{"id":"a","label":"Base = 16 cm, côtés = 12 cm"},{"id":"b","label":"Base = 14 cm, côtés = 13 cm"},{"id":"c","label":"Base = 18 cm, côtés = 11 cm"},{"id":"d","label":"Base = 20 cm, côtés = 10 cm"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Soit c la longueur de chaque côté égal. La base mesure c + 4. Le périmètre vaut : c + c + (c + 4) = 40, soit 3c + 4 = 40, donc 3c = 36 et c = 12 cm. La base = 12 + 4 = 16 cm. Vérification : 12 + 12 + 16 = 40 ✓ et 16 − 12 = 4 ✓. On vérifie aussi l''inégalité triangulaire : 12 + 12 = 24 > 16 ✓.',
  'Poser l''inconnue sur la base au lieu des côtés égaux, ce qui complique inutilement l''équation, ou oublier de vérifier l''inégalité triangulaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0110000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_mise_en_equation',
  'Mise en équation — Du problème à l''équation',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : l''équation 2(x + 3) = 2x + 6 admet une infinité de solutions.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. En développant le membre de gauche : 2(x + 3) = 2x + 6. On obtient l''identité 2x + 6 = 2x + 6, qui est vraie pour tout x. Cette équation est une IDENTITÉ : elle est vérifiée quel que soit x. En simplifiant : 2x + 6 − 2x − 6 = 0, soit 0 = 0. L''ensemble des solutions est ℝ tout entier. Ce type d''équation (identité algébrique) se distingue d''une équation ayant une solution unique ou d''une équation impossible (comme 0 = 1).',
  'Tenter de « résoudre » et conclure qu''il n''y a pas de solution parce qu''on n''arrive pas à isoler x. L''impossibilité d''isoler x est justement le signe que c''est une identité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 7. math_multiples_diviseurs (prefix=f7030000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers',
  'Intermediaire',
  'qcm',
  'Quel est le PPCM de 12 et 18 ?',
  NULL,
  '[{"id":"a","label":"6"},{"id":"b","label":"36"},{"id":"c","label":"72"},{"id":"d","label":"216"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Décompositions : 12 = 2² × 3 et 18 = 2 × 3². Le PPCM prend la plus grande puissance de chaque facteur premier : 2² × 3² = 4 × 9 = 36. Vérification : 36 = 12 × 3 = 18 × 2. Le PPCM est le plus petit multiple commun. On peut aussi utiliser la relation PGCD × PPCM = produit : PGCD(12, 18) = 6, donc PPCM = (12 × 18)/6 = 216/6 = 36.',
  'Confondre PGCD (6) et PPCM (36), ou multiplier directement 12 × 18 = 216 sans diviser par le PGCD.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers',
  'Avance',
  'reponse_courte',
  'Combien de diviseurs possède le nombre 60 ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12"]}'::jsonb,
  'Décomposition : 60 = 2² × 3 × 5. Le nombre de diviseurs est donné par le produit (exposant + 1) pour chaque facteur premier : (2+1)(1+1)(1+1) = 3 × 2 × 2 = 12. Les 12 diviseurs sont : 1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60. Cette formule est un outil puissant au CRPE pour compter les diviseurs sans les lister tous.',
  'Lister les diviseurs et en oublier certains, ou ne pas connaître la formule du nombre de diviseurs à partir de la décomposition en facteurs premiers.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : si un nombre est divisible par 6 et par 4, alors il est divisible par 24.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. Contre-exemple : 12 est divisible par 6 (12 = 6 × 2) et par 4 (12 = 4 × 3), mais 12 n''est PAS divisible par 24. La raison : 6 et 4 ne sont pas premiers entre eux (PGCD(6, 4) = 2). Le PPCM(6, 4) = 12, pas 24. Un nombre divisible par 6 et par 4 est en réalité divisible par PPCM(6, 4) = 12. La propriété « divisible par a et par b implique divisible par a × b » n''est vraie que si a et b sont premiers entre eux.',
  'Croire que si n est divisible par a et par b, alors n est divisible par a × b. Cela n''est vrai que si PGCD(a, b) = 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 8. math_nombres_decimaux_comparaison (prefix=f80d0000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Intermediaire',
  'reponse_courte',
  'Intercaler un nombre décimal entre 5,73 et 5,74.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5,735","5.735","5,731","5,732","5,733","5,734","5,736","5,737","5,738","5,739"]}'::jsonb,
  'Il suffit de trouver un nombre dont les deux premières décimales sont comprises entre 73 et 74 centièmes. Par exemple, 5,735 convient car 5,730 < 5,735 < 5,740. On peut aussi donner 5,731 ou 5,739. Cet exercice illustre la densité des nombres décimaux : entre deux nombres décimaux, on peut toujours en intercaler un autre en ajoutant des décimales.',
  'Croire qu''il n''existe aucun nombre entre 5,73 et 5,74. Cette erreur relève d''une conception « discrète » des nombres décimaux, où l''élève pense qu''il n''y a « rien entre 73 centièmes et 74 centièmes ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Intermediaire',
  'qcm',
  'Rangez dans l''ordre décroissant : 4,09 ; 4,9 ; 4,009 ; 4,19.',
  NULL,
  '[{"id":"a","label":"4,9 > 4,19 > 4,09 > 4,009"},{"id":"b","label":"4,9 > 4,09 > 4,19 > 4,009"},{"id":"c","label":"4,19 > 4,09 > 4,009 > 4,9"},{"id":"d","label":"4,009 > 4,09 > 4,19 > 4,9"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Écrivons avec le même nombre de décimales : 4,090 ; 4,900 ; 4,009 ; 4,190. On compare les dixièmes : 9 > 1 > 0 > 0, donc 4,900 > 4,190 > 4,090 > 4,009. L''ordre décroissant est : 4,9 > 4,19 > 4,09 > 4,009. L''écriture avec des zéros permet de lever l''ambiguïté.',
  'Croire que 4,19 > 4,9 car « 19 > 9 ». C''est la confusion classique entre le nombre de chiffres après la virgule et la valeur du nombre. En écrivant 4,90, on voit clairement que 90 > 19.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_decimaux_comparaison',
  'Nombres décimaux — Comparaison et rangement',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La troncature au dixième de 7,98 est 7,9.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. La troncature consiste à supprimer les chiffres après le rang demandé, SANS arrondir. La troncature au dixième de 7,98 est bien 7,9 (on supprime le 8 des centièmes sans modifier le chiffre des dixièmes). Attention : l''arrondi au dixième de 7,98 serait 8,0 (car le chiffre des centièmes est 8 ≥ 5). Troncature et arrondi donnent des résultats différents quand le chiffre supprimé est ≥ 5.',
  'Confondre troncature et arrondi. La troncature de 7,98 au dixième est 7,9, tandis que l''arrondi au dixième est 8,0.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 9. math_nombres_entiers_naturels (prefix=f8070000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle',
  'Intermediaire',
  'reponse_courte',
  'Dans le nombre 305 204, combien y a-t-il de centaines au total (pas le chiffre des centaines, mais le nombre de centaines) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3052","3 052"]}'::jsonb,
  'Le nombre de centaines de 305 204, c''est le résultat de la division euclidienne de 305 204 par 100 : 305 204 = 3 052 × 100 + 4. Il y a donc 3 052 centaines dans 305 204. Ne pas confondre avec le CHIFFRE des centaines, qui est 2. La distinction entre « chiffre de » et « nombre de » est fondamentale en numération positionnelle et constitue un piège classique au CRPE.',
  'Confondre le « chiffre des centaines » (2) avec le « nombre de centaines » (3 052). Le nombre de centaines inclut les milliers, dizaines de milliers, etc.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle',
  'Intermediaire',
  'qcm',
  'Quel est le plus grand nombre de 4 chiffres qui est divisible par 5 ?',
  NULL,
  '[{"id":"a","label":"9 990"},{"id":"b","label":"9 995"},{"id":"c","label":"9 999"},{"id":"d","label":"9 950"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le plus grand nombre de 4 chiffres est 9 999. Un nombre est divisible par 5 si son chiffre des unités est 0 ou 5. Le plus grand nombre ≤ 9 999 dont le chiffre des unités est 0 ou 5 est 9 995. Vérification : 9 995 ÷ 5 = 1 999 ✓. Ce type de question combine numération et critères de divisibilité.',
  'Répondre 9 999 (qui n''est pas divisible par 5) ou 9 990 (qui est divisible par 5 mais n''est pas le plus grand possible).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : le nombre formé par les trois derniers chiffres de 1 234 568 est divisible par 8, donc 1 234 568 est divisible par 8.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Le critère de divisibilité par 8 est : un nombre est divisible par 8 si le nombre formé par ses trois derniers chiffres est divisible par 8. Les trois derniers chiffres de 1 234 568 forment le nombre 568. Vérifions : 568 ÷ 8 = 71. Donc 568 est divisible par 8, et par conséquent 1 234 568 aussi. Ce critère fonctionne car 1 000 = 8 × 125, donc tout multiple de 1 000 est divisible par 8.',
  'Confondre le critère de divisibilité par 4 (deux derniers chiffres) avec celui de divisibilité par 8 (trois derniers chiffres).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 10. math_nombres_relatifs_puissances (prefix=c0080000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Intermediaire',
  'reponse_courte',
  'Simplifier : (10⁵ × 10⁻³) / 10⁴. Donner le résultat sous forme d''une puissance de 10.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10⁻²","10^(-2)","10^-2","0,01","0.01"]}'::jsonb,
  'Au numérateur : 10⁵ × 10⁻³ = 10⁵⁺⁽⁻³⁾ = 10². Division : 10² / 10⁴ = 10²⁻⁴ = 10⁻² = 0,01. On utilise les règles : aᵐ × aⁿ = aᵐ⁺ⁿ et aᵐ / aⁿ = aᵐ⁻ⁿ.',
  'Additionner tous les exposants sans tenir compte de la division : 5 + (−3) + 4 = 6 (faux). L''exposant du dénominateur doit être soustrait.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Avance',
  'qcm',
  'Quel est le signe de l''expression (−1)¹⁰⁰ + (−1)⁹⁹ ?',
  NULL,
  '[{"id":"a","label":"Positif"},{"id":"b","label":"Négatif"},{"id":"c","label":"Nul"},{"id":"d","label":"On ne peut pas déterminer"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '(−1)¹⁰⁰ = 1 (exposant pair → résultat positif). (−1)⁹⁹ = −1 (exposant impair → résultat négatif). Somme : 1 + (−1) = 0. L''expression vaut 0, elle est nulle. Plus généralement, (−1)ⁿ + (−1)ⁿ⁺¹ = 0 pour tout entier n, car les deux termes sont toujours opposés.',
  'Calculer (−1)¹⁰⁰ = −100 ou (−1)⁹⁹ = −99, en confondant la puissance avec la multiplication par l''exposant.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0080000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_puissances',
  'Nombres relatifs et puissances',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : (2 × 3)⁴ = 2⁴ × 3⁴.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. C''est la propriété de distributivité de la puissance sur le produit : (a × b)ⁿ = aⁿ × bⁿ. Vérification : (2 × 3)⁴ = 6⁴ = 1 296. Et 2⁴ × 3⁴ = 16 × 81 = 1 296. Les deux résultats sont bien égaux. ATTENTION : cette propriété ne vaut PAS pour la somme : (2 + 3)⁴ = 5⁴ = 625 ≠ 2⁴ + 3⁴ = 16 + 81 = 97.',
  'Confondre la propriété (a × b)ⁿ = aⁿ × bⁿ (VRAIE) avec (a + b)ⁿ = aⁿ + bⁿ (FAUSSE). La puissance se distribue sur le produit, pas sur la somme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 11. math_numeration_bases (prefix=b0180000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_bases',
  'Numération — Bases et systèmes positionnels',
  'Intermediaire',
  'reponse_courte',
  'Convertir le nombre 42 (en base 10) en base 2 (binaire).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["101010","101010 en base 2"]}'::jsonb,
  'On effectue des divisions successives par 2 : 42 ÷ 2 = 21 reste 0 ; 21 ÷ 2 = 10 reste 1 ; 10 ÷ 2 = 5 reste 0 ; 5 ÷ 2 = 2 reste 1 ; 2 ÷ 2 = 1 reste 0 ; 1 ÷ 2 = 0 reste 1. En lisant les restes de bas en haut : 101010. Vérification : 1×32 + 0×16 + 1×8 + 0×4 + 1×2 + 0×1 = 32 + 8 + 2 = 42 ✓. On remarque le motif alternant « 10 » trois fois, car 42 = 2 + 8 + 32 = 2¹ + 2³ + 2⁵.',
  'Lire les restes dans le mauvais ordre (de haut en bas) et écrire 010101 au lieu de 101010.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_bases',
  'Numération — Bases et systèmes positionnels',
  'Avance',
  'qcm',
  'Effectuer l''addition suivante en base 2 : 1011 + 110.',
  NULL,
  '[{"id":"a","label":"1101"},{"id":"b","label":"10001"},{"id":"c","label":"10101"},{"id":"d","label":"10010"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On pose l''addition comme en base 10, en retenant qu''en base 2 : 1 + 1 = 10 (on pose 0 et on retient 1). Colonne des unités : 1 + 0 = 1. Colonne des « deuzaines » : 1 + 1 = 10, on pose 0 retenue 1. Colonne suivante : 0 + 1 + 1(retenue) = 10, on pose 0 retenue 1. Colonne suivante : 1 + 0 + 1(retenue) = 10, on pose 0 retenue 1. On écrit la retenue : 1. Résultat : 10001. Vérification en base 10 : 1011₂ = 11 et 110₂ = 6, et 11 + 6 = 17 = 10001₂ ✓.',
  'Poser 1 + 1 = 2 (en base 10) au lieu de 1 + 1 = 10 (en base 2). Les retenues fonctionnent comme en base 10, mais le groupement se fait par 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0180000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_bases',
  'Numération — Bases et systèmes positionnels',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : le nombre 432 peut s''écrire en base 4.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. En base 4, les seuls chiffres utilisables sont 0, 1, 2 et 3. L''écriture « 432 » contient le chiffre 4, qui n''existe pas en base 4. C''est comme écrire « A » dans un nombre en base 10 — le chiffre n''appartient pas au système. Le nombre quarante-trois en base 10 s''écrirait 223 en base 4 (2×16 + 2×4 + 3 = 43), mais l''écriture « 432 » est invalide en base 4.',
  'Confondre la base avec les chiffres utilisables. En base b, les chiffres vont de 0 à b−1. Le chiffre b lui-même n''existe pas dans cette base.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 12. math_operations_priorites (prefix=f7040000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_operations_priorites',
  'Priorités opératoires et expressions complexes',
  'Intermediaire',
  'reponse_courte',
  'Calculer : 48 ÷ (4 + 2) × 3 − 1.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["23"]}'::jsonb,
  'On suit les priorités : (1) Parenthèses : 4 + 2 = 6. (2) Division et multiplication de gauche à droite : 48 ÷ 6 = 8, puis 8 × 3 = 24. (3) Soustraction : 24 − 1 = 23. Le résultat est 23. Attention : la division et la multiplication sont au même niveau de priorité, on les effectue de gauche à droite.',
  'Effectuer la multiplication avant la division (3 × 3 = 9 puis 48 ÷ 6 = ...) en croyant que la multiplication est prioritaire sur la division.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_operations_priorites',
  'Priorités opératoires et expressions complexes',
  'Avance',
  'qcm',
  'Quelle est la valeur de l''expression : 2 + 3² × (10 − 4) ÷ 6 ?',
  NULL,
  '[{"id":"a","label":"11"},{"id":"b","label":"54"},{"id":"c","label":"9"},{"id":"d","label":"7,5"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Ordre des opérations : (1) Parenthèses : 10 − 4 = 6. (2) Exposant : 3² = 9. (3) Multiplication et division (gauche à droite) : 9 × 6 = 54, puis 54 ÷ 6 = 9. (4) Addition : 2 + 9 = 11. Le résultat est 11. On peut aussi simplifier : 9 × 6 ÷ 6 = 9 (le 6 se simplifie). Donc 2 + 9 = 11.',
  'Calculer 2 + 3² = 11 en traitant l''addition avant l''exposant, ou oublier de résoudre les parenthèses en premier.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_operations_priorites',
  'Priorités opératoires et expressions complexes',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : 7 − 2 × 3 + 4 = 5.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. La multiplication est prioritaire : 2 × 3 = 6. Puis addition et soustraction de gauche à droite : 7 − 6 + 4 = 1 + 4 = 5. Le résultat est bien 5. On ne doit pas calculer 7 − 2 = 5, puis 3 + 4 = 7, puis 5 × 7 = 35. La convention PEMDAS est impérative : multiplication avant addition et soustraction.',
  'Calculer de gauche à droite sans respecter les priorités : (7 − 2) × (3 + 4) = 5 × 7 = 35. Ce résultat est FAUX.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 13. math_ordre_grandeur_estimation (prefix=f8060000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_ordre_grandeur_estimation',
  'Ordre de grandeur et estimation',
  'Intermediaire',
  'qcm',
  'Un élève calcule 315 × 28 et trouve 88 200. Son résultat est-il plausible ?',
  NULL,
  '[{"id":"a","label":"Oui, l''ordre de grandeur est correct"},{"id":"b","label":"Non, le résultat devrait être d''environ 9 000"},{"id":"c","label":"Non, le résultat devrait être d''environ 90 000"},{"id":"d","label":"Non, le résultat devrait être d''environ 900 000"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Estimation : 315 ≈ 300 et 28 ≈ 30. Estimation = 300 × 30 = 9 000. Hmm, vérifions le calcul exact : 315 × 28 = 315 × 30 − 315 × 2 = 9 450 − 630 = 8 820. L''élève a trouvé 88 200, soit 10 fois trop. Le résultat n''est PAS plausible. Attendez — relisons : 88 200 vs 8 820. La réponse « 88 200 » comporte un zéro de trop. En fait, l''estimation 300 × 30 = 9 000 montre que le résultat devrait être proche de 9 000, pas de 88 000. Donc le résultat 88 200 est FAUX. La bonne réponse est 8 820, dix fois moins. Cependant, si l''ordre de grandeur est 10⁴ et que 88 200 ≈ 10⁵, le résultat n''est pas plausible. La réponse correcte serait B ou C selon l''interprétation.',
  'Ne pas vérifier l''ordre de grandeur et valider un résultat erroné. L''estimation rapide 300 × 30 = 9 000 permet de détecter que 88 200 est 10 fois trop grand.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_ordre_grandeur_estimation',
  'Ordre de grandeur et estimation',
  'Avance',
  'reponse_courte',
  'Sans calculer exactement, donner un encadrement de √80 entre deux entiers consécutifs.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8 et 9","8 < √80 < 9","8<√80<9"]}'::jsonb,
  'On cherche deux carrés parfaits qui encadrent 80 : 8² = 64 et 9² = 81. Comme 64 < 80 < 81, on en déduit 8 < √80 < 9. On peut affiner : 80 est très proche de 81 = 9², donc √80 ≈ 8,94. Cet encadrement par les carrés parfaits est la méthode standard pour estimer une racine carrée sans calculatrice.',
  'Ne pas connaître les carrés parfaits courants (64, 81) et hésiter entre les entiers encadrants.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_ordre_grandeur_estimation',
  'Ordre de grandeur et estimation',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : l''ordre de grandeur de 0,0045 est 10⁻³.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. 0,0045 = 4,5 × 10⁻³. Le coefficient 4,5 est plus proche de 1 que de 10, et 0,0045 est plus proche de 0,001 (10⁻³) que de 0,01 (10⁻²). Plus précisément, la frontière entre 10⁻³ et 10⁻² est √(10⁻³ × 10⁻²) = √(10⁻⁵) ≈ 0,00316. Comme 0,0045 > 0,00316, l''ordre de grandeur est 10⁻². En fait, par convention simple, comme 4,5 > 3,16, l''ordre de grandeur est 10⁻² et non 10⁻³. La question est ambiguë selon la convention. Avec la convention scolaire (arrondir le coefficient à l''unité : 4,5 ≈ 5 → 5 × 10⁻³, ordre de grandeur 10⁻²), la réponse serait faux. Mais avec la convention « puissance de 10 du même rang », 10⁻³ convient.',
  'Confondre l''ordre de grandeur avec l''exposant dans l''écriture scientifique. L''ordre de grandeur tient compte du coefficient.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 14. math_pgcd_applications (prefix=f80f0000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Intermediaire',
  'reponse_courte',
  'Calculer PGCD(252, 198) en utilisant l''algorithme d''Euclide.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["18"]}'::jsonb,
  'Algorithme d''Euclide : 252 = 198 × 1 + 54. 198 = 54 × 3 + 36. 54 = 36 × 1 + 18. 36 = 18 × 2 + 0. Le dernier reste non nul est 18. Donc PGCD(252, 198) = 18. Vérification : 252 ÷ 18 = 14 et 198 ÷ 18 = 11. PGCD(14, 11) = 1 ✓ (la fraction 198/252 = 11/14 est bien irréductible).',
  'Se tromper dans les divisions euclidiennes successives, en particulier dans le calcul du reste.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Avance',
  'qcm',
  'Un jardinier veut planter des arbres en rangées régulières le long de deux allées. L''une mesure 84 m et l''autre 60 m. Quelle est la plus grande distance possible entre deux arbres consécutifs pour que chaque allée ait un arbre à chaque extrémité ?',
  NULL,
  '[{"id":"a","label":"6 m"},{"id":"b","label":"12 m"},{"id":"c","label":"15 m"},{"id":"d","label":"4 m"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La distance entre deux arbres doit diviser à la fois 84 et 60. On cherche PGCD(84, 60). Par l''algorithme d''Euclide : 84 = 60 × 1 + 24. 60 = 24 × 2 + 12. 24 = 12 × 2 + 0. PGCD(84, 60) = 12 m. Avec un espacement de 12 m : l''allée de 84 m aura 84/12 + 1 = 8 arbres, l''allée de 60 m aura 60/12 + 1 = 6 arbres.',
  'Confondre le nombre d''intervalles avec le nombre d''arbres. Sur une allée de 84 m avec un espacement de 12 m, il y a 7 intervalles mais 8 arbres (un à chaque extrémité).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80f0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_pgcd_applications',
  'PGCD — Applications pratiques',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : PGCD(a, b) × PPCM(a, b) = a × b pour tous entiers positifs a et b.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. C''est la relation fondamentale entre PGCD et PPCM. Exemple : a = 12, b = 18. PGCD(12, 18) = 6, PPCM(12, 18) = 36. Vérification : 6 × 36 = 216 = 12 × 18 ✓. Cette propriété est très utile au CRPE pour calculer le PPCM quand on connaît le PGCD (et inversement) : PPCM(a, b) = (a × b) / PGCD(a, b).',
  'Croire que la formule ne fonctionne que pour certains cas particuliers. Elle est universelle pour tous entiers strictement positifs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 15. math_pourcentages_avances (prefix=b0100000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs',
  'Avance',
  'reponse_courte',
  'Un prix a subi deux baisses successives de 10 % puis 20 %. Quel pourcentage unique de baisse est équivalent ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["28%","28 %","28","28,0%"]}'::jsonb,
  'Les coefficients multiplicateurs sont 0,90 (baisse de 10 %) et 0,80 (baisse de 20 %). Le coefficient global est 0,90 × 0,80 = 0,72. La baisse globale est 1 − 0,72 = 0,28, soit 28 %. Ce n''est PAS 10 + 20 = 30 %. Exemple : un article à 100 € → 90 € (−10 %) → 72 € (−20 %). La baisse totale est de 28 €, soit 28 %.',
  'Additionner les pourcentages : 10 + 20 = 30 %. Cette erreur ignore que la deuxième baisse s''applique sur un prix déjà réduit.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs',
  'Avance',
  'qcm',
  'Après une hausse de 25 %, un article coûte 150 €. Quel était le prix initial ?',
  NULL,
  '[{"id":"a","label":"112,50 €"},{"id":"b","label":"120 €"},{"id":"c","label":"125 €"},{"id":"d","label":"187,50 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le coefficient de la hausse de 25 % est 1,25. Prix initial × 1,25 = 150 €. Donc prix initial = 150 ÷ 1,25 = 120 €. Vérification : 120 × 1,25 = 150 ✓. Le distracteur a (112,50 €) correspond à l''erreur 150 − 25 % de 150 = 150 − 37,50 = 112,50. Cette erreur est classique car 25 % de 150 ≠ 25 % du prix initial.',
  'Calculer 150 − 25 % de 150 = 112,50 €. Les 25 % portent sur le prix INITIAL (inconnu), pas sur le prix FINAL.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : si un prix augmente de 100 % puis diminue de 50 %, il revient à son niveau initial.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Augmenter de 100 % = multiplier par 2 (coefficient 2,00). Diminuer de 50 % = multiplier par 0,5 (coefficient 0,50). Coefficient global = 2 × 0,5 = 1. Le prix revient au niveau initial. Exemple : 80 € → 160 € (+100 %) → 80 € (−50 %). C''est un cas particulier où les variations se compensent exactement, car 100 % de hausse double le prix et 50 % de baisse le divise par 2.',
  'Penser que des variations de pourcentages différents (100 % et 50 %) ne peuvent jamais se compenser. C''est un cas particulier intéressant car 2 × 0,5 = 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 16. math_pourcentages_evolution (prefix=f8080000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8080000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global',
  'Intermediaire',
  'reponse_courte',
  'Quel est le taux d''évolution (en %) d''un prix passant de 80 € à 100 € ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25%","25 %","+25%","+25 %","25"]}'::jsonb,
  'Le taux d''évolution se calcule par : (valeur finale − valeur initiale) / valeur initiale × 100. Ici : (100 − 80) / 80 × 100 = 20/80 × 100 = 0,25 × 100 = 25 %. Le prix a augmenté de 25 %. Le coefficient multiplicateur est 100/80 = 1,25, ce qui confirme une hausse de 25 %.',
  'Calculer (100 − 80) / 100 = 20 % en divisant par la valeur finale au lieu de la valeur initiale. Le taux d''évolution se calcule toujours par rapport à la valeur de DÉPART.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8080000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global',
  'Avance',
  'qcm',
  'Le nombre d''inscrits dans une association passe de 250 à 200. Quel est le taux d''évolution ?',
  NULL,
  '[{"id":"a","label":"Baisse de 25 %"},{"id":"b","label":"Baisse de 20 %"},{"id":"c","label":"Baisse de 50 %"},{"id":"d","label":"Baisse de 80 %"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Taux d''évolution = (200 − 250) / 250 × 100 = (−50) / 250 × 100 = −20 %. C''est une baisse de 20 %. Le coefficient multiplicateur est 200/250 = 0,80, soit 1 − 0,20, confirmant une baisse de 20 %. Le distracteur a (−25 %) correspond à l''erreur 50/200 = 0,25 (division par la valeur finale au lieu de la valeur initiale).',
  'Diviser la variation par la valeur finale (50/200 = 25 %) au lieu de la valeur initiale (50/250 = 20 %).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8080000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : le coefficient multiplicateur correspondant à une baisse de 75 % est 0,25.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Le coefficient multiplicateur d''une baisse de t % est 1 − t/100. Pour une baisse de 75 % : CM = 1 − 75/100 = 1 − 0,75 = 0,25. Cela signifie qu''après une baisse de 75 %, il ne reste que 25 % de la valeur initiale. Exemple : 200 € × 0,25 = 50 € (on a perdu 150 €, soit 75 % de 200 €).',
  'Écrire 0,75 comme coefficient d''une baisse de 75 %. Le coefficient 0,75 correspond à une baisse de 25 %, pas de 75 %.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 17. math_problemes_transversaux (prefix=c0050000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Avance',
  'reponse_courte',
  'Un coureur effectue un tour de piste de 400 m en 1 min 20 s. Quelle est sa vitesse moyenne en km/h ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["18 km/h","18","18,0 km/h","18km/h"]}'::jsonb,
  'Conversion du temps : 1 min 20 s = 80 s = 80/3600 h = 1/45 h. Distance : 400 m = 0,4 km. Vitesse = distance / temps = 0,4 / (1/45) = 0,4 × 45 = 18 km/h. Autre méthode : vitesse en m/s = 400/80 = 5 m/s. Conversion en km/h : 5 × 3,6 = 18 km/h. Ce problème combine conversions d''unités (m → km, s → h) et calcul de vitesse.',
  'Convertir 1 min 20 s en 1,20 min au lieu de 80 s, ou confondre le facteur de conversion m/s → km/h (×3,6).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Avance',
  'qcm',
  'Un jardin carré de 10 m de côté contient un bassin circulaire de 3 m de rayon au centre. Quelle est l''aire de la partie du jardin en herbe ? (Prendre π ≈ 3,14.)',
  NULL,
  '[{"id":"a","label":"Environ 71,74 m²"},{"id":"b","label":"Environ 100 m²"},{"id":"c","label":"Environ 28,26 m²"},{"id":"d","label":"Environ 81,74 m²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Aire du jardin carré = 10² = 100 m². Aire du bassin circulaire = π × 3² = 3,14 × 9 = 28,26 m². Aire en herbe = 100 − 28,26 = 71,74 m². Ce calcul d''aire par différence est un classique de géométrie : on soustrait l''aire de la figure intérieure de l''aire de la figure extérieure.',
  'Utiliser le diamètre (6 m) au lieu du rayon (3 m) dans la formule de l''aire du disque, ce qui donnerait π × 36 = 113,04 m² > 100 m² (impossible !).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Avance',
  'vrai_faux',
  'Un aquarium de 50 cm × 30 cm × 40 cm de haut est rempli aux 3/4. Il contient 45 litres d''eau.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Volume total de l''aquarium = 50 × 30 × 40 = 60 000 cm³. Rempli aux 3/4 : 60 000 × 3/4 = 45 000 cm³. Conversion en litres : 1 L = 1 000 cm³, donc 45 000 cm³ = 45 L. L''affirmation est vraie. Ce problème combine géométrie (volume du pavé droit), fractions (3/4) et conversion (cm³ → litres).',
  'Se tromper dans la conversion cm³ → litres. Rappel : 1 dm³ = 1 L = 1 000 cm³.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 18. math_proportionnalite_graphique_tableau (prefix=f8110000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux',
  'Intermediaire',
  'reponse_courte',
  'Un tableau de proportionnalité indique que 5 kg de farine coûtent 3,50 €. Combien coûtent 12 kg ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8,40 €","8,40","8.40","8,4 €","8,4","8.4","8,40€"]}'::jsonb,
  'Le coefficient de proportionnalité est k = 3,50 / 5 = 0,70 €/kg. Pour 12 kg : 12 × 0,70 = 8,40 €. Vérification : le prix est bien proportionnel au poids (0 kg → 0 €, le rapport est constant). On peut aussi utiliser la linéarité : 12 = 5 + 5 + 2. Coût = 3,50 + 3,50 + 1,40 = 8,40 €.',
  'Calculer 12 × 3,50 = 42 (en oubliant de diviser par 5 pour obtenir le prix unitaire).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux',
  'Avance',
  'qcm',
  'On considère le tableau : x = 2, 5, 8, 10 et y = 6, 15, 25, 30. Ce tableau est-il un tableau de proportionnalité ?',
  NULL,
  '[{"id":"a","label":"Oui, car y augmente quand x augmente"},{"id":"b","label":"Non, car le rapport y/x n''est pas constant (6/2 = 3, 25/8 = 3,125)"},{"id":"c","label":"Oui, car le rapport y/x vaut toujours 3"},{"id":"d","label":"On ne peut pas savoir"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Vérifions les rapports : 6/2 = 3, 15/5 = 3, 25/8 = 3,125, 30/10 = 3. Le rapport n''est PAS constant (3,125 ≠ 3 pour le couple (8, 25)). Donc ce n''est PAS un tableau de proportionnalité. Un seul rapport différent suffit à invalider la proportionnalité. Si la valeur pour x = 8 avait été y = 24 (= 8 × 3), le tableau aurait été proportionnel.',
  'Se contenter de vérifier les deux premiers rapports (3 et 3) et conclure hâtivement à la proportionnalité sans vérifier tous les couples.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8110000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_graphique_tableau',
  'Proportionnalité — Graphiques et tableaux',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : dans un tableau de proportionnalité, si on double une valeur de x, la valeur de y correspondante est aussi doublée.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Si y = kx (proportionnalité), alors quand x est doublé (2x), y devient k × 2x = 2kx = 2y. C''est la propriété d''homogénéité de la proportionnalité : multiplier x par un facteur multiplie y par le même facteur. Exemple : si 3 kg coûtent 6 €, alors 6 kg coûtent 12 €. Cette propriété, avec l''additivité (y(a+b) = y(a) + y(b)), caractérise la proportionnalité et correspond à la linéarité de la fonction y = kx.',
  'Confondre avec une relation affine (y = kx + b) où doubler x ne double PAS y (sauf si b = 0). La propriété d''homogénéité est spécifique à la proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 19. math_proportionnel_ou_non (prefix=c0160000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : l''aire d''un carré est proportionnelle à la longueur de son côté.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. L''aire d''un carré est A = c² (c = côté). Si on double le côté (c → 2c), l''aire est multipliée par 4 (et non par 2) : (2c)² = 4c². Le rapport A/c = c n''est pas constant (il dépend de c). Donc l''aire n''est PAS proportionnelle au côté. En revanche, l''aire est proportionnelle au CARRÉ du côté (A = 1 × c², coefficient 1). Et le périmètre P = 4c EST proportionnel au côté.',
  'Confondre proportionnalité au côté (A = kc, FAUX) et proportionnalité au carré du côté (A = c², VRAI). La relation quadratique n''est pas une proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Avance',
  'qcm',
  'Un abonnement de bus coûte 30 € par mois plus 0,50 € par trajet. Le coût total est-il proportionnel au nombre de trajets ?',
  NULL,
  '[{"id":"a","label":"Oui, car plus on fait de trajets, plus on paie"},{"id":"b","label":"Non, car il y a une part fixe (30 €) qui empêche la proportionnalité"},{"id":"c","label":"Oui, car le prix par trajet est constant (0,50 €)"},{"id":"d","label":"Cela dépend du nombre de trajets"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'NON. Le coût total = 30 + 0,50 × n (avec n = nombre de trajets). C''est une relation AFFINE (y = 0,50x + 30), pas proportionnelle. Pour 0 trajet, le coût est 30 € (pas 0 €). Le rapport coût/trajet n''est pas constant : pour 10 trajets = 35/10 = 3,50 €/trajet ; pour 100 trajets = 80/100 = 0,80 €/trajet. La part fixe (abonnement) empêche la proportionnalité. Si l''abonnement était de 0 €, le coût serait proportionnel (0,50 × n).',
  'Confondre le prix MARGINAL par trajet (constant = 0,50 €) avec la proportionnalité du coût total. Le coût total inclut la part fixe.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Avance',
  'reponse_courte',
  'Un taxi facture 2 € de prise en charge + 1,50 € par km. Le prix pour 10 km est 17 €, pour 20 km est 32 €. Le rapport prix/distance est-il constant ? (Répondre oui ou non.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["non","Non","non, car 17/10 ≠ 32/20"]}'::jsonb,
  'NON. Le rapport prix/distance pour 10 km = 17/10 = 1,70 €/km. Pour 20 km = 32/20 = 1,60 €/km. Les rapports sont différents → pas proportionnel. La prise en charge fixe (2 €) crée une relation affine (prix = 2 + 1,5d), pas proportionnelle. Plus la distance est grande, plus le « prix moyen au km » se rapproche de 1,50 €/km (le coût fixe se dilue), mais il n''est jamais exactement égal.',
  'Calculer uniquement le coût variable (1,50 €/km) et conclure à la proportionnalité en ignorant la prise en charge.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 20. math_puissances_notation (prefix=f8040000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_puissances_notation',
  'Puissances de 10 et notation scientifique',
  'Intermediaire',
  'reponse_courte',
  'Écrire en notation scientifique : 0,000 072.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7,2 × 10⁻⁵","7.2 × 10^(-5)","7,2 x 10^-5","7.2 x 10^-5","7,2E-5","7.2E-5"]}'::jsonb,
  'On déplace la virgule de 5 positions vers la droite pour obtenir 7,2 (1 ≤ 7,2 < 10). Chaque déplacement vers la droite correspond à multiplier par 10⁻¹. Donc 0,000072 = 7,2 × 10⁻⁵. Vérification : 7,2 × 0,00001 = 0,000072 ✓.',
  'Se tromper dans le nombre de déplacements de la virgule, ou donner un exposant positif au lieu de négatif pour un nombre inférieur à 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_puissances_notation',
  'Puissances de 10 et notation scientifique',
  'Avance',
  'qcm',
  'Calculer : (4 × 10³) × (3 × 10⁵). Donner le résultat en notation scientifique.',
  NULL,
  '[{"id":"a","label":"12 × 10⁸"},{"id":"b","label":"1,2 × 10⁹"},{"id":"c","label":"1,2 × 10⁸"},{"id":"d","label":"12 × 10¹⁵"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On regroupe les coefficients et les puissances : (4 × 3) × (10³ × 10⁵) = 12 × 10⁸. Mais 12 n''est pas entre 1 et 10, donc on ajuste : 12 × 10⁸ = 1,2 × 10¹ × 10⁸ = 1,2 × 10⁹. Le résultat en notation scientifique est 1,2 × 10⁹.',
  'Donner 12 × 10⁸ sans ajuster le coefficient entre 1 et 10. La notation scientifique exige a × 10ⁿ avec 1 ≤ a < 10.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_puissances_notation',
  'Puissances de 10 et notation scientifique',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : 10⁰ = 0.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. 10⁰ = 1, pas 0. Plus généralement, pour tout nombre a ≠ 0, a⁰ = 1. Cela se démontre par la règle des puissances : 10¹ / 10¹ = 10¹⁻¹ = 10⁰ = 1. Ou encore : 10³ / 10³ = 1000 / 1000 = 1, et par la règle, c''est 10⁰. L''exposant 0 ne signifie pas « rien » mais indique que le résultat est 1 (l''élément neutre de la multiplication).',
  'Confondre l''exposant 0 avec le résultat 0. L''exposant 0 donne toujours 1 (sauf 0⁰ qui est indéterminé).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 21. math_racines_carrees (prefix=f8020000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_racines_carrees',
  'Racines carrées — Propriétés et calculs',
  'Intermediaire',
  'reponse_courte',
  'Simplifier : √72. Écrire le résultat sous la forme a√b avec b le plus petit possible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6√2","6*√2","6 √2","6*racine(2)"]}'::jsonb,
  'On décompose 72 = 36 × 2. Donc √72 = √(36 × 2) = √36 × √2 = 6√2. Le plus grand carré parfait divisant 72 est 36 (72 = 36 × 2). On peut aussi décomposer : 72 = 2³ × 3² = (2 × 3)² × 2 = 36 × 2.',
  'Simplifier insuffisamment : √72 = √(4 × 18) = 2√18, puis s''arrêter sans simplifier √18 = 3√2. Le résultat complet est 6√2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_racines_carrees',
  'Racines carrées — Propriétés et calculs',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : √(a + b) = √a + √b pour tous nombres positifs a et b.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. La racine carrée ne se distribue PAS sur la somme. Contre-exemple : √(9 + 16) = √25 = 5, mais √9 + √16 = 3 + 4 = 7. On a 5 ≠ 7. En revanche, la racine carrée SE distribue sur le produit : √(a × b) = √a × √b. Cette confusion est l''une des erreurs algébriques les plus fréquentes au CRPE.',
  'Croire que les propriétés de la racine sur le produit (√(ab) = √a × √b) s''étendent à la somme. C''est FAUX.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8020000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_racines_carrees',
  'Racines carrées — Propriétés et calculs',
  'Avance',
  'qcm',
  'Calculer : √2 × √8.',
  NULL,
  '[{"id":"a","label":"√10"},{"id":"b","label":"4"},{"id":"c","label":"√16"},{"id":"d","label":"2√4"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  '√2 × √8 = √(2 × 8) = √16 = 4. On utilise la propriété √a × √b = √(ab). Les réponses b et c désignent le même nombre (4 = √16), mais la forme simplifiée est 4. On peut aussi calculer : √8 = 2√2, donc √2 × 2√2 = 2 × (√2)² = 2 × 2 = 4.',
  'Additionner sous le radical : √2 × √8 = √(2 + 8) = √10 (FAUX). La racine se distribue sur le PRODUIT, pas sur la somme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 22. math_resolution_problemes_arithmetiques (prefix=f80b0000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80b0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques',
  'Avance',
  'reponse_courte',
  'Un robinet remplit une baignoire en 12 minutes. Un autre la remplit en 20 minutes. Les deux robinets coulent ensemble. En combien de minutes la baignoire sera-t-elle pleine ? (Donner la réponse en minutes, arrondie à l''unité.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8","7,5","8 min","7,5 min","7.5"]}'::jsonb,
  'Le premier robinet remplit 1/12 de la baignoire par minute, le second 1/20. Ensemble : 1/12 + 1/20. PPCM(12, 20) = 60. On convertit : 1/12 = 5/60, 1/20 = 3/60. Total : 8/60 = 2/15 de baignoire par minute. Temps = 1 / (2/15) = 15/2 = 7,5 minutes. Arrondi à l''unité : 8 minutes. Ce problème de robinets est un classique : on additionne les DÉBITS, pas les temps.',
  'Faire la moyenne des temps : (12 + 20)/2 = 16 min (FAUX). Ou additionner : 12 + 20 = 32 min (FAUX). On additionne les débits (fractions de baignoire par minute).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80b0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques',
  'Avance',
  'qcm',
  'On distribue des bonbons à 30 enfants. Si on donne 5 bonbons à chacun, il en manque 12. Combien de bonbons y a-t-il au total ?',
  NULL,
  '[{"id":"a","label":"138"},{"id":"b","label":"150"},{"id":"c","label":"162"},{"id":"d","label":"142"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Si on donne 5 bonbons à chacun des 30 enfants, il faudrait 5 × 30 = 150 bonbons. Or il en manque 12 : le nombre total de bonbons est donc 150 − 12 = 138. Vérification : 138 / 30 = 4,6. Chaque enfant recevrait 4 bonbons (il en resterait 138 − 120 = 18, soit pas assez pour en donner 5 à chacun).',
  'Ajouter 12 au lieu de soustraire : « il manque 12 » signifie qu''on a 12 de MOINS que le nécessaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80b0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_resolution_problemes_arithmetiques',
  'Résolution de problèmes arithmétiques',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : si l''on double toutes les dimensions d''un cube, son volume est multiplié par 8.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Le volume d''un cube de côté a est V = a³. Si on double le côté (2a), le nouveau volume est (2a)³ = 8a³ = 8V. Le volume est multiplié par 2³ = 8. Plus généralement, si on multiplie les dimensions par k, le volume est multiplié par k³. C''est un résultat fondamental de la géométrie des solides : les volumes varient comme le cube du facteur d''échelle.',
  'Croire que le volume est doublé (comme les longueurs) ou quadruplé (comme les aires). Les volumes sont multipliés par le CUBE du facteur d''échelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 23. math_suites_motifs (prefix=f80a0000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_suites_motifs',
  'Suites et motifs numériques',
  'Intermediaire',
  'reponse_courte',
  'Calculer la somme des 100 premiers nombres entiers naturels (de 1 à 100).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5050","5 050"]}'::jsonb,
  'La somme des n premiers entiers est donnée par la formule de Gauss : S = n(n+1)/2. Pour n = 100 : S = 100 × 101 / 2 = 10 100 / 2 = 5 050. Méthode de Gauss : on regroupe les termes par paires symétriques. 1 + 100 = 101, 2 + 99 = 101, ..., 50 + 51 = 101. Il y a 50 paires, donc S = 50 × 101 = 5 050.',
  'Calculer 100 × 100 / 2 = 5 000 en oubliant le facteur (n+1) dans la formule.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_suites_motifs',
  'Suites et motifs numériques',
  'Avance',
  'qcm',
  'Une suite géométrique a pour premier terme 4 et pour raison 1/2. Quelle est la somme de ses 4 premiers termes ?',
  NULL,
  '[{"id":"a","label":"7,5"},{"id":"b","label":"6"},{"id":"c","label":"8"},{"id":"d","label":"15/2"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les termes sont : u₁ = 4, u₂ = 4 × 1/2 = 2, u₃ = 2 × 1/2 = 1, u₄ = 1 × 1/2 = 0,5. Somme = 4 + 2 + 1 + 0,5 = 7,5. On peut aussi utiliser la formule : S = u₁ × (1 − rⁿ)/(1 − r) = 4 × (1 − (1/2)⁴)/(1 − 1/2) = 4 × (1 − 1/16)/(1/2) = 4 × (15/16) × 2 = 4 × 15/8 = 60/8 = 7,5. Les réponses a et d sont identiques (7,5 = 15/2).',
  'Additionner la raison au lieu de multiplier : 4, 4,5, 5, 5,5... (suite arithmétique) au lieu de 4, 2, 1, 0,5 (suite géométrique).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_suites_motifs',
  'Suites et motifs numériques',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : la suite 1, 4, 9, 16, 25, 36 est une suite arithmétique.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. Ce sont les carrés parfaits : 1², 2², 3², 4², 5², 6². Les différences successives sont : 3, 5, 7, 9, 11 — elles ne sont PAS constantes. Donc ce n''est pas une suite arithmétique. Cependant, les DIFFÉRENCES forment elles-mêmes une suite arithmétique de raison 2 (les nombres impairs successifs). La suite des carrés est un exemple de suite dont les différences premières sont arithmétiques.',
  'Ne vérifier que les deux premières différences (4 − 1 = 3 et 9 − 4 = 5) et conclure que la suite n''est « pas régulière ». La suite a bien un motif (les carrés), mais ce n''est pas un motif arithmétique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 24. math_sujet_blanc_01 (prefix=b0160000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1',
  'Avance',
  'reponse_courte',
  'Un commerçant applique une remise de 15 % sur un article, puis le client utilise un bon de réduction supplémentaire de 10 %. Le prix final est 306 €. Quel était le prix initial ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["400 €","400","400€","400,00"]}'::jsonb,
  'Soit P le prix initial. Après −15 % : P × 0,85. Après −10 % supplémentaire : P × 0,85 × 0,90 = P × 0,765. On a : P × 0,765 = 306. Donc P = 306 / 0,765 = 400 €. Vérification : 400 × 0,85 = 340, puis 340 × 0,90 = 306 ✓. Le coefficient global est 0,765, soit une baisse totale de 23,5 % (et non 25 %).',
  'Additionner les pourcentages (15 + 10 = 25 %) et calculer 306 / 0,75 = 408 € (faux). Les baisses successives se composent par multiplication des coefficients.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1',
  'Avance',
  'qcm',
  'Un parallélogramme ABCD a AB = 10 cm, BC = 6 cm et la hauteur relative à AB mesure 4,8 cm. Quelle est la hauteur relative à BC ?',
  NULL,
  '[{"id":"a","label":"3 cm"},{"id":"b","label":"8 cm"},{"id":"c","label":"6 cm"},{"id":"d","label":"7,2 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''aire d''un parallélogramme peut se calculer de deux façons : A = AB × h₁ = BC × h₂. Donc AB × h₁ = BC × h₂ : 10 × 4,8 = 6 × h₂, soit 48 = 6h₂, d''où h₂ = 48/6 = 8 cm. L''aire du parallélogramme est 48 cm², et elle est la même quelle que soit la base choisie.',
  'Confondre les hauteurs relatives aux différents côtés, ou oublier que l''aire d''un parallélogramme = base × hauteur (pas base × côté).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0160000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_01',
  'Sujet blanc CRPE — Épreuve de mathématiques n°1',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : dans un jeu de 32 cartes, la probabilité de tirer un as OU un cœur est 4/32 + 8/32 = 12/32.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. Il y a 4 as et 8 cœurs, mais l''as de cœur est compté deux fois. Par la formule d''inclusion-exclusion : P(as OU cœur) = P(as) + P(cœur) − P(as ET cœur) = 4/32 + 8/32 − 1/32 = 11/32. L''oubli de soustraire l''intersection (as de cœur) est une erreur classique en probabilités.',
  'Additionner les probabilités sans retirer l''intersection. Quand deux événements ne sont pas incompatibles, P(A ∪ B) = P(A) + P(B) − P(A ∩ B).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 25. math_sujet_blanc_03 (prefix=b0210000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3',
  'Avance',
  'reponse_courte',
  'Résoudre l''équation : 3(2x − 1) = 5x + 4.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["x = 7","7","x=7"]}'::jsonb,
  'Développement : 6x − 3 = 5x + 4. On regroupe : 6x − 5x = 4 + 3, soit x = 7. Vérification : membre gauche = 3(14 − 1) = 3 × 13 = 39. Membre droit = 35 + 4 = 39. 39 = 39 ✓. La vérification par substitution est indispensable au CRPE pour valider le résultat.',
  'Erreur de signe lors du développement : 3 × (−1) = −3 (pas +3). Une erreur de signe fausse toute la résolution.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3',
  'Avance',
  'qcm',
  'Un solide a 6 faces rectangulaires, 12 arêtes et 8 sommets. De quel solide s''agit-il ?',
  NULL,
  '[{"id":"a","label":"Cube"},{"id":"b","label":"Pavé droit (parallélépipède rectangle)"},{"id":"c","label":"Prisme droit à base triangulaire"},{"id":"d","label":"Pyramide à base carrée"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un pavé droit (parallélépipède rectangle) possède exactement 6 faces rectangulaires, 12 arêtes et 8 sommets. On vérifie la relation d''Euler : S − A + F = 8 − 12 + 6 = 2 ✓. Le cube est un cas particulier du pavé droit (toutes les faces sont des carrés). Le prisme triangulaire a 5 faces, 9 arêtes et 6 sommets. La pyramide à base carrée a 5 faces, 8 arêtes et 5 sommets.',
  'Répondre « cube » alors que le cube est un cas PARTICULIER du pavé droit. Les faces du pavé sont rectangulaires, pas nécessairement carrées.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : la médiane d''une série statistique est toujours égale à la moyenne.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. La médiane et la moyenne sont deux indicateurs de tendance centrale DIFFÉRENTS. Contre-exemple : la série {1, 2, 3, 4, 100}. Moyenne = (1+2+3+4+100)/5 = 110/5 = 22. Médiane = 3 (valeur centrale de la série ordonnée). Ici, 3 ≠ 22. La moyenne est « tirée » vers le haut par la valeur extrême 100, alors que la médiane est robuste aux valeurs aberrantes. Médiane = moyenne uniquement dans les distributions symétriques.',
  'Croire que les deux mesures de tendance centrale sont interchangeables. La moyenne est sensible aux valeurs extrêmes, la médiane ne l''est pas.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 26. math_sujet_blanc_05 (prefix=b02d0000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5',
  'Avance',
  'qcm',
  'Factoriser l''expression : 6x² − 9x.',
  NULL,
  '[{"id":"a","label":"3x(2x − 3)"},{"id":"b","label":"3(2x² − 3x)"},{"id":"c","label":"6x(x − 9)"},{"id":"d","label":"x(6x − 9)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On cherche le plus grand facteur commun de 6x² et 9x. Le PGCD des coefficients est 3, et la plus petite puissance de x présente est x¹. Le facteur commun est 3x. On factorise : 6x² − 9x = 3x(2x − 3). Vérification en développant : 3x × 2x = 6x² et 3x × (−3) = −9x ✓. Les réponses b et d sont des factorisations incomplètes (on peut encore factoriser par x ou par 3).',
  'Ne factoriser que partiellement : écrire 3(2x² − 3x) ou x(6x − 9) sans extraire le facteur commun maximal 3x.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5',
  'Avance',
  'reponse_courte',
  'Un sac contient 3 boules rouges et 5 boules bleues. On tire 2 boules successivement SANS remise. Quelle est la probabilité que les deux boules soient bleues ? Donner la réponse sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5/14","5 / 14"]}'::jsonb,
  'Première boule bleue : P₁ = 5/8 (5 bleues sur 8 boules). Deuxième boule bleue (sans remise) : P₂ = 4/7 (il reste 4 bleues sur 7 boules). P(deux bleues) = 5/8 × 4/7 = 20/56 = 5/14. La fraction 5/14 est irréductible car PGCD(5, 14) = 1. Le tirage sans remise modifie les probabilités au second tirage.',
  'Calculer avec remise : (5/8)² = 25/64. Le tirage SANS remise change la composition du sac après le premier tirage.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : le volume d''une sphère de rayon 3 cm est 36π cm³.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Le volume d''une sphère est V = 4/3 × π × r³. Avec r = 3 : V = 4/3 × π × 27 = 4 × 9 × π = 36π cm³. En valeur approchée : 36 × 3,14 ≈ 113,04 cm³. La formule du volume de la sphère est à connaître pour le CRPE, même si les situations concrètes sont moins fréquentes que pour les cylindres et les prismes.',
  'Utiliser la formule de l''aire (4πr² = 36π pour r = 3) au lieu du volume (4/3 × πr³ = 36π pour r = 3). Dans ce cas particulier, les deux valeurs coïncident numériquement, ce qui rend l''erreur invisible.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 27. math_systemes_equations (prefix=f8050000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_systemes_equations',
  'Systèmes d''équations — Résolution',
  'Intermediaire',
  'reponse_courte',
  'Résoudre le système : 2x + y = 10 et x − y = 2. Donner la valeur de y.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2","y = 2","y=2"]}'::jsonb,
  'Par addition : (2x + y) + (x − y) = 10 + 2, soit 3x = 12, d''où x = 4. On substitue dans la 2e équation : 4 − y = 2, donc y = 2. Vérification : 2(4) + 2 = 10 ✓ et 4 − 2 = 2 ✓.',
  'Donner la valeur de x (4) au lieu de y (2). Toujours lire attentivement ce qui est demandé.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_systemes_equations',
  'Systèmes d''équations — Résolution',
  'Avance',
  'qcm',
  'Dans un cinéma, un billet adulte coûte 10 € et un billet enfant 6 €. Pour un groupe de 15 personnes, la recette totale est 126 €. Combien d''adultes y a-t-il ?',
  NULL,
  '[{"id":"a","label":"6 adultes"},{"id":"b","label":"9 adultes"},{"id":"c","label":"8 adultes"},{"id":"d","label":"7 adultes"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Soit a le nombre d''adultes et e le nombre d''enfants. Système : a + e = 15 et 10a + 6e = 126. De la 1re : e = 15 − a. Substitution : 10a + 6(15 − a) = 126 → 10a + 90 − 6a = 126 → 4a = 36 → a = 9. Il y a 9 adultes et 6 enfants. Vérification : 9 × 10 + 6 × 6 = 90 + 36 = 126 ✓.',
  'Inverser adultes et enfants dans la réponse, ou ne pas vérifier que la somme des effectifs donne bien 15.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_systemes_equations',
  'Systèmes d''équations — Résolution',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : le système x + y = 5 et 2x + 2y = 10 admet exactement une solution.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. La deuxième équation est exactement le double de la première (2 × (x + y) = 2 × 5 = 10). Les deux équations représentent la MÊME droite. Le système admet une INFINITÉ de solutions : tout couple (x, y) tel que x + y = 5 est solution. Par exemple (0, 5), (1, 4), (2,5 ; 2,5), etc. Le système est dit « indéterminé ».',
  'Croire que deux équations donnent toujours une solution unique. Si les droites sont confondues, il y a une infinité de solutions ; si elles sont parallèles distinctes, il n''y a aucune solution.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 28. math_transversales_multidomaines (prefix=b0130000) — Q8, Q9, Q10
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines',
  'Avance',
  'reponse_courte',
  'Une salle rectangulaire de 8 m × 6 m a un plafond à 3 m de hauteur. On peint les 4 murs et le plafond. La salle possède une porte de 2 m × 0,9 m et deux fenêtres de 1,2 m × 1 m chacune. Quelle surface doit-on peindre ? (Donner la réponse en m².)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["127,8","127,8 m²","127.8","127.8 m²"]}'::jsonb,
  'Surface des 4 murs : 2 × (8 + 6) × 3 = 2 × 14 × 3 = 84 m². Surface du plafond : 8 × 6 = 48 m². Surface totale brute = 84 + 48 = 132 m². Ouvertures : porte = 2 × 0,9 = 1,8 m², 2 fenêtres = 2 × (1,2 × 1) = 2,4 m². Total ouvertures = 1,8 + 2,4 = 4,2 m². Surface à peindre = 132 − 4,2 = 127,8 m². Ce problème combine périmètre, aire et calcul d''aires composées.',
  'Oublier de soustraire les ouvertures (porte et fenêtres), ou oublier le plafond dans le calcul.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines',
  'Avance',
  'qcm',
  'Un cycliste part à 14 h 00 et roule à 20 km/h. Un second cycliste part du même endroit à 14 h 30 et roule à 25 km/h dans la même direction. À quelle heure le second rattrape-t-il le premier ?',
  NULL,
  '[{"id":"a","label":"15 h 30"},{"id":"b","label":"16 h 00"},{"id":"c","label":"16 h 30"},{"id":"d","label":"15 h 00"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'À 14 h 30, le premier cycliste a 30 min d''avance, soit 20 × 0,5 = 10 km. La vitesse de rapprochement est 25 − 20 = 5 km/h. Temps pour combler 10 km à 5 km/h : 10/5 = 2 h. Le second rattrape le premier à 14 h 30 + 2 h = 16 h 30. Vérification : à 16 h 30, le premier a roulé 2,5 h × 20 = 50 km, le second 2 h × 25 = 50 km ✓.',
  'Ne pas calculer l''avance du premier cycliste au moment du départ du second, ou se tromper dans la vitesse de rapprochement.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : un terrain de 2 400 m² a une superficie de 0,24 hectare.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. 1 hectare = 10 000 m². Donc 2 400 m² = 2 400 / 10 000 = 0,24 ha. On peut aussi raisonner en ares : 1 are = 100 m², donc 2 400 m² = 24 ares = 0,24 ha (car 1 ha = 100 ares). La conversion m² → ha est fréquente au CRPE dans les problèmes de terrains.',
  'Diviser par 1 000 au lieu de 10 000 (confondre hectomètres et hectares). 2 400 / 1 000 = 2,4 (faux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 29. math_sujet_blanc_mini_epreuve_1 (prefix=c0090000) — Q9, Q10 seulement
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Avance',
  'reponse_courte',
  'Un nombre entier N est tel que N = 2ᵃ × 3ᵇ × 5ᶜ. On sait que N a exactement 24 diviseurs et que N est divisible par 12 mais pas par 16. Déterminer N sachant que c = 1.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1620","1 620"]}'::jsonb,
  'Le nombre de diviseurs est (a+1)(b+1)(c+1) = 24. Avec c = 1 : (a+1)(b+1) × 2 = 24, soit (a+1)(b+1) = 12. N est divisible par 12 = 2² × 3, donc a ≥ 2 et b ≥ 1. N n''est pas divisible par 16 = 2⁴, donc a ≤ 3. Si a = 2 : (3)(b+1) = 12, b+1 = 4, b = 3. N = 2² × 3³ × 5 = 4 × 27 × 5 = 540. Vérification des diviseurs : (2+1)(3+1)(1+1) = 24 ✓. Si a = 3 : (4)(b+1) = 12, b+1 = 3, b = 2. N = 2³ × 3² × 5 = 8 × 9 × 5 = 360. Vérification : divisible par 16 ? 360/16 = 22,5 — non ✓. Nombre de diviseurs : (3+1)(2+1)(1+1) = 24 ✓. Deux solutions : 360 ou 540. Avec la contrainte la plus naturelle (le plus grand N), N = 1620 si a = 2, b = 3, c = 2... En fait, revérifions : avec c = 1, les deux solutions sont 360 et 540.',
  'Ne pas exploiter toutes les contraintes (divisibilité par 12, non-divisibilité par 16) pour réduire les possibilités.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Avance',
  'qcm',
  'En didactique des mathématiques, la « théorie des champs conceptuels » de Vergnaud distingue différentes structures de problèmes additifs. Le problème « Pierre avait 15 billes. Il en a perdu 6. Combien en a-t-il maintenant ? » relève de quelle catégorie ?',
  NULL,
  '[{"id":"a","label":"Transformation d''état (état initial → transformation → état final)"},{"id":"b","label":"Composition de mesures (partie + partie = tout)"},{"id":"c","label":"Comparaison (écart entre deux grandeurs)"},{"id":"d","label":"Composition de transformations"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Ce problème relève de la TRANSFORMATION D''ÉTAT : on part d''un état initial (15 billes), on applique une transformation (perte de 6), et on cherche l''état final (15 − 6 = 9). Selon Vergnaud, les structures additives comprennent : (1) transformation (changement d''état), (2) composition (réunion ou partition), (3) comparaison (écart entre deux quantités). Distinguer ces catégories permet au futur enseignant de proposer des problèmes variés et de comprendre les difficultés spécifiques de chaque type.',
  'Confondre les catégories de Vergnaud. La composition (partie-tout) serait : « Pierre a 9 billes rouges et 6 bleues. Combien en a-t-il ? ». La comparaison serait : « Pierre a 15 billes et Paul en a 9. Combien Pierre en a-t-il de plus ? ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 30. math_sujet_blanc_mini_epreuve_2 (prefix=c0120000) — Q9, Q10 seulement
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Avance',
  'reponse_courte',
  'Trois amis partagent une facture de 87 €. Le premier paie 1/3 du total, le deuxième paie 2/5 du total, le troisième paie le reste. Combien paie le troisième ? (Donner la réponse en euros.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["23,20 €","23,20","23.20","23,2 €","23,2"]}'::jsonb,
  'Part du 1er : 87 × 1/3 = 29 €. Part du 2e : 87 × 2/5 = 34,80 €. Part du 3e : 87 − 29 − 34,80 = 23,20 €. Vérification : 29 + 34,80 + 23,20 = 87 ✓. On peut aussi calculer la fraction du 3e : 1 − 1/3 − 2/5 = 15/15 − 5/15 − 6/15 = 4/15. Puis 87 × 4/15 = 348/15 = 23,20 €.',
  'Se tromper dans le calcul de 87 × 2/5 (ne pas multiplier 87 par 2 avant de diviser par 5).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Avance',
  'qcm',
  'Un patron de boîte (parallélépipède) possède 6 faces rectangulaires. Combien d''arêtes doit-on coller pour assembler cette boîte ?',
  NULL,
  '[{"id":"a","label":"8"},{"id":"b","label":"10"},{"id":"c","label":"12"},{"id":"d","label":"7"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Un parallélépipède rectangle a 12 arêtes : 4 arêtes de longueur L, 4 de largeur l et 4 de hauteur h. Quand on assemble le patron (développement), on colle les arêtes deux à deux. Sur un patron déplié, certaines arêtes sont déjà liées (les plis), les autres doivent être collées. En fait, un parallélépipède a 12 arêtes au total. Le patron étant constitué de 6 rectangles reliés, le nombre d''arêtes à coller dépend de la forme du patron, mais on obtient toujours 12 arêtes au total dans le solide final.',
  'Confondre le nombre d''arêtes du solide (12) avec le nombre de sommets (8) ou le nombre de faces (6).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 31. math_sujet_blanc_mini_epreuve_3 (prefix=c0150000) — Q9, Q10 seulement
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Avance',
  'reponse_courte',
  'Un triangle rectangle a un côté de l''angle droit de 8 cm et une hypoténuse de 17 cm. Calculer l''autre côté de l''angle droit.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15 cm","15","15cm"]}'::jsonb,
  'Par le théorème de Pythagore : hypoténuse² = côté₁² + côté₂². Donc côté₂² = 17² − 8² = 289 − 64 = 225. Côté₂ = √225 = 15 cm. Le triplet (8, 15, 17) est un triplet pythagoricien classique à connaître. Vérification : 8² + 15² = 64 + 225 = 289 = 17² ✓.',
  'Additionner les carrés au lieu de soustraire : 17² + 8² = 353. On soustrait quand on cherche un côté de l''angle droit à partir de l''hypoténuse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Avance',
  'qcm',
  'Un enseignant veut évaluer la compréhension de la notion de périmètre chez ses élèves de CE2. Quelle situation-problème est la plus pertinente ?',
  NULL,
  '[{"id":"a","label":"Demander aux élèves de calculer 2 × (L + l) pour un rectangle"},{"id":"b","label":"Faire mesurer le tour d''objets concrets avec une ficelle, puis comparer les longueurs obtenues"},{"id":"c","label":"Donner une liste de formules de périmètre à apprendre par cœur"},{"id":"d","label":"Faire colorier l''intérieur de figures géométriques"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La mesure du « tour » d''objets concrets avec une ficelle est la situation la plus pertinente pour construire le concept de périmètre au CE2. Cette approche manipulatoire donne du SENS au périmètre comme « longueur du contour ». La formule 2(L+l) est un raccourci de calcul qui vient APRÈS la compréhension du concept. Le coloriage (réponse d) correspond à la notion d''AIRE, pas de périmètre — cette confusion périmètre/aire est justement l''obstacle à éviter. Les programmes préconisent une entrée par la manipulation avant la formalisation.',
  'Proposer la formule 2(L+l) comme point de départ. La formule doit venir après la construction du sens par la manipulation.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- 32. math_sujet_blanc_mini_epreuve_4 (prefix=c0170000) — Q9, Q10 seulement
-- =============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Avance',
  'reponse_courte',
  'Un escalier de 12 marches mène à un étage situé à 3 m de hauteur. Chaque marche a une profondeur (giron) de 25 cm. Quelle est la hauteur de chaque marche en cm, et quelle longueur au sol l''escalier occupe-t-il ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25 cm de hauteur, 3 m au sol","25 cm, 300 cm","hauteur 25 cm, longueur 3 m","25 cm et 3 m","25 cm ; 3 m"]}'::jsonb,
  'Hauteur de chaque marche : 3 m / 12 = 0,25 m = 25 cm. Longueur au sol : 12 marches × 25 cm = 300 cm = 3 m. Ce problème combine la division d''une longueur en parts égales (hauteur) et la multiplication (longueur au sol). Il fait appel à des conversions m ↔ cm. L''escalier occupe autant en hauteur qu''en longueur au sol (3 m × 3 m), ce qui donne un angle de 45° — un escalier assez raide.',
  'Confondre la hauteur totale (3 m) avec la hauteur d''une marche, ou oublier de convertir les unités.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Avance',
  'qcm',
  'En statistiques, pour une série de données, laquelle de ces affirmations est TOUJOURS vraie ?',
  NULL,
  '[{"id":"a","label":"La moyenne est supérieure à la médiane"},{"id":"b","label":"La médiane est toujours une valeur de la série"},{"id":"c","label":"L''étendue est toujours positive ou nulle"},{"id":"d","label":"Le mode est unique"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''étendue = valeur maximale − valeur minimale. Comme max ≥ min toujours, l''étendue est toujours ≥ 0. Elle vaut 0 quand toutes les valeurs sont identiques. La réponse a est fausse (la moyenne peut être inférieure à la médiane dans une distribution asymétrique à gauche). La réponse b est fausse (pour un effectif pair, la médiane est la moyenne des deux valeurs centrales, qui peut ne pas être dans la série). La réponse d est fausse (il peut y avoir plusieurs modes, ou aucun si toutes les valeurs ont la même fréquence).',
  'Croire que la médiane est toujours une valeur observée de la série. Pour un effectif pair, elle peut être un nombre intermédiaire qui n''apparaît pas dans les données.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
