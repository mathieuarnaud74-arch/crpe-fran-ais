-- Seed: Situations didactiques de Brousseau — Concepts clés (7 exercices)
-- Subdomain: didactique_maths | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc020000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Difficile',
  'qcm',
  'Dans la théorie des situations didactiques de Brousseau, quelle est la caractéristique principale d''une situation adidactique ?',
  NULL,
  '[{"id":"a","label":"L''enseignant guide pas à pas l''élève vers la bonne réponse par des questions fermées"},{"id":"b","label":"L''élève agit sur un milieu qui lui renvoie des rétroactions, sans que l''enseignant intervienne sur le contenu mathématique"},{"id":"c","label":"L''enseignant dicte la méthode de résolution avant que l''élève ne commence"},{"id":"d","label":"L''évaluation sommative est intégrée à la situation d''apprentissage"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Une situation adidactique est une situation dans laquelle l''élève interagit avec un milieu (matériel, problème, jeu) qui fournit des rétroactions (feedback) permettant à l''élève de valider ou invalider ses stratégies, sans intervention directe de l''enseignant sur le savoir mathématique en jeu. L''enseignant a conçu la situation en amont (choix du milieu, des variables didactiques), mais pendant la phase adidactique, c''est le milieu — et non l''enseignant — qui « enseigne ». L''élève construit ainsi le savoir par adaptation à la situation. C''est le cœur de la théorie de Brousseau : le savoir émerge de l''interaction entre l''élève et le milieu.',
  'Croire qu''adidactique signifie « sans enseignant » ou « sans intention didactique ». Au contraire, la situation est soigneusement conçue par l''enseignant, mais elle fonctionne de manière autonome une fois lancée.',
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
  'fc020000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Difficile',
  'reponse_courte',
  'Comment Brousseau nomme-t-il le processus par lequel l''enseignant transfère à l''élève la responsabilité de résoudre le problème, en le rendant acteur de son apprentissage ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["dévolution","la dévolution","Dévolution","La dévolution","devolution","la devolution"]}'::jsonb,
  'La dévolution est le processus par lequel l''enseignant fait accepter à l''élève la responsabilité de la situation d''apprentissage. L''élève doit s''engager dans le problème comme s''il était le sien, et non simplement exécuter les consignes de l''enseignant. La dévolution est un moment délicat : l''enseignant doit transférer la responsabilité sans révéler la stratégie de résolution (sinon la situation perd son caractère adidactique). Brousseau souligne que la dévolution est un acte fondamental de l''enseignement : « enseigner, ce n''est pas seulement communiquer un savoir, c''est aussi dévoluer à l''élève un bon problème ». Si la dévolution échoue, l''élève attend passivement que l''enseignant donne la réponse.',
  'Confondre dévolution et institutionnalisation. L''institutionnalisation est le processus inverse : l''enseignant reprend la main pour formaliser et officialiser le savoir construit par les élèves.',
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
  'fc020000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Difficile',
  'qcm',
  'Dans la théorie de Brousseau, les quatre phases d''une situation didactique sont, dans l''ordre chronologique :',
  NULL,
  '[{"id":"a","label":"Institutionnalisation → Validation → Formulation → Action"},{"id":"b","label":"Action → Formulation → Validation → Institutionnalisation"},{"id":"c","label":"Formulation → Action → Institutionnalisation → Validation"},{"id":"d","label":"Action → Validation → Formulation → Institutionnalisation"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''ordre des quatre phases dans la théorie des situations didactiques de Brousseau est : (1) Situation d''action — l''élève agit sur le milieu, fait des essais, élabore des stratégies implicites. (2) Situation de formulation — l''élève doit communiquer sa stratégie à un pair, ce qui l''oblige à expliciter et à utiliser un langage (naturel ou mathématique). (3) Situation de validation — l''élève doit prouver que sa proposition est vraie, convaincre les autres par une argumentation rationnelle. (4) Institutionnalisation — l''enseignant reprend la main pour officialiser le savoir, lui donner un statut de connaissance partagée de la classe, le relier au savoir savant. Les trois premières phases sont adidactiques ; la quatrième est spécifiquement didactique.',
  'Inverser formulation et validation. La formulation (communiquer) précède la validation (prouver), car il faut d''abord savoir exprimer sa stratégie avant de pouvoir la justifier rationnellement.',
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
  'fc020000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Difficile',
  'vrai_faux',
  'Le « contrat didactique » selon Brousseau désigne le contrat écrit signé en début d''année entre l''enseignant et les élèves, fixant les règles de comportement en classe.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Le contrat didactique n''est PAS un contrat écrit ou explicite. C''est l''ensemble des attentes réciproques, le plus souvent implicites, entre l''enseignant et les élèves concernant le savoir. Il englobe ce que chacun attend de l''autre à propos de la connaissance mathématique : l''élève attend que l''enseignant pose des problèmes résolubles avec les outils vus en classe ; l''enseignant attend que l''élève s''engage dans la résolution. Les « effets de contrat » apparaissent quand ces attentes implicites dévient l''apprentissage : par exemple, l''élève qui cherche des indices dans la formulation de l''enseignant plutôt que dans le problème lui-même (effet Topaze), ou l''enseignant qui simplifie la tâche jusqu''à la vider de son contenu (effet Jourdain).',
  'Confondre le contrat didactique (concept théorique de Brousseau, implicite et lié au savoir) avec un contrat de classe (document explicite lié au comportement).',
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
  'fc020000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Difficile',
  'qcm',
  'Un enseignant propose à ses élèves de CM1 le jeu suivant : un élève choisit secrètement un nombre entre 1 et 100, ses camarades posent des questions auxquelles il ne peut répondre que par « plus grand » ou « plus petit ». Les élèves doivent trouver le nombre en un minimum de questions. Selon Brousseau, quel est le « milieu » dans cette situation ?',
  NULL,
  '[{"id":"a","label":"L''enseignant qui anime le jeu"},{"id":"b","label":"Le tableau sur lequel sont notées les tentatives"},{"id":"c","label":"Le jeu lui-même : les nombres de 1 à 100, les réponses « plus grand / plus petit » et le compteur de questions"},{"id":"d","label":"Les camarades qui posent les questions"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le milieu, dans la théorie de Brousseau, est le système antagoniste de l''élève : tout ce avec quoi l''élève interagit et qui lui renvoie des rétroactions. Ici, le milieu est constitué par le jeu lui-même : l''ensemble des nombres possibles (1 à 100), les réponses « plus grand / plus petit » (rétroactions), et la contrainte du nombre minimal de questions (critère d''optimalité). Ce milieu est bien conçu car : il fournit une rétroaction immédiate (l''intervalle se réduit à chaque question), il permet à l''élève de construire progressivement la stratégie de dichotomie, et il rend visible la pertinence des choix (certaines questions éliminent plus de nombres que d''autres). L''enseignant n''est pas le milieu : il est le concepteur de la situation.',
  'Confondre le milieu avec le matériel physique. Le milieu est un concept plus large : c''est le système avec lequel l''élève interagit, incluant les règles du jeu, les rétroactions et les contraintes.',
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
  'fc020000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Difficile',
  'reponse_courte',
  'Dans la théorie de Brousseau, comment appelle-t-on l''effet de contrat didactique par lequel l''enseignant, face à la difficulté des élèves, fournit des indices de plus en plus explicites jusqu''à donner la réponse, vidant ainsi la tâche de tout contenu mathématique ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["effet Topaze","l''effet Topaze","Effet Topaze","Topaze","topaze","effet topaze","l''effet topaze"]}'::jsonb,
  'L''effet Topaze (du nom de la pièce de Marcel Pagnol où le personnage de Topaze dicte « des moutons... des moutonsss » pour faire écrire le « s » du pluriel) désigne la situation où l''enseignant, face à l''échec des élèves, simplifie progressivement la tâche en donnant des indices de plus en plus transparents, jusqu''à ce que la réponse soit évidente. L''élève « réussit » alors la tâche, mais sans avoir mobilisé le savoir visé : la réponse a été obtenue par décodage des indices de l''enseignant, non par activité mathématique. C''est une rupture du contrat didactique : l''enseignant prend en charge le travail cognitif qui devait être celui de l''élève. L''effet Topaze est l''un des obstacles à la dévolution.',
  'Confondre l''effet Topaze avec l''effet Jourdain. L''effet Jourdain est l''inverse : l''enseignant attribue une valeur savante à une production banale de l''élève (« tu as fait une démarche de preuve par l''absurde ! » alors que l''élève a simplement dit « c''est pas possible »).',
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
  'fc020000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Difficile',
  'qcm',
  'Un enseignant de CE2 veut concevoir une situation adidactique pour l''apprentissage de la multiplication. Il propose : « Vous devez trouver combien de carreaux contient un rectangle de 7 carreaux de long et 4 carreaux de large, mais vous n''avez pas le droit de compter un par un. » Quel élément constitue la variable didactique principale que l''enseignant peut modifier pour ajuster la difficulté ?',
  NULL,
  '[{"id":"a","label":"La couleur des carreaux du rectangle"},{"id":"b","label":"La taille des nombres (dimensions du rectangle) et la contrainte interdisant le comptage un par un"},{"id":"c","label":"Le nombre d''élèves par groupe de travail"},{"id":"d","label":"Le temps accordé pour réaliser l''activité"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La variable didactique principale est la taille des nombres (dimensions du rectangle) couplée à la contrainte sur la stratégie. Une variable didactique, selon Brousseau, est un paramètre de la situation que l''enseignant peut modifier et qui va provoquer un changement de stratégie chez l''élève. Ici : avec un rectangle 3×2, le comptage reste possible même avec la contrainte ; avec 7×4, l''élève doit passer à l''addition itérée (4+4+4+4+4+4+4) ; avec 12×8, l''addition itérée devient coûteuse et la multiplication s''impose comme outil efficace. La couleur des carreaux n''est pas une variable didactique (elle ne change pas les stratégies). Le temps et la taille des groupes sont des variables pédagogiques (organisation), pas didactiques (liées au savoir).',
  'Confondre variable didactique et variable pédagogique. La variable didactique modifie le rapport de l''élève au savoir mathématique ; la variable pédagogique concerne l''organisation de la classe.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
