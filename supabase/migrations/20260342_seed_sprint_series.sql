-- ============================================================
-- Sprint series: 3 × 10 quick QCM questions (grammaire, orthographe, conjugaison)
-- Designed for rapid-fire Sprint mode (×2 XP)
-- ============================================================

-- ── Sprint Grammaire ──────────────────────────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('b1010000-0000-0000-0000-000000000001', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile', 'qcm',
 'Dans « Le chat dort paisiblement », quelle est la nature de « paisiblement » ?',
 '[{"id":"a","label":"Adjectif"},{"id":"b","label":"Adverbe"},{"id":"c","label":"Nom"},{"id":"d","label":"Verbe"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Paisiblement » est un adverbe (modifie le verbe « dort »). Il répond à la question « comment ? ».', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000002', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile', 'qcm',
 'Quelle est la fonction du groupe « dans le jardin » dans « Il joue dans le jardin » ?',
 '[{"id":"a","label":"Sujet"},{"id":"b","label":"COD"},{"id":"c","label":"Complément circonstanciel de lieu"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Dans le jardin » indique le lieu : c''est un complément circonstanciel de lieu (CCL).', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000003', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile', 'qcm',
 'Dans « Marie mange une pomme », quel est le COD ?',
 '[{"id":"a","label":"Marie"},{"id":"b","label":"mange"},{"id":"c","label":"une pomme"},{"id":"d","label":"une"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Le COD répond à la question « quoi ? » après le verbe : Marie mange quoi ? → une pomme.', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000004', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile', 'qcm',
 'Selon la terminologie Éduscol 2021, « Comme ce paysage est beau ! » est une phrase de type déclaratif et de forme :',
 '[{"id":"a","label":"Négative"},{"id":"b","label":"Passive"},{"id":"c","label":"Exclamative"},{"id":"d","label":"Emphatique"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Selon Éduscol 2021, l''exclamation est une FORME de phrase, pas un type. Les trois types sont : déclaratif, interrogatif, impératif. Ici la phrase est de type déclaratif et de forme exclamative (marquée par « comme » et le point d''exclamation).', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000005', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire', 'qcm',
 'Dans « Les fleurs que j''ai cueillies sont fanées », quel est l''antécédent de « que » ?',
 '[{"id":"a","label":"je"},{"id":"b","label":"Les fleurs"},{"id":"c","label":"fanées"},{"id":"d","label":"cueillies"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Que » est un pronom relatif dont l''antécédent est « Les fleurs ». Le participe passé s''accorde avec le COD antéposé.', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000006', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire', 'qcm',
 'Quelle proposition contient un attribut du sujet ?',
 '[{"id":"a","label":"Il mange une pomme."},{"id":"b","label":"Elle semble fatiguée."},{"id":"c","label":"Nous partons demain."},{"id":"d","label":"Tu regardes le ciel."}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Fatiguée » est attribut du sujet « elle » via le verbe d''état « semble ».', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000007', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire', 'qcm',
 'Dans « Pierre et Marie chantent », le sujet est :',
 '[{"id":"a","label":"Pierre"},{"id":"b","label":"Marie"},{"id":"c","label":"Pierre et Marie"},{"id":"d","label":"chantent"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Le sujet est « Pierre et Marie » (sujet composé coordonné par « et »), d''où le verbe au pluriel.', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000008', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire', 'qcm',
 'Quel mot est une conjonction de subordination ?',
 '[{"id":"a","label":"mais"},{"id":"b","label":"donc"},{"id":"c","label":"lorsque"},{"id":"d","label":"car"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Lorsque » introduit une subordonnée circonstancielle de temps — c''est une conjonction de subordination. « Mais » et « car » sont des conjonctions de coordination. Attention : « donc » est un adverbe de liaison (et non une conjonction de coordination selon la terminologie Éduscol).', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000009', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Avance', 'qcm',
 'Dans « Il faut que tu viennes », à quel mode est conjugué « viennes » ?',
 '[{"id":"a","label":"Indicatif"},{"id":"b","label":"Subjonctif"},{"id":"c","label":"Conditionnel"},{"id":"d","label":"Impératif"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Après « il faut que », on utilise le subjonctif. « Viennes » est au subjonctif présent.', 'valide', 'free', true),

('b1010000-0000-0000-0000-000000000010', 'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Avance', 'qcm',
 'Quelle phrase contient une proposition subordonnée relative ?',
 '[{"id":"a","label":"Je pense qu''il viendra."},{"id":"b","label":"L''homme qui court est mon voisin."},{"id":"c","label":"Si tu viens, préviens-moi."},{"id":"d","label":"Il pleut donc je reste."}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Qui court » est une proposition subordonnée relative introduite par le pronom relatif « qui », complément de l''antécédent « l''homme ».', 'valide', 'free', true);

