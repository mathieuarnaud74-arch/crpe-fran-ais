-- Migration: seed 20 exercices interactifs — orthographe (accords)
-- Série 1 : tri_accords_chaines (tri_categories) — 10 questions, free
-- Série 2 : surlignage_accords_phrase (surlignage_propositions) — 10 questions, premium

-- ============================================================
-- SÉRIE 1 : Tri — Chaînes d'accords dans le groupe nominal
-- exercise_type: tri_categories | subdomain: orthographe
-- access_tier: free | 3 Facile, 4 Intermediaire, 3 Difficile
-- ============================================================

-- Q1 — Facile — Singulier / Pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Facile',
  'tri_categories',
  'Classez chaque groupe nominal selon qu''il est au singulier ou au pluriel.',
  NULL,
  '[{"id":"s1q1w1","label":"les belles maisons"},{"id":"s1q1w2","label":"un grand jardin"},{"id":"s1q1w3","label":"des fleurs rouges"},{"id":"s1q1w4","label":"cette petite fille"},{"id":"s1q1w5","label":"plusieurs livres anciens"},{"id":"s1q1w6","label":"le vieux château"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"singulier","label":"Accord au singulier"},{"id":"pluriel","label":"Accord au pluriel"}],"mapping":{"s1q1w1":"pluriel","s1q1w2":"singulier","s1q1w3":"pluriel","s1q1w4":"singulier","s1q1w5":"pluriel","s1q1w6":"singulier"}}'::jsonb,
  'Dans le groupe nominal, le déterminant, le nom et l''adjectif s''accordent en genre et en nombre. Les déterminants « les », « des », « plusieurs » signalent le pluriel. Les déterminants « un », « cette », « le » signalent le singulier. Selon les programmes Éduscol, la maîtrise des chaînes d''accords est un objectif central de l''orthographe grammaticale au cycle 3.',
  'Se fier uniquement au déterminant sans vérifier l''accord sur l''ensemble de la chaîne (déterminant + nom + adjectif).',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Singulier / Pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Facile',
  'tri_categories',
  'Classez chaque groupe nominal selon qu''il est au singulier ou au pluriel.',
  NULL,
  '[{"id":"s1q2w1","label":"une longue route"},{"id":"s1q2w2","label":"ces arbres immenses"},{"id":"s1q2w3","label":"mon cahier bleu"},{"id":"s1q2w4","label":"deux chats noirs"},{"id":"s1q2w5","label":"la nouvelle école"},{"id":"s1q2w6","label":"ses crayons cassés"},{"id":"s1q2w7","label":"chaque matin calme"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"singulier","label":"Accord au singulier"},{"id":"pluriel","label":"Accord au pluriel"}],"mapping":{"s1q2w1":"singulier","s1q2w2":"pluriel","s1q2w3":"singulier","s1q2w4":"pluriel","s1q2w5":"singulier","s1q2w6":"pluriel","s1q2w7":"singulier"}}'::jsonb,
  'Le déterminant donne une première indication du nombre, mais c''est l''ensemble de la chaîne qui doit être cohérent. « Ces arbres immenses » : le déterminant démonstratif pluriel « ces » impose le pluriel sur le nom « arbres » et l''adjectif « immenses ». « Chaque » est toujours suivi du singulier. Éduscol insiste sur l''observation systématique des marques de nombre dans le GN.',
  'Considérer « chaque » comme un déterminant pluriel parce qu''il évoque une généralité. « Chaque » est toujours singulier.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Singulier / Pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Facile',
  'tri_categories',
  'Classez chaque groupe nominal selon qu''il est au singulier ou au pluriel.',
  NULL,
  '[{"id":"s1q3w1","label":"nos voisins sympathiques"},{"id":"s1q3w2","label":"un fruit mûr"},{"id":"s1q3w3","label":"quelques idées nouvelles"},{"id":"s1q3w4","label":"ton petit frère"},{"id":"s1q3w5","label":"les premières pages"},{"id":"s1q3w6","label":"cet ancien bâtiment"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"singulier","label":"Accord au singulier"},{"id":"pluriel","label":"Accord au pluriel"}],"mapping":{"s1q3w1":"pluriel","s1q3w2":"singulier","s1q3w3":"pluriel","s1q3w4":"singulier","s1q3w5":"pluriel","s1q3w6":"singulier"}}'::jsonb,
  '« Nos voisins sympathiques » forme une chaîne d''accords au pluriel : le déterminant possessif « nos », le nom « voisins » et l''adjectif « sympathiques » portent tous la marque du pluriel. « Cet » est la forme masculine singulier du déterminant démonstratif devant voyelle. Selon Éduscol, l''élève doit apprendre à repérer et vérifier chaque maillon de la chaîne d''accords.',
  'Confondre « cet » (masculin singulier devant voyelle ou h muet) avec « ces » (pluriel). La forme « cet » reste du singulier.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — Masculin singulier / Féminin singulier / Pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe nominal selon son genre et son nombre : masculin singulier, féminin singulier ou pluriel.',
  NULL,
  '[{"id":"s1q4w1","label":"un élève attentif"},{"id":"s1q4w2","label":"une élève attentive"},{"id":"s1q4w3","label":"des élèves attentifs"},{"id":"s1q4w4","label":"la grande salle"},{"id":"s1q4w5","label":"le grand salon"},{"id":"s1q4w6","label":"les grands salons"},{"id":"s1q4w7","label":"cette rue étroite"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"masc_sg","label":"Masculin singulier"},{"id":"fem_sg","label":"Féminin singulier"},{"id":"pluriel","label":"Pluriel"}],"mapping":{"s1q4w1":"masc_sg","s1q4w2":"fem_sg","s1q4w3":"pluriel","s1q4w4":"fem_sg","s1q4w5":"masc_sg","s1q4w6":"pluriel","s1q4w7":"fem_sg"}}'::jsonb,
  'Le nom « élève » est épicène : son genre se manifeste uniquement dans le déterminant et l''adjectif. « Un élève attentif » (masculin singulier) vs « une élève attentive » (féminin singulier). Au pluriel, « des élèves attentifs » utilise la forme masculine par défaut en cas de pluriel mixte. Selon Éduscol, la compréhension du genre des noms épicènes est un point de vigilance pour l''orthographe grammaticale.',
  'Croire que le nom « élève » change de forme selon le genre. C''est un nom épicène : seuls le déterminant et l''adjectif varient.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Masculin singulier / Féminin singulier / Pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe nominal selon son genre et son nombre.',
  NULL,
  '[{"id":"s1q5w1","label":"une personne aimable"},{"id":"s1q5w2","label":"un homme aimable"},{"id":"s1q5w3","label":"des personnes aimables"},{"id":"s1q5w4","label":"le professeur compétent"},{"id":"s1q5w5","label":"la directrice compétente"},{"id":"s1q5w6","label":"les directrices compétentes"},{"id":"s1q5w7","label":"un artiste célèbre"},{"id":"s1q5w8","label":"cette artiste célèbre"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"masc_sg","label":"Masculin singulier"},{"id":"fem_sg","label":"Féminin singulier"},{"id":"pluriel","label":"Pluriel"}],"mapping":{"s1q5w1":"fem_sg","s1q5w2":"masc_sg","s1q5w3":"pluriel","s1q5w4":"masc_sg","s1q5w5":"fem_sg","s1q5w6":"pluriel","s1q5w7":"masc_sg","s1q5w8":"fem_sg"}}'::jsonb,
  'L''adjectif « aimable » est invariable en genre : il ne change pas entre masculin et féminin, mais prend la marque du pluriel (« aimables »). Le nom « artiste » est épicène ; seul le déterminant permet de distinguer le genre. Selon les programmes Éduscol, identifier les adjectifs invariables en genre est essentiel pour éviter les erreurs d''accord dans le GN.',
  'Ajouter un « e » final à « aimable » au féminin, alors que cet adjectif se termine déjà par « e » et reste identique aux deux genres.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Masculin singulier / Féminin singulier / Pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe nominal selon son genre et son nombre.',
  NULL,
  '[{"id":"s1q6w1","label":"son nouveau cartable"},{"id":"s1q6w2","label":"sa nouvelle trousse"},{"id":"s1q6w3","label":"ses nouvelles affaires"},{"id":"s1q6w4","label":"leur fils unique"},{"id":"s1q6w5","label":"leur fille unique"},{"id":"s1q6w6","label":"leurs enfants uniques"},{"id":"s1q6w7","label":"son amie fidèle"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"masc_sg","label":"Masculin singulier"},{"id":"fem_sg","label":"Féminin singulier"},{"id":"pluriel","label":"Pluriel"}],"mapping":{"s1q6w1":"masc_sg","s1q6w2":"fem_sg","s1q6w3":"pluriel","s1q6w4":"masc_sg","s1q6w5":"fem_sg","s1q6w6":"pluriel","s1q6w7":"fem_sg"}}'::jsonb,
  'Les déterminants possessifs « son/sa/ses » et « leur/leurs » varient selon le nombre du nom possédé. Attention : « son amie » utilise « son » au lieu de « sa » devant voyelle, mais le GN reste féminin singulier (on dit « son amie fidèle » et non « *sa amie fidèle »). Éduscol rappelle que cette liaison phonétique est une source fréquente d''erreurs d''identification du genre.',
  'Croire que « son amie » est masculin parce que le déterminant est « son ». Devant un nom féminin commençant par une voyelle, « son » remplace « sa » pour des raisons phonétiques.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — Masculin singulier / Féminin singulier / Pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe nominal selon son genre et son nombre.',
  NULL,
  '[{"id":"s1q7w1","label":"ce magnifique paysage"},{"id":"s1q7w2","label":"cette magnifique forêt"},{"id":"s1q7w3","label":"ces magnifiques paysages"},{"id":"s1q7w4","label":"un enfant timide"},{"id":"s1q7w5","label":"une enfant timide"},{"id":"s1q7w6","label":"des enfants timides"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"masc_sg","label":"Masculin singulier"},{"id":"fem_sg","label":"Féminin singulier"},{"id":"pluriel","label":"Pluriel"}],"mapping":{"s1q7w1":"masc_sg","s1q7w2":"fem_sg","s1q7w3":"pluriel","s1q7w4":"masc_sg","s1q7w5":"fem_sg","s1q7w6":"pluriel"}}'::jsonb,
  'L''adjectif « magnifique » est invariable en genre (il se termine par « e » au masculin comme au féminin) mais variable en nombre (« magnifiques » au pluriel). De même, « timide » ne varie pas en genre. Le nom « enfant » est épicène : seul le déterminant marque le genre. Les programmes Éduscol soulignent que les adjectifs en « -e » au masculin sont un cas particulier à travailler explicitement.',
  'Tenter d''ajouter un « e » à « magnifique » ou « timide » au féminin, alors que ces adjectifs sont déjà terminés par « e » et invariables en genre.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Accord correct / Accord incorrect / Les deux graphies possibles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Difficile',
  'tri_categories',
  'Indiquez si l''accord dans chaque groupe nominal est correct, incorrect ou si les deux graphies sont possibles.',
  NULL,
  '[{"id":"s1q8w1","label":"des yeux bleus"},{"id":"s1q8w2","label":"des yeux bleues"},{"id":"s1q8w3","label":"des robes oranges"},{"id":"s1q8w4","label":"des robes orange"},{"id":"s1q8w5","label":"une demi-heure"},{"id":"s1q8w6","label":"une demie-heure"},{"id":"s1q8w7","label":"des cheveux châtain"},{"id":"s1q8w8","label":"des cheveux châtains"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"correct","label":"Accord correct"},{"id":"incorrect","label":"Accord incorrect"},{"id":"deux_possibles","label":"Les deux graphies possibles"}],"mapping":{"s1q8w1":"correct","s1q8w2":"incorrect","s1q8w3":"incorrect","s1q8w4":"correct","s1q8w5":"correct","s1q8w6":"incorrect","s1q8w7":"correct","s1q8w8":"correct"}}'::jsonb,
  '« Yeux » est masculin pluriel, donc « bleus » (et non « bleues »). « Orange », adjectif de couleur dérivé d''un nom, est invariable (« des robes orange »). « Demi » placé avant le nom reste invariable et se lie par un trait d''union (« une demi-heure »). « Châtain » admet les deux graphies au pluriel selon les rectifications orthographiques de 1990. Éduscol rappelle que les adjectifs de couleur dérivés de noms sont un point clé de l''orthographe lexicale.',
  'Accorder « orange » comme un adjectif ordinaire. Les adjectifs de couleur issus de noms (orange, marron, crème) sont invariables, sauf exceptions consacrées (rose, mauve, écarlate).',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Accord correct / Accord incorrect / Les deux graphies possibles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Difficile',
  'tri_categories',
  'Indiquez si l''accord dans chaque groupe nominal est correct, incorrect ou si les deux graphies sont possibles.',
  NULL,
  '[{"id":"s1q9w1","label":"des personnes tout étonnées"},{"id":"s1q9w2","label":"des personnes toutes étonnées"},{"id":"s1q9w3","label":"des garçons tout étonnés"},{"id":"s1q9w4","label":"des garçons tous étonnés"},{"id":"s1q9w5","label":"nu-pieds dans l''herbe"},{"id":"s1q9w6","label":"nue-pieds dans l''herbe"},{"id":"s1q9w7","label":"les pieds nus"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"correct","label":"Accord correct"},{"id":"incorrect","label":"Accord incorrect"},{"id":"deux_possibles","label":"Les deux graphies possibles"}],"mapping":{"s1q9w1":"incorrect","s1q9w2":"correct","s1q9w3":"correct","s1q9w4":"incorrect","s1q9w5":"correct","s1q9w6":"incorrect","s1q9w7":"correct"}}'::jsonb,
  '« Tout » adverbe est normalement invariable (« des garçons tout étonnés »), mais il s''accorde exceptionnellement au féminin devant un adjectif féminin commençant par une consonne ou un h aspiré (« toutes étonnées »). « Nu » placé avant le nom est invariable et lié par un trait d''union (« nu-pieds ») ; placé après, il s''accorde (« les pieds nus »). Selon Éduscol, ces règles d''accord particulières relèvent de l''orthographe grammaticale approfondie au cycle 3.',
  'Accorder « tout » devant un adjectif masculin (« *tous étonnés ») par analogie avec le féminin. L''accord de « tout » adverbe ne se fait qu''au féminin devant consonne ou h aspiré.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Accord correct / Accord incorrect / Les deux graphies possibles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'tri_accords_chaines',
  'Tri — Chaînes d''accords',
  'Difficile',
  'tri_categories',
  'Indiquez si l''accord dans chaque groupe nominal est correct, incorrect ou si les deux graphies sont possibles.',
  NULL,
  '[{"id":"s1q10w1","label":"des après-midis ensoleillés"},{"id":"s1q10w2","label":"des après-midi ensoleillés"},{"id":"s1q10w3","label":"les belles-mères attentives"},{"id":"s1q10w4","label":"les belles-mère attentives"},{"id":"s1q10w5","label":"des chefs-d''œuvre admirables"},{"id":"s1q10w6","label":"des chef-d''œuvres admirables"},{"id":"s1q10w7","label":"les arcs-en-ciel magnifiques"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"correct","label":"Accord correct"},{"id":"incorrect","label":"Accord incorrect"},{"id":"deux_possibles","label":"Les deux graphies possibles"}],"mapping":{"s1q10w1":"correct","s1q10w2":"correct","s1q10w3":"correct","s1q10w4":"incorrect","s1q10w5":"correct","s1q10w6":"incorrect","s1q10w7":"correct"}}'::jsonb,
  '« Après-midi » admet les deux pluriels (invariable ou avec « s ») selon les rectifications de 1990. « Belles-mères » : les deux éléments prennent la marque du pluriel (nom + nom). « Chefs-d''œuvre » : seul le premier élément prend le pluriel car « d''œuvre » est un complément. « Arcs-en-ciel » : seul « arc » prend le pluriel, « en ciel » étant un complément figé. Éduscol préconise un enseignement explicite du pluriel des noms composés.',
  'Mettre le « s » du pluriel sur le mauvais élément du nom composé. Il faut analyser la structure : seuls les noms et adjectifs prennent le pluriel, pas les verbes ni les prépositions.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Surlignage — Repérer les accords dans la phrase
