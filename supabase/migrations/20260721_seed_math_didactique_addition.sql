-- Seed: Didactique de l'addition — Sens, structures et progressions (10 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: free/premium
-- topic_key: math_didactique_addition

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc030000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Intermediaire',
  'qcm',
  'Selon la classification de Vergnaud (champ conceptuel des structures additives), le problème « Une bibliothèque possède 120 livres de fiction et 85 livres documentaires. Combien de livres au total ? » relève de quelle structure ?',
  NULL,
  '[{"id":"a","label":"Structure d''ajout (transformation positive)"},{"id":"b","label":"Structure de réunion (composition de deux parties en un tout)"},{"id":"c","label":"Structure de comparaison (trouver l''écart entre deux quantités)"},{"id":"d","label":"Structure de complément (trouver la quantité manquante)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Ce problème relève de la structure de RÉUNION (composition / combinaison) : deux collections coexistent simultanément (livres de fiction ET documentaires) et on les combine pour obtenir un tout. Il n''y a pas de transformation dans le temps, pas d''écart à mesurer, pas de quantité manquante. C''est la structure la plus accessible pour les élèves de CP-CE1 car elle correspond au schème intuitif de « mettre ensemble ». La structure d''ajout, en revanche, implique un changement dans le temps : état initial → transformation → état final.',
  'Confondre réunion et ajout. La réunion combine deux parties simultanées (deux collections présentes en même temps). L''ajout décrit une évolution dans le temps (on avait X, on en ajoute Y). Cette distinction est cruciale car elle détermine la représentation schématique à mobiliser et influence la progression pédagogique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc030000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Intermediaire',
  'vrai_faux',
  'Dans un problème additif, l''inconnue peut être le premier terme, le second terme, ou le résultat. Ces trois positions sont équidifficultes pour les élèves de cycle 2.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. La position de l''inconnue influence fortement la difficulté du problème. La recherche du résultat (a + b = ?) est la plus facile car elle correspond au sens direct de l''opération. La recherche du premier terme (? + b = c) ou du second terme (a + ? = c) est plus difficile car elle requiert une pensée relationnelle et une opération inverse (soustraction). Par exemple, « 3 + ? = 7 » est plus difficile que « 3 + 4 = ? » même si les nombres sont identiques. Les programmes Éduscol recommandent d''introduire progressivement les trois positions d''inconnue à partir du CE1.',
  'Négliger l''effet de la position de l''inconnue dans la progression. Un enseignant qui propose uniquement des problèmes avec le résultat inconnu prive les élèves du développement de la pensée algébrique précoce (comprendre la relation entre les termes d''une égalité).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc030000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Intermediaire',
  'qcm',
  'Un élève de CP calcule 7 + 4 en comptant à partir de 1 (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11). Une stratégie plus efficace à lui enseigner est :',
  NULL,
  '[{"id":"a","label":"Mémoriser directement le résultat 7+4=11 par répétition"},{"id":"b","label":"Compter à partir du plus grand addend (partir de 7, compter 4 de plus : 8, 9, 10, 11)"},{"id":"c","label":"Décomposer d''abord 7 et 4 par valeur positionnelle (70+40=110)"},{"id":"d","label":"Utiliser une calculatrice pour vérifier le résultat"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La stratégie « compter à partir du plus grand addend » (counting on from larger) est une étape intermédiaire clé entre le comptage depuis 1 (inefficace) et la mémorisation automatisée. L''élève part du plus grand (7) et compte autant de fois que le plus petit (4) : 8, 9, 10, 11. Cette stratégie mobilise la commutativité (7+4 = 4+7, mais on part du plus grand pour réduire le nombre de pas). Elle est recommandée par Éduscol comme étape dans la construction des faits additifs automatisés. D''autres stratégies complémentaires : utiliser les doubles (7+7=14 donc 7+4 = 7+3+1 = 10+1 = 11), passer par la dizaine (7+3=10, +1=11).',
  'Proposer la mémorisation directe avant d''avoir travaillé les stratégies de calcul réfléchi. La mémorisation durable des faits additifs est le résultat de nombreuses activités de calcul réfléchi, pas de la répétition mécanique. Forcer la mémorisation trop tôt sans sens conduit à des savoirs fragiles et peu transférables.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc030000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Intermediaire',
  'vrai_faux',
  'La commutativité de l''addition (a + b = b + a) est une propriété que les enfants de CP comprennent naturellement sans enseignement explicite car elle est évidente.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. Si certains élèves découvrent intuitivement la commutativité, elle n''est pas évidente pour tous. D''abord, dans les situations d''ajout, « j''avais 5 billes et j''en ai gagné 3 » n''est pas identique à « j''avais 3 billes et j''en ai gagné 5 » pour un enfant : les deux situations se ressemblent mais sont vécues différemment. Ensuite, en termes de calcul, compter « 3, 4, 5, 6, 7, 8 » (partir de 3) donne le même résultat que compter « 6, 7, 8 » (partir de 5), mais le deuxième chemin est plus court. Faire VÉRIFIER la commutativité par manipulation (tableau rectangulaire, retournement) est nécessaire pour une compréhension réelle.',
  'Supposer que les propriétés mathématiques évidentes pour l''adulte le sont aussi pour l''enfant. L''enseignement explicite des propriétés (commutativité, associativité) avec manipulation et vérification est indispensable, même si le résultat semble « logique ».',
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
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Intermediaire',
  'qcm',
  'Un enseignant de CE1 souhaite introduire l''addition posée (en colonnes) avec retenue. Dans quelle progression didactique cela s''inscrit-il correctement ?',
  NULL,
  '[{"id":"a","label":"Introduire l''algorithme dès le début de l''année, car les élèves ont besoin de temps pour l''automatiser"},{"id":"b","label":"Après avoir travaillé le calcul en ligne, le calcul mental et la compréhension du sens de l''addition via des problèmes et de la manipulation"},{"id":"c","label":"Après avoir mémorisé toutes les tables d''addition (jusqu''à 9+9)"},{"id":"d","label":"En même temps que la soustraction posée, pour que les élèves voient les deux algorithmes ensemble"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La progression correcte place l''algorithme posé APRÈS la construction du sens et le développement du calcul réfléchi : (1) problèmes avec manipulation (construction du sens) → (2) calcul en ligne par décomposition (ex. 24+17 = 20+10 + 4+7 = 30+11 = 41) → (3) calcul mental avec stratégies variées → (4) algorithme posé (pour les grands nombres ou les calculs complexes). L''algorithme posé est abstrait (il opère chiffre par chiffre sans maintenir la valeur des nombres) et doit arriver en dernier, comme outil efficace dont le sens a déjà été construit. Selon les programmes, l''addition posée est un objectif de fin de CE1 pour des additions à 2 chiffres.',
  'Considérer que mémoriser les tables est un prérequis à l''algorithme posé. Ce n''est pas exact : l''algorithme posé peut être utilisé sans mémorisation complète des tables, en calculant chaque addition de chiffres avec ses stratégies. La mémorisation des faits additifs est un OBJECTIF parallèle, pas un préalable à l''algorithme.',
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
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Intermediaire',
  'qcm',
  'Un élève de CE1 calcule 36 + 48 = 714 en posant l''addition et écrivant : 6+8=14 (je pose 14), 3+4=7 (je pose 7). Quel type d''erreur manifeste-t-il ?',
  NULL,
  '[{"id":"a","label":"Erreur dans les faits additifs : il ne connaît pas le résultat de 6+8"},{"id":"b","label":"Erreur de valeur positionnelle : il n''a pas compris que la retenue représente une dizaine à reporter dans la colonne des dizaines"},{"id":"c","label":"Erreur de lecture de l''énoncé : il a mal lu les chiffres"},{"id":"d","label":"Erreur de procédure : il a additionné dans le mauvais sens (gauche à droite)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''élève manifeste une erreur de VALEUR POSITIONNELLE dans la gestion de la retenue. Il sait que 6+8=14, mais il n''a pas compris que le « 1 » de 14 représente une DIZAINE qui doit être ajoutée à la colonne des dizaines. Il pose 14 entier dans la colonne des unités, ignorant le principe de la retenue. Cette erreur révèle une compréhension insuffisante du système de numération positionnel (chaque colonne a une valeur : unités, dizaines, centaines). La remédiation doit porter sur la manipulation avec du matériel de numération (cubes/barres) pour reconstruire le sens de l''échange 10 unités = 1 dizaine, fondement de la retenue.',
  'Diagnostiquer uniquement une erreur dans les tables d''addition. L''élève SAIT que 6+8=14. Le problème n''est pas là : il ne sait pas INTERPRÉTER ce résultat dans le cadre de l''algorithme posé. La distinction entre erreur de fait (table) et erreur de procédure (algorithme) est essentielle pour cibler la remédiation.',
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
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Avance',
  'vrai_faux',
  'Dans l''enseignement de l''addition, travailler les « décompositions de 10 » (1+9, 2+8, 3+7, 4+6, 5+5…) est particulièrement efficace car ces faits servent de « tremplin » pour calculer d''autres additions.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Les décompositions de 10 constituent un noyau stratégique pour le calcul mental. Une fois maîtrisées, elles permettent de calculer de nombreuses additions par la stratégie « passage par la dizaine » (ou « compléter à 10 ») : 8+5 = 8+2+3 = 10+3 = 13. Cette stratégie est enseignée explicitement au CP-CE1 et permet à l''élève de calculer mentalement des additions sans tables ni algorithme. Les recherches de Brissiaud (2007) et de Baroody (1999) montrent que la mémorisation des compléments à 10 est l''un des fondements les plus solides pour la construction des faits additifs de base.',
  'Présenter les décompositions de 10 comme de simples exercices de mémorisation sans les articuler à des stratégies de calcul. Leur valeur est dans leur UTILISATION comme tremplin : 6+7 = 6+4+3 = 10+3 = 13 est beaucoup plus efficace que de compter à partir de 6 sept fois.',
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
  'fc030000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Avance',
  'qcm',
  'Selon les programmes Éduscol, à quel cycle les élèves doivent-ils maîtriser les faits additifs de base (tables d''addition jusqu''à 9+9=18) de façon automatisée ?',
  NULL,
  '[{"id":"a","label":"À la fin du cycle 1 (Grande Section)"},{"id":"b","label":"À la fin du CP"},{"id":"c","label":"À la fin du CE1 (cycle 2)"},{"id":"d","label":"À la fin du CE2"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''automatisation des faits additifs de base (toutes les additions dont le résultat est ≤ 18, soit les « tables d''addition ») est un objectif de fin de CE1 selon les programmes Éduscol 2020. Au CP, l''objectif est de construire le sens et d''apprendre à calculer avec des stratégies réfléchies. En CE1, les stratégies se consolident et s''automatisent progressivement. Cette automatisation est indispensable car elle libère la mémoire de travail pour traiter des calculs plus complexes (addition de grands nombres, multiplication) et résoudre des problèmes sans se perdre dans les calculs élémentaires.',
  'Confondre les objectifs du CP (construire le sens) et du CE1 (automatiser). Certains enseignants exigent la mémorisation dès le CP, ce qui peut nuire à la construction du sens. D''autres n''automatisent pas suffisamment au CE1, ce qui ralentit les apprentissages ultérieurs.',
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
  'fc030000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Avance',
  'qcm',
  'Pour illustrer la propriété d''associativité de l''addition ((a + b) + c = a + (b + c)), quel contexte pédagogique est le plus approprié en CE1 ?',
  NULL,
  '[{"id":"a","label":"Dicter la propriété et faire des exercices d''application symbolique"},{"id":"b","label":"Proposer un problème avec trois collections et montrer qu''on peut les additionner dans n''importe quel ordre, par exemple en cherchant les paires qui font 10"},{"id":"c","label":"Présenter un contre-exemple pour montrer que l''ordre importe dans la soustraction"},{"id":"d","label":"Reporter ce travail au cycle 3 car l''associativité est un concept trop abstrait pour le CE1"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''associativité s''enseigne efficacement dans un contexte de calcul réfléchi : pour calculer 3 + 7 + 4, on peut grouper 3+7=10 puis +4=14 plutôt que calculer 3+7=10 puis 10+4. La recherche de paires qui font 10 (stratégie du « passage par la dizaine ») est une application concrète de l''associativité : (3+7)+4 = 10+4 = 14. Ce contexte rend la propriété UTILE et donc mémorable. La présenter comme une propriété abstraite à apprendre par cœur en CE1 est moins efficace car les élèves ne voient pas à quoi elle sert. L''associativité n''est pas trop abstraite en CE1 si elle est ancrée dans une stratégie calculatoire.',
  'Différer l''associativité au cycle 3 car elle semble trop formelle. En réalité, les stratégies de calcul réfléchi (passage par la dizaine, utilisation des doubles…) utilisent implicitement l''associativité. L''enseigner sous sa forme utile — « on peut regrouper les termes comme on veut pour faciliter le calcul » — est tout à fait accessible au CE1.',
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
  'fc030000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_addition',
  'Didactique de l''addition — Sens et structures', 'Avance',
  'qcm',
  'Un enseignant veut aider des élèves de CE1 à passer du comptage un à un (inefficace) aux faits additifs automatisés. Parmi ces activités, laquelle est la MOINS pertinente pour atteindre cet objectif ?',
  NULL,
  '[{"id":"a","label":"Jeux de dominos ou de cartes qui exigent de reconnaître instantanément des collections (subitizing)"},{"id":"b","label":"Exercices de drill : répéter 50 additions à la suite le plus vite possible"},{"id":"c","label":"Jeux de calcul mental où l''élève doit expliquer sa stratégie à voix haute (débat de procédures)"},{"id":"d","label":"Construction de la table d''addition par exploration des régularités (diagonales, symétries…)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le drill (répétition rapide de nombreuses additions) est la stratégie la MOINS efficace selon les recherches en didactique (Baroody, Brissiaud). Il peut produire une mémorisation superficielle à court terme mais génère rarement une compréhension durable. Les activités plus efficaces pour dépasser le comptage un à un sont : (a) le subitizing (percevoir instantanément une quantité sans compter), nécessaire pour la reconnaissance des petites quantités ; (c) le débat de procédures, qui force l''élève à expliciter et justifier ses stratégies, renforçant la mémorisation par la compréhension ; (d) l''exploration de la table pour découvrir ses régularités (commutativité visible sur la diagonale, doubles, compléments à 10…).',
  'Penser que la répétition rapide est toujours plus efficace que les activités plus lentes de compréhension. La recherche distingue clairement la mémorisation mécanique (fragile, oubliée rapidement) et la mémorisation fondée sur la compréhension des relations entre les faits (durable et transférable).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
