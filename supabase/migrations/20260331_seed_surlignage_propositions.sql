-- Seed : 10 exercices de délimitation de propositions (surlignage interactif)
-- Série : "Délimiter les propositions dans la phrase complexe"
-- Sous-domaine : grammaire | topic_key : delimitation_propositions

-- Q1 — Coordination simple (et)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez les deux propositions de cette phrase en attribuant chaque segment à la bonne proposition.',
  NULL,
  '[{"id":"s1","label":"Le chat"},{"id":"s2","label":"dort"},{"id":"s3","label":"sur le canapé"},{"id":"s4","label":"et"},{"id":"s5","label":"le chien"},{"id":"s6","label":"joue"},{"id":"s7","label":"dans le jardin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Proposition 1","color":"blue"},{"id":"p2","label":"Proposition 2","color":"amber"}],"mapping":{"s1":"p1","s2":"p1","s3":"p1","s4":"p2","s5":"p2","s6":"p2","s7":"p2"}}'::jsonb,
  'Cette phrase contient deux propositions indépendantes coordonnées par « et ». P1 : « Le chat dort sur le canapé » — P2 : « et le chien joue dans le jardin ». La conjonction de coordination « et » est rattachée à la seconde proposition qu''elle introduit.',
  'Beaucoup de candidats oublient de rattacher la conjonction « et » à la seconde proposition. Elle fait partie intégrante de P2 car elle l''introduit.',
  'valide',
  'CRPE Français — Délimitation propositions',
  'free',
  true
);

-- Q2 — Subordonnée relative (qui)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la proposition principale et la proposition subordonnée relative.',
  NULL,
  '[{"id":"s1","label":"L''élève"},{"id":"s2","label":"qui"},{"id":"s3","label":"travaille"},{"id":"s4","label":"régulièrement"},{"id":"s5","label":"réussit"},{"id":"s6","label":"ses examens"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Prop. principale","color":"blue"},{"id":"p2","label":"Sub. relative","color":"amber"}],"mapping":{"s1":"p1","s2":"p2","s3":"p2","s4":"p2","s5":"p1","s6":"p1"}}'::jsonb,
  'La proposition principale est « L''élève réussit ses examens » (sujet + verbe + COD). La subordonnée relative « qui travaille régulièrement » est enchâssée dans la principale : elle complète le nom « élève ». Le pronom relatif « qui » appartient à la subordonnée.',
  'L''erreur fréquente est de considérer « L''élève qui travaille régulièrement » comme un seul bloc de la principale. Or « qui travaille régulièrement » est bien une proposition à part entière (avec son propre verbe conjugué).',
  'valide',
  'CRPE Français — Délimitation propositions',
  'free',
  true
);

-- Q3 — Subordonnée conjonctive (parce que)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez la proposition principale et la subordonnée circonstancielle de cause.',
  NULL,
  '[{"id":"s1","label":"Les enfants"},{"id":"s2","label":"restent"},{"id":"s3","label":"à l''intérieur"},{"id":"s4","label":"parce qu''"},{"id":"s5","label":"il"},{"id":"s6","label":"pleut"},{"id":"s7","label":"très fort"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Prop. principale","color":"blue"},{"id":"p2","label":"Sub. circonstancielle","color":"amber"}],"mapping":{"s1":"p1","s2":"p1","s3":"p1","s4":"p2","s5":"p2","s6":"p2","s7":"p2"}}'::jsonb,
  'P1 (principale) : « Les enfants restent à l''intérieur ». P2 (subordonnée circonstancielle de cause) : « parce qu''il pleut très fort ». La locution conjonctive « parce que » introduit la subordonnée et en fait partie.',
  'On confond parfois « parce que » avec une simple conjonction de coordination comme « car ». Or « parce que » introduit une subordonnée (verbe conjugué « pleut ») tandis que « car » coordonne deux propositions indépendantes.',
  'valide',
  'CRPE Français — Délimitation propositions',
  'free',
  true
);

