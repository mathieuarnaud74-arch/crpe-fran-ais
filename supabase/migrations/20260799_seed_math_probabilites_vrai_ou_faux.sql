-- Série : Probabilités — Vrai ou faux ?
-- Sous-domaine : organisation_donnees | Niveau : Intermédiaire | Accès : premium
-- 7 questions vrai/faux — progression amorce → consolidation → approfondissement
-- Thème : pièges classiques et idées reçues sur les probabilités

-- Q1 — Amorce — Probabilité d'un événement simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?', 'Intermediaire',
  'vrai_faux',
  'On lance un dé cubique équilibré à 6 faces. La probabilité d''obtenir un nombre impair est égale à 1/2.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Les nombres impairs sur un dé à 6 faces sont {1, 3, 5}, soit 3 issues favorables sur 6 issues possibles.\nP(impair) = 3/6 = 1/2.\nL''affirmation est vraie.\n\nRappel : dans une situation d''équiprobabilité, P(événement) = nombre d''issues favorables ÷ nombre total d''issues.',
  'Ne pas lister correctement les nombres impairs de 1 à 6. Certains élèves incluent 0 par erreur ou oublient le 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Amorce — Le sophisme du joueur (gambler's fallacy)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?', 'Intermediaire',
  'vrai_faux',
  'On lance une pièce de monnaie équilibrée 10 fois de suite et on obtient pile à chaque fois. La probabilité d''obtenir pile au 11ᵉ lancer est alors supérieure à 1/2.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est FAUX. Chaque lancer est indépendant des précédents. La pièce n''a pas de « mémoire ».\nQuel que soit le résultat des 10 premiers lancers, la probabilité d''obtenir pile au 11ᵉ lancer reste exactement 1/2.\n\nCette erreur de raisonnement porte un nom : le « sophisme du joueur » (ou « gambler''s fallacy »). Elle consiste à croire que les résultats passés influencent les résultats futurs d''expériences indépendantes.\n\nC''est un piège classique au CRPE et un point essentiel de didactique des probabilités.',
  'Croire que la pièce « doit » retomber sur face pour « rééquilibrer » les résultats. C''est le sophisme du joueur : les lancers successifs sont indépendants.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Consolidation — Événement complémentaire dans une urne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?', 'Intermediaire',
  'vrai_faux',
  'Une urne contient 4 boules rouges et 6 boules vertes. On tire une boule au hasard. La probabilité de tirer une boule qui n''est pas verte est 2/5.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''urne contient 4 + 6 = 10 boules au total.\n« Tirer une boule qui n''est pas verte » revient à tirer une boule rouge.\nP(non verte) = P(rouge) = 4/10 = 2/5.\n\nOn peut aussi raisonner par l''événement complémentaire :\nP(non verte) = 1 − P(verte) = 1 − 6/10 = 4/10 = 2/5.\n\nL''affirmation est vraie.',
  'Calculer 6/10 au lieu de 4/10 en confondant « pas verte » avec « verte ». Toujours bien identifier ce que l''on cherche avant de calculer.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Consolidation — Additivité des probabilités (piège)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?', 'Intermediaire',
  'vrai_faux',
  'Soit A et B deux événements tels que P(A) = 0,3 et P(B) = 0,5. On peut affirmer que P(A ou B) = 0,8.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est FAUX. La formule P(A ∪ B) = P(A) + P(B) n''est valable QUE si A et B sont incompatibles (disjoints), c''est-à-dire si A ∩ B = ∅.\n\nDans le cas général, la formule correcte est :\nP(A ∪ B) = P(A) + P(B) − P(A ∩ B)\n\nSans connaître P(A ∩ B), on ne peut pas conclure que P(A ∪ B) = 0,8.\nPar exemple, si P(A ∩ B) = 0,1, alors P(A ∪ B) = 0,3 + 0,5 − 0,1 = 0,7.\n\nRègle d''or : on ne peut additionner des probabilités que si les événements sont mutuellement exclusifs.',
  'Additionner directement les probabilités sans vérifier si les événements sont incompatibles. C''est l''erreur la plus fréquente en probabilités au CRPE.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Consolidation — Événements incompatibles ou non
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?', 'Intermediaire',
  'vrai_faux',
  'On tire une carte au hasard dans un jeu de 32 cartes. Les événements « obtenir un roi » et « obtenir un trèfle » sont incompatibles.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est FAUX. Deux événements sont incompatibles s''ils ne peuvent pas se réaliser en même temps.\nOr, il existe le roi de trèfle ! On peut donc tirer une carte qui est à la fois un roi ET un trèfle.\nLes événements « roi » et « trèfle » ne sont donc pas incompatibles : leur intersection n''est pas vide.\n\nContre-exemple : « obtenir un roi » et « obtenir un 7 » SONT incompatibles, car une carte ne peut pas être simultanément un roi et un 7.',
  'Confondre « événements différents » et « événements incompatibles ». Deux événements peuvent être différents sans être incompatibles s''il existe des issues qui appartiennent aux deux.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Approfondissement — Somme de deux dés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?', 'Intermediaire',
  'vrai_faux',
  'On lance deux dés cubiques équilibrés à 6 faces et on additionne les résultats. La probabilité d''obtenir une somme égale à 7 est supérieure à la probabilité d''obtenir une somme égale à 6.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est VRAI. L''univers des couples (dé 1, dé 2) comprend 6 × 6 = 36 issues équiprobables.\n\nSomme = 7 → couples : (1,6), (2,5), (3,4), (4,3), (5,2), (6,1) → 6 issues\nP(somme = 7) = 6/36 = 1/6\n\nSomme = 6 → couples : (1,5), (2,4), (3,3), (4,2), (5,1) → 5 issues\nP(somme = 6) = 5/36\n\n6/36 > 5/36, donc P(somme = 7) > P(somme = 6).\n\n7 est la somme la plus probable avec deux dés, car c''est celle qui admet le plus grand nombre de décompositions.',
  'Croire que toutes les sommes (de 2 à 12) sont équiprobables. En réalité, avec deux dés, les sommes proches de 7 sont plus probables que les sommes extrêmes (2 ou 12).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Approfondissement — Probabilités sur un arbre (multiplier, pas additionner)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?', 'Intermediaire',
  'vrai_faux',
  'Dans un arbre de probabilités à deux épreuves successives indépendantes, la probabilité d''un chemin (une issue finale) se calcule en additionnant les probabilités inscrites sur chaque branche du chemin.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est FAUX. La probabilité d''un chemin dans un arbre se calcule en MULTIPLIANT (et non en additionnant) les probabilités de chaque branche le long du chemin.\n\nExemple : on lance deux pièces équilibrées.\nProbabilité du chemin (Pile, Face) = P(Pile) × P(Face) = 1/2 × 1/2 = 1/4.\nSi on additionnait : 1/2 + 1/2 = 1, ce qui est absurde (une probabilité de 1 signifierait un événement certain).\n\nL''addition intervient à une autre étape : lorsqu''on calcule la probabilité d''un événement constitué de PLUSIEURS chemins, on additionne les probabilités des différents chemins.\n\nRetenir : « le long d''un chemin, on multiplie ; entre les chemins, on additionne ».',
  'Confondre les deux règles de l''arbre : multiplier le long d''un chemin vs additionner entre les chemins. Moyen mnémotechnique : « chemin = produit, réunion = somme ».',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;