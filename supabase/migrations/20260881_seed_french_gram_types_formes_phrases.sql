-- Série : Types et formes de phrases
-- Subdomain : grammaire | topic_key : gram_types_et_formes_phrases
-- 10 questions | UUIDs : d18e0000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'qcm',
  'Combien de types de phrases sont distingués dans la grammaire scolaire française ?',
  NULL,
  '[{"id":"a","label":"2 (déclarative et interrogative)"},{"id":"b","label":"3 (déclarative, interrogative, exclamative)"},{"id":"c","label":"4 (déclarative, interrogative, exclamative, impérative)"},{"id":"d","label":"5 (déclarative, interrogative, exclamative, impérative, injonctive)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La grammaire scolaire distingue quatre types de phrases selon leur modalité énonciative : la phrase déclarative (affirme ou informe), interrogative (pose une question), exclamative (exprime un sentiment ou une intensité) et impérative (exprime un ordre, un conseil ou une interdiction). La terminologie Éduscol 2021 utilise ce découpage en 4 types.',
  'Confondre « type » et « forme » de phrase (affirmative/négative). La forme est une caractéristique orthogonale au type : une même phrase peut être déclarative ET négative, interrogative ET affirmative, etc.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'qcm',
  'De quel type est la phrase : « Comme ce tableau est magnifique ! » ?',
  NULL,
  '[{"id":"a","label":"Déclarative"},{"id":"b","label":"Interrogative"},{"id":"c","label":"Exclamative"},{"id":"d","label":"Impérative"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La phrase exclamative exprime un sentiment vif ou une intensité. Elle se reconnaît à l''emploi d''un mot exclamatif (comme, quel, que, combien) et se termine par un point d''exclamation. Ici, « Comme... ! » est la marque de la phrase exclamative. Elle peut partager son intonation avec la phrase impérative, mais la présence de « comme » est caractéristique du type exclamatif.',
  'Confondre phrase exclamative et phrase déclarative accompagnée d''un point d''exclamation. La phrase exclamative nécessite un mot exclamatif (comme, quel, que...) ou une structure syntaxique particulière.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Une phrase déclarative peut être de forme négative.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le type et la forme de la phrase sont deux dimensions indépendantes qui se combinent. Une phrase déclarative peut être affirmative (« Il pleut. ») ou négative (« Il ne pleut pas. »). De même, une phrase interrogative peut être affirmative (« Viens-tu ? ») ou négative (« Ne viens-tu pas ? »). La grammaire distingue le type (modalité de l''énonciation) de la forme (affirmation vs négation).',
  'Croire que type et forme sont équivalents ou que la forme négative est réservée à un type particulier. Chaque type de phrase peut prendre la forme affirmative ou négative indépendamment.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'qcm',
  'Laquelle de ces constructions caractérise l''interrogative directe totale en français standard écrit ?',
  NULL,
  '[{"id":"a","label":"L''intonation montante uniquement"},{"id":"b","label":"L''emploi de « est-ce que » ou l''inversion verbe-sujet"},{"id":"c","label":"L''emploi d''un mot interrogatif (qui, que, comment...)"},{"id":"d","label":"L''emploi d''un point d''interrogation seul"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''interrogative directe totale (porte sur l''ensemble de la phrase, réponse oui/non) peut se construire de trois façons en français : (1) intonation montante à l''oral (langue familière) ; (2) « est-ce que » + ordre déclaratif (registre courant) ; (3) inversion du sujet (registre soutenu). En français standard écrit, ce sont les constructions 2 et 3 qui s''imposent. L''interrogative partielle (avec mot interrogatif) porte sur un élément particulier.',
  'Confondre interrogative totale (oui/non) et interrogative partielle (avec mot interrogatif : qui, que, comment, où, quand, combien...). Le mot interrogatif n''est pas une marque de l''interrogative totale.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'qcm',
  'Laquelle de ces paires de mots constitue une locution de négation complexe en français ?',
  NULL,
  '[{"id":"a","label":"ne... pas"},{"id":"b","label":"ne... jamais"},{"id":"c","label":"ne... guère"},{"id":"d","label":"Toutes les réponses précédentes sont des négations complexes"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La négation en français est le plus souvent discontinue : elle encadre le verbe (ou l''auxiliaire) avec « ne » devant et un second terme après. Ces termes négatifs sont notamment : pas, point, jamais, plus, rien, personne, guère, que (restriction), aucun, nul. Toutes les constructions proposées (ne...pas, ne...jamais, ne...guère) sont des négations complexes car elles associent « ne » à un second terme. « Pas » et « jamais » peuvent aussi fonctionner seuls à l''oral sans « ne » (registre familier).',
  'Croire que seul « ne...pas » constitue la négation et que « ne...jamais » ou « ne...guère » sont des constructions différentes. En grammaire, il existe toute une palette de locutions négatives avec « ne ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La phrase impérative a toujours un sujet exprimé dans la phrase.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'La phrase impérative se caractérise précisément par l''absence de sujet exprimé (il est sous-entendu). On distingue les formes de la 2ᵉ personne du singulier (Mange !), de la 1ʳᵉ personne du pluriel (Mangeons !) et de la 2ᵉ personne du pluriel (Mangez !). Le sujet (tu, nous, vous) n''est pas écrit mais il est sous-entendu. C''est ce qui la distingue formellement des autres types.',
  'Confondre le type impératif avec le type déclaratif dont le sujet pourrait être omis. À l''impératif, le sujet est structurellement absent (et non simplement ellipsé) : c''est une propriété morphosyntaxique de ce mode.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'qcm',
  'Quelle est la structure caractéristique de la phrase emphatique (ou phrase à mise en relief) ?',
  NULL,
  '[{"id":"a","label":"La suppression du sujet"},{"id":"b","label":"Le déplacement du verbe en fin de phrase"},{"id":"c","label":"L''emploi de « c''est... qui » ou « c''est... que »"},{"id":"d","label":"La transformation en phrase interrogative"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La phrase emphatique met en relief un constituant par des procédés de focalisation : (1) le détachement gauche ou droit avec reprise pronominale (« Ma sœur, elle chante bien. ») ; (2) les structures en « c''est... qui » (pour le sujet) et « c''est... que » (pour les autres constituants). Ex. : « C''est lui qui a gagné. » / « C''est ce livre que je préfère. » Ces constructions sont très fréquentes en français oral.',
  'Confondre mise en relief avec simple redondance ou avec la phrase clivée. La structure « c''est... qui/que » est la marque formelle de la phrase emphatique clivée.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'reponse_courte',
  'Transformez la phrase déclarative suivante en phrase interrogative directe totale par inversion verbe-sujet : « Tu as compris la leçon. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["As-tu compris la leçon ?","As-tu compris la leçon?"]}'::jsonb,
  'L''inversion verbe-sujet consiste à placer le verbe (ou l''auxiliaire) avant le pronom sujet, reliés par un trait d''union : « As-tu compris la leçon ? » Le trait d''union est obligatoire. Si le verbe se termine par une voyelle et le pronom commence par une voyelle, on insère un -t- euphonique : « A-t-il compris ? »',
  'Écrire « Tu as compris la leçon ? » (simple intonation, sans inversion — registre familier oral) ou omettre le trait d''union. En français standard écrit, l''interrogative par inversion exige le trait d''union.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'qcm',
  'Quel est le sujet grammatical dans la phrase impersonnelle : « Il tombe de la neige. » ?',
  NULL,
  '[{"id":"a","label":"de la neige"},{"id":"b","label":"il (sujet grammatical, impersonnel)"},{"id":"c","label":"il n''y a pas de sujet dans une phrase impersonnelle"},{"id":"d","label":"tombe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans une phrase impersonnelle, le sujet grammatical est toujours « il » (impersonnel, ne désigne aucun référent réel). C''est un « il » de forme, une marque grammaticale. Le vrai « sujet sémantique » (ce qui tombe réellement) est « de la neige », que l''on appelle sujet réel ou sujet logique. Les verbes météorologiques (pleuvoir, neiger, tonner...) sont intrinsèquement impersonnels.',
  'Identifier « de la neige » comme le sujet grammatical. C''est le sujet logique/réel, mais pas le sujet grammatical. En grammaire de phrase, le sujet grammatical est le terme qui commande l''accord du verbe, ici « il ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'd18e0000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'gram_types_et_formes_phrases',
  'Types et formes de phrases',
  'Standard',
  'qcm',
  'Parmi ces phrases, laquelle est à la fois de type déclaratif et de forme négative ?',
  NULL,
  '[{"id":"a","label":"Ne pars pas !"},{"id":"b","label":"Il ne viendra pas."},{"id":"c","label":"N''est-il pas venu ?"},{"id":"d","label":"Comme il ne sourit jamais !"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Il ne viendra pas. » est une phrase déclarative (elle affirme/informe sur un fait) de forme négative (présence de « ne...pas »). La réponse a est impérative négative ; la réponse c est interrogative négative ; la réponse d est exclamative négative. Ces exemples illustrent que les 4 types et les formes (affirmative/négative) se croisent librement.',
  'Choisir la réponse c en pensant que le type le plus fréquemment négatif est l''interrogatif. Le type d''une phrase se détermine par sa modalité énonciative (ce qu''on fait avec la phrase), indépendamment de sa forme affirmative ou négative.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
