-- Migration: 10 exercices — Stratégies de calcul mental avancées
-- Série : math_calcul_mental_strategies_avancees (Mathématiques, nombres_calcul)
-- Décomposition, compensation, propriétés des opérations, estimation
-- UUID prefix: e3f40000

-- Q1 : Stratégie de décomposition — calculer 38 × 5 mentalement (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'qcm',
  'Pour calculer 38 × 5 mentalement, on décompose 38 en (40 − 2). Quel est le résultat de 38 × 5 ?',
  NULL,
  '[{"id":"a","label":"180"},{"id":"b","label":"185"},{"id":"c","label":"190"},{"id":"d","label":"195"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On applique la propriété de distributivité de la multiplication sur la soustraction : a × (b − c) = a × b − a × c. On décompose 38 en (40 − 2), ce qui est plus facile à manipuler mentalement car 40 est un multiple de 10. On calcule alors : 38 × 5 = (40 − 2) × 5 = 40 × 5 − 2 × 5 = 200 − 10 = 190. Cette stratégie de décomposition par rapport à un nombre rond facilite considérablement le calcul mental en évitant la multiplication directe de 38 par 5.',
  'L''erreur fréquente est de décomposer 38 en (30 + 8) et d''oublier de multiplier les deux termes : certains calculent 30 × 5 = 150 et ajoutent 8 au lieu de 8 × 5 = 40, obtenant 158 au lieu de 190. La distributivité s''applique à chaque terme de la décomposition : (30 + 8) × 5 = 30 × 5 + 8 × 5 = 150 + 40 = 190.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 : Compensation par excès — 99 × 7 (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : pour calculer 99 × 7, on peut utiliser la compensation par excès en écrivant 99 × 7 = 100 × 7 − 7, ce qui donne 693.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La stratégie de compensation par excès consiste à remplacer un facteur difficile par un nombre rond plus simple, puis à corriger l''excès. On remplace 99 par 100, ce qui nous donne un facteur de 1 de plus que nécessaire. On applique la distributivité : 99 × 7 = (100 − 1) × 7 = 100 × 7 − 1 × 7 = 700 − 7 = 693. On peut vérifier par la méthode classique : 99 × 7 = 90 × 7 + 9 × 7 = 630 + 63 = 693. Les deux méthodes concordent. La compensation est particulièrement efficace pour les entiers proches d''un multiple de 10, 100 ou 1000.',
  'L''erreur courante est d''oublier de soustraire la correction après avoir utilisé le nombre rond, et de laisser le résultat à 700. Si on remplace 99 par 100 (on a ajouté 1), il faut soustraire 1 × 7 = 7 pour corriger : 700 − 7 = 693. Ne pas effectuer la correction revient à calculer 100 × 7 et non 99 × 7.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 : Propriété utilisée dans 4 × 25 = 100 (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'qcm',
  'On souhaite calculer 4 × 25 rapidement. On sait que 4 × 25 = 100. Quelle propriété des opérations permet d''exploiter ce couple (4 ; 25) dans un calcul comme 8 × 25 = (4 × 2) × 25 = 4 × (2 × 25) = 4 × 50 = 200 ?',
  NULL,
  '[{"id":"a","label":"La propriété de distributivité de × sur +"},{"id":"b","label":"La propriété d''associativité de la multiplication"},{"id":"c","label":"La propriété de commutativité de la multiplication"},{"id":"d","label":"La propriété de distributivité de × sur −"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La propriété utilisée ici est l''associativité de la multiplication, qui stipule que pour tous nombres a, b et c : (a × b) × c = a × (b × c). On regroupe les facteurs différemment sans changer le résultat. Dans 8 × 25, on réécrit 8 = 4 × 2, puis on regroupe : (4 × 2) × 25 = 4 × (2 × 25) = 4 × 50 = 200. Le regroupement astucieux de 4 et 25 (dont le produit est 100, un nombre rond très pratique) est rendu possible par l''associativité. Cette stratégie est très utilisée en calcul mental pour faire apparaître des produits connus comme 4 × 25 = 100, 8 × 125 = 1000, 5 × 2 = 10.',
  'La confusion la plus fréquente est avec la distributivité, qui s''applique quand on combine une addition (ou soustraction) et une multiplication : a × (b + c) = a × b + a × c. Ici, il n''y a pas d''addition ou de soustraction : on regroupe seulement les facteurs d''un produit, ce qui est précisément l''associativité. La commutativité (a × b = b × a) permet de changer l''ordre, non le regroupement.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 : Décomposition de 15 × 8 (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'reponse_courte',
  'Calculer 15 × 8 par décomposition : 15 × 8 = (10 + 5) × 8 = 10 × 8 + 5 × 8. Quel est le résultat ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120"]}'::jsonb,
  'On applique la propriété de distributivité de la multiplication sur l''addition : (a + b) × c = a × c + b × c. On décompose 15 en (10 + 5), car les multiples de 10 et de 5 sont faciles à calculer mentalement. On obtient : (10 + 5) × 8 = 10 × 8 + 5 × 8 = 80 + 40 = 120. On peut aussi raisonner autrement en utilisant l''associativité : 15 × 8 = 15 × 4 × 2 = 60 × 2 = 120. Les deux stratégies confirment le résultat. La décomposition additive (par dizaines et unités) est l''une des stratégies de calcul mental les plus fondamentales à l''école primaire.',
  'L''erreur fréquente est de calculer 10 × 8 = 80 correctement, puis de ne multiplier que par 5 au lieu de 5 × 8, en écrivant 80 + 5 = 85 au lieu de 80 + 40 = 120. La distributivité exige de multiplier chaque terme de la décomposition par le même facteur (ici 8), sans exception.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 : Passage par un nombre rond pour l'addition — 48 + 37 (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : pour calculer 48 + 37 mentalement, on peut passer par 50 en écrivant 48 + 37 = (48 + 2) + (37 − 2) = 50 + 35 = 85.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La stratégie de compensation pour l''addition consiste à transférer une quantité d''un terme à l''autre pour faire apparaître un nombre rond plus facile à manipuler. On ajoute 2 à 48 pour obtenir 50 (nombre round), et on retranche ce même 2 de 37 pour conserver la somme totale inchangée. Formellement, on utilise la propriété : a + b = (a + k) + (b − k) pour tout k, ce qui est une conséquence directe de l''associativité et de la commutativité de l''addition. Résultat : 50 + 35 = 85. Vérification : 48 + 37 = 85 ✓.',
  'L''erreur fréquente est de compléter 48 à 50 (en ajoutant 2) mais d''oublier de retrancher ces 2 de l''autre terme, calculant 50 + 37 = 87 au lieu de 85. La compensation exige que ce qu''on ajoute à un terme soit exactement soustrait de l''autre, de façon à ce que la somme totale reste invariante.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 : Stratégie 125 × 8 = 1000 (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'qcm',
  'On sait que 125 × 8 = 1 000. En utilisant ce résultat, quel est le résultat de 125 × 24 ?',
  NULL,
  '[{"id":"a","label":"2 500"},{"id":"b","label":"3 000"},{"id":"c","label":"3 500"},{"id":"d","label":"4 000"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'On exploite le couple remarquable (125 ; 8) dont le produit est 1 000. Pour calculer 125 × 24, on factorise 24 = 8 × 3. On applique ensuite l''associativité de la multiplication : 125 × 24 = 125 × (8 × 3) = (125 × 8) × 3 = 1 000 × 3 = 3 000. L''associativité permet de choisir l''ordre de regroupement des facteurs le plus avantageux. On reconnaît le produit 125 × 8 = 1 000 et on l''utilise comme brique de base. Cette stratégie repose sur la mémorisation de quelques couples remarquables : 4 × 25 = 100, 8 × 125 = 1 000, 2 × 5 = 10.',
  'L''erreur fréquente est de tenter de calculer 125 × 24 directement sans repérer la factorisation utile 24 = 8 × 3, et de procéder par décomposition classique 125 × 20 + 125 × 4 = 2 500 + 500 = 3 000. Ce résultat est correct mais plus laborieux. L''essentiel est de reconnaître que 24 est un multiple de 8 pour exploiter le couple (125 ; 8).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 : Propriété de multiplication par 11 — 66 × 11 (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'reponse_courte',
  'Pour calculer 66 × 11 mentalement, on utilise que 11 = 10 + 1, donc 66 × 11 = 66 × 10 + 66 × 1 = 660 + 66. Quel est le résultat ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["726"]}'::jsonb,
  'On applique la propriété de distributivité de la multiplication sur l''addition : a × (b + c) = a × b + a × c. On décompose 11 en (10 + 1), car multiplier par 10 (décalage d''un rang) et multiplier par 1 (invariance) sont deux opérations immédiates mentalement. On obtient : 66 × 11 = 66 × (10 + 1) = 66 × 10 + 66 × 1 = 660 + 66 = 726. On peut vérifier avec la règle du ×11 pour les nombres à deux chiffres : pour un nombre ab, le résultat est a | (a+b) | b. Ici 66 : 6 | (6+6) | 6 = 6 | 12 | 6, soit 660 + 66 = 726. Les deux approches confirment 726.',
  'L''erreur la plus fréquente est de confondre 66 × 11 avec 66 × 10 = 660 en oubliant d''ajouter le terme 66 × 1 = 66. Multiplier par 11 = 10 + 1, c''est multiplier par 10 ET ajouter le nombre lui-même une fois. Omettre ce dernier terme conduit à 660, qui est le résultat de 66 × 10, pas de 66 × 11.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 : Estimation par arrondi — 397 × 4 (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'qcm',
  'Pour estimer 397 × 4, on arrondit 397 à 400. L''estimation donne 400 × 4 = 1 600. Quelle est la valeur exacte de 397 × 4 ?',
  NULL,
  '[{"id":"a","label":"1 576"},{"id":"b","label":"1 584"},{"id":"c","label":"1 588"},{"id":"d","label":"1 592"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Pour le calcul exact, on applique la compensation : on a arrondi 397 à 400 en ajoutant 3, donc on a calculé 3 de trop. On corrige : 400 × 4 − 3 × 4 = 1 600 − 12 = 1 588. On peut aussi utiliser directement la distributivité : 397 × 4 = (400 − 3) × 4 = 400 × 4 − 3 × 4 = 1 600 − 12 = 1 588. L''estimation par arrondi donne 1 600, proche de 1 588 (écart de 12, soit moins de 1 %). L''estimation est utile pour vérifier l''ordre de grandeur d''un résultat et détecter des erreurs grossières de calcul.',
  'L''erreur fréquente est de ne pas corriger l''arrondi et de donner 1 600 comme résultat exact. L''estimation et le résultat exact sont deux choses différentes. De plus, on peut confondre la correction : on a arrondi par excès (400 > 397), donc le produit arrondi est supérieur au produit exact, et il faut soustraire 3 × 4 = 12, non l''ajouter.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 : Diviser par 4 = diviser par 2 deux fois — 36 ÷ 4 (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : pour calculer 36 ÷ 4, on peut décomposer la division en deux étapes : 36 ÷ 2 = 18, puis 18 ÷ 2 = 9, car diviser par 4 revient à diviser par 2 deux fois.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. On utilise la propriété d''associativité de la division par rapport à sa décomposition en facteurs : a ÷ (b × c) = (a ÷ b) ÷ c. Comme 4 = 2 × 2, on a : 36 ÷ 4 = 36 ÷ (2 × 2) = (36 ÷ 2) ÷ 2 = 18 ÷ 2 = 9. Cette stratégie est très efficace car diviser par 2 (prendre la moitié) est une opération intuitive et rapide. Elle se généralise : diviser par 8 = diviser par 2 trois fois, diviser par 16 = diviser par 2 quatre fois. On peut vérifier : 9 × 4 = 36 ✓.',
  'L''erreur possible est de penser que diviser par 4 revient à diviser par 2 une seule fois (confusion avec la multiplication : multiplier par 4 ≠ multiplier par 2 une fois). Il faut bien diviser par 2 deux fois de suite. Certains confondent aussi avec la soustraction : diviser par 4 ne signifie pas soustraire 4. La stratégie ne fonctionne que parce que 4 = 2², et elle se décompose en deux halvings successifs.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 : Compensation pour l'addition — 199 + 348 (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e3f40000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_calcul_mental_strategies_avancees',
  'Stratégies de calcul mental avancées',
  'Standard',
  'reponse_courte',
  'Calculer 199 + 348 par compensation : on écrit 199 = 200 − 1, donc 199 + 348 = (200 − 1) + 348 = 200 + 348 − 1. Quel est le résultat ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["547"]}'::jsonb,
  'On utilise la stratégie de compensation par excès pour transformer 199 en 200 (nombre rond). On réécrit 199 = 200 − 1 et on exploite les propriétés de commutativité et d''associativité de l''addition pour réorganiser le calcul : 199 + 348 = (200 − 1) + 348 = 200 + 348 − 1 = 548 − 1 = 547. Le calcul 200 + 348 = 548 est immédiat car on ajoute un nombre rond ; il suffit ensuite de retrancher 1 pour corriger la compensation. Cette stratégie est particulièrement efficace pour les entiers se terminant en 9 (199, 299, 399…) ou en 8, proches d''un multiple de 100.',
  'L''erreur fréquente est d''oublier de soustraire le 1 de correction après avoir utilisé 200 au lieu de 199. On a remplacé 199 par 200, soit un de trop ; il faut donc retrancher 1 du résultat intermédiaire : 548 − 1 = 547. Omettre cette correction donne 548, qui est le résultat de 200 + 348, pas de 199 + 348.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
