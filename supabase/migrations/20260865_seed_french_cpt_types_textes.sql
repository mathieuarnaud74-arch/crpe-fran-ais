-- Migration: 10 exercices — Types de textes et leurs caractéristiques
-- Série : cpt_types_textes_caracteristiques (Français, comprehension_texte)
-- Narratif, descriptif, explicatif, argumentatif, injonctif — identifier et distinguer
-- UUID prefix: d7080000

-- Q1 — QCM — Identifier le type de texte : extrait narratif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'qcm',
  'Lisez cet extrait : « Thomas poussa la porte du grenier, traversa la pièce obscure en évitant les caisses entassées, puis grimpa sur l''escabeau pour atteindre la lucarne. Il l''ouvrit d''un coup sec et se hissa vers la lumière. » Quel est le type dominant de ce texte ?',
  NULL,
  '[{"id":"a","label":"Texte descriptif"},{"id":"b","label":"Texte narratif"},{"id":"c","label":"Texte explicatif"},{"id":"d","label":"Texte injonctif"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Cet extrait est de dominante narrative. On y repère les caractéristiques propres à ce type textuel : des actions présentées en succession chronologique (poussa, traversa, grimpa, ouvrit, se hissa), un personnage nommé (Thomas) qui accomplit ces actions, et des verbes dynamiques conjugués au passé simple exprimant la progression du récit dans le temps. La narrativité implique toujours un ancrage temporel et un enchaînement événementiel. Il ne faut pas confondre ce type avec le texte descriptif, qui peignit un état statique sans avancement de l''action, ni avec le texte injonctif, qui s''adresse au lecteur pour lui donner des consignes.',
  'Confondre texte narratif et texte descriptif parce que la scène contient des détails spatiaux (grenier, caisses, lucarne). La présence d''un cadre décrit ne suffit pas à qualifier un texte de descriptif : c''est la dominante — ici l''enchaînement d''actions — qui détermine le type.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Un texte peut avoir une dominante argumentative tout en contenant des passages descriptifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Un texte peut avoir une dominante argumentative tout en contenant des passages descriptifs.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. La notion de « dominante textuelle », telle qu''elle est définie dans la didactique du français et dans les programmes Éduscol, reconnaît l''hybridité constitutive des textes réels : un texte argumentatif peut inclure des descriptions pour illustrer un argument (tableau d''une situation pour émouvoir ou convaincre), des narrations pour rapporter un exemple concret, ou des passages explicatifs pour étayer un raisonnement. La dominante est ce qui organise la visée globale du texte et oriente la réception du lecteur. Réduire un texte à un seul type serait réducteur : c''est la finalité communicative dominante qui prime pour la classification.',
  'Croire que les types de textes sont étanches et qu''un texte argumentatif ne peut contenir que de l''argumentation pure. La confusion vient d''une lecture trop rigide de la taxinomie ; le CRPE attend précisément que le candidat comprenne la notion de dominante et d''hybridité textuelle.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Caractéristiques du texte injonctif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'qcm',
  'Lisez cet extrait : « Préchauffez le four à 180 °C. Beurrez et farinez le moule. Versez la pâte, puis enfournez pendant 35 minutes. Laissez refroidir avant de démouler. » Quelle caractéristique linguistique permet d''identifier ce texte comme injonctif ?',
  NULL,
  '[{"id":"a","label":"La présence d''un narrateur à la première personne"},{"id":"b","label":"L''emploi de l''impératif et des infinitifs de consigne"},{"id":"c","label":"L''utilisation de connecteurs logiques causaux"},{"id":"d","label":"L''expression d''une thèse défendue par l''auteur"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le texte injonctif est identifiable par un faisceau de marques linguistiques caractéristiques : emploi de l''impératif présent (préchauffez, beurrez, versez, laissez) ou de l''infinitif à valeur de consigne (utilisé notamment dans les modes d''emploi et les règlements), absence de narrateur identifié, adresse implicite au lecteur-destinataire, et organisation en étapes séquentielles souvent scandées par des adverbes ou compléments de temps (puis, avant de). Ce type de texte vise à faire agir : c''est sa finalité pragmatique première. Les genres associés sont nombreux : recettes, règles de jeu, modes d''emploi, consignes scolaires, règlements, notices.',
  'Choisir l''option « connecteurs logiques causaux » parce que l''extrait contient « puis » et « avant de ». Ces connecteurs sont ici chronologiques ou séquentiels, non causaux (ils n''expriment pas une relation de cause à effet mais un ordre d''opérations). Il faut distinguer les connecteurs temporels/séquentiels des connecteurs logiques argutatifs.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Marques linguistiques du texte explicatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'reponse_courte',
  'Citez deux marques linguistiques typiques du texte explicatif.',
  NULL,
  NULL,
  '{"mode":"open_text","acceptableAnswers":["connecteurs logiques","en effet","parce que","c''est pourquoi","car","ainsi","donc","reformulation","définition","c''est-à-dire","ce qui signifie","on appelle","désigné par"]}'::jsonb,
  'Le texte explicatif vise à faire comprendre un phénomène, un concept ou un fonctionnement. Il se reconnaît notamment à ses connecteurs logiques à valeur causale et consécutive (parce que, car, en effet, c''est pourquoi, ainsi, donc), à ses reformulations et définitions (c''est-à-dire, ce qui signifie, on appelle X le fait de…), à l''emploi du présent de vérité générale, et à une organisation en problème/explication/reformulation. Ce type de texte adopte une posture objective : le locuteur efface sa subjectivité pour se concentrer sur l''explication du monde. Il se distingue de l''argumentatif en ce qu''il n''énonce pas de thèse à défendre, mais apporte des informations vérifiables.',
  'Citer des marques du texte argumentatif (thèse, argument, concession) plutôt que du texte explicatif. La frontière est poreuse, mais le texte explicatif ne prend pas parti : il n''a pas pour objectif de convaincre, mais d''informer et de faire comprendre.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Quel type de texte vise à modifier l'opinion du lecteur ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'qcm',
  'Quel type de texte a pour visée principale de modifier l''opinion ou le comportement du lecteur ?',
  NULL,
  '[{"id":"a","label":"Le texte narratif"},{"id":"b","label":"Le texte descriptif"},{"id":"c","label":"Le texte argumentatif"},{"id":"d","label":"Le texte explicatif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le texte argumentatif a pour visée pragmatique première de convaincre ou de persuader : il cherche à faire adhérer le lecteur à une thèse, à modifier ses croyances, ses opinions ou son comportement. Il s''organise autour d''une thèse (position de l''énonciateur), d''arguments (raisons qui soutiennent la thèse), d''exemples (illustrations concrètes) et parfois de contre-arguments réfutés (concession). Il se distingue du texte explicatif, qui vise uniquement à faire comprendre sans défendre de point de vue, et du texte narratif, dont la visée première est de raconter des événements. Les genres textuels liés à l''argumentatif incluent l''éditorial, la lettre ouverte, le plaidoyer, la tribune, le débat.',
  'Confondre texte explicatif et texte argumentatif parce que les deux transmettent des informations et utilisent des connecteurs logiques. La distinction repose sur la présence d''une thèse subjective défendue : l''argumentatif prend parti, l''explicatif expose objectivement.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Le texte descriptif utilise essentiellement des verbes d'action au passé simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Le texte descriptif utilise essentiellement des verbes d''action au passé simple.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Le texte descriptif se caractérise au contraire par l''emploi de verbes d''état ou de perception (être, avoir, paraître, sembler, apparaître, se trouver), d''une abondance d''adjectifs qualificatifs et de compléments de lieu, et par l''utilisation de l''imparfait (qui exprime un état ou une situation dans leur durée). C''est le passé simple qui appartient au registre narratif : il exprime des actions ponctuelles, bornées dans le temps, qui font avancer le récit. La description, elle, « suspend » le temps pour peindre un tableau statique. Confondre les deux temps et leurs usages est une erreur fréquente au CRPE.',
  'Penser que le passé simple peut servir à décrire parce qu''il est courant dans les textes littéraires du XIXe siècle qui alternent narration et description. En réalité, dans ces textes, le passé simple porte toujours les actions narratives, tandis que l''imparfait prend en charge les passages descriptifs.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Identifier le type dominant d'une recette de cuisine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'reponse_courte',
  'Lisez cet extrait : « Épluchez les pommes de terre et coupez-les en dés. Faites-les revenir dans une poêle avec de l''huile d''olive pendant dix minutes. Ajoutez le sel, le poivre et les herbes. » Quel est le type dominant de ce texte ? Justifiez en citant une marque linguistique.',
  NULL,
  NULL,
  '{"mode":"open_text","acceptableAnswers":["injonctif","texte injonctif","dominante injonctive"]}'::jsonb,
  'Ce texte est de dominante injonctive. Son objectif pragmatique est de faire agir le lecteur en lui donnant des instructions à suivre dans un ordre précis. On l''identifie grâce à l''emploi systématique de l''impératif présent (épluchez, coupez, faites revenir, ajoutez), à l''absence de narrateur, et à l''adresse implicite à un destinataire qui doit réaliser les opérations décrites. La recette de cuisine est un genre textuel canoniquement injonctif, au même titre que la notice de montage, la règle du jeu, le règlement ou la consigne scolaire. La justification par une marque linguistique est indispensable au CRPE : nommer le type ne suffit pas sans preuve textuelle.',
  'Qualifier ce texte de « narratif » parce qu''il présente une suite d''actions. La différence est fondamentale : le texte narratif raconte des événements passés avec un narrateur, tandis que le texte injonctif donne des ordres à un destinataire présent pour qu''il agisse. L''impératif est le marqueur décisif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Dominante textuelle d'un article de magazine scientifique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'qcm',
  'Dans un article de magazine scientifique présentant le fonctionnement du système immunitaire, la dominante textuelle est généralement :',
  NULL,
  '[{"id":"a","label":"Narrative (raconter l''histoire de la découverte du vaccin)"},{"id":"b","label":"Descriptive (décrire l''apparence des cellules)"},{"id":"c","label":"Explicative (informer et expliquer un phénomène)"},{"id":"d","label":"Argumentative (défendre une thèse sur la vaccination)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La dominante textuelle d''un article scientifique de vulgarisation est explicative. Sa visée est de faire comprendre un phénomène (ici le fonctionnement du système immunitaire) à un lecteur non spécialiste, en utilisant des définitions, des reformulations, des connecteurs causaux et consécutifs, et le présent de vérité générale. Ce type de texte adopte une posture d''objectivité énonciative : l''auteur s''efface derrière l''information transmise. Il se distingue de l''argumentatif (qui défend une thèse) même si un article d''opinion scientifique peut avoir une composante argumentative. Au CRPE, identifier la dominante d''un texte documentaire ou scientifique comme explicative est une compétence attendue.',
  'Choisir « argumentative » parce que l''article pourrait mentionner des débats scientifiques. La dominante reste explicative tant que la finalité principale est d''informer et de faire comprendre, non de convaincre d''une position. Un article qui défend explicitement la vaccination aurait une dominante argumentative.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — La thèse, les arguments et les exemples sont des éléments structurants du texte argumentatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La thèse, les arguments et les exemples sont des éléments structurants du texte argumentatif.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Le texte argumentatif s''organise selon une structure caractéristique articulée autour de trois composantes fondamentales : la thèse (la position que l''énonciateur défend, son point de vue sur une question), les arguments (les raisons logiques, éthiques, affectives ou factuelles qui soutiennent la thèse) et les exemples (les illustrations concrètes qui rendent les arguments crédibles et vivants). À ces éléments peuvent s''ajouter la contre-thèse (réfutation d''une objection prévisible) et la concession (reconnaissance partielle d''un point de vue adverse). Cette structure est celle enseignée à l''école primaire dès le cycle 3 dans le cadre des écrits argumentatifs (lettre de réclamation, discours, critique).',
  'Confondre la structure argumentative avec la structure explicative en pensant que les deux comportent les mêmes éléments. Le texte explicatif s''organise autour d''une question posée (« pourquoi ? »), une explication développée et une reformulation conclusive — sans thèse ni prise de position de l''énonciateur.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Différence principale entre texte narratif et texte descriptif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd7080000-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'cpt_types_textes_caracteristiques',
  'Types de textes et leurs caractéristiques',
  'Standard',
  'reponse_courte',
  'Quelle est la différence principale entre un texte narratif et un texte descriptif ? Répondez en une ou deux phrases.',
  NULL,
  NULL,
  '{"mode":"open_text","acceptableAnswers":["événements","temps","dynamisme","succession","actions","état","statisme","simultanéité","peindre","raconter","verbes d''état","imparfait","passé simple"]}'::jsonb,
  'Le texte narratif raconte des événements qui se succèdent dans le temps (dynamisme temporel, progression, enchaînement causal ou chronologique), portés par des verbes d''action généralement au passé simple dans les récits littéraires. Le texte descriptif, lui, peint un état, une scène ou un personnage à un moment donné, en suspension temporelle (statisme, simultanéité des détails décrits), avec des verbes d''état à l''imparfait, des adjectifs qualificatifs abondants et des compléments de lieu. Cette opposition entre dynamisme narratif et statisme descriptif est une distinction fondamentale de la didactique du texte, directement attendue dans les épreuves de compréhension et de production écrite du CRPE.',
  'Répondre uniquement « le narratif raconte et le descriptif décrit » sans préciser les marqueurs linguistiques ou temporels qui différencient les deux. Au CRPE, une réponse efficace convoque les marques textuelles : temps verbaux, types de verbes, organisation temporelle — pas seulement la définition générale.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
