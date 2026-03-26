-- Migration: 10 exercices — Les sens et représentations des fractions
-- Série : math_fractions_concepts_sens (Mathématiques, nombres_calcul)
-- Fraction-partage, fraction-mesure, fraction-quotient, fraction-opérateur, fractions équivalentes
-- UUID prefix: 6a170000

-- Q1 — QCM — Les quatre sens de la fraction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'qcm',
  'Selon les ressources Éduscol sur l''enseignement des fractions au cycle 3, combien de sens ou d''aspects principaux une fraction peut-elle avoir ?',
  NULL,
  '[{"id":"a","label":"1 (la fraction est uniquement un résultat de partage)"},{"id":"b","label":"2 (partage et quotient)"},{"id":"c","label":"4 (partage, mesure, quotient et opérateur)"},{"id":"d","label":"6 (partage, mesure, quotient, opérateur, rapport et probabilité)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans le cadre de la didactique des mathématiques (et des ressources Éduscol pour le cycle 3), on distingue généralement quatre aspects principaux d''une fraction : 1) le partage (ou sens partitif : 3/4 d''un objet divisé en 4 parts égales) ; 2) la mesure (position sur une droite graduée) ; 3) le quotient (3/4 = 3 ÷ 4) ; 4) l''opérateur (prendre les 3/4 d''une quantité). Chacun donne lieu à des types de problèmes différents. Cette multiplicité des sens est une source de difficulté majeure pour les élèves.',
  'Réduire la fraction à un seul sens (le partage d''une figure géométrique). Cette vision trop restreinte ne prépare pas les élèves à traiter tous les types de problèmes impliquant des fractions au cycle 3 et au collège.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Fraction comme quotient
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La fraction 3/4 peut s''interpréter comme le résultat de la division de 3 par 4.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. La fraction 3/4 est l''écriture du quotient de 3 par 4 : 3/4 = 3 ÷ 4 = 0,75. C''est le sens « quotient » de la fraction. Il est important que les élèves comprennent que le trait de fraction est aussi un signe de division. Cela permet notamment de justifier la règle de division de fractions : a/b = a × (1/b).',
  'Croire que la fraction est uniquement une « partie d''un tout ». La fraction-quotient est essentielle pour comprendre que 3/4 est un nombre rationnel, placé entre 0 et 1 sur la droite numérique.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Fraction comme opérateur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'qcm',
  'Dans la phrase « Les 3/4 des élèves réussissent cet exercice. », la fraction est utilisée dans quel sens ?',
  NULL,
  '[{"id":"a","label":"Fraction-mesure : position sur une droite graduée"},{"id":"b","label":"Fraction-opérateur : appliquée à une quantité totale"},{"id":"c","label":"Fraction-quotient : résultat d''une division"},{"id":"d","label":"Fraction-partage : partage d''un objet en parts égales"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ici, 3/4 est un opérateur appliqué à la quantité « des élèves » (nombre total d''élèves). C''est le sens opérateur de la fraction : on « prend les 3/4 » d''une collection ou d''une grandeur. Si la classe compte 28 élèves, alors 3/4 × 28 = 21 élèves réussissent. Ce sens est très présent dans les problèmes de proportionnalité et de pourcentage au cycle 3.',
  'Choisir le sens partage. La fraction-partage s''applique à un objet unique divisé en parts (ex : « il mange les 3/4 d''une pizza »). La fraction-opérateur s''applique à une collection ou une grandeur numérique.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Fraction sur la droite graduée (sens mesure)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'qcm',
  'Sur une droite graduée, l''unité est divisée en 4 parts égales. Après quelle graduation se trouve le point représentant 3/4 ?',
  NULL,
  '[{"id":"a","label":"Après la 1re graduation"},{"id":"b","label":"Après la 2e graduation"},{"id":"c","label":"Après la 3e graduation"},{"id":"d","label":"Après la 4e graduation (confondu avec 1)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '3/4 signifie 3 parties sur 4 : on divise le segment [0 ; 1] en 4 parts égales (obtenant les graduations 1/4, 2/4, 3/4, 4/4), et on place le point à la 3e graduation à partir de 0. C''est le sens mesure de la fraction : la fraction indique une position (une mesure) sur la droite graduée. 3/4 est donc entre 1/2 et 1.',
  'Confondre 3/4 et la 4e graduation (= 1) ou placer 3/4 au milieu de [0 ; 1] (= 1/2 = 2/4). 3/4 est plus proche de 1 que de 0.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Vrai/Faux — Fractions équivalentes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Les fractions 2/4 et 1/2 désignent le même nombre rationnel.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. 2/4 et 1/2 sont des fractions équivalentes : elles désignent la même valeur numérique. On passe de 2/4 à 1/2 en divisant numérateur et dénominateur par 2 (leur PGCD). La fraction irréductible est 1/2. Sur la droite graduée, ces deux fractions correspondent au même point. Deux fractions a/b et c/d sont équivalentes si et seulement si a × d = b × c.',
  'Penser que deux fractions d''écriture différente désignent forcément des nombres différents. La notion de fraction équivalente est fondamentale pour la simplification, l''addition et la comparaison de fractions.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Simplifier une fraction (PGCD)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'qcm',
  'Comment simplifie-t-on la fraction 12/18 pour obtenir la fraction irréductible ?',
  NULL,
  '[{"id":"a","label":"On divise numérateur et dénominateur par leur somme (30)"},{"id":"b","label":"On divise numérateur et dénominateur par leur PGCD (6), pour obtenir 2/3"},{"id":"c","label":"On soustrait le numérateur du dénominateur : 18 − 12 = 6"},{"id":"d","label":"On divise le numérateur par le dénominateur et on conserve le reste"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour obtenir la fraction irréductible, on divise le numérateur et le dénominateur par leur PGCD (plus grand commun diviseur). PGCD(12, 18) = 6 : 12 ÷ 6 = 2 et 18 ÷ 6 = 3. Donc 12/18 = 2/3. La fraction 2/3 est irréductible car PGCD(2, 3) = 1. On peut aussi simplifier étape par étape : 12/18 → 6/9 (÷2) → 2/3 (÷3).',
  'Diviser uniquement par 2 ou par 3 sans aller jusqu''au PGCD. On obtient alors une fraction simplifiée mais pas irréductible (6/9 → divisible encore par 3). La fraction irréductible s''obtient en divisant une seule fois par le PGCD.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Calcul fraction-opérateur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'qcm',
  'Combien font les 2/3 de 21 ?',
  NULL,
  '[{"id":"a","label":"7"},{"id":"b","label":"12"},{"id":"c","label":"14"},{"id":"d","label":"18"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '2/3 de 21 = 21 × 2/3 = (21 ÷ 3) × 2 = 7 × 2 = 14. La procédure la plus efficace : d''abord diviser par le dénominateur (21 ÷ 3 = 7), puis multiplier par le numérateur (7 × 2 = 14). Cette décomposition en deux étapes est recommandée au cycle 3 : elle évite les calculs sur de grands nombres et fait sens.',
  'Calculer 21 × 2 = 42 puis 42 ÷ 3 = 14 — ce n''est pas faux, mais c''est moins efficace car on multiplie d''abord (grands nombres). La procédure « ÷ dénominateur puis × numérateur » est préférable pédagogiquement.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Réponse courte — Valeur d'une fraction impropre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'reponse_courte',
  'Quelle est la valeur entière de la fraction 6/3 ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2","2,0","6/3 = 2"]}'::jsonb,
  '6/3 = 6 ÷ 3 = 2. Il s''agit d''une fraction impropre (numérateur ≥ dénominateur) dont la valeur est un entier. Cela illustre le sens quotient de la fraction : la fraction 6/3 est l''écriture de la division de 6 par 3, dont le résultat est l''entier 2. 6/3 = 4/2 = 2/1 = 2.',
  'Donner 3 (en calculant 6 − 3) ou 1/2 (en inversant numérateur et dénominateur). La fraction a/b = a ÷ b : on divise le numérateur par le dénominateur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Fraction impropre > 1
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Une fraction dont le numérateur est strictement supérieur au dénominateur est toujours strictement supérieure à 1.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie pour les fractions à termes positifs (numérateur > 0 et dénominateur > 0). Si a > b > 0, alors a/b > b/b = 1. Exemples : 5/3 > 1, 7/4 > 1, 9/2 > 1. Une telle fraction est dite « fraction impropre ». Sur la droite graduée, elle est placée à droite de 1. Elle peut s''écrire comme un nombre mixte : 5/3 = 1 et 2/3.',
  'Penser que toutes les fractions sont comprises entre 0 et 1. Cette erreur vient du fait que les fractions sont souvent présentées d''abord dans le contexte du partage d''un tout (une pizza, un rectangle) — ce qui ne concerne que les fractions < 1.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Représentation didactique la plus adaptée au sens mesure
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '6a170000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_concepts_sens',
  'Sens et représentations des fractions',
  'Standard',
  'qcm',
  'Dans l''enseignement au cycle 3, quelle représentation est la plus adaptée pour introduire le sens « mesure » d''une fraction (fraction comme nombre sur la droite des réels) ?',
  NULL,
  '[{"id":"a","label":"Un diagramme circulaire (« camembert »)"},{"id":"b","label":"Une droite graduée"},{"id":"c","label":"Un tableau de données numériques"},{"id":"d","label":"Un histogramme"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La droite graduée est la représentation canonique du sens mesure de la fraction : elle permet de placer les fractions comme des nombres parmi d''autres, de visualiser leur ordre, leurs relations avec les entiers et de concevoir les fractions irréductibles comme des points fixes sur la droite. Le diagramme circulaire illustre plutôt le sens partage/opérateur. Les ressources Éduscol sur les fractions au cycle 3 insistent sur l''utilisation conjointe des deux représentations (partage ET droite graduée) pour construire le sens de nombre.',
  'Croire que le diagramme circulaire suffit. Il illustre bien le sens partage mais renforce la confusion fraction = « partie d''un entier inférieure à 1 ». La droite graduée est indispensable pour que les élèves perçoivent les fractions comme des nombres.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
