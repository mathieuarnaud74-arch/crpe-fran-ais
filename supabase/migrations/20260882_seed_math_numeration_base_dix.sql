-- Série : Numération de position en base dix
-- Subdomain : nombres_calcul | topic_key : math_numeration_base_dix
-- 10 questions | UUIDs : e29f0000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'qcm',
  'Dans le nombre 4 372, quelle est la valeur du chiffre 3 ?',
  NULL,
  '[{"id":"a","label":"3"},{"id":"b","label":"30"},{"id":"c","label":"300"},{"id":"d","label":"3 000"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans le système de numération décimale de position, chaque chiffre a une valeur qui dépend de sa position. Dans 4 372 : le 4 est au rang des milliers (valeur : 4 000), le 3 est au rang des centaines (valeur : 300), le 7 est au rang des dizaines (valeur : 70), le 2 est au rang des unités (valeur : 2). La valeur du chiffre 3 est donc 300.',
  'Confondre le chiffre (3) et sa valeur positionnelle (300). Le chiffre 3 représente 3 centaines car il occupe le rang des centaines.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'qcm',
  'Quelle est la décomposition canonique du nombre 5 047 ?',
  NULL,
  '[{"id":"a","label":"5 × 1 000 + 4 × 10 + 7"},{"id":"b","label":"5 × 1 000 + 0 × 100 + 4 × 10 + 7 × 1"},{"id":"c","label":"5 × 100 + 4 × 10 + 7"},{"id":"d","label":"5 047 × 1"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La décomposition canonique (ou décomposition en unités de numération) développe chaque rang, y compris ceux dont le chiffre est 0. 5 047 = 5 milliers + 0 centaine + 4 dizaines + 7 unités = 5 × 1 000 + 0 × 100 + 4 × 10 + 7 × 1. On ne doit pas omettre le rang des centaines, même si le chiffre est 0.',
  'Omettre le terme 0 × 100 et écrire 5 × 1 000 + 4 × 10 + 7 (réponse a). La décomposition canonique inclut tous les rangs, même ceux avec le chiffre 0, afin de faire apparaître la structure positionnelle complète.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans le nombre décimal 2,34, le chiffre 4 est au rang des dixièmes.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Dans 2,34 : le 2 occupe le rang des unités, le 3 occupe le rang des dixièmes (premier chiffre après la virgule), le 4 occupe le rang des centièmes (deuxième chiffre après la virgule). Le chiffre 4 est donc au rang des centièmes, pas des dixièmes.',
  'Confondre dixièmes et centièmes. Le dixième correspond à 1/10 (premier chiffre après la virgule), le centième à 1/100 (deuxième chiffre après la virgule), le millième à 1/1000 (troisième chiffre).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'qcm',
  'Dans le nombre 8,741, quel chiffre occupe le rang des centièmes ?',
  NULL,
  '[{"id":"a","label":"8"},{"id":"b","label":"7"},{"id":"c","label":"4"},{"id":"d","label":"1"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans 8,741 : le 8 est au rang des unités, le 7 est au rang des dixièmes, le 4 est au rang des centièmes, le 1 est au rang des millièmes. Le chiffre des centièmes est 4, car il occupe la deuxième position après la virgule (représentant des centièmes, soit des 1/100).',
  'Désigner le 7 comme le chiffre des centièmes (c''est celui des dixièmes). Pour lire les rangs décimaux, on compte à partir de la virgule : 1ʳᵉ position → dixièmes, 2ᵉ position → centièmes, 3ᵉ position → millièmes.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'qcm',
  'Quel nombre correspond à l''écriture littérale « trois cent mille deux » ?',
  NULL,
  '[{"id":"a","label":"300 200"},{"id":"b","label":"3 000 002"},{"id":"c","label":"300 002"},{"id":"d","label":"30 002"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Trois cent mille deux » = 300 000 + 2 = 300 002. La lecture donne : 3 centaines de mille (= 300 000) et 2 unités. Il faut repérer les rangs intermédiaires (dizaines de mille = 0, unités de mille = 0, centaines = 0, dizaines = 0) qui sont tous à 0. L''écriture correcte est 300 002.',
  'Écrire 300 200 en confondant « deux » avec 2 centaines. En numération, on doit identifier la position du mot : « deux » seul désigne le rang des unités (2), pas des centaines (200).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'reponse_courte',
  'Combien y a-t-il de dizaines dans le nombre 3 450 ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["345","345 dizaines"]}'::jsonb,
  '3 450 = 345 dizaines (car 3 450 ÷ 10 = 345). On peut aussi le voir par la décomposition : 3 450 = 3 000 + 400 + 50 = 300 dizaines + 40 dizaines + 5 dizaines = 345 dizaines. La confusion vient souvent du fait qu''on identifie seulement le chiffre des dizaines (5) et non le nombre total de dizaines contenues dans le nombre.',
  'Répondre « 5 » (chiffre des dizaines) au lieu de 345 (nombre de dizaines). La question pose combien de dizaines sont contenues dans le nombre, ce qui nécessite de diviser par 10.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'qcm',
  'Quelle est la valeur du chiffre 5 dans le nombre décimal 12,058 ?',
  NULL,
  '[{"id":"a","label":"5 dixièmes, soit 0,5"},{"id":"b","label":"5 centièmes, soit 0,05"},{"id":"c","label":"5 millièmes, soit 0,005"},{"id":"d","label":"5 unités, soit 5"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans 12,058 : le 1 est aux dizaines, le 2 est aux unités, le 0 est aux dixièmes, le 5 est aux centièmes (valeur = 5/100 = 0,05), le 8 est aux millièmes. Le chiffre 5 occupe la 2ᵉ position après la virgule, donc il représente 5 centièmes = 0,05.',
  'Identifier le 5 comme étant aux dixièmes (confondre la 1ʳᵉ et la 2ᵉ position après la virgule). Le 0 en position des dixièmes est un chiffre significatif de rang qui ne doit pas être ignoré.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Le nombre 1 000 000 contient exactement 10 centaines de milliers.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  '1 000 000 = 1 million. Une centaine de milliers = 100 000. Donc 1 000 000 ÷ 100 000 = 10. Le million contient bien 10 centaines de milliers. Cette relation découle de la structure multiplicative de la numération décimale : chaque palier est 10 fois le précédent. 1 million = 10 × 100 000 (centaines de mille) = 100 × 10 000 (dizaines de mille) = 1 000 × 1 000 (unités de mille).',
  'Confondre « centaine de milliers » (= 100 000) et « millier » (= 1 000). Il faut utiliser les bons groupements : unité de mille (1 000), dizaine de mille (10 000), centaine de mille (100 000), million (1 000 000).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'qcm',
  'Parmi ces nombres, lequel est le plus grand ?',
  NULL,
  '[{"id":"a","label":"4,70"},{"id":"b","label":"4,07"},{"id":"c","label":"4,7"},{"id":"d","label":"4,007"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour comparer des décimaux, on compare rang par rang : la partie entière d''abord (tous ont 4), puis les dixièmes (a et c ont 7, b a 0, d a 0), puis les centièmes si nécessaire. 4,70 = 4,7 > 4,07 > 4,007. Les réponses a et c sont égales (4,70 = 4,7 car un zéro en fin de partie décimale ne change pas la valeur). La plus grande valeur est 4,70 = 4,7.',
  'Croire que 4,70 > 4,7 car il a « plus de chiffres ». En numération décimale, les zéros en fin de partie décimale sont superflus : 4,70 = 4,7. Comparer rang par rang, pas selon le nombre de chiffres.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e29f0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_numeration_base_dix',
  'Numération de position en base dix',
  'Standard',
  'qcm',
  'Quelle est la décomposition correcte du nombre 0,304 ?',
  NULL,
  '[{"id":"a","label":"3 dixièmes + 0 centième + 4 millièmes"},{"id":"b","label":"3 centièmes + 4 millièmes"},{"id":"c","label":"30 centièmes + 4 millièmes"},{"id":"d","label":"3 dixièmes + 4 centièmes"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '0,304 : le 0 est aux unités (valeur 0), le 3 est aux dixièmes (valeur 0,3 = 3/10), le 0 est aux centièmes (valeur 0), le 4 est aux millièmes (valeur 0,004 = 4/1000). La décomposition complète est : 3 dixièmes + 0 centième + 4 millièmes = 0,3 + 0 + 0,004 = 0,304. Le 0 au rang des centièmes ne doit pas être omis dans la décomposition.',
  'Omettre le 0 centième et écrire « 3 dixièmes + 4 millièmes » (réponse b), ou confondre dixièmes et centièmes. Le 0 au rang des centièmes est un chiffre de rang significatif qui « décale » le 4 au rang des millièmes.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
