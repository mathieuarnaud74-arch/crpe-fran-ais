-- Migration: 10 exercices surlignage_propositions — Délimiter les propositions dans des phrases complexes
-- Série : surlignage_propositions_complexes (Français, analyse_langue)
-- Exercice type : surlignage_propositions

-- Q1 — 2 propositions juxtaposées (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Facile',
  'surlignage_propositions',
  'Délimitez les deux propositions juxtaposées dans cette phrase.',
  'Le vent souffle ; les volets claquent.',
  '[{"id":"s1","label":"Le vent souffle"},{"id":"s2","label":"les volets claquent"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Proposition 1","color":"blue"},{"id":"p2","label":"Proposition 2","color":"amber"}],"mapping":{"s1":"p1","s2":"p2"}}'::jsonb,
  'Cette phrase contient 2 verbes conjugués (« souffle » et « claquent »), donc 2 propositions. Elles sont séparées par un point-virgule sans mot de liaison : ce sont des propositions indépendantes juxtaposées. Chacune pourrait fonctionner seule comme phrase.',
  'Ne pas repérer le point-virgule comme séparateur de propositions. La virgule, le point-virgule et les deux-points sont les signes de juxtaposition.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q2 — Principale + relative (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Facile',
  'surlignage_propositions',
  'Délimitez la proposition principale et la proposition subordonnée relative.',
  'L''élève qui travaille bien réussira son examen.',
  '[{"id":"s1","label":"L''élève"},{"id":"s2","label":"qui travaille bien"},{"id":"s3","label":"réussira son examen"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"}],"mapping":{"s1":"princ","s2":"rel","s3":"princ"}}'::jsonb,
  'La proposition principale est « L''élève réussira son examen » (on la reconstitue en enlevant la subordonnée). La subordonnée relative « qui travaille bien » est insérée au milieu de la principale. Elle est introduite par le pronom relatif « qui » et complète l''antécédent « élève ». Attention : la principale est ici discontinue (coupée par la relative).',
  'Croire que la principale est seulement « L''élève ». Non : la principale est tout ce qui reste quand on retire la subordonnée, soit « L''élève… réussira son examen ».',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q3 — Principale + circonstancielle de temps (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Facile',
  'surlignage_propositions',
  'Délimitez la proposition principale et la proposition subordonnée circonstancielle de temps.',
  'Quand la nuit tombe, les étoiles apparaissent.',
  '[{"id":"s1","label":"Quand la nuit tombe"},{"id":"s2","label":"les étoiles apparaissent"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"circ","label":"Subordonnée circonstancielle","color":"amber"},{"id":"princ","label":"Proposition principale","color":"blue"}],"mapping":{"s1":"circ","s2":"princ"}}'::jsonb,
  '« Quand la nuit tombe » est la subordonnée circonstancielle de temps, introduite par « quand ». « Les étoiles apparaissent » est la proposition principale. La subordonnée est ici placée en tête de phrase (antéposée) et séparée par une virgule. Elle est déplaçable : « Les étoiles apparaissent quand la nuit tombe. »',
  'Croire que la première proposition est toujours la principale. Non : quand une subordonnée est antéposée, elle précède la principale.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q4 — 2 indépendantes coordonnées (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Facile',
  'surlignage_propositions',
  'Délimitez les deux propositions indépendantes coordonnées.',
  'Il fait beau mais je reste à la maison.',
  '[{"id":"s1","label":"Il fait beau"},{"id":"s2","label":"mais"},{"id":"s3","label":"je reste à la maison"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Proposition 1","color":"blue"},{"id":"coord","label":"Conjonction de coordination","color":"emerald"},{"id":"p2","label":"Proposition 2","color":"amber"}],"mapping":{"s1":"p1","s2":"coord","s3":"p2"}}'::jsonb,
  '« Il fait beau » et « je reste à la maison » sont deux propositions indépendantes coordonnées par la conjonction de coordination « mais ». Chacune a son propre verbe conjugué et pourrait fonctionner seule. La conjonction exprime ici l''opposition.',
  'Inclure « mais » dans l''une des deux propositions. La conjonction de coordination n''appartient à aucune des deux propositions : elle est le lien entre elles.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q5 — Principale + complétive COD (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez la proposition principale et la proposition subordonnée complétive.',
  'Je pense que cette solution est la meilleure.',
  '[{"id":"s1","label":"Je pense"},{"id":"s2","label":"que cette solution est la meilleure"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"comp","label":"Subordonnée complétive","color":"amber"}],"mapping":{"s1":"princ","s2":"comp"}}'::jsonb,
  '« Je pense » est la proposition principale. « Que cette solution est la meilleure » est la subordonnée complétive (conjonctive), introduite par « que » conjonction de subordination. Elle est COD du verbe « pense » (je pense quoi ? → cela). Test : « Je pense cela » ✓.',
  'Confondre « que » conjonction de subordination (complétive) et « que » pronom relatif (relative). Ici, « que » n''a pas d''antécédent nominal, c''est une conjonction.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q6 — 3 propositions : principale + relative + circonstancielle (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez les trois propositions : principale, subordonnée relative, et subordonnée circonstancielle.',
  'Le professeur qui enseigne les maths est absent parce qu''il est malade.',
  '[{"id":"s1","label":"Le professeur"},{"id":"s2","label":"qui enseigne les maths"},{"id":"s3","label":"est absent"},{"id":"s4","label":"parce qu''il est malade"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"},{"id":"circ","label":"Subordonnée circonstancielle","color":"emerald"}],"mapping":{"s1":"princ","s2":"rel","s3":"princ","s4":"circ"}}'::jsonb,
  'Trois verbes conjugués = trois propositions. La principale est « Le professeur est absent » (discontinue, coupée par la relative). « Qui enseigne les maths » est une subordonnée relative (pronom relatif « qui », antécédent « professeur »). « Parce qu''il est malade » est une subordonnée circonstancielle de cause.',
  'Oublier que la principale est discontinue. « Le professeur » et « est absent » font partie de la MÊME proposition (la principale), interrompue par la relative.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q7 — Principale + interrogative indirecte (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez la proposition principale et la subordonnée interrogative indirecte.',
  'Je me demande si les résultats seront publiés demain.',
  '[{"id":"s1","label":"Je me demande"},{"id":"s2","label":"si les résultats seront publiés demain"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"inter","label":"Subordonnée interrogative indirecte","color":"amber"}],"mapping":{"s1":"princ","s2":"inter"}}'::jsonb,
  '« Je me demande » est la proposition principale (verbe de questionnement). « Si les résultats seront publiés demain » est la subordonnée interrogative indirecte, introduite par « si ». Elle est COD du verbe « demande ». Attention : pas de point d''interrogation dans l''interrogation indirecte.',
  'Confondre « si » interrogatif indirect et « si » conditionnel. « Si » après un verbe de questionnement (demander, savoir, ignorer) introduit une interrogative indirecte. « Si » + imparfait/plus-que-parfait dans une hypothèse introduit une circonstancielle de condition.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q8 — 3 propositions : 2 coordonnées + 1 subordonnée (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Avance',
  'surlignage_propositions',
  'Délimitez les propositions et identifiez leur type.',
  'Marie étudie car elle veut réussir et elle sait que le travail paie.',
  '[{"id":"s1","label":"Marie étudie"},{"id":"s2","label":"car"},{"id":"s3","label":"elle veut réussir"},{"id":"s4","label":"et"},{"id":"s5","label":"elle sait"},{"id":"s6","label":"que le travail paie"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Proposition 1 (indépendante)","color":"blue"},{"id":"coord","label":"Conjonction de coordination","color":"purple"},{"id":"p2","label":"Proposition 2 (coordonnée)","color":"amber"},{"id":"p3","label":"Proposition 3 (principale)","color":"blue"},{"id":"comp","label":"Subordonnée complétive","color":"emerald"}],"mapping":{"s1":"p1","s2":"coord","s3":"p2","s4":"coord","s5":"p3","s6":"comp"}}'::jsonb,
  '« Marie étudie » est une proposition indépendante. « Car » est une conjonction de coordination (cause). « Elle veut réussir » est coordonnée à la première par « car ». « Et » coordonne la suite. « Elle sait » est une proposition principale dont dépend la complétive « que le travail paie » (COD de « sait »).',
  'Considérer toute la fin comme une seule proposition. « Elle sait que le travail paie » contient DEUX propositions : une principale (« elle sait ») et une complétive (« que le travail paie »).',
  'valide',
  'CRPE Français — Surlignage propositions',
  'premium',
  true
);

-- Q9 — Principale + circonstancielle de concession + relative (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Avance',
  'surlignage_propositions',
  'Délimitez les trois propositions dans cette phrase.',
  'Bien qu''il soit fatigué, l''athlète qui s''entraîne chaque jour remporte la course.',
  '[{"id":"s1","label":"Bien qu''il soit fatigué"},{"id":"s2","label":"l''athlète"},{"id":"s3","label":"qui s''entraîne chaque jour"},{"id":"s4","label":"remporte la course"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"conc","label":"Subordonnée de concession","color":"amber"},{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"emerald"}],"mapping":{"s1":"conc","s2":"princ","s3":"rel","s4":"princ"}}'::jsonb,
  '« Bien qu''il soit fatigué » est une subordonnée circonstancielle de concession (introduite par « bien que » + subjonctif). La principale est « l''athlète remporte la course » (discontinue). « Qui s''entraîne chaque jour » est une subordonnée relative (antécédent « athlète »), enchâssée dans la principale.',
  'Rattacher « bien que » à la principale. « Bien que » est une locution conjonctive de subordination qui introduit TOUJOURS une subordonnée de concession.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'premium',
  true
);

-- Q10 — Principale + 2 complétives (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9040000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions dans la phrase complexe',
  'Avance',
  'surlignage_propositions',
  'Délimitez les propositions dans cette phrase à deux subordonnées complétives.',
  'L''enseignant explique que la Terre tourne et que les saisons changent.',
  '[{"id":"s1","label":"L''enseignant explique"},{"id":"s2","label":"que la Terre tourne"},{"id":"s3","label":"et"},{"id":"s4","label":"que les saisons changent"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"comp1","label":"Complétive 1 (COD)","color":"amber"},{"id":"coord","label":"Conjonction","color":"purple"},{"id":"comp2","label":"Complétive 2 (COD)","color":"emerald"}],"mapping":{"s1":"princ","s2":"comp1","s3":"coord","s4":"comp2"}}'::jsonb,
  '« L''enseignant explique » est la principale. « Que la Terre tourne » est la première subordonnée complétive, COD de « explique ». « Et » coordonne les deux complétives. « Que les saisons changent » est la seconde complétive, également COD de « explique ». Les deux « que » sont des conjonctions de subordination (pas de pronom relatif : pas d''antécédent).',
  'Croire que la deuxième complétive dépend de la première. Non : les deux complétives sont au même niveau, coordonnées par « et », et dépendent toutes deux du verbe de la principale.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'premium',
  true
);