-- exercise_type: surlignage_propositions | subdomain: orthographe
-- access_tier: premium | 3 Facile, 4 Intermediaire, 3 Difficile
-- ============================================================

-- Q1 — Facile — Accord dans le GN / Accord sujet-verbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots qui portent un accord dans le groupe nominal (GN) et ceux qui portent l''accord sujet-verbe.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"petites"},{"id":"s3","label":"filles"},{"id":"s4","label":"jouent"},{"id":"s5","label":"dans"},{"id":"s6","label":"le"},{"id":"s7","label":"jardin."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_gn","label":"Accord dans le GN","color":"#4A6E8F"},{"id":"accord_sv","label":"Accord sujet-verbe","color":"#A46849"}],"mapping":{"s1":"accord_gn","s2":"accord_gn","s3":"accord_gn","s4":"accord_sv"}}'::jsonb,
  'Les mots « Les », « petites » et « filles » forment une chaîne d''accord au féminin pluriel dans le GN sujet. Le verbe « jouent » porte la marque de l''accord sujet-verbe (3e personne du pluriel). Selon Éduscol, identifier ces chaînes d''accords est essentiel pour construire une orthographe grammaticale raisonnée.',
  'Oublier de surligner le déterminant « Les » comme porteur d''accord dans le GN. Le déterminant fait partie intégrante de la chaîne d''accords.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Accord dans le GN / Accord sujet-verbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots qui portent un accord dans le groupe nominal (GN) et ceux qui portent l''accord sujet-verbe.',
  NULL,
  '[{"id":"s1","label":"Mon"},{"id":"s2","label":"grand"},{"id":"s3","label":"frère"},{"id":"s4","label":"prépare"},{"id":"s5","label":"une"},{"id":"s6","label":"délicieuse"},{"id":"s7","label":"tarte"},{"id":"s8","label":"aux"},{"id":"s9","label":"pommes."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_gn","label":"Accord dans le GN","color":"#4A6E8F"},{"id":"accord_sv","label":"Accord sujet-verbe","color":"#A46849"}],"mapping":{"s1":"accord_gn","s2":"accord_gn","s3":"accord_gn","s4":"accord_sv","s5":"accord_gn","s6":"accord_gn","s7":"accord_gn"}}'::jsonb,
  'Deux chaînes d''accords dans le GN sont présentes : « Mon grand frère » (masculin singulier) et « une délicieuse tarte » (féminin singulier). Le verbe « prépare » porte l''accord sujet-verbe (3e personne du singulier). « Aux pommes » est un complément du nom introduit par une préposition contractée ; « pommes » n''entre pas dans la chaîne d''accords du GN principal. Éduscol recommande de faire repérer les différentes chaînes d''accords dans une même phrase.',
  'Surligner « pommes » comme accord dans le GN. Ici, « aux pommes » est un complément du nom « tarte » et ne fait pas partie de la chaîne d''accords du GN « une délicieuse tarte ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Accord dans le GN / Accord sujet-verbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots qui portent un accord dans le groupe nominal (GN) et ceux qui portent l''accord sujet-verbe.',
  NULL,
  '[{"id":"s1","label":"Ces"},{"id":"s2","label":"oiseaux"},{"id":"s3","label":"migrateurs"},{"id":"s4","label":"traversent"},{"id":"s5","label":"la"},{"id":"s6","label":"mer"},{"id":"s7","label":"chaque"},{"id":"s8","label":"automne."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_gn","label":"Accord dans le GN","color":"#4A6E8F"},{"id":"accord_sv","label":"Accord sujet-verbe","color":"#A46849"}],"mapping":{"s1":"accord_gn","s2":"accord_gn","s3":"accord_gn","s4":"accord_sv","s5":"accord_gn","s6":"accord_gn"}}'::jsonb,
  '« Ces oiseaux migrateurs » forme une chaîne d''accord au masculin pluriel (déterminant + nom + adjectif). Le verbe « traversent » s''accorde avec le sujet « Ces oiseaux migrateurs » à la 3e personne du pluriel. « La mer » est un GN au féminin singulier (COD). « Chaque automne » est un complément circonstanciel ; « chaque » est un déterminant singulier mais il n''entre pas dans une chaîne d''accords avec adjectif. Éduscol insiste sur la distinction entre les différents GN d''une même phrase.',
  'Surligner « chaque » ou « automne » comme accord dans le GN au même titre que les autres. « Chaque automne » ne comporte pas d''adjectif ; la chaîne d''accords y est minimale.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — Accord GN / Accord sujet-verbe / Accord du participe passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots portant un accord dans le GN, l''accord sujet-verbe et l''accord du participe passé.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"lettres"},{"id":"s3","label":"sont"},{"id":"s4","label":"arrivées"},{"id":"s5","label":"ce"},{"id":"s6","label":"matin"},{"id":"s7","label":"par"},{"id":"s8","label":"la"},{"id":"s9","label":"poste."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_gn","label":"Accord dans le GN","color":"#4A6E8F"},{"id":"accord_sv","label":"Accord sujet-verbe","color":"#A46849"},{"id":"accord_pp","label":"Accord du participe passé","color":"#6B534A"}],"mapping":{"s1":"accord_gn","s2":"accord_gn","s3":"accord_sv","s4":"accord_pp","s5":"accord_gn","s6":"accord_gn","s8":"accord_gn","s9":"accord_gn"}}'::jsonb,
  '« Les lettres » forment un GN au féminin pluriel. L''auxiliaire « sont » porte l''accord sujet-verbe (3e personne du pluriel). Le participe passé « arrivées » s''accorde avec le sujet « les lettres » car il est employé avec l''auxiliaire être : il prend donc les marques du féminin pluriel (-ées). Selon Éduscol, l''accord du participe passé avec être est une règle fondamentale travaillée dès le cycle 3.',
  'Oublier d''accorder le participe passé « arrivées » au féminin pluriel. Avec l''auxiliaire être, le participe passé s''accorde toujours en genre et en nombre avec le sujet.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Accord GN / Accord sujet-verbe / Accord du participe passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots portant un accord dans le GN, l''accord sujet-verbe et l''accord du participe passé.',
  NULL,
  '[{"id":"s1","label":"Nous"},{"id":"s2","label":"avons"},{"id":"s3","label":"mangé"},{"id":"s4","label":"les"},{"id":"s5","label":"cerises"},{"id":"s6","label":"rouges"},{"id":"s7","label":"que"},{"id":"s8","label":"ma"},{"id":"s9","label":"voisine"},{"id":"s10","label":"avait"},{"id":"s11","label":"cueillies."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_gn","label":"Accord dans le GN","color":"#4A6E8F"},{"id":"accord_sv","label":"Accord sujet-verbe","color":"#A46849"},{"id":"accord_pp","label":"Accord du participe passé","color":"#6B534A"}],"mapping":{"s2":"accord_sv","s4":"accord_gn","s5":"accord_gn","s6":"accord_gn","s8":"accord_gn","s9":"accord_gn","s10":"accord_sv","s11":"accord_pp"}}'::jsonb,
  '« Les cerises rouges » est un GN au féminin pluriel. « Avons » s''accorde avec « Nous » (1re personne du pluriel) et « avait » avec « ma voisine » (3e personne du singulier). Le participe passé « cueillies » s''accorde avec le COD « que » (mis pour « les cerises rouges ») placé avant l''auxiliaire avoir : il prend les marques du féminin pluriel. Éduscol signale que l''accord du participe passé avec avoir et COD antéposé est un apprentissage clé du cycle 3.',
  'Ne pas accorder « cueillies » au féminin pluriel. Avec avoir, le participe passé s''accorde avec le COD uniquement si celui-ci est placé avant le verbe (ici le pronom relatif « que »).',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Accord GN / Accord sujet-verbe / Accord du participe passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots portant un accord dans le GN, l''accord sujet-verbe et l''accord du participe passé.',
  NULL,
  '[{"id":"s1","label":"La"},{"id":"s2","label":"directrice"},{"id":"s3","label":"est"},{"id":"s4","label":"restée"},{"id":"s5","label":"très"},{"id":"s6","label":"attentive"},{"id":"s7","label":"aux"},{"id":"s8","label":"nombreux"},{"id":"s9","label":"problèmes"},{"id":"s10","label":"signalés."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_gn","label":"Accord dans le GN","color":"#4A6E8F"},{"id":"accord_sv","label":"Accord sujet-verbe","color":"#A46849"},{"id":"accord_pp","label":"Accord du participe passé","color":"#6B534A"}],"mapping":{"s1":"accord_gn","s2":"accord_gn","s3":"accord_sv","s4":"accord_pp","s6":"accord_pp","s8":"accord_gn","s9":"accord_gn","s10":"accord_pp"}}'::jsonb,
  '« La directrice » est un GN au féminin singulier. « Est » porte l''accord sujet-verbe. Le participe passé « restée » s''accorde avec le sujet « la directrice » (féminin singulier) via l''auxiliaire être. L''adjectif attribut « attentive » s''accorde aussi avec le sujet. « Nombreux problèmes signalés » forme un GN au masculin pluriel ; « signalés » est un participe passé employé comme adjectif épithète. Éduscol distingue l''accord de l''attribut et l''accord de l''épithète comme deux mécanismes complémentaires.',
  'Ne pas identifier « attentive » comme portant un accord avec le sujet. L''attribut du sujet, qu''il soit adjectif ou participe passé, s''accorde toujours avec le sujet.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — Accord GN / Accord sujet-verbe / Accord du participe passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots portant un accord dans le GN, l''accord sujet-verbe et l''accord du participe passé.',
  NULL,
  '[{"id":"s1","label":"Mes"},{"id":"s2","label":"sœurs"},{"id":"s3","label":"jumelles"},{"id":"s4","label":"se"},{"id":"s5","label":"sont"},{"id":"s6","label":"inscrites"},{"id":"s7","label":"à"},{"id":"s8","label":"un"},{"id":"s9","label":"nouveau"},{"id":"s10","label":"cours"},{"id":"s11","label":"de"},{"id":"s12","label":"danse."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_gn","label":"Accord dans le GN","color":"#4A6E8F"},{"id":"accord_sv","label":"Accord sujet-verbe","color":"#A46849"},{"id":"accord_pp","label":"Accord du participe passé","color":"#6B534A"}],"mapping":{"s1":"accord_gn","s2":"accord_gn","s3":"accord_gn","s5":"accord_sv","s6":"accord_pp","s8":"accord_gn","s9":"accord_gn","s10":"accord_gn"}}'::jsonb,
  '« Mes sœurs jumelles » est un GN au féminin pluriel. « Sont » porte l''accord sujet-verbe (3e personne du pluriel). Le participe passé « inscrites » du verbe pronominal « s''inscrire » s''accorde avec le sujet « mes sœurs jumelles » (féminin pluriel). « Un nouveau cours » est un GN au masculin singulier. Éduscol précise que les verbes pronominaux conjugués avec être suivent la règle d''accord du participe passé avec le sujet.',
  'Oublier d''accorder le participe passé du verbe pronominal « s''inscrire ». Les verbes essentiellement pronominaux comme « s''inscrire » accordent leur participe passé avec le sujet.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Accord correct / Accord fautif / Mot invariable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Difficile',
  'surlignage_propositions',
  'Cette phrase contient des erreurs d''accord. Surlignez chaque mot selon qu''il porte un accord correct, un accord fautif ou qu''il est invariable.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"enfants"},{"id":"s3","label":"sont"},{"id":"s4","label":"partis"},{"id":"s5","label":"très"},{"id":"s6","label":"tôt"},{"id":"s7","label":"et"},{"id":"s8","label":"elles"},{"id":"s9","label":"ont"},{"id":"s10","label":"oublié"},{"id":"s11","label":"leurs"},{"id":"s12","label":"affaires."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_correct","label":"Accord correct","color":"#4A6E8F"},{"id":"accord_fautif","label":"Accord fautif","color":"#A46849"},{"id":"invariable","label":"Mot invariable","color":"#6B534A"}],"mapping":{"s1":"accord_correct","s2":"accord_correct","s3":"accord_correct","s4":"accord_correct","s5":"invariable","s6":"invariable","s7":"invariable","s8":"accord_fautif","s9":"accord_fautif","s11":"accord_correct","s12":"accord_correct"}}'::jsonb,
  'Le sujet « Les enfants » est masculin pluriel, donc « sont partis » est correct. Cependant, le pronom « elles » reprend « les enfants » (masculin) : il devrait être « ils ». Par conséquent, « ont » devrait être « ont » (inchangé en forme, mais le sujet est fautif). « Très », « tôt » et « et » sont des mots invariables (adverbes et conjonction). Selon Éduscol, la cohérence des reprises pronominales fait partie de l''orthographe grammaticale en contexte.',
  'Ne pas repérer l''incohérence entre « enfants » (masculin pluriel) et « elles » (féminin pluriel). La reprise pronominale doit respecter le genre du nom qu''elle reprend.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Accord correct / Accord fautif / Mot invariable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Difficile',
  'surlignage_propositions',
  'Cette phrase contient une erreur d''accord. Surlignez chaque mot selon qu''il porte un accord correct, un accord fautif ou qu''il est invariable.',
  NULL,
  '[{"id":"s1","label":"La"},{"id":"s2","label":"robe"},{"id":"s3","label":"que"},{"id":"s4","label":"j''"},{"id":"s5","label":"ai"},{"id":"s6","label":"achetée"},{"id":"s7","label":"hier"},{"id":"s8","label":"ne"},{"id":"s9","label":"me"},{"id":"s10","label":"plait"},{"id":"s11","label":"plus"},{"id":"s12","label":"du"},{"id":"s13","label":"tout."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_correct","label":"Accord correct","color":"#4A6E8F"},{"id":"accord_fautif","label":"Accord fautif","color":"#A46849"},{"id":"invariable","label":"Mot invariable","color":"#6B534A"}],"mapping":{"s1":"accord_correct","s2":"accord_correct","s3":"invariable","s5":"accord_correct","s6":"accord_correct","s7":"invariable","s8":"invariable","s10":"accord_fautif","s11":"invariable","s13":"invariable"}}'::jsonb,
  '« Achetée » est correctement accordé au féminin singulier avec le COD « que » (mis pour « la robe ») antéposé. L''erreur est « plait » : le verbe « plaire » à la 3e personne du singulier de l''indicatif présent s''écrit « plaît » avec un accent circonflexe (ou « plait » selon les rectifications de 1990, mais dans le contexte CRPE, les deux formes sont acceptées). Cependant, « plait » sans sujet apparent visible pose un problème d''accord sujet-verbe. Selon Éduscol, la vigilance orthographique inclut la vérification systématique de l''accord sujet-verbe même avec des sujets éloignés.',
  'Croire que « achetée » est fautif alors qu''il est correctement accordé. Le COD « que » (= la robe) est placé avant l''auxiliaire avoir, donc le participe passé s''accorde au féminin singulier.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Accord correct / Accord fautif / Mot invariable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'surlignage_accords_phrase',
  'Surlignage — Accords dans la phrase',
  'Difficile',
  'surlignage_propositions',
  'Cette phrase contient des erreurs d''accord. Surlignez chaque mot selon qu''il porte un accord correct, un accord fautif ou qu''il est invariable.',
  NULL,
  '[{"id":"s1","label":"Ses"},{"id":"s2","label":"cheveux"},{"id":"s3","label":"blondes"},{"id":"s4","label":"brillaient"},{"id":"s5","label":"sous"},{"id":"s6","label":"les"},{"id":"s7","label":"rayons"},{"id":"s8","label":"dorés"},{"id":"s9","label":"du"},{"id":"s10","label":"soleil"},{"id":"s11","label":"couchant."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"accord_correct","label":"Accord correct","color":"#4A6E8F"},{"id":"accord_fautif","label":"Accord fautif","color":"#A46849"},{"id":"invariable","label":"Mot invariable","color":"#6B534A"}],"mapping":{"s1":"accord_correct","s2":"accord_correct","s3":"accord_fautif","s4":"accord_correct","s5":"invariable","s6":"accord_correct","s7":"accord_correct","s8":"accord_correct","s10":"accord_correct","s11":"accord_correct"}}'::jsonb,
  '« Cheveux » est un nom masculin pluriel. L''adjectif « blondes » est fautif : il devrait s''écrire « blonds » (masculin pluriel) pour s''accorder avec « cheveux ». Le reste de la phrase est correctement accordé : « brillaient » (3e personne du pluriel), « les rayons dorés » (masculin pluriel), « soleil couchant » (masculin singulier, participe présent employé comme adjectif). Selon Éduscol, repérer les erreurs d''accord genre/nombre dans un texte est une compétence essentielle du cycle 3.',
  'Ne pas repérer l''erreur sur « blondes ». Le nom « cheveux » est masculin (on dit « un cheveu »), donc l''adjectif doit être au masculin pluriel : « blonds ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
