-- Migration: 10 exercices — Compléments d'objet : COD, COI et COS
-- Série : gram_complements_objet_cod_coi (Français, grammaire)
-- Identifier et distinguer COD, COI, COS dans des phrases variées
-- UUID prefix: f4d50000

-- Q1 — QCM — Identifier le COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'qcm',
  'Dans la phrase « Les élèves lisent un roman d''aventures », quel est le COD ?',
  NULL,
  '[{"id":"a","label":"les élèves"},{"id":"b","label":"un roman d''aventures"},{"id":"c","label":"d''aventures"},{"id":"d","label":"lisent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le COD (complément d''objet direct) répond à la question « quoi ? » ou « qui ? » posée après le verbe. Les élèves lisent QUOI ? → « un roman d''aventures ». Le COD se construit directement (sans préposition) après le verbe. Tests de vérification : (1) pronominalisation : « Les élèves le lisent » (pronom COD « le ») ; (2) passivation : « Un roman d''aventures est lu par les élèves » (le COD devient sujet). « D''aventures » est un complément du nom « roman », pas un COD.',
  'Confondre le COD avec un complément du nom. « D''aventures » complète « roman » (de quel type de roman ?), pas le verbe « lisent ». Le COD complète toujours le VERBE, pas un nom.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — QCM — Identifier le COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'qcm',
  'Dans la phrase « Marie pense à ses vacances », quel est le COI et quelle préposition l''introduit ?',
  NULL,
  '[{"id":"a","label":"à ses vacances — préposition « à »"},{"id":"b","label":"ses vacances — pas de préposition (COD)"},{"id":"c","label":"Marie — sujet, pas complément"},{"id":"d","label":"à ses vacances — complément circonstanciel de lieu"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le COI (complément d''objet indirect) est relié au verbe par une préposition (à, de, en, sur…). Marie pense À QUOI ? → « à ses vacances ». La préposition « à » est imposée par le verbe « penser à ». Tests : (1) pronominalisation : « Marie y pense » (pronom COI « y » pour « à + chose ») ; (2) le COI n''est pas déplaçable ni supprimable sans changer le sens → c''est un complément essentiel du verbe. Ce n''est pas un CC de lieu car on ne peut pas répondre « où ? » de manière sensée.',
  'Confondre COI et complément circonstanciel. Le CC est supprimable et déplaçable ; le COI est essentiel au verbe (« Marie pense » seul est incomplet). La préposition du COI est imposée par le verbe, celle du CC est libre.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Vrai/Faux — Distinction COD / COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Il parle de son projet », « de son projet » est un COD.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! « De son projet » est un COI, pas un COD. La préposition « de » relie le complément au verbe « parler de ». Le COD se construit SANS préposition (il est « direct »). Le COI se construit AVEC une préposition (il est « indirect »). Il parle DE QUOI ? → « de son projet » = COI. Pronominalisation : « Il en parle » (pronom COI « en » pour « de + chose »). Si c''était un COD, on dirait « Il le parle », ce qui est incorrect.',
  'Croire que tout complément qui répond à « quoi ? » est un COD. La présence d''une préposition fait toute la différence : avec préposition = indirect (COI), sans préposition = direct (COD).',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Le COS (complément d'objet second)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'qcm',
  'Dans « L''enseignante distribue les cahiers aux élèves », identifiez le COD et le COS.',
  NULL,
  '[{"id":"a","label":"COD = les cahiers ; COS = aux élèves"},{"id":"b","label":"COD = aux élèves ; COS = les cahiers"},{"id":"c","label":"COD = les cahiers ; CC de lieu = aux élèves"},{"id":"d","label":"COI = les cahiers ; COI = aux élèves"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''enseignante distribue QUOI ? → « les cahiers » = COD (sans préposition). À QUI ? → « aux élèves » = COS (complément d''objet second), aussi appelé COI second. Le COS est un COI qui accompagne un COD dans la même phrase. Il désigne souvent le destinataire ou le bénéficiaire de l''action. Construction typique : sujet + verbe + COD + COS (à/de + GN). Autres exemples : « offrir un cadeau à quelqu''un », « priver quelqu''un de quelque chose ».',
  'Analyser « aux élèves » comme un complément circonstanciel de lieu. Ce n''est pas un lieu mais un destinataire, essentiel au verbe « distribuer à ». Test : « L''enseignante leur distribue les cahiers » (pronom COS « leur »).',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Réponse courte — Pronominalisation du COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'reponse_courte',
  'Réécrivez la phrase en remplaçant le COD par un pronom : « Les enfants mangent une tarte aux pommes. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Les enfants la mangent","Les enfants la mangent."]}'::jsonb,
  'Le COD « une tarte aux pommes » est remplacé par le pronom personnel COD « la » (féminin singulier, car « tarte » est féminin singulier). Le pronom COD se place avant le verbe conjugué : « Les enfants la mangent. » Les pronoms COD sont : me, te, le/la, nous, vous, les. La pronominalisation est le test le plus fiable pour identifier un COD : si on peut remplacer le groupe par le/la/les/l'', c''est un COD.',
  'Placer le pronom après le verbe (« Les enfants mangent la ») comme en anglais. En français, le pronom COD se place AVANT le verbe conjugué (sauf à l''impératif affirmatif : « Mange-la ! »).',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — COD ou attribut du sujet ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'qcm',
  'Dans « Cette femme est médecin », « médecin » est-il un COD ou un attribut du sujet ?',
  NULL,
  '[{"id":"a","label":"COD — il répond à la question « quoi ? »"},{"id":"b","label":"Attribut du sujet — il est relié au sujet par le verbe « être »"},{"id":"c","label":"Complément du nom — il précise « femme »"},{"id":"d","label":"COI — il est introduit par une préposition implicite"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Médecin » est un attribut du sujet, pas un COD. L''attribut du sujet exprime une qualité ou une identité du sujet via un verbe d''état (être, sembler, devenir, paraître, rester, demeurer…). Test : « Cette femme = médecin » → il y a une relation d''identité entre le sujet et l''attribut. Un COD ne désigne jamais la même réalité que le sujet : dans « Elle soigne un patient », « un patient » ≠ « elle ». La distinction COD / attribut est un piège fréquent au CRPE.',
  'Confondre COD et attribut du sujet. Le verbe « être » (et les verbes d''état) ne peut JAMAIS avoir de COD. Après « être », c''est toujours un attribut.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — COD et passivation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : seules les phrases contenant un COD peuvent être mises à la voix passive.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! La transformation passive consiste à faire du COD le sujet de la phrase passive. Sans COD, pas de passivation possible. « Le chat mange la souris » → « La souris est mangée par le chat » (COD « la souris » → sujet). Mais « Le chat dort » (pas de COD) → aucune forme passive possible. « Le chat pense à sa gamelle » (COI, pas de COD) → pas de passivation non plus. C''est un excellent test pour confirmer la présence d''un COD.',
  'Croire que le COI peut aussi devenir sujet de la phrase passive. En français standard, seul le COD peut subir la passivation. Un verbe transitif indirect (parler de, penser à) ne se met pas au passif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Réponse courte — Identifier la fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'reponse_courte',
  'Quelle est la fonction de « lui » dans la phrase « Je lui ai prêté mon livre » ? (Répondez par le sigle)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["COS","COI","cos","coi"]}'::jsonb,
  '« Lui » est un COS (complément d''objet second) — ou COI si on préfère la terminologie simplifiée. J''ai prêté QUOI ? → « mon livre » = COD. À QUI ? → « lui » = COS. Le pronom « lui » remplace un groupe introduit par « à » (prêter quelque chose À quelqu''un). Les pronoms COS sont : me, te, lui, nous, vous, leur. Le COS est toujours indirect (introduit par « à » ou « de ») et coexiste avec un COD dans la même phrase.',
  'Analyser « lui » comme un COD. Les pronoms « lui » et « leur » sont toujours des COI/COS (= à lui, à eux). Les pronoms COD sont : le, la, les.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Verbe transitif direct, indirect ou double
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'qcm',
  'Classez le verbe « donner » dans « Elle donne un bonbon à sa sœur » : est-il transitif direct, transitif indirect ou doublement transitif ?',
  NULL,
  '[{"id":"a","label":"Transitif direct (il a un COD)"},{"id":"b","label":"Transitif indirect (il a un COI)"},{"id":"c","label":"Doublement transitif (il a un COD et un COS)"},{"id":"d","label":"Intransitif (il n''a pas de complément d''objet)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Donner » est ici doublement transitif : il admet un COD (« un bonbon ») et un COS (« à sa sœur »). Un verbe transitif direct a un COD (manger, lire, voir…). Un verbe transitif indirect a un COI (parler de, penser à…). Un verbe doublement transitif a les deux (donner qqch à qqn, offrir qqch à qqn, priver qqn de qqch…). Un verbe intransitif n''a aucun complément d''objet (dormir, mourir, arriver…).',
  'Dire « transitif direct » en ne voyant que le COD et en ignorant le COS. Le terme « doublement transitif » (ou « ditransitif ») indique que le verbe accepte deux compléments d''objet.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Piège : CC ou COI ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f4d50000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'gram_complements_objet_cod_coi',
  'Compléments d''objet : COD, COI et COS',
  'Standard',
  'qcm',
  'Dans « Elle habite à Paris », « à Paris » est-il un COI ou un complément circonstanciel de lieu ?',
  NULL,
  '[{"id":"a","label":"COI — car il est introduit par la préposition « à »"},{"id":"b","label":"CC de lieu — car il est déplaçable et répond à « où ? »"},{"id":"c","label":"COS — car il accompagne un COD implicite"},{"id":"d","label":"Attribut du sujet — car « habiter » est un verbe d''état"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« À Paris » est un complément circonstanciel de lieu, pas un COI. Tests : (1) déplacement : « À Paris, elle habite » → la phrase reste correcte ; (2) question : « Où habite-t-elle ? » → « à Paris » ; (3) le COI répond à « à quoi / à qui / de quoi / de qui » et non à « où / quand / comment ». La présence d''une préposition ne suffit pas à faire un COI : c''est la nature du complément (essentiel au verbe vs circonstanciel) et la question qui comptent. Piège fréquent au CRPE !',
  'Croire que toute préposition « à » introduit un COI. La préposition « à » peut introduire un COI (penser à), un CC de lieu (habiter à), un CC de temps (à midi), un COS (donner à). C''est le sens et le rapport au verbe qui déterminent la fonction.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
