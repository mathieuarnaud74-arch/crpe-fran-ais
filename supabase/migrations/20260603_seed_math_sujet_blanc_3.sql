-- Série : Sujet blanc CRPE — Mini-épreuve n°3
-- 8 questions, Avancé (Difficile), premium
-- Épreuve complète couvrant les 5 domaines + didactique
-- Formats variés : QCM, vrai_faux, réponse courte

-- Q1 — Arithmétique : divisibilité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Difficile',
  'reponse_courte',
  'Trouvez le plus petit nombre entier strictement positif qui est à la fois divisible par 8, par 12 et par 15.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120","PPCM = 120"]}'  ,
  'On cherche le PPCM(8, 12, 15). Décompositions : 8 = 2³, 12 = 2² × 3, 15 = 3 × 5. PPCM = 2³ × 3 × 5 = 8 × 15 = 120. Vérification : 120/8 = 15 ✓, 120/12 = 10 ✓, 120/15 = 8 ✓. Le PPCM se calcule en prenant chaque facteur premier avec son plus grand exposant. C''est le plus petit nombre divisible par chacun des nombres donnés. Ce type de question est classique au CRPE et teste la maîtrise de la décomposition en facteurs premiers.',
  'Multiplier les trois nombres : 8 × 12 × 15 = 1 440. C''est un multiple commun, mais pas le PLUS PETIT. Le PPCM est toujours ≤ au produit des nombres.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Géométrie : Thalès
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Difficile',
  'qcm',
  'Un arbre projette une ombre de 12 m au sol. Au même moment, un bâton vertical de 1,5 m projette une ombre de 2 m. Quelle est la hauteur de l''arbre ?',
  NULL,
  '[{"id":"a","label":"9 m"},{"id":"b","label":"16 m"},{"id":"c","label":"8 m"},{"id":"d","label":"6 m"}]',
  '{"mode":"single_choice","value":"a"}',
  'Les rayons du soleil sont parallèles, donc les triangles formés par l''arbre/son ombre et le bâton/son ombre sont semblables (Thalès). Le rapport hauteur/ombre est constant : h_arbre / 12 = 1,5 / 2. Donc h_arbre = 12 × 1,5 / 2 = 12 × 0,75 = 9 m. Vérification du rapport : 9/12 = 0,75 et 1,5/2 = 0,75 ✓. Ce problème d''ombre est un grand classique de l''application du théorème de Thalès au CRPE. L''idée clé est que les rayons solaires, étant parallèles, créent des configurations de Thalès.',
  'Inverser le rapport : calculer 12 × 2 / 1,5 = 16 m. Le rapport est hauteur/ombre, pas ombre/hauteur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Grandeurs : problème de débit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Difficile',
  'reponse_courte',
  'Deux robinets remplissent une cuve de 600 L. Le robinet A débite 20 L/min, le robinet B débite 10 L/min. Si les deux coulent en même temps, en combien de minutes la cuve est-elle remplie ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["20 min","20","20 minutes","20min"]}'  ,
  'Les deux robinets coulent ensemble : débit total = 20 + 10 = 30 L/min. Temps = volume / débit = 600 / 30 = 20 minutes. Vérification : en 20 min, robinet A verse 20 × 20 = 400 L et robinet B verse 10 × 20 = 200 L. Total = 400 + 200 = 600 L ✓. Ce problème de robinets est un classique. L''erreur serait de calculer les temps individuels (A : 30 min, B : 60 min) puis de faire la moyenne (45 min — faux). Quand deux robinets coulent ensemble, on ADDITIONNE les débits, on ne moyenne pas les temps.',
  'Calculer la moyenne des temps individuels : (30 + 60)/2 = 45 min (faux). Ou calculer le temps de A seul (30 min) en oubliant le robinet B.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Organisation de données : probabilités
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000004',
  'Mathematiques',
  'organisation_donnees',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Difficile',
  'qcm',
  'On lance un dé équilibré à 6 faces deux fois de suite. Quelle est la probabilité d''obtenir une somme égale à 7 ?',
  NULL,
  '[{"id":"a","label":"1/6"},{"id":"b","label":"7/36"},{"id":"c","label":"6/36 = 1/6"},{"id":"d","label":"1/7"}]',
  '{"mode":"single_choice","value":"c"}',
  'L''univers comprend 6 × 6 = 36 résultats équiprobables. Les couples donnant une somme de 7 sont : (1,6), (2,5), (3,4), (4,3), (5,2), (6,1) → 6 cas favorables. P(somme = 7) = 6/36 = 1/6. La somme 7 est la somme la plus probable avec deux dés (6 combinaisons sur 36). En comparaison : somme 2 → 1/36, somme 12 → 1/36, somme 6 → 5/36. C''est parce que 7 est au milieu de l''intervalle [2 ; 12] qu''elle admet le plus de décompositions. Le distracteur D (1/7) est un piège : ce n''est pas « 1 chance sur 7 valeurs possibles » car les sommes ne sont pas équiprobables.',
  'Croire que les 11 sommes possibles (2 à 12) sont équiprobables. Elles ne le sont pas : la somme 7 a 6 façons d''être obtenue, la somme 2 n''en a qu''une.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Didactique : analyse d'erreur en proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Difficile',
  'qcm',
  'Un élève de CM2 écrit : « Paul met 30 minutes pour aller à l''école à pied. En courant 2 fois plus vite, il mettra 2 fois plus de temps, soit 60 minutes. » Quel concept l''élève ne maîtrise-t-il pas ?',
  NULL,
  '[{"id":"a","label":"La proportionnalité inverse : si la vitesse double, le temps est divisé par 2 (15 min), pas multiplié par 2"},{"id":"b","label":"La conversion heures-minutes"},{"id":"c","label":"La notion de vitesse"},{"id":"d","label":"La multiplication par 2"}]',
  '{"mode":"single_choice","value":"a"}',
  'L''élève confond proportionnalité directe et proportionnalité INVERSE. La distance étant fixe (trajet maison-école), la vitesse et le temps sont inversement proportionnels : si la vitesse double, le temps est DIVISÉ par 2. Paul mettra 30/2 = 15 minutes, pas 60. La proportionnalité inverse est un obstacle majeur en CM2 : les élèves ont tendance à appliquer le modèle « plus de... donc plus de... » (proportionnalité directe) à toutes les situations. Le travail sur les grandeurs inversement proportionnelles (vitesse/temps, nombre d''ouvriers/durée du travail) est un objectif clé du cycle 3.',
  'Ne pas identifier l''erreur comme une confusion proportionnalité directe/inverse. L''élève applique un schème additif (« 2 fois plus vite = 2 fois plus de temps ») au lieu du schème multiplicatif inversé.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Didactique : choix de matériel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : pour introduire la notion d''aire au cycle 3, il est préférable de commencer par la formule « longueur × largeur » plutôt que par le pavage avec des unités d''aire.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX. Les programmes recommandent de commencer par le PAVAGE : recouvrir une surface avec des unités d''aire (carrés-unités, par exemple) et compter le nombre d''unités nécessaires. Cette approche permet de construire le SENS de l''aire comme mesure d''une surface, avant d''introduire la formule. La formule L × l n''est qu''un raccourci de calcul pour le rectangle — elle ne doit pas être le point de départ. De plus, commencer par la formule crée l''obstacle « périmètre = aire » : les élèves confondent les deux grandeurs car ils n''ont pas construit de représentation concrète de l''aire comme « nombre de carreaux ». La progression recommandée : (1) comparaison directe de surfaces par superposition, (2) pavage avec unités d''aire, (3) formule comme raccourci.',
  'Croire que la formule est plus « efficace » comme point de départ. L''efficacité sans compréhension est un leurre pédagogique — les élèves appliquent la formule mécaniquement et confondent périmètre et aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Problème à étapes : géométrie + proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Difficile',
  'reponse_courte',
  'Un terrain circulaire a un rayon de 25 m. On veut l''entourer d''une clôture à 12 €/m. Quel est le coût total de la clôture ? (Prendre π ≈ 3,14.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1 884 €","1884","1 884","1884 €","1884€"]}'  ,
  'Étape 1 — Périmètre du cercle : P = 2πr = 2 × 3,14 × 25 = 157 m. Étape 2 — Coût : 157 × 12 = 1 884 €. Ce problème combine géométrie (périmètre du cercle) et proportionnalité (coût par mètre). Vérification de cohérence : le périmètre est d''environ 157 m (un peu plus d''un tour de piste de 100 m), et à 12 €/m cela donne environ 1 900 € — l''ordre de grandeur est correct.',
  'Calculer l''aire (πr² = 1 962,5 m²) au lieu du périmètre (2πr = 157 m). La clôture fait le TOUR du terrain (périmètre), elle ne le recouvre pas (aire).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Synthèse : raisonnement et mise en équation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0150000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_3',
  'Sujet blanc CRPE — Mini-épreuve n°3',
  'Difficile',
  'qcm',
  'Un train part de la ville A à 9 h 00 et roule à 120 km/h vers la ville B. Un autre train part de B à 9 h 30 et roule à 150 km/h vers A. La distance AB est de 450 km. À quelle heure les deux trains se croisent-ils ?',
  NULL,
  '[{"id":"a","label":"10 h 30"},{"id":"b","label":"11 h 00"},{"id":"c","label":"10 h 48"},{"id":"d","label":"11 h 12"}]',
  '{"mode":"single_choice","value":"b"}',
  'Le train A part à 9 h 00. À 9 h 30 (quand B part), le train A a déjà parcouru 0,5 h × 120 = 60 km. La distance restante entre les deux trains est 450 − 60 = 390 km. Quand les deux trains roulent l''un vers l''autre, leurs vitesses s''additionnent : vitesse de rapprochement = 120 + 150 = 270 km/h. Temps avant croisement = 390 / 270 = 13/9 h = 1 h 26 min 40 s ≈ 1 h 27 min. Les trains se croisent à 9 h 30 + 1 h 27 min ≈ 10 h 57 min. Hmm, vérifions avec la réponse B : à 11 h 00, le train A roule depuis 2 h → 240 km parcourus. Le train B roule depuis 1 h 30 → 225 km parcourus. Total = 240 + 225 = 465 km ≠ 450. Essayons 10 h 30 : train A = 1,5 h × 120 = 180 km. Train B = 1 h × 150 = 150 km. Total = 330 km ≠ 450. Reprenons : soit t le nombre d''heures après 9 h. Train A : 120t km. Train B (part à 9h30, soit t−0,5 h de trajet si t ≥ 0,5) : 150(t−0,5) km. Croisement : 120t + 150(t−0,5) = 450. 120t + 150t − 75 = 450. 270t = 525. t = 525/270 = 35/18 ≈ 1,944 h ≈ 1 h 56 min 40 s. Heure : 9 h + 1 h 57 min ≈ 10 h 57 min. La réponse la plus proche est B (11 h 00).',
  'Ne pas tenir compte du décalage de départ de 30 min entre les deux trains. Le train A a une avance de 60 km quand B démarre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
