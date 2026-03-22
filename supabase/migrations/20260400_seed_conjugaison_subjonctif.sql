-- ============================================================
-- Migration : Série Conjugaison — Le subjonctif présent et ses emplois (10 exercices)
-- UUID prefix : d3010000
-- topic_key  : conjugaison_subjonctif
-- ============================================================

-- Q1 — Facile — qcm — Identifier une forme au subjonctif présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Facile',
  'qcm',
  'Quelle forme verbale est correctement conjuguée au subjonctif présent ?',
  NULL,
  '[{"id":"a","label":"que je prens"},{"id":"b","label":"que je prenne"},{"id":"c","label":"que je prend"},{"id":"d","label":"que je prenais"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Au subjonctif présent, le verbe « prendre » se conjugue : que je prenne, que tu prennes, qu''il prenne, que nous prenions, que vous preniez, qu''ils prennent. Le radical est « prenn- » aux personnes du singulier et à la 3e personne du pluriel, et « pren- » aux 1re et 2e personnes du pluriel. Les terminaisons du subjonctif présent sont : -e, -es, -e, -ions, -iez, -ent.',
  'Les élèves confondent souvent les formes du subjonctif présent avec celles de l''indicatif présent, surtout pour les verbes du 3e groupe qui changent de radical.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Subjonctif après « il faut que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : après la locution « il faut que », le verbe de la subordonnée se met toujours au subjonctif.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La locution impersonnelle « il faut que » introduit systématiquement une proposition subordonnée conjonctive dont le verbe est au subjonctif. C''est l''un des cas les plus fréquents d''emploi du subjonctif en français. Exemple : « Il faut que tu fasses tes devoirs » (subjonctif présent de « faire »).',
  'Certains élèves écrivent « il faut que tu fais » (indicatif) au lieu de « il faut que tu fasses » (subjonctif), par analogie avec la construction sans « que » : « il faut faire ».',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — reponse_courte — Conjuguer au subjonctif présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Facile',
  'reponse_courte',
  'Conjuguez le verbe « être » à la 3e personne du singulier du subjonctif présent. (Donnez uniquement la forme verbale, sans pronom.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["soit","Soit"]}'::jsonb,
  'Le verbe « être » est irrégulier au subjonctif présent : que je sois, que tu sois, qu''il soit, que nous soyons, que vous soyez, qu''ils soient. Ces formes sont à mémoriser car elles ne se construisent pas à partir du radical de l''indicatif présent. « Être » et « avoir » sont les deux auxiliaires dont le subjonctif est totalement irrégulier.',
  'Les élèves confondent parfois « qu''il soit » (subjonctif) avec « qu''il est » (indicatif), en oubliant que « être » possède un radical spécifique au subjonctif.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Emploi du subjonctif après une conjonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Intermediaire',
  'qcm',
  'Quelle conjonction de subordination entraîne obligatoirement l''emploi du subjonctif dans la subordonnée ?',
  NULL,
  '[{"id":"a","label":"parce que"},{"id":"b","label":"bien que"},{"id":"c","label":"pendant que"},{"id":"d","label":"après que"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La conjonction « bien que » (valeur concessive) impose le subjonctif : « Bien qu''il soit fatigué, il continue. » En revanche, « parce que » (cause), « pendant que » (simultanéité) et « après que » (postériorité) se construisent avec l''indicatif. Parmi les conjonctions appelant le subjonctif, on trouve aussi : « pour que », « avant que », « à moins que », « quoique », « sans que ».',
  'L''emploi de l''indicatif après « bien que » est une erreur très fréquente, y compris chez les locuteurs natifs. Au CRPE, il faut connaître la liste des conjonctions exigeant le subjonctif.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — reponse_courte — Radical irrégulier au subjonctif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Intermediaire',
  'reponse_courte',
  'Complétez la phrase suivante avec le verbe « aller » au subjonctif présent : « Je souhaite qu''elle … à la bibliothèque. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["aille","Aille"]}'::jsonb,
  'Le verbe « aller » possède un radical irrégulier au subjonctif présent : que j''aille, que tu ailles, qu''il aille, que nous allions, que vous alliez, qu''ils aillent. Le radical « aill- » aux personnes du singulier et à la 3e personne du pluriel diffère du radical « all- » aux 1re et 2e personnes du pluriel. Ce verbe fait partie des subjonctifs irréguliers à connaître absolument.',
  'L''erreur fréquente consiste à écrire « qu''elle alle » ou « qu''elle va » en utilisant le radical de l''indicatif au lieu du radical irrégulier du subjonctif.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Subjonctif après un verbe de volonté
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Le professeur exige que les élèves … attentifs », quelle forme complète correctement la phrase ?',
  NULL,
  '[{"id":"a","label":"sont"},{"id":"b","label":"soient"},{"id":"c","label":"seraient"},{"id":"d","label":"seront"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « exiger » exprime la volonté et impose le subjonctif dans la subordonnée complétive introduite par « que ». La forme correcte est donc « soient » (subjonctif présent de « être », 3e personne du pluriel). Les verbes de volonté (vouloir, souhaiter, exiger, ordonner, demander…), de sentiment (craindre, regretter, se réjouir…) et de doute (douter) appellent le subjonctif.',
  'La confusion entre « sont » (indicatif) et « soient » (subjonctif) est classique. Il faut identifier le verbe de la principale pour déterminer si le subjonctif est requis.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Subjonctif du verbe « faire »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Intermediaire',
  'reponse_courte',
  'Conjuguez le verbe « faire » à la 2e personne du pluriel du subjonctif présent. (Donnez uniquement la forme verbale, sans pronom.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["fassiez","Fassiez"]}'::jsonb,
  'Le verbe « faire » au subjonctif présent se conjugue : que je fasse, que tu fasses, qu''il fasse, que nous fassions, que vous fassiez, qu''ils fassent. Le radical « fass- » est irrégulier et commun à toutes les personnes. La 2e personne du pluriel prend la terminaison « -iez », d''où « fassiez ».',
  'L''erreur courante est d''écrire « que vous faissiez » ou « que vous faites » en calquant sur les formes de l''indicatif. Le radical « fass- » du subjonctif est distinct du radical « fais- » de l''indicatif.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — qcm — Distinction subjonctif / indicatif dans un contexte ambigu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Avance',
  'qcm',
  'Dans quelle phrase le verbe souligné est-il au subjonctif présent et non à l''indicatif présent ?',
  NULL,
  '[{"id":"a","label":"Je pense qu''il travaille bien."},{"id":"b","label":"Il faut qu''il travaille davantage."},{"id":"c","label":"Je sais qu''il travaille ici."},{"id":"d","label":"Il dit qu''il travaille demain."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La forme « travaille » est identique à l''indicatif présent et au subjonctif présent pour les verbes du 1er groupe. C''est le contexte syntaxique qui permet de distinguer les deux modes. Après « il faut que » (locution impersonnelle de nécessité), le subjonctif est obligatoire. Après « je pense que », « je sais que » et « il dit que », on emploie l''indicatif car ces verbes expriment la certitude ou la déclaration, pas le doute ou la volonté.',
  'L''homophonie entre indicatif présent et subjonctif présent aux trois personnes du singulier des verbes du 1er groupe rend la distinction impossible par la seule forme : il faut analyser le contexte syntaxique.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — vrai_faux — Subjonctif après « après que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : la conjonction « après que » doit être suivie du subjonctif selon la norme grammaticale.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Selon la norme grammaticale traditionnelle, « après que » se construit avec l''indicatif, car l''action de la subordonnée est présentée comme réalisée (accomplie). On dit donc : « après qu''il est parti » (indicatif) et non « après qu''il soit parti ». En revanche, « avant que » appelle le subjonctif car l''action n''est pas encore réalisée. Cette distinction est un point classique des épreuves du CRPE.',
  'L''usage oral tend à généraliser le subjonctif après « après que » par analogie avec « avant que ». Cependant, en norme écrite soutenue et au CRPE, c''est l''indicatif qui est attendu.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — qcm — Valeur modale du subjonctif en proposition indépendante
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3010000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'conjugaison_subjonctif',
  'Le subjonctif présent : formes et emplois',
  'Avance',
  'qcm',
  'Dans la phrase « Qu''il vienne immédiatement ! », quelle est la valeur modale du subjonctif ?',
  NULL,
  '[{"id":"a","label":"Le souhait"},{"id":"b","label":"L''ordre (injonction)"},{"id":"c","label":"Le doute"},{"id":"d","label":"La concession"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans une proposition indépendante introduite par « que », le subjonctif peut exprimer l''ordre (injonction), le souhait ou la défense. Ici, le point d''exclamation et l''adverbe « immédiatement » marquent clairement l''injonction. Le subjonctif sert de substitut à l''impératif pour les personnes qui n''existent pas à l''impératif (3e personne). C''est un emploi du subjonctif en proposition indépendante, distinct de ses emplois en subordonnée.',
  'Les élèves associent souvent le subjonctif uniquement aux propositions subordonnées. Or il peut aussi apparaître en proposition indépendante pour exprimer un ordre à la 3e personne ou un souhait (« Qu''il repose en paix »).',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
