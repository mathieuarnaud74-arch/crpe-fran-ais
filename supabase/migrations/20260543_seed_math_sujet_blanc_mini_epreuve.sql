-- Série : Sujet blanc CRPE — Mini-épreuve mathématique
-- 8 questions, Avancé (Difficile), premium
-- Structure type épreuve CRPE : 4 exercices de maths pures + 2 exercices didactiques + 2 problèmes à étapes
-- Progression : montée en difficulté progressive, multi-domaines
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — Exercice 1 : Arithmétique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Difficile',
  'reponse_courte',
  'Un chocolatier dispose de 144 chocolats au lait et 108 chocolats noirs. Il veut composer des boîtes identiques contenant les deux types, en utilisant TOUS les chocolats. Combien de boîtes peut-il faire au maximum, et combien de chaque type par boîte ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["36 boîtes, 4 au lait et 3 noirs","36 boîtes","36","36 boîtes (4 au lait, 3 noirs)","36 boites"]}'  ,
  'Le nombre de boîtes doit diviser 144 et 108. Le maximum est PGCD(144, 108). Décomposition : 144 = 2⁴ × 3² et 108 = 2² × 3³. PGCD = 2² × 3² = 4 × 9 = 36. Donc 36 boîtes, chacune contenant 144/36 = 4 chocolats au lait et 108/36 = 3 chocolats noirs. Vérification : 36 × 4 = 144 ✓ et 36 × 3 = 108 ✓. Total par boîte : 7 chocolats. Ce type d''exercice est un classique CRPE qui teste l''application du PGCD à un problème concret.',
  'Diviser directement 144 par 108 ou chercher un diviseur par tâtonnement au lieu d''utiliser le PGCD. Ou confondre PGCD et PPCM.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Exercice 2 : Géométrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Difficile',
  'qcm',
  'Un triangle ABC est tel que AB = 5 cm, BC = 12 cm et AC = 13 cm. Quelle est la nature de ce triangle ? Justifiez.',
  NULL,
  '[{"id":"a","label":"Rectangle en B, car AB² + BC² = AC² (25 + 144 = 169 = 13²)"},{"id":"b","label":"Rectangle en A, car c''est le plus petit angle"},{"id":"c","label":"Isocèle en B, car AB ≈ BC"},{"id":"d","label":"Quelconque, car aucun côté n''est égal"}]',
  '{"mode":"single","value":"a"}',
  'Vérifions la réciproque du théorème de Pythagore. Le plus grand côté est AC = 13. AB² + BC² = 5² + 12² = 25 + 144 = 169 = 13² = AC². L''égalité est vérifiée, donc le triangle est rectangle, et l''angle droit est en B (le sommet opposé à l''hypoténuse AC). Le triplet (5 ; 12 ; 13) est un triplet pythagoricien classique (à connaître au même titre que 3-4-5 et 8-15-17). L''angle droit est TOUJOURS au sommet opposé au plus grand côté (l''hypoténuse). La réponse B est fausse car l''angle droit n''est pas au sommet A mais au sommet B.',
  'Identifier correctement le triangle rectangle mais placer l''angle droit au mauvais sommet. L''angle droit est opposé à l''hypoténuse (le plus grand côté).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Exercice 3 : Proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Difficile',
  'reponse_courte',
  'Dans un magasin, un article est affiché avec « −30 % ». Le prix soldé est 56 €. Quel était le prix initial avant la réduction ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["80 €","80","80,00 €","80.00","80€","80,00"]}'  ,
  'Soit P le prix initial. Après une réduction de 30 %, le prix soldé est P × 0,70 = 56 €. Donc P = 56 / 0,70 = 80 €. Vérification : 80 × 0,70 = 56 € ✓. Autre méthode : 56 € représente 70 % du prix initial. 1 % = 56/70 = 0,80 €. 100 % = 0,80 × 100 = 80 €. ATTENTION : il ne faut PAS calculer 56 + 30 % de 56 = 56 + 16,80 = 72,80 € (faux). La raison : les 30 % de réduction portent sur le prix initial (inconnu), pas sur le prix soldé.',
  'Ajouter 30 % au prix soldé : 56 × 1,30 = 72,80 € (faux). La hausse de 30 % sur le prix soldé ne compense pas la baisse de 30 % sur le prix initial car les bases sont différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Exercice 4 : Statistiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000004',
  'Mathematiques',
  'organisation_donnees',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Difficile',
  'qcm',
  'La moyenne d''une classe de 24 élèves est de 12,5. Un 25e élève arrive avec une note de 17. Quelle est la nouvelle moyenne de la classe ?',
  NULL,
  '[{"id":"a","label":"12,68"},{"id":"b","label":"14,75"},{"id":"c","label":"12,50"},{"id":"d","label":"13,50"}]',
  '{"mode":"single","value":"a"}',
  'Somme des notes des 24 élèves = 24 × 12,5 = 300. Avec le 25e élève : somme = 300 + 17 = 317. Nouvelle moyenne = 317 / 25 = 12,68. La moyenne a augmenté (de 12,5 à 12,68) car la note du nouvel élève (17) est supérieure à l''ancienne moyenne. Mais l''augmentation est faible car un seul élève a peu d''impact sur un groupe de 25. Le distracteur B (14,75 = (12,5+17)/2) correspond à l''erreur de faire la moyenne des deux moyennes, sans pondérer par les effectifs.',
  'Faire la moyenne des deux moyennes : (12,5 + 17) / 2 = 14,75. C''est FAUX car il y a 24 élèves d''un côté et 1 seul de l''autre — il faut pondérer.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Exercice 5 : Didactique — Analyse de production d'élève
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Difficile',
  'qcm',
  'Un élève de CM2 pose la multiplication 23 × 15 et trouve 235. En analysant sa copie, vous constatez qu''il a écrit : 23 × 5 = 115, puis 23 × 1 = 23, et il a additionné 115 + 23 = 138... non, il a écrit 115 + 120 = 235. Quel est le diagnostic le plus probable ?',
  NULL,
  '[{"id":"a","label":"L''élève ne connaît pas ses tables de multiplication"},{"id":"b","label":"L''élève a mal aligné les résultats partiels : il n''a pas décalé le produit partiel 23 × 1 dizaine d''un rang vers la gauche (il aurait dû écrire 230, pas 120)"},{"id":"c","label":"L''élève a confondu addition et multiplication"},{"id":"d","label":"L''élève ne comprend pas la numération décimale"}]',
  '{"mode":"single","value":"b"}',
  'L''erreur est un problème de positionnement dans la multiplication posée. Quand on multiplie 23 par le chiffre des dizaines (1, qui vaut en réalité 10), le résultat partiel 23 × 10 = 230 doit être décalé d''un rang vers la gauche. L''élève a écrit 120 au lieu de 230, ce qui suggère qu''il a décalé incorrectement ou commis une erreur dans le calcul du produit partiel. Le résultat correct est : 23 × 5 = 115, puis 23 × 10 = 230. Total : 115 + 230 = 345. L''erreur n''est pas dans les tables (23 × 5 = 115 est correct) mais dans la gestion de la valeur positionnelle du chiffre des dizaines dans la multiplication posée.',
  'Diagnostiquer un problème de tables alors que l''élève a bien calculé 23 × 5 = 115. Le vrai problème est la compréhension de la valeur positionnelle dans l''algorithme de multiplication posée.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Exercice 6 : Didactique — Choix pédagogique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Difficile',
  'qcm',
  'Pour introduire la notion de fraction en CM1, quelle situation de départ est la plus pertinente selon les programmes ?',
  NULL,
  '[{"id":"a","label":"Donner la définition formelle : une fraction a/b est le quotient de a par b"},{"id":"b","label":"Proposer un problème de partage équitable : partager 3 pizzas entre 4 enfants"},{"id":"c","label":"Faire mémoriser les fractions usuelles (1/2, 1/3, 1/4) par cœur"},{"id":"d","label":"Commencer par les opérations sur les fractions (addition, multiplication)"}]',
  '{"mode":"single","value":"b"}',
  'Les programmes préconisent d''introduire les fractions par le SENS avant la technique. Le partage équitable est la situation de référence : « partager 3 pizzas entre 4 enfants » donne naturellement 3/4 de pizza par enfant. L''élève construit la fraction comme résultat d''un partage, ce qui donne du sens au numérateur (nombre de parts) et au dénominateur (nombre de parts dans l''unité). La réponse A (définition formelle) est trop abstraite pour un CM1 — les définitions viennent après la construction du sens. La réponse D (opérations) est prématurée — on opère sur les fractions une fois qu''on a compris ce qu''elles représentent. Au CRPE, la progression recommandée est : sens (partage) → représentation (droite graduée, aires) → écriture → opérations.',
  'Commencer par la définition formelle ou les opérations avant d''avoir construit le sens. Les programmes insistent sur la construction progressive du concept par des situations concrètes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Exercice 7 : Problème à étapes (grandeurs composées)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Difficile',
  'reponse_courte',
  'Une citerne cylindrique a un rayon de 1,5 m et une hauteur de 2 m. Elle est remplie au 2/3. On prélève 1 000 litres. Quel volume d''eau reste-t-il dans la citerne, en litres ? (Prendre π ≈ 3,14. Arrondir à l''unité.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8 420 L","8420","8 420","8420 L","8420L","8420 litres","8 420 litres"]}'  ,
  'Étape 1 — Volume total : V = π × r² × h = 3,14 × 1,5² × 2 = 3,14 × 2,25 × 2 = 3,14 × 4,5 = 14,13 m³. Étape 2 — Volume au 2/3 : 14,13 × 2/3 = 9,42 m³. Étape 3 — Conversion en litres : 1 m³ = 1 000 L, donc 9,42 m³ = 9 420 L. Étape 4 — Après prélèvement : 9 420 − 1 000 = 8 420 L. Ce problème enchaîne : géométrie (volume du cylindre), fractions (2/3), conversions (m³ → L), et soustraction. Chaque étape est simple individuellement, mais c''est la gestion de l''enchaînement qui est testée.',
  'Oublier de convertir les m³ en litres (1 m³ = 1 000 L, pas 100 L), ou oublier le prélèvement de 1 000 L dans le calcul final.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Exercice 8 : Problème ouvert (synthèse)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0090000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_1',
  'Sujet blanc CRPE — Mini-épreuve n°1',
  'Difficile',
  'qcm',
  'Un terrain rectangulaire de 60 m × 40 m est entouré d''un chemin de largeur uniforme de 2 m. Quelle est l''aire du chemin seul ?',
  NULL,
  '[{"id":"a","label":"400 m²"},{"id":"b","label":"416 m²"},{"id":"c","label":"384 m²"},{"id":"d","label":"424 m²"}]',
  '{"mode":"single","value":"b"}',
  'Le terrain + chemin forme un rectangle de (60 + 2×2) × (40 + 2×2) = 64 × 44 = 2 816 m². Aire du terrain seul = 60 × 40 = 2 400 m². Aire du chemin = 2 816 − 2 400 = 416 m². Erreur fréquente : calculer le périmètre × largeur du chemin = 200 × 2 = 400 m² (réponse A), ce qui oublie les 4 coins du chemin. Le chemin comporte 4 rectangles le long des côtés PLUS 4 petits carrés dans les coins (de 2 × 2 = 4 m² chacun). 4 × 4 = 16 m² de coins, d''où 400 + 16 = 416 m². Ce problème est un grand classique du CRPE.',
  'Calculer le périmètre × largeur (200 × 2 = 400 m²) en oubliant les 4 coins carrés de 2 × 2 = 4 m² chacun. Il manque 4 × 4 = 16 m².',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
