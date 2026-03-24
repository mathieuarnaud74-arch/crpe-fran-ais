-- ============================================================
-- Migration : Complétion des séries nombres_calcul (batch 1)
-- Ajout des questions Q8, Q9, Q10 pour 10 séries existantes
-- Date : 2026-03-24
-- ============================================================

-- ============================================================
-- SÉRIE 1 : math_arithmetique_pgcd_ppcm (c0060000)
-- Arithmétique — Divisibilité, PGCD et PPCM
-- ============================================================

-- Q8 — Réponse courte — Relation PGCD × PPCM = a × b
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'reponse_courte',
  'On sait que PGCD(a, b) = 14 et que a × b = 2 940. Calculez le PPCM(a, b).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["210","PPCM = 210","PPCM(a,b) = 210"]}'::jsonb,
  'On utilise la relation fondamentale : PGCD(a, b) × PPCM(a, b) = a × b. Donc PPCM(a, b) = (a × b) / PGCD(a, b) = 2 940 / 14 = 210. Cette relation est toujours vraie pour deux entiers naturels non nuls. Elle est particulièrement utile au CRPE car elle permet de calculer le PPCM à partir du PGCD (ou inversement) sans avoir à décomposer en facteurs premiers. Vérification possible : si a = 42 et b = 70, alors PGCD(42, 70) = 14, PPCM(42, 70) = 210, et 42 × 70 = 2 940 ✓.',
  'Multiplier PGCD × (a × b) au lieu de diviser. La formule est PPCM = (a × b) / PGCD, pas PGCD × a × b.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Propriété des nombres premiers entre eux et PPCM
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : si deux nombres sont premiers entre eux, alors leur PPCM est égal à leur produit.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Si PGCD(a, b) = 1 (nombres premiers entre eux), alors PPCM(a, b) = a × b / PGCD(a, b) = a × b / 1 = a × b. Exemple : 8 et 15 sont premiers entre eux (PGCD = 1). Leur PPCM est 8 × 15 = 120. Vérification : les multiples de 8 sont 8, 16, 24, …, 112, 120, … et les multiples de 15 sont 15, 30, 45, …, 105, 120, … Le premier multiple commun est bien 120. Cette propriété est la conséquence directe de la relation PGCD × PPCM = a × b.',
  'Confondre « premiers entre eux » (PGCD = 1) avec « nombres premiers ». Deux nombres peuvent être premiers entre eux sans être premiers (ex. : 8 et 15).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Algorithme d''Euclide
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0060000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_arithmetique_pgcd_ppcm',
  'Arithmétique — Divisibilité, PGCD et PPCM',
  'Difficile',
  'qcm',
  'On applique l''algorithme d''Euclide pour calculer PGCD(252, 198). Quelle est la première division euclidienne à effectuer ?',
  NULL,
  '[{"id":"a","label":"252 = 1 × 198 + 54"},{"id":"b","label":"252 = 2 × 198 + 56"},{"id":"c","label":"198 = 1 × 252 + 54"},{"id":"d","label":"252 = 1 × 198 + 44"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''algorithme d''Euclide consiste à diviser le plus grand nombre par le plus petit, puis à itérer. Première étape : 252 = 1 × 198 + 54. Puis 198 = 3 × 54 + 36. Puis 54 = 1 × 36 + 18. Puis 36 = 2 × 18 + 0. Le dernier reste non nul est 18, donc PGCD(252, 198) = 18. Vérification : 252 = 18 × 14 et 198 = 18 × 11. L''algorithme d''Euclide est plus efficace que la décomposition en facteurs premiers pour les grands nombres car il ne nécessite que des divisions euclidiennes successives.',
  'Inverser le dividende et le diviseur (diviser 198 par 252), ou se tromper dans le calcul du reste : 252 − 198 = 54, pas 56 ni 44.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : math_calcul_litteral (b0280000)
-- Calcul littéral — Expressions et identités remarquables
-- ============================================================

