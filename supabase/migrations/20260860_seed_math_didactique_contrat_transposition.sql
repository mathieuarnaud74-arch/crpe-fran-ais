-- Migration: 10 exercices — Contrat didactique et transposition didactique
-- Série : math_didactique_contrat_transposition (Mathématiques, didactique_maths)
-- Brousseau (contrat, dévolution, institutionnalisation), Chevallard (transposition)
-- UUID prefix: e2530000

-- Q1 — QCM — Définition du contrat didactique (Brousseau)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000001',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'qcm',
  'Selon Guy Brousseau, le contrat didactique désigne :',
  NULL,
  '[{"id":"a","label":"Le document écrit signé entre l''enseignant et les élèves en début d''année fixant les règles de comportement"},{"id":"b","label":"L''ensemble des règles implicites régissant les attentes réciproques entre l''enseignant et les élèves à propos du savoir"},{"id":"c","label":"Le contrat pédagogique établi entre l''enseignant et les parents d''élèves"},{"id":"d","label":"La progression annuelle que l''enseignant s''engage à respecter devant l''inspection"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le contrat didactique, concept central de la théorie des situations didactiques de Guy Brousseau, désigne l''ensemble des règles implicites et des attentes réciproques qui lient l''enseignant et les élèves à propos du savoir. Ce « contrat » n''est jamais explicité ni signé : il est tacitement négocié et fonctionne comme un arrière-plan partagé. L''élève croit que l''enseignant posera des problèmes résolubles avec les outils disponibles ; l''enseignant croit que l''élève s''engagera sincèrement dans la résolution. Ces attentes mutuelles, lorsqu''elles dévient, génèrent des « effets de contrat » néfastes (effet Topaze, effet Jourdain). Il est essentiel de distinguer ce concept du « contrat de classe », document comportemental explicite sans lien avec l''apprentissage des mathématiques.',
  'Confondre le contrat didactique (concept théorique de Brousseau, implicite, centré sur le rapport au savoir) avec un règlement de classe ou un contrat comportemental. Le mot « contrat » est ici métaphorique : il n''y a aucun document écrit.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — La dévolution : transfert de responsabilité vers l'élève
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000002',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'vrai_faux',
  'La dévolution consiste, pour l''enseignant, à confier à l''élève la responsabilité d''un problème sans lui fournir la stratégie de résolution, afin qu''il s''engage dans la situation comme si le problème était réellement le sien.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La dévolution est l''un des actes fondamentaux de l''enseignement selon Brousseau : l''enseignant transfère à l''élève la responsabilité cognitive de la situation. Pour que la dévolution réussisse, l''élève doit accepter le problème comme sien — il doit chercher à résoudre pour lui-même, pas pour satisfaire l''enseignant. Si l''enseignant fournit des indices trop transparents ou annonce la méthode, la dévolution échoue : l''élève ne s''engage plus dans une activité mathématique authentique. La dévolution est la condition nécessaire à l''entrée dans une phase adidactique. Elle est asymétrique : l''enseignant a conçu la situation avec une intention didactique précise, mais il « fait semblant » de ne pas connaître la réponse pour laisser l''élève chercher.',
  'Croire que la dévolution signifie « laisser l''élève se débrouiller seul sans préparation ». La dévolution est un acte intentionnel et préparé de l''enseignant : c''est précisément parce qu''il a soigneusement conçu la situation qu''il peut ensuite se retirer pour laisser l''élève agir.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — La transposition didactique (Chevallard)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000003',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'qcm',
  'La transposition didactique, théorisée par Yves Chevallard, décrit :',
  NULL,
  '[{"id":"a","label":"Le processus par lequel l''élève reformule le savoir de l''enseignant avec ses propres mots"},{"id":"b","label":"Le passage du savoir savant (produit par les mathématiciens) au savoir à enseigner (programme officiel), puis au savoir enseigné (ce qui se passe réellement en classe)"},{"id":"c","label":"La transformation d''un problème complexe en exercices d''application simples"},{"id":"d","label":"L''adaptation des supports pédagogiques aux besoins des élèves en difficulté"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Yves Chevallard a introduit le concept de transposition didactique dans son ouvrage éponyme de 1985. Il décrit un processus en deux étapes : (1) la transposition externe, réalisée par la noosphère (inspecteurs, auteurs de manuels, concepteurs de programmes), transforme le savoir savant — produit par les chercheurs en mathématiques — en savoir à enseigner, tel qu''il apparaît dans les programmes officiels et les manuels ; (2) la transposition interne, réalisée par l''enseignant dans sa classe, transforme le savoir à enseigner en savoir enseigné — ce qui est effectivement présenté aux élèves. Ces transformations ne sont pas neutres : elles modifient la nature du savoir (dépersonnalisation, décontextualisation, découpage en notions isolées). Comprendre cette chaîne aide l''enseignant à rester vigilant sur la fidélité mathématique de ses transpositions.',
  'Réduire la transposition didactique à la seule « simplification » du savoir pour les élèves. La transposition est un processus institutionnel complexe impliquant plusieurs acteurs (chercheurs, noosphère, enseignants) avant d''atteindre la classe.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Les trois pôles du triangle didactique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000004',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'reponse_courte',
  'Le triangle didactique est un modèle fondamental de la didactique des mathématiques. Quels sont ses trois pôles ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["enseignant, élève, savoir","enseignant / élève / savoir","professeur, élève, savoir","professeur / élève / savoir","enseignant, apprenant, savoir","élève, enseignant, savoir","savoir, enseignant, élève","savoir, élève, enseignant"]}'::jsonb,
  'Le triangle didactique (ou triangle pédagogique selon Houssaye) représente les trois pôles constitutifs de toute situation d''enseignement-apprentissage : l''enseignant (ou professeur), l''élève (ou apprenant) et le savoir (objet de l''enseignement). Chaque côté du triangle symbolise une relation particulière : le côté enseignant-savoir représente la relation de transposition (l''enseignant transforme le savoir savant pour l''enseigner) ; le côté élève-savoir représente la relation d''apprentissage (l''élève construit sa relation au savoir) ; le côté enseignant-élève représente la relation pédagogique (la médiation humaine). La théorie des situations didactiques de Brousseau ajoute un quatrième élément au triangle : le milieu, environnement avec lequel l''élève interagit pour construire le savoir. Ce modèle permet de penser les déséquilibres pédagogiques : si la relation pédagogique est trop dominante, le savoir est négligé ; si la relation didactique est trop technique, la dimension humaine disparaît.',
  'Citer seulement deux pôles (souvent « enseignant » et « élève »), en oubliant le « savoir » qui est pourtant le pôle central du triangle didactique. Sans savoir, il n''y a plus de didactique mais seulement une relation pédagogique.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — L'institutionnalisation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'qcm',
  'Dans la théorie des situations didactiques de Brousseau, l''institutionnalisation correspond à :',
  NULL,
  '[{"id":"a","label":"La phase où l''élève cherche seul la solution sans intervention de l''enseignant"},{"id":"b","label":"La phase où l''enseignant reprend la main pour valider, nommer officiellement et formaliser le savoir construit par les élèves, lui donnant le statut de connaissance partagée"},{"id":"c","label":"Le moment où l''enseignant évalue les élèves à l''aide d''un contrôle écrit"},{"id":"d","label":"La présentation du savoir par l''enseignant en début de séquence, avant toute activité des élèves"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''institutionnalisation est la phase terminale d''une séquence didactique selon Brousseau : après les phases d''action, de formulation et de validation — au cours desquelles les élèves ont construit un savoir dans l''interaction avec le milieu —, l''enseignant reprend la parole pour donner au savoir produit son statut officiel. L''institutionnalisation remplit plusieurs fonctions : elle nomme le savoir (donne un terme, une notation, une définition conventionnelle), le décontextualise (le savoir quitte le problème particulier pour devenir une connaissance générale), et le relie au savoir savant (il entre dans la culture mathématique partagée). Sans institutionnalisation, les élèves peuvent avoir résolu le problème sans savoir qu''ils ont « appris » quelque chose de transférable. C''est un acte spécifiquement didactique : seul l''enseignant peut institutionnaliser, car lui seul connaît le savoir visé.',
  'Confondre institutionnalisation et évaluation. L''institutionnalisation est un acte de formalisation du savoir, pas une évaluation des acquis. Elle peut précéder ou être distincte de toute évaluation.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — L'effet Topaze
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'vrai_faux',
  'L''effet Topaze se produit quand l''enseignant guide l''élève par des indices de plus en plus transparents jusqu''à lui fournir implicitement la réponse, réduisant à néant l''activité cognitive de l''élève.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''effet Topaze, identifié par Brousseau, tire son nom de la pièce de Marcel Pagnol où le professeur Topaze dicte « des moutons... des moutonsss... » pour faire écrire le « s » du pluriel sans jamais le dire explicitement. En classe de mathématiques, cet effet se produit quand l''enseignant, face à la résistance des élèves, décompose progressivement la tâche, pose des sous-questions de plus en plus guidantes, ou reformule la question de façon à ce que la réponse soit évidente. L''élève « réussit » la tâche mais sans avoir mobilisé le savoir visé : c''est l''enseignant qui a effectué le travail cognitif à sa place. C''est une rupture du contrat didactique car la responsabilité cognitive qui devait être transférée à l''élève (dévolution) n''a pas eu lieu. L''effet Topaze est l''une des dérives les plus fréquentes observées dans les classes, souvent par souci bienveillant de ne pas mettre l''élève en difficulté.',
  'Confondre l''effet Topaze avec l''étayage (scaffolding). L''étayage est une aide légitime et temporaire qui s''ajuste au niveau de l''élève pour le faire progresser ; l''effet Topaze supprime la tâche cognitive au lieu de l''adapter.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Auteur de la Théorie des Situations Didactiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000007',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'reponse_courte',
  'Quel didacticien français a développé la Théorie des Situations Didactiques (TSD), cadre théorique fondateur de la didactique des mathématiques ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Guy Brousseau","Brousseau","Guy brousseau","brousseau","G. Brousseau","G Brousseau"]}'::jsonb,
  'Guy Brousseau (né en 1933) est un mathématicien et didacticien français, professeur émérite à l''université de Bordeaux, considéré comme le fondateur de la didactique des mathématiques comme discipline scientifique. Sa Théorie des Situations Didactiques (TSD), élaborée à partir des années 1970 et formalisée dans ses « Théorisation des phénomènes d''enseignement des mathématiques » (thèse de 1986), modélise les conditions dans lesquelles un savoir mathématique peut être construit par les élèves. Les concepts clés de la TSD — milieu, situation adidactique, dévolution, institutionnalisation, contrat didactique, variables didactiques — sont tous des apports de Brousseau. Il a reçu le prix Felix Klein en 2003 (ICMI), récompense internationale la plus prestigieuse en éducation mathématique. À distinguer d''Yves Chevallard (transposition didactique) et de Gérard Vergnaud (théorie des champs conceptuels), deux autres figures majeures de la didactique française des mathématiques.',
  'Attribuer la TSD à Chevallard (qui est l''auteur de la transposition didactique) ou à Vergnaud (théorie des champs conceptuels). Ces trois chercheurs sont distincts et leurs contributions complémentaires mais différentes.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — L'effet Jourdain
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'qcm',
  'L''effet Jourdain, décrit par Brousseau, se produit quand :',
  NULL,
  '[{"id":"a","label":"L''enseignant guide l''élève par des indices trop transparents jusqu''à lui souffler la réponse"},{"id":"b","label":"L''élève reproduit mécaniquement un algorithme sans comprendre le sens des opérations"},{"id":"c","label":"L''enseignant reconnaît et valorise un savoir mathématique dans une réponse ou un comportement banal de l''élève, pour éviter un conflit didactique"},{"id":"d","label":"L''élève refuse de s''engager dans un problème qu''il perçoit comme trop difficile"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''effet Jourdain (du nom du personnage de Molière dans « Le Bourgeois gentilhomme » qui faisait de la prose sans le savoir) désigne la situation où l''enseignant attribue une valeur savante à une production ou une remarque ordinaire de l''élève. Par exemple : un élève qui dit « ça fait plus si on rajoute » se voit répondre « exactement, tu viens de formuler le principe de la monotonie de l''addition ! » alors que l''élève n''a fait qu''exprimer une intuition banale. L''enseignant évite ainsi un conflit didactique (admettre que l''élève n''a pas compris le savoir visé) en surinterprétant la production de l''élève. C''est une forme de dissimulation du contrat didactique : l''enseignant fait comme si le savoir était construit alors qu''il ne l''est pas. Contrairement à l''effet Topaze (l''enseignant donne la réponse), l''effet Jourdain consiste à prétendre que l''élève l''a trouvée.',
  'Confondre l''effet Jourdain avec l''effet Topaze : dans l''effet Topaze, l''enseignant donne la réponse à la place de l''élève ; dans l''effet Jourdain, il fait semblant que l''élève a produit un savoir mathématique alors qu''il n''en est rien.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Le milieu dans la TSD de Brousseau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'vrai_faux',
  'Dans la Théorie des Situations Didactiques de Brousseau, le « milieu » désigne l''environnement matériel et symbolique avec lequel l''élève interagit pour résoudre le problème, et qui lui renvoie des rétroactions lui permettant de valider ou d''invalider ses stratégies.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le milieu (ou « milieu antagoniste ») est un concept central de la TSD de Brousseau. Il désigne tout ce avec quoi l''élève interagit pendant la phase adidactique : objets matériels, règles du jeu, données numériques, rétroactions du problème, productions des pairs. La qualité du milieu est déterminante pour l''apprentissage : un bon milieu renvoie des rétroactions pertinentes qui permettent à l''élève de distinguer les stratégies efficaces des stratégies inefficaces, sans que l''enseignant ait besoin d''intervenir. Par exemple, dans le « jeu de la cible » (jeu d''agrandissement de Brousseau), le milieu renvoie une rétroaction visuelle immédiate (la figure obtenue est-elle bien agrandie ?), ce qui permet à l''élève de tester ses hypothèses sur le coefficient d''agrandissement. La conception du milieu est l''un des actes pédagogiques les plus exigeants pour l''enseignant.',
  'Réduire le milieu au seul matériel physique (fiche, règle, calculatrice). Le milieu est un système plus complexe incluant les règles, les contraintes, les données numériques et les rétroactions — tout ce qui constitue l''environnement logique du problème.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — La situation adidactique selon Brousseau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e2530000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_contrat_transposition',
  'Contrat didactique et transposition didactique',
  'Standard',
  'reponse_courte',
  'Qu''est-ce qu''une « situation adidactique » selon Brousseau ? Donnez une définition en une phrase.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["une situation dans laquelle l''élève agit, donne un sens à son action et valide ses décisions sans l''aide de l''enseignant","une situation où l''élève résout le problème sans l''aide de l''enseignant","situation où l''élève interagit avec le milieu sans intervention de l''enseignant","situation dans laquelle l''élève peut agir et valider ses choix sans que l''enseignant intervienne","une situation dans laquelle l''élève cherche et valide sans l''aide explicite de l''enseignant","situation adidactique : l''élève agit sur le milieu et en reçoit des rétroactions sans intervention de l''enseignant"]}'::jsonb,
  'Une situation adidactique est une situation dans laquelle l''élève peut agir, donner un sens à son action et valider ses décisions en interagissant avec le milieu, sans que l''enseignant intervienne sur le contenu mathématique. Le préfixe « a- » ne signifie pas « sans intention didactique » : la situation a été soigneusement conçue par l''enseignant avec une intention précise, mais elle fonctionne de manière autonome une fois lancée — c''est le milieu, et non l''enseignant, qui « enseigne ». Le contraste avec la situation didactique au sens strict est fondamental : dans une situation didactique, l''intention d''enseigner est explicite (l''enseignant parle, explique, montre) ; dans une situation adidactique, cette intention est dissimulée dans la structure du problème. Les situations adidactiques sont des moments privilégiés de construction du savoir par l''élève, mais elles doivent être suivies d''une institutionnalisation pour que le savoir produit acquière un statut officiel et transférable.',
  'Interpréter « adidactique » comme « sans enseignant » ou « sans didactique ». La situation adidactique est le résultat d''un travail didactique intense de l''enseignant en amont ; c''est précisément parce qu''elle est bien conçue qu''elle peut fonctionner sans intervention directe.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