-- Q4 — Juxtaposition (virgule)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Cette phrase contient deux propositions juxtaposées. Délimitez-les.',
  NULL,
  '[{"id":"s1","label":"Le soleil"},{"id":"s2","label":"se couche"},{"id":"s3","label":"à l''horizon,"},{"id":"s4","label":"les oiseaux"},{"id":"s5","label":"regagnent"},{"id":"s6","label":"leur nid"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Proposition 1","color":"blue"},{"id":"p2","label":"Proposition 2","color":"amber"}],"mapping":{"s1":"p1","s2":"p1","s3":"p1","s4":"p2","s5":"p2","s6":"p2"}}'::jsonb,
  'Deux propositions indépendantes juxtaposées (séparées par une virgule). P1 : « Le soleil se couche à l''horizon » — P2 : « les oiseaux regagnent leur nid ». Il n''y a ni conjonction ni mot subordonnant : c''est la ponctuation seule qui les relie.',
  'Certains candidats cherchent un lien de subordination là où il n''y en a pas. La virgule seule suffit à juxtaposer deux propositions indépendantes.',
  'valide',
  'CRPE Français — Délimitation propositions',
  'free',
  true
);

-- Q5 — Subordonnée complétive (que)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la proposition principale et la proposition subordonnée complétive.',
  NULL,
  '[{"id":"s1","label":"Je"},{"id":"s2","label":"pense"},{"id":"s3","label":"que"},{"id":"s4","label":"cette leçon"},{"id":"s5","label":"est"},{"id":"s6","label":"très importante"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Prop. principale","color":"blue"},{"id":"p2","label":"Sub. complétive","color":"amber"}],"mapping":{"s1":"p1","s2":"p1","s3":"p2","s4":"p2","s5":"p2","s6":"p2"}}'::jsonb,
  'P1 (principale) : « Je pense ». P2 (subordonnée complétive, COD du verbe « penser ») : « que cette leçon est très importante ». La conjonction « que » appartient à la subordonnée qu''elle introduit. Cette complétive remplit la fonction de COD.',
  'L''erreur classique est de rattacher « que » à la principale. Or « que » est le subordonnant qui introduit et fait partie de la proposition subordonnée.',
  'valide',
  'CRPE Français — Délimitation propositions',
  'free',
  true
);

-- Q6 — Subordonnée temporelle (quand)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez la proposition principale et la subordonnée circonstancielle de temps.',
  NULL,
  '[{"id":"s1","label":"Quand"},{"id":"s2","label":"la cloche"},{"id":"s3","label":"sonne,"},{"id":"s4","label":"les élèves"},{"id":"s5","label":"se rangent"},{"id":"s6","label":"dans la cour"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Sub. temporelle","color":"blue"},{"id":"p2","label":"Prop. principale","color":"amber"}],"mapping":{"s1":"p1","s2":"p1","s3":"p1","s4":"p2","s5":"p2","s6":"p2"}}'::jsonb,
  'P1 (subordonnée circonstancielle de temps) : « Quand la cloche sonne ». P2 (principale) : « les élèves se rangent dans la cour ». Ici la subordonnée est antéposée (placée avant la principale). La conjonction « quand » introduit la subordonnée temporelle.',
  'Quand la subordonnée est placée en tête de phrase, les candidats la confondent souvent avec la principale. Il faut repérer le verbe de la subordonnée (« sonne ») et celui de la principale (« se rangent ») pour bien distinguer les deux propositions.',
  'valide',
  'CRPE Français — Délimitation propositions',
  'free',
  true
);

-- Q7 — Trois propositions (principale + 2 subordonnées)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Avance',
  'surlignage_propositions',
  'Cette phrase contient trois propositions. Attribuez chaque segment à la bonne proposition.',
  NULL,
  '[{"id":"s1","label":"L''homme"},{"id":"s2","label":"qui"},{"id":"s3","label":"porte"},{"id":"s4","label":"un chapeau"},{"id":"s5","label":"affirme"},{"id":"s6","label":"qu''"},{"id":"s7","label":"il"},{"id":"s8","label":"connaît"},{"id":"s9","label":"la réponse"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Prop. principale","color":"blue"},{"id":"p2","label":"Sub. relative","color":"amber"},{"id":"p3","label":"Sub. complétive","color":"emerald"}],"mapping":{"s1":"p1","s2":"p2","s3":"p2","s4":"p2","s5":"p1","s6":"p3","s7":"p3","s8":"p3","s9":"p3"}}'::jsonb,
  'Trois propositions : Principale « L''homme affirme » — Sub. relative « qui porte un chapeau » (complète « homme ») — Sub. complétive « qu''il connaît la réponse » (COD de « affirme »). La principale est discontinue : le sujet « L''homme » et le verbe « affirme » sont séparés par la relative enchâssée.',
  'La difficulté est de repérer que la principale est « coupée » par la relative. « L''homme » et « affirme » appartiennent bien à la même proposition principale, même s''ils ne sont pas côte à côte.',
  'valide',
  'CRPE Français — Délimitation propositions',
  'premium',
  true
);

