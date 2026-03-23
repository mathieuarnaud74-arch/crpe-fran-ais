-- Migration: 10 exercices tri_categories — Fonctions grammaticales dans la phrase
-- Série : tri_fonctions_grammaticales (Français, grammaire)
-- Exercice type : tri_categories

-- Q1 — Sujet / COD / CC de lieu (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Facile',
  'tri_categories',
  'Dans la phrase « Le chat attrape une souris dans le jardin », classez chaque groupe selon sa fonction.',
  'Le chat attrape une souris dans le jardin.',
  '[{"id":"g1","label":"Le chat"},{"id":"g2","label":"une souris"},{"id":"g3","label":"dans le jardin"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"suj","label":"Sujet"},{"id":"cod","label":"COD"},{"id":"cc","label":"CC de lieu"}],"mapping":{"g1":"suj","g2":"cod","g3":"cc"}}'::jsonb,
  '« Le chat » est sujet du verbe « attrape » (c''est lui qui fait l''action). « Une souris » est COD : attrape quoi ? une souris (complément direct, pas de préposition). « Dans le jardin » est CC de lieu : il est déplaçable et supprimable (« Le chat attrape une souris » reste correct).',
  'Confondre COD et CC de lieu : le COD répond à la question « quoi ? » sans préposition, le CC de lieu répond à « où ? » et est introduit par une préposition (dans, sur, à…).',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'free',
  true
);

-- Q2 — Sujet / Attribut du sujet / CC de manière (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Facile',
  'tri_categories',
  'Dans la phrase « Marie semble fatiguée depuis ce matin », classez chaque élément selon sa fonction.',
  'Marie semble fatiguée depuis ce matin.',
  '[{"id":"g1","label":"Marie"},{"id":"g2","label":"fatiguée"},{"id":"g3","label":"depuis ce matin"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"suj","label":"Sujet"},{"id":"att","label":"Attribut du sujet"},{"id":"cc","label":"CC de temps"}],"mapping":{"g1":"suj","g2":"att","g3":"cc"}}'::jsonb,
  '« Marie » est sujet du verbe « semble ». « Fatiguée » est attribut du sujet : il caractérise le sujet via un verbe d''état (sembler, être, paraître, devenir…). Il ne peut pas être supprimé (*« Marie semble »). « Depuis ce matin » est CC de temps (déplaçable et supprimable).',
  'Confondre attribut du sujet et COD. L''attribut qualifie le sujet (Marie = fatiguée) via un verbe d''état. Le COD complète un verbe d''action (« Marie mange une pomme »).',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'free',
  true
);

-- Q3 — COD / COI / COS (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Intermediaire',
  'tri_categories',
  'Dans la phrase « L''enseignant donne un exercice aux élèves », classez chaque groupe selon sa fonction.',
  'L''enseignant donne un exercice aux élèves.',
  '[{"id":"g1","label":"L''enseignant"},{"id":"g2","label":"un exercice"},{"id":"g3","label":"aux élèves"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"suj","label":"Sujet"},{"id":"cod","label":"COD"},{"id":"coi","label":"COI (complément d''objet indirect)"}],"mapping":{"g1":"suj","g2":"cod","g3":"coi"}}'::jsonb,
  '« L''enseignant » est sujet (qui donne ?). « Un exercice » est COD : donne quoi ? un exercice (sans préposition). « Aux élèves » est COI (ou COS — complément d''objet second) : donne à qui ? aux élèves (introduit par la préposition « à »). Le COI est un complément indirect car il est relié au verbe par une préposition.',
  'Confondre COI et CC. Le COI est essentiel (non supprimable sans altérer le sens : *« l''enseignant donne un exercice » est incomplet). Le CC est supprimable et déplaçable.',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'free',
  true
);

