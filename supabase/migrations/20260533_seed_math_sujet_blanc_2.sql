-- Série : Sujet blanc CRPE — Mini-épreuve n°2
-- 8 questions, Avancé (Difficile), premium
-- Structure type épreuve CRPE diversifiée : arithmétique, géométrie, mesures, stats, didactique
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — Fractions et opérations
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Difficile',
  'reponse_courte',
  'Calculez et donnez le résultat sous forme de fraction irréductible : 2/3 + 3/4 − 1/6.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5/4","5 / 4","1,25","1 1/4"]}'  ,
  'Réduisons au même dénominateur. PPCM(3, 4, 6) = 12. 2/3 = 8/12, 3/4 = 9/12, 1/6 = 2/12. Calcul : 8/12 + 9/12 − 2/12 = 15/12 = 5/4 (en simplifiant par 3). Vérification en décimal : 0,667 + 0,75 − 0,167 = 1,25 = 5/4 ✓. La fraction 5/4 est irréductible car PGCD(5, 4) = 1. C''est une fraction impropre (numérateur > dénominateur), on peut aussi écrire 1 + 1/4. Au CRPE, les calculs fractionnaires doivent être maîtrisés sans calculatrice.',
  'Se tromper dans le PPCM des dénominateurs, ou faire une erreur dans la mise au même dénominateur. Vérifier en convertissant en décimal est un bon réflexe.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Géométrie : aires composées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Difficile',
  'qcm',
  'Un terrain a la forme d''un trapèze dont les bases mesurent 40 m et 60 m, et la hauteur est de 25 m. Quelle est son aire ?',
  NULL,
  '[{"id":"a","label":"1 000 m²"},{"id":"b","label":"1 250 m²"},{"id":"c","label":"1 500 m²"},{"id":"d","label":"750 m²"}]',
  '{"mode":"single_choice","value":"b"}',
  'Aire du trapèze = (grande base + petite base) × hauteur / 2 = (60 + 40) × 25 / 2 = 100 × 25 / 2 = 2 500 / 2 = 1 250 m². La formule du trapèze est souvent oubliée au CRPE. On peut la retrouver : un trapèze se décompose en un rectangle de largeur (petite base) et deux triangles, ou on peut le doubler pour former un parallélogramme de base (B + b) et de même hauteur, d''où le « /2 ». Vérification : le trapèze a une aire comprise entre celle d''un rectangle de base 40 (1 000 m²) et un rectangle de base 60 (1 500 m²). 1 250 est bien entre les deux ✓.',
  'Oublier de diviser par 2 (donner 2 500 m²) ou n''utiliser qu''une seule base (40 × 25 = 1 000 ou 60 × 25 = 1 500).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Proportionnalité avancée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Difficile',
  'reponse_courte',
  'Un plan est à l''échelle 1/200. Une pièce mesure 4 cm × 3 cm sur le plan. Quelle est l''aire RÉELLE de la pièce en m² ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["48 m²","48","48m²","48 m2","48m2"]}'  ,
  'Échelle 1/200 : 1 cm sur le plan = 200 cm en réalité = 2 m. Dimensions réelles : 4 × 2 = 8 m et 3 × 2 = 6 m. Aire réelle = 8 × 6 = 48 m². Méthode alternative : aire sur plan = 4 × 3 = 12 cm². Facteur d''échelle pour les aires = 200² = 40 000. Aire réelle = 12 × 40 000 = 480 000 cm² = 48 m² (car 1 m² = 10 000 cm²). Les deux méthodes donnent le même résultat. Au CRPE, convertir d''abord les dimensions en mètres est souvent plus simple.',
  'Multiplier l''aire par 200 (échelle linéaire) au lieu de 200² = 40 000 (échelle d''aire). Ou se tromper dans la conversion cm² → m².',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Statistiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000004',
  'Mathematiques',
  'organisation_donnees',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Difficile',
  'qcm',
  'Les notes de 8 élèves sont : 8, 10, 12, 12, 14, 15, 16, 17. Quelle est la médiane ?',
  NULL,
  '[{"id":"a","label":"12"},{"id":"b","label":"13"},{"id":"c","label":"12,5"},{"id":"d","label":"13,25"}]',
  '{"mode":"single_choice","value":"b"}',
  'Il y a 8 valeurs (nombre pair). La médiane est la moyenne des 4e et 5e valeurs dans la série ordonnée. 4e valeur = 12, 5e valeur = 14. Médiane = (12 + 14) / 2 = 13. Attention : quand l''effectif est pair, la médiane est la moyenne des deux valeurs centrales. Quand il est impair, c''est la valeur centrale directement. Ici, 13 n''est même pas une valeur de la série — la médiane n''est pas forcément une valeur observée. Moyenne de la série = (8+10+12+12+14+15+16+17)/8 = 104/8 = 13. Ici moyenne = médiane, ce qui est le cas pour des distributions symétriques.',
  'Prendre directement la 4e valeur (12) au lieu de la moyenne des 4e et 5e. Avec un effectif pair, on ne peut pas prendre « la valeur du milieu » — il faut moyenner les deux centrales.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Didactique : erreur d'élève en géométrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Difficile',
  'qcm',
  'Un élève de CM2 doit calculer le périmètre d''un disque de rayon 7 cm. Il écrit : « P = π × 7² = 153,86 cm. » Quelle est la nature de son erreur ?',
  NULL,
  '[{"id":"a","label":"Il a confondu la formule du périmètre (2πr) avec celle de l''aire (πr²)"},{"id":"b","label":"Il a mal arrondi π"},{"id":"c","label":"Il a confondu rayon et diamètre"},{"id":"d","label":"Il a oublié de multiplier par 2"}]',
  '{"mode":"single_choice","value":"a"}',
  'L''élève a utilisé πr² (formule de l''AIRE) au lieu de 2πr (formule du PÉRIMÈTRE). Résultat correct : P = 2 × π × 7 = 14π ≈ 43,96 cm. L''aire serait : A = π × 7² = 49π ≈ 153,94 cm² (ce qu''il a calculé, avec les bonnes unités en cm² et non en cm). Cette confusion périmètre/aire du cercle est très fréquente chez les élèves. Formules à connaître : périmètre = 2πr = πd (d = diamètre), aire = πr². L''erreur est d''autant plus trompeuse que les deux formules contiennent π et r — la confusion porte sur le carré (aire) vs le facteur 2 (périmètre).',
  'Diagnostiquer une erreur de calcul (mal arrondir π) alors que l''erreur est conceptuelle : l''élève a utilisé la mauvaise formule. Le calcul πr² = 153,86 est correct, mais c''est l''AIRE, pas le périmètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Didactique : programmes et progression
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : selon les programmes de l''école primaire, la division euclidienne (avec reste) est introduite dès le CE1.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX. Selon les programmes, la division euclidienne est introduite à partir du CE2, et elle est travaillée de manière approfondie en CM1 et CM2. Au CE1, les élèves travaillent sur le sens de la division (partage équitable, groupements) à travers des situations concrètes et la manipulation, mais l''algorithme de la division posée et la notion formelle de reste ne sont pas au programme du CE1. La progression est : CE1 → sens du partage et groupement ; CE2 → introduction de la division euclidienne ; CM1 → division posée par un diviseur à un chiffre ; CM2 → division posée par un diviseur à deux chiffres et introduction de la division décimale.',
  'Confondre l''initiation au sens du partage (CE1) avec l''introduction formelle de la division euclidienne (CE2). Les programmes distinguent clairement les deux étapes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Problème à étapes : volumes et contenances
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Difficile',
  'reponse_courte',
  'Un réservoir cubique a une arête intérieure de 80 cm. On le remplit avec un robinet débitant 5 L/min. Combien de temps (en minutes) faut-il pour le remplir complètement ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["102,4 min","102,4","102.4","102,4 minutes","102.4 min","102 min 24 s"]}'  ,
  'Étape 1 — Volume du cube : V = 80³ = 512 000 cm³. Étape 2 — Conversion en litres : 1 L = 1 000 cm³, donc V = 512 000 / 1 000 = 512 L. Étape 3 — Temps de remplissage : t = volume / débit = 512 / 5 = 102,4 min. En heures et minutes : 102 min = 1 h 42 min, plus 0,4 min = 24 s. Soit 1 h 42 min 24 s. Ce problème enchaîne : géométrie (volume du cube), conversion (cm³ → L), et grandeur quotient (débit = volume/temps). C''est le type de problème à étapes attendu au CRPE.',
  'Mal calculer 80³ (oublier que 80³ = 512 000, pas 64 000 qui serait 40³). Ou confondre cm³ et L (1 L = 1 000 cm³, pas 100).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Problème de synthèse : raisonnement logique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0120000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_2',
  'Sujet blanc CRPE — Mini-épreuve n°2',
  'Difficile',
  'qcm',
  'Un nombre entier N vérifie : il est divisible par 6, il est compris entre 50 et 100, et la somme de ses chiffres est 9. Combien de valeurs possibles N peut-il prendre ?',
  NULL,
  '[{"id":"a","label":"1 seule valeur (N = 54)"},{"id":"b","label":"2 valeurs (N = 54 et N = 72)"},{"id":"c","label":"3 valeurs (N = 54, N = 72 et N = 90)"},{"id":"d","label":"4 valeurs"}]',
  '{"mode":"single_choice","value":"c"}',
  'Les multiples de 6 entre 50 et 100 sont : 54, 60, 66, 72, 78, 84, 90, 96. Vérifions la somme des chiffres = 9 : 54 → 5+4 = 9 ✓, 60 → 6+0 = 6 ✗, 66 → 6+6 = 12 ✗, 72 → 7+2 = 9 ✓, 78 → 7+8 = 15 ✗, 84 → 8+4 = 12 ✗, 90 → 9+0 = 9 ✓, 96 → 9+6 = 15 ✗. Trois valeurs satisfont les trois conditions : N ∈ {54, 72, 90}. Ce type de problème combine divisibilité, encadrement et numération. La stratégie est d''abord lister les multiples de 6 dans l''intervalle (le critère le plus restrictif), puis filtrer par la somme des chiffres.',
  'Oublier N = 90 (dont la somme des chiffres 9+0 = 9 est parfois négligée car le 0 peut être « oublié »).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