-- Q8 — Réponse courte — Double distributivité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables',
  'Intermediaire',
  'reponse_courte',
  'Développer et réduire l''expression (x + 4)(x − 7).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["x² - 3x - 28","x²-3x-28","x² − 3x − 28"]}'::jsonb,
  'On applique la double distributivité : (x + 4)(x − 7) = x × x + x × (−7) + 4 × x + 4 × (−7) = x² − 7x + 4x − 28 = x² − 3x − 28. On regroupe les termes en x : −7x + 4x = −3x. On peut vérifier en substituant x = 0 : (0 + 4)(0 − 7) = 4 × (−7) = −28 et 0² − 3 × 0 − 28 = −28 ✓.',
  'Oublier l''un des quatre produits dans la double distributivité, ou se tromper de signe en multipliant 4 × (−7) = −28 (écrire +28).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Factorisation par facteur commun
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables',
  'Intermediaire',
  'qcm',
  'Quelle est la forme factorisée de 4x² − 12x ?',
  NULL,
  '[{"id":"a","label":"4x(x − 3)"},{"id":"b","label":"4(x² − 3x)"},{"id":"c","label":"2x(2x − 6)"},{"id":"d","label":"x(4x − 12)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On cherche le plus grand facteur commun à 4x² et 12x. Le PGCD de 4 et 12 est 4. Les deux termes contiennent au moins un facteur x. Le facteur commun maximal est donc 4x. On écrit : 4x² − 12x = 4x × x − 4x × 3 = 4x(x − 3). Les réponses (b), (c) et (d) sont des factorisations partielles : elles ne mettent pas en facteur le plus grand facteur commun possible.',
  'Factoriser partiellement en oubliant soit le facteur numérique, soit le facteur x. Par exemple, écrire x(4x − 12) au lieu de 4x(x − 3).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Identité remarquable (a − b)²
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : (x − 5)² = x² − 10x + 25.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. On applique l''identité remarquable (a − b)² = a² − 2ab + b² avec a = x et b = 5. On obtient : (x − 5)² = x² − 2 × x × 5 + 5² = x² − 10x + 25. Le double produit est bien 2 × x × 5 = 10x, précédé du signe moins. On peut vérifier numériquement : pour x = 10, (10 − 5)² = 25 et 10² − 10 × 10 + 25 = 100 − 100 + 25 = 25 ✓.',
  'Croire que (x − 5)² = x² − 25 en oubliant le double produit −10x, ou confondre le signe du double produit et écrire x² + 10x + 25.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 3 : math_calcul_mental_multiplication (f8100000)
-- Calcul mental — Stratégies de multiplication
-- ============================================================

-- Q8 — QCM — Multiplication par 99
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication',
  'Intermediaire',
  'qcm',
  'Pour calculer mentalement 23 × 99, quelle stratégie est la plus efficace ?',
  NULL,
  '[{"id":"a","label":"23 × 99 = 23 × 100 − 23 = 2 300 − 23 = 2 277"},{"id":"b","label":"23 × 99 = 20 × 99 + 3 × 99 = 1 980 + 297 = 2 277"},{"id":"c","label":"23 × 99 = 23 × 90 + 23 × 9 = 2 070 + 207 = 2 277"},{"id":"d","label":"Les trois sont correctes, mais la stratégie (a) est la plus rapide car elle remplace 99 par le nombre rond 100"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'Les trois stratégies sont correctes et donnent 2 277. Cependant, la stratégie (a) est la plus efficace car elle s''appuie sur un nombre rond : 99 = 100 − 1, donc 23 × 99 = 23 × (100 − 1) = 2 300 − 23 = 2 277. La multiplication par 100 est immédiate et la soustraction de 23 est simple. Les stratégies (b) et (c) nécessitent deux multiplications intermédiaires plus coûteuses en calcul mental. Cette approche par « passage au nombre rond » (compensation) est une stratégie fondamentale enseignée dès le cycle 3 selon les programmes Éduscol.',
  'Croire qu''il n''existe qu''une seule méthode valable. La flexibilité calculatoire consiste à choisir la stratégie la mieux adaptée aux nombres en jeu.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Multiplication par 50
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication',
  'Intermediaire',
  'reponse_courte',
  'Calculez mentalement 46 × 50 en utilisant la stratégie « multiplier par 50 = multiplier par 100 puis diviser par 2 ». Quel est le résultat ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2300","2 300"]}'::jsonb,
  'La stratégie repose sur la décomposition de 50 en 100/2. Ainsi, n × 50 = n × (100/2) = (n × 100) / 2. Pour 46 × 50 : on calcule d''abord 46 × 100 = 4 600, puis 4 600 / 2 = 2 300. Cette méthode est très efficace car la multiplication par 100 est immédiate et la division par 2 d''un nombre pair est simple. On peut aussi procéder dans l''autre sens : 46 / 2 = 23, puis 23 × 100 = 2 300. Les deux approches sont équivalentes grâce à la commutativité et l''associativité de la multiplication. Ce type de stratégie est fondamental dans l''enseignement du calcul mental au cycle 3.',
  'Oublier de diviser par 2 après avoir multiplié par 100 (écrire 4 600 au lieu de 2 300), ou confondre ×50 avec ×5.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Propriété de la multiplication par décomposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication',
  'Intermediaire',
  'vrai_faux',
  'Pour calculer mentalement 15 × 16, on peut utiliser la stratégie suivante : 15 × 16 = 15 × 4 × 4 = 60 × 4 = 240.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Cette stratégie est correcte. Elle repose sur la décomposition multiplicative de 16 en 4 × 4 et sur l''associativité de la multiplication : 15 × 16 = 15 × (4 × 4) = (15 × 4) × 4 = 60 × 4 = 240. Le calcul intermédiaire 15 × 4 = 60 produit un nombre rond, ce qui simplifie le calcul final. On peut aussi procéder autrement : 15 × 16 = 15 × 2 × 8 = 30 × 8 = 240, ou encore 15 × 16 = (10 + 5) × 16 = 160 + 80 = 240. La variété des stratégies illustre la richesse du calcul mental et l''importance de la flexibilité calculatoire prônée par les programmes Éduscol.',
  'Mal décomposer 16 (par exemple 16 = 2 × 6 au lieu de 16 = 4 × 4 ou 16 = 2 × 8), ce qui fausse le calcul.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 4 : math_calcul_mental_strategies (b00f0000)