-- ── Sprint Orthographe ────────────────────────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('b1020000-0000-0000-0000-000000000001', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Facile', 'qcm',
 'Quelle est l''orthographe correcte ?',
 '[{"id":"a","label":"Les enfants manges."},{"id":"b","label":"Les enfants mangent."},{"id":"c","label":"Les enfants mange."},{"id":"d","label":"Les enfants mangé."}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le verbe « manger » au présent avec le sujet pluriel « les enfants » prend la terminaison -ent (3e personne du pluriel).', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000002', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Facile', 'qcm',
 'Complétez : « Les fleurs ___ sont jolies. »',
 '[{"id":"a","label":"blancs"},{"id":"b","label":"blanche"},{"id":"c","label":"blanches"},{"id":"d","label":"blanc"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'L''adjectif s''accorde avec le nom « fleurs » (féminin pluriel) → « blanches ».', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000003', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Facile', 'qcm',
 '« Elles se sont ___ la main. » Quel participe passé ?',
 '[{"id":"a","label":"serré"},{"id":"b","label":"serrée"},{"id":"c","label":"serrés"},{"id":"d","label":"serrées"}]'::jsonb,
 '{"mode":"single_choice","value":"a"}'::jsonb,
 'Avec un verbe pronominal, si le COD est après le verbe (« la main »), le participe ne s''accorde pas avec le sujet. → « serré ».', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000004', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Intermediaire', 'qcm',
 'Choisissez la bonne orthographe : « ___ de problèmes à résoudre. »',
 '[{"id":"a","label":"Quelque soit le nombre"},{"id":"b","label":"Quel que soit le nombre"},{"id":"c","label":"Quelques soient le nombre"},{"id":"d","label":"Quels que soient le nombre"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Quel que » s''écrit en deux mots devant « soit ». Il s''accorde avec le sujet : « le nombre » (masc. sing.) → « quel que soit ».', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000005', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Intermediaire', 'qcm',
 '« La robe qu''elle a ___ est rouge. »',
 '[{"id":"a","label":"acheté"},{"id":"b","label":"achetée"},{"id":"c","label":"achetés"},{"id":"d","label":"achetées"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Avec « avoir », le participe passé s''accorde avec le COD placé avant : « qu'' » reprend « la robe » (fém. sing.) → « achetée ».', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000006', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Intermediaire', 'qcm',
 'Complétez : « Ces enfants, je les ai ___ jouer. »',
 '[{"id":"a","label":"vu"},{"id":"b","label":"vus"},{"id":"c","label":"vue"},{"id":"d","label":"vues"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Avec un infinitif qui suit, le participe s''accorde avec le COD antéposé si celui-ci fait l''action de l''infinitif. « Les » (enfants, masc. plur.) jouent → « vus ».', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000007', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Intermediaire', 'qcm',
 'Quel homonyme convient ? « ___ va au marché. »',
 '[{"id":"a","label":"On"},{"id":"b","label":"Ont"},{"id":"c","label":"On n''"},{"id":"d","label":"Hont"}]'::jsonb,
 '{"mode":"single_choice","value":"a"}'::jsonb,
 '« On » est un pronom personnel sujet (3e personne du singulier). « Ont » est le verbe « avoir » conjugué.', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000008', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Avance', 'qcm',
 '« Ci-___ les documents ___ . »',
 '[{"id":"a","label":"joint, demandé"},{"id":"b","label":"joints, demandés"},{"id":"c","label":"jointes, demandées"},{"id":"d","label":"joint, demandés"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Ci-joint » placé après le nom s''accorde. « Les documents » (masc. plur.) → « ci-joints, demandés ».', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000009', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Avance', 'qcm',
 '« Demi » dans « deux heures et ___ » s''écrit :',
 '[{"id":"a","label":"demi"},{"id":"b","label":"demie"},{"id":"c","label":"demis"},{"id":"d","label":"demies"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Placé après le nom et relié par « et », « demi » s''accorde en genre avec le nom. « Heures » est féminin → « demie ».', 'valide', 'free', true),

('b1020000-0000-0000-0000-000000000010', 'Francais', 'orthographe', 'sprint_orthographe_accords', 'Sprint — Accords', 'Avance', 'qcm',
 '« Les couleurs ___ elle a ___ sa robe sont vives. »',
 '[{"id":"a","label":"dont — teinte"},{"id":"b","label":"dont — teint"},{"id":"c","label":"don''t — teintes"},{"id":"d","label":"dont — teintes"}]'::jsonb,
 '{"mode":"single_choice","value":"a"}'::jsonb,
 '« Dont » est un pronom relatif. Le participe « teint » s''accorde avec le COD « sa robe » (fém. sing.) → « teinte ».', 'valide', 'free', true);

