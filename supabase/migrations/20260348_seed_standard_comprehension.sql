-- ============================================================
-- Migration : 3 séries standard — Compréhension de texte
-- 3 séries × 10 questions = 30 exercices
-- Domaine : comprehension_texte
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Implicite et inférences
-- Topic : comprehension_implicite_inferences
-- UUID prefix : d3010000
-- 3 Facile + 4 Intermediaire + 3 Avance
-- Mix : 8 qcm + 2 analyse_texte
-- ============================================================

-- Q1 — Facile — QCM — Identifier une information implicite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Facile',
  'qcm',
  'Quelle information peut-on déduire de cet extrait ?',
  'Marie referma son parapluie en entrant dans le magasin et secoua ses chaussures trempées sur le paillasson.',
  '[{"id":"a","label":"Marie est pressée"},{"id":"b","label":"Il pleut dehors"},{"id":"c","label":"Le magasin est fermé"},{"id":"d","label":"Marie a froid"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''information « il pleut dehors » n''est jamais énoncée explicitement dans le texte. On la déduit par inférence logique à partir de deux indices convergents : le parapluie que Marie referme et ses chaussures trempées. Il s''agit d''une inférence causale : le lecteur reconstitue la cause (la pluie) à partir de ses effets (parapluie, chaussures mouillées). Au CRPE, il est essentiel de distinguer ce qui est dit (explicite) de ce qui est sous-entendu (implicite).',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Distinguer explicite et implicite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Facile',
  'qcm',
  'Parmi ces informations, laquelle est explicitement présente dans le texte ?',
  'Le vieil homme s''assit sur le banc du parc, posa sa canne à côté de lui et sortit un livre de sa poche.',
  '[{"id":"a","label":"L''homme est fatigué"},{"id":"b","label":"L''homme aime la lecture"},{"id":"c","label":"L''homme sort un livre de sa poche"},{"id":"d","label":"L''homme est retraité"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Seule la proposition « L''homme sort un livre de sa poche » est directement énoncée dans le texte : c''est une information explicite. Les autres propositions (fatigué, aime la lecture, retraité) sont des inférences que le lecteur peut produire, mais qui ne figurent pas dans le texte. Au CRPE, savoir faire cette distinction est fondamental pour l''enseignement de la compréhension en lecture.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Inférence logique simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Facile',
  'qcm',
  'Que peut-on inférer du comportement du personnage ?',
  'Léa regarda sa montre pour la troisième fois en cinq minutes, puis se leva et fit les cent pas devant la gare.',
  '[{"id":"a","label":"Léa est en avance"},{"id":"b","label":"Léa attend quelqu''un avec impatience"},{"id":"c","label":"Léa veut prendre le train"},{"id":"d","label":"Léa est perdue"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les indices textuels — regarder sa montre de façon répétée et faire les cent pas — sont des marqueurs d''impatience ou d''attente anxieuse. Le lecteur produit une inférence pragmatique en reliant ces comportements à un état émotionnel. Le fait qu''elle soit « devant la gare » renforce l''hypothèse d''une attente. C''est un exemple d''inférence sur les sentiments des personnages, compétence clé travaillée au cycle 3.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Présupposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Intermediaire',
  'qcm',
  'Quelle présupposition est contenue dans la phrase suivante ?',
  'Paul a cessé de fumer depuis le mois de janvier.',
  '[{"id":"a","label":"Paul n''a jamais fumé"},{"id":"b","label":"Paul fumait avant janvier"},{"id":"c","label":"Paul est en bonne santé"},{"id":"d","label":"Paul a été malade"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « cesser » est un marqueur de présupposition : « cesser de faire X » présuppose que le sujet faisait X auparavant. Ainsi, « Paul a cessé de fumer » présuppose nécessairement que Paul fumait avant. La présupposition se distingue du sous-entendu car elle reste vraie même si l''on nie la phrase : « Paul n''a pas cessé de fumer » présuppose toujours qu''il fumait. Cette notion est au programme de linguistique du CRPE.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — QCM — Ton et point de vue de l'auteur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Intermediaire',
  'qcm',
  'Quel est le ton dominant de cet extrait ?',
  'Encore un rapport de trois cents pages pour expliquer ce que tout le monde savait déjà. Les experts, décidément, ne manquent jamais d''encre pour noyer le poisson.',
  '[{"id":"a","label":"Admiratif"},{"id":"b","label":"Neutre et informatif"},{"id":"c","label":"Ironique et critique"},{"id":"d","label":"Nostalgique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Plusieurs indices signalent le ton ironique et critique : l''adverbe « encore » (lassitude), l''expression « ce que tout le monde savait déjà » (critique de l''inutilité), « décidément » (constat récurrent négatif) et la métaphore « noyer le poisson » (obscurcir volontairement). L''ironie repose ici sur l''antiphrase implicite : l''auteur feint de reconnaître le travail des experts pour mieux le dénoncer. Identifier le ton est une compétence essentielle en compréhension fine.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — analyse_texte — Identifier la thèse d'un passage argumentatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Intermediaire',
  'analyse_texte',
  'Quelle est la thèse implicitement défendue par l''auteur dans cet extrait ?',
  'Les écrans envahissent les chambres d''enfants. À six ans, certains passent plus de temps devant une tablette qu''à jouer dehors. Les pédiatres s''alarment, les enseignants constatent des difficultés d''attention croissantes.',
  '[{"id":"a","label":"Les écrans sont un outil pédagogique indispensable"},{"id":"b","label":"L''usage excessif des écrans chez les enfants est préoccupant"},{"id":"c","label":"Les parents ne surveillent pas assez leurs enfants"},{"id":"d","label":"Les pédiatres exagèrent les risques liés aux écrans"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La thèse n''est pas formulée directement, mais elle est construite par accumulation d''indices négatifs : « envahissent » (connotation négative), « s''alarment » (inquiétude), « difficultés d''attention croissantes ». L''auteur ne dit jamais explicitement « les écrans sont dangereux », mais tout le faisceau d''indices converge vers cette thèse implicite. Repérer une thèse non explicitement formulée relève de la compréhension fine, compétence attendue au CRPE.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Implication logique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Intermediaire',
  'qcm',
  'Que peut-on déduire logiquement de cet extrait ?',
  'Tous les élèves qui ont révisé régulièrement ont réussi l''examen. Sophie n''a pas réussi l''examen.',
  '[{"id":"a","label":"Sophie n''a pas révisé régulièrement"},{"id":"b","label":"Sophie n''a pas du tout révisé"},{"id":"c","label":"L''examen était trop difficile"},{"id":"d","label":"Sophie était malade le jour de l''examen"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Il s''agit d''un raisonnement par contraposition : si « réviser régulièrement » implique « réussir », alors « ne pas réussir » implique « ne pas avoir révisé régulièrement ». Attention : on ne peut pas conclure qu''elle n''a « pas du tout » révisé — elle a peut-être révisé, mais pas régulièrement. Ce type de raisonnement logique (modus tollens) est attendu dans l''épreuve de français du CRPE pour l''analyse de textes argumentatifs.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avance — QCM — Sous-entendu vs présupposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Avance',
  'qcm',
  'Dans cet échange, quel est le sous-entendu de la réponse de Pierre ?',
  '— Tu as aimé le gâteau que j''ai préparé ? — C''est gentil d''avoir essayé.',
  '[{"id":"a","label":"Pierre a trouvé le gâteau excellent"},{"id":"b","label":"Pierre trouve que le gâteau n''était pas réussi"},{"id":"c","label":"Pierre n''a pas goûté le gâteau"},{"id":"d","label":"Pierre veut la recette"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse de Pierre est un sous-entendu : il ne dit pas directement que le gâteau était mauvais, mais « c''est gentil d''avoir essayé » valorise l''effort plutôt que le résultat, ce qui implique que le résultat n''est pas satisfaisant. Le sous-entendu, contrairement au présupposé, dépend du contexte d''énonciation et peut être annulé (Pierre pourrait ajouter « et c''était délicieux »). Cette distinction sous-entendu/présupposé est un point de linguistique pragmatique important au CRPE.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avance — analyse_texte — Point de vue implicite de l'auteur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Avance',
  'analyse_texte',
  'Quel point de vue l''auteur défend-il implicitement dans ce passage ?',
  'On nous répète que la lecture décline, mais les adolescents n''ont jamais autant lu : messages, articles en ligne, sous-titres de séries. La vraie question n''est pas « lisent-ils ? » mais « que lisent-ils ? ».',
  '[{"id":"a","label":"Les adolescents ne lisent plus du tout"},{"id":"b","label":"La définition traditionnelle de la lecture doit être repensée"},{"id":"c","label":"Les écrans empêchent les adolescents de lire"},{"id":"d","label":"Seule la lecture de livres a de la valeur"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''auteur procède par réfutation implicite : il oppose le discours commun (« on nous répète ») à des faits concrets (messages, articles, sous-titres) pour montrer que la lecture a changé de forme, non de volume. La reformulation finale de la question (« que lisent-ils ? ») déplace le débat de la quantité vers la qualité, suggérant implicitement que la définition même de la lecture doit évoluer. Repérer cette stratégie argumentative relève de la compréhension fine attendue au CRPE.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avance — QCM — Inférence inter-phrases complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comprehension_implicite_inferences',
  'Implicite et inférences',
  'Avance',
  'qcm',
  'Quelle inférence le lecteur doit-il produire pour comprendre pleinement ce passage ?',
  'Le maire a inauguré la nouvelle médiathèque devant une salle comble. Les travaux, initialement prévus pour durer un an, se sont achevés après trois ans et deux changements d''architecte.',
  '[{"id":"a","label":"Le projet s''est déroulé sans difficulté"},{"id":"b","label":"Le maire est très populaire"},{"id":"c","label":"Le projet a connu des difficultés importantes"},{"id":"d","label":"La médiathèque est trop petite"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le lecteur doit mettre en relation deux informations pour produire une inférence causale : le décalage entre la durée prévue (un an) et la durée réelle (trois ans), ainsi que les deux changements d''architecte, sont des indices convergents de difficultés majeures dans la conduite du projet. Cette inférence inter-phrases exige de relier des informations non adjacentes et d''en tirer une conclusion. C''est une compétence de lecture experte, essentielle pour l''analyse de texte au CRPE.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 2 : Structure argumentative