-- Q4 — Épithète / Attribut / Apposition (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Intermediaire',
  'tri_categories',
  'Classez chaque adjectif ou groupe selon sa fonction dans la phrase.',
  '(a) La petite fille court. (b) Cette fille est petite. (c) Ravie, la fille accepte l''invitation.',
  '[{"id":"g1","label":"petite (dans a)"},{"id":"g2","label":"petite (dans b)"},{"id":"g3","label":"Ravie (dans c)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ep","label":"Épithète"},{"id":"att","label":"Attribut du sujet"},{"id":"app","label":"Apposition"}],"mapping":{"g1":"ep","g2":"att","g3":"app"}}'::jsonb,
  'En (a), « petite » est épithète : il est directement accolé au nom « fille » dans le GN, sans verbe intermédiaire. En (b), « petite » est attribut du sujet : il est relié au sujet par le verbe d''état « est ». En (c), « Ravie » est en apposition : il est détaché du nom par une virgule et pourrait être déplacé.',
  'Confondre épithète et apposition. L''épithète est liée directement au nom (sans virgule). L''apposition est détachée par une virgule et peut se déplacer dans la phrase.',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'free',
  true
);

-- Q5 — CC de temps / CC de lieu / CC de manière / CC de cause (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Intermediaire',
  'tri_categories',
  'Classez chaque complément circonstanciel selon la circonstance qu''il exprime.',
  'Hier, les enfants ont joué joyeusement dans le parc à cause du beau temps.',
  '[{"id":"g1","label":"Hier"},{"id":"g2","label":"joyeusement"},{"id":"g3","label":"dans le parc"},{"id":"g4","label":"à cause du beau temps"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"g1":"temps","g2":"maniere","g3":"lieu","g4":"cause"}}'::jsonb,
  '« Hier » répond à « quand ? » → CC de temps. « Joyeusement » répond à « comment ? » → CC de manière. « Dans le parc » répond à « où ? » → CC de lieu. « À cause du beau temps » répond à « pourquoi ? » → CC de cause. Tous sont déplaçables et supprimables.',
  'Confondre CC de cause et CC de but. La cause explique pourquoi quelque chose s''est passé (regard vers le passé), le but exprime l''intention (regard vers le futur) : « pour s''amuser » = but.',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'free',
  true
);

-- Q6 — Fonctions dans une phrase complexe (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Avance',
  'tri_categories',
  'Classez chaque proposition subordonnée selon sa fonction.',
  '(a) Je sais qu''il viendra. (b) L''homme qui court est mon voisin. (c) Il reste parce qu''il pleut.',
  '[{"id":"p1","label":"qu''il viendra"},{"id":"p2","label":"qui court"},{"id":"p3","label":"parce qu''il pleut"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cod","label":"COD du verbe principal"},{"id":"ant","label":"Complément de l''antécédent"},{"id":"cc","label":"CC de cause"}],"mapping":{"p1":"cod","p2":"ant","p3":"cc"}}'::jsonb,
  '« Qu''il viendra » est une subordonnée complétive, COD de « sais » (je sais quoi ? cela). « Qui court » est une subordonnée relative, complément de l''antécédent « homme » (expansion du nom). « Parce qu''il pleut » est une subordonnée circonstancielle de cause, CC de cause du verbe « reste ».',
  'Confondre la complétive (COD) et la relative (complément de l''antécédent). La complétive est introduite par « que » sans antécédent nominal. La relative a toujours un antécédent.',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'premium',
  true
);

-- Q7 — Complément du nom / Épithète / Relative (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Intermediaire',
  'tri_categories',
  'Classez chaque expansion du nom selon sa nature grammaticale (toutes ont la fonction de complément ou expansion du nom).',
  '(a) un livre passionnant (b) un livre de cuisine (c) un livre que j''ai lu',
  '[{"id":"e1","label":"passionnant (dans a)"},{"id":"e2","label":"de cuisine (dans b)"},{"id":"e3","label":"que j''ai lu (dans c)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"adj","label":"Adjectif épithète"},{"id":"cdn","label":"Complément du nom (GN prépositionnel)"},{"id":"rel","label":"Proposition subordonnée relative"}],"mapping":{"e1":"adj","e2":"cdn","e3":"rel"}}'::jsonb,
  'Les trois expansions complètent le nom « livre ». « Passionnant » est un adjectif qualificatif en fonction épithète. « De cuisine » est un GN prépositionnel, complément du nom. « Que j''ai lu » est une proposition subordonnée relative (pronom relatif « que »). Ces trois types d''expansion sont les trois façons principales d''enrichir un nom.',
  'Ne pas reconnaître le complément du nom : il est toujours introduit par une préposition (de, à, en, pour…) et complète un nom (pas un verbe).',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'free',
  true
);