-- ── Sprint Conjugaison ────────────────────────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('b1030000-0000-0000-0000-000000000001', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Facile', 'qcm',
 'À quel temps est conjugué « je chantais » ?',
 '[{"id":"a","label":"Présent"},{"id":"b","label":"Passé composé"},{"id":"c","label":"Imparfait"},{"id":"d","label":"Passé simple"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'La terminaison -ais correspond à l''imparfait de l''indicatif (1er groupe, 1re personne du singulier).', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000002', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Facile', 'qcm',
 'Conjuguez « finir » au futur simple, 1re personne du singulier :',
 '[{"id":"a","label":"je finirai"},{"id":"b","label":"je finirais"},{"id":"c","label":"je finis"},{"id":"d","label":"je finiré"}]'::jsonb,
 '{"mode":"single_choice","value":"a"}'::jsonb,
 'Au futur simple, les verbes du 2e groupe gardent l''infinitif + terminaisons : -ai, -as, -a… → « je finirai ».', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000003', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Facile', 'qcm',
 'Quel est le participe passé de « prendre » ?',
 '[{"id":"a","label":"prendu"},{"id":"b","label":"pris"},{"id":"c","label":"prend"},{"id":"d","label":"prenou"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le participe passé de « prendre » est irrégulier : « pris ».', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000004', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Intermediaire', 'qcm',
 '« Nous ___ au cinéma hier soir. » (aller, passé composé)',
 '[{"id":"a","label":"sommes allé"},{"id":"b","label":"avons allé"},{"id":"c","label":"sommes allés"},{"id":"d","label":"avons allés"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Aller » se conjugue avec « être » au passé composé. Le participe s''accorde avec le sujet « nous » → « sommes allés ».', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000005', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Intermediaire', 'qcm',
 'Quel verbe est au conditionnel présent ?',
 '[{"id":"a","label":"je chanterai"},{"id":"b","label":"je chanterais"},{"id":"c","label":"je chantais"},{"id":"d","label":"je chante"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le conditionnel présent se forme avec le radical du futur + terminaisons de l''imparfait : -ais → « je chanterais ».', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000006', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Intermediaire', 'qcm',
 '« Il ___ ses devoirs quand sa mère arriva. » (faire, plus-que-parfait)',
 '[{"id":"a","label":"a fait"},{"id":"b","label":"avait fait"},{"id":"c","label":"aura fait"},{"id":"d","label":"faisait"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le plus-que-parfait = auxiliaire à l''imparfait + participe passé. « Avoir » à l''imparfait → « avait fait ».', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000007', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Intermediaire', 'qcm',
 'Au passé simple, « ils » avec le verbe « être » donne :',
 '[{"id":"a","label":"ils étaient"},{"id":"b","label":"ils furent"},{"id":"c","label":"ils seront"},{"id":"d","label":"ils ont été"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le passé simple de « être » : je fus, tu fus, il fut, nous fûmes, vous fûtes, ils furent.', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000008', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Avance', 'qcm',
 'Quelle forme verbale est au subjonctif imparfait ?',
 '[{"id":"a","label":"que je chante"},{"id":"b","label":"que je chantasse"},{"id":"c","label":"que je chanterais"},{"id":"d","label":"que j''ai chanté"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le subjonctif imparfait se forme sur le radical du passé simple + terminaisons -asse/-isse/-usse. → « que je chantasse ».', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000009', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Avance', 'qcm',
 'Identifiez le temps : « Quand tu auras fini, nous partirons. »',
 '[{"id":"a","label":"Futur simple"},{"id":"b","label":"Futur antérieur"},{"id":"c","label":"Passé composé"},{"id":"d","label":"Conditionnel passé"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Auras fini » = auxiliaire au futur simple + participe passé = futur antérieur. Il exprime une action achevée avant une autre au futur.', 'valide', 'free', true),

('b1030000-0000-0000-0000-000000000010', 'Francais', 'conjugaison', 'sprint_conjugaison_temps', 'Sprint — Temps verbaux', 'Avance', 'qcm',
 '« Pourvu qu''il ___ beau demain ! » (faire, subjonctif présent)',
 '[{"id":"a","label":"fait"},{"id":"b","label":"fasse"},{"id":"c","label":"fera"},{"id":"d","label":"ferait"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Après « pourvu que », on utilise le subjonctif. « Faire » au subjonctif présent : que je fasse, qu''il fasse.', 'valide', 'free', true);