-- Topic : comprehension_structure_argumentative
-- UUID prefix : d3020000
-- 3 Facile + 4 Intermediaire + 3 Avance
-- Mix : 8 qcm + 2 analyse_texte
-- ============================================================

-- Q1 — Facile — QCM — Identifier la thèse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Facile',
  'qcm',
  'Quelle est la thèse défendue dans ce passage ?',
  'La pratique sportive régulière est indispensable à l''école. En effet, elle améliore la concentration des élèves et favorise le vivre-ensemble.',
  '[{"id":"a","label":"Le sport améliore la concentration"},{"id":"b","label":"La pratique sportive régulière est indispensable à l''école"},{"id":"c","label":"Le sport favorise le vivre-ensemble"},{"id":"d","label":"Les élèves ne font pas assez de sport"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La thèse est l''idée principale que l''auteur cherche à défendre. Ici, c''est la première phrase : « La pratique sportive régulière est indispensable à l''école. » Les deux propositions suivantes (concentration, vivre-ensemble), introduites par « en effet », sont des arguments qui viennent soutenir cette thèse. Au CRPE, il faut distinguer la thèse (position défendue) des arguments (raisons avancées pour la justifier).',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Reconnaître un connecteur argumentatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Facile',
  'qcm',
  'Quel connecteur introduit une relation de cause dans la phrase suivante ?',
  'Les résultats ont été décevants, car la préparation avait été insuffisante.',
  '[{"id":"a","label":"Les"},{"id":"b","label":"ont été"},{"id":"c","label":"car"},{"id":"d","label":"avait été"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le connecteur « car » introduit une relation de cause : il relie la conséquence (résultats décevants) à sa cause (préparation insuffisante). « Car » est une conjonction de coordination causale, à ne pas confondre avec « parce que » (conjonction de subordination) qui introduit aussi la cause mais avec une construction syntaxique différente. Au CRPE, la maîtrise des connecteurs logiques est essentielle pour l''analyse de texte.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Distinguer argument et exemple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Facile',
  'qcm',
  'Dans ce passage, quelle phrase constitue un exemple ?',
  'La littérature jeunesse permet de développer l''empathie chez l''enfant. Par exemple, dans « Le Petit Prince », le lecteur apprend à se soucier de l''autre à travers la relation entre le prince et la rose.',
  '[{"id":"a","label":"La première phrase uniquement"},{"id":"b","label":"La deuxième phrase uniquement"},{"id":"c","label":"Les deux phrases sont des arguments"},{"id":"d","label":"Aucune des deux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La première phrase est un argument (idée générale : la littérature jeunesse développe l''empathie). La deuxième phrase, introduite par « par exemple », est un exemple concret qui illustre cet argument en citant une oeuvre précise. L''exemple n''a pas la même fonction que l''argument : il illustre, concrétise, mais ne prouve pas à lui seul. Au CRPE, cette distinction argument/exemple est fondamentale en analyse de texte.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Types d'arguments
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Intermediaire',
  'qcm',
  'De quel type d''argument s''agit-il dans ce passage ?',
  'Comme le souligne le linguiste Alain Bentolila, « un enfant qui ne maîtrise pas le langage oral à six ans aura des difficultés considérables en lecture ».',
  '[{"id":"a","label":"Argument par analogie"},{"id":"b","label":"Argument d''autorité"},{"id":"c","label":"Argument par l''expérience"},{"id":"d","label":"Argument par l''absurde"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''auteur cite un spécialiste reconnu (Alain Bentolila, linguiste) pour appuyer son propos : c''est un argument d''autorité. Ce type d''argument tire sa force de la compétence reconnue de la personne citée dans le domaine concerné. Au CRPE, il faut savoir que l''argument d''autorité n''est pas une preuve absolue — il peut être contesté si l''expert cité sort de son domaine de compétence.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — QCM — Concession et contre-argument
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Intermediaire',
  'qcm',
  'Quelle stratégie argumentative est employée dans cet extrait ?',
  'Certes, le numérique offre des ressources pédagogiques considérables. Néanmoins, rien ne remplace la relation directe entre un enseignant et ses élèves.',
  '[{"id":"a","label":"L''accumulation d''arguments"},{"id":"b","label":"L''argument par analogie"},{"id":"c","label":"La concession suivie d''une réfutation"},{"id":"d","label":"L''argument par l''absurde"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''auteur utilise la structure concessive : il commence par admettre la validité d''un argument adverse (« certes, le numérique offre... ») avant de le dépasser avec son propre argument, introduit par « néanmoins ». Cette stratégie (concession + réfutation) est très efficace car elle montre que l''auteur a pris en compte l''objection. Les marqueurs typiques sont : certes... mais / il est vrai que... cependant / sans doute... néanmoins.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — analyse_texte — Structure d'un texte argumentatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Intermediaire',
  'analyse_texte',
  'Comment est organisée l''argumentation dans ce passage ?',
  'L''école inclusive est un idéal nécessaire. D''une part, elle permet à chaque enfant de trouver sa place. D''autre part, elle enrichit l''ensemble du groupe classe par la diversité des profils. Toutefois, sa mise en oeuvre exige des moyens que l''institution peine encore à fournir.',
  '[{"id":"a","label":"Thèse — exemple — conclusion"},{"id":"b","label":"Thèse — deux arguments — nuance restrictive"},{"id":"c","label":"Constat — cause — conséquence"},{"id":"d","label":"Réfutation — contre-argument — thèse"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le texte suit un plan argumentatif clair : 1) Thèse (« L''école inclusive est un idéal nécessaire »), 2) Premier argument introduit par « d''une part » (inclusion individuelle), 3) Deuxième argument introduit par « d''autre part » (enrichissement collectif), 4) Nuance restrictive introduite par « toutefois » (insuffisance de moyens). Cette structure thèse-arguments-nuance est classique dans les textes du CRPE. Les connecteurs « d''une part / d''autre part » organisent une addition, tandis que « toutefois » introduit une restriction.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Argument par analogie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Intermediaire',
  'qcm',
  'Quel type d''argument est utilisé dans cet extrait ?',
  'Apprendre à lire sans comprendre le sens, c''est comme apprendre à nager sans eau : on peut mimer les gestes, mais on ne sait pas nager.',
  '[{"id":"a","label":"Argument d''autorité"},{"id":"b","label":"Argument par analogie"},{"id":"c","label":"Argument par l''expérience"},{"id":"d","label":"Argument par les chiffres"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''auteur compare deux situations (apprendre à lire sans comprendre / apprendre à nager sans eau) pour rendre son argument plus frappant et accessible. C''est un argument par analogie : il établit un parallèle entre un domaine connu (la natation) et le domaine discuté (la lecture) pour éclairer sa thèse. La force de l''analogie repose sur la pertinence du rapprochement. Au CRPE, il faut savoir identifier et évaluer ce type d''argument.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avance — QCM — Persuasion vs conviction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Avance',
  'qcm',
  'Cet extrait relève-t-il plutôt de la persuasion ou de la conviction ?',
  'Imaginez un enfant de six ans face à un texte qu''il ne comprend pas. Jour après jour, il déchiffre sans saisir le sens. Quelle frustration ! Quelle perte de confiance ! N''est-il pas urgent d''agir ?',
  '[{"id":"a","label":"Conviction, car l''auteur utilise des faits vérifiables"},{"id":"b","label":"Persuasion, car l''auteur fait appel aux émotions du lecteur"},{"id":"c","label":"Conviction, car l''auteur cite des sources scientifiques"},{"id":"d","label":"Persuasion, car l''auteur utilise un raisonnement logique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ce texte relève de la persuasion : l''auteur fait appel aux émotions du lecteur plutôt qu''à sa raison. Les procédés employés sont : l''injonction « imaginez » (implication du lecteur), les phrases exclamatives (« quelle frustration ! »), la question rhétorique finale (« n''est-il pas urgent d''agir ? »). La persuasion vise les sentiments ; la conviction vise la raison par des arguments logiques et des preuves. Au CRPE, cette distinction est fondamentale pour l''analyse des stratégies argumentatives.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avance — analyse_texte — Repérer les failles d'une argumentation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Avance',
  'analyse_texte',
  'Quelle faiblesse argumentative peut-on identifier dans ce passage ?',
  'Mon voisin a appris à lire tout seul à quatre ans, sans aucune méthode. Cela prouve bien que les méthodes de lecture sont inutiles.',
  '[{"id":"a","label":"L''auteur utilise un vocabulaire trop technique"},{"id":"b","label":"L''auteur généralise abusivement à partir d''un cas particulier"},{"id":"c","label":"L''auteur ne cite pas de sources"},{"id":"d","label":"L''auteur n''utilise pas de connecteurs logiques"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''auteur commet une généralisation abusive : il tire une conclusion universelle (« les méthodes de lecture sont inutiles ») à partir d''un seul cas individuel (son voisin). C''est un sophisme classique appelé « généralisation hâtive ». Un cas particulier, aussi frappant soit-il, ne peut pas servir de preuve pour une règle générale. Au CRPE, savoir repérer les failles logiques dans un raisonnement est une compétence attendue dans l''analyse critique de texte.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avance — QCM — Connecteurs d'opposition fine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comprehension_structure_argumentative',
  'Structure argumentative',
  'Avance',
  'qcm',
  'Quelle nuance distingue « cependant » de « en revanche » dans un texte argumentatif ?',
  NULL,
  '[{"id":"a","label":"Ils sont parfaitement synonymes et interchangeables"},{"id":"b","label":"« Cependant » introduit une restriction, « en revanche » une opposition compensatoire"},{"id":"c","label":"« Cependant » est familier, « en revanche » est soutenu"},{"id":"d","label":"« Cependant » relie deux causes, « en revanche » relie deux conséquences"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Cependant » introduit une restriction ou une concession : il atténue ce qui précède sans l''annuler (« il est compétent, cependant il manque d''expérience »). « En revanche » introduit une compensation ou un contraste symétrique : il met en balance deux éléments (« il est faible en calcul, en revanche il excelle en géométrie »). Cette distinction fine entre connecteurs d''opposition est un point de langue fréquemment évalué au CRPE.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 3 : Registres et énonciation
