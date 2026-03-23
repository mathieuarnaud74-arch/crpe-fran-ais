-- Seed: Didactique du calcul mental — Stratégies et mise en œuvre (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc030000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre', 'Intermediaire',
  'qcm',
  'Les programmes Éduscol distinguent deux formes de calcul mental. Quelle est la différence fondamentale entre le calcul mental automatisé et le calcul mental réfléchi ?',
  NULL,
  '[{"id":"a","label":"Le calcul automatisé se fait de tête tandis que le calcul réfléchi se fait avec une calculatrice"},{"id":"b","label":"Le calcul automatisé repose sur la restitution immédiate de résultats mémorisés, tandis que le calcul réfléchi mobilise des stratégies de calcul adaptées à la situation"},{"id":"c","label":"Le calcul automatisé concerne les nombres entiers et le calcul réfléchi les nombres décimaux"},{"id":"d","label":"Le calcul automatisé est plus rapide et donc toujours préférable au calcul réfléchi"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le calcul mental automatisé repose sur la restitution directe et immédiate de résultats mémorisés : tables d''addition, tables de multiplication, compléments à 10, doubles, etc. L''élève ne « calcule » pas : il retrouve un résultat stocké en mémoire à long terme. Le calcul mental réfléchi, en revanche, mobilise des procédures personnelles de calcul adaptées aux nombres en présence. Par exemple, pour 47 + 29, l''élève peut utiliser : 47 + 30 − 1 (compensation), ou 40 + 20 + 7 + 9 (décomposition), ou 47 + 29 = 46 + 30 (conservation). Les deux formes sont complémentaires et indispensables : l''automatisé fournit les « briques de base » et le réfléchi développe la flexibilité numérique. Éduscol préconise un rituel quotidien de 15 minutes alternant les deux.',
  'Croire que le calcul réfléchi est « supérieur » au calcul automatisé. Les deux sont nécessaires : sans automatismes solides (tables), le calcul réfléchi est inefficace car la mémoire de travail est surchargée par les calculs élémentaires.',
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
  'fc030000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre', 'Intermediaire',
  'reponse_courte',
  'Un élève de CE2 calcule mentalement 38 + 25 en raisonnant ainsi : « 38 + 25, c''est comme 40 + 25 − 2, donc 65 − 2 = 63 ». Quel est le nom de cette stratégie de calcul mental ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["compensation","la compensation","Compensation","La compensation","stratégie de compensation","strategie de compensation"]}'::jsonb,
  'La stratégie de compensation consiste à arrondir un nombre pour simplifier le calcul, puis à compenser l''écart introduit. Ici, l''élève arrondit 38 à 40 (ajout de 2), effectue le calcul simplifié (40 + 25 = 65), puis compense en retranchant les 2 ajoutés (65 − 2 = 63). Cette stratégie est très efficace quand l''un des nombres est proche d''une dizaine ou d''une centaine. Elle s''appuie sur la compréhension de la propriété : a + b = (a + k) + b − k. C''est l''une des stratégies de calcul réfléchi les plus fréquemment observées chez les bons calculateurs et l''une de celles que les programmes Éduscol recommandent de travailler explicitement dès le cycle 2.',
  'Confondre la compensation avec la décomposition. La décomposition consisterait à calculer 30 + 20 + 8 + 5 = 50 + 13 = 63. Les deux stratégies sont valides mais procèdent différemment.',
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
  'fc030000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre', 'Intermediaire',
  'vrai_faux',
  'Lors d''un rituel de calcul mental quotidien, il est préférable de n''accepter qu''une seule stratégie de calcul (la plus efficace) pour éviter de confondre les élèves.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Au contraire, les recherches en didactique et les recommandations Éduscol insistent sur l''importance de valoriser et de confronter les différentes stratégies des élèves. Le moment de mise en commun des procédures est un temps didactique essentiel : il permet aux élèves de découvrir d''autres stratégies, d''enrichir leur répertoire et de développer la flexibilité numérique. Par exemple, pour 26 × 5, certains élèves calculeront 26 × 10 ÷ 2 = 130, d''autres feront 25 × 5 + 5 = 130, d''autres encore 20 × 5 + 6 × 5 = 130. La confrontation de ces stratégies développe le sens du nombre et la compréhension des propriétés des opérations (commutativité, distributivité, associativité). Imposer une seule méthode irait à l''encontre de l''objectif de flexibilité.',
  'Croire que la diversité des stratégies confond les élèves. C''est l''inverse : la confrontation structurée des procédures, guidée par l''enseignant, est un puissant levier d''apprentissage.',
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
  'fc030000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre', 'Intermediaire',
  'qcm',
  'Un enseignant de CM1 analyse les stratégies de calcul mental de ses élèves pour 99 + 47. L''un d''eux explique : « J''ai fait 100 + 47 = 147, puis j''ai enlevé 1, ça fait 146. » Un autre dit : « J''ai fait 99 + 1 = 100, puis 100 + 46 = 146. » Quelle est la différence entre ces deux stratégies ?',
  NULL,
  '[{"id":"a","label":"Les deux stratégies sont identiques, seule la formulation diffère"},{"id":"b","label":"La première utilise la surcompensation (arrondir puis corriger), la seconde utilise la conservation des sommes (redistribution entre les termes)"},{"id":"c","label":"La première est fausse et la seconde est correcte"},{"id":"d","label":"La première est de la compensation et la seconde est de la décomposition"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les deux stratégies sont correctes mais s''appuient sur des propriétés différentes. La première (100 + 47 − 1) est une stratégie de surcompensation : l''élève arrondit 99 à 100, effectue le calcul simplifié, puis retranche l''excédent. Elle s''appuie sur : a + b = (a + k) + b − k. La seconde (99 + 1 + 46) est une stratégie de conservation des sommes (ou redistribution) : l''élève prélève 1 au second terme pour compléter le premier à 100, sans changer le total. Elle s''appuie sur : a + b = (a + k) + (b − k). La distinction est fine mais importante didactiquement : la première modifie un terme puis corrige à la fin ; la seconde redistribue entre les deux termes dès le départ, conservant la somme à chaque étape.',
  'Considérer ces deux stratégies comme identiques. Bien qu''elles donnent le même résultat, elles mobilisent des propriétés mathématiques différentes et ne posent pas les mêmes difficultés aux élèves.',
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
  'fc030000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre', 'Intermediaire',
  'qcm',
  'Dans la progression du calcul mental entre le cycle 2 et le cycle 3, quelle évolution majeure est attendue par les programmes Éduscol ?',
  NULL,
  '[{"id":"a","label":"Au cycle 2, on ne fait que du calcul automatisé ; le calcul réfléchi ne commence qu''au cycle 3"},{"id":"b","label":"Au cycle 2, le calcul mental porte sur les entiers avec addition et soustraction ; au cycle 3, il s''étend à la multiplication, la division, les fractions et les décimaux, avec des stratégies de plus en plus variées"},{"id":"c","label":"Le calcul mental disparaît au cycle 3 au profit du calcul posé et de la calculatrice"},{"id":"d","label":"Au cycle 3, seul le calcul automatisé est travaillé, le calcul réfléchi étant réservé au collège"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La progression entre cycle 2 et cycle 3 porte à la fois sur le champ numérique et sur les opérations. Au cycle 2 : le calcul mental porte principalement sur les nombres entiers inférieurs à 1000, avec l''addition et la soustraction comme opérations centrales. Les automatismes visés incluent les tables d''addition, les compléments à 10, à 100, les doubles. Le calcul réfléchi porte sur des stratégies d''addition/soustraction. Au cycle 3 : le champ s''étend aux grands nombres, aux fractions simples et aux décimaux. La multiplication et la division entrent dans le calcul mental (tables de multiplication maîtrisées, multiplier/diviser par 10, 100, 0,1). Les stratégies se diversifient : factorisation, distributivité explicite, utilisation des ordres de grandeur. Les deux formes (automatisé et réfléchi) sont travaillées aux deux cycles.',
  'Croire que le calcul réfléchi ne commence qu''au cycle 3. Dès le CP, les élèves développent des stratégies réfléchies sur les petits nombres.',
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
  'fc030000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre', 'Intermediaire',
  'vrai_faux',
  'Les « flash cards » (cartes à retourner avec une opération d''un côté et le résultat de l''autre) sont le dispositif le plus efficace pour développer le calcul mental réfléchi chez les élèves.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Les flash cards sont un outil efficace pour le calcul mental automatisé (mémorisation des tables, des doubles, des compléments), mais elles ne développent pas le calcul mental réfléchi. Le calcul réfléchi nécessite des situations-problèmes qui engagent l''élève dans une recherche de stratégie : trouver le nombre cible à partir de nombres donnés (type Mathador), jeux de « compte est bon », chaînes de calculs, estimation d''ordres de grandeur. Les flash cards sollicitent la mémoire par récupération active (ce qui est bien pour l''automatisation), mais elles ne provoquent pas l''élaboration de stratégies. Un dispositif complet de calcul mental doit articuler les deux : des activités d''automatisation (flash cards, furet, tables chronométrées) ET des activités de recherche (jeux stratégiques, résolution de problèmes numériques).',
  'Confondre les objectifs du calcul automatisé et du calcul réfléchi. Les flash cards sont un bon outil pour l''un, mais insuffisant pour l''autre.',
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
  'fc030000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre', 'Intermediaire',
  'qcm',
  'Un enseignant de CM2 souhaite mettre en place une activité ludique de type Mathador pour développer le calcul mental réfléchi. Le principe : atteindre un nombre cible en combinant des nombres donnés avec les quatre opérations. En quoi ce type de jeu est-il pertinent didactiquement pour le calcul mental ?',
  NULL,
  '[{"id":"a","label":"Il permet uniquement de travailler la mémorisation des tables de multiplication"},{"id":"b","label":"Il développe la flexibilité numérique en obligeant l''élève à explorer différentes combinaisons d''opérations et à mobiliser le sens des nombres et des opérations"},{"id":"c","label":"Il remplace avantageusement tout rituel de calcul mental quotidien"},{"id":"d","label":"Il est surtout utile pour les élèves en difficulté car il simplifie les calculs"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le jeu de type Mathador est un outil didactique puissant pour le calcul mental réfléchi car il développe la flexibilité numérique. L''élève doit : (1) explorer de multiples chemins de calcul (essai-erreur stratégique), (2) mobiliser les quatre opérations et choisir la plus pertinente, (3) mettre en relation les nombres entre eux (repérer que 7 × 8 = 56, que 100 − 4 = 96...), (4) développer le sens des opérations (la multiplication pour « aller vite vers un grand nombre », la soustraction pour « ajuster »). Ce type d''activité s''inscrit dans une approche par résolution de problèmes du calcul mental, complémentaire des rituels d''automatisation. Il favorise l''engagement de tous les élèves (aspect ludique et compétitif) et permet la différenciation (nombres cibles plus ou moins accessibles). Cependant, il ne remplace pas les autres formes de rituels : il les complète.',
  'Penser que ce type de jeu suffit à lui seul pour développer le calcul mental. Il doit s''inscrire dans un dispositif complet articulant automatisation, calcul réfléchi guidé et jeux de recherche.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
