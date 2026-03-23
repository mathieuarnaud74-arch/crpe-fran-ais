-- Seed: Graphiques trompeurs — Analyse critique (7 exercices)
-- Subdomain: organisation_donnees | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb030000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique', 'Difficile',
  'qcm',
  'Un diagramme en bâtons montre les ventes d''une entreprise sur deux ans : 100 000 € en 2023 et 105 000 € en 2024. L''axe des ordonnées commence à 99 000 € au lieu de 0. Quel est l''effet visuel produit ?',
  NULL,
  '[{"id":"a","label":"L''augmentation paraît négligeable."},{"id":"b","label":"L''augmentation semble beaucoup plus importante qu''elle ne l''est réellement."},{"id":"c","label":"Les deux valeurs semblent identiques."},{"id":"d","label":"Le graphique est parfaitement lisible et fidèle aux données."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Lorsque l''axe des ordonnées ne commence pas à 0 (on parle d''axe « tronqué » ou « coupé »), les différences entre les valeurs sont visuellement amplifiées. Ici, l''augmentation réelle est de 5 % (de 100 000 à 105 000), mais sur un axe allant de 99 000 à 106 000, le bâton de 2024 paraît environ 5 fois plus grand que celui de 2023. C''est l''un des procédés de manipulation graphique les plus courants dans les médias et la publicité.',
  'L''erreur est de ne pas vérifier l''origine de l''axe des ordonnées. Un lecteur non averti interprète la hauteur visuelle des bâtons sans remarquer que l''axe ne part pas de zéro.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb030000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique', 'Difficile',
  'vrai_faux',
  'Vrai ou faux : sur un graphique dont l''échelle de l''axe des ordonnées n''est pas régulière (par exemple : 0, 10, 20, 50, 100, 500), les pentes et les écarts entre les valeurs sont fidèlement représentés.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Une échelle non linéaire (ou non régulière) déforme la représentation des écarts. Par exemple, l''écart entre 20 et 50 (soit 30 unités) occupera le même espace visuel que l''écart entre 100 et 500 (soit 400 unités). Les pentes d''une courbe sur un tel graphique ne reflètent plus la réalité des variations. Les échelles logarithmiques sont parfois légitimes (en sciences), mais doivent être clairement signalées. En l''absence d''indication, le lecteur s''attend à une échelle linéaire régulière.',
  'L''erreur est de lire un graphique à échelle non linéaire comme s''il avait une échelle régulière, ce qui conduit à sous-estimer ou surestimer les variations réelles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb030000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique', 'Difficile',
  'qcm',
  'Un pictogramme compare la production de deux usines. L''usine A produit 1 000 unités et l''usine B en produit 2 000. Pour représenter cette différence, le dessinateur double la hauteur ET la largeur de l''icône de B par rapport à celle de A. Quel est le rapport visuel perçu entre les deux icônes ?',
  NULL,
  '[{"id":"a","label":"L''icône de B paraît 2 fois plus grande que celle de A."},{"id":"b","label":"L''icône de B paraît 4 fois plus grande que celle de A."},{"id":"c","label":"L''icône de B paraît 8 fois plus grande que celle de A."},{"id":"d","label":"Les deux icônes paraissent de taille similaire."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Quand on double à la fois la hauteur et la largeur d''une figure, son aire est multipliée par 2×2 = 4. L''œil humain perçoit principalement les surfaces (aires), pas les dimensions linéaires. Donc l''icône de B paraît 4 fois plus grande que celle de A, alors que la production n''est que 2 fois supérieure. Si on avait aussi doublé la profondeur (3D), l''effet serait encore pire : le volume perçu serait multiplié par 2³ = 8. Ce type de distorsion par l''aire ou le volume est un piège classique des pictogrammes trompeurs.',
  'L''erreur est de penser que doubler les dimensions donne un facteur visuel de 2. En réalité, l''aire quadruple (facteur 4) et le volume est multiplié par 8, créant une impression exagérée.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb030000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique', 'Difficile',
  'reponse_courte',
  'Un graphique montre l''évolution du chiffre d''affaires d''une entreprise de 2020 à 2024 avec une forte hausse. Cependant, les données de 2015 à 2019 montrent une baisse régulière. Comment appelle-t-on cette technique de manipulation qui consiste à ne montrer qu''une partie favorable de la période ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["cherry-picking","cherry picking","sélection de données","tri sélectif","sélection","choix sélectif de la période"]}'::jsonb,
  'Cette technique s''appelle le « cherry-picking » (littéralement « cueillette de cerises ») ou « sélection de données ». Elle consiste à choisir une période de temps qui met en valeur la conclusion souhaitée, en ignorant les données qui la contredisent. C''est un biais de sélection fréquent dans les présentations commerciales et les médias. Pour contrer cette manipulation, il faut toujours se demander : « Quelle est la tendance sur une période plus longue ? » et « Pourquoi la période choisie commence-t-elle à cette date précise ? ».',
  'L''erreur est de ne pas questionner le choix de la période représentée. Un lecteur critique doit toujours vérifier si la fenêtre temporelle choisie est représentative de la tendance globale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb030000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique', 'Difficile',
  'qcm',
  'Un diagramme circulaire (camembert) présente les résultats d''un sondage. Les secteurs affichent : « Oui : 45 % », « Non : 35 % », « Sans opinion : 30 % ». Que peut-on conclure ?',
  NULL,
  '[{"id":"a","label":"Le graphique est correct car les trois catégories couvrent bien toutes les réponses."},{"id":"b","label":"Le graphique est trompeur car la somme des pourcentages dépasse 100 %."},{"id":"c","label":"Le graphique est correct car les pourcentages sont arrondis."},{"id":"d","label":"Le graphique est trompeur car il manque une catégorie."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La somme des pourcentages est 45 + 35 + 30 = 110 %, ce qui dépasse 100 %. Un diagramme circulaire représente la répartition d''un tout : la somme des secteurs doit obligatoirement être égale à 100 %. Un total supérieur à 100 % peut survenir quand les répondants pouvaient cocher plusieurs réponses (question à choix multiples), auquel cas le diagramme circulaire n''est pas le graphique approprié. C''est une erreur fréquente dans les médias.',
  'L''erreur est de ne pas vérifier que la somme des pourcentages fait bien 100 % dans un diagramme circulaire. Certains graphiques publiés dans la presse contiennent cette incohérence.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb030000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique', 'Difficile',
  'vrai_faux',
  'Vrai ou faux : deux diagrammes en bâtons représentent les mêmes données mais avec des échelles différentes sur l''axe des ordonnées. Le diagramme dont l''échelle est plus resserrée (graduation de 1 en 1 au lieu de 10 en 10) donnera l''impression de variations plus importantes.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Plus l''échelle de l''axe des ordonnées est resserrée (intervalles petits), plus les différences entre les bâtons sont visuellement amplifiées. Inversement, une échelle très large (intervalles grands) « écrase » les variations et les rend moins visibles. C''est pourquoi le choix de l''échelle est un paramètre crucial dans la construction d''un graphique. Un graphique correct doit utiliser une échelle adaptée aux données, qui ne minimise ni n''exagère les variations réelles.',
  'L''erreur est de ne pas prêter attention à l''échelle des axes. Deux graphiques montrant les mêmes données peuvent donner des impressions visuelles très différentes selon l''échelle choisie.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb030000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique', 'Difficile',
  'qcm',
  'Un journal titre : « Explosion du chômage ! » et accompagne l''article d''un graphique montrant une courbe ascendante. En lisant attentivement, on constate que l''axe des ordonnées va de 7,0 % à 7,3 % et que la période couverte est de 3 mois seulement. Quelle analyse critique peut-on formuler ?',
  NULL,
  '[{"id":"a","label":"Le graphique confirme bien une explosion du chômage."},{"id":"b","label":"Le graphique combine un axe tronqué et une période courte pour dramatiser une variation minime de 0,3 point."},{"id":"c","label":"Le graphique est correct mais le titre est un peu exagéré."},{"id":"d","label":"On ne peut rien conclure sans les données brutes."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Ce graphique cumule deux techniques de manipulation : (1) l''axe des ordonnées est tronqué (il ne part pas de 0 %), ce qui amplifie visuellement une variation de seulement 0,3 point de pourcentage ; (2) la période choisie est très courte (3 mois), ce qui peut correspondre à une fluctuation saisonnière sans signification à long terme (cherry-picking temporel). Le mot « explosion » dans le titre renforce encore le biais. Une analyse critique exige de vérifier l''échelle des axes, la période couverte et la cohérence entre le titre et les données réelles. Cette compétence d''analyse critique des représentations graphiques est explicitement visée par les programmes de l''Éduscol.',
  'L''erreur est de se fier à l''impression visuelle globale (courbe montante = forte hausse) sans examiner les valeurs précises sur les axes. L''esprit critique face aux graphiques est une compétence fondamentale à enseigner à l''école primaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
