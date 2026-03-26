-- Migration: 10 exercices — Didactique de la résolution de problèmes à l'école
-- Série : math_did_resolution_problemes (Mathématiques, didactique_maths)
-- Vergnaud, structures additives/multiplicatives, situation-problème, dévolution
-- UUID prefix: 2cd30000

-- Q1 — QCM — Les deux champs conceptuels de Vergnaud
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000001',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'qcm',
  'Selon Gérard Vergnaud, quels sont les deux grands champs conceptuels qui structurent les problèmes arithmétiques à l''école primaire ?',
  NULL,
  '[{"id":"a","label":"Les problèmes simples et les problèmes complexes"},{"id":"b","label":"Les structures additives et les structures multiplicatives"},{"id":"c","label":"L''addition et la soustraction d''un côté, la multiplication et la division de l''autre"},{"id":"d","label":"Les problèmes de mesure et les problèmes de dénombrement"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Gérard Vergnaud (1981) a identifié deux grands champs conceptuels en arithmétique scolaire. Les structures additives regroupent toutes les situations relevant de l''addition et de la soustraction (réunion, transformation, comparaison, écart). Les structures multiplicatives englobent la multiplication, la division, la proportionnalité et le produit cartésien. Cette classification dépasse le simple critère opératoire et prend en compte la nature des relations entre les grandeurs.',
  'Croire que les « structures multiplicatives » ne concernent que la multiplication. Elles incluent aussi la division, la proportionnalité et le produit cartésien — toutes les situations dans lesquelles les quantités entretiennent des relations multiplicatives.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Situation-problème ≠ problème exercice
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000002',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans la terminologie didactique, un "problème exercice" est identique à une "situation-problème".',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Un problème exercice est une tâche d''application d''une technique ou d''un algorithme déjà maîtrisé : l''élève sait quelle procédure utiliser. Une situation-problème (au sens de Brousseau) est une situation dans laquelle l''élève doit construire une connaissance nouvelle pour résoudre un obstacle : elle vise un apprentissage, pas seulement une application. La situation-problème est un outil d''apprentissage ; le problème exercice est un outil de consolidation.',
  'Réduire tout problème mathématique à un "exercice d''application". La distinction entre situation-problème (construction de connaissance) et problème exercice (mobilisation d''une connaissance existante) est fondamentale en didactique des mathématiques.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — La dévolution selon Brousseau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000003',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'qcm',
  'Dans la théorie des situations didactiques de Brousseau, qu''est-ce que la "dévolution" ?',
  NULL,
  '[{"id":"a","label":"La correction finale du problème par l''enseignant"},{"id":"b","label":"Le fait que l''élève accepte la responsabilité de la résolution et s''engage dans la tâche sans attendre la solution de l''enseignant"},{"id":"c","label":"La présentation du problème par l''enseignant avant la recherche"},{"id":"d","label":"L''évaluation sommative du travail de l''élève à la fin de la séance"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La dévolution est le processus par lequel l''enseignant fait accepter à l''élève la responsabilité de la situation d''apprentissage : l''élève doit s''engager dans la résolution par ses propres moyens, sans attendre que l''enseignant lui indique la démarche. C''est une condition nécessaire à l''apprentissage dans la théorie de Brousseau : si l''élève n''est pas en situation de chercher réellement, il n''y a pas d''apprentissage véritable.',
  'Confondre dévolution et correction (institutionnalisation). La dévolution se situe au début de la situation adidactique, avant la recherche. L''institutionnalisation intervient après, quand l''enseignant formalise le savoir construit.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Vrai/Faux — Structures multiplicatives et division
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000004',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans la classification de Vergnaud, les "structures multiplicatives" incluent uniquement les problèmes de multiplication.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Les structures multiplicatives de Vergnaud regroupent toutes les situations impliquant des relations multiplicatives entre grandeurs : la multiplication (bien sûr), mais aussi la division (partage et groupements), la proportionnalité, le produit cartésien et les comparaisons multiplicatives (« x fois plus que »). C''est la structure des relations entre grandeurs qui définit le champ, pas l''opération utilisée pour calculer.',
  'Réduire les structures multiplicatives à l''opération de multiplication. Un problème de type « combien de rangées de 6 puis-je former avec 42 objets ? » appartient aux structures multiplicatives bien que la procédure de résolution utilise la division.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Le problème ouvert
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'qcm',
  'Quelle caractéristique principale distingue un "problème ouvert" d''un problème fermé en classe de mathématiques ?',
  NULL,
  '[{"id":"a","label":"Le problème ouvert est réservé aux élèves les plus avancés"},{"id":"b","label":"Le problème ouvert est accessible par différentes stratégies, peut admettre plusieurs solutions et favorise la recherche exploratoire"},{"id":"c","label":"Le problème ouvert n''a pas de solution correcte identifiable"},{"id":"d","label":"Le problème ouvert est toujours posé oralement sans support écrit"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Un problème ouvert (au sens didactique) se caractérise par son accessibilité à tous les niveaux, la multiplicité des stratégies de résolution possibles, et souvent la diversité des solutions acceptables. Il favorise la recherche active, la communication mathématique et la créativité. À l''inverse, un problème fermé attend une démarche et une réponse uniques. Les problèmes ouverts sont recommandés dans les ressources Éduscol pour développer les compétences de recherche dès le cycle 2.',
  'Croire que "ouvert" signifie "sans solution" ou "mal défini". Un problème ouvert est bien défini mais sa résolution autorise plusieurs chemins ou réponses.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Obstacle d'ordre didactique dans la résolution
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'qcm',
  'Parmi les obstacles suivants, lequel relève principalement d''un effet de contrat didactique plutôt que d''un obstacle cognitif ?',
  NULL,
  '[{"id":"a","label":"L''élève ne comprend pas certains mots de l''énoncé"},{"id":"b","label":"L''élève ne maîtrise pas encore la technique de la multiplication"},{"id":"c","label":"L''élève attend systématiquement que l''enseignant lui indique quelle opération utiliser, sans chercher par lui-même"},{"id":"d","label":"L''élève confond « plus que » et « fois plus que »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''obstacle décrit en (c) est typique d''un effet de contrat didactique (Brousseau) : l''élève a appris implicitement que l''enseignant finit toujours par donner la solution, il ne prend donc pas l''initiative de chercher par lui-même. Cet obstacle n''est pas cognitif mais relationnel et institutionnel. Les obstacles (a), (b) et (d) sont d''ordre cognitif ou linguistique : ils portent sur des compétences ou des connaissances à acquérir.',
  'Confondre obstacles cognitifs (liés à la maîtrise du contenu mathématique) et effets du contrat didactique (liés aux attentes implicites de la relation enseignant-élève). La distinction est essentielle pour choisir la bonne remédiation.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Le schéma comme outil de résolution
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000007',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La réalisation d''un schéma ou d''un dessin est un outil de résolution légitime et encouragé dans les programmes de cycle 2 et 3.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Les programmes Éduscol et le socle commun valorisent explicitement l''usage de représentations intermédiaires (schémas, dessins, tableaux, diagrammes) comme aide à la compréhension des problèmes et à la modélisation des relations entre grandeurs. Ces représentations sémiotiques externalisent le raisonnement, facilitent la communication et constituent des traces de la démarche de résolution.',
  'Penser que seule l''écriture d''une expression numérique constitue une réponse valide. Les ressources Éduscol insistent sur la diversité des traces de résolution : schéma, phrase, calcul, programme de calcul — toutes sont légitimes et permettent d''évaluer la démarche.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Résolution d'un problème de proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'qcm',
  'Dans la résolution d''un problème de proportionnalité, quelle procédure relève d''un raisonnement multiplicatif correct ?',
  NULL,
  '[{"id":"a","label":"Calculer la différence entre les deux grandeurs connues"},{"id":"b","label":"Utiliser le coefficient de proportionnalité ou la règle de trois"},{"id":"c","label":"Calculer la moyenne des deux valeurs connues"},{"id":"d","label":"Soustraire la plus petite valeur de la plus grande"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Un tableau de proportionnalité est caractérisé par un coefficient multiplicatif constant entre les deux grandeurs. La résolution correcte passe par le coefficient de proportionnalité (k tel que y = kx) ou par la règle de trois (produit en croix). Les procédures additives (différence, soustraction) sont des erreurs classiques qui correspondent à une confusion entre structures additives et multiplicatives, erreur fréquente chez les élèves de cycle 3.',
  'Confondre raisonnement additif (« la différence est 3 ») et raisonnement multiplicatif (« le rapport est 3 ») dans un problème de proportionnalité. C''est l''une des erreurs les plus documentées en résolution de problèmes à l''école primaire.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Le champ conceptuel chez Vergnaud
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'reponse_courte',
  'Dans la terminologie de Vergnaud, comment appelle-t-on l''ensemble des situations, des concepts, des théorèmes et des représentations symboliques relevant d''une même organisation conceptuelle ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["champ conceptuel","un champ conceptuel","le champ conceptuel"]}'::jsonb,
  'Un champ conceptuel (Vergnaud, 1981) est un ensemble de situations dont la maîtrise requiert des concepts, des procédures et des représentations de plusieurs types en relation les uns avec les autres. Par exemple, le « champ conceptuel des structures multiplicatives » regroupe toutes les situations, procédures et concepts liés au produit, au quotient et à la proportionnalité.',
  'Confondre « champ conceptuel » avec « domaine mathématique » ou « compétence ». La notion de champ conceptuel est une construction théorique propre à la didactique des mathématiques et à Vergnaud.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Démarche recommandée pour la résolution collective
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '2cd30000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_did_resolution_problemes',
  'Didactique de la résolution de problèmes à l''école',
  'Standard',
  'qcm',
  'Selon les ressources Éduscol sur la résolution de problèmes à l''école primaire, quelle démarche est recommandée pour développer les compétences des élèves ?',
  NULL,
  '[{"id":"a","label":"Donner immédiatement la solution pour ne pas frustrer les élèves en difficulté"},{"id":"b","label":"Favoriser une phase de recherche individuelle ou par groupes, suivie d''une mise en commun et d''une comparaison explicite des stratégies"},{"id":"c","label":"Faire résoudre les problèmes uniquement à l''écrit et de manière individuelle, sans échanges oraux"},{"id":"d","label":"Toujours décomposer le problème en sous-questions imposées pour guider chaque étape"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les ressources Éduscol préconisent une démarche en plusieurs phases : 1) dévolution et recherche (individuelle puis en groupe), 2) mise en commun et comparaison des stratégies (débat mathématique), 3) institutionnalisation du savoir. La phase de mise en commun est essentielle : elle permet aux élèves de confronter leurs procédures, d''argumenter et de construire collectivement une solution validée. Cette approche s''inscrit dans le cadre de la didactique des situations (Brousseau).',
  'Penser que décomposer le problème en sous-questions imposées est la meilleure aide. Cette pratique peut au contraire priver l''élève de la nécessité de modéliser la situation, réduisant la résolution de problème à une suite d''exercices simples.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
