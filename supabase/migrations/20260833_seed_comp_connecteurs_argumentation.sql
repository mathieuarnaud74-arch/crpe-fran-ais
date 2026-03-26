-- Migration: 10 exercices — Connecteurs logiques et argumentation
-- Série : comp_connecteurs_argumentation (Français, comprehension_texte)
-- Terminologie Éduscol 2021 stricte
-- UUID prefix: e9330000

-- Q1 — QCM — Identifier un connecteur de cause
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'qcm',
  'Dans « Les résultats sont en baisse car les élèves n''ont pas assez révisé », quel type de relation logique le connecteur « car » exprime-t-il ?',
  NULL,
  '[{"id":"a","label":"La cause (il explique pourquoi)"},{"id":"b","label":"La conséquence (il indique le résultat)"},{"id":"c","label":"L''opposition (il marque un contraste)"},{"id":"d","label":"La concession (il admet un fait contraire)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Car » est un connecteur de cause : il introduit l''explication, la raison d''un fait. Ici, la cause du constat (« les résultats sont en baisse ») est le manque de révision. Attention : « car » est une conjonction de coordination (selon la terminologie Éduscol, l''une des six : mais, ou, et, or, ni, car). Il ne faut pas le confondre avec « parce que » (conjonction de subordination de cause) ni avec « donc » (adverbe de conséquence). Cause ≠ conséquence : la cause répond à « pourquoi ? », la conséquence à « quel résultat ? ». Ils sont inversement reliés.',
  'Confondre cause et conséquence. La cause est la raison, l''origine ; la conséquence est le résultat, l''effet. « Car » introduit toujours la cause.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Tri catégories — Classer les connecteurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'tri_categories',
  'Classez chaque connecteur selon la relation logique qu''il exprime.',
  NULL,
  NULL,
  '{"mode":"categorization","categories":["Cause","Conséquence","Opposition / Concession","Addition / Illustration"],"items":[{"text":"car","category":"Cause"},{"text":"en effet","category":"Cause"},{"text":"donc","category":"Conséquence"},{"text":"par conséquent","category":"Conséquence"},{"text":"cependant","category":"Opposition / Concession"},{"text":"néanmoins","category":"Opposition / Concession"},{"text":"de plus","category":"Addition / Illustration"},{"text":"par exemple","category":"Addition / Illustration"}]}'::jsonb,
  'Les connecteurs logiques se classent en grandes catégories selon la relation qu''ils expriment : CAUSE (car, en effet, parce que, puisque) — ils répondent à « pourquoi ? ». CONSÉQUENCE (donc, par conséquent, ainsi, c''est pourquoi) — ils répondent à « quel résultat ? ». OPPOSITION/CONCESSION (cependant, néanmoins, toutefois, mais, pourtant, bien que) — ils marquent un contraste ou admettent un fait contraire. ADDITION/ILLUSTRATION (de plus, en outre, par exemple, notamment) — ils ajoutent un argument ou un exemple. Rappel : « donc » est un ADVERBE (pas une conjonction de coordination selon Éduscol 2021).',
  'Classer « en effet » comme connecteur de conséquence. « En effet » introduit une explication (cause/justification), pas un résultat.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Vrai/Faux — « Or » connecteur d'opposition ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : la conjonction de coordination « or » exprime toujours l''opposition.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! « Or » n''exprime pas l''opposition mais l''introduction d''un fait nouveau, souvent décisif, dans un raisonnement. C''est un connecteur argumentatif qui introduit la mineure d''un syllogisme ou un élément qui va faire basculer le raisonnement. Exemple classique : « Tous les hommes sont mortels. Or, Socrate est un homme. Donc, Socrate est mortel. » « Or » introduit un fait qui, combiné au précédent, mène à une conclusion. Il est parfois proche de l''opposition (« Il pensait réussir. Or, il a échoué. ») mais sa valeur fondamentale est l''introduction d''un élément argumentatif, pas le contraste. « Or » est bien une conjonction de coordination (mais, ou, et, or, ni, car).',
  'Classer « or » avec « mais » dans la catégorie opposition. « Or » introduit un élément nouveau dans le raisonnement ; « mais » marque une opposition ou une restriction.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Connecteur en contexte argumentatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'qcm',
  'Quel connecteur complète logiquement : « La lecture enrichit le vocabulaire ; … , elle développe l''imagination » ?',
  NULL,
  '[{"id":"a","label":"cependant"},{"id":"b","label":"en revanche"},{"id":"c","label":"de plus"},{"id":"d","label":"par conséquent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« De plus » est un connecteur d''addition qui ajoute un deuxième argument allant dans le même sens que le premier. Ici, les deux arguments sont en faveur de la lecture (enrichir le vocabulaire + développer l''imagination). « Cependant » et « en revanche » introduiraient une opposition (ce qui est incohérent car les deux propositions vont dans le même sens). « Par conséquent » introduirait une conséquence, mais l''imagination n''est pas une conséquence de l''enrichissement du vocabulaire. Les connecteurs d''addition (de plus, en outre, par ailleurs, de surcroît) servent à renforcer une argumentation en accumulant des arguments convergents.',
  'Choisir « par conséquent » en voyant un lien entre les deux propositions. Les deux idées sont parallèles (deux avantages de la lecture), pas dans un rapport cause-conséquence.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Concession avec « bien que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'qcm',
  'Dans « Bien qu''il ait beaucoup travaillé, il n''a pas obtenu la moyenne », quelle relation logique « bien que » exprime-t-il ?',
  NULL,
  '[{"id":"a","label":"La cause"},{"id":"b","label":"La concession (on admet un fait qui ne produit pas l''effet attendu)"},{"id":"c","label":"La condition"},{"id":"d","label":"Le but"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Bien que » exprime la concession : on reconnaît un fait (il a beaucoup travaillé) qui devrait logiquement produire un certain résultat (obtenir la moyenne), mais ce résultat n''advient pas. La concession est une relation logique complexe : elle combine la reconnaissance d''un argument et sa neutralisation. Autres connecteurs de concession : « quoique », « même si », « malgré que » (registre familier, critiqué), « certes… mais ». ATTENTION : « bien que » est suivi du SUBJONCTIF (« bien qu''il ait travaillé »). La distinction entre opposition et concession est subtile : l''opposition juxtapose deux faits contraires ; la concession admet un fait pour mieux le dépasser.',
  'Confondre concession et cause. « Bien que » n''explique PAS pourquoi il n''a pas eu la moyenne ; il concède un fait (le travail) qui aurait dû mener au résultat inverse.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — « Pourtant » = adverbe ou conjonction ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : selon la terminologie Éduscol 2021, « pourtant » est un adverbe (et non une conjonction de coordination), tout comme « donc » et « cependant ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Selon la terminologie officielle (Éduscol 2021), « pourtant », « cependant », « donc », « toutefois », « néanmoins » sont des adverbes, et non des conjonctions de coordination. La liste des conjonctions de coordination est limitée à six mots : mais, ou, et, or, ni, car. Critère : un adverbe peut être déplacé dans la phrase (« Il est pourtant venu » / « Pourtant, il est venu ») ou supprimé sans rendre la phrase agrammaticale, tandis qu''une conjonction de coordination occupe une position fixe entre les éléments qu''elle relie. Cette distinction est un point de vigilance récurrent au CRPE.',
  'Classer « pourtant », « donc » ou « cependant » parmi les conjonctions de coordination. La terminologie Éduscol est stricte : 6 conjonctions de coordination seulement (mais, ou, et, or, ni, car).',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Rôle des connecteurs dans la compréhension
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'qcm',
  'Quel connecteur complète logiquement : « Les enfants adorent les écrans. … , une exposition excessive peut nuire à leur développement » ?',
  NULL,
  '[{"id":"a","label":"En effet"},{"id":"b","label":"C''est pourquoi"},{"id":"c","label":"Toutefois"},{"id":"d","label":"De surcroît"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Toutefois » est un adverbe de concession/opposition : il introduit une nuance, une restriction par rapport à ce qui précède. Le premier énoncé est positif (les enfants adorent les écrans), le second est négatif (nuisance pour le développement). Il y a un contraste → connecteur d''opposition ou de concession. « En effet » introduirait une explication (pas de contraste). « C''est pourquoi » marquerait une conséquence logique (mais l''excès n''est pas une conséquence de l''amour des écrans). « De surcroît » ajouterait un argument dans le même sens. Seul « toutefois » marque la bascule argumentative.',
  'Choisir « c''est pourquoi » en voyant un lien entre les deux phrases. Les deux propositions sont en contraste, pas en relation cause-conséquence.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Tri catégories — Connecteurs temporels vs logiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'tri_categories',
  'Classez chaque connecteur selon qu''il organise le temps (connecteur temporel) ou le raisonnement (connecteur logique).',
  NULL,
  NULL,
  '{"mode":"categorization","categories":["Connecteur temporel","Connecteur logique"],"items":[{"text":"d''abord, ensuite, enfin","category":"Connecteur temporel"},{"text":"auparavant","category":"Connecteur temporel"},{"text":"par conséquent","category":"Connecteur logique"},{"text":"en revanche","category":"Connecteur logique"},{"text":"pendant ce temps","category":"Connecteur temporel"},{"text":"en effet","category":"Connecteur logique"}]}'::jsonb,
  'Les connecteurs temporels organisent la chronologie : ils situent les événements dans le temps (« d''abord / ensuite / enfin » = succession ; « auparavant » = antériorité ; « pendant ce temps » = simultanéité). Les connecteurs logiques organisent le raisonnement : ils expriment des relations de cause, conséquence, opposition, addition (« par conséquent » = conséquence ; « en revanche » = opposition ; « en effet » = cause/justification). Cette distinction est fondamentale en compréhension de texte : les connecteurs temporels structurent le récit, les connecteurs logiques structurent l''argumentation.',
  'Croire que tous les connecteurs sont logiques. Les connecteurs temporels organisent la chronologie, pas le raisonnement.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Structure d'un texte argumentatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'qcm',
  'Dans un texte argumentatif, quelle est la fonction d''un connecteur comme « certes… mais » ?',
  NULL,
  '[{"id":"a","label":"Introduire deux causes complémentaires"},{"id":"b","label":"Concéder un argument adverse puis le réfuter ou le nuancer"},{"id":"c","label":"Présenter deux conséquences successives"},{"id":"d","label":"Ajouter deux exemples illustratifs"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La structure « certes… mais » est le schéma type de la concession argumentative. « Certes » concède un argument (on reconnaît sa validité), « mais » introduit la réfutation ou la nuance qui l''emporte. C''est un mouvement en deux temps : (1) on admet le point de vue adverse (signe de bonne foi argumentative) ; (2) on avance un contre-argument plus fort. Exemple : « Certes, les écrans peuvent être éducatifs, mais une exposition excessive nuit au développement des enfants. » L''argument introduit par « mais » est celui que le locuteur défend. Ce schéma concessif est l''un des procédés argumentatifs les plus puissants et les plus analysés au CRPE.',
  'Croire que « certes » suffit seul comme concession. « Certes » n''est que la première partie du mouvement concessif ; c''est « mais » (ou « cependant », « toutefois ») qui complète le mouvement en apportant le contre-argument.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Connecteurs et compréhension en lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9330000-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'comp_connecteurs_argumentation',
  'Connecteurs logiques et argumentation',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : selon les programmes officiels, l''enseignement explicite des connecteurs logiques fait partie des compétences de compréhension en lecture à l''école élémentaire.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Les programmes officiels (cycles 2 et 3) intègrent l''identification et la compréhension des connecteurs comme une compétence de compréhension en lecture. Les connecteurs sont des « organisateurs textuels » qui structurent le texte et guident la compréhension. Les programmes insistent sur l''enseignement explicite de ces mots de liaison : repérer les connecteurs, comprendre la relation logique qu''ils expriment, et les utiliser en production d''écrits. Cette compétence est transversale : elle sert aussi bien en français qu''en histoire, sciences ou mathématiques (raisonnement logique). C''est un point de convergence entre compréhension de texte et maîtrise de la langue.',
  'Penser que les connecteurs ne s''enseignent qu''en production d''écrits. Les programmes les intègrent aussi en compréhension de lecture : savoir identifier un connecteur et la relation qu''il exprime aide à comprendre la structure du texte.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
