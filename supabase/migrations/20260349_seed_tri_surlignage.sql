-- Migration: 4 séries interactives (40 questions) — tri_categories + surlignage_propositions
-- Série 1 : Tri — Classes grammaticales (grammaire)
-- Série 2 : Tri — Temps verbaux (conjugaison)
-- Série 3 : Surlignage — Sujets et verbes (grammaire)
-- Série 4 : Surlignage — Propositions (analyse_langue)

-- ============================================================
-- SÉRIE 1 : Tri — Classes grammaticales (10 questions)
-- ============================================================

-- Q1 — Nom / Verbe / Adjectif (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Facile',
  'tri_categories',
  'Classez chaque mot dans la catégorie grammaticale qui lui correspond.',
  NULL,
  '[{"id":"s1q1w1","label":"liberté"},{"id":"s1q1w2","label":"chanter"},{"id":"s1q1w3","label":"rapide"},{"id":"s1q1w4","label":"jardin"},{"id":"s1q1w5","label":"dormir"},{"id":"s1q1w6","label":"fragile"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s1q1w1":"nom","s1q1w2":"verbe","s1q1w3":"adjectif","s1q1w4":"nom","s1q1w5":"verbe","s1q1w6":"adjectif"}}'::jsonb,
  'Liberté et jardin désignent des réalités (abstraite et concrète) : ce sont des noms. Chanter et dormir sont des formes verbales à l''infinitif : ce sont des verbes. Rapide et fragile expriment une qualité attribuable à un nom : ce sont des adjectifs qualificatifs.',
  'Confondre nom et adjectif : « liberté » n''exprime pas une qualité, il désigne un concept. Un adjectif qualifie un nom, il ne le remplace pas.',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q2 — Nom / Verbe / Adjectif (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Facile',
  'tri_categories',
  'Classez chaque mot dans la catégorie grammaticale qui lui correspond.',
  NULL,
  '[{"id":"s1q2w1","label":"montagne"},{"id":"s1q2w2","label":"manger"},{"id":"s1q2w3","label":"lourd"},{"id":"s1q2w4","label":"courage"},{"id":"s1q2w5","label":"partir"},{"id":"s1q2w6","label":"joyeux"},{"id":"s1q2w7","label":"rivière"},{"id":"s1q2w8","label":"grandir"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s1q2w1":"nom","s1q2w2":"verbe","s1q2w3":"adjectif","s1q2w4":"nom","s1q2w5":"verbe","s1q2w6":"adjectif","s1q2w7":"nom","s1q2w8":"verbe"}}'::jsonb,
  'Montagne, courage et rivière sont des noms (communs concrets ou abstraits). Manger, partir et grandir sont des verbes à l''infinitif. Lourd et joyeux sont des adjectifs qualificatifs qui expriment une propriété.',
  'Confondre un nom abstrait comme « courage » avec un adjectif. Le nom désigne la chose elle-même ; l''adjectif « courageux » en serait la forme qualificative.',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q3 — Nom / Verbe / Adjectif (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Facile',
  'tri_categories',
  'Classez chaque mot dans la catégorie grammaticale qui lui correspond.',
  NULL,
  '[{"id":"s1q3w1","label":"tableau"},{"id":"s1q3w2","label":"écrire"},{"id":"s1q3w3","label":"lumineux"},{"id":"s1q3w4","label":"silence"},{"id":"s1q3w5","label":"courir"},{"id":"s1q3w6","label":"doux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s1q3w1":"nom","s1q3w2":"verbe","s1q3w3":"adjectif","s1q3w4":"nom","s1q3w5":"verbe","s1q3w6":"adjectif"}}'::jsonb,
  'Tableau et silence sont des noms communs. Écrire et courir sont des verbes à l''infinitif. Lumineux et doux sont des adjectifs qualificatifs qui peuvent qualifier un nom.',
  'Attention au mot « silence » : même s''il évoque une qualité (le calme), c''est bien un nom et non un adjectif. On peut dire « un silence » mais pas « *il est silence ».',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q4 — Déterminant / Pronom / Adverbe / Préposition (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot dans la bonne catégorie. Le contexte entre crochets aide à déterminer la classe.',
  NULL,
  '[{"id":"s1q4w1","label":"cette [maison]"},{"id":"s1q4w2","label":"celui-ci"},{"id":"s1q4w3","label":"lentement"},{"id":"s1q4w4","label":"dans"},{"id":"s1q4w5","label":"mon [cahier]"},{"id":"s1q4w6","label":"ils"},{"id":"s1q4w7","label":"très"},{"id":"s1q4w8","label":"pour"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"},{"id":"prep","label":"Préposition"}],"mapping":{"s1q4w1":"det","s1q4w2":"pro","s1q4w3":"adv","s1q4w4":"prep","s1q4w5":"det","s1q4w6":"pro","s1q4w7":"adv","s1q4w8":"prep"}}'::jsonb,
  'Cette et mon introduisent un nom : ce sont des déterminants (démonstratif et possessif). Celui-ci et ils remplacent un nom : ce sont des pronoms (démonstratif et personnel). Lentement et très modifient un verbe ou un adjectif sans s''accorder : ce sont des adverbes. Dans et pour introduisent un complément : ce sont des prépositions.',
  'Confondre déterminant et pronom : le déterminant accompagne toujours un nom (« cette maison »), le pronom le remplace et s''emploie seul (« celui-ci »).',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q5 — Déterminant / Pronom / Adverbe / Préposition (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot dans la bonne catégorie. Le contexte entre crochets aide à déterminer la classe.',
  NULL,
  '[{"id":"s1q5w1","label":"quelques [livres]"},{"id":"s1q5w2","label":"nous"},{"id":"s1q5w3","label":"souvent"},{"id":"s1q5w4","label":"avec"},{"id":"s1q5w5","label":"chaque [élève]"},{"id":"s1q5w6","label":"rien"},{"id":"s1q5w7","label":"toujours"},{"id":"s1q5w8","label":"chez"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"},{"id":"prep","label":"Préposition"}],"mapping":{"s1q5w1":"det","s1q5w2":"pro","s1q5w3":"adv","s1q5w4":"prep","s1q5w5":"det","s1q5w6":"pro","s1q5w7":"adv","s1q5w8":"prep"}}'::jsonb,
  'Quelques et chaque précèdent un nom : ce sont des déterminants indéfinis. Nous et rien fonctionnent seuls comme substituts d''un nom : ce sont des pronoms (personnel et indéfini). Souvent et toujours sont des adverbes de temps. Avec et chez sont des prépositions qui introduisent un complément.',
  'Le mot « rien » est un pronom indéfini, pas un adverbe. Il occupe une fonction nominale (sujet ou complément) : « Rien ne bouge. »',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q6 — Déterminant / Pronom / Adverbe / Préposition (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot dans la bonne catégorie. Le contexte entre crochets aide à déterminer la classe.',
  NULL,
  '[{"id":"s1q6w1","label":"les [enfants]"},{"id":"s1q6w2","label":"ceux"},{"id":"s1q6w3","label":"ailleurs"},{"id":"s1q6w4","label":"sans"},{"id":"s1q6w5","label":"plusieurs [fois]"},{"id":"s1q6w6","label":"quiconque"},{"id":"s1q6w7","label":"peut-être"},{"id":"s1q6w8","label":"entre"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"},{"id":"prep","label":"Préposition"}],"mapping":{"s1q6w1":"det","s1q6w2":"pro","s1q6w3":"adv","s1q6w4":"prep","s1q6w5":"det","s1q6w6":"pro","s1q6w7":"adv","s1q6w8":"prep"}}'::jsonb,
  'Les et plusieurs sont des déterminants (article défini et indéfini). Ceux et quiconque sont des pronoms (démonstratif et indéfini). Ailleurs et peut-être sont des adverbes (de lieu et de modalité). Sans et entre sont des prépositions.',
  'Ne pas confondre « les » déterminant (« les enfants ») et « les » pronom complément (« je les vois »). Ici, le contexte [enfants] montre qu''il s''agit du déterminant.',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q7 — Déterminant / Pronom / Adverbe / Préposition (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot dans la bonne catégorie. Le contexte entre crochets aide à déterminer la classe.',
  NULL,
  '[{"id":"s1q7w1","label":"des [fleurs]"},{"id":"s1q7w2","label":"on"},{"id":"s1q7w3","label":"hier"},{"id":"s1q7w4","label":"depuis"},{"id":"s1q7w5","label":"tout [le monde]"},{"id":"s1q7w6","label":"le mien"},{"id":"s1q7w7","label":"beaucoup"},{"id":"s1q7w8","label":"vers"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"},{"id":"prep","label":"Préposition"}],"mapping":{"s1q7w1":"det","s1q7w2":"pro","s1q7w3":"adv","s1q7w4":"prep","s1q7w5":"det","s1q7w6":"pro","s1q7w7":"adv","s1q7w8":"prep"}}'::jsonb,
  'Des et tout sont des déterminants (article indéfini et déterminant indéfini). On et le mien sont des pronoms (indéfini et possessif). Hier et beaucoup sont des adverbes (de temps et de quantité). Depuis et vers sont des prépositions.',
  'Attention : « beaucoup » est un adverbe de quantité, pas un déterminant. On dit « beaucoup de fleurs » (adverbe + préposition « de »), mais « des fleurs » (déterminant seul devant le nom).',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q8 — Conjonction coordination / Conjonction subordination / Pronom relatif (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Avance',
  'tri_categories',
  'Classez chaque mot-outil selon sa classe grammaticale. Le contexte entre crochets aide à déterminer la catégorie.',
  NULL,
  '[{"id":"s1q8w1","label":"mais"},{"id":"s1q8w2","label":"que [je sache]"},{"id":"s1q8w3","label":"qui [travaille]"},{"id":"s1q8w4","label":"et"},{"id":"s1q8w5","label":"parce que"},{"id":"s1q8w6","label":"dont"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cc","label":"Conjonction de coordination"},{"id":"cs","label":"Conjonction de subordination"},{"id":"pr","label":"Pronom relatif"}],"mapping":{"s1q8w1":"cc","s1q8w2":"cs","s1q8w3":"pr","s1q8w4":"cc","s1q8w5":"cs","s1q8w6":"pr"}}'::jsonb,
  'Mais et et relient deux éléments de même nature grammaticale : ce sont des conjonctions de coordination (moyen mnémotechnique : mais, ou, et, donc, or, ni, car). Que [je sache] et parce que introduisent une proposition subordonnée conjonctive : ce sont des conjonctions de subordination. Qui [travaille] et dont introduisent une proposition subordonnée relative et remplacent un antécédent : ce sont des pronoms relatifs.',
  'Confondre « que » conjonction de subordination et « que » pronom relatif. Quand « que » introduit une complétive (« je veux que tu viennes »), c''est une conjonction ; quand il a un antécédent nominal (« le livre que je lis »), c''est un pronom relatif.',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q9 — Conjonction coordination / Conjonction subordination / Pronom relatif (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Avance',
  'tri_categories',
  'Classez chaque mot-outil selon sa classe grammaticale.',
  NULL,
  '[{"id":"s1q9w1","label":"or"},{"id":"s1q9w2","label":"bien que"},{"id":"s1q9w3","label":"lequel"},{"id":"s1q9w4","label":"donc"},{"id":"s1q9w5","label":"lorsque"},{"id":"s1q9w6","label":"où [il habite]"},{"id":"s1q9w7","label":"ni"},{"id":"s1q9w8","label":"quoique"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cc","label":"Conjonction de coordination"},{"id":"cs","label":"Conjonction de subordination"},{"id":"pr","label":"Pronom relatif"}],"mapping":{"s1q9w1":"cc","s1q9w2":"cs","s1q9w3":"pr","s1q9w4":"cc","s1q9w5":"cs","s1q9w6":"pr","s1q9w7":"cc","s1q9w8":"cs"}}'::jsonb,
  'Or, donc et ni sont des conjonctions de coordination. Bien que, lorsque et quoique introduisent des subordonnées conjonctives : ce sont des conjonctions de subordination. Lequel et où [il habite] sont des pronoms relatifs (lequel est composé, où est relatif quand il a un antécédent de lieu ou de temps).',
  'Confondre « où » adverbe interrogatif (« Où vas-tu ? ») et « où » pronom relatif (« la ville où il habite »). Le contexte [il habite] montre ici qu''il s''agit du pronom relatif.',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- Q10 — Conjonction coordination / Conjonction subordination / Pronom relatif (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1010000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'tri_classes_grammaticales',
  'Tri — Classes grammaticales',
  'Avance',
  'tri_categories',
  'Classez chaque mot-outil selon sa classe grammaticale.',
  NULL,
  '[{"id":"s1qaw1","label":"car"},{"id":"s1qaw2","label":"afin que"},{"id":"s1qaw3","label":"auquel"},{"id":"s1qaw4","label":"ou"},{"id":"s1qaw5","label":"puisque"},{"id":"s1qaw6","label":"à qui [je parle]"},{"id":"s1qaw7","label":"tandis que"},{"id":"s1qaw8","label":"quoi [je rêve]"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cc","label":"Conjonction de coordination"},{"id":"cs","label":"Conjonction de subordination"},{"id":"pr","label":"Pronom relatif"}],"mapping":{"s1qaw1":"cc","s1qaw2":"cs","s1qaw3":"pr","s1qaw4":"cc","s1qaw5":"cs","s1qaw6":"pr","s1qaw7":"cs","s1qaw8":"pr"}}'::jsonb,
  'Car et ou sont des conjonctions de coordination. Afin que, puisque et tandis que sont des conjonctions de subordination introduisant respectivement le but, la cause et l''opposition. Auquel, à qui et quoi (précédé d''une préposition et ayant un antécédent) sont des pronoms relatifs.',
  'Ne pas confondre « ou » conjonction de coordination (alternative) et « où » pronom relatif ou adverbe. L''absence d''accent distingue la conjonction de coordination.',
  'valide',
  'CRPE Français — Tri classes grammaticales',
  'free',
  true
);

-- ============================================================
-- SÉRIE 2 : Tri — Temps verbaux (10 questions)
-- ============================================================

-- Q1 — Présent / Imparfait / Futur (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Facile',
  'tri_categories',
  'Classez chaque forme verbale dans le temps qui lui correspond.',
  NULL,
  '[{"id":"s2q1w1","label":"je chante"},{"id":"s2q1w2","label":"tu marchais"},{"id":"s2q1w3","label":"il parlera"},{"id":"s2q1w4","label":"nous finissons"},{"id":"s2q1w5","label":"vous lisiez"},{"id":"s2q1w6","label":"elles danseront"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"present","label":"Présent"},{"id":"imparfait","label":"Imparfait"},{"id":"futur","label":"Futur"}],"mapping":{"s2q1w1":"present","s2q1w2":"imparfait","s2q1w3":"futur","s2q1w4":"present","s2q1w5":"imparfait","s2q1w6":"futur"}}'::jsonb,
  'Je chante et nous finissons sont au présent de l''indicatif. Tu marchais et vous lisiez sont à l''imparfait (terminaisons -ais, -iez). Il parlera et elles danseront sont au futur simple (radical + terminaisons -ra, -ront).',
  'Confondre futur simple et conditionnel présent : « il parlera » (futur, -ra) vs « il parlerait » (conditionnel, -rait).',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q2 — Présent / Imparfait / Futur (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Facile',
  'tri_categories',
  'Classez chaque forme verbale dans le temps qui lui correspond.',
  NULL,
  '[{"id":"s2q2w1","label":"elle court"},{"id":"s2q2w2","label":"je dormais"},{"id":"s2q2w3","label":"tu viendras"},{"id":"s2q2w4","label":"ils prennent"},{"id":"s2q2w5","label":"nous partions"},{"id":"s2q2w6","label":"vous verrez"},{"id":"s2q2w7","label":"on mange"},{"id":"s2q2w8","label":"elles riaient"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"present","label":"Présent"},{"id":"imparfait","label":"Imparfait"},{"id":"futur","label":"Futur"}],"mapping":{"s2q2w1":"present","s2q2w2":"imparfait","s2q2w3":"futur","s2q2w4":"present","s2q2w5":"imparfait","s2q2w6":"futur","s2q2w7":"present","s2q2w8":"imparfait"}}'::jsonb,
  'Elle court, ils prennent et on mange sont au présent de l''indicatif. Je dormais, nous partions et elles riaient sont à l''imparfait (-ais, -ions, -aient). Tu viendras et vous verrez sont au futur simple (-ras, -rez).',
  'Attention aux verbes du 3e groupe au présent : « ils prennent » est bien au présent (et non à un autre temps). La terminaison -ent est celle du présent pour la 3e personne du pluriel.',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q3 — Présent / Imparfait / Futur (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Facile',
  'tri_categories',
  'Classez chaque forme verbale dans le temps qui lui correspond.',
  NULL,
  '[{"id":"s2q3w1","label":"tu fais"},{"id":"s2q3w2","label":"il courait"},{"id":"s2q3w3","label":"nous irons"},{"id":"s2q3w4","label":"je sais"},{"id":"s2q3w5","label":"vous disiez"},{"id":"s2q3w6","label":"elle aura"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"present","label":"Présent"},{"id":"imparfait","label":"Imparfait"},{"id":"futur","label":"Futur"}],"mapping":{"s2q3w1":"present","s2q3w2":"imparfait","s2q3w3":"futur","s2q3w4":"present","s2q3w5":"imparfait","s2q3w6":"futur"}}'::jsonb,
  'Tu fais et je sais sont au présent de l''indicatif. Il courait et vous disiez sont à l''imparfait (terminaisons -ait et -iez). Nous irons et elle aura sont au futur simple.',
  'Ne pas confondre « je sais » (présent) et « je savais » (imparfait). Au présent, la terminaison du 3e groupe est souvent irrégulière.',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q4 — Passé composé / Plus-que-parfait / Passé simple (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Intermediaire',
  'tri_categories',
  'Classez chaque forme verbale dans le temps composé ou le passé simple qui lui correspond.',
  NULL,
  '[{"id":"s2q4w1","label":"j''ai mangé"},{"id":"s2q4w2","label":"il avait fini"},{"id":"s2q4w3","label":"tu chantas"},{"id":"s2q4w4","label":"nous avons compris"},{"id":"s2q4w5","label":"elles avaient lu"},{"id":"s2q4w6","label":"vous vîntes"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pc","label":"Passé composé"},{"id":"pqp","label":"Plus-que-parfait"},{"id":"ps","label":"Passé simple"}],"mapping":{"s2q4w1":"pc","s2q4w2":"pqp","s2q4w3":"ps","s2q4w4":"pc","s2q4w5":"pqp","s2q4w6":"ps"}}'::jsonb,
  'J''ai mangé et nous avons compris utilisent l''auxiliaire au présent + participe passé : c''est le passé composé. Il avait fini et elles avaient lu utilisent l''auxiliaire à l''imparfait + participe passé : c''est le plus-que-parfait. Tu chantas et vous vîntes sont des formes simples du passé simple.',
  'Le plus-que-parfait se distingue du passé composé par l''auxiliaire à l''imparfait (avait, avaient) au lieu du présent (a, ont).',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q5 — Passé composé / Plus-que-parfait / Passé simple (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Intermediaire',
  'tri_categories',
  'Classez chaque forme verbale dans le temps qui lui correspond.',
  NULL,
  '[{"id":"s2q5w1","label":"elle est partie"},{"id":"s2q5w2","label":"nous avions prévu"},{"id":"s2q5w3","label":"il prit"},{"id":"s2q5w4","label":"tu as réussi"},{"id":"s2q5w5","label":"j''avais dit"},{"id":"s2q5w6","label":"elles firent"},{"id":"s2q5w7","label":"on a vu"},{"id":"s2q5w8","label":"je fus"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pc","label":"Passé composé"},{"id":"pqp","label":"Plus-que-parfait"},{"id":"ps","label":"Passé simple"}],"mapping":{"s2q5w1":"pc","s2q5w2":"pqp","s2q5w3":"ps","s2q5w4":"pc","s2q5w5":"pqp","s2q5w6":"ps","s2q5w7":"pc","s2q5w8":"ps"}}'::jsonb,
  'Elle est partie, tu as réussi et on a vu sont au passé composé (auxiliaire être/avoir au présent + participe passé). Nous avions prévu et j''avais dit sont au plus-que-parfait (auxiliaire à l''imparfait). Il prit, elles firent et je fus sont au passé simple.',
  'Attention : « elle est partie » est bien au passé composé (auxiliaire être au présent + participe passé), et non au présent. Le verbe « partir » se conjugue avec l''auxiliaire être.',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q6 — Passé composé / Plus-que-parfait / Passé simple (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Intermediaire',
  'tri_categories',
  'Classez chaque forme verbale dans le temps qui lui correspond.',
  NULL,
  '[{"id":"s2q6w1","label":"ils ont découvert"},{"id":"s2q6w2","label":"tu avais su"},{"id":"s2q6w3","label":"nous partîmes"},{"id":"s2q6w4","label":"j''ai cru"},{"id":"s2q6w5","label":"elle avait voulu"},{"id":"s2q6w6","label":"il vit"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pc","label":"Passé composé"},{"id":"pqp","label":"Plus-que-parfait"},{"id":"ps","label":"Passé simple"}],"mapping":{"s2q6w1":"pc","s2q6w2":"pqp","s2q6w3":"ps","s2q6w4":"pc","s2q6w5":"pqp","s2q6w6":"ps"}}'::jsonb,
  'Ils ont découvert et j''ai cru sont au passé composé. Tu avais su et elle avait voulu sont au plus-que-parfait. Nous partîmes et il vit sont au passé simple. Attention : « il vit » est ici le passé simple de « voir » (et non le présent de « vivre »). Le contexte de la série (temps du passé) permet de lever l''ambiguïté.',
  'Ambiguïté de « il vit » : passé simple de « voir » ou présent de « vivre ». En contexte de tri de temps du passé, c''est le passé simple de « voir ».',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q7 — Passé composé / Plus-que-parfait / Passé simple (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Intermediaire',
  'tri_categories',
  'Classez chaque forme verbale dans le temps qui lui correspond.',
  NULL,
  '[{"id":"s2q7w1","label":"vous avez écrit"},{"id":"s2q7w2","label":"ils avaient reçu"},{"id":"s2q7w3","label":"elle courut"},{"id":"s2q7w4","label":"nous sommes venus"},{"id":"s2q7w5","label":"j''avais pu"},{"id":"s2q7w6","label":"tu lus"},{"id":"s2q7w7","label":"on a bu"},{"id":"s2q7w8","label":"il eut"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pc","label":"Passé composé"},{"id":"pqp","label":"Plus-que-parfait"},{"id":"ps","label":"Passé simple"}],"mapping":{"s2q7w1":"pc","s2q7w2":"pqp","s2q7w3":"ps","s2q7w4":"pc","s2q7w5":"pqp","s2q7w6":"ps","s2q7w7":"pc","s2q7w8":"ps"}}'::jsonb,
  'Vous avez écrit, nous sommes venus et on a bu sont au passé composé. Ils avaient reçu et j''avais pu sont au plus-que-parfait. Elle courut, tu lus et il eut sont au passé simple.',
  'Le passé simple de « lire » (tu lus) peut se confondre avec le participe passé « lu ». La terminaison -us est caractéristique du passé simple pour les verbes en -oire/-ure/-oudre.',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q8 — Indicatif / Subjonctif / Conditionnel (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Avance',
  'tri_categories',
  'Classez chaque forme verbale selon le mode auquel elle appartient.',
  NULL,
  '[{"id":"s2q8w1","label":"il chante"},{"id":"s2q8w2","label":"qu''il chante"},{"id":"s2q8w3","label":"il chanterait"},{"id":"s2q8w4","label":"nous finissons"},{"id":"s2q8w5","label":"que nous finissions"},{"id":"s2q8w6","label":"nous finirions"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ind","label":"Indicatif"},{"id":"sub","label":"Subjonctif"},{"id":"cond","label":"Conditionnel"}],"mapping":{"s2q8w1":"ind","s2q8w2":"sub","s2q8w3":"cond","s2q8w4":"ind","s2q8w5":"sub","s2q8w6":"cond"}}'::jsonb,
  'Il chante et nous finissons sont à l''indicatif présent (mode du réel). Qu''il chante et que nous finissions sont au subjonctif présent (mode du possible, introduit par « que »). Il chanterait et nous finirions sont au conditionnel présent (mode de l''hypothèse, terminaisons -rait, -rions).',
  'La forme « qu''il chante » (subjonctif) est identique à « il chante » (indicatif) pour les verbes du 1er groupe. Seul le contexte (présence de « que ») permet de distinguer le mode.',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q9 — Indicatif / Subjonctif / Conditionnel (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Avance',
  'tri_categories',
  'Classez chaque forme verbale selon le mode auquel elle appartient.',
  NULL,
  '[{"id":"s2q9w1","label":"elle vient"},{"id":"s2q9w2","label":"qu''elle vienne"},{"id":"s2q9w3","label":"elle viendrait"},{"id":"s2q9w4","label":"ils savent"},{"id":"s2q9w5","label":"qu''ils sachent"},{"id":"s2q9w6","label":"ils sauraient"},{"id":"s2q9w7","label":"tu fais"},{"id":"s2q9w8","label":"que tu fasses"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ind","label":"Indicatif"},{"id":"sub","label":"Subjonctif"},{"id":"cond","label":"Conditionnel"}],"mapping":{"s2q9w1":"ind","s2q9w2":"sub","s2q9w3":"cond","s2q9w4":"ind","s2q9w5":"sub","s2q9w6":"cond","s2q9w7":"ind","s2q9w8":"sub"}}'::jsonb,
  'Elle vient, ils savent et tu fais sont à l''indicatif présent. Qu''elle vienne, qu''ils sachent et que tu fasses sont au subjonctif présent — noter les radicaux différents de l''indicatif. Elle viendrait et ils sauraient sont au conditionnel présent (radical du futur + terminaisons de l''imparfait).',
  'Les formes du subjonctif des verbes irréguliers (vienne, sachent, fasses) diffèrent radicalement de l''indicatif. C''est un piège fréquent au CRPE.',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- Q10 — Indicatif / Subjonctif / Conditionnel (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1020000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'tri_temps_verbaux',
  'Tri — Temps verbaux',
  'Avance',
  'tri_categories',
  'Classez chaque forme verbale selon le mode auquel elle appartient.',
  NULL,
  '[{"id":"s2qaw1","label":"nous avons"},{"id":"s2qaw2","label":"que nous ayons"},{"id":"s2qaw3","label":"nous aurions"},{"id":"s2qaw4","label":"vous êtes"},{"id":"s2qaw5","label":"que vous soyez"},{"id":"s2qaw6","label":"vous seriez"},{"id":"s2qaw7","label":"je peux"},{"id":"s2qaw8","label":"que je puisse"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ind","label":"Indicatif"},{"id":"sub","label":"Subjonctif"},{"id":"cond","label":"Conditionnel"}],"mapping":{"s2qaw1":"ind","s2qaw2":"sub","s2qaw3":"cond","s2qaw4":"ind","s2qaw5":"sub","s2qaw6":"cond","s2qaw7":"ind","s2qaw8":"sub"}}'::jsonb,
  'Nous avons, vous êtes et je peux sont à l''indicatif présent. Que nous ayons, que vous soyez et que je puisse sont au subjonctif présent — les auxiliaires avoir et être, ainsi que « pouvoir », ont des formes très différentes au subjonctif. Nous aurions et vous seriez sont au conditionnel présent.',
  'Les formes du subjonctif des auxiliaires (ayons, soyez) et de « pouvoir » (puisse) sont à connaître par cœur pour le CRPE. Elles ne se déduisent pas mécaniquement du radical de l''indicatif.',
  'valide',
  'CRPE Français — Tri temps verbaux',
  'free',
  true
);

-- ============================================================
-- SÉRIE 3 : Surlignage — Sujets et verbes (10 questions)
-- ============================================================

-- Q1 — Phrase simple (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Facile',
  'surlignage_propositions',
  'Identifiez le sujet et le verbe conjugué dans cette phrase en surlignant les mots correspondants.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"chat"},{"id":"s3","label":"dort"},{"id":"s4","label":"paisiblement"},{"id":"s5","label":"sur"},{"id":"s6","label":"le"},{"id":"s7","label":"canapé."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s1":"g1","s2":"g1","s3":"g2"}}'::jsonb,
  'Le sujet est « Le chat » : c''est le groupe nominal qui commande l''accord du verbe. On peut le remplacer par « il ». Le verbe conjugué est « dort » (3e personne du singulier du présent de l''indicatif du verbe dormir).',
  'Oublier le déterminant « le » dans le groupe sujet. Le sujet est le groupe nominal entier « Le chat », pas seulement le nom « chat ».',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q2 — Phrase simple (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Facile',
  'surlignage_propositions',
  'Identifiez le sujet et le verbe conjugué dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"oiseaux"},{"id":"s3","label":"chantent"},{"id":"s4","label":"dans"},{"id":"s5","label":"les"},{"id":"s6","label":"arbres."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s1":"g1","s2":"g1","s3":"g2"}}'::jsonb,
  'Le sujet est « Les oiseaux » : c''est le GN qui fait l''action et commande l''accord du verbe au pluriel. Le verbe conjugué est « chantent » (3e personne du pluriel du présent de l''indicatif).',
  'Ne pas confondre le déterminant « les » du sujet avec « les » du complément « les arbres ». Seul le GN en position de sujet est à surligner.',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q3 — Phrase simple (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Facile',
  'surlignage_propositions',
  'Identifiez le sujet et le verbe conjugué dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Ma"},{"id":"s2","label":"petite"},{"id":"s3","label":"sœur"},{"id":"s4","label":"dessine"},{"id":"s5","label":"une"},{"id":"s6","label":"maison."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s1":"g1","s2":"g1","s3":"g1","s4":"g2"}}'::jsonb,
  'Le sujet est « Ma petite sœur » : c''est le groupe nominal étendu (déterminant + adjectif + nom) qui commande l''accord du verbe. Le verbe conjugué est « dessine » (3e personne du singulier du présent).',
  'Ne pas oublier l''adjectif « petite » dans le groupe sujet. Le sujet est le GN complet « Ma petite sœur », pas seulement « sœur ».',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q4 — Sujet inversé (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet et le verbe conjugué dans cette phrase. Attention à l''ordre des mots.',
  NULL,
  '[{"id":"s1","label":"Dans"},{"id":"s2","label":"la"},{"id":"s3","label":"forêt"},{"id":"s4","label":"vivaient"},{"id":"s5","label":"de"},{"id":"s6","label":"nombreux"},{"id":"s7","label":"animaux."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s4":"g2","s5":"g1","s6":"g1","s7":"g1"}}'::jsonb,
  'Le sujet est « de nombreux animaux » : il est placé après le verbe (inversion du sujet). Le verbe conjugué est « vivaient » (3e personne du pluriel de l''imparfait). On peut rétablir l''ordre canonique : « De nombreux animaux vivaient dans la forêt. »',
  'Prendre « la forêt » pour le sujet parce qu''il est placé avant le verbe. C''est un complément circonstanciel de lieu. Le vrai sujet est inversé après le verbe.',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q5 — Sujet composé (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet et le verbe conjugué. Le sujet peut être composé de plusieurs éléments.',
  NULL,
  '[{"id":"s1","label":"Pierre"},{"id":"s2","label":"et"},{"id":"s3","label":"Marie"},{"id":"s4","label":"préparent"},{"id":"s5","label":"le"},{"id":"s6","label":"repas"},{"id":"s7","label":"ensemble."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s1":"g1","s2":"g1","s3":"g1","s4":"g2"}}'::jsonb,
  'Le sujet est « Pierre et Marie » : c''est un sujet composé coordonné par « et ». Il commande l''accord du verbe au pluriel. Le verbe conjugué est « préparent » (3e personne du pluriel du présent). La conjonction « et » fait partie du groupe sujet.',
  'Oublier la conjonction « et » dans le sujet composé, ou ne surligner qu''un seul des deux noms propres. Le sujet est l''ensemble « Pierre et Marie ».',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q6 — Pronom sujet + complément intercalé (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet et le verbe conjugué dans cette phrase interrogative.',
  NULL,
  '[{"id":"s1","label":"Que"},{"id":"s2","label":"font"},{"id":"s3","label":"les"},{"id":"s4","label":"enfants"},{"id":"s5","label":"dans"},{"id":"s6","label":"la"},{"id":"s7","label":"cour ?"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s2":"g2","s3":"g1","s4":"g1"}}'::jsonb,
  'Le sujet est « les enfants » : dans cette phrase interrogative, le sujet est inversé après le verbe. Le verbe conjugué est « font » (3e personne du pluriel du présent du verbe faire). On peut rétablir l''ordre : « Les enfants font quoi dans la cour ? »',
  'Prendre « que » pour le sujet. « Que » est ici un pronom interrogatif COD, pas le sujet. Le sujet est « les enfants », placé après le verbe dans la tournure interrogative.',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q7 — GN étendu sujet (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet et le verbe conjugué. Le sujet peut être un groupe nominal étendu.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"directeur"},{"id":"s3","label":"de"},{"id":"s4","label":"l''école"},{"id":"s5","label":"accueille"},{"id":"s6","label":"les"},{"id":"s7","label":"nouveaux"},{"id":"s8","label":"élèves."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s1":"g1","s2":"g1","s3":"g1","s4":"g1","s5":"g2"}}'::jsonb,
  'Le sujet est « Le directeur de l''école » : c''est un GN étendu par un complément du nom (« de l''école »). Le noyau est « directeur » et c''est lui qui commande l''accord du verbe au singulier. Le verbe conjugué est « accueille » (3e personne du singulier).',
  'Accorder le verbe avec « école » au lieu de « directeur ». Le noyau du GN sujet est « directeur » (singulier), pas le complément du nom « école ».',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q8 — Phrase complexe avec 2 verbes conjugués (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Avance',
  'surlignage_propositions',
  'Identifiez tous les sujets et tous les verbes conjugués dans cette phrase complexe.',
  NULL,
  '[{"id":"s1","label":"L''enseignante"},{"id":"s2","label":"corrige"},{"id":"s3","label":"les"},{"id":"s4","label":"copies"},{"id":"s5","label":"pendant"},{"id":"s6","label":"que"},{"id":"s7","label":"les"},{"id":"s8","label":"élèves"},{"id":"s9","label":"lisent"},{"id":"s10","label":"en"},{"id":"s11","label":"silence."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s1":"g1","s2":"g2","s7":"g1","s8":"g1","s9":"g2"}}'::jsonb,
  'Cette phrase complexe contient deux propositions, chacune avec son sujet et son verbe. Proposition principale : « L''enseignante » (sujet) + « corrige » (verbe). Proposition subordonnée conjonctive : « les élèves » (sujet) + « lisent » (verbe). Le mot « pendant que » est une conjonction de subordination.',
  'Ne repérer qu''un seul couple sujet-verbe. Dans une phrase complexe, chaque proposition a son propre sujet et son propre verbe conjugué.',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q9 — Relative enchâssée (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Avance',
  'surlignage_propositions',
  'Identifiez tous les sujets et tous les verbes conjugués dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"roman"},{"id":"s3","label":"que"},{"id":"s4","label":"tu"},{"id":"s5","label":"m''as"},{"id":"s6","label":"prêté"},{"id":"s7","label":"raconte"},{"id":"s8","label":"une"},{"id":"s9","label":"histoire"},{"id":"s10","label":"passionnante."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s1":"g1","s2":"g1","s4":"g1","s5":"g2","s7":"g2"}}'::jsonb,
  'La proposition principale a pour sujet « Le roman » et pour verbe « raconte ». La proposition subordonnée relative « que tu m''as prêté » est enchâssée : son sujet est « tu » et son verbe conjugué est « as » (dans « m''as prêté », passé composé). Le pronom relatif « que » n''est pas sujet mais COD de la relative.',
  'Confondre le verbe de la relative (« as prêté ») et celui de la principale (« raconte »). Oublier que « m''as » contient le verbe conjugué « as » (auxiliaire avoir au passé composé).',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- Q10 — Trois propositions (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1030000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'surlignage_sujets_verbes',
  'Surlignage — Sujets et verbes',
  'Avance',
  'surlignage_propositions',
  'Identifiez tous les sujets et tous les verbes conjugués dans cette phrase complexe.',
  NULL,
  '[{"id":"s1","label":"Quand"},{"id":"s2","label":"la"},{"id":"s3","label":"cloche"},{"id":"s4","label":"sonne,"},{"id":"s5","label":"les"},{"id":"s6","label":"élèves"},{"id":"s7","label":"se"},{"id":"s8","label":"lèvent"},{"id":"s9","label":"et"},{"id":"s10","label":"ils"},{"id":"s11","label":"sortent"},{"id":"s12","label":"dans"},{"id":"s13","label":"la"},{"id":"s14","label":"cour."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"g1","label":"Sujet","color":"#4A6E8F"},{"id":"g2","label":"Verbe","color":"#A46849"}],"mapping":{"s2":"g1","s3":"g1","s4":"g2","s5":"g1","s6":"g1","s8":"g2","s10":"g1","s11":"g2"}}'::jsonb,
  'Cette phrase contient trois propositions : 1) « la cloche sonne » (subordonnée circonstancielle de temps, sujet : « la cloche », verbe : « sonne »), 2) « les élèves se lèvent » (principale, sujet : « les élèves », verbe : « lèvent »), 3) « ils sortent dans la cour » (coordonnée, sujet : « ils », verbe : « sortent »). Remarque : « sonne, » inclut la virgule car c''est un seul segment.',
  'Oublier le sujet « ils » de la troisième proposition ou considérer que « les élèves » est aussi le sujet de « sortent ». En analyse grammaticale, chaque verbe conjugué a son propre sujet explicite.',
  'valide',
  'CRPE Français — Surlignage sujets et verbes',
  'free',
  true
);

-- ============================================================
-- SÉRIE 4 : Surlignage — Propositions (10 questions)
-- ============================================================

-- Q1 — 2 propositions (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Facile',
  'surlignage_propositions',
  'Délimitez la proposition principale et la proposition subordonnée dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Je"},{"id":"s2","label":"pense"},{"id":"s3","label":"que"},{"id":"s4","label":"tu"},{"id":"s5","label":"as"},{"id":"s6","label":"raison."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"}],"mapping":{"s1":"pp","s2":"pp","s3":"ps","s4":"ps","s5":"ps","s6":"ps"}}'::jsonb,
  'La proposition principale est « Je pense » : elle contient le verbe principal de la phrase. La proposition subordonnée conjonctive est « que tu as raison » : elle est introduite par la conjonction de subordination « que » et complète le verbe « pense » (complétive COD).',
  'Rattacher « que » à la proposition principale. La conjonction de subordination « que » fait partie de la subordonnée qu''elle introduit.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q2 — 2 propositions (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Facile',
  'surlignage_propositions',
  'Délimitez la proposition principale et la proposition subordonnée dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"L''enfant"},{"id":"s2","label":"pleure"},{"id":"s3","label":"parce"},{"id":"s4","label":"qu''il"},{"id":"s5","label":"est"},{"id":"s6","label":"tombé."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"}],"mapping":{"s1":"pp","s2":"pp","s3":"ps","s4":"ps","s5":"ps","s6":"ps"}}'::jsonb,
  'La proposition principale est « L''enfant pleure ». La proposition subordonnée conjonctive circonstancielle de cause est « parce qu''il est tombé », introduite par la locution conjonctive « parce que ».',
  'Séparer « parce » et « qu''il » dans deux propositions différentes. « Parce que » est une locution conjonctive qui forme un tout et appartient à la subordonnée.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q3 — 2 propositions (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Facile',
  'surlignage_propositions',
  'Délimitez la proposition principale et la proposition subordonnée dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Quand"},{"id":"s2","label":"il"},{"id":"s3","label":"pleut,"},{"id":"s4","label":"nous"},{"id":"s5","label":"restons"},{"id":"s6","label":"à"},{"id":"s7","label":"la"},{"id":"s8","label":"maison."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"}],"mapping":{"s1":"ps","s2":"ps","s3":"ps","s4":"pp","s5":"pp","s6":"pp","s7":"pp","s8":"pp"}}'::jsonb,
  'La proposition subordonnée circonstancielle de temps est « Quand il pleut » (placée en tête de phrase, introduite par « quand »). La proposition principale est « nous restons à la maison ». L''ordre est inversé par rapport à l''ordre canonique.',
  'Confondre principale et subordonnée quand la subordonnée est en tête de phrase. La principale est celle qui pourrait fonctionner seule : « Nous restons à la maison. »',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q4 — 3 propositions (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez les trois propositions : principale, subordonnée et coordonnée.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"professeur"},{"id":"s3","label":"explique"},{"id":"s4","label":"la"},{"id":"s5","label":"leçon"},{"id":"s6","label":"et"},{"id":"s7","label":"les"},{"id":"s8","label":"élèves"},{"id":"s9","label":"prennent"},{"id":"s10","label":"des"},{"id":"s11","label":"notes"},{"id":"s12","label":"parce"},{"id":"s13","label":"qu''ils"},{"id":"s14","label":"veulent"},{"id":"s15","label":"réussir."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"},{"id":"pc","label":"Proposition coordonnée","color":"#476257"}],"mapping":{"s1":"pp","s2":"pp","s3":"pp","s4":"pp","s5":"pp","s6":"pc","s7":"pc","s8":"pc","s9":"pc","s10":"pc","s11":"pc","s12":"ps","s13":"ps","s14":"ps","s15":"ps"}}'::jsonb,
  'P1 (principale) : « Le professeur explique la leçon ». P2 (coordonnée) : « et les élèves prennent des notes » — coordonnée à P1 par « et ». P3 (subordonnée) : « parce qu''ils veulent réussir » — subordonnée circonstancielle de cause, rattachée à P2.',
  'Rattacher « parce qu''ils veulent réussir » à la proposition principale plutôt qu''à la coordonnée. La subordonnée de cause explique pourquoi les élèves prennent des notes, pas pourquoi le professeur explique.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q5 — 3 propositions avec relative (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez les propositions : principale, subordonnée relative et subordonnée conjonctive.',
  NULL,
  '[{"id":"s1","label":"L''élève"},{"id":"s2","label":"qui"},{"id":"s3","label":"a"},{"id":"s4","label":"terminé"},{"id":"s5","label":"attend"},{"id":"s6","label":"que"},{"id":"s7","label":"le"},{"id":"s8","label":"professeur"},{"id":"s9","label":"corrige"},{"id":"s10","label":"sa"},{"id":"s11","label":"copie."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"}],"mapping":{"s1":"pp","s2":"ps","s3":"ps","s4":"ps","s5":"pp","s6":"ps","s7":"ps","s8":"ps","s9":"ps","s10":"ps","s11":"ps"}}'::jsonb,
  'La proposition principale est « L''élève attend » (le sujet et le verbe principal). Deux subordonnées s''y rattachent : la relative « qui a terminé » (complète le nom « élève ») et la conjonctive « que le professeur corrige sa copie » (complétive COD du verbe « attend »). La principale est discontinue : « L''élève [...] attend ».',
  'Inclure « qui a terminé » dans la principale. Cette relative est une subordonnée enchâssée dans le GN sujet. La principale, reconstituée, est : « L''élève attend. »',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q6 — 3 propositions (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez les trois propositions : principale, subordonnée et coordonnée.',
  NULL,
  '[{"id":"s1","label":"Si"},{"id":"s2","label":"tu"},{"id":"s3","label":"travailles"},{"id":"s4","label":"bien,"},{"id":"s5","label":"tu"},{"id":"s6","label":"réussiras"},{"id":"s7","label":"ton"},{"id":"s8","label":"examen"},{"id":"s9","label":"et"},{"id":"s10","label":"tu"},{"id":"s11","label":"seras"},{"id":"s12","label":"fier."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"},{"id":"pc","label":"Proposition coordonnée","color":"#476257"}],"mapping":{"s1":"ps","s2":"ps","s3":"ps","s4":"ps","s5":"pp","s6":"pp","s7":"pp","s8":"pp","s9":"pc","s10":"pc","s11":"pc","s12":"pc"}}'::jsonb,
  'P1 (subordonnée) : « Si tu travailles bien » — circonstancielle de condition introduite par « si ». P2 (principale) : « tu réussiras ton examen » — c''est la proposition dont dépendent les autres. P3 (coordonnée) : « et tu seras fier » — coordonnée à la principale par « et ».',
  'Prendre la subordonnée conditionnelle pour la principale parce qu''elle est en première position. La principale est celle qui porte l''information essentielle et pourrait fonctionner seule.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q7 — 3 propositions avec juxtaposition (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez les trois propositions de cette phrase. Attention : certaines sont juxtaposées, d''autres subordonnées.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"vent"},{"id":"s3","label":"souffle,"},{"id":"s4","label":"la"},{"id":"s5","label":"pluie"},{"id":"s6","label":"tombe"},{"id":"s7","label":"alors"},{"id":"s8","label":"que"},{"id":"s9","label":"les"},{"id":"s10","label":"enfants"},{"id":"s11","label":"jouent"},{"id":"s12","label":"dehors."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"},{"id":"pc","label":"Proposition coordonnée","color":"#476257"}],"mapping":{"s1":"pp","s2":"pp","s3":"pp","s4":"pc","s5":"pc","s6":"pc","s7":"ps","s8":"ps","s9":"ps","s10":"ps","s11":"ps","s12":"ps"}}'::jsonb,
  'P1 (principale) : « Le vent souffle » — première proposition indépendante. P2 (coordonnée, ici juxtaposée par la virgule) : « la pluie tombe » — juxtaposée à P1. P3 (subordonnée) : « alors que les enfants jouent dehors » — circonstancielle d''opposition introduite par « alors que ».',
  'Confondre juxtaposition et subordination. Deux propositions juxtaposées (séparées par une virgule) sont de même niveau syntaxique. La subordonnée, elle, dépend d''une autre proposition.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q8 — 4 propositions (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Avance',
  'surlignage_propositions',
  'Délimitez les quatre propositions de cette phrase complexe : principale, subordonnées et coordonnée.',
  NULL,
  '[{"id":"s1","label":"Bien"},{"id":"s2","label":"qu''il"},{"id":"s3","label":"soit"},{"id":"s4","label":"fatigué,"},{"id":"s5","label":"l''athlète"},{"id":"s6","label":"continue"},{"id":"s7","label":"la"},{"id":"s8","label":"course"},{"id":"s9","label":"car"},{"id":"s10","label":"il"},{"id":"s11","label":"sait"},{"id":"s12","label":"qu''il"},{"id":"s13","label":"peut"},{"id":"s14","label":"gagner."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"},{"id":"pc","label":"Proposition coordonnée","color":"#476257"}],"mapping":{"s1":"ps","s2":"ps","s3":"ps","s4":"ps","s5":"pp","s6":"pp","s7":"pp","s8":"pp","s9":"pc","s10":"pc","s11":"pc","s12":"ps","s13":"ps","s14":"ps"}}'::jsonb,
  'P1 (subordonnée concessive) : « Bien qu''il soit fatigué » — introduite par « bien que » + subjonctif. P2 (principale) : « l''athlète continue la course ». P3 (coordonnée) : « car il sait » — coordonnée à la principale par « car ». P4 (subordonnée complétive) : « qu''il peut gagner » — COD du verbe « sait » dans la coordonnée.',
  'Rattacher « qu''il peut gagner » à la principale. Cette complétive dépend du verbe « sait » de la proposition coordonnée, pas du verbe de la principale.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q9 — 4 propositions avec relative enchâssée (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Avance',
  'surlignage_propositions',
  'Délimitez les propositions de cette phrase complexe : principale, subordonnées et coordonnée.',
  NULL,
  '[{"id":"s1","label":"L''auteur"},{"id":"s2","label":"dont"},{"id":"s3","label":"nous"},{"id":"s4","label":"étudions"},{"id":"s5","label":"l''œuvre"},{"id":"s6","label":"a"},{"id":"s7","label":"écrit"},{"id":"s8","label":"ce"},{"id":"s9","label":"roman"},{"id":"s10","label":"lorsqu''il"},{"id":"s11","label":"vivait"},{"id":"s12","label":"à"},{"id":"s13","label":"Paris"},{"id":"s14","label":"et"},{"id":"s15","label":"il"},{"id":"s16","label":"y"},{"id":"s17","label":"décrit"},{"id":"s18","label":"la"},{"id":"s19","label":"vie"},{"id":"s20","label":"quotidienne."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"},{"id":"pc","label":"Proposition coordonnée","color":"#476257"}],"mapping":{"s1":"pp","s2":"ps","s3":"ps","s4":"ps","s5":"ps","s6":"pp","s7":"pp","s8":"pp","s9":"pp","s10":"ps","s11":"ps","s12":"ps","s13":"ps","s14":"pc","s15":"pc","s16":"pc","s17":"pc","s18":"pc","s19":"pc","s20":"pc"}}'::jsonb,
  'P1 (principale) : « L''auteur a écrit ce roman » — discontinue car interrompue par la relative. P2 (subordonnée relative) : « dont nous étudions l''œuvre » — complète le nom « auteur ». P3 (subordonnée circonstancielle de temps) : « lorsqu''il vivait à Paris ». P4 (coordonnée) : « et il y décrit la vie quotidienne » — coordonnée à P1 par « et ».',
  'Inclure la relative « dont nous étudions l''œuvre » dans la principale. Cette relative est enchâssée et forme une proposition distincte avec son propre verbe conjugué « étudions ».',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);

-- Q10 — 4+ propositions (Avance)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1040000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'surlignage_propositions_complexes',
  'Surlignage — Propositions',
  'Avance',
  'surlignage_propositions',
  'Délimitez les propositions de cette phrase complexe : principale, subordonnées et coordonnée.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"chercheurs"},{"id":"s3","label":"qui"},{"id":"s4","label":"ont"},{"id":"s5","label":"mené"},{"id":"s6","label":"cette"},{"id":"s7","label":"étude"},{"id":"s8","label":"affirment"},{"id":"s9","label":"que"},{"id":"s10","label":"le"},{"id":"s11","label":"climat"},{"id":"s12","label":"change"},{"id":"s13","label":"rapidement"},{"id":"s14","label":"et"},{"id":"s15","label":"qu''il"},{"id":"s16","label":"faut"},{"id":"s17","label":"agir"},{"id":"s18","label":"avant"},{"id":"s19","label":"qu''il"},{"id":"s20","label":"ne"},{"id":"s21","label":"soit"},{"id":"s22","label":"trop"},{"id":"s23","label":"tard."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"#4A6E8F"},{"id":"ps","label":"Proposition subordonnée","color":"#A46849"},{"id":"pc","label":"Proposition coordonnée","color":"#476257"}],"mapping":{"s1":"pp","s2":"pp","s3":"ps","s4":"ps","s5":"ps","s6":"ps","s7":"ps","s8":"pp","s9":"ps","s10":"ps","s11":"ps","s12":"ps","s13":"ps","s14":"pc","s15":"pc","s16":"pc","s17":"pc","s18":"ps","s19":"ps","s20":"ps","s21":"ps","s22":"ps","s23":"ps"}}'::jsonb,
  'P1 (principale) : « Les chercheurs affirment » — discontinue, interrompue par la relative. P2 (subordonnée relative) : « qui ont mené cette étude » — complète « chercheurs ». P3 (subordonnée complétive) : « que le climat change rapidement » — COD de « affirment ». P4 (coordonnée à P3) : « et qu''il faut agir » — coordonnée par « et » à la complétive. P5 (subordonnée circonstancielle de temps) : « avant qu''il ne soit trop tard » — rattachée à P4.',
  'Ne pas voir que « et qu''il faut agir » est une proposition coordonnée à la première complétive. Le « et » coordonne deux subordonnées de même niveau, ce qui crée une coordonnée au sein de la subordination.',
  'valide',
  'CRPE Français — Surlignage propositions',
  'free',
  true
);