-- Topic : comprehension_registres_enonciation
-- UUID prefix : d3030000
-- 3 Facile + 4 Intermediaire + 3 Avance
-- Mix : 7 qcm + 3 reponse_courte
-- ============================================================

-- Q1 — Facile — QCM — Identifier un registre de langue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Facile',
  'qcm',
  'À quel registre de langue appartient la phrase suivante ?',
  'Il a pété un câble quand il a vu la note.',
  '[{"id":"a","label":"Registre soutenu"},{"id":"b","label":"Registre courant"},{"id":"c","label":"Registre familier"},{"id":"d","label":"Registre littéraire"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''expression « péter un câble » (perdre son calme de façon spectaculaire) appartient au registre familier. On la reconnaît à son caractère imagé, sa dimension argotique et son usage réservé à la communication orale informelle. En registre courant, on dirait « il s''est mis en colère » ; en registre soutenu, « il s''est emporté vivement ». Au CRPE, il est essentiel de maîtriser les trois registres et de savoir les caractériser.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Reconnaître un type de discours
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Facile',
  'qcm',
  'Quel type de discours domine dans cet extrait ?',
  'La photosynthèse est le processus par lequel les plantes convertissent la lumière du soleil en énergie. Ce mécanisme repose sur la chlorophylle, un pigment vert présent dans les feuilles.',
  '[{"id":"a","label":"Narratif"},{"id":"b","label":"Descriptif"},{"id":"c","label":"Explicatif"},{"id":"d","label":"Argumentatif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Ce texte est explicatif : il vise à faire comprendre un phénomène (la photosynthèse) en présentant son fonctionnement. Les indices sont : la définition (« est le processus par lequel »), le présent de vérité générale, le vocabulaire scientifique et l''absence de prise de position personnelle. Le discours explicatif se distingue du descriptif (qui dépeint) et de l''argumentatif (qui défend une thèse).',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Discours direct et indirect
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Facile',
  'qcm',
  'Dans quelle phrase le discours indirect est-il correctement employé ?',
  NULL,
  '[{"id":"a","label":"Il a dit : « Je viendrai demain. »"},{"id":"b","label":"Il a dit qu''il viendrait le lendemain."},{"id":"c","label":"Il a dit je viendrai demain."},{"id":"d","label":"Il a dit qu''il viendra demain."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le passage du discours direct au discours indirect exige des transformations : le pronom « je » devient « il », le futur « viendrai » devient le conditionnel « viendrait » (concordance des temps avec un verbe introducteur au passé), et le déictique temporel « demain » devient « le lendemain ». Seule la proposition (b) respecte toutes ces règles. La proposition (d) contient une erreur de concordance des temps (« viendra » au lieu de « viendrait »).',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Modalisateurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Intermediaire',
  'qcm',
  'Quel modalisateur exprime le doute dans cette phrase ?',
  'Cette réforme pourrait éventuellement améliorer les résultats des élèves, à condition d''être correctement mise en oeuvre.',
  '[{"id":"a","label":"réforme"},{"id":"b","label":"améliorer"},{"id":"c","label":"éventuellement"},{"id":"d","label":"correctement"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Un modalisateur est un mot ou une expression qui traduit le degré de certitude, le jugement ou l''attitude de l''énonciateur. Ici, « éventuellement » est un adverbe modalisateur de doute : il atténue la certitude de l''affirmation. On note aussi le conditionnel « pourrait » et la locution restrictive « à condition de » qui renforcent cette modalisation du doute. Au CRPE, repérer les modalisateurs est essentiel pour analyser la position de l''énonciateur.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — reponse_courte — Identifier le type de discours
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Intermediaire',
  'reponse_courte',
  'Quel type de discours est utilisé dans cet extrait ? Répondez en un mot.',
  'Fermez vos cahiers. Rangez vos affaires dans votre cartable. Mettez-vous en rang par deux sans faire de bruit.',
  NULL,
  '{"mode":"text","acceptableAnswers":["injonctif","prescriptif","le discours injonctif","discours injonctif"]}'::jsonb,
  'Ce texte est de type injonctif : il donne des ordres ou des consignes. Les indices sont l''emploi de l''impératif (« fermez », « rangez », « mettez-vous ») et l''absence de justification des demandes. Le discours injonctif se caractérise par sa visée : faire agir le destinataire. On le trouve dans les recettes, les règlements, les modes d''emploi et les consignes scolaires. Au CRPE, il faut connaître les cinq types de discours : narratif, descriptif, explicatif, argumentatif et injonctif.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — QCM — Focalisation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Intermediaire',
  'qcm',
  'Quel type de focalisation est employé dans cet extrait ?',
  'Emma regardait par la fenêtre. Elle pensait à Charles, à sa vie monotone, à ce bonheur qu''elle ne connaîtrait jamais. Un sentiment de dégoût l''envahit.',
  '[{"id":"a","label":"Focalisation externe"},{"id":"b","label":"Focalisation interne"},{"id":"c","label":"Focalisation zéro (omnisciente)"},{"id":"d","label":"Absence de focalisation"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La focalisation est interne : le lecteur perçoit la scène à travers le point de vue d''Emma. On accède à ses pensées (« elle pensait à ») et à ses sentiments (« un sentiment de dégoût »). En focalisation externe, on ne verrait que ses gestes sans connaître ses pensées. En focalisation zéro (omnisciente), le narrateur pourrait aussi révéler les pensées des autres personnages. La focalisation interne se reconnaît par les verbes de perception et de pensée attribués à un seul personnage.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Déictiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Intermediaire',
  'qcm',
  'Combien de déictiques (marques d''énonciation renvoyant à la situation de communication) cette phrase contient-elle ?',
  'Je vous écris aujourd''hui depuis cette salle pour vous exposer mon point de vue.',
  '[{"id":"a","label":"2"},{"id":"b","label":"3"},{"id":"c","label":"5"},{"id":"d","label":"6"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les déictiques sont des mots dont le sens dépend de la situation d''énonciation. Ici, on en compte 5 : « je » (renvoie à l''énonciateur), « vous » (renvoie au destinataire, compté une fois malgré la répétition), « aujourd''hui » (repère temporel lié au moment de l''énonciation), « cette » (repère spatial — déictique démonstratif), et « mon » (possessif renvoyant à l''énonciateur). Les déictiques sont des indices d''ancrage de l''énoncé dans sa situation de production.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avance — reponse_courte — Transposition discours direct → indirect
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Avance',
  'reponse_courte',
  'Comment appelle-t-on le discours rapporté dans lequel les paroles sont intégrées au récit sans verbe introducteur ni subordination ? Répondez en deux ou trois mots.',
  'Elle ne viendrait pas. Tant pis pour eux. Ils n''avaient qu''à se débrouiller seuls.',
  NULL,
  '{"mode":"text","acceptableAnswers":["discours indirect libre","indirect libre","le discours indirect libre","style indirect libre"]}'::jsonb,
  'Il s''agit du discours indirect libre : les paroles ou pensées du personnage sont rapportées sans verbe introducteur (contrairement au discours indirect : « elle dit que... ») et sans marques typographiques (contrairement au discours direct : guillemets). On le reconnaît ici à la transposition des temps (conditionnel, imparfait) et à la dimension subjective (« tant pis pour eux ») intégrée au récit. Le discours indirect libre est caractéristique du style de Flaubert et est fréquemment étudié au CRPE.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avance — QCM — Discours narratif vs descriptif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Avance',
  'qcm',
  'Quel indice linguistique permet le mieux de distinguer un passage narratif d''un passage descriptif ?',
  NULL,
  '[{"id":"a","label":"La présence de noms propres"},{"id":"b","label":"Le système des temps verbaux : passé simple (narration) vs imparfait (description)"},{"id":"c","label":"La longueur des phrases"},{"id":"d","label":"La ponctuation utilisée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans un récit au passé, le système des temps est le critère le plus fiable pour distinguer narration et description. Le passé simple (ou passé composé à l''oral) marque les actions de premier plan, la progression narrative. L''imparfait marque l''arrière-plan : descriptions, états, habitudes. Ainsi, « il entra dans la pièce » (passé simple = narration) vs « la pièce était sombre et froide » (imparfait = description). Cette opposition premier plan/arrière-plan est un concept clé de la linguistique textuelle au CRPE.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avance — reponse_courte — Registre soutenu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, access_tier, is_published
) VALUES (
  'd3030000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comprehension_registres_enonciation',
  'Registres et énonciation',
  'Avance',
  'reponse_courte',
  'À quel registre de langue appartient cet extrait ? Répondez en un mot.',
  'Il ne m''a point échappé que la situation requérait une attention des plus scrupuleuses, aussi me suis-je résolu à agir avec la célérité que commandaient les circonstances.',
  NULL,
  '{"mode":"text","acceptableAnswers":["soutenu","registre soutenu","le registre soutenu","littéraire","registre littéraire"]}'::jsonb,
  'Cet extrait appartient au registre soutenu (ou littéraire). Les indices sont multiples : la négation complète « ne... point » (archaïque), le subjonctif « requérait », la construction « aussi + inversion du sujet » (« aussi me suis-je résolu »), le vocabulaire recherché (« célérité » pour « rapidité », « scrupuleuses »), et la longueur de la phrase complexe. Le registre soutenu se caractérise par un lexique rare, une syntaxe élaborée et le respect strict des règles grammaticales.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