-- Q8 — Subordonnée hypothétique (si)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez la proposition principale et la subordonnée circonstancielle de condition.',
  NULL,
  '[{"id":"s1","label":"Si"},{"id":"s2","label":"tu"},{"id":"s3","label":"révises"},{"id":"s4","label":"chaque jour,"},{"id":"s5","label":"tu"},{"id":"s6","label":"réussiras"},{"id":"s7","label":"le concours"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Sub. de condition","color":"blue"},{"id":"p2","label":"Prop. principale","color":"amber"}],"mapping":{"s1":"p1","s2":"p1","s3":"p1","s4":"p1","s5":"p2","s6":"p2","s7":"p2"}}'::jsonb,
  'P1 (subordonnée circonstancielle de condition) : « Si tu révises chaque jour ». P2 (principale) : « tu réussiras le concours ». Le « si » conditionnel introduit la subordonnée qui exprime la condition (protase), tandis que la principale exprime la conséquence (apodose).',
  'Certains inversent principale et subordonnée. La subordonnée est celle introduite par « si » ; la principale est celle qui porte la conséquence (ici « tu réussiras le concours »).',
  'valide',
  'CRPE Français — Délimitation propositions',
  'free',
  true
);

-- Q9 — Coordination avec « mais »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez les deux propositions coordonnées par « mais ».',
  NULL,
  '[{"id":"s1","label":"Il"},{"id":"s2","label":"voudrait"},{"id":"s3","label":"partir"},{"id":"s4","label":"en vacances,"},{"id":"s5","label":"mais"},{"id":"s6","label":"il"},{"id":"s7","label":"n''a pas"},{"id":"s8","label":"assez"},{"id":"s9","label":"d''argent"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Proposition 1","color":"blue"},{"id":"p2","label":"Proposition 2","color":"amber"}],"mapping":{"s1":"p1","s2":"p1","s3":"p1","s4":"p1","s5":"p2","s6":"p2","s7":"p2","s8":"p2","s9":"p2"}}'::jsonb,
  'Deux propositions indépendantes coordonnées par « mais ». P1 : « Il voudrait partir en vacances » — P2 : « mais il n''a pas assez d''argent ». Comme pour « et », la conjonction de coordination « mais » est rattachée à la proposition qu''elle introduit.',
  'Attention à ne pas oublier « mais » : cette conjonction de coordination appartient à la seconde proposition. De plus, « partir » est un infinitif complément, pas un second verbe conjugué — il ne crée donc pas une nouvelle proposition.',
  'valide',
  'CRPE Français — Délimitation propositions',
  'free',
  true
);

-- Q10 — Subordonnée relative + complétive imbriquées (3 propositions, avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'delimitation_propositions',
  'Délimiter les propositions dans la phrase complexe',
  'Avance',
  'surlignage_propositions',
  'Identifiez les trois propositions de cette phrase complexe.',
  NULL,
  '[{"id":"s1","label":"La maîtresse"},{"id":"s2","label":"explique"},{"id":"s3","label":"que"},{"id":"s4","label":"les mots"},{"id":"s5","label":"qui"},{"id":"s6","label":"se terminent"},{"id":"s7","label":"en -ment"},{"id":"s8","label":"sont"},{"id":"s9","label":"souvent"},{"id":"s10","label":"des adverbes"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Prop. principale","color":"blue"},{"id":"p2","label":"Sub. complétive","color":"amber"},{"id":"p3","label":"Sub. relative","color":"emerald"}],"mapping":{"s1":"p1","s2":"p1","s3":"p2","s4":"p2","s5":"p3","s6":"p3","s7":"p3","s8":"p2","s9":"p2","s10":"p2"}}'::jsonb,
  'Principale : « La maîtresse explique ». Sub. complétive (COD de « explique ») : « que les mots sont souvent des adverbes ». Sub. relative (enchâssée dans la complétive, complète « mots ») : « qui se terminent en -ment ». La complétive est elle-même discontinue, coupée par la relative.',
  'La difficulté majeure : la complétive est « coupée » par la relative. « les mots » et « sont souvent des adverbes » appartiennent à la même complétive, même s''ils sont séparés par la relative « qui se terminent en -ment ».',
  'valide',
  'CRPE Français — Délimitation propositions',
  'premium',
  true
);
