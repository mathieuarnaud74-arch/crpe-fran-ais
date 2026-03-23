-- Série 7 : Analyse de productions d'élèves — Numération
-- 7 questions, Intermédiaire, premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte
-- Approche didactique : analyse d'erreurs d'élèves sur la numération décimale

-- Q1 — AMORCE — QCM — Erreur de comparaison de décimaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0070000-0000-0000-0000-000000000001',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''élèves — Numération',
  'Intermediaire',
  'qcm',
  'Un élève de CM1 écrit : « 3,15 > 3,9 car 15 > 9. » Quel obstacle didactique est en jeu ?',
  NULL,
  '[{"id":"a","label":"L''élève applique la règle de comparaison des entiers à la partie décimale (« plus de chiffres = plus grand »)"},{"id":"b","label":"L''élève ne connaît pas la signification du séparateur décimal"},{"id":"c","label":"L''élève confond l''ordre croissant et décroissant"},{"id":"d","label":"L''élève ne sait pas lire les nombres décimaux"}]',
  '{"mode":"single","value":"a"}',
  'L''élève traite la partie décimale comme un entier indépendant : il compare 15 et 9, et conclut que 3,15 > 3,9 puisque 15 > 9. C''est l''obstacle didactique le plus documenté sur les décimaux, appelé « conception entière de la partie décimale ». L''élève n''a pas compris que 3,15 = 3 + 1/10 + 5/100 = 3 + 0,15, tandis que 3,9 = 3 + 9/10 = 3 + 0,90. En réalité, 3,9 > 3,15 car 0,90 > 0,15. Remédiation : compléter avec des zéros (3,15 vs 3,90) pour rendre la comparaison visible, ou utiliser le tableau de numération.',
  'Ne pas identifier cet obstacle comme une « conception entière de la partie décimale ». C''est la terminologie didactique attendue au CRPE (recherches de Brousseau sur les décimaux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Erreur de décomposition en numération
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0070000-0000-0000-0000-000000000002',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''élèves — Numération',
  'Intermediaire',
  'vrai_faux',
  'Un élève écrit la décomposition suivante : « 4 507 = 4 × 1 000 + 5 × 100 + 7. » Cette décomposition est-elle correcte ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}',
  'VRAI. 4 × 1 000 + 5 × 100 + 7 = 4 000 + 500 + 7 = 4 507. La décomposition est correcte. L''élève a simplement omis le terme « 0 × 10 » puisque le chiffre des dizaines est 0. Écrire 4 × 1 000 + 5 × 100 + 0 × 10 + 7 × 1 est plus complet, mais omettre un terme nul est mathématiquement acceptable. Au CRPE, il faut savoir reconnaître qu''une décomposition incomplète en apparence peut être correcte si les termes omis sont nuls. Le zéro dans 4 507 est un « zéro intercalaire » : il marque l''absence de dizaines.',
  'Penser que la décomposition est incorrecte parce qu''elle ne mentionne pas le terme « 0 × 10 ». Au CRPE, il faut distinguer une erreur d''une écriture simplifiée mais correcte.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Erreur de lecture d'un grand nombre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0070000-0000-0000-0000-000000000003',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''élèves — Numération',
  'Intermediaire',
  'qcm',
  'Un élève écrit en chiffres le nombre « douze mille quarante-trois » : 120 043. Quelle est la nature de son erreur ?',
  NULL,
  '[{"id":"a","label":"Il a juxtaposé les tranches orales : « douze » → 12, « mille » → 000, « quarante-trois » → 43, donnant 12 + 000 + 43 = 120 043"},{"id":"b","label":"Il a confondu « mille » et « million »"},{"id":"c","label":"Il a ajouté un zéro par erreur de frappe"},{"id":"d","label":"Il ne connaît pas le nombre douze mille"}]',
  '{"mode":"single","value":"a"}',
  'L''élève a juxtaposé les morceaux de l''énoncé oral : « douze » → 12, « mille » → il ajoute trois zéros (000), « quarante-trois » → 43. Résultat : 12|000|43 = 120 043. C''est une erreur de transcodage (passage de l''oral à l''écrit en chiffres). La bonne écriture est 12 043. L''obstacle ici est la non-compréhension du principe de position : « douze mille » signifie 12 × 1 000 = 12 000, et on AJOUTE 43, on ne juxtapose pas 43 après les zéros. Cette erreur de transcodage est documentée dans les recherches de Fayol et Seron et est un classique des analyses de productions d''élèves au CRPE.',
  'Ne pas identifier cette erreur comme une erreur de transcodage numérique (passage de la forme verbale à la forme écrite en chiffres). C''est un concept didactique fondamental au CRPE.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Place du chiffre dans un nombre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0070000-0000-0000-0000-000000000004',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''élèves — Numération',
  'Intermediaire',
  'reponse_courte',
  'Un élève répond à la question « Quel est le chiffre des centaines dans 28 647 ? » par « 600 ». L''élève confond deux notions. Lesquelles ? (Répondez en nommant les deux notions.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["chiffre et nombre de centaines","chiffre des centaines et nombre de centaines","le chiffre et le nombre","chiffre et nombre","le chiffre des centaines et le nombre de centaines"]}',
  'L''élève confond le CHIFFRE des centaines et le NOMBRE de centaines. Le chiffre des centaines dans 28 647 est 6 (c''est le chiffre qui occupe la position des centaines). Le nombre de centaines est 286 (car 28 647 = 286 centaines et 47 unités, soit 28 647 ÷ 100 = 286 reste 47). L''élève a répondu 600, ce qui ne correspond ni à l''un ni à l''autre : il a probablement identifié la bonne position (6) mais a ajouté les zéros correspondants (600 = 6 × 100). Cette distinction chiffre/nombre est fondamentale en numération positionnelle et constitue un objectif d''apprentissage clé au cycle 3.',
  'Ne pas connaître la distinction entre « chiffre de » et « nombre de » en numération. Le chiffre est un symbole (0 à 9) occupant une position ; le nombre est la quantité correspondante (combien de centaines en tout).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — QCM — Erreur sur les décimaux et la droite graduée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0070000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''élèves — Numération',
  'Intermediaire',
  'qcm',
  'On demande à un élève de placer 1,7 sur une droite graduée de 0 à 2, divisée en 10 intervalles égaux. L''élève place le point à l''emplacement de 1,07. Quel diagnostic didactique posez-vous ?',
  NULL,
  '[{"id":"a","label":"L''élève confond dixièmes et centièmes : il interprète le 7 de 1,7 comme 7 centièmes au lieu de 7 dixièmes"},{"id":"b","label":"L''élève ne sait pas lire une droite graduée"},{"id":"c","label":"L''élève a fait une erreur d''inattention"},{"id":"d","label":"L''élève pense que 1,7 est plus petit que 1,1"}]',
  '{"mode":"single","value":"a"}',
  'L''élève interprète 1,7 comme « 1 et 7 centièmes » (1,07) au lieu de « 1 et 7 dixièmes ». Il confond la position des dixièmes et des centièmes. Sur la droite graduée de 0 à 2 avec 10 intervalles, chaque intervalle vaut 0,2. Le point 1,7 se situe donc entre le 8e et le 9e repère (1,6 et 1,8), à mi-chemin. L''élève l''a placé juste après 1,0, ce qui correspond à 1,07 ≈ 1. Cette confusion dixièmes/centièmes traduit un déficit de compréhension de la numération positionnelle étendue aux décimaux. Remédiation : travailler systématiquement avec le tableau de numération incluant la partie décimale (dixièmes | centièmes | millièmes).',
  'Diagnostiquer une simple « erreur de lecture » au lieu d''identifier le déficit conceptuel (confusion dixièmes/centièmes dans la numération positionnelle).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Proposer une remédiation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0070000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''élèves — Numération',
  'Intermediaire',
  'qcm',
  'Un élève de CE2 range systématiquement les nombres suivants dans l''ordre : 92 < 108 < 310 < 1 205 < 87. Il pense que 87 est le plus grand « parce qu''il commence par 8 et 8 est le plus grand chiffre ». Quelle remédiation est la plus adaptée ?',
  NULL,
  '[{"id":"a","label":"Lui faire apprendre la comptine numérique jusqu''à 10 000"},{"id":"b","label":"Lui faire comparer le nombre de chiffres d''abord, puis les chiffres de même rang en partant de la gauche"},{"id":"c","label":"Lui donner plus d''exercices de rangement pour qu''il s''entraîne"},{"id":"d","label":"Lui expliquer que 1 205 est le plus grand car il a 4 chiffres"}]',
  '{"mode":"single","value":"b"}',
  'La remédiation la plus efficace est de structurer l''algorithme de comparaison : (1) comparer d''abord le NOMBRE DE CHIFFRES — le nombre qui en a le plus est le plus grand ; (2) à nombre de chiffres égal, comparer les chiffres de même rang en partant de la gauche. L''élève utilise une stratégie erronée : il compare le premier chiffre sans tenir compte du nombre de chiffres total. La réponse D est trop restrictive (elle donne la solution mais pas la méthode). La réponse A est inadaptée (l''élève sait compter, il ne comprend pas le principe de comparaison). La réponse C ne corrige pas l''obstacle : sans travail explicite sur l''algorithme, l''élève reproduira la même erreur.',
  'Proposer une remédiation qui ne cible pas l''obstacle identifié. Au CRPE, la remédiation doit être spécifiquement adaptée à l''erreur diagnostiquée, pas être un exercice générique « pour s''entraîner ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Variable didactique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0070000-0000-0000-0000-000000000007',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''élèves — Numération',
  'Intermediaire',
  'reponse_courte',
  'Un enseignant propose l''exercice suivant : « Écris en chiffres : trois mille six cent quatre-vingts. » Il modifie ensuite l''exercice en : « Écris en chiffres : trois mille six cent huit. » Quelle variable didactique a-t-il modifiée ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["la présence d''un zéro intercalaire","le zéro intercalaire","zéro intercalaire","présence du zéro intercalaire","la présence du zéro","le zéro","présence d''un zéro intercalaire"]}',
  'L''enseignant a modifié la variable didactique liée à la présence d''un zéro intercalaire. « Trois mille six cent quatre-vingts » = 3 680 (pas de zéro intercalaire). « Trois mille six cent huit » = 3 608 (zéro intercalaire à la position des dizaines). Le zéro intercalaire complexifie le transcodage car le mot « zéro » n''est jamais prononcé à l''oral (on ne dit pas « trois mille six cent zéro dizaines huit »). C''est une variable didactique au sens de Brousseau : un paramètre de l''exercice que l''enseignant peut modifier pour changer la stratégie de résolution requise sans changer la nature de la tâche.',
  'Confondre variable didactique et simple modification de l''énoncé. La variable didactique est un concept précis de la théorie des situations didactiques (Brousseau) : c''est un paramètre qui modifie la stratégie de résolution attendue.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
