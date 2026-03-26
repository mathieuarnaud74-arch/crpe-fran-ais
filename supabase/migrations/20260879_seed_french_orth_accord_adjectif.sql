-- Série : Accord des adjectifs qualificatifs en genre et nombre
-- Subdomain : orthographe | topic_key : orth_accord_adjectif_qualificatif
-- 10 questions | UUIDs : bf6c0000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'bf6c0000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'qcm',
  'Quelle est la forme correctement accordée dans la phrase : « Les résultats sont _____ (positif). » ?',
  NULL,
  '[{"id":"a","label":"positifs"},{"id":"b","label":"positif"},{"id":"c","label":"positives"},{"id":"d","label":"positifes"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''adjectif qualificatif s''accorde en genre et en nombre avec le nom ou le pronom auquel il se rapporte. Ici, « résultats » est masculin pluriel : l''adjectif prend la marque du masculin pluriel → « positifs ». Le féminin de cet adjectif serait « positive » (positives au pluriel).',
  'Laisser l''adjectif au singulier (« positif ») ou lui donner une marque du féminin erronée (« positifes »). Le masculin pluriel des adjectifs en -f se termine en -fs.',
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
  'bf6c0000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Elle porte une robe marron », l''adjectif « marron » s''accorde et prend un -s au pluriel si le nom est pluriel.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Marron » est un adjectif de couleur dérivé d''un nom commun (la châtaigne marron). Selon la règle grammaticale, les adjectifs de couleur issus de noms sont invariables : une robe marron, des robes marron. D''autres adjectifs de couleur invariables : orange, crème, kaki, turquoise, ocre, ivoire, saumon.',
  'Appliquer la règle générale d''accord (-s au pluriel) à tous les adjectifs de couleur. Les adjectifs de couleur issus de noms sont invariables ; seuls les adjectifs de couleur « simples » (rouge, vert, bleu...) s''accordent normalement.',
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
  'bf6c0000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'qcm',
  'Quelle est la forme correcte du féminin de l''adjectif « beau » ?',
  NULL,
  '[{"id":"a","label":"beaue"},{"id":"b","label":"bele"},{"id":"c","label":"belle"},{"id":"d","label":"beau"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Beau » fait partie des adjectifs à féminin irrégulier : beau → belle. La forme masculine « beau » est une forme de liaison (utilisée devant consonne) ; devant voyelle on utilise « bel » (un bel homme). Le féminin est toujours « belle » (une belle maison). Même cas : nouveau → nouvelle, vieux → vieille, fou → folle, mou → molle.',
  'Écrire « beaue » par analogie avec les adjectifs réguliers. Le féminin des adjectifs irréguliers ne peut pas se deviner par simple ajout d''un -e : il faut les mémoriser.',
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
  'bf6c0000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'qcm',
  'Dans la phrase « Des yeux bleu clair », comment s''accorde l''adjectif de couleur composé « bleu clair » ?',
  NULL,
  '[{"id":"a","label":"bleus clairs"},{"id":"b","label":"bleu clairs"},{"id":"c","label":"bleu clair"},{"id":"d","label":"bleus clair"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les adjectifs de couleur composés (deux termes ou plus : bleu clair, vert foncé, rouge vif, gris perle) sont invariables. Ils ne s''accordent ni en genre ni en nombre. On écrit donc « des yeux bleu clair », « des robes vert foncé ».',
  'Accorder chaque élément séparément (« bleus clairs »). La règle des adjectifs de couleur composés est l''invariabilité totale, ce qui les distingue des adjectifs de couleur simples (des yeux bleus ✓, des robes vertes ✓).',
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
  'bf6c0000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans « des enfants sourds-muets », l''adjectif composé « sourds-muets » s''accorde aux deux éléments.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Dans un adjectif composé formé de deux adjectifs, les deux éléments s''accordent généralement (ils qualifient tous les deux le nom) : sourd-muet → sourds-muets (masculin pluriel). De même : court-vêtu → courts-vêtus, premier-né → premiers-nés. À distinguer des adjectifs composés avec un adverbe (nouveau-nés : invariable pour « nouveau » car il fonctionne comme adverbe).',
  'Croire que les adjectifs composés sont toujours invariables (comme les adjectifs de couleur composés). La règle est inverse : adj. + adj. → les deux s''accordent ; couleur composée → invariable.',
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
  'bf6c0000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'qcm',
  'Quel est le féminin de l''adjectif « doux » ?',
  NULL,
  '[{"id":"a","label":"douce"},{"id":"b","label":"douzse"},{"id":"c","label":"doux"},{"id":"d","label":"douxe"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Doux » fait partie des adjectifs en -x dont le féminin est irrégulier : le -x est remplacé par -ce → douce. Même cas : roux → rousse, faux → fausse, jaloux → jalouse. Le principe est que le son [s] du féminin correspond à différentes graphies (-ce, -sse) selon l''adjectif.',
  'Écrire « douxe » en ajoutant simplement un -e. Les adjectifs en -x n''ont pas de féminin régulier : le -x disparaît et est souvent remplacé.',
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
  'bf6c0000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'reponse_courte',
  'Accordez correctement l''adjectif entre parenthèses : « Ces deux filles sont (travailleur). »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["travailleuses"]}'::jsonb,
  'Le nom « filles » est féminin pluriel. Le féminin de « travailleur » est « travailleuse » (les adjectifs en -eur dont le féminin se forme en -euse : travailleur/travailleuse, menteur/menteuse, flatteur/flatteuse). Au pluriel féminin : travailleuses. En attribut du sujet, l''adjectif s''accorde avec le sujet.',
  'Écrire « travailleures » (féminin fautif) ou « travailleurs » (masculin pluriel). Le féminin des adjectifs en -eur n''est pas -eure mais -euse (sauf quelques exceptions comme inférieur/inférieure, supérieur/supérieure).',
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
  'bf6c0000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'qcm',
  'Dans « des tableaux grand format », l''adjectif « grand » est-il accordé correctement ?',
  NULL,
  '[{"id":"a","label":"Non : il faut écrire « grands format »"},{"id":"b","label":"Non : il faut écrire « grands formats »"},{"id":"c","label":"Oui : l''adjectif est employé comme adverbe et est invariable"},{"id":"d","label":"Non : il faut écrire « grand-formats »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans certaines expressions figées où l''adjectif est employé adverbialement (il modifie implicitement une autre notion), il reste invariable. « Grand format », « grand teint », « haut parleur » (haut-parleurs — ici le mot composé est figé) illustrent cet usage. La Grammaire Grevisse signale que « grand » dans de tels emplois figés fonctionne comme un adverbe et ne s''accorde pas.',
  'Accorder « grand » avec le nom pluriel et écrire « grands format ». En réalité, ces expressions sont des locutions figées où « grand » modifie la locution et non le nom directement.',
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
  'bf6c0000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans « Une femme médecin compétente », l''adjectif « compétente » s''accorde avec « femme » (féminin singulier).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''adjectif qualificatif s''accorde avec le nom qu''il qualifie. Dans cette phrase, « compétente » qualifie « femme médecin » (groupe nominal féminin singulier). L''accord se fait bien au féminin singulier : compétente. Notons que « médecin », ici utilisé en apposition, ne modifie pas le genre grammatical de « femme ».',
  'Croire que l''adjectif s''accorde avec le dernier nom (« médecin », qui est traditionnellement masculin). L''accord se fait toujours avec le nom noyau du groupe nominal, ici « femme ».',
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
  'bf6c0000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_accord_adjectif_qualificatif',
  'Accord des adjectifs qualificatifs',
  'Standard',
  'qcm',
  'Laquelle de ces phrases contient un accord d''adjectif correct ?',
  NULL,
  '[{"id":"a","label":"Des fleurs roses pâle ornent la table."},{"id":"b","label":"Elle a les yeux verts sombres."},{"id":"c","label":"Ils portent des vestes bleus marine."},{"id":"d","label":"J''aime les manteaux gris perles."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Rose pâle » est un adjectif de couleur composé (adjectif + adjectif modifiant la couleur) → invariable. On écrit donc « roses pâle » (rose s''accorde avec fleurs car c''est l''élément principal de couleur, mais « pâle » reste invariable). En réalité la phrase a est correcte car : roses s''accorde normalement avec fleurs (féminin pluriel) et pâle reste invariable. Réponse b : « verts sombres » — verts foncé serait invariable, mais « sombres » s''accorde → discutable. Les seules certitudes : marine (c) et perle (d) sont invariables comme noms-adjectifs, donc bleues marine (pas bleus marine) et gris perle (pas gris perles).',
  'Ne pas distinguer l''accord de l''adjectif de couleur principal (qui s''accorde : roses) des modificateurs de nuance (invariables : pâle, marine, perle, foncé, vif).',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
