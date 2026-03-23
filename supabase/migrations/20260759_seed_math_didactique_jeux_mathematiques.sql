-- Seed: Jeux mathématiques — Intérêt didactique et mise en œuvre (7 exercices)
-- Subdomain: didactique_maths | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0c0000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Facile',
  'qcm',
  'Le jeu mathématique est reconnu comme un outil pédagogique à part entière dans les programmes scolaires. Quels sont les principaux intérêts didactiques de l''utilisation des jeux en mathématiques ?',
  NULL,
  '[{"id":"a","label":"Le jeu ne sert qu''à occuper les élèves en fin de séance — il n''a pas de valeur d''apprentissage"},{"id":"b","label":"Le jeu favorise la motivation, l''entraînement intensif dans un contexte ludique, le développement de stratégies et la construction de compétences sociales (règles, tour de rôle, argumentation)"},{"id":"c","label":"Le jeu remplace avantageusement les séquences d''enseignement structurées"},{"id":"d","label":"Le jeu est utile uniquement au cycle 1 pour les très jeunes enfants"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''intérêt didactique du jeu en mathématiques repose sur quatre piliers. (1) La motivation : le contexte ludique engage les élèves, y compris ceux qui sont en difficulté avec les mathématiques « scolaires ». Le jeu dédramatise l''erreur (on « perd un tour », on ne « se trompe » pas). (2) L''entraînement intensif : un jeu de calcul mental (comme le Mathador) amène l''élève à effectuer de nombreux calculs en peu de temps, dans un contexte signifiant. L''automatisation se fait sans la lassitude des exercices répétitifs. (3) Le développement de stratégies : le jeu pousse l''élève à anticiper, planifier, adapter sa stratégie — des compétences transversales précieuses en résolution de problèmes. (4) Les compétences sociales : respecter les règles, attendre son tour, argumenter (« Tu n''as pas le droit de jouer ça parce que... »), vérifier le coup de l''adversaire. Éduscol recommande explicitement l''usage des jeux mathématiques à tous les cycles, en soulignant que le jeu n''est pas une « récompense » mais un véritable outil d''apprentissage qui doit s''inscrire dans la programmation de la classe.',
  'Considérer le jeu comme une activité récréative sans valeur d''apprentissage. Le jeu mathématique bien choisi et bien exploité est un outil didactique aussi rigoureux qu''un exercice structuré.',
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
  'fc0c0000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Facile',
  'vrai_faux',
  'Le jeu du Mathador consiste à atteindre un nombre cible en combinant cinq nombres donnés à l''aide des quatre opérations (+, −, ×, ÷). Il permet de travailler principalement le calcul mental et la connaissance des propriétés des opérations.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le Mathador est un jeu de calcul mental créé par Éric Trouillot, recommandé par Éduscol et largement utilisé dans les classes du cycle 2 au cycle 3 (et au-delà). Le principe : on tire un nombre cible et cinq nombres de départ ; il faut atteindre le nombre cible en combinant les nombres de départ avec les quatre opérations, chaque nombre ne pouvant être utilisé qu''une fois. Le « coup Mathador » (utiliser les quatre opérations en un seul calcul) rapporte le maximum de points. Ce jeu mobilise intensément le calcul mental : l''élève doit enchaîner des calculs, explorer des pistes, revenir en arrière, optimiser. Il travaille aussi la connaissance des propriétés des opérations (commutativité, distributivité), la décomposition des nombres, et le sens des opérations. Le Mathador existe en version plateau, en version numérique (application) et en version « Rallye Mathador » (compétition inter-classes en ligne). Éduscol le cite comme exemple de jeu mathématique conjuguant plaisir et apprentissage structuré du calcul mental.',
  'Croire que le Mathador ne travaille que l''addition et la soustraction. Le jeu valorise particulièrement la multiplication et la division (plus de points), ce qui pousse les élèves à explorer toutes les opérations.',
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
  'fc0c0000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Facile',
  'qcm',
  'En didactique, on distingue le jeu mathématique de l''exercice habillé en jeu. Quelle est la différence essentielle entre les deux ?',
  NULL,
  '[{"id":"a","label":"Il n''y a aucune différence — tout exercice peut être qualifié de jeu si on le présente de façon ludique"},{"id":"b","label":"Dans un vrai jeu mathématique, la dimension ludique est intrinsèque : le plaisir vient de la mécanique de jeu elle-même (stratégie, défi, interaction), pas d''un habillage cosmétique. Dans un exercice habillé, on ajoute un décor ludique (personnages, points) à un exercice classique sans modifier la tâche cognitive"},{"id":"c","label":"Le jeu mathématique est toujours plus facile que l''exercice"},{"id":"d","label":"L''exercice habillé est toujours plus efficace que le jeu car il est plus structuré"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La distinction entre jeu authentique et exercice habillé est essentielle en didactique. Un jeu mathématique authentique possède une mécanique ludique intrinsèque : il y a un enjeu (gagner, perdre), une interaction (adversaire, coopération), des choix stratégiques (quelle carte jouer, quel nombre choisir), et la dimension mathématique est au service de la mécanique de jeu. Par exemple, au Mathador, on ne peut pas « jouer » sans calculer — le calcul est la mécanique même du jeu. À l''inverse, un exercice habillé ajoute un décor ludique (pirates, fusée, avatars) ou un système de points/récompenses à un exercice classique, sans modifier la nature de la tâche cognitive. L''élève fait le même exercice qu''avant, mais avec des images en plus. La motivation est alors extrinsèque (gagner des points) et s''épuise vite, tandis que la motivation du vrai jeu est intrinsèque (plaisir de jouer, de relever un défi). Éduscol met en garde contre la « ludification superficielle » et recommande de choisir des jeux dont la mécanique mobilise authentiquement les compétences mathématiques visées.',
  'Croire que tout exercice devient un jeu si on ajoute des points et des personnages. L''habillage ludique ne transforme pas la nature de la tâche cognitive.',
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
  'fc0c0000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Facile',
  'qcm',
  'Le Tangram est un puzzle géométrique d''origine chinoise composé de sept pièces. Quelles compétences mathématiques ce jeu permet-il principalement de travailler au cycle 2 ?',
  NULL,
  '[{"id":"a","label":"Le calcul mental et la mémorisation des tables de multiplication"},{"id":"b","label":"La reconnaissance et la manipulation des formes géométriques, la perception des relations spatiales (rotation, retournement, assemblage), et le vocabulaire géométrique (triangle, carré, parallélogramme)"},{"id":"c","label":"La résolution d''équations et le calcul littéral"},{"id":"d","label":"La lecture de tableaux et de graphiques"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le Tangram est un outil didactique précieux pour l''enseignement de la géométrie dès le cycle 2. Ses sept pièces (5 triangles de tailles différentes, 1 carré, 1 parallélogramme) permettent de travailler plusieurs compétences : (1) la reconnaissance des formes géométriques — l''élève manipule des triangles, un carré, un parallélogramme et apprend à les nommer ; (2) les transformations géométriques — pour reconstituer un modèle, l''élève doit effectuer des rotations, des retournements, des translations (sans connaître ces termes, il développe l''intuition géométrique) ; (3) les relations spatiales — assemblage, juxtaposition, recouvrement ; (4) la notion d''aire — toutes les figures réalisées avec les 7 pièces ont la même aire, ce qui prépare la compréhension de la conservation de l''aire sous transformation ; (5) le vocabulaire géométrique utilisé en contexte signifiant. Le Tangram peut être utilisé en autonomie (reconstituer un modèle), en défi (créer une figure imposée le plus vite possible), ou en création libre. Éduscol le recommande dans le cadre de l''enseignement de l''espace et de la géométrie.',
  'Réduire le Tangram à un simple puzzle récréatif. C''est un outil géométrique riche qui travaille des compétences identifiées dans les programmes (reconnaître, nommer, décrire des figures).',
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
  'fc0c0000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Facile',
  'reponse_courte',
  'Vous souhaitez concevoir un jeu de cartes pour entraîner vos élèves de CE2 à la fluence en calcul sur les compléments à 10 et les doubles. Les élèves retournent deux cartes : si la somme des deux nombres fait 10 (ou si l''un est le double de l''autre), ils gagnent la paire. Quel est le nom de la mécanique de jeu classique sur laquelle repose ce principe ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["mémory","memory","le mémory","le memory","jeu de mémory","jeu de memory","Memory","Mémory","un mémory","un memory","paires","jeu de paires"]}'::jsonb,
  'Ce jeu repose sur la mécanique du Mémory (jeu de paires). Dans le Mémory classique, on retourne deux cartes et on gagne si elles sont identiques. Dans la version mathématique, le critère de « paire » est mathématique : compléments à 10 (3+7, 4+6...), doubles (3+3, 5+5...), ou tout autre relation numérique choisie par l''enseignant. L''intérêt didactique est triple : (1) l''entraînement est intensif — l''élève effectue de nombreux calculs rapides pour identifier les paires ; (2) la mémoire visuo-spatiale (retenir où sont les cartes) ajoute une dimension cognitive supplémentaire ; (3) l''interaction (tour de rôle, vérification du coup de l''adversaire) développe les compétences sociales. On peut adapter le niveau : compléments à 10 (CE1), compléments à 100 (CE2), multiplications (CM1), fractions équivalentes (CM2). Ce jeu est un excellent exemple de jeu authentique : la mécanique ludique (retrouver les paires) est indissociable de la compétence mathématique (calculer). Éduscol recommande ce type de jeu pour automatiser les faits numériques dans un contexte motivant.',
  'Proposer des paires trop faciles (identiques au lieu de complémentaires). L''intérêt réside dans le calcul nécessaire pour vérifier si les deux cartes forment une paire — pas dans la simple reconnaissance visuelle.',
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
  'fc0c0000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Facile',
  'qcm',
  'Vous souhaitez évaluer les apprentissages mathématiques de vos élèves de CM1 à travers une séance de jeu (jeu de plateau travaillant les fractions). Comment pouvez-vous évaluer efficacement les compétences mathématiques mobilisées pendant le jeu ?',
  NULL,
  '[{"id":"a","label":"Vous ne pouvez pas évaluer pendant un jeu — il faut faire une évaluation écrite séparée"},{"id":"b","label":"Vous observez les élèves pendant le jeu à l''aide d''une grille d''observation ciblée (critères : utilise correctement les fractions, compare des fractions, justifie ses coups), vous notez les stratégies et les erreurs, et vous complétez par un court bilan oral ou écrit après la séance"},{"id":"c","label":"Vous comptez simplement qui a gagné — le gagnant maîtrise la compétence"},{"id":"d","label":"Vous filmez la séance entière et l''analysez plus tard"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''évaluation des apprentissages à travers le jeu est possible et même recommandée, à condition d''utiliser les bons outils. La grille d''observation ciblée est l''outil principal : l''enseignant identifie à l''avance les critères observables liés aux compétences visées (ex : « L''élève compare correctement deux fractions de dénominateurs différents », « L''élève justifie son choix en utilisant le vocabulaire des fractions »). Pendant la séance, il circule et observe un petit nombre d''élèves (4-5 par séance, par rotation sur plusieurs semaines). Il peut compléter par un court entretien oral (« Pourquoi as-tu joué cette carte ? »), un bilan écrit rapide (« Écris une chose que tu as apprise / une difficulté rencontrée »), ou l''analyse des traces écrites produites pendant le jeu (feuille de score, brouillons). Gagner ne suffit pas comme indicateur : un élève peut gagner par chance ou par stratégie non mathématique. Éduscol souligne que l''évaluation par observation en situation de jeu est particulièrement riche car elle révèle les compétences en contexte authentique — l''élève mobilise ses savoirs pour un objectif réel (gagner), ce qui est plus révélateur qu''un exercice formel.',
  'Croire qu''on ne peut pas évaluer pendant un jeu, ou se contenter de noter le gagnant. L''observation structurée avec une grille critériée est un outil d''évaluation rigoureux et informatif.',
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
  'fc0c0000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Facile',
  'vrai_faux',
  'La complexité des jeux mathématiques proposés aux élèves doit rester identique du cycle 2 au cycle 3, car la mécanique de jeu ne change pas — seuls les nombres utilisés doivent être adaptés.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'La progression des jeux mathématiques du cycle 2 au cycle 3 ne se limite pas à augmenter la taille des nombres. Elle doit intégrer une complexification progressive sur plusieurs dimensions. (1) La mécanique de jeu : au cycle 2, on privilégie des jeux à règles simples (Mémory, jeu de l''oie, bataille) ; au cycle 3, on peut introduire des jeux à stratégie plus élaborée (Mathador, jeux combinatoires, jeux de Nim). (2) Les compétences mathématiques : au cycle 2, les jeux travaillent principalement la numération, les faits additifs et multiplicatifs de base ; au cycle 3, ils peuvent mobiliser les fractions, la proportionnalité, la géométrie, la combinatoire. (3) La dimension stratégique : au cycle 2, la part de hasard est souvent importante (lancer de dé) ; au cycle 3, on augmente la part de stratégie (choix, anticipation, optimisation). (4) Le mode de validation : au cycle 2, les règles sont vérifiées par l''enseignant ou par un « arbitre » ; au cycle 3, les élèves valident eux-mêmes les coups (argumentation, preuve). Éduscol insiste sur cette progression spiralaire : un même type de jeu peut être décliné avec une complexité croissante à travers les cycles.',
  'Croire qu''il suffit de changer les nombres pour adapter un jeu d''un cycle à l''autre. La progression doit toucher la mécanique, les compétences mobilisées, la part de stratégie et le mode de validation.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