-- Calcul mental — Stratégies
-- ============================================================

-- Q8 — Vrai/Faux — Conservation des écarts dans la soustraction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies',
  'Calcul mental — Stratégies',
  'Intermediaire',
  'vrai_faux',
  'Pour calculer 843 − 297, un élève écrit : 843 − 297 = 846 − 300 = 546. Cette stratégie est correcte car elle utilise la conservation des écarts.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. La conservation des écarts stipule que si on ajoute (ou retranche) la même quantité aux deux termes d''une soustraction, la différence reste inchangée : a − b = (a + k) − (b + k). Ici, l''élève ajoute 3 aux deux termes : (843 + 3) − (297 + 3) = 846 − 300 = 546. Vérification : 843 − 297 = 546 ✓. L''intérêt est de transformer le calcul en une soustraction avec un nombre rond (300), beaucoup plus simple à effectuer mentalement. Cette propriété est distincte de la compensation (qui modifie un seul terme puis corrige le résultat). Les programmes Éduscol du cycle 3 insistent sur la distinction entre ces deux stratégies.',
  'Confondre conservation des écarts et compensation. Dans la conservation des écarts, on modifie les DEUX termes de la même quantité. Dans la compensation, on modifie UN seul terme puis on corrige le résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Stratégie de regroupement (addition)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies',
  'Calcul mental — Stratégies',
  'Intermediaire',
  'reponse_courte',
  'Calculez mentalement 17 + 45 + 83 + 55 en regroupant astucieusement les termes. Quel est le résultat ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["200"]}'::jsonb,
  'Le résultat est 200. La stratégie de regroupement consiste à repérer des paires de nombres dont la somme est un nombre rond. Ici : 17 + 83 = 100 et 45 + 55 = 100. Donc 17 + 45 + 83 + 55 = (17 + 83) + (45 + 55) = 100 + 100 = 200. Cette stratégie repose sur la commutativité et l''associativité de l''addition : on peut réorganiser les termes dans l''ordre le plus commode. En didactique, on parle de « stratégie de regroupement » ou de « recherche de compléments ». Les programmes du cycle 3 encouragent cette habileté, qui développe le sens du nombre et la capacité à repérer des structures dans les calculs.',
  'Additionner les termes dans l''ordre donné (17 + 45 = 62, puis 62 + 83 = 145, puis 145 + 55 = 200), ce qui est correct mais beaucoup plus coûteux mentalement. L''objectif est de repérer les regroupements astucieux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Estimation et ordre de grandeur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00f0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies',
  'Calcul mental — Stratégies',
  'Intermediaire',
  'qcm',
  'Sans calculer le résultat exact, quel est l''ordre de grandeur de 49 × 21 ?',
  NULL,
  '[{"id":"a","label":"Environ 700"},{"id":"b","label":"Environ 1 000"},{"id":"c","label":"Environ 1 200"},{"id":"d","label":"Environ 900"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour estimer 49 × 21, on arrondit chaque facteur au nombre rond le plus proche : 49 ≈ 50 et 21 ≈ 20. L''estimation donne 50 × 20 = 1 000. Le résultat exact est 49 × 21 = 1 029, ce qui confirme que l''ordre de grandeur est environ 1 000. La stratégie d''estimation par arrondis est fondamentale en calcul mental pour vérifier la cohérence d''un résultat ou répondre rapidement à des problèmes de la vie courante. Au CRPE, l''estimation et le calcul d''ordres de grandeur sont des compétences régulièrement évaluées, tant sur le plan mathématique que didactique.',
  'Arrondir dans le même sens (50 × 30 = 1 500 — trop grand) au lieu d''arrondir au plus proche. L''idéal est de compenser : arrondir un facteur par excès et l''autre par défaut quand c''est possible.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 5 : math_decimaux_operations (b0290000)