-- Q8 — Sujet / COD / Attribut du COD (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Avance',
  'tri_categories',
  'Dans la phrase « Les parents trouvent cette idée excellente », classez chaque groupe selon sa fonction.',
  'Les parents trouvent cette idée excellente.',
  '[{"id":"g1","label":"Les parents"},{"id":"g2","label":"cette idée"},{"id":"g3","label":"excellente"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"suj","label":"Sujet"},{"id":"cod","label":"COD"},{"id":"acod","label":"Attribut du COD"}],"mapping":{"g1":"suj","g2":"cod","g3":"acod"}}'::jsonb,
  '« Les parents » est sujet du verbe « trouvent ». « Cette idée » est COD (trouvent quoi ?). « Excellente » est attribut du COD : il qualifie le COD (cette idée = excellente) via le verbe. C''est un cas particulier à distinguer de l''attribut du sujet (qui qualifie le sujet via un verbe d''état).',
  'Confondre attribut du COD et épithète. L''attribut du COD est relié au COD par le verbe (trouver, juger, nommer, rendre…). L''épithète est directement accolée au nom dans le GN.',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'premium',
  true
);

-- Q9 — Fonctions du pronom relatif dans la subordonnée (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Avance',
  'tri_categories',
  'Classez chaque pronom relatif selon sa fonction DANS la subordonnée.',
  '(a) L''homme qui parle… (b) Le livre que je lis… (c) La ville dont je parle… (d) L''endroit où il habite…',
  '[{"id":"r1","label":"qui (dans a)"},{"id":"r2","label":"que (dans b)"},{"id":"r3","label":"dont (dans c)"},{"id":"r4","label":"où (dans d)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"suj","label":"Sujet"},{"id":"cod","label":"COD"},{"id":"coi","label":"COI"},{"id":"cc","label":"CC de lieu"}],"mapping":{"r1":"suj","r2":"cod","r3":"coi","r4":"cc"}}'::jsonb,
  'Dans la subordonnée relative : « qui » est sujet du verbe « parle » (qui parle ? → l''homme). « Que » est COD du verbe « lis » (je lis quoi ? → le livre). « Dont » est COI du verbe « parle » (je parle de quoi ? → de la ville ; « dont » = de + antécédent). « Où » est CC de lieu du verbe « habite » (il habite où ? → à l''endroit).',
  'Confondre la fonction du pronom relatif dans la subordonnée avec la fonction de la subordonnée dans la principale. Le pronom a une fonction DANS la sub. ; la subordonnée entière a la fonction de complément de l''antécédent.',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'premium',
  true
);

-- Q10 — Compléments essentiels / non essentiels (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9030000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'tri_fonctions_grammaticales',
  'Tri — Fonctions grammaticales',
  'Intermediaire',
  'tri_categories',
  'Classez chaque complément selon qu''il est essentiel (non supprimable) ou non essentiel (supprimable et déplaçable).',
  'Pierre habite à Paris depuis trois ans avec sa famille.',
  '[{"id":"c1","label":"à Paris"},{"id":"c2","label":"depuis trois ans"},{"id":"c3","label":"avec sa famille"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ess","label":"Complément essentiel"},{"id":"noness","label":"Complément non essentiel (CC)"}],"mapping":{"c1":"ess","c2":"noness","c3":"noness"}}'::jsonb,
  '« À Paris » est un complément essentiel du verbe « habite » : on ne peut pas le supprimer (*« Pierre habite » est incomplet pour le verbe « habiter »). C''est un complément essentiel de lieu (ou complément d''objet indirect selon les grammaires). « Depuis trois ans » et « avec sa famille » sont des CC supprimables et déplaçables : « Depuis trois ans, Pierre habite à Paris. »',
  'Croire que tous les compléments de lieu sont des CC. Certains sont essentiels au verbe (habiter, aller, se rendre…) et ne peuvent pas être supprimés. Le critère de suppression est le test décisif.',
  'valide',
  'CRPE Français — Tri fonctions grammaticales',
  'free',
  true
);
