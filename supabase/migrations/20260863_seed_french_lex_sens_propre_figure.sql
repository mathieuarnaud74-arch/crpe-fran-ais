-- Migration: 10 exercices — Sens propre, sens figuré et expressions idiomatiques
-- Série : lex_sens_propre_figure_expressions (Français, lexique)
-- Sens propre vs figuré, métaphore lexicalisée, expressions figées, connotation
-- UUID prefix: b5860000

-- Q1 — QCM — "cœur de pierre" : sens figuré (métaphore figée)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'qcm',
  'Dans la phrase « Il a un cœur de pierre », le mot « pierre » est employé au sens :',
  NULL,
  '[{"id":"a","label":"propre"},{"id":"b","label":"figuré"},{"id":"c","label":"technique"},{"id":"d","label":"argotique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse correcte est « figuré ». Dans « cœur de pierre », le mot « pierre » ne désigne pas le matériau minéral (son sens propre, concret et littéral), mais est utilisé de manière métaphorique pour évoquer la dureté, l''insensibilité, l''absence d''émotion. Il s''agit d''une métaphore figée, c''est-à-dire une image qui, à force d''usage, s''est intégrée dans la langue au point de ne plus être perçue spontanément comme une figure de style. Le sens figuré est toujours abstrait, imagé ou symbolique par opposition au sens propre qui renvoie à la réalité concrète désignée par le mot à l''origine. Reconnaître le sens figuré est une compétence lexicale centrale évaluée au CRPE, notamment dans les épreuves de compréhension de texte et d''étude de la langue.',
  'Répondre « propre » en interprétant la phrase littéralement, sans identifier la dimension métaphorique. Il faut se demander si le mot renvoie à sa réalité concrète première (un caillou) ou à une signification imagée transposée à un autre domaine (le caractère humain).',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Le sens propre est le sens premier, concret et littéral
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Le sens propre d''un mot est son sens premier, concret et littéral.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Le sens propre, également appelé sens dénotatif ou sens littéral, est le sens originel et concret d''un mot, celui qui renvoie directement à la réalité physique ou matérielle désignée. Par exemple, « la feuille d''un arbre » emploie le mot « feuille » en son sens propre (l''organe végétal). Par opposition, le sens figuré exploite une image ou une analogie pour désigner autre chose que la réalité première : « prendre une feuille de papier » est encore le sens propre (support d''écriture), mais « tourner la feuille » au sens de « passer à autre chose » est figuré. Cette distinction est fondatrice en sémantique lexicale et constitue un repère clé pour l''analyse du sens dans les textes étudiés en classe.',
  'Confondre le sens propre avec le sens « correct » ou « officiel » du mot, alors que le sens propre désigne spécifiquement le sens étymologique ou concret premier, indépendamment de jugement de valeur sur la correction langagière.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Identifier l''expression idiomatique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'qcm',
  'Parmi les groupes de mots suivants, lequel est une expression idiomatique ?',
  NULL,
  '[{"id":"a","label":"courir vite"},{"id":"b","label":"avoir le cafard"},{"id":"c","label":"manger une pomme"},{"id":"d","label":"fermer la porte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse correcte est « avoir le cafard ». Une expression idiomatique (ou expression figée) est une séquence de mots dont le sens global ne peut pas se déduire de la somme des sens individuels des mots qui la composent : « avoir le cafard » signifie « être déprimé, mélancolique », ce qui est totalement opaque si l''on interprète les mots littéralement. Ce caractère non compositionnel est la marque distinctive des expressions idiomatiques. Les trois autres propositions sont des combinaisons libres : leur sens se construit directement à partir du sens de chaque mot (courir + vite, manger + une pomme, fermer + la porte). Ces locutions figées sont très fréquentes en français et constituent un enjeu d''enseignement important, car elles posent des difficultés particulières aux élèves allophones et aux apprentis lecteurs.',
  'Confondre une expression imagée mais compositionnelle (dont on peut deviner le sens mot à mot) avec une expression idiomatique véritablement opaque. Le critère décisif est la non-compositionnalité : le sens de l''ensemble ne découle pas du sens des parties.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — reponse_courte — Sens figuré de "mettre le feu aux poudres"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'reponse_courte',
  'Expliquez en une phrase le sens figuré de l''expression : « Cette décision a mis le feu aux poudres. »',
  NULL,
  NULL,
  '{"mode":"acceptableAnswers","acceptableAnswers":["elle a déclenché une réaction violente","elle a provoqué un embrasement de la situation","elle a mis le feu à une situation explosive","elle a déclenché un conflit ou une vive réaction"]}'::jsonb,
  'L''expression « mettre le feu aux poudres » est une expression figée dont le sens figuré signifie déclencher brusquement une réaction violente, un conflit ou une crise latente. L''image renvoie à la poudre à canon : une étincelle sur une traînée de poudre provoque une explosion immédiate et dévastatrice. Au sens figuré, la « poudre » représente une situation tendue, prête à s''enflammer, et l''événement déclencheur (ici la décision) est l''étincelle. Ce type d''expression métaphorique figée illustre comment une image d''origine concrète (et historique) se fige dans la langue pour exprimer une réalité abstraite. Identifier et reformuler le sens figuré d''une telle expression est une compétence attendue dans les épreuves de compréhension de l''écrit au CRPE.',
  'Paraphraser l''expression en restant dans le registre du feu et de l''explosion sans accéder au sens figuré réel (conflit, crise, tension). La reformulation attendue doit être abstraite et porter sur les relations humaines ou la dynamique de la situation, pas sur le feu au sens littéral.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — "J''écris sur une feuille" : sens propre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'qcm',
  'Le mot « feuille » employé dans la phrase « J''écris sur une feuille » a un sens :',
  NULL,
  '[{"id":"a","label":"figuré"},{"id":"b","label":"propre"},{"id":"c","label":"polysémique"},{"id":"d","label":"métaphorique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse correcte est « propre ». Dans cette phrase, « feuille » désigne concrètement le support d''écriture (une feuille de papier), ce qui constitue l''un de ses sens propres — un sens littéral et direct qui renvoie à un objet tangible. Le mot « feuille » est en réalité un mot polysémique (il possède plusieurs sens : la feuille d''arbre, la feuille de papier, la feuille de calcul, etc.), mais chacun de ces sens, pris isolément dans un contexte donné, peut être propre ou figuré selon qu''il renvoie à une réalité concrète ou à une image. Ici, il n''y a aucune dimension métaphorique : le locuteur écrit réellement sur un support en papier. La notion de polysémie ne s''oppose pas au sens propre : un mot polysémique peut avoir plusieurs sens propres dans des domaines différents.',
  'Répondre « polysémique » en croyant que la polysémie du mot suffit à rendre cet emploi ambigu ou figuré. La polysémie est une propriété du mot (il a plusieurs sens), pas une caractérisation de l''emploi dans un contexte : dans ce contexte précis, l''emploi est bel et bien au sens propre.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — La métaphore lexicalisée n''est plus ressentie comme telle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Une métaphore lexicalisée est une métaphore tellement usée qu''elle n''est plus ressentie comme telle par les locuteurs.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. La métaphore lexicalisée, également appelée métaphore morte ou métaphore figée, est une ancienne figure de style qui s''est intégrée dans le lexique commun au point de ne plus être perçue comme une image par les locuteurs natifs. Des exemples typiques sont « le pied de la montagne » (le pied désigne ici la base, par analogie avec le pied humain), « la bouche du métro » ou « l''aile du bâtiment ». Ces expressions ont perdu leur dimension imagée et constituent désormais des emplois ordinaires du lexique. Par opposition, une métaphore vive (créée par un auteur dans un texte) est immédiatement ressentie comme une image originale. Cette distinction est importante en didactique du lexique : enseigner aux élèves à détecter les métaphores lexicalisées les aide à comprendre l''étendue du sens figuré dans la langue courante.',
  'Croire qu''une métaphore lexicalisée est une métaphore « incorrecte » ou « fautive ». Il s''agit au contraire d''un phénomène normal de figement linguistique : la métaphore n''est pas erronée, elle est simplement intégrée au lexique et n''est plus perçue comme une figure par les locuteurs.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — reponse_courte — Sens propre et figuré du mot "lumière"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'reponse_courte',
  'Donnez un exemple d''emploi au sens propre, puis un exemple d''emploi au sens figuré, pour le mot « lumière ».',
  NULL,
  NULL,
  '{"mode":"acceptableAnswers","acceptableAnswers":["propre : la lumière du soleil éclaire la pièce ; figuré : il est une lumière dans ce domaine","propre : allume la lumière ; figuré : faire la lumière sur une affaire","propre : la lumière traverse la vitre ; figuré : c''est une lumière, il comprend tout vite","propre : la lumière du soleil ; figuré : apporter de la lumière sur ce sujet"]}'::jsonb,
  'Le mot « lumière » illustre parfaitement la polysémie et la distinction sens propre / sens figuré. Au sens propre, « lumière » désigne le rayonnement électromagnétique visible, le phénomène physique qui permet de voir : « La lumière du soleil éclaire la pièce. » Au sens figuré, « lumière » peut désigner l''intelligence ou le savoir (« C''est une lumière » = une personne brillante), la clarté intellectuelle (« faire la lumière sur une affaire » = élucider, expliquer), ou encore la Raison au sens philosophique (les Lumières du XVIIIe siècle). Ces glissements métaphoriques sont très productifs en français et illustrent comment un concept concret (la lumière physique) sert de matrice à des sens abstraits (la connaissance, la clarté de l''esprit). Savoir distinguer ces emplois est fondamental pour la lecture littéraire et l''étude du lexique à l''école.',
  'Proposer deux exemples au sens propre, ou donner un sens figuré trop proche du sens propre (ex : « la lumière d''une lampe de poche » reste au sens propre). Le sens figuré doit impliquer un transfert vers un domaine abstrait (intelligence, savoir, vérité) clairement distinct du phénomène physique.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — "Prendre ses jambes à son cou" : expression idiomatique figée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'qcm',
  'Dans l''expression « Prendre ses jambes à son cou », on utilise :',
  NULL,
  '[{"id":"a","label":"un archaïsme"},{"id":"b","label":"une métonymie"},{"id":"c","label":"une expression idiomatique figée"},{"id":"d","label":"une périphrase"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La réponse correcte est « une expression idiomatique figée ». L''expression « prendre ses jambes à son cou » signifie « s''enfuir très vite » — sens qui est totalement opaque si l''on interprète les mots littéralement (anatomiquement, les jambes ne peuvent pas s''enrouler autour du cou). C''est la définition même d''une expression idiomatique : une séquence de mots dont le sens global est non compositionnel, c''est-à-dire qu''il ne se déduit pas du sens des éléments qui la constituent. Cette expression est par ailleurs figée sur le plan morphosyntaxique : on ne peut pas la modifier librement (*« prendre ses bras à son cou »). Elle n''est pas un archaïsme (les archaïsmes sont des formes ou mots vieillis hors d''usage courant), ni une métonymie (figure de substitution), ni une périphrase (circumlocution désignant un concept par une expression développée).',
  'Choisir « archaïsme » en raison de la construction syntaxique inhabituelle, ou « métonymie » par confusion avec les figures de substitution. Une expression idiomatique se reconnaît à son sens opaque global, non à son ancienneté ou à la figure rhétorique qu''elle contient éventuellement à l''origine.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Le sens figuré peut devenir dominant avec le temps
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Le sens figuré d''un mot peut, avec le temps, devenir son sens dominant ou le plus courant.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. L''évolution sémantique des mots montre que le sens figuré peut progressivement supplanter le sens propre initial au point de devenir le sens premier perçu par les locuteurs. Par exemple, le verbe « calculer » vient du latin « calculus » (le petit caillou utilisé pour compter sur un boulier) : son sens propre originel était donc très concret. Aujourd''hui, « calculer » au sens de « réfléchir stratégiquement » ou « effectuer un calcul mental » est son sens dominant, et la référence aux cailloux est totalement opaque. De même, « ruminer » vient du comportement digestif des ruminants mais s''emploie majoritairement au figuré (« ruminer une idée »). Ce phénomène, appelé glissement sémantique ou extension de sens, illustre la dynamique historique du lexique. Il est important en didactique car il relativise la frontière entre sens propre et sens figuré.',
  'Affirmer que le sens propre est immuable et toujours prioritaire. En réalité, la hiérarchie entre sens propre et sens figuré est historiquement relative et évolue avec l''usage : ce qui était figuré hier peut être propre aujourd''hui, et inversement.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — "Il a la tête dans les nuages" : sens figuré
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b5860000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_sens_propre_figure_expressions',
  'Sens propre, sens figuré et expressions idiomatiques',
  'Standard',
  'reponse_courte',
  'Précisez si l''expression « Il a la tête dans les nuages » est employée au sens propre ou au sens figuré, puis expliquez son sens.',
  NULL,
  NULL,
  '{"mode":"acceptableAnswers","acceptableAnswers":["sens figuré : il est distrait, rêveur, déconnecté de la réalité","sens figuré : il est dans la lune, peu attentif à ce qui l''entoure","sens figuré : il est rêveur et peu ancré dans le réel","sens figuré : il manque de réalisme ou de concentration"]}'::jsonb,
  'L''expression « avoir la tête dans les nuages » est employée au sens figuré. Prise littéralement, l''image est impossible (sauf pour un alpiniste en altitude ou un pilote d''avion) — ce qui signale d''emblée que le sens est métaphorique. Au sens figuré, cette expression idiomatique signifie être distrait, rêveur, peu attentif aux réalités concrètes, déconnecté du monde présent. L''image des nuages évoque l''inaccessible, le lointain, l''impalpable : quelqu''un dont « la tête est dans les nuages » a l''esprit ailleurs, dans un monde imaginaire ou abstrait. Cette expression illustre la catégorie des expressions figées à base spatiale, très fréquentes en français, où une position physique (haut/bas, dedans/dehors) encode une valeur symbolique (distraction, rêverie, absence). La capacité à identifier sens propre et sens figuré est une compétence lexicale explicitement requise dans les programmes de cycle 3.',
  'Répondre « sens propre » en imaginant une situation où cela pourrait être littéralement vrai (en avion, par exemple). Le critère déterminant n''est pas la possibilité physique théorique, mais le contexte d''emploi ordinaire de l''expression : dans l''usage courant, cette locution ne décrit jamais une position physique réelle, elle exprime toujours la distraction ou le rêve.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
