-- Migration: 10 exercices — Accords du participe passé
-- Série : orth_accords_participe_passe (Français, orthographe)
-- Accords avec être, avoir, verbes pronominaux — cas généraux et pièges
-- UUID prefix: f5e60000

-- Q1 — QCM — PP avec être : accord avec le sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'qcm',
  'Quelle est la forme correcte ? « Les filles sont ______ dans la cour. »',
  NULL,
  '[{"id":"a","label":"arrivé"},{"id":"b","label":"arrivés"},{"id":"c","label":"arrivées"},{"id":"d","label":"arrivée"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Lorsque le participe passé est employé avec l''auxiliaire ÊTRE, il s''accorde en genre et en nombre avec le sujet. Le sujet « les filles » est féminin pluriel, donc le participe passé prend la marque du féminin pluriel : « arrivées ». Cette règle est systématique et ne souffre aucune exception avec l''auxiliaire être (hors verbes pronominaux, qui suivent des règles propres). C''est une règle fondamentale de l''orthographe grammaticale au programme du CRPE.',
  'Accorder au masculin pluriel (« arrivés ») en oubliant de vérifier le genre du sujet. Avec l''auxiliaire être, il faut toujours identifier le genre ET le nombre du sujet.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — PP avec avoir : pas d'accord avec le sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Les enfants ont mangé leur goûter », le participe passé « mangé » ne s''accorde pas avec le sujet « les enfants » car l''auxiliaire est AVOIR.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le participe passé employé avec l''auxiliaire AVOIR ne s''accorde jamais avec le sujet du verbe. Ici, même si le sujet « les enfants » est masculin pluriel, le participe passé reste invariable sous la forme « mangé ». Avec avoir, l''accord ne se fait qu''avec le COD, et uniquement lorsque celui-ci est placé AVANT le verbe. Dans cette phrase, le COD « leur goûter » est placé après le verbe, donc aucun accord ne se fait. C''est la règle de base de l''accord du PP avec avoir.',
  'Accorder le PP avec le sujet par analogie avec l''auxiliaire être (écrire « mangés »). Avec avoir, le sujet n''a JAMAIS d''influence sur l''accord du participe passé.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — PP avec avoir : accord avec le COD antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'qcm',
  'Quelle est la forme correcte ? « Les fleurs que j''ai ______ sont magnifiques. »',
  NULL,
  '[{"id":"a","label":"cueilli"},{"id":"b","label":"cueillie"},{"id":"c","label":"cueillies"},{"id":"d","label":"cueillis"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Avec l''auxiliaire AVOIR, le participe passé s''accorde avec le COD lorsque celui-ci est placé AVANT le verbe. Ici, le COD est le pronom relatif « que », qui reprend « les fleurs » (féminin pluriel). Le COD étant antéposé, le participe passé s''accorde : « cueillies ». Pour identifier le COD antéposé, on repère le pronom relatif, le pronom personnel complément ou l''interrogation directe. C''est l''une des règles les plus fréquemment testées au CRPE en orthographe grammaticale.',
  'Laisser le PP invariable (« cueilli ») en appliquant mécaniquement la règle « avec avoir, pas d''accord ». Cette règle simplifiée omet le cas crucial du COD antéposé, qui déclenche bien l''accord.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — PP des verbes pronominaux réfléchis
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'reponse_courte',
  'Complétez avec la forme correcte du participe passé : « Elles se sont ______ les mains. » (verbe : laver)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["lavé","lave"]}'::jsonb,
  'Pour les verbes pronominaux réfléchis, on applique la règle de l''auxiliaire avoir : le PP s''accorde avec le COD si celui-ci est placé avant le verbe. Dans « Elles se sont lavé les mains », le pronom « se » est COI (= à elles-mêmes) et « les mains » est le COD, placé APRÈS le verbe. Il n''y a donc pas d''accord : « lavé » reste invariable. En revanche, dans « Elles se sont lavées » (sans COD après), « se » est COD antéposé et l''accord se fait. La distinction repose sur l''analyse fonctionnelle du pronom réfléchi.',
  'Accorder systématiquement le PP des verbes pronominaux avec le sujet (écrire « lavées ») sans vérifier si le pronom réfléchi est COD ou COI. Quand un COD suit le verbe, le pronom est COI et le PP reste invariable.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — PP suivi d'un infinitif : règle spéciale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'qcm',
  'Quelle est la forme correcte ? « Les chanteuses que j''ai ______ chanter étaient talentueuses. »',
  NULL,
  '[{"id":"a","label":"entendues"},{"id":"b","label":"entendu"},{"id":"c","label":"entendus"},{"id":"d","label":"entendue"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Lorsqu''un participe passé employé avec avoir est suivi d''un infinitif, il s''accorde avec le COD antéposé uniquement si ce COD fait l''action exprimée par l''infinitif. Ici, « les chanteuses » (COD antéposé, reprises par « que ») font l''action de « chanter » : ce sont elles qui chantent. Le PP « entendues » s''accorde donc au féminin pluriel. En revanche, dans « Les chansons que j''ai entendu chanter », les chansons ne chantent pas (elles sont chantées), donc le PP resterait invariable. Ce critère d''agentivité est la clé de la règle du PP suivi d''un infinitif.',
  'Appliquer mécaniquement l''invariabilité du PP devant un infinitif. Le PP s''accorde si le COD antéposé est l''agent de l''action exprimée par l''infinitif. Il faut se demander : le COD fait-il l''action de l''infinitif ?',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — PP avec avoir : COD postposé = pas d'accord
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Nous avons écrit des lettres », le participe passé « écrit » est invariable car le COD « des lettres » est placé après le verbe.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Avec l''auxiliaire avoir, le PP ne s''accorde avec le COD que si celui-ci est placé AVANT le verbe (COD antéposé). Dans « Nous avons écrit des lettres », le COD « des lettres » est postposé (placé après le PP), donc le participe passé reste invariable : « écrit ». Si l''on reformulait en antéposant le COD — « Les lettres que nous avons écrites » — le PP s''accorderait au féminin pluriel. La position du COD par rapport au PP est le critère déterminant.',
  'Croire que le PP avec avoir ne s''accorde jamais. La règle complète précise : accord avec le COD ANTÉPOSÉ. Il faut toujours vérifier la position du COD par rapport au participe passé.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — PP de verbes essentiellement pronominaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'reponse_courte',
  'Complétez avec la forme correcte du participe passé : « Elles se sont ______ de leur erreur. » (verbe : s''apercevoir)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["aperçues","apercues"]}'::jsonb,
  'Le verbe « s''apercevoir » (au sens de « se rendre compte ») est un verbe essentiellement pronominal dans cet emploi. Le participe passé des verbes essentiellement pronominaux s''accorde toujours avec le sujet, comme s''il était conjugué avec l''auxiliaire être. Le sujet « elles » est féminin pluriel, donc le PP s''écrit « aperçues ». Sont essentiellement pronominaux les verbes qui n''existent pas ou qui changent de sens à la forme non pronominale : s''enfuir, se souvenir, s''évanouir, s''abstenir, s''apercevoir (de)…',
  'Appliquer la règle du COD antéposé (règle des pronominaux réfléchis) aux verbes essentiellement pronominaux. Ces derniers ne se décomposent pas en COD/COI et s''accordent directement avec le sujet.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — PP avec être : attribut du sujet ou PP ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'qcm',
  'Dans la phrase « La porte est fermée », quelle est la fonction grammaticale de « fermée » ?',
  NULL,
  '[{"id":"a","label":"Participe passé dans un temps composé (passé composé passif)"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Complément d''agent"},{"id":"d","label":"Épithète du nom « porte »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase « La porte est fermée » est ambiguë : elle peut décrire un état (la porte est dans l''état « fermée ») ou une action passive (la porte est fermée par quelqu''un). Hors contexte, l''analyse privilégiée est celle de l''attribut du sujet : « fermée » exprime une qualité attribuée au sujet « la porte » via le verbe d''état « être ». Dans ce cas, « fermée » fonctionne comme un adjectif qualificatif attribut. Au CRPE, il est important de distinguer l''emploi adjectival du participe passé (attribut) de son emploi verbal (voix passive avec complément d''agent explicite ou implicite).',
  'Analyser systématiquement « être + participe passé » comme un temps composé passif. Sans complément d''agent ni contexte d''action, la construction « être + PP » décrit souvent un état : le PP est alors attribut du sujet, pas un élément de la voix passive.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — PP invariable : verbes impersonnels
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Les chaleurs qu''il a fait cet été étaient étouffantes », le participe passé « fait » reste invariable car le verbe « faire » est employé de manière impersonnelle.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le participe passé d''un verbe employé de manière impersonnelle (avec le pronom sujet « il » impersonnel) est toujours invariable. Dans « les chaleurs qu''il a fait », le « il » n''est pas un pronom personnel renvoyant à une personne, mais un pronom impersonnel. « Les chaleurs » n''est pas un véritable COD mais un complément du verbe impersonnel. Cette règle s''applique à tous les verbes impersonnels : « il a fallu », « il a neigé », « les efforts qu''il a fallu », « les orages qu''il y a eu ». Le PP reste toujours invariable dans ces constructions.',
  'Accorder « fait » avec « chaleurs » en analysant « que » comme un COD antéposé classique. Dans les tournures impersonnelles, le PP ne s''accorde jamais, même si un GN antéposé semble jouer le rôle de COD.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — PP avec "en" : cas particulier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f5e60000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_accords_participe_passe',
  'Accords du participe passé',
  'Standard',
  'reponse_courte',
  'Complétez avec la forme correcte du participe passé : « Des erreurs, j''en ai ______ beaucoup. » (verbe : commettre)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["commis"]}'::jsonb,
  'Lorsque le pronom « en » est COD, le participe passé reste généralement invariable. Dans « Des erreurs, j''en ai commis beaucoup », le pronom « en » reprend « des erreurs » et occupe la fonction de COD. Cependant, « en » est considéré comme un pronom partitif qui ne porte pas de marque de genre ni de nombre clairement identifiable. La tradition grammaticale et l''usage dominant prescrivent donc l''invariabilité du PP : « commis ». C''est la règle retenue dans les grammaires de référence et au CRPE. Certains grammairiens autorisent l''accord, mais l''invariabilité est la norme.',
  'Accorder le PP avec le nom repris par « en » (écrire « commises » en pensant à « des erreurs »). Le pronom « en » est traditionnellement considéré comme neutre et n''entraîne pas l''accord du participe passé.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
