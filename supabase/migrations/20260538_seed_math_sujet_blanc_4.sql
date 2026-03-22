-- Série : Sujet blanc CRPE — Mini-épreuve n°4
-- 8 questions, Avancé (Difficile), premium
-- Épreuve complète : calcul, géométrie, grandeurs, stats, didactique

-- Q1 — Calcul fractionnaire avec priorités
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Difficile',
  'reponse_courte',
  'Calculez : 1/2 + 1/3 × 3/4. Donnez le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3/4","0,75","0.75"]}'  ,
  'Attention aux priorités opératoires ! La multiplication est prioritaire sur l''addition. Étape 1 : 1/3 × 3/4 = 3/12 = 1/4. Étape 2 : 1/2 + 1/4 = 2/4 + 1/4 = 3/4. Résultat : 3/4. Erreur fréquente : additionner d''abord 1/2 + 1/3 = 5/6, puis multiplier par 3/4 → 5/6 × 3/4 = 15/24 = 5/8. Ce résultat (5/8) est FAUX car il ignore la priorité de la multiplication. Les règles de priorité s''appliquent aussi aux fractions : multiplication et division avant addition et soustraction.',
  'Effectuer l''addition avant la multiplication (ignorer les priorités opératoires). Résultat faux : (1/2 + 1/3) × 3/4 = 5/8.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Géométrie : aire d'un disque dans un carré
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Difficile',
  'qcm',
  'Un cercle est inscrit dans un carré de côté 10 cm (le cercle touche les 4 côtés). Quelle est l''aire de la zone comprise entre le carré et le cercle ? (Prendre π ≈ 3,14.)',
  NULL,
  '[{"id":"a","label":"21,5 cm²"},{"id":"b","label":"78,5 cm²"},{"id":"c","label":"68,5 cm²"},{"id":"d","label":"31,4 cm²"}]',
  '{"mode":"single_choice","value":"a"}',
  'Le cercle inscrit dans le carré a un diamètre = côté du carré = 10 cm, donc un rayon de 5 cm. Aire du carré = 10² = 100 cm². Aire du disque = π × 5² = 3,14 × 25 = 78,5 cm². Aire de la zone entre les deux = 100 − 78,5 = 21,5 cm². Ce résultat peut se retenir : le rapport aire du cercle inscrit / aire du carré = π/4 ≈ 0,785. Autrement dit, le cercle occupe environ 78,5 % du carré, et les « coins » représentent environ 21,5 %. Ce type de calcul d''aire par différence est un classique du CRPE.',
  'Confondre rayon (5 cm) et diamètre (10 cm) dans le calcul de l''aire du disque. Avec r = 10 : π × 100 = 314 cm² > aire du carré, ce qui est impossible !',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Grandeurs : conversion composée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Difficile',
  'reponse_courte',
  'Un terrain rectangulaire mesure 150 m × 80 m. Exprimez son aire en hectares.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1,2 ha","1,2","1.2","1,20 ha","1.20","1,2ha"]}'  ,
  'Aire = 150 × 80 = 12 000 m². Conversion : 1 ha = 10 000 m². Donc 12 000 m² = 12 000 / 10 000 = 1,2 ha. On peut aussi raisonner en ares : 1 are = 100 m², donc 12 000 m² = 120 ares = 1,2 ha (car 1 ha = 100 ares). Les conversions en unités agraires (ca, a, ha) sont très fréquentes au CRPE dans les problèmes de terrain. Rappel : 1 ha = 100 a = 10 000 m² ≈ un carré de 100 m de côté.',
  'Diviser par 1 000 au lieu de 10 000 (confondre le facteur de conversion des longueurs et des aires). 12 000 / 1 000 = 12 ha (faux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Probabilités / Statistiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000004',
  'Mathematiques',
  'organisation_donnees',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : si la moyenne d''une classe est de 10/20 et que chaque élève gagne 2 points, la nouvelle moyenne est 12/20.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}',
  'VRAI. Si chaque note augmente de 2, la somme totale augmente de 2 × n (n = nombre d''élèves). La nouvelle moyenne = (somme + 2n) / n = somme/n + 2 = 10 + 2 = 12. Plus généralement, si on ajoute une constante c à chaque valeur, la moyenne augmente de c. C''est la propriété de linéarité de la moyenne : moyenne(x + c) = moyenne(x) + c. De même, si on multiplie chaque note par k, la moyenne est multipliée par k. Ces propriétés sont utiles au CRPE pour résoudre rapidement des problèmes de moyenne sans recalculer toute la somme.',
  'Hésiter en pensant que « ça dépend de la répartition des notes ». Non : la propriété de linéarité est valable QUELLE QUE SOIT la distribution.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Didactique : obstacle périmètre/aire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Difficile',
  'qcm',
  'Un élève affirme : « Si le périmètre d''un rectangle augmente, son aire augmente aussi. » Cette affirmation est-elle toujours vraie ?',
  NULL,
  '[{"id":"a","label":"Oui, périmètre et aire varient toujours dans le même sens"},{"id":"b","label":"Non : un rectangle de 1 cm × 19 cm a un périmètre de 40 cm et une aire de 19 cm², tandis qu''un rectangle de 10 cm × 8 cm a un périmètre de 36 cm et une aire de 80 cm²"},{"id":"c","label":"Oui, car les deux dépendent des dimensions du rectangle"},{"id":"d","label":"On ne peut pas comparer périmètre et aire car les unités sont différentes"}]',
  '{"mode":"single_choice","value":"b"}',
  'NON, l''affirmation est FAUSSE. Le contre-exemple le montre : le rectangle 1 × 19 a un GRAND périmètre (40 cm) mais une PETITE aire (19 cm²), tandis que le rectangle 10 × 8 a un périmètre plus PETIT (36 cm) mais une aire BIEN PLUS GRANDE (80 cm²). Périmètre et aire sont des grandeurs INDÉPENDANTES : on peut augmenter l''un sans augmenter l''autre. Cette confusion périmètre/aire est l''un des obstacles didactiques les plus documentés (recherches de Douady et Perrin-Glorian). Elle persiste souvent jusqu''à l''âge adulte. Au CRPE, savoir produire des contre-exemples et concevoir des situations qui distinguent périmètre et aire est fondamental.',
  'Croire que périmètre et aire varient toujours dans le même sens. C''est un obstacle didactique majeur : les élèves (et les adultes) confondent souvent les deux grandeurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Didactique : progression curriculaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Difficile',
  'qcm',
  'À quel cycle l''utilisation de la lettre pour désigner une inconnue dans une équation est-elle introduite dans les programmes ?',
  NULL,
  '[{"id":"a","label":"Cycle 2 (CP-CE2)"},{"id":"b","label":"Cycle 3 (CM1-6e)"},{"id":"c","label":"Cycle 4 (5e-3e)"},{"id":"d","label":"Dès la maternelle"}]',
  '{"mode":"single_choice","value":"b"}',
  'L''utilisation d''une lettre pour désigner un nombre inconnu est introduite au cycle 3, conformément aux programmes. En CM1-CM2, les élèves commencent à utiliser des lettres dans des égalités simples (type « 3 × □ = 12 » évolue vers « 3 × x = 12 »). Cependant, la résolution formelle d''équations (avec transposition de termes, développement, factorisation) relève du cycle 4. Au cycle 2, les élèves travaillent avec le « symbole manquant » (□, ?, ...) mais pas encore avec une lettre. Cette progression est un classique des questions de programmes au CRPE.',
  'Confondre l''introduction de la lettre-inconnue (cycle 3) avec la résolution formelle d''équations (cycle 4). Le cycle 3 initie le symbolisme algébrique, le cycle 4 le formalise.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Problème à étapes : partage inégal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Difficile',
  'reponse_courte',
  'Trois enfants se partagent 120 € de la façon suivante : le deuxième reçoit le double du premier, et le troisième reçoit 10 € de plus que le deuxième. Combien reçoit le premier enfant ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["22 €","22","22€","22,00"]}'  ,
  'Soit x la part du 1er enfant. Le 2e reçoit 2x. Le 3e reçoit 2x + 10. Somme : x + 2x + (2x + 10) = 120. Simplification : 5x + 10 = 120 → 5x = 110 → x = 22. Le 1er reçoit 22 €, le 2e reçoit 44 €, le 3e reçoit 54 €. Vérification : 22 + 44 + 54 = 120 ✓. Le 2e a bien le double du 1er (44 = 2 × 22) ✓. Le 3e a bien 10 de plus que le 2e (54 = 44 + 10) ✓. Ce problème de partage inégal se résout par mise en équation — c''est un classique du CRPE qui combine algèbre et raisonnement.',
  'Diviser 120 par 3 (partage égal = 40 €) en ignorant les contraintes de l''énoncé. Le partage n''est pas équitable ici.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Synthèse : raisonnement avec nombres premiers
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0170000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_sujet_blanc_mini_epreuve_4',
  'Sujet blanc CRPE — Mini-épreuve n°4',
  'Difficile',
  'qcm',
  'Combien y a-t-il de nombres premiers entre 1 et 30 ?',
  NULL,
  '[{"id":"a","label":"8"},{"id":"b","label":"10"},{"id":"c","label":"11"},{"id":"d","label":"9"}]',
  '{"mode":"single_choice","value":"b"}',
  'Les nombres premiers entre 1 et 30 sont : 2, 3, 5, 7, 11, 13, 17, 19, 23, 29. Il y en a 10. Rappel : un nombre premier est un entier supérieur à 1 qui n''a exactement que deux diviseurs : 1 et lui-même. 1 n''est PAS premier (il n''a qu''un seul diviseur). 2 est le seul nombre premier pair. Pour vérifier si n est premier, il suffit de tester la divisibilité par les nombres premiers ≤ √n. Par exemple, pour 29 : √29 ≈ 5,4, on teste 2, 3, 5 → aucun ne divise 29, donc 29 est premier. Connaître les premiers nombres premiers par cœur est un atout au CRPE.',
  'Inclure 1 dans les nombres premiers (1 n''est PAS premier par convention) ou oublier 2 (seul premier pair).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
