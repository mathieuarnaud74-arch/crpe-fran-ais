-- ============================================================
-- Migration : 10 exercices surlignage — Groupes syntaxiques dans des phrases littéraires
-- Série : Surlignage des groupes syntaxiques
-- Sous-domaine : grammaire | topic_key : grammaire_surlignage_groupes
-- UUID prefix : e1050000
-- Type : surlignage_propositions (10/10)
-- Niveaux : Facile (3), Intermediaire (4), Avancé (3)
-- ============================================================

-- Q1 — Facile — La Fontaine, Le Corbeau et le Renard
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Facile',
  'surlignage_propositions',
  'Identifiez le groupe nominal sujet (GN sujet) et le groupe verbal (GV) dans cette phrase tirée de La Fontaine.',
  'Maître Corbeau, sur un arbre perché, tenait en son bec un fromage.',
  '[{"id":"s1","label":"Maître Corbeau"},{"id":"s2","label":"sur un arbre perché"},{"id":"s3","label":"tenait"},{"id":"s4","label":"en son bec"},{"id":"s5","label":"un fromage"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"}],"mapping":{"s1":"gn_sujet","s2":"gn_sujet","s3":"gv","s4":"gv","s5":"gv"}}'::jsonb,
  'Le GN sujet est « Maître Corbeau, sur un arbre perché » : le nom noyau « Corbeau » est complété par le titre « Maître » et l''apposition participiale « sur un arbre perché ». Le GV comprend le verbe « tenait » avec ses compléments « en son bec » (CC lieu) et « un fromage » (COD).',
  'Les candidats oublient souvent d''intégrer l''apposition « sur un arbre perché » au GN sujet. Cette expansion du nom fait partie du groupe sujet étendu, même si elle est détachée par des virgules.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Saint-Exupéry, Le Petit Prince
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Facile',
  'surlignage_propositions',
  'Délimitez le GN sujet, le groupe verbal et le complément circonstanciel dans cette phrase du Petit Prince.',
  'Les grandes personnes aiment les chiffres depuis toujours.',
  '[{"id":"s1","label":"Les grandes personnes"},{"id":"s2","label":"aiment"},{"id":"s3","label":"les chiffres"},{"id":"s4","label":"depuis toujours"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc","label":"Complément circonstanciel","color":"green"}],"mapping":{"s1":"gn_sujet","s2":"gv","s3":"gv","s4":"cc"}}'::jsonb,
  'Le GN sujet « Les grandes personnes » a pour noyau le nom « personnes », déterminé par « les » et qualifié par l''adjectif épithète « grandes ». Le GV contient le verbe « aiment » et son COD « les chiffres ». « Depuis toujours » est un CC de temps, déplaçable et supprimable.',
  'L''erreur fréquente est de séparer « les chiffres » du GV. Or le COD fait partie intégrante du groupe verbal — il complète le verbe de façon essentielle.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Colette, La Maison de Claudine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Facile',
  'surlignage_propositions',
  'Repérez le GN sujet et le groupe verbal dans cette phrase inspirée de Colette.',
  'Le vieux chat gris dormait paisiblement au soleil.',
  '[{"id":"s1","label":"Le vieux chat gris"},{"id":"s2","label":"dormait"},{"id":"s3","label":"paisiblement"},{"id":"s4","label":"au soleil"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"}],"mapping":{"s1":"gn_sujet","s2":"gv","s3":"gv","s4":"gv"}}'::jsonb,
  'Le GN sujet est « Le vieux chat gris » : le nom noyau « chat » est encadré par deux adjectifs épithètes (« vieux » antéposé et « gris » postposé) et un déterminant article défini « le ». Le GV comprend le verbe « dormait » accompagné de l''adverbe « paisiblement » et du CC lieu « au soleil ».',
  'Les candidats CRPE classent parfois « paisiblement » et « au soleil » comme des éléments extérieurs au GV. Avec un verbe intransitif comme « dormir », ces compléments circonstanciels font partie du prédicat.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — Hugo, Les Misérables (avec COD et COI)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet, le groupe verbal, le COD et le COI dans cette phrase inspirée de Hugo.',
  'Le vieil évêque offrit son pain au prisonnier affamé.',
  '[{"id":"s1","label":"Le vieil évêque"},{"id":"s2","label":"offrit"},{"id":"s3","label":"son pain"},{"id":"s4","label":"au prisonnier affamé"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cod","label":"COD","color":"green"},{"id":"coi","label":"COI","color":"purple"}],"mapping":{"s1":"gn_sujet","s2":"gv","s3":"cod","s4":"coi"}}'::jsonb,
  'Le GN sujet « Le vieil évêque » contient le nom noyau « évêque ». Le verbe « offrit » constitue le noyau du GV. « Son pain » est COD (on offre quelque chose). « Au prisonnier affamé » est COI introduit par la préposition « à » contractée avec l''article (on offre à quelqu''un).',
  'La confusion COD/COI est classique au CRPE. Le test de pronominalisation aide : « Il le lui offrit » — « le » = COD, « lui » = COI. Le COI est toujours introduit par une préposition (à, de).',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Daudet, Lettres de mon moulin (CC lieu + CC manière)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez le GN sujet, le groupe verbal, le complément circonstanciel de lieu et le complément circonstanciel de manière dans cette phrase inspirée de Daudet.',
  'Le vieux berger provençal gardait ses chèvres avec patience dans la garrigue embaumée.',
  '[{"id":"s1","label":"Le vieux berger provençal"},{"id":"s2","label":"gardait"},{"id":"s3","label":"ses chèvres"},{"id":"s4","label":"avec patience"},{"id":"s5","label":"dans la garrigue embaumée"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc_maniere","label":"CC de manière","color":"green"},{"id":"cc_lieu","label":"CC de lieu","color":"purple"}],"mapping":{"s1":"gn_sujet","s2":"gv","s3":"gv","s4":"cc_maniere","s5":"cc_lieu"}}'::jsonb,
  'Le GN sujet « Le vieux berger provençal » a pour noyau « berger » avec deux adjectifs épithètes. Le GV comprend « gardait ses chèvres » (verbe + COD). « Avec patience » est un CC de manière (comment ?) et « dans la garrigue embaumée » un CC de lieu (où ?). Les deux CC sont déplaçables et supprimables.',
  'Les candidats confondent souvent le CC de manière et le CC de moyen. « Avec patience » répond à « comment ? » (manière), tandis qu''un CC de moyen répondrait à « avec quoi ? » (instrument concret).',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Maupassant, Bel-Ami (relative enchâssée)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GN sujet (avec son expansion), le groupe verbal et le complément circonstanciel de temps.',
  'L''homme qui marchait d''un pas pressé traversa le boulevard désert à la tombée de la nuit.',
  '[{"id":"s1","label":"L''homme"},{"id":"s2","label":"qui marchait d''un pas pressé"},{"id":"s3","label":"traversa"},{"id":"s4","label":"le boulevard désert"},{"id":"s5","label":"à la tombée de la nuit"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc_temps","label":"CC de temps","color":"green"}],"mapping":{"s1":"gn_sujet","s2":"gn_sujet","s3":"gv","s4":"gv","s5":"cc_temps"}}'::jsonb,
  'Le GN sujet étendu est « L''homme qui marchait d''un pas pressé » : la proposition subordonnée relative « qui marchait d''un pas pressé » est une expansion du nom « homme ». Le GV contient « traversa le boulevard désert » (verbe + COD). « À la tombée de la nuit » est un CC de temps (quand ?).',
  'L''erreur typique est de ne pas intégrer la relative au GN sujet. Au CRPE, il faut savoir que la subordonnée relative épithète fait partie du groupe nominal qu''elle complète.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — Flaubert, Madame Bovary (attribut du sujet)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez le GN sujet, le verbe attributif et l''attribut du sujet dans cette phrase inspirée de Flaubert.',
  'Les rêves de la jeune femme semblaient immenses et fragiles comme des bulles de savon.',
  '[{"id":"s1","label":"Les rêves de la jeune femme"},{"id":"s2","label":"semblaient"},{"id":"s3","label":"immenses et fragiles"},{"id":"s4","label":"comme des bulles de savon"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Verbe attributif","color":"amber"},{"id":"attr","label":"Attribut du sujet","color":"green"}],"mapping":{"s1":"gn_sujet","s2":"gv","s3":"attr","s4":"attr"}}'::jsonb,
  'Le GN sujet « Les rêves de la jeune femme » a pour noyau « rêves », complété par le CDN « de la jeune femme ». « Semblaient » est un verbe d''état (attributif). « Immenses et fragiles comme des bulles de savon » constitue l''attribut du sujet : il caractérise le sujet via le verbe d''état.',
  'Au CRPE, les candidats confondent attribut du sujet et COD. L''attribut se construit avec un verbe d''état (être, sembler, paraître, devenir...) et ne peut pas être pronominalisé par « le/la/les » de la même façon qu''un COD.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — Camus, L'Étranger (phrase complexe, participiale)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Avance',
  'surlignage_propositions',
  'Dans cette phrase inspirée de Camus, identifiez le GN sujet, le GV, le CC de lieu et la proposition participiale.',
  'Le soleil écrasant la terre de sa chaleur, les hommes marchaient en silence vers le cimetière.',
  '[{"id":"s1","label":"Le soleil"},{"id":"s2","label":"écrasant la terre"},{"id":"s3","label":"de sa chaleur"},{"id":"s4","label":"les hommes"},{"id":"s5","label":"marchaient"},{"id":"s6","label":"en silence"},{"id":"s7","label":"vers le cimetière"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"participiale","label":"Prop. participiale","color":"red"},{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cc_lieu","label":"CC de lieu","color":"green"}],"mapping":{"s1":"participiale","s2":"participiale","s3":"participiale","s4":"gn_sujet","s5":"gv","s6":"gv","s7":"cc_lieu"}}'::jsonb,
  'La proposition participiale « Le soleil écrasant la terre de sa chaleur » a son propre sujet (« le soleil ») et un participe présent (« écrasant »). Elle fonctionne comme un CC de cause détaché. Le GN sujet de la principale est « les hommes ». Le GV « marchaient en silence » contient le verbe et un CC de manière intégré. « Vers le cimetière » est CC de lieu.',
  'La proposition participiale est souvent mal identifiée au CRPE. Son critère distinctif : elle possède son propre sujet, différent de celui de la principale. C''est ce qui la distingue d''un simple groupe participial apposé.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — Proust, Du côté de chez Swann (GN sujet long + multiples compléments)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Avance',
  'surlignage_propositions',
  'Identifiez le GN sujet, le groupe verbal, le COD, le CC de temps et le CC de manière dans cette phrase inspirée de Proust.',
  'L''odeur persistante des aubépines en fleur remplissait délicatement la chambre de tante Léonie chaque matin de printemps.',
  '[{"id":"s1","label":"L''odeur persistante"},{"id":"s2","label":"des aubépines en fleur"},{"id":"s3","label":"remplissait"},{"id":"s4","label":"délicatement"},{"id":"s5","label":"la chambre de tante Léonie"},{"id":"s6","label":"chaque matin de printemps"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cod","label":"COD","color":"green"},{"id":"cc_maniere","label":"CC de manière","color":"purple"},{"id":"cc_temps","label":"CC de temps","color":"pink"}],"mapping":{"s1":"gn_sujet","s2":"gn_sujet","s3":"gv","s4":"cc_maniere","s5":"cod","s6":"cc_temps"}}'::jsonb,
  'Le GN sujet étendu est « L''odeur persistante des aubépines en fleur » : le nom noyau « odeur » est enrichi d''un adjectif épithète et d''un CDN. Le verbe « remplissait » est le noyau du GV. « Délicatement » est CC de manière (adverbe). « La chambre de tante Léonie » est COD. « Chaque matin de printemps » est CC de temps.',
  'Distinguer CDN (« des aubépines ») et COI est un piège classique. Le CDN complète un nom (« l''odeur des aubépines »), tandis que le COI complète un verbe. La manipulation de suppression aide : on ne peut pas supprimer « des aubépines » sans altérer le sens du GN sujet.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — Zola, Germinal (phrase avec relative et apposition)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1050000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'grammaire_surlignage_groupes',
  'Surlignage des groupes syntaxiques',
  'Avance',
  'surlignage_propositions',
  'Délimitez le GN sujet, l''apposition, le groupe verbal, le COD et le CC de lieu dans cette phrase inspirée de Zola.',
  'Étienne, ancien mécanicien sans emploi, cherchait du travail dans les mines du Nord depuis des semaines.',
  '[{"id":"s1","label":"Étienne"},{"id":"s2","label":"ancien mécanicien sans emploi"},{"id":"s3","label":"cherchait"},{"id":"s4","label":"du travail"},{"id":"s5","label":"dans les mines du Nord"},{"id":"s6","label":"depuis des semaines"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gn_sujet","label":"GN Sujet","color":"blue"},{"id":"apposition","label":"Apposition","color":"red"},{"id":"gv","label":"Groupe verbal","color":"amber"},{"id":"cod","label":"COD","color":"green"},{"id":"cc_lieu","label":"CC de lieu","color":"purple"},{"id":"cc_temps","label":"CC de temps","color":"pink"}],"mapping":{"s1":"gn_sujet","s2":"apposition","s3":"gv","s4":"cod","s5":"cc_lieu","s6":"cc_temps"}}'::jsonb,
  'Le GN sujet est le nom propre « Étienne ». « Ancien mécanicien sans emploi » est une apposition détachée : elle apporte une information supplémentaire sur le sujet, entre virgules, et est supprimable. « Cherchait » est le noyau verbal. « Du travail » est COD (chercher quelque chose). « Dans les mines du Nord » est CC de lieu. « Depuis des semaines » est CC de temps.',
  'L''apposition est souvent confondue avec l''épithète au CRPE. L''apposition est détachée par des virgules, elle est supprimable, et elle caractérise le référent du nom (ici Étienne) sans lien grammatical direct — contrairement à l''épithète qui est intégrée au GN.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
