-- Seed: Calcul mental — Stratégies de multiplication (7 exercices)
-- Subdomain: nombres_calcul | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication', 'Intermediaire',
  'qcm',
  'Pour multiplier mentalement un nombre par 10, 100 ou 1 000, on utilise une règle simple. Quel est le résultat de 47 × 1 000 ?',
  NULL,
  '[{"id":"a","label":"4 700"},{"id":"b","label":"47 000"},{"id":"c","label":"470 000"},{"id":"d","label":"470"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Multiplier par 10, 100 ou 1 000 revient à décaler la virgule (ou ajouter des zéros) vers la droite. Pour 47 × 1 000, on ajoute trois zéros à droite de 47, ce qui donne 47 000. Attention : on ne « déplace pas les chiffres », on déplace la position de chaque chiffre dans le tableau de numération. Ainsi, le 4 (dizaines) passe en dizaines de milliers et le 7 (unités) passe en milliers. Cette compréhension positionnelle est essentielle pour éviter les erreurs avec les nombres décimaux : 4,7 × 100 = 470 (et non 4 700). Au CRPE, les questions portent souvent sur la justification de cette règle par le système de numération décimale de position.',
  'Ajouter trop ou trop peu de zéros, ou confondre multiplication par 100 et par 1 000. Toujours vérifier le nombre de zéros du multiplicateur.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication', 'Intermediaire',
  'vrai_faux',
  'Pour multiplier un nombre par 5, une stratégie efficace consiste à diviser ce nombre par 2 puis à multiplier le résultat par 10. Par exemple, 48 × 5 = (48 ÷ 2) × 10 = 24 × 10 = 240.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Cette stratégie repose sur la décomposition de 5 en 10 ÷ 2 (ou 10/2). Ainsi, n × 5 = n × (10/2) = (n ÷ 2) × 10. Pour 48 × 5 : on calcule d''abord 48 ÷ 2 = 24, puis 24 × 10 = 240. Cette méthode est particulièrement efficace quand le nombre de départ est pair, car la division par 2 tombe juste. Pour un nombre impair comme 37 × 5, on peut faire (37 ÷ 2) × 10 = 18,5 × 10 = 185, ou utiliser une autre stratégie : 37 × 5 = (40 − 3) × 5 = 200 − 15 = 185. Au CRPE, on attend du candidat qu''il maîtrise plusieurs stratégies de calcul mental et qu''il sache les justifier mathématiquement.',
  'Appliquer la stratégie dans le mauvais ordre : multiplier par 10 d''abord puis diviser par 2 fonctionne aussi, mais oublier l''une des deux étapes conduit à une erreur.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication', 'Intermediaire',
  'reponse_courte',
  'Calculez mentalement 36 × 25 en utilisant la stratégie « multiplier par 25 = diviser par 4 puis multiplier par 100 ». Quel est le résultat ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["900","900."]}'::jsonb,
  'La stratégie repose sur la décomposition de 25 en 100/4. Ainsi, n × 25 = n × (100/4) = (n ÷ 4) × 100. Pour 36 × 25 : on calcule d''abord 36 ÷ 4 = 9, puis 9 × 100 = 900. Cette méthode est redoutablement efficace quand le nombre est divisible par 4. Si le nombre n''est pas divisible par 4, on peut adapter : 37 × 25 = (36 + 1) × 25 = 900 + 25 = 925. On peut aussi voir 25 comme le quart de 100, ce qui ramène la multiplication par 25 à une division par 4 suivie d''une multiplication par 100 — deux opérations simples en calcul mental. Les programmes Éduscol insistent sur l''importance d''enseigner ces stratégies dès le cycle 3 pour développer le sens du nombre et la flexibilité calculatoire.',
  'Diviser par 2 au lieu de 4 (confusion entre multiplier par 25 et multiplier par 50), ou oublier de multiplier par 100 à la fin.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication', 'Intermediaire',
  'qcm',
  'Il existe une astuce pour multiplier un nombre à deux chiffres par 11. Par exemple, 34 × 11 : on écrit le premier chiffre (3), la somme des deux chiffres (3 + 4 = 7), puis le dernier chiffre (4), ce qui donne 374. Quel est le résultat de 63 × 11 ?',
  NULL,
  '[{"id":"a","label":"693"},{"id":"b","label":"639"},{"id":"c","label":"6 930"},{"id":"d","label":"673"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour multiplier 63 par 11, on applique la stratégie : premier chiffre = 6, somme des chiffres = 6 + 3 = 9, dernier chiffre = 3. On obtient donc 693. Justification algébrique : si le nombre est de la forme (10a + b), alors (10a + b) × 11 = 110a + 11b = 100a + 10(a + b) + b. Le chiffre des centaines est a, celui des dizaines est (a + b), celui des unités est b. Attention au cas où a + b ≥ 10 : par exemple, 85 × 11 → 8, (8 + 5 = 13), 5. On retient 1 : le résultat est 935 (8 + 1 = 9, 3, 5). Cette stratégie illustre la puissance de la décomposition en calcul mental et la compréhension de la numération positionnelle.',
  'Oublier de gérer la retenue quand la somme des deux chiffres dépasse 9. Par exemple, pour 85 × 11, écrire 8-13-5 au lieu de 935.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication', 'Intermediaire',
  'qcm',
  'Un élève doit calculer mentalement 19 × 6. Quelle stratégie de distributivité est la plus efficace ?',
  NULL,
  '[{"id":"a","label":"19 × 6 = 10 × 6 + 9 × 6 = 60 + 54 = 114"},{"id":"b","label":"19 × 6 = 20 × 6 − 1 × 6 = 120 − 6 = 114"},{"id":"c","label":"19 × 6 = 19 × 3 × 2 = 57 × 2 = 114"},{"id":"d","label":"Les trois stratégies sont correctes, mais la stratégie (b) est souvent la plus rapide car elle remplace 19 par le nombre rond 20"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'Les trois stratégies sont mathématiquement correctes et donnent toutes 114. Cependant, la stratégie (b) — 20 × 6 − 6 = 114 — est généralement la plus efficace en calcul mental car elle utilise la distributivité avec un nombre rond (20), ce qui simplifie le calcul intermédiaire. On remplace 19 par (20 − 1), puis on applique la distributivité : (20 − 1) × 6 = 20 × 6 − 1 × 6 = 120 − 6 = 114. La stratégie (a) — décomposer 19 en 10 + 9 — fonctionne aussi mais nécessite de calculer 9 × 6, ce qui est un peu moins immédiat. La stratégie (c) — factoriser 6 en 3 × 2 — est élégante mais requiert de garder en mémoire le résultat intermédiaire 57. Le choix de la stratégie la plus adaptée dépend du contexte et des nombres en jeu. Au CRPE, on attend du candidat qu''il sache proposer et comparer plusieurs stratégies de calcul mental.',
  'Croire qu''il n''existe qu''une seule bonne méthode. La flexibilité calculatoire consiste justement à choisir la stratégie la mieux adaptée aux nombres en jeu.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication', 'Intermediaire',
  'vrai_faux',
  'Pour calculer mentalement le carré d''un nombre terminant par 5, on peut utiliser la formule suivante : n5² = n × (n + 1) suivi de 25. Par exemple, 35² = 3 × 4 = 12, puis on ajoute 25 → 1 225. Ainsi, 75² = 5 625.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Cette stratégie est correcte. Démontrons-la algébriquement : un nombre terminant par 5 s''écrit sous la forme (10n + 5). Son carré vaut (10n + 5)² = 100n² + 100n + 25 = 100 × n(n + 1) + 25. Le résultat s''obtient donc en calculant n × (n + 1), puis en écrivant 25 à la fin. Vérifions avec 75 : n = 7, donc 7 × 8 = 56, on ajoute 25 → 5 625. Vérification : 75 × 75 = 75 × 70 + 75 × 5 = 5 250 + 375 = 5 625. Autres exemples : 15² → 1 × 2 = 2, puis 25 → 225 ; 45² → 4 × 5 = 20, puis 25 → 2 025 ; 95² → 9 × 10 = 90, puis 25 → 9 025. Cette astuce, bien qu''elle relève d''une identité remarquable, illustre comment la compréhension algébrique nourrit le calcul mental. Au CRPE, la connaissance de telles propriétés des carrés est régulièrement mobilisée.',
  'Confondre n × (n + 1) avec n² + 1 ou n × n. Il faut bien multiplier le chiffre des dizaines par son successeur, pas par lui-même.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8100000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_calcul_mental_multiplication',
  'Calcul mental — Stratégies de multiplication', 'Intermediaire',
  'reponse_courte',
  'Un commerçant vend 12 caisses de 25 bouteilles. Sans poser l''opération, estimez rapidement le nombre total de bouteilles en utilisant une stratégie de calcul mental adaptée.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["300","300 bouteilles"]}'::jsonb,
  'Pour calculer 12 × 25 mentalement, plusieurs stratégies sont possibles. Stratégie 1 : utiliser la propriété × 25 = ÷ 4 × 100. On a 12 ÷ 4 = 3, puis 3 × 100 = 300. Stratégie 2 : décomposer 12 = 4 × 3, donc 12 × 25 = 4 × 3 × 25 = 4 × 75 = 300 (car 3 × 25 = 75 et 4 × 75 = 300). Stratégie 3 : utiliser la distributivité : 12 × 25 = 10 × 25 + 2 × 25 = 250 + 50 = 300. Stratégie 4 : remarquer que 12 × 25 = 12 × 100 ÷ 4 = 1 200 ÷ 4 = 300. La richesse du calcul mental réside dans cette multiplicité d''approches. L''important est de choisir la stratégie la plus fluide selon ses connaissances et les nombres en jeu. Ce type de problème contextualisé est fréquent au CRPE : il évalue à la fois la capacité de calcul et l''aptitude à modéliser une situation concrète.',
  'Poser la multiplication en colonnes au lieu d''utiliser une stratégie mentale. L''objectif du calcul mental est de mobiliser des propriétés des opérations (commutativité, distributivité, associativité) pour simplifier le calcul.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