-- Nombres décimaux — Opérations posées et pièges
-- ============================================================

-- Q8 — QCM — Multiplication d''un décimal par une puissance de 10
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges',
  'Intermediaire',
  'qcm',
  'Que vaut 0,045 × 1 000 ?',
  NULL,
  '[{"id":"a","label":"0,45"},{"id":"b","label":"4,5"},{"id":"c","label":"45"},{"id":"d","label":"450"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Multiplier par 1 000 revient à déplacer la virgule de 3 rangs vers la droite. 0,045 × 1 000 = 45. Explication positionnelle : dans 0,045, le chiffre 4 est au rang des centièmes et le 5 au rang des millièmes. En multipliant par 1 000, chaque chiffre gagne 3 rangs : le 4 passe aux dizaines et le 5 aux unités, ce qui donne 45. Cette compréhension positionnelle est essentielle pour éviter les erreurs avec les nombres décimaux et les puissances de 10.',
  'Se tromper dans le nombre de rangs de déplacement : déplacer de 2 rangs (0,045 × 100 = 4,5) ou de 4 rangs (0,045 × 10 000 = 450) au lieu de 3 rangs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Piège classique sur la comparaison de décimaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : en multipliant un nombre décimal par un nombre compris entre 0 et 1, on obtient toujours un résultat plus petit que le nombre de départ.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI (pour un nombre de départ strictement positif). Multiplier un nombre positif par un facteur strictement compris entre 0 et 1 donne toujours un résultat plus petit. Par exemple : 8 × 0,5 = 4 < 8 ; 3,2 × 0,1 = 0,32 < 3,2 ; 100 × 0,01 = 1 < 100. C''est un fait fondamental souvent contre-intuitif pour les élèves, qui associent « multiplier » à « agrandir ». Ce piège conceptuel est un point clé de la didactique des décimaux : la multiplication n''agrandit pas toujours, contrairement à ce que l''expérience des nombres entiers peut laisser croire. Au CRPE, cette question relève de la compréhension conceptuelle des opérations.',
  'Croire que « multiplier = agrandir » en toute circonstance. Cette conception erronée est très répandue chez les élèves et constitue un obstacle didactique majeur dans l''apprentissage des opérations sur les décimaux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Division de décimaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges',
  'Intermediaire',
  'reponse_courte',
  'Calculer 9,36 ÷ 0,04.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["234"]}'::jsonb,
  'Pour diviser par 0,04, on rend le diviseur entier en multipliant le dividende et le diviseur par 100 : 9,36 ÷ 0,04 = 936 ÷ 4 = 234. On peut vérifier : 234 × 0,04 = 234 × 4/100 = 936/100 = 9,36 ✓. La technique consiste toujours à rendre le diviseur entier : on multiplie les deux termes par la puissance de 10 appropriée (ici 100, car 0,04 a 2 chiffres après la virgule). Cette procédure se justifie par la propriété : a ÷ b = (a × k) ÷ (b × k) pour tout k ≠ 0.',
  'Multiplier par 10 au lieu de 100, ce qui donne 93,6 ÷ 0,4 (le diviseur n''est toujours pas entier). Il faut multiplier par une puissance de 10 suffisante pour rendre le diviseur entier.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 6 : math_divisibilite_criteres (b0240000)
