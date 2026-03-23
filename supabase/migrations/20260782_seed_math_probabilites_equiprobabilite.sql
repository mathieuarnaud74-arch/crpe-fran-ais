-- Seed: Probabilités et équiprobabilité (7 exercices)
-- Subdomain: organisation_donnees | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité', 'Intermediaire',
  'qcm',
  'Qu''appelle-t-on une situation d''équiprobabilité ?',
  NULL,
  '[{"id":"a","label":"Une situation où tous les résultats possibles ont la même probabilité de se produire"},{"id":"b","label":"Une situation où l''on est sûr du résultat"},{"id":"c","label":"Une situation où il y a exactement deux résultats possibles"},{"id":"d","label":"Une situation où la probabilité de chaque événement est supérieure à 50 %"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''équiprobabilité désigne une situation aléatoire dans laquelle tous les résultats élémentaires (ou issues) ont la même probabilité de se produire. Par exemple, un dé non truqué est un modèle d''équiprobabilité : chaque face a une probabilité de 1/6 d''apparaître. De même, une pièce équilibrée donne pile ou face avec la même probabilité de 1/2. L''équiprobabilité n''exige pas qu''il y ait exactement deux résultats, ni que la probabilité soit supérieure à 50 %. Les programmes Éduscol du cycle 3 introduisent la notion d''équiprobabilité à travers des expériences concrètes (lancers de dés, tirages de cartes).',
  'Confondre équiprobabilité avec certitude, ou croire que l''équiprobabilité n''existe que pour deux résultats (pile/face).',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité', 'Intermediaire',
  'vrai_faux',
  'On lance un dé truqué qui a deux fois plus de chances de tomber sur 6 que sur chacune des autres faces. La situation est équiprobable.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Dans ce cas, le 6 a une probabilité plus grande que les autres faces. Si on note p la probabilité de chaque face de 1 à 5, alors la probabilité du 6 est 2p. La somme vaut 1 : 5p + 2p = 7p = 1, donc p = 1/7 et P(6) = 2/7. Les faces n''ont pas la même probabilité (1/7 ≠ 2/7), donc la situation n''est pas équiprobable. Pour qu''il y ait équiprobabilité, il faudrait que chaque face ait une probabilité de 1/6. Distinguer une situation équiprobable d''une situation non équiprobable est fondamental : dans le cas non équiprobable, on ne peut pas simplement compter les cas favorables et diviser par le nombre total de cas.',
  'Croire que tout lancer de dé est automatiquement équiprobable, sans vérifier si le dé est truqué ou non.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité', 'Intermediaire',
  'qcm',
  'On lance un dé équilibré à 6 faces. Quelle est la probabilité d''obtenir un nombre strictement supérieur à 4 ?',
  NULL,
  '[{"id":"a","label":"1/6"},{"id":"b","label":"2/6 soit 1/3"},{"id":"c","label":"4/6 soit 2/3"},{"id":"d","label":"3/6 soit 1/2"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les résultats strictement supérieurs à 4 sont : 5 et 6. Il y a donc 2 résultats favorables sur 6 résultats possibles (équiprobables). La probabilité est : 2/6 = 1/3 ≈ 0,333. Formule générale en situation d''équiprobabilité : P(événement) = nombre de cas favorables / nombre total de cas. Attention à « strictement supérieur à 4 » : le 4 n''est pas inclus. Si la question disait « supérieur ou égal à 4 », les résultats seraient 4, 5 et 6, soit une probabilité de 3/6 = 1/2. La précision du vocabulaire mathématique est essentielle (Éduscol).',
  'Inclure le 4 dans les résultats favorables (« supérieur à 4 » ≠ « supérieur ou égal à 4 »), ce qui donnerait 3/6 au lieu de 2/6.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité', 'Intermediaire',
  'reponse_courte',
  'On tire une carte au hasard dans un jeu standard de 32 cartes. Quelle est la probabilité de tirer un roi ? (Répondez sous forme de fraction simplifiée, ex : 1/4)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/8","1 / 8","1/8e"]}'::jsonb,
  'Un jeu de 32 cartes contient 4 rois (roi de cœur, roi de carreau, roi de trèfle, roi de pique). La probabilité de tirer un roi est : 4/32 = 1/8. Chaque carte a la même probabilité d''être tirée (équiprobabilité du tirage au hasard), donc on applique la formule : P = nombre de cas favorables / nombre total de cas = 4/32 = 1/8. On peut exprimer ce résultat en décimal : 1/8 = 0,125, soit 12,5 %. Les jeux de cartes sont un support classique pour travailler les probabilités en situation d''équiprobabilité au cycle 3 et au CRPE.',
  'Oublier qu''il y a 4 rois dans un jeu de 32 cartes (un par couleur) et répondre 1/32.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité', 'Intermediaire',
  'qcm',
  'On lance deux dés équilibrés à 6 faces et on additionne les résultats. Quelle est la probabilité d''obtenir une somme égale à 7 ?',
  NULL,
  '[{"id":"a","label":"1/6"},{"id":"b","label":"6/36 soit 1/6"},{"id":"c","label":"7/36"},{"id":"d","label":"1/12"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Avec deux dés, il y a 6 × 6 = 36 résultats équiprobables (chaque couple (dé1, dé2) a la même probabilité). Les couples donnant une somme de 7 sont : (1,6), (2,5), (3,4), (4,3), (5,2), (6,1) — soit 6 couples. La probabilité est donc 6/36 = 1/6. La somme 7 est la somme la plus probable avec deux dés. On peut le vérifier : la somme 2 n''a qu''une seule façon (1,1), la somme 3 en a deux (1,2 et 2,1), etc. La somme 7 est au « milieu » et maximise le nombre de combinaisons. Ce problème illustre que même si chaque dé est équiprobable, les sommes ne le sont pas.',
  'Croire que toutes les sommes (de 2 à 12) sont équiprobables, et répondre 1/11. Les sommes ne sont PAS équiprobables car elles peuvent être obtenues de différentes façons.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité', 'Intermediaire',
  'vrai_faux',
  'On lance deux dés équilibrés à 6 faces et on note la somme des résultats. La situation est équiprobable : chaque somme (de 2 à 12) a la même probabilité d''apparaître.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'La situation n''est PAS équiprobable pour les sommes. Bien que chaque couple (dé1, dé2) soit équiprobable parmi les 36 possibles, les sommes ne le sont pas car certaines sommes peuvent être obtenues de plus de façons que d''autres. Par exemple : la somme 2 ne s''obtient que par (1,1) → probabilité 1/36 ; la somme 7 s''obtient par (1,6), (2,5), (3,4), (4,3), (5,2), (6,1) → probabilité 6/36 = 1/6. La somme 7 est donc 6 fois plus probable que la somme 2. C''est une erreur très courante de croire que l''équiprobabilité des résultats élémentaires (les faces de chaque dé) implique l''équiprobabilité des événements composés (les sommes). Ce contre-exemple est classique en didactique des probabilités.',
  'Raisonner ainsi : « puisque les dés sont équilibrés, les sommes doivent aussi être équiprobables ». L''équiprobabilité des résultats élémentaires ne se transmet pas aux événements composés.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité', 'Intermediaire',
  'qcm',
  'Lors d''une tombola, 500 billets sont vendus. Il y a 1 lot principal, 4 lots secondaires et 20 lots de consolation. Quelle est la probabilité de gagner au moins un lot en achetant un seul billet ?',
  NULL,
  '[{"id":"a","label":"1/500"},{"id":"b","label":"25/500 soit 1/20"},{"id":"c","label":"5/500 soit 1/100"},{"id":"d","label":"20/500 soit 1/25"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le nombre total de billets gagnants est : 1 + 4 + 20 = 25 billets. Sur 500 billets au total, la probabilité de gagner au moins un lot est : 25/500 = 1/20 = 5 %. C''est une situation d''équiprobabilité : chaque billet a la même probabilité d''être tiré. On applique donc directement la formule P = cas favorables / cas possibles = 25/500. La tombola est un exemple concret d''expérience aléatoire en situation d''équiprobabilité, souvent utilisé dans les manuels de cycle 3 (Éduscol). Ce problème permet de travailler la simplification de fractions (25/500 = 1/20) et la conversion en pourcentage.',
  'Ne compter que le lot principal (1/500) en oubliant les lots secondaires et de consolation, ou confondre le nombre de lots avec le nombre de billets.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
