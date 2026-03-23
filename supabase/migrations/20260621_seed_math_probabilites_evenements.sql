-- Série : Probabilités — Événements et calculs
-- Sous-domaine : organisation_donnees | Niveau : Intermédiaire | Accès : premium
-- 7 questions — progression amorce → consolidation → approfondissement

-- Q1 — Amorce (QCM) — Probabilité d'un événement élémentaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_evenements',
  'Probabilités — Événements et calculs', 'Intermediaire',
  'qcm',
  'On lance un dé cubique équilibré à 6 faces. Quelle est la probabilité d''obtenir le nombre 4 ?',
  NULL,
  '[{"id":"a","label":"1/4"},{"id":"b","label":"1/6"},{"id":"c","label":"4/6"},{"id":"d","label":"1/3"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un dé cubique équilibré possède 6 faces, chacune ayant la même probabilité d''apparaître.\nL''univers des possibles est Ω = {1, 2, 3, 4, 5, 6}, soit 6 issues équiprobables.\nL''événement « obtenir 4 » ne comporte qu''une seule issue favorable.\nProbabilité = nombre d''issues favorables ÷ nombre total d''issues = 1/6.\n\nLe distracteur 1/4 provient d''une confusion entre la valeur du nombre (4) et le nombre de faces.',
  'Confondre la valeur inscrite sur la face (4) avec le calcul de probabilité, et écrire 1/4 au lieu de 1/6.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Amorce (vrai/faux) — Événement contraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_evenements',
  'Probabilités — Événements et calculs', 'Intermediaire',
  'vrai_faux',
  'On tire une carte au hasard dans un jeu de 32 cartes. La probabilité de ne PAS obtenir un as est 28/32.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Un jeu de 32 cartes contient 4 as. La probabilité d''obtenir un as est P(As) = 4/32.\nL''événement contraire « ne pas obtenir un as » a pour probabilité :\nP(contraire) = 1 − P(As) = 1 − 4/32 = 28/32 = 7/8.\nL''affirmation est donc vraie.\n\nRappel : pour tout événement A, P(Ā) = 1 − P(A). C''est la règle de l''événement complémentaire (ou contraire).',
  'Calculer 32 − 4 = 28 mais oublier de le mettre en rapport avec le total, ou confondre un jeu de 32 et un jeu de 52 cartes (dans un jeu de 52, il y a aussi 4 as, mais le total change).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Consolidation (réponse courte) — Union d'événements incompatibles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_evenements',
  'Probabilités — Événements et calculs', 'Intermediaire',
  'reponse_courte',
  'On lance un dé cubique équilibré. Quelle est la probabilité d''obtenir un nombre pair OU le nombre 5 ? Donner la réponse sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2/3","4/6"]}'::jsonb,
  'Les nombres pairs sur un dé sont {2, 4, 6} et le nombre 5 est {5}.\nCes deux événements sont incompatibles (disjoints) : aucun nombre ne peut être à la fois pair et égal à 5.\nDonc P(pair OU 5) = P(pair) + P(5) = 3/6 + 1/6 = 4/6 = 2/3.\n\nRappel : lorsque deux événements A et B sont incompatibles (A ∩ B = ∅), on a P(A ∪ B) = P(A) + P(B).',
  'Oublier de vérifier que les événements sont incompatibles et appliquer aveuglément P(A ∪ B) = P(A) + P(B) − P(A ∩ B), ou se tromper dans le dénombrement des nombres pairs.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Consolidation (QCM) — Probabilité avec un jeu de cartes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_evenements',
  'Probabilités — Événements et calculs', 'Intermediaire',
  'qcm',
  'On tire une carte au hasard dans un jeu de 52 cartes. Quelle est la probabilité d''obtenir un roi ou un cœur ?',
  NULL,
  '[{"id":"a","label":"17/52"},{"id":"b","label":"16/52"},{"id":"c","label":"4/13"},{"id":"d","label":"30/52"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'On utilise la formule de l''union : P(Roi ∪ Cœur) = P(Roi) + P(Cœur) − P(Roi ET Cœur).\n• P(Roi) = 4/52 (4 rois dans le jeu)\n• P(Cœur) = 13/52 (13 cartes de cœur)\n• P(Roi de cœur) = 1/52 (il n''y a qu''un seul roi de cœur)\n\nP(Roi ∪ Cœur) = 4/52 + 13/52 − 1/52 = 16/52 = 4/13.\n\nLe distracteur 16/52 est correct en valeur mais n''est pas simplifié. Le distracteur 17/52 provient de l''oubli de soustraire l''intersection. Le distracteur 30/52 provient d''une erreur de comptage.',
  'Additionner les deux probabilités sans retirer l''intersection (le roi de cœur compté deux fois) : 4/52 + 13/52 = 17/52, ce qui est faux car les événements ne sont pas incompatibles.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Consolidation (vrai/faux) — Lecture d'un arbre de probabilités
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_evenements',
  'Probabilités — Événements et calculs', 'Intermediaire',
  'vrai_faux',
  'On lance successivement deux pièces de monnaie équilibrées. Un arbre de probabilités montre 4 issues : (P,P), (P,F), (F,P) et (F,F), chacune de probabilité 1/4.\n\nAffirmation : « La probabilité d''obtenir au moins un pile est 3/4. »',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''événement « au moins un pile » est le contraire de « aucun pile » (c''est-à-dire « deux faces »).\nP(F,F) = 1/4.\nDonc P(au moins un pile) = 1 − P(F,F) = 1 − 1/4 = 3/4.\n\nOn peut aussi dénombrer directement : les issues avec au moins un pile sont (P,P), (P,F), (F,P), soit 3 issues sur 4.\nP = 3/4. L''affirmation est vraie.\n\nDans un arbre, la probabilité d''un chemin se calcule en multipliant les probabilités le long des branches. Ici : P(P,F) = 1/2 × 1/2 = 1/4.',
  'Confondre « au moins un pile » avec « exactement un pile ». « Exactement un pile » ne comporte que 2 issues (P,F) et (F,P), soit une probabilité de 2/4 = 1/2. « Au moins un pile » en comporte 3.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Approfondissement (QCM) — Événements indépendants
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_evenements',
  'Probabilités — Événements et calculs', 'Intermediaire',
  'qcm',
  'Un sac contient 3 boules rouges et 2 boules bleues. On tire une boule, on note sa couleur, puis on la remet dans le sac avant de tirer une seconde boule. Quelle est la probabilité d''obtenir deux boules rouges ?',
  NULL,
  '[{"id":"a","label":"9/25"},{"id":"b","label":"6/25"},{"id":"c","label":"3/10"},{"id":"d","label":"6/20"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Puisqu''on remet la boule après le premier tirage (tirage avec remise), les deux tirages sont indépendants.\nP(rouge au 1er tirage) = 3/5\nP(rouge au 2ᵉ tirage) = 3/5 (la composition du sac n''a pas changé)\n\nPour deux événements indépendants : P(A ∩ B) = P(A) × P(B)\nP(deux rouges) = 3/5 × 3/5 = 9/25.\n\nLe distracteur 6/25 provient du calcul 3/5 × 2/5 (une rouge puis une bleue).\nLe distracteur 3/10 = 6/20 provient d''un tirage sans remise : 3/5 × 2/4 = 6/20.',
  'Calculer comme un tirage sans remise (3/5 × 2/4) alors que l''énoncé précise qu''on remet la boule. C''est une confusion fréquente entre tirage avec et sans remise.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Approfondissement (réponse courte) — Probabilité conditionnelle introductive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_evenements',
  'Probabilités — Événements et calculs', 'Intermediaire',
  'reponse_courte',
  'Dans une classe de 30 élèves, 18 pratiquent un sport et 12 jouent d''un instrument de musique. Parmi ceux qui pratiquent un sport, 6 jouent également d''un instrument.\nOn choisit un élève au hasard parmi ceux qui pratiquent un sport. Quelle est la probabilité qu''il joue aussi d''un instrument ? Donner la réponse sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/3","6/18"]}'::jsonb,
  'On se restreint à la sous-population des sportifs : 18 élèves.\nParmi ces 18 sportifs, 6 jouent d''un instrument.\nLa probabilité cherchée est : 6/18 = 1/3.\n\nC''est un exemple introductif de probabilité conditionnelle : P(Instrument | Sport) = P(Instrument ∩ Sport) / P(Sport) = (6/30) / (18/30) = 6/18 = 1/3.\n\nAttention : on ne divise PAS par 30 (effectif total) mais par 18 (effectif de la condition « pratique un sport »).',
  'Diviser par l''effectif total de la classe (6/30 = 1/5) au lieu de l''effectif des sportifs (6/18 = 1/3). C''est la confusion classique entre probabilité conditionnelle et probabilité de l''intersection.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;