-- Multiples, diviseurs et critères de divisibilité
-- ============================================================

-- Q8 — QCM — Critère de divisibilité par 8
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité',
  'Intermediaire',
  'qcm',
  'Parmi ces nombres, lequel est divisible par 8 ?',
  NULL,
  '[{"id":"a","label":"2 124"},{"id":"b","label":"3 216"},{"id":"c","label":"1 420"},{"id":"d","label":"5 340"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le critère de divisibilité par 8 porte sur les trois derniers chiffres du nombre. Un nombre est divisible par 8 si le nombre formé par ses trois derniers chiffres est divisible par 8. Vérifions chaque candidat : (A) 124 ÷ 8 = 15,5 ✗ (B) 216 ÷ 8 = 27 ✓ (C) 420 ÷ 8 = 52,5 ✗ (D) 340 ÷ 8 = 42,5 ✗. Seul 3 216 est divisible par 8. Vérification complète : 3 216 ÷ 8 = 402. Ce critère prolonge logiquement celui par 4 (deux derniers chiffres) et celui par 2 (dernier chiffre).',
  'Appliquer le critère de divisibilité par 4 (deux derniers chiffres) au lieu de celui par 8 (trois derniers chiffres). Le nombre 2 124 a ses deux derniers chiffres (24) divisibles par 4, mais 124 n''est pas divisible par 8.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Divisibilité et somme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : si un nombre est divisible par 4 et par 6, alors il est forcément divisible par 24.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. Un contre-exemple suffit : 12 est divisible par 4 (12 ÷ 4 = 3) et par 6 (12 ÷ 6 = 2), mais 12 n''est pas divisible par 24 (12 ÷ 24 = 0,5). La règle « divisible par a ET par b implique divisible par a × b » n''est vraie QUE si a et b sont premiers entre eux (PGCD(a, b) = 1). Or PGCD(4, 6) = 2 ≠ 1. En réalité, divisible par 4 et par 6 implique divisible par PPCM(4, 6) = 12. Cette distinction est fondamentale en arithmétique et constitue un piège classique du CRPE.',
  'Appliquer la règle « divisible par a et b → divisible par a × b » sans vérifier que a et b sont premiers entre eux. Cette règle ne fonctionne que lorsque PGCD(a, b) = 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Nombre de diviseurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0240000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_divisibilite_criteres',
  'Multiples, diviseurs et critères de divisibilité',
  'Intermediaire',
  'reponse_courte',
  'Combien de diviseurs le nombre 60 possède-t-il ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12","douze"]}'::jsonb,
  'On décompose 60 en facteurs premiers : 60 = 2² × 3 × 5. Le nombre de diviseurs se calcule en ajoutant 1 à chaque exposant et en multipliant : (2 + 1) × (1 + 1) × (1 + 1) = 3 × 2 × 2 = 12. Les 12 diviseurs de 60 sont : 1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60. On peut aussi les retrouver par paires : 1 × 60, 2 × 30, 3 × 20, 4 × 15, 5 × 12, 6 × 10. Cette formule du nombre de diviseurs est un résultat classique d''arithmétique, directement lié à la décomposition en facteurs premiers.',
  'Oublier certains diviseurs (comme 4, 12 ou 15) en ne testant pas systématiquement, ou oublier de compter 1 et le nombre lui-même.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 7 : math_division_euclidienne (b01e0000)
-- Division euclidienne — Problèmes et sens
-- ============================================================

