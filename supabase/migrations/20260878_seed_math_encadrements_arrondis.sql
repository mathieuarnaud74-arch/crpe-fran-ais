-- Série : Encadrements et arrondis de nombres décimaux
-- Subdomain : nombres_calcul | topic_key : math_encadrements_arrondis
-- 10 questions | UUIDs : ae5b0000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'ae5b0000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'qcm',
  'Quel est l''encadrement de 7,84 à l''unité ?',
  NULL,
  '[{"id":"a","label":"6 < 7,84 < 8"},{"id":"b","label":"7 < 7,84 < 8"},{"id":"c","label":"7 < 7,84 < 9"},{"id":"d","label":"7,8 < 7,84 < 7,9"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Encadrer à l''unité signifie trouver les deux entiers consécutifs qui encadrent le nombre. La partie entière de 7,84 est 7, l''entier suivant est 8. Donc 7 < 7,84 < 8. La réponse d est un encadrement au dixième, pas à l''unité.',
  'Choisir 6 comme borne inférieure. La borne inférieure est toujours la partie entière du nombre (ici 7), et non un entier quelconque en dessous.',
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
  'ae5b0000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'qcm',
  'Quel est l''arrondi de 3,47 au dixième ?',
  NULL,
  '[{"id":"a","label":"3,4"},{"id":"b","label":"3,5"},{"id":"c","label":"3"},{"id":"d","label":"4"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour arrondir au dixième, on regarde le chiffre des centièmes : ici 7. Puisque 7 ≥ 5, on arrondit le chiffre des dixièmes (4) au rang supérieur : 4 + 1 = 5. L''arrondi au dixième de 3,47 est donc 3,5.',
  'Confondre la valeur approchée par défaut au dixième (= 3,4, le dixième en dessous) et l''arrondi au dixième le plus proche (= 3,5). La règle standard consiste à regarder le chiffre suivant : ≥ 5 → on arrondit au supérieur.',
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
  'ae5b0000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? L''arrondi à l''unité de 6,5 est 7.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Par convention, lorsque le chiffre à arrondir est exactement 5, on arrondit au rang supérieur. Ici, le chiffre des dixièmes est 5, donc on arrondit l''unité (6) à l''entier supérieur : 7. Cette convention (arrondi au pair ou arrondi au supérieur) est celle utilisée à l''école primaire.',
  'Arrondir à 6 par analogie avec l''arrondi par défaut. La règle scolaire standard est : chiffre suivant ≥ 5 → on arrondit au supérieur ; < 5 → on conserve.',
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
  'ae5b0000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'qcm',
  'Quel est l''encadrement de 2,36 au dixième ?',
  NULL,
  '[{"id":"a","label":"2 < 2,36 < 3"},{"id":"b","label":"2,3 < 2,36 < 2,4"},{"id":"c","label":"2,36 < 2,37 < 2,38"},{"id":"d","label":"2,30 < 2,36 < 2,40"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Encadrer au dixième signifie trouver les deux dixièmes consécutifs qui encadrent le nombre. Les dixièmes autour de 2,36 sont 2,3 et 2,4. Donc 2,3 < 2,36 < 2,4. La réponse d est correcte mathématiquement mais écrite différemment (2,30 = 2,3), la réponse b est la forme canonique.',
  'Confondre encadrement à l''unité et au dixième. Encadrer à l''unité donnerait 2 < 2,36 < 3.',
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
  'ae5b0000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'qcm',
  'Quel est l''arrondi de 9,95 au dixième ?',
  NULL,
  '[{"id":"a","label":"9,9"},{"id":"b","label":"9,95"},{"id":"c","label":"10"},{"id":"d","label":"10,0"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Le chiffre des centièmes est 5, donc on arrondit le dixième (9) au supérieur : 9 + 1 = 10. Le chiffre des dixièmes devient 0 et on incrémente l''unité : 9,95 arrondi au dixième = 10,0. Les réponses c et d sont équivalentes numériquement ; 10,0 est la notation correcte quand on précise un arrondi au dixième.',
  'Arrondir à 9,9 en oubliant que le chiffre des centièmes (5) entraîne un arrondi au supérieur, ce qui provoque une cascade sur les unités.',
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
  'ae5b0000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'reponse_courte',
  'Donnez l''arrondi à l''unité de 12,34.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12"]}'::jsonb,
  'Le chiffre des dixièmes est 3, ce qui est inférieur à 5. On conserve donc la partie entière : l''arrondi à l''unité de 12,34 est 12. On dit que 12 est la valeur approchée par défaut à l''unité de 12,34.',
  'Donner 12,3 (arrondi au dixième) ou 13 (erreur de règle). Le chiffre des dixièmes étant 3 < 5, on arrondit par défaut.',
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
  'ae5b0000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'qcm',
  'La valeur approchée par défaut à l''unité de 5,7 est :',
  NULL,
  '[{"id":"a","label":"6"},{"id":"b","label":"5"},{"id":"c","label":"5,7"},{"id":"d","label":"5,0"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La valeur approchée par défaut à l''unité est l''entier immédiatement inférieur ou égal au nombre, c''est-à-dire sa partie entière : ici 5. On ne tient pas compte du chiffre des dixièmes pour la valeur par défaut — on prend simplement l''entier en dessous.',
  'Confondre valeur approchée par défaut (toujours l''entier en dessous = 5) et arrondi à l''unité le plus proche (= 6, car 7 ≥ 5). Ce sont deux notions distinctes.',
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
  'ae5b0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? L''arrondi au centième de 0,049 est 0,05.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le chiffre au rang des millièmes est 9 (≥ 5), donc on arrondit le centième (4) au supérieur : 4 + 1 = 5. L''arrondi au centième de 0,049 est bien 0,05. Attention à ne pas confondre les rangs : dixième (0,0_), centième (0,00_), millième (0,000_).',
  'Lire 0,049 et croire que le chiffre des centièmes est 4 mais ne pas regarder ce qui suit. Le chiffre des millièmes (9) est celui qui détermine l''arrondi au centième.',
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
  'ae5b0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'qcm',
  'Quel est l''encadrement de 15,63 entre deux dizaines consécutives ?',
  NULL,
  '[{"id":"a","label":"15 < 15,63 < 16"},{"id":"b","label":"10 < 15,63 < 20"},{"id":"c","label":"15,6 < 15,63 < 15,7"},{"id":"d","label":"14 < 15,63 < 16"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Encadrer entre deux dizaines consécutives signifie trouver les deux multiples de 10 qui encadrent le nombre. 15,63 est compris entre 10 et 20. La réponse a est un encadrement à l''unité, c est au dixième. La réponse d est incorrecte car 14 n''est pas une dizaine.',
  'Confondre « encadrement à l''unité » et « encadrement entre deux dizaines ». Les dizaines sont les multiples de 10 : 0, 10, 20, 30...',
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
  'ae5b0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_encadrements_arrondis',
  'Encadrements et arrondis de nombres décimaux',
  'Standard',
  'qcm',
  'Quelle est la valeur approchée au centième de 1,2468 ?',
  NULL,
  '[{"id":"a","label":"1,24"},{"id":"b","label":"1,25"},{"id":"c","label":"1,246"},{"id":"d","label":"1,2"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour arrondir au centième, on regarde le chiffre des millièmes : ici 6 (≥ 5). On arrondit donc le centième (4) au supérieur : 4 + 1 = 5. La valeur approchée au centième de 1,2468 est 1,25. La réponse a (1,24) serait la valeur approchée par défaut au centième.',
  'Arrondir à 1,24 en s''arrêtant au centième sans regarder le rang suivant (millièmes = 6). L''arrondi se détermine toujours en regardant le premier chiffre éliminé.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
