-- Migration: 10 exercices — Fonctions syntaxiques des groupes
-- Série : anal_fonctions_syntaxiques (Français, analyse_langue)
-- Sujet, COD, COI, attribut du sujet, épithète, complément du nom, CC
-- UUID prefix: 5f060000

-- Q1 — QCM — Identifier le sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'qcm',
  'Dans la phrase « Le soleil se couche à l''horizon. », quel groupe nominal a la fonction sujet ?',
  NULL,
  '[{"id":"a","label":"se couche"},{"id":"b","label":"Le soleil"},{"id":"c","label":"à l''horizon"},{"id":"d","label":"l''horizon"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le sujet est le groupe nominal (ou pronom) dont dépend le verbe : il désigne ce dont on parle et commande les accords en personne et en nombre. Pour l''identifier, on pose la question « Qui est-ce qui… ? » avant le verbe : « Qui est-ce qui se couche ? → Le soleil. » Le sujet est ici « Le soleil » (GN = déterminant + nom). « À l''horizon » est un complément circonstanciel de lieu.',
  'Confondre le sujet réel et le sujet apparent dans les tournures impersonnelles (ex : « Il pleut » → il = sujet apparent). Ici, la phrase est personnelle et l''identification est directe.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Le sujet toujours avant le verbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Le sujet d''un verbe est toujours placé avant lui en français.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Le sujet peut être placé après le verbe (inversion du sujet) dans plusieurs cas : l''interrogation directe (« Viendra-t-il ? »), certaines propositions incises (« dit-il »), après certains adverbes en début de phrase (« Ainsi parla Zarathoustra »), ou dans les propositions relatives (« le livre que lit Marie »). L''ordre SVO (sujet-verbe-objet) est l''ordre non marqué mais il existe de nombreuses exceptions.',
  'Croire que l''ordre sujet-verbe est une règle absolue du français. C''est l''ordre non marqué (neutre), mais les inversions sont grammaticalement correctes et stylistiquement importantes.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Identifier le COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'qcm',
  'Dans la phrase « Le chien mord le facteur. », quelle est la fonction du GN « le facteur » ?',
  NULL,
  '[{"id":"a","label":"Sujet du verbe"},{"id":"b","label":"Complément d''objet direct (COD)"},{"id":"c","label":"Complément d''objet indirect (COI)"},{"id":"d","label":"Complément circonstanciel de lieu"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le COD est le complément du verbe qui répond directement à la question « qui ? » ou « quoi ? » posée après le verbe, sans préposition. « Le chien mord qui ? → le facteur. » Le COD est essentiel (difficilement supprimable) et peut être pronominalisé : « Le chien le mord. » C''est le verbe « mordre » qui est ici transitif direct.',
  'Confondre COD et sujet. Le test de pronominalisation aide : si on peut remplacer le groupe par « le », « la », « les » ou « l'' » placé avant le verbe, c''est un COD. Pour le sujet, on utilise « il(s) » / « elle(s) ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Identifier le COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'qcm',
  'Dans la phrase « Il téléphone à sa mère chaque soir. », quelle est la fonction de « à sa mère » ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet direct (COD)"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Complément d''objet indirect (COI)"},{"id":"d","label":"Complément circonstanciel de temps"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le COI est le complément du verbe rattaché à lui par une préposition (à, de, pour…). Il répond à la question « à qui ? », « de qui ? », « à quoi ? »… posée après le verbe. « Il téléphone à qui ? → à sa mère. » Le COI se pronominalise en « lui » / « leur » (pour les personnes) ou « y » / « en » : « Il lui téléphone. » À ne pas confondre avec « chaque soir » qui est CC de temps.',
  'Confondre COI et CC. La différence : le COI est exigé par le verbe (verbe transitif indirect), le CC est un ajout facultatif qui précise les circonstances. « Téléphoner » exige « à quelqu''un » → COI ; « chaque soir » est supprimable → CC.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Identifier l'attribut du sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'qcm',
  'Dans la phrase « Cette histoire semble vraie. », quelle est la fonction de l''adjectif « vraie » ?',
  NULL,
  '[{"id":"a","label":"Épithète du nom « histoire »"},{"id":"b","label":"Attribut du sujet « histoire »"},{"id":"c","label":"Complément d''objet direct"},{"id":"d","label":"Apposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''attribut du sujet est un adjectif ou un GN relié au sujet par un verbe d''état (être, paraître, sembler, devenir, rester, avoir l''air…). Il s''accorde avec le sujet et caractérise le sujet via ce verbe. Ici, « semble » est un verbe d''état et « vraie » est l''attribut du sujet « histoire » (féminin singulier → « vraie »). L''épithète, en revanche, qualifie directement le nom sans passer par un verbe d''état.',
  'Confondre épithète et attribut : « La belle histoire » → « belle » est épithète (directement accolée au nom, sans verbe). « L''histoire semble belle » → « belle » est attribut (reliée au sujet par « semble »).',
  'valide',
  'CRPE Français',
  'premium',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Épithète vs attribut
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Le beau jardin fleurit. », l''adjectif « beau » est un attribut du sujet.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. « Beau » est une épithète du nom « jardin » : il qualifie directement le nom, sans être relié à lui par un verbe d''état. Il est placé à l''intérieur du GN sujet. Un attribut du sujet est toujours relié au sujet via un verbe d''état (être, paraître, sembler…). Ici, le verbe « fleurit » n''est pas un verbe d''état : il ne peut pas introduire un attribut.',
  'Confondre l''adjectif qualificatif (qui peut être épithète ou attribut) avec sa fonction. La même forme « beau » peut être épithète (dans un GN) ou attribut (après un verbe d''état) selon sa position dans la phrase.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Complément du nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'qcm',
  'Dans la phrase « Le livre de Paul est sur la table. », quelle est la fonction de « de Paul » ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet indirect du verbe"},{"id":"b","label":"Complément circonstanciel de lieu"},{"id":"c","label":"Complément du nom « livre »"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le complément du nom est un groupe (souvent prépositionnel) rattaché à un nom pour le préciser ou le déterminer. Il répond à la question « quel… ? » ou « de qui ? » posée à partir du nom. Ici, « de Paul » complète le nom « livre » (quel livre ? → le livre de Paul). Il fait partie du GN sujet. Ne pas confondre avec le COI : ici, il n''y a pas de verbe transitif indirect mais un nom qui est complété.',
  'Confondre complément du nom et COI. Le complément du nom dépend d''un nom, pas d''un verbe. Tester : si on supprime « de Paul », le GN reste grammatical (« Le livre est sur la table ») mais perd de sa précision.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Complément circonstanciel de lieu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'qcm',
  'Dans la phrase « Il travaille dans sa chambre. », quelle est la fonction de « dans sa chambre » ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet direct"},{"id":"b","label":"Complément circonstanciel de lieu"},{"id":"c","label":"Complément circonstanciel de manière"},{"id":"d","label":"Complément du nom"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le complément circonstanciel (CC) est un complément de phrase qui indique les circonstances de l''action : lieu, temps, manière, cause, but, etc. Il est généralement supprimable et déplaçable. « Dans sa chambre » répond à la question « où ? » → CC de lieu. Il peut être déplacé : « Dans sa chambre, il travaille. » À distinguer du COD (pas de préposition, répond à « quoi ? ») et du complément du nom (dépend d''un nom).',
  'Confondre CC de lieu et CC de manière. « Dans sa chambre » indique où (lieu), pas comment (manière). « Dans sa chambre » ≠ « avec soin » (manière).',
  'valide',
  'CRPE Français',
  'premium',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Nommer la fonction du COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'reponse_courte',
  'Dans la phrase « Elle mange une pomme. », comment appelle-t-on la fonction grammaticale du groupe nominal « une pomme » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["COD","complément d''objet direct","complement d objet direct","complement d''objet direct"]}'::jsonb,
  'Le groupe nominal « une pomme » est complément d''objet direct (COD) du verbe « manger ». Il répond à la question « Elle mange quoi ? → une pomme. » Il est directement rattaché au verbe transitif direct, sans préposition, et peut être pronominalisé : « Elle en mange » ou « Elle la mange ».',
  'Répondre « complément direct » sans préciser « d''objet » : le terme correct dans la terminologie Éduscol est « complément d''objet direct » (COD), que l''on trouve parfois abrégé en « C.O.D. » dans les grammaires scolaires.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Complément circonstanciel de manière
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '5f060000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'anal_fonctions_syntaxiques',
  'Fonctions syntaxiques des groupes',
  'Standard',
  'qcm',
  'Dans la phrase « Elle chante merveilleusement. », quelle est la fonction de l''adverbe « merveilleusement » ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet direct"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Complément circonstanciel de manière"},{"id":"d","label":"Sujet du verbe"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''adverbe « merveilleusement » indique comment elle chante → il répond à la question « comment ? » et a la fonction de complément circonstanciel de manière. Les adverbes en -ment sont très souvent des CC de manière. Ils sont supprimables (« Elle chante. » reste grammatical) et déplaçables (« Merveilleusement, elle chante. »).',
  'Confondre « merveilleusement » (adverbe CC de manière) avec un attribut du sujet. Un attribut est relié au sujet par un verbe d''état, ce qui n''est pas le cas ici : « chanter » n''est pas un verbe d''état et l''adverbe modifie le procès, pas le sujet.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