-- Q8 — Réponse courte — Problème de partage avec reste
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens',
  'Intermediaire',
  'reponse_courte',
  'Un boulanger a préparé 250 croissants. Il les conditionne par sachets de 12. Combien de sachets complets peut-il préparer et combien de croissants restent-ils ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["20 sachets et 10 croissants","20 sachets, reste 10","20 sachets et il reste 10 croissants","20"]}'::jsonb,
  'On effectue la division euclidienne de 250 par 12 : 250 = 12 × 20 + 10. Le boulanger peut préparer 20 sachets complets (le quotient) et il reste 10 croissants (le reste). Vérification : 12 × 20 = 240, et 250 − 240 = 10 ✓. Le reste (10) est bien strictement inférieur au diviseur (12). Dans ce problème, contrairement au problème de transport (Q3), on ne peut pas « arrondir au-dessus » car on demande des sachets COMPLETS. L''interprétation du quotient et du reste dépend du contexte.',
  'Arrondir au-dessus et répondre 21 sachets, alors que le 21e sachet ne serait pas complet (il ne contiendrait que 10 croissants). Le problème demande des sachets complets.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Reconstituer le dividende
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens',
  'Avance',
  'qcm',
  'Dans une division euclidienne, le diviseur est 13, le quotient est 9 et le reste est 7. Quel est le dividende ?',
  NULL,
  '[{"id":"a","label":"117"},{"id":"b","label":"124"},{"id":"c","label":"130"},{"id":"d","label":"116"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On utilise la relation fondamentale de la division euclidienne : dividende = diviseur × quotient + reste. Donc a = 13 × 9 + 7 = 117 + 7 = 124. Vérification : 124 ÷ 13 → 13 × 9 = 117, reste = 124 − 117 = 7. Le reste (7) est bien strictement inférieur au diviseur (13) ✓. Ce type de question vérifie la compréhension de la relation a = b × q + r et la capacité à l''utiliser dans les deux sens.',
  'Oublier d''ajouter le reste et répondre 117 (13 × 9 seulement), ou confondre le rôle du quotient et du diviseur dans la formule.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Propriété du reste
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01e0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_division_euclidienne',
  'Division euclidienne — Problèmes et sens',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : le reste de la division euclidienne de 2 023 par 7 est le même que le reste de la division de 23 par 7.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. Calculons les deux restes. 2 023 ÷ 7 : 7 × 289 = 2 023, donc le reste est 0 (2 023 est divisible par 7). 23 ÷ 7 : 7 × 3 = 21, reste = 23 − 21 = 2. Les deux restes sont différents (0 ≠ 2). Il n''y a pas de règle générale permettant de déduire le reste d''un nombre à partir du reste d''une partie de ses chiffres pour la division par 7 (contrairement aux critères par 3 ou 9 basés sur la somme des chiffres). Pour 7, il faut effectuer la division euclidienne complète ou utiliser des techniques spécifiques de congruence.',
  'Croire qu''on peut « couper » un nombre et ne garder que les derniers chiffres pour trouver le reste, comme on le fait pour la divisibilité par 4 (deux derniers chiffres) ou par 8 (trois derniers chiffres). Cette règle ne fonctionne pas pour 7.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 8 : math_ecriture_scientifique (f80c0000)
-- Écriture scientifique — Notation et calculs
-- ============================================================

