-- Migration: 10 exercices — Valeur positionnelle et décomposition des nombres décimaux
-- Série : math_valeur_positionnelle_decimale (Mathématiques, nombres_calcul)
-- Rang des chiffres, décomposition canonique, écriture en lettres, fractions décimales
-- UUID prefix: c6970000

-- Q1 — QCM — Rang des centaines dans 3 457,28
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'qcm',
  'Dans le nombre 3 457,28, quelle est la valeur du chiffre 4 ?',
  NULL,
  '[{"id":"a","label":"4"},{"id":"b","label":"40"},{"id":"c","label":"400"},{"id":"d","label":"4 000"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans le tableau de numération, chaque chiffre occupe un rang précis qui détermine sa valeur. Pour 3 457,28 : le 3 est au rang des milliers (valeur 3 000), le 4 est au rang des centaines (valeur 400), le 5 est au rang des dizaines (valeur 50), le 7 est au rang des unités (valeur 7), le 2 est au rang des dixièmes (valeur 0,2) et le 8 est au rang des centièmes (valeur 0,08). Le chiffre 4 représente donc 4 centaines, soit 400. Le tableau de numération, outil central au cycle 3, permet de visualiser instantanément le rang de chaque chiffre.',
  'Confondre le rang du chiffre et sa valeur : dire que le 4 vaut 4 alors qu''il occupe le rang des centaines et représente 400. Il faut toujours multiplier le chiffre par la valeur de son rang.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Rang du chiffre 7 dans 0,07
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans le nombre 0,07, le chiffre 7 est au rang des centièmes.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. En lisant 0,07 dans le tableau de numération : le 0 avant la virgule est au rang des unités, le premier 0 après la virgule est au rang des dixièmes, et le 7 est au rang des centièmes. Ainsi 0,07 = 7 × (1/100) = 7 centièmes. On peut vérifier : 7/100 = 0,07 ✓. Le rang des centièmes correspond à la deuxième position après la virgule. Pour ne pas confondre : dixièmes = 1re position après la virgule ; centièmes = 2e position ; millièmes = 3e position.',
  'Confondre « dixièmes » et « centièmes » : le 0 situé juste après la virgule occupe le rang des dixièmes, et le 7, en 2e position après la virgule, occupe bien le rang des centièmes. Une relecture dans le tableau de numération évite cette erreur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Décomposition canonique de 2 045,3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'qcm',
  'Quelle est la décomposition canonique du nombre 2 045,3 ?',
  NULL,
  '[{"id":"a","label":"2×1000 + 4×100 + 5×10 + 3×(1/10)"},{"id":"b","label":"2×1000 + 0×100 + 4×10 + 5×1 + 3×(1/10)"},{"id":"c","label":"2×1000 + 4×10 + 5×1 + 3×(1/100)"},{"id":"d","label":"2×100 + 4×10 + 5×1 + 3×(1/10)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La décomposition canonique s''obtient en multipliant chaque chiffre par la valeur de son rang. Pour 2 045,3 : le 2 est au rang des milliers → 2×1 000 ; le 0 est au rang des centaines → 0×100 ; le 4 est au rang des dizaines → 4×10 ; le 5 est au rang des unités → 5×1 ; le 3 est au rang des dixièmes → 3×(1/10). La décomposition complète est donc : 2×1 000 + 0×100 + 4×10 + 5×1 + 3×(1/10) = 2 000 + 0 + 40 + 5 + 0,3 = 2 045,3 ✓. La décomposition canonique fait apparaître tous les rangs, même ceux à chiffre 0.',
  'Omettre le terme 0×100 parce que le chiffre est nul, ou décaler les rangs en confondant le 4 avec le rang des centaines (puisqu''il est en 3e position en partant de la gauche). Le tableau de numération est indispensable pour identifier correctement chaque rang.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — reponse_courte — Écrire 4,056 sous forme de fraction décimale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'reponse_courte',
  'Écrire le nombre 4,056 sous la forme d''une fraction décimale (fraction dont le dénominateur est une puissance de 10).',
  NULL,
  NULL,
  '{"mode":"exact_match","value":"4056/1000"}'::jsonb,
  'Un nombre décimal s''écrit sous forme de fraction décimale en plaçant au numérateur l''entier obtenu en supprimant la virgule, et au dénominateur la puissance de 10 correspondant au dernier rang décimal. Pour 4,056 : le dernier chiffre significatif (6) est au rang des millièmes (3 chiffres après la virgule), donc le dénominateur est 1 000. Le numérateur est 4056 (on lit le nombre sans virgule). Ainsi 4,056 = 4056/1000. Vérification : 4056 ÷ 1000 = 4,056 ✓. On peut simplifier si besoin : 4056/1000 = 507/125, mais la fraction décimale demandée est 4056/1000.',
  'Prendre 1 000 au dénominateur mais mettre 456 au numérateur en oubliant la partie entière, ou utiliser 100 au dénominateur parce qu''on ne compte que les chiffres non nuls après la virgule. Le nombre de chiffres après la virgule (3 ici, dont le 0) détermine la puissance de 10.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Écriture en chiffres de "trois mille deux cent soixante-sept"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'qcm',
  'Le nombre « trois mille deux cent soixante-sept » s''écrit en chiffres :',
  NULL,
  '[{"id":"a","label":"3 027"},{"id":"b","label":"3 267"},{"id":"c","label":"3 207"},{"id":"d","label":"32 067"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'On décompose le nombre en lettres rang par rang : « trois mille » = 3 000 ; « deux cent » = 200 ; « soixante » = 60 ; « sept » = 7. En additionnant : 3 000 + 200 + 60 + 7 = 3 267. On place chaque partie dans le tableau de numération : rang des milliers = 3, rang des centaines = 2, rang des dizaines = 6, rang des unités = 7. En français, « soixante-sept » = 60 + 7, ce qui correspond bien au 6 en dizaines et au 7 en unités.',
  'Écrire 3 027 en confondant « deux cent » et « vingt » (« soixante-sept » peut être mal décomposé). Attention à la particularité du système de numération français : soixante = 60, soixante-dix = 70, quatre-vingt = 80, quatre-vingt-dix = 90.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — 3,40 = 3,4
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : 3,40 = 3,4 (les deux écritures représentent le même nombre).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Le zéro placé en dernière position après la dernière décimale non nulle est un zéro non significatif : il ne change pas la valeur du nombre. 3,40 = 3 + 4/10 + 0/100 = 3 + 4/10 = 3,4. On peut aussi écrire 3,40 = 340/100 = 34/10 = 3,4. Ces zéros non significatifs n''ont aucun impact sur la valeur, même si on les rencontre parfois pour indiquer une précision de mesure en sciences. En mathématiques pures, 3,40 et 3,4 sont rigoureusement égaux.',
  'Penser que 3,40 est plus grand que 3,4 parce qu''il a plus de chiffres. C''est une erreur classique chez les élèves qui raisonnent comme pour les entiers (où plus de chiffres = plus grand). Pour les décimaux, les zéros non significatifs de fin ne modifient pas la valeur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — reponse_courte — Chiffre au rang des milliers dans 52 348
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'reponse_courte',
  'Dans le nombre 52 348, quel chiffre est au rang des milliers ?',
  NULL,
  NULL,
  '{"mode":"exact_match","value":"2"}'::jsonb,
  'On place 52 348 dans le tableau de numération en partant de la droite : unités = 8, dizaines = 4, centaines = 3, milliers = 2, dizaines de milliers = 5. Le chiffre au rang des milliers est donc 2. Sa valeur dans ce nombre est 2 × 1 000 = 2 000. Le tableau de numération se lit de droite à gauche pour les entiers : U (unités), D (dizaines), C (centaines), M (milliers), DM (dizaines de milliers), CM (centaines de milliers), puis M (millions).',
  'Lire le nombre de gauche à droite et confondre les rangs : certains élèves répondent 5 (premier chiffre) ou 3 (3e chiffre en partant de la gauche). Il faut toujours positionner les chiffres depuis la droite (depuis les unités) pour identifier correctement chaque rang.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Écriture différente des autres parmi 2,5 / 25/10 / 2,50 / 25/100
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'qcm',
  'Parmi ces quatre écritures, laquelle représente un nombre différent des trois autres ?',
  NULL,
  '[{"id":"a","label":"2,5"},{"id":"b","label":"25/10"},{"id":"c","label":"2,50"},{"id":"d","label":"25/100"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Comparons chaque écriture : (a) 2,5 = 2 + 5/10 = 2,5 ; (b) 25/10 = 2,5 ; (c) 2,50 = 2,5 (zéro non significatif) ; (d) 25/100 = 0,25. Les propositions (a), (b) et (c) valent toutes 2,5. En revanche, 25/100 = 0,25, qui est bien différent de 2,5. L''erreur vient d''une confusion entre 25/10 et 25/100 : diviser par 10 donne 2,5 mais diviser par 100 donne 0,25. Il faut toujours vérifier la valeur du dénominateur.',
  'Penser que 25/100 = 2,5 en confondant le dénominateur 100 avec 10. Ou bien ne pas reconnaître que 2,50 = 2,5 et désigner (c) comme la réponse différente. La conversion fraction ↔ décimal passe par la division du numérateur par le dénominateur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — 0,1 + 0,01 + 0,001 = 0,111
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : 0,1 + 0,01 + 0,001 = 0,111.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. On convertit chaque terme en millièmes pour pouvoir les additionner : 0,1 = 1/10 = 100/1 000 ; 0,01 = 1/100 = 10/1 000 ; 0,001 = 1/1 000. La somme vaut 100/1 000 + 10/1 000 + 1/1 000 = 111/1 000 = 0,111. On peut aussi raisonner avec le tableau de numération : 0,1 place un 1 au rang des dixièmes ; 0,01 place un 1 au rang des centièmes ; 0,001 place un 1 au rang des millièmes. La somme donne 0,111 car aucun rang ne dépasse 9, donc il n''y a pas de retenue.',
  'Penser que la somme vaut 0,3 en additionnant les numérateurs sans tenir compte des rangs (1 + 1 + 1 = 3). Cette erreur confond l''addition de décimaux avec l''addition d''entiers. Il faut aligner les virgules ou ramener au même dénominateur avant d''additionner.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Écrire en chiffres "Vingt et un virgule zéro cinq"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c6970000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_valeur_positionnelle_decimale',
  'Valeur positionnelle et décomposition des nombres décimaux',
  'Standard',
  'reponse_courte',
  'Écrire en chiffres le nombre : « Vingt et un virgule zéro cinq ».',
  NULL,
  NULL,
  '{"mode":"exact_match","value":"21,05"}'::jsonb,
  'On décompose la lecture : « vingt et un » = 21 (partie entière) ; « virgule » indique la séparation décimale ; « zéro cinq » = 0 au rang des dixièmes et 5 au rang des centièmes. On obtient 21,05. Dans le tableau de numération : dizaines = 2, unités = 1, dixièmes = 0, centièmes = 5. La difficulté est de ne pas oublier le 0 au rang des dixièmes : « zéro cinq » signifie 0 dixième et 5 centièmes, ce qui s''écrit ,05 et non ,5. Ainsi 21,05 ≠ 21,5.',
  'Écrire 21,5 en ignorant le « zéro » dans « zéro cinq » : on entend « cinq » et on l''écrit directement en rang des dixièmes. Il faut bien écouter chaque terme : « zéro cinq » = 05, le zéro occupant le rang des dixièmes est indispensable pour placer le 5 au rang des centièmes.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
