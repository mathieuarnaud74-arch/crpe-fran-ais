-- ============================================================
-- Migration : 2 séries Conjugaison (20 exercices)
-- UUID prefix : d301–d302
-- ============================================================

-- ############################################################
-- SÉRIE 1 : conj_passe_simple_irreguliers — Le passé simple des verbes irréguliers
-- ############################################################

-- Q1 — tenir → tint
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Quelle est la forme correcte du passé simple du verbe « tenir » à la 3e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"il tena"},{"id":"b","label":"il tint"},{"id":"c","label":"il tenut"},{"id":"d","label":"il tenit"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « tenir » se conjugue au passé simple sur la base tin- : je tins, tu tins, il tint, nous tînmes, vous tîntes, ils tinrent. C''est un passé simple en -in, caractéristique de tenir et venir et leurs composés. Ce type de passé simple est dit « à base réduite » et fait partie des formes verbales irrégulières attendues au CRPE.',
  'Construire une forme régulière *tena ou *tenit sur le modèle du 1er ou 2e groupe, alors que tenir a un passé simple en -in.',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — venir → vint
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Conjuguez le verbe « venir » au passé simple à la 1re personne du pluriel.',
  NULL,
  '[{"id":"a","label":"nous venîmes"},{"id":"b","label":"nous vînmes"},{"id":"c","label":"nous vinmes"},{"id":"d","label":"nous venâmes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « venir » au passé simple donne : je vins, tu vins, il vint, nous vînmes, vous vîntes, ils vinrent. L''accent circonflexe sur le « î » est obligatoire aux 1re et 2e personnes du pluriel : c''est une marque distinctive du passé simple qui le différencie du présent. Cette règle s''applique à tous les composés de venir (revenir, devenir, parvenir, etc.).',
  'Oublier l''accent circonflexe sur « vînmes » ou reconstruire une forme en *venîmes à partir du radical du présent.',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — acquérir → acquit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Quelle est la forme correcte du passé simple du verbe « acquérir » à la 3e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"il acquéra"},{"id":"b","label":"il acquérit"},{"id":"c","label":"il acquit"},{"id":"d","label":"il acquît"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le verbe « acquérir » a un passé simple irrégulier construit sur la base acqu- : j''acquis, tu acquis, il acquit, nous acquîmes, vous acquîtes, ils acquirent. Le radical perd le « ér » de l''infinitif. C''est un passé simple en -i(s/t), différent du passé simple en -in de tenir/venir. La confusion entre ces deux types est fréquente au CRPE.',
  'Conserver le radical acquér- de l''infinitif (*acquérit) ou confondre avec le type en -in (*acquint).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — naître → naquit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Complétez : « L''enfant _______ un matin de printemps. » (naître, passé simple, 3e pers. sg.)',
  NULL,
  '[{"id":"a","label":"naissit"},{"id":"b","label":"naîtrit"},{"id":"c","label":"naquit"},{"id":"d","label":"naquît"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le verbe « naître » a un passé simple très irrégulier construit sur le radical naqu- : je naquis, tu naquis, il naquit, nous naquîmes, vous naquîtes, ils naquirent. Ce radical est issu du latin nascere/nascui. À la 3e personne du singulier, il n''y a pas d''accent circonflexe (l''accent circonflexe apparaît aux 1re et 2e personnes du pluriel uniquement).',
  'Inventer un radical basé sur le présent (*naissit) ou ajouter un accent circonflexe non requis à la 3e personne (*naquît).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — croître → crût
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Quelle est la forme correcte du passé simple du verbe « croître » à la 3e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"il crut"},{"id":"b","label":"il crût"},{"id":"c","label":"il croissa"},{"id":"d","label":"il croissit"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « croître » conserve l''accent circonflexe à toutes les formes du passé simple pour se distinguer du verbe « croire » : je crûs, tu crûs, il crût, nous crûmes, vous crûtes, ils crûrent. Sans l''accent, « il crut » serait le passé simple de « croire ». Cette distinction graphique par l''accent circonflexe est un point d''orthographe grammaticale très attendu au CRPE.',
  'Confondre avec le passé simple de « croire » (il crut, sans accent) ou utiliser un radical basé sur le participe présent (*croissit).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — résoudre → résolut
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Conjuguez « résoudre » au passé simple à la 3e personne du singulier.',
  NULL,
  '[{"id":"a","label":"il résolva"},{"id":"b","label":"il résoudit"},{"id":"c","label":"il résolut"},{"id":"d","label":"il résolvit"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le verbe « résoudre » a un passé simple en -u- : je résolus, tu résolus, il résolut, nous résolûmes, vous résolûtes, ils résolurent. Le radical est résol- (et non résouv- comme au présent, ni résolv-). Ce verbe appartient au groupe des verbes en -oudre (absoudre, dissoudre) qui partagent cette conjugaison irrégulière au passé simple.',
  'Construire une forme sur le radical du présent résouv- (*résoudit) ou sur un modèle du 1er groupe (*résolva).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — vaincre → vainquit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Complétez : « L''armée _______ l''ennemi après de longs combats. » (vaincre, passé simple, 3e pers. sg.)',
  NULL,
  '[{"id":"a","label":"vainquit"},{"id":"b","label":"vaincut"},{"id":"c","label":"vaincra"},{"id":"d","label":"vainquît"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le verbe « vaincre » se conjugue au passé simple sur le radical vainqu- : je vainquis, tu vainquis, il vainquit, nous vainquîmes, vous vainquîtes, ils vainquirent. Le « c » de l''infinitif se transforme en « qu » devant les désinences, ce qui est cohérent avec l''alternance c/qu observable dans toute la conjugaison de ce verbe (je vaincs, nous vainquons). Pas d''accent circonflexe à la 3e personne du singulier.',
  'Écrire *vaincut en conservant le « c » au lieu du « qu », ou ajouter un accent circonflexe non requis (*vainquît).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — coudre → cousit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Quelle est la forme correcte du passé simple du verbe « coudre » à la 3e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"il couda"},{"id":"b","label":"il coudrit"},{"id":"c","label":"il cousut"},{"id":"d","label":"il cousit"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Le verbe « coudre » a un passé simple en -i- construit sur le radical cous- : je cousis, tu cousis, il cousit, nous cousîmes, vous cousîtes, ils cousirent. Le radical cous- est le même qu''au participe passé (cousu) mais avec les désinences en -i. Attention : la désinence est bien -it (type en -i) et non -ut (type en -u), contrairement à ce que le participe passé « cousu » pourrait laisser croire.',
  'Confondre le type de passé simple et écrire *cousut (type en -u) au lieu de cousit (type en -i), par analogie avec le participe passé « cousu ».',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — moudre → moulut
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Conjuguez « moudre » au passé simple à la 3e personne du singulier.',
  NULL,
  '[{"id":"a","label":"il moudit"},{"id":"b","label":"il mouda"},{"id":"c","label":"il moulut"},{"id":"d","label":"il moulit"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le verbe « moudre » a un passé simple en -u- construit sur le radical moul- : je moulus, tu moulus, il moulut, nous moulûmes, vous moulûtes, ils moulurent. Ce radical moul- est le même que celui du participe passé « moulu ». Contrairement à « coudre » (qui a un passé simple en -i), « moudre » suit le modèle en -u, ce qui est une source fréquente de confusion entre ces deux verbes.',
  'Confondre avec le type de passé simple de « coudre » et écrire *moulit au lieu de moulut, ou inventer une forme régulière *moudit.',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — pluriel irrégulier : ils tinrent / ils vinrent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_passe_simple_irreguliers',
  'Le passé simple des verbes irréguliers',
  'Avance',
  'qcm',
  'Quelle est la forme correcte du passé simple du verbe « devenir » à la 3e personne du pluriel ?',
  NULL,
  '[{"id":"a","label":"ils devenirent"},{"id":"b","label":"ils devinrent"},{"id":"c","label":"ils devinèrent"},{"id":"d","label":"ils devînrent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « devenir », composé de « venir », suit exactement la même conjugaison au passé simple : je devins, tu devins, il devint, nous devînmes, vous devîntes, ils devinrent. La 3e personne du pluriel se termine en -inrent (et non *-inèrent). Tous les composés de venir (revenir, parvenir, prévenir, survenir, etc.) suivent ce modèle sans exception.',
  'Ajouter un « è » parasite (*devinèrent) par analogie avec le passé simple du 1er groupe (ils chantèrent), ou conserver le radical complet de l''infinitif (*devenirent).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################
-- SÉRIE 2 : conj_imperatif_pieges — L'impératif : les pièges orthographiques
-- ############################################################

-- Q1 — 2e pers. sg. du 1er groupe : pas de -s
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte de l''impératif présent du verbe « manger » à la 2e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"manges"},{"id":"b","label":"mange"},{"id":"c","label":"mangez"},{"id":"d","label":"manges-le"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'À l''impératif présent, les verbes du 1er groupe perdent le « s » de la 2e personne du singulier : on écrit « mange » et non *« manges ». Cette règle s''applique également aux verbes du 3e groupe qui se conjuguent comme le 1er groupe à cette personne (ouvrir → ouvre, cueillir → cueille). C''est une différence fondamentale entre l''indicatif présent (tu manges) et l''impératif (mange).',
  'Conserver le « s » de l''indicatif présent et écrire *manges au lieu de mange.',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — le -s euphonique devant « en »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'On dit « Mange ta soupe ! » sans « s ». Mais comment écrit-on l''impératif de « manger » suivi du pronom « en » ?',
  NULL,
  '[{"id":"a","label":"Mange-en !"},{"id":"b","label":"Manges-en !"},{"id":"c","label":"Mange en !"},{"id":"d","label":"Mangen !"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Devant les pronoms « en » et « y », on rétablit le « s » à la 2e personne du singulier de l''impératif des verbes du 1er groupe pour des raisons d''euphonie (liaison en [z]) : « Manges-en ! », « Penses-y ! ». Ce « s » dit euphonique est relié au pronom par un trait d''union. C''est l''une des rares exceptions où un verbe du 1er groupe à l''impératif prend un « s » à la 2e personne.',
  'Oublier de rétablir le « s » euphonique devant « en » et écrire *Mange-en au lieu de Manges-en.',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — vas-y avec le « s » euphonique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte de l''impératif du verbe « aller » suivi de « y » ?',
  NULL,
  '[{"id":"a","label":"Va-y !"},{"id":"b","label":"Vas-y !"},{"id":"c","label":"Va y !"},{"id":"d","label":"Vaz-y !"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''impératif de « aller » à la 2e personne est normalement « va » (sans « s »). Cependant, devant le pronom « y », on ajoute un « s » euphonique pour permettre la liaison en [z] : « Vas-y ! ». En revanche, on écrit « Va à la boulangerie ! » sans « s » car le mot suivant n''est pas le pronom « y ». Cette règle est analogue à celle de « Manges-en » pour le 1er groupe.',
  'Écrire *Va-y sans le « s » euphonique, ou inversement écrire *Vas à l''école en ajoutant un « s » quand il n''est pas suivi du pronom « y ».',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — savoir → sache
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte de l''impératif présent du verbe « savoir » à la 2e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"sais"},{"id":"b","label":"save"},{"id":"c","label":"sache"},{"id":"d","label":"saie"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le verbe « savoir » a un impératif irrégulier formé sur le radical du subjonctif présent : sache, sachons, sachez. Il fait partie des rares verbes dont l''impératif ne se forme pas sur le radical de l''indicatif présent. Seuls trois verbes ont un impératif véritablement irrégulier en français : être (sois), avoir (aie) et savoir (sache). Cette propriété est un classique des questions de conjugaison au CRPE.',
  'Utiliser la forme de l''indicatif présent *sais au lieu de la forme irrégulière sache.',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — être → sois/soyons/soyez
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Conjuguez le verbe « être » à l''impératif présent à la 1re personne du pluriel.',
  NULL,
  '[{"id":"a","label":"sommes"},{"id":"b","label":"soyons"},{"id":"c","label":"soions"},{"id":"d","label":"soyez"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''impératif du verbe « être » est entièrement irrégulier et emprunte ses formes au subjonctif présent : sois, soyons, soyez. La 1re personne du pluriel est donc « soyons » (avec un « y »), à ne pas confondre avec la 2e personne du pluriel « soyez ». On ne peut en aucun cas utiliser les formes de l''indicatif (*sommes, *êtes) pour l''impératif.',
  'Confondre la 1re et la 2e personne du pluriel (soyons vs soyez), ou écrire *soions sans le « y ».',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — avoir → aie/ayons/ayez
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte de l''impératif présent du verbe « avoir » à la 2e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"as"},{"id":"b","label":"aies"},{"id":"c","label":"aie"},{"id":"d","label":"ais"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''impératif du verbe « avoir » est irrégulier : aie, ayons, ayez. La 2e personne du singulier est « aie » sans « s » final. Attention : au subjonctif présent, on écrit « que tu aies » avec un « s », mais à l''impératif, le « s » disparaît (comme pour les verbes du 1er groupe). « Avoir » est, avec « être » et « savoir », l''un des trois verbes à impératif construit sur le radical du subjonctif.',
  'Ajouter un « s » et écrire *aies (forme du subjonctif) au lieu de aie (forme de l''impératif), ou utiliser la forme de l''indicatif *as.',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — cueillir → cueille (comme le 1er groupe)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte de l''impératif présent du verbe « cueillir » à la 2e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"cueills"},{"id":"b","label":"cueille"},{"id":"c","label":"cueilles"},{"id":"d","label":"cueillis"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « cueillir », bien qu''appartenant au 3e groupe, se conjugue au présent de l''indicatif et à l''impératif comme un verbe du 1er groupe : je cueille, tu cueilles → impératif : cueille (sans « s »). C''est le cas également d''offrir (offre), ouvrir (ouvre), souffrir (souffre) et couvrir (couvre). Ces verbes du 3e groupe en -ir suivent les désinences du 1er groupe au présent et à l''impératif.',
  'Écrire *cueilles avec un « s » (forme de l''indicatif) ou *cueillis en appliquant les désinences habituelles du 3e groupe en -ir (comme « finis »).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — offrir → offre (comme le 1er groupe)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Complétez : « _______ -lui ce livre pour son anniversaire ! » (offrir, impératif, 2e pers. sg.)',
  NULL,
  '[{"id":"a","label":"Offres"},{"id":"b","label":"Offre"},{"id":"c","label":"Offris"},{"id":"d","label":"Offres-lui"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Comme « cueillir », le verbe « offrir » (3e groupe) se conjugue à l''impératif comme un verbe du 1er groupe : « offre » sans « s ». Le pronom COI « lui » se place après le verbe à l''impératif et est relié par un trait d''union, ce qui donne « Offre-lui ». La forme complète dans la phrase est donc « Offre-lui ce livre ». La présence du pronom complément ne modifie pas l''orthographe du verbe.',
  'Ajouter un « s » (*Offres-lui) par confusion avec l''indicatif, ou utiliser les désinences du 2e groupe (*Offris).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — retiens (2e groupe apparent) : le -s se maintient
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte de l''impératif présent du verbe « retenir » à la 2e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"retien"},{"id":"b","label":"retiens"},{"id":"c","label":"retient"},{"id":"d","label":"retienne"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « retenir » (3e groupe) conserve le « s » à la 2e personne du singulier de l''impératif : « retiens ». En effet, la suppression du « s » ne concerne que les verbes du 1er groupe (en -er) et les quelques verbes du 3e groupe conjugués comme le 1er groupe (ouvrir, cueillir, etc.). Pour tous les autres verbes du 2e et du 3e groupe, le « s » final est maintenu : finis, prends, retiens, viens, etc.',
  'Supprimer le « s » par analogie avec le 1er groupe (*retien), en oubliant que cette règle ne s''applique qu''aux verbes en -er et assimilés.',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — synthèse : identifier la forme fautive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_imperatif_pieges',
  'L''impératif : les pièges orthographiques',
  'Intermediaire',
  'qcm',
  'Parmi ces formes à l''impératif, laquelle est incorrectement orthographiée ?',
  NULL,
  '[{"id":"a","label":"Prends ton cahier !"},{"id":"b","label":"Parle plus fort !"},{"id":"c","label":"Ouvres la fenêtre !"},{"id":"d","label":"Sache que je suis là."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La forme fautive est « *Ouvres la fenêtre ! ». Le verbe « ouvrir », bien qu''il appartienne au 3e groupe, se conjugue à l''impératif comme un verbe du 1er groupe : la forme correcte est « Ouvre » sans « s ». Les trois autres formes sont correctes : « Prends » (3e groupe, le « s » est maintenu), « Parle » (1er groupe, pas de « s »), « Sache » (impératif irrégulier de savoir). Cette question de synthèse mobilise les trois règles étudiées dans la série.',
  'Penser que « ouvrir » garde le « s » comme les autres verbes du 3e groupe, alors qu''il suit le modèle du 1er groupe (comme cueillir, offrir, souffrir, couvrir).',
  'valide',
  'CRPE Français V4 — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;