-- Q8 — Réponse courte — Écriture scientifique d''un grand nombre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80c0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs',
  'Avance',
  'reponse_courte',
  'Écrire 0,0000072 en écriture scientifique. Répondre sous la forme « a × 10^n » (exemple : 3,5 × 10^-2).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7,2 × 10^-6","7,2 × 10⁻⁶","7.2 × 10^-6","7,2×10^-6","7,2 × 10^(-6)"]}'::jsonb,
  'Pour écrire 0,0000072 en écriture scientifique, on cherche a tel que 1 ≤ a < 10. On déplace la virgule de 6 rangs vers la droite pour obtenir 7,2. On a donc 0,0000072 = 7,2 × 10⁻⁶. Vérification : la virgule a été déplacée de 6 positions vers la droite, ce qui correspond à une multiplication par 10⁶. Pour compenser, on divise par 10⁶ (soit ×10⁻⁶). Astuce pour compter : à partir de la position du 7, on compte le nombre de zéros à sa gauche (y compris le zéro avant la virgule) : 0,000007 → 6 positions.',
  'Se tromper dans le comptage des rangs et écrire 7,2 × 10⁻⁵ ou 7,2 × 10⁻⁷. La méthode la plus sûre est de vérifier en reconvertissant le résultat en notation décimale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Addition en écriture scientifique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80c0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs',
  'Avance',
  'qcm',
  'Calculer (3,5 × 10⁴) + (6,2 × 10³) et donner le résultat en écriture scientifique.',
  NULL,
  '[{"id":"a","label":"4,12 × 10⁴"},{"id":"b","label":"9,7 × 10⁴"},{"id":"c","label":"9,7 × 10³"},{"id":"d","label":"4,12 × 10³"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour additionner des nombres en écriture scientifique, il faut d''abord les ramener à la même puissance de 10. On exprime les deux nombres avec l''exposant le plus grand (10⁴) : 3,5 × 10⁴ = 3,5 × 10⁴ et 6,2 × 10³ = 0,62 × 10⁴. On additionne les coefficients : 3,5 + 0,62 = 4,12. Résultat : 4,12 × 10⁴. Vérification : 35 000 + 6 200 = 41 200 = 4,12 × 10⁴ ✓. Attention : contrairement à la multiplication (où on additionne les exposants), l''addition nécessite d''aligner les puissances de 10 avant de sommer.',
  'Additionner directement les coefficients ET les exposants comme pour une multiplication : (3,5 + 6,2) × 10^(4+3) = 9,7 × 10⁷ — complètement faux. L''addition en écriture scientifique ne suit pas les mêmes règles que la multiplication.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Notation scientifique et zéros
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80c0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_ecriture_scientifique',
  'Écriture scientifique — Notation et calculs',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : l''écriture scientifique de 50 000 est 50 × 10³.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. 50 × 10³ = 50 000 est numériquement correct, mais ce n''est pas une écriture scientifique car le coefficient 50 n''est pas compris entre 1 (inclus) et 10 (exclu). La bonne écriture scientifique est 5 × 10⁴, où le coefficient 5 satisfait bien 1 ≤ 5 < 10. Rappel : l''écriture scientifique est de la forme a × 10^n avec 1 ≤ a < 10 et n entier relatif. Cette convention permet une représentation unique de chaque nombre, ce qui facilite les comparaisons et les calculs.',
  'Confondre « écriture avec une puissance de 10 » et « écriture scientifique ». Toute écriture scientifique utilise une puissance de 10, mais l''inverse n''est pas vrai : le coefficient doit être compris entre 1 et 10.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 9 : math_equations_premier_degre (f8030000)
-- Équations du premier degré — Résolution et applications
-- ============================================================

-- Q8 — QCM — Équation avec fractions
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications',
  'Avance',
  'qcm',
  'Résoudre l''équation : (2x − 1)/3 = (x + 5)/4.',
  NULL,
  '[{"id":"a","label":"x = 19/5"},{"id":"b","label":"x = 19"},{"id":"c","label":"x = 3"},{"id":"d","label":"x = −19/5"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On multiplie les deux membres par le PPCM de 3 et 4, soit 12, pour éliminer les dénominateurs : 12 × (2x − 1)/3 = 12 × (x + 5)/4, soit 4(2x − 1) = 3(x + 5). On développe : 8x − 4 = 3x + 15. On regroupe : 8x − 3x = 15 + 4, soit 5x = 19. Donc x = 19/5. Vérification : membre gauche = (2 × 19/5 − 1)/3 = (38/5 − 5/5)/3 = (33/5)/3 = 33/15 = 11/5. Membre droit = (19/5 + 5)/4 = (19/5 + 25/5)/4 = (44/5)/4 = 44/20 = 11/5. ✓',
  'Oublier de multiplier TOUS les termes par le même nombre lors de l''élimination des dénominateurs, ou faire une erreur de distribution : 4(2x − 1) = 8x − 4 et non 8x − 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Problème de mise en équation (âge)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications',
  'Avance',
  'reponse_courte',
  'Paul a 8 ans de plus que sa sœur Emma. Dans 5 ans, Paul aura le double de l''âge actuel d''Emma. Quel est l''âge actuel d''Emma ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["13","13 ans"]}'::jsonb,
  'Soit x l''âge actuel d''Emma. Paul a x + 8 ans actuellement. Dans 5 ans, Paul aura (x + 8) + 5 = x + 13 ans. D''après l''énoncé, cet âge futur de Paul vaut le double de l''âge ACTUEL d''Emma : x + 13 = 2x. On résout : 13 = 2x − x = x. Donc x = 13. Emma a 13 ans et Paul a 21 ans. Vérification : dans 5 ans, Paul aura 26 ans = 2 × 13 = double de l''âge actuel d''Emma ✓. Ce type de problème d''âge est un classique de la mise en équation au CRPE. La difficulté réside dans la distinction entre « âge actuel » et « âge futur ».',
  'Confondre « dans 5 ans » et « il y a 5 ans », ou confondre « double de l''âge actuel » et « double de l''âge futur » d''Emma.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Équation sans solution
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : l''équation 2(x + 3) = 2x + 5 admet une solution.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. Développons le membre de gauche : 2(x + 3) = 2x + 6. L''équation devient : 2x + 6 = 2x + 5, soit 6 = 5 après simplification (on soustrait 2x des deux côtés). Or 6 ≠ 5 : c''est une contradiction. L''équation n''admet aucune solution, quel que soit x. On dit que l''équation est impossible (ou que l''ensemble des solutions est vide : S = ∅). Géométriquement, les droites y = 2x + 6 et y = 2x + 5 sont parallèles (même coefficient directeur 2) et distinctes, donc elles ne se coupent jamais.',
  'Croire que toute équation du premier degré admet une solution. Lorsque les termes en x se simplifient et qu''il reste une égalité fausse entre constantes, l''équation est impossible.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 10 : math_factorisation_developpement (f80e0000)
-- Factorisation et développement
-- ============================================================

-- Q8 — QCM — Factorisation avec double identité remarquable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'qcm',
  'Factoriser l''expression 4x² − 12x + 9.',
  NULL,
  '[{"id":"a","label":"(2x − 3)²"},{"id":"b","label":"(2x + 3)²"},{"id":"c","label":"(4x − 3)(x − 3)"},{"id":"d","label":"(2x − 3)(2x + 3)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On reconnaît la forme a² − 2ab + b² = (a − b)². On identifie : a² = 4x² donc a = 2x ; b² = 9 donc b = 3 ; 2ab = 2 × 2x × 3 = 12x. Le double produit correspond bien au terme central (−12x), avec le signe moins. Donc 4x² − 12x + 9 = (2x − 3)². Vérification par développement : (2x − 3)² = (2x)² − 2 × 2x × 3 + 3² = 4x² − 12x + 9 ✓. Le distracteur (d) correspond à 4x² − 9 (différence de deux carrés, sans terme en x).',
  'Confondre (a − b)² = a² − 2ab + b² avec a² − b² = (a − b)(a + b). La différence clé est la présence du terme 2ab (double produit). Si le trinôme a trois termes, c''est un carré parfait ; s''il n''en a que deux (somme de deux carrés avec un signe −), c''est une différence de carrés.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Développement et réduction d''une expression complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'reponse_courte',
  'Développer et réduire : (x + 3)² − (x − 2)².',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10x + 5","10x+5","5(2x + 1)","5(2x+1)"]}'::jsonb,
  'Méthode 1 — Développement direct : (x + 3)² = x² + 6x + 9 et (x − 2)² = x² − 4x + 4. La différence donne : (x² + 6x + 9) − (x² − 4x + 4) = x² + 6x + 9 − x² + 4x − 4 = 10x + 5. Méthode 2 — Identité a² − b² = (a + b)(a − b) avec a = x + 3 et b = x − 2 : (x + 3 + x − 2)(x + 3 − x + 2) = (2x + 1)(5) = 10x + 5. Les deux méthodes donnent le même résultat. La forme factorisée 5(2x + 1) est aussi acceptée.',
  'Oublier de distribuer le signe moins devant (x − 2)², ce qui conduit à l''erreur : −(x² − 4x + 4) = −x² − 4x + 4 au lieu de −x² + 4x − 4.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Factorisation et calcul numérique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80e0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_factorisation_developpement',
  'Factorisation et développement',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : on peut calculer 53² − 47² mentalement grâce à l''identité remarquable a² − b², et le résultat est 600.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. On applique l''identité a² − b² = (a + b)(a − b) avec a = 53 et b = 47. On obtient : 53² − 47² = (53 + 47)(53 − 47) = 100 × 6 = 600. Ce calcul est immédiat grâce à l''identité remarquable, alors que calculer 53² (= 2 809) et 47² (= 2 209) séparément serait beaucoup plus laborieux. Vérification : 2 809 − 2 209 = 600 ✓. Cette application illustre la puissance des identités remarquables pour le calcul mental : transformer une opération difficile en un calcul simple avec des nombres ronds.',
  'Tenter de calculer 53² et 47² séparément, ce qui est long et source d''erreurs. L''identité remarquable transforme la différence de deux carrés en un produit de somme et différence, souvent beaucoup plus simple.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
