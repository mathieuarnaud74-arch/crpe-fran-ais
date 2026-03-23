-- ============================================================
-- Migration : 5 séries nouvelles — 50 exercices au total
-- Série 1 : Tri — Mots variables et invariables (grammaire)
-- Série 2 : Surlignage — Relatives et complétives (analyse_langue)
-- Série 3 : Correction — Homophones grammaticaux (orthographe)
-- Série 4 : Sprint — Figures de style (lexique)
-- Série 5 : Tri — Compléments circonstanciels (grammaire)
-- Terminologie conforme Éduscol 2021
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Tri — Mots variables et invariables (10 questions)
-- subdomain: grammaire | topic_key: tri_classes_mots
-- UUID prefix: b4010000 | access_tier: free
-- ============================================================

-- Q1 — Facile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000101',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Dans la phrase : « Le petit chat dort paisiblement sur le tapis. »',
  '[{"id":"s1q1w1","label":"petit"},{"id":"s1q1w2","label":"chat"},{"id":"s1q1w3","label":"dort"},{"id":"s1q1w4","label":"paisiblement"},{"id":"s1q1w5","label":"sur"},{"id":"s1q1w6","label":"le"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q1w1":"var","s1q1w2":"var","s1q1w3":"var","s1q1w4":"inv","s1q1w5":"inv","s1q1w6":"var"}}'::jsonb,
  'Les mots variables changent de forme selon le genre, le nombre ou la personne. « Petit » (adjectif), « chat » (nom), « dort » (verbe) et « le » (déterminant) sont variables. « Paisiblement » (adverbe) et « sur » (préposition) sont invariables : leur forme ne change jamais.',
  'Confondre le déterminant « le » avec un mot invariable. Le déterminant varie : le/la/les. C''est bien un mot variable.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000102',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Dans la phrase : « Ma grande sœur cuisine souvent des gâteaux. »',
  '[{"id":"s1q2w1","label":"grande"},{"id":"s1q2w2","label":"sœur"},{"id":"s1q2w3","label":"cuisine"},{"id":"s1q2w4","label":"souvent"},{"id":"s1q2w5","label":"des"},{"id":"s1q2w6","label":"gâteaux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q2w1":"var","s1q2w2":"var","s1q2w3":"var","s1q2w4":"inv","s1q2w5":"var","s1q2w6":"var"}}'::jsonb,
  '« Grande » (adjectif), « sœur » (nom), « cuisine » (verbe), « des » (déterminant) et « gâteaux » (nom) sont variables. Seul « souvent » est invariable : c''est un adverbe, sa forme ne change jamais quelle que soit la phrase.',
  'Penser que « des » est invariable. C''est un déterminant indéfini (un/une/des) : il varie en nombre.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000103',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Extrait d''un conte : « Alors, la belle princesse traversa courageusement la forêt. »',
  '[{"id":"s1q3w1","label":"alors"},{"id":"s1q3w2","label":"belle"},{"id":"s1q3w3","label":"princesse"},{"id":"s1q3w4","label":"traversa"},{"id":"s1q3w5","label":"courageusement"},{"id":"s1q3w6","label":"la"},{"id":"s1q3w7","label":"forêt"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q3w1":"inv","s1q3w2":"var","s1q3w3":"var","s1q3w4":"var","s1q3w5":"inv","s1q3w6":"var","s1q3w7":"var"}}'::jsonb,
  '« Alors » (adverbe) et « courageusement » (adverbe) sont invariables. « Belle » (adjectif), « princesse » (nom), « traversa » (verbe), « la » (déterminant) et « forêt » (nom) sont variables : ils peuvent changer de forme.',
  'Hésiter sur « alors » : même s''il semble lié au temps, c''est un adverbe et il est donc invariable.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000104',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Phrase entendue à la récréation : « Nous jouons toujours ensemble mais ils préfèrent rester dedans. »',
  '[{"id":"s1q4w1","label":"nous"},{"id":"s1q4w2","label":"jouons"},{"id":"s1q4w3","label":"toujours"},{"id":"s1q4w4","label":"ensemble"},{"id":"s1q4w5","label":"mais"},{"id":"s1q4w6","label":"ils"},{"id":"s1q4w7","label":"dedans"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q4w1":"var","s1q4w2":"var","s1q4w3":"inv","s1q4w4":"inv","s1q4w5":"inv","s1q4w6":"var","s1q4w7":"inv"}}'::jsonb,
  '« Nous » (pronom) et « ils » (pronom) sont variables : les pronoms changent de forme (je/me/moi). « Jouons » (verbe) est variable. « Toujours » (adverbe), « ensemble » (adverbe), « mais » (conjonction de coordination) et « dedans » (adverbe) sont invariables.',
  'Hésiter sur « ensemble » : bien qu''il ressemble à un nom ou un adjectif, ici c''est un adverbe (il modifie le verbe « jouons »). Il est donc invariable.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000105',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Phrase tirée d''un manuel de cycle 3 : « Cet élève travaille bien car il révise chaque soir. »',
  '[{"id":"s1q5w1","label":"cet"},{"id":"s1q5w2","label":"élève"},{"id":"s1q5w3","label":"bien"},{"id":"s1q5w4","label":"car"},{"id":"s1q5w5","label":"il"},{"id":"s1q5w6","label":"révise"},{"id":"s1q5w7","label":"chaque"},{"id":"s1q5w8","label":"soir"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q5w1":"var","s1q5w2":"var","s1q5w3":"inv","s1q5w4":"inv","s1q5w5":"var","s1q5w6":"var","s1q5w7":"var","s1q5w8":"var"}}'::jsonb,
  '« Cet » (déterminant démonstratif), « élève » (nom), « il » (pronom), « révise » (verbe), « chaque » (déterminant indéfini) et « soir » (nom) sont variables. « Bien » (adverbe) et « car » (conjonction de coordination) sont invariables.',
  'Penser que « chaque » est invariable parce qu''il n''a pas de pluriel courant. C''est un déterminant indéfini : il appartient à la classe des déterminants, qui est une classe variable.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000106',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Dicton populaire : « Rien ne sert de courir, il faut partir à point. » (La Fontaine)',
  '[{"id":"s1q6w1","label":"rien"},{"id":"s1q6w2","label":"ne"},{"id":"s1q6w3","label":"sert"},{"id":"s1q6w4","label":"de"},{"id":"s1q6w5","label":"courir"},{"id":"s1q6w6","label":"il"},{"id":"s1q6w7","label":"à"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q6w1":"var","s1q6w2":"inv","s1q6w3":"var","s1q6w4":"inv","s1q6w5":"var","s1q6w6":"var","s1q6w7":"inv"}}'::jsonb,
  '« Rien » (pronom indéfini) est variable : il peut être sujet, COD, etc. « Ne » (adverbe de négation) et « de » (préposition) et « à » (préposition) sont invariables. « Sert » (verbe) et « courir » (verbe à l''infinitif) et « il » (pronom) sont variables.',
  'Confondre « rien » avec un adverbe invariable. « Rien » est un pronom indéfini (classe variable) : « rien ne change » → sujet.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Facile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000107',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Phrase d''un élève de CE2 : « Mon chien aboie très fort quand quelqu''un sonne. »',
  '[{"id":"s1q7w1","label":"mon"},{"id":"s1q7w2","label":"chien"},{"id":"s1q7w3","label":"aboie"},{"id":"s1q7w4","label":"très"},{"id":"s1q7w5","label":"fort"},{"id":"s1q7w6","label":"quand"},{"id":"s1q7w7","label":"quelqu''un"},{"id":"s1q7w8","label":"sonne"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q7w1":"var","s1q7w2":"var","s1q7w3":"var","s1q7w4":"inv","s1q7w5":"inv","s1q7w6":"inv","s1q7w7":"var","s1q7w8":"var"}}'::jsonb,
  '« Mon » (déterminant possessif), « chien » (nom), « aboie » (verbe), « quelqu''un » (pronom indéfini) et « sonne » (verbe) sont variables. « Très » (adverbe), « fort » (ici adverbe = fortement) et « quand » (conjonction de subordination) sont invariables.',
  'Hésiter sur « fort » : ici il est employé comme adverbe (= fortement) et non comme adjectif. En tant qu''adverbe, il est invariable.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000108',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Phrase littéraire : « Hélas, ces jours heureux ne reviendront jamais. »',
  '[{"id":"s1q8w1","label":"hélas"},{"id":"s1q8w2","label":"ces"},{"id":"s1q8w3","label":"jours"},{"id":"s1q8w4","label":"heureux"},{"id":"s1q8w5","label":"ne"},{"id":"s1q8w6","label":"reviendront"},{"id":"s1q8w7","label":"jamais"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q8w1":"inv","s1q8w2":"var","s1q8w3":"var","s1q8w4":"var","s1q8w5":"inv","s1q8w6":"var","s1q8w7":"inv"}}'::jsonb,
  '« Hélas » est une interjection : mot invariable qui exprime une émotion. « Ne » (adverbe de négation) et « jamais » (adverbe) sont invariables. « Ces » (déterminant démonstratif), « jours » (nom), « heureux » (adjectif) et « reviendront » (verbe) sont variables.',
  'Penser que les interjections sont des mots variables parce qu''elles semblent expressives. « Hélas », « oh », « zut » sont toujours invariables.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000109',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Consigne de classe : « Vous devez aussi relire attentivement votre copie avant de la rendre. »',
  '[{"id":"s1q9w1","label":"vous"},{"id":"s1q9w2","label":"devez"},{"id":"s1q9w3","label":"aussi"},{"id":"s1q9w4","label":"attentivement"},{"id":"s1q9w5","label":"votre"},{"id":"s1q9w6","label":"copie"},{"id":"s1q9w7","label":"avant"},{"id":"s1q9w8","label":"de"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q9w1":"var","s1q9w2":"var","s1q9w3":"inv","s1q9w4":"inv","s1q9w5":"var","s1q9w6":"var","s1q9w7":"inv","s1q9w8":"inv"}}'::jsonb,
  '« Vous » (pronom personnel), « devez » (verbe), « votre » (déterminant possessif) et « copie » (nom) sont variables. « Aussi » (adverbe), « attentivement » (adverbe), « avant » (préposition) et « de » (préposition) sont invariables.',
  'Confondre « avant » avec un adjectif (comme dans « l''avant-garde »). Ici, « avant de » est une locution prépositionnelle : « avant » est préposition, donc invariable.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Facile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4010000-0000-0000-0000-000000000110',
  'Francais',
  'grammaire',
  'tri_classes_mots',
  'Tri : mots variables et invariables',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon qu''il appartient à une classe grammaticale variable ou invariable.',
  'Comptine enfantine : « Une souris verte qui courait dans l''herbe. »',
  '[{"id":"s1q10w1","label":"une"},{"id":"s1q10w2","label":"souris"},{"id":"s1q10w3","label":"verte"},{"id":"s1q10w4","label":"qui"},{"id":"s1q10w5","label":"courait"},{"id":"s1q10w6","label":"dans"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Mot variable"},{"id":"inv","label":"Mot invariable"}],"mapping":{"s1q10w1":"var","s1q10w2":"var","s1q10w3":"var","s1q10w4":"var","s1q10w5":"var","s1q10w6":"inv"}}'::jsonb,
  '« Une » (déterminant indéfini), « souris » (nom), « verte » (adjectif), « qui » (pronom relatif) et « courait » (verbe) sont tous variables. Seul « dans » (préposition) est invariable. Le pronom relatif « qui » est variable car les pronoms forment une classe variable.',
  'Croire que « qui » est invariable parce qu''il ne semble pas changer de forme. Les pronoms relatifs (qui, que, dont, où, lequel…) appartiennent à la classe des pronoms, qui est variable (lequel/laquelle/lesquels).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Surlignage — Relatives et complétives (10 questions)
-- subdomain: analyse_langue | topic_key: surlignage_relatives_completives
-- UUID prefix: b4020000 | access_tier: premium
-- ============================================================

-- Q1 — Intermediaire — Relative simple avec « qui »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la proposition principale et la subordonnée relative dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"L''homme"},{"id":"s2","label":"qui portait un chapeau"},{"id":"s3","label":"traversa la place"},{"id":"s4","label":"d''un pas décidé"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"}],"mapping":{"s1":"pp","s2":"rel","s3":"pp","s4":"pp"}}'::jsonb,
  'La proposition principale est « L''homme traversa la place d''un pas décidé ». La subordonnée relative « qui portait un chapeau » est introduite par le pronom relatif « qui » et complète le nom « homme » (son antécédent). Elle est enchâssée dans la principale.',
  'Rattacher « L''homme » à la relative parce qu''il est juste devant « qui ». L''antécédent appartient à la principale : c''est le nom que la relative complète.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — Complétive avec « que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la proposition principale et la subordonnée complétive dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Je pense"},{"id":"s2","label":"que cette leçon"},{"id":"s3","label":"est très importante"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"comp","label":"Subordonnée complétive","color":"green"}],"mapping":{"s1":"pp","s2":"comp","s3":"comp"}}'::jsonb,
  'La proposition principale est « Je pense ». La subordonnée complétive « que cette leçon est très importante » est introduite par la conjonction de subordination « que ». Elle complète le verbe « pense » et occupe la fonction de COD (complément d''objet direct).',
  'Confondre « que » conjonction de subordination (complétive) avec « que » pronom relatif (relative). Ici, « que » n''a pas d''antécédent nominal : il introduit une complétive.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Difficile — Relative avec « dont »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Difficile',
  'surlignage_propositions',
  'Identifiez la proposition principale et la subordonnée relative dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Le livre"},{"id":"s2","label":"dont je t''ai parlé"},{"id":"s3","label":"vient de paraître"},{"id":"s4","label":"en librairie"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"}],"mapping":{"s1":"pp","s2":"rel","s3":"pp","s4":"pp"}}'::jsonb,
  'La proposition principale est « Le livre vient de paraître en librairie ». La subordonnée relative « dont je t''ai parlé » est introduite par le pronom relatif « dont » (= de qui/duquel). Elle complète le nom « livre », son antécédent. « Dont » a la fonction de COI dans la relative (parler de quelque chose).',
  'Confondre « dont » avec une conjonction de subordination. « Dont » est un pronom relatif qui remplace un complément introduit par « de ». Il a toujours un antécédent.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — Complétive après verbe de déclaration
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la proposition principale et la subordonnée complétive dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Les élèves affirment"},{"id":"s2","label":"qu''ils ont compris"},{"id":"s3","label":"la consigne"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"comp","label":"Subordonnée complétive","color":"green"}],"mapping":{"s1":"pp","s2":"comp","s3":"comp"}}'::jsonb,
  'La proposition principale est « Les élèves affirment ». La subordonnée complétive « qu''ils ont compris la consigne » est introduite par « qu'' » (conjonction de subordination « que » élidée). Elle est COD du verbe « affirment ». Après un verbe de déclaration (dire, affirmer, annoncer…), on trouve souvent une complétive.',
  'Croire que « qu'' » est un pronom relatif. Il n''y a pas d''antécédent nominal ici : « qu'' » introduit une complétive, pas une relative.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Difficile — Relative et complétive dans la même phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Difficile',
  'surlignage_propositions',
  'Cette phrase contient trois propositions. Identifiez la principale, la relative et la complétive.',
  NULL,
  '[{"id":"s1","label":"Le professeur"},{"id":"s2","label":"qui enseigne le français"},{"id":"s3","label":"espère"},{"id":"s4","label":"que ses élèves réussiront"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"},{"id":"comp","label":"Subordonnée complétive","color":"green"}],"mapping":{"s1":"pp","s2":"rel","s3":"pp","s4":"comp"}}'::jsonb,
  'Trois propositions coexistent : la principale « Le professeur espère », la relative « qui enseigne le français » (complète le nom « professeur ») et la complétive « que ses élèves réussiront » (COD de « espère »). La relative est enchâssée dans le GN sujet, la complétive complète le verbe.',
  'Considérer « Le professeur qui enseigne le français » comme la principale entière. La relative est un ajout au GN sujet : le noyau de la principale est « Le professeur espère ».',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Difficile — Relative avec « où »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Difficile',
  'surlignage_propositions',
  'Identifiez la proposition principale et la subordonnée relative dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Je me souviens"},{"id":"s2","label":"du village"},{"id":"s3","label":"où j''ai grandi"},{"id":"s4","label":"avec mes cousins"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"}],"mapping":{"s1":"pp","s2":"pp","s3":"rel","s4":"rel"}}'::jsonb,
  'La proposition principale est « Je me souviens du village ». La subordonnée relative « où j''ai grandi avec mes cousins » est introduite par le pronom relatif « où » (valeur de lieu). « Où » a pour antécédent « village » et remplace un complément circonstanciel de lieu dans la relative.',
  'Confondre « où » pronom relatif avec « où » adverbe interrogatif. Ici, « où » a un antécédent (« village ») : c''est un pronom relatif.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — Complétive après verbe de sentiment
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la proposition principale et la subordonnée complétive dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Nous regrettons"},{"id":"s2","label":"que le spectacle"},{"id":"s3","label":"soit annulé"},{"id":"s4","label":"ce soir"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"comp","label":"Subordonnée complétive","color":"green"}],"mapping":{"s1":"pp","s2":"comp","s3":"comp","s4":"comp"}}'::jsonb,
  'La proposition principale est « Nous regrettons ». La subordonnée complétive « que le spectacle soit annulé ce soir » complète le verbe de sentiment « regrettons » (COD). Notez le subjonctif « soit » : les verbes de sentiment (regretter, craindre, souhaiter…) entraînent souvent le subjonctif dans la complétive.',
  'Ne pas repérer le subjonctif « soit » comme indice d''une complétive après un verbe de sentiment. Le mode subjonctif dans la subordonnée est un marqueur fréquent de la complétive.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Relative avec « que » (COD)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Difficile',
  'surlignage_propositions',
  'Attention : le mot « que » peut introduire une relative OU une complétive. Identifiez les propositions.',
  NULL,
  '[{"id":"s1","label":"Le gâteau"},{"id":"s2","label":"que ma grand-mère a préparé"},{"id":"s3","label":"est délicieux"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"}],"mapping":{"s1":"pp","s2":"rel","s3":"pp"}}'::jsonb,
  'Ici, « que » est un pronom relatif (et non une conjonction). Il a un antécédent : « gâteau ». La relative « que ma grand-mère a préparé » complète ce nom. La principale est « Le gâteau est délicieux ». Pour distinguer : dans une relative, « que » remplace un nom et a une fonction (ici COD de « a préparé »).',
  'Confondre « que » pronom relatif et « que » conjonction de subordination. Astuce : si « que » a un antécédent nominal et une fonction dans la subordonnée (sujet, COD…), c''est un pronom relatif → relative.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Deux subordonnées : relative + complétive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Difficile',
  'surlignage_propositions',
  'Cette phrase contient une principale, une relative et une complétive. Identifiez chacune.',
  NULL,
  '[{"id":"s1","label":"La voisine"},{"id":"s2","label":"qui habite au-dessus"},{"id":"s3","label":"m''a dit"},{"id":"s4","label":"qu''elle déménageait"},{"id":"s5","label":"le mois prochain"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"},{"id":"comp","label":"Subordonnée complétive","color":"green"}],"mapping":{"s1":"pp","s2":"rel","s3":"pp","s4":"comp","s5":"comp"}}'::jsonb,
  'Trois propositions : la principale « La voisine m''a dit », la relative « qui habite au-dessus » (complète « voisine », introduite par le pronom relatif « qui ») et la complétive « qu''elle déménageait le mois prochain » (COD de « a dit », introduite par la conjonction « que »). Le premier « que » a un antécédent → relative ; le second n''en a pas → complétive.',
  'Confondre les deux « que/qui ». « Qui » a un antécédent (« voisine ») → pronom relatif. « Qu'' » n''a pas d''antécédent et complète le verbe « dire » → conjonction de subordination.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — Complétive sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4020000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'surlignage_relatives_completives',
  'Surlignage : relatives et complétives',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la proposition principale et la subordonnée complétive. Attention : la complétive peut être sujet !',
  NULL,
  '[{"id":"s1","label":"Qu''il fasse beau demain"},{"id":"s2","label":"me rendrait"},{"id":"s3","label":"très heureux"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pp","label":"Proposition principale","color":"blue"},{"id":"comp","label":"Subordonnée complétive","color":"green"}],"mapping":{"s1":"comp","s2":"pp","s3":"pp"}}'::jsonb,
  'La subordonnée complétive « Qu''il fasse beau demain » est en position de sujet du verbe « rendrait ». La principale est « me rendrait très heureux ». Une complétive peut occuper la fonction de sujet, et pas seulement de COD. Le subjonctif « fasse » confirme la nature complétive de la subordonnée.',
  'Croire qu''une complétive est toujours COD. Ici, elle est sujet : « Qu''il fasse beau demain » = cela me rendrait heureux. La complétive en position sujet est plus rare mais tout à fait correcte.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 3 : Correction — Homophones grammaticaux (10 questions)
-- subdomain: orthographe | topic_key: homophones_grammaticaux_corr
-- UUID prefix: b4030000 | access_tier: free
-- Mix : 5 QCM + 3 vrai_faux + 2 reponse_courte
-- ============================================================

-- Q1 — QCM — a/à (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Facile',
  'qcm',
  'Complétez la phrase avec l''homophone correct.',
  'Mon frère ___ un nouveau vélo, il va ___ l''école avec.',
  '[{"id":"a","label":"a / a"},{"id":"b","label":"a / à"},{"id":"c","label":"à / a"},{"id":"d","label":"à / à"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Mon frère a un nouveau vélo » : « a » est le verbe avoir conjugué au présent (on peut dire « avait »). « Il va à l''école » : « à » est une préposition (on ne peut pas dire « avait »). Astuce : si on peut remplacer par « avait », c''est le verbe « a » sans accent.',
  'Mettre un accent sur « a » verbe. Si l''on peut remplacer par « avait », il ne faut pas d''accent.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — QCM — ou/où (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Facile',
  'qcm',
  'Complétez la phrase avec l''homophone correct.',
  'Tu préfères le cinéma ___ le théâtre ? Et ___ irons-nous samedi ?',
  '[{"id":"a","label":"ou / ou"},{"id":"b","label":"où / ou"},{"id":"c","label":"ou / où"},{"id":"d","label":"où / où"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Le cinéma ou le théâtre » : « ou » est une conjonction de coordination qui exprime un choix (on peut remplacer par « ou bien »). « Où irons-nous » : « où » est un adverbe interrogatif de lieu (avec accent). Astuce : si on peut remplacer par « ou bien », pas d''accent.',
  'Confondre la conjonction « ou » (choix) avec l''adverbe « où » (lieu/temps). Seul l''adverbe interrogatif ou relatif de lieu prend un accent grave.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — ce/se (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Intermediaire',
  'qcm',
  'Complétez la phrase avec l''homophone correct.',
  '___ matin, les enfants ___ sont levés très tôt.',
  '[{"id":"a","label":"Ce / se"},{"id":"b","label":"Se / ce"},{"id":"c","label":"Ce / ce"},{"id":"d","label":"Se / se"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Ce matin » : « ce » est un déterminant démonstratif placé devant le nom « matin ». « Se sont levés » : « se » est un pronom personnel réfléchi, partie du verbe pronominal « se lever ». Astuce : « ce » peut être remplacé par « le/un » devant un nom ; « se » accompagne toujours un verbe pronominal.',
  'Écrire « se matin » en confondant le pronom réfléchi avec le déterminant. Devant un nom, c''est toujours « ce » (déterminant).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — son/sont (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Intermediaire',
  'qcm',
  'Complétez la phrase avec l''homophone correct.',
  'Les voisins ___ partis en vacances avec ___ chien.',
  '[{"id":"a","label":"son / son"},{"id":"b","label":"sont / son"},{"id":"c","label":"son / sont"},{"id":"d","label":"sont / sont"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Les voisins sont partis » : « sont » est le verbe être au présent (on peut dire « étaient »). « Avec son chien » : « son » est un déterminant possessif (on peut dire « mon/ton »). Astuce : remplacer par « étaient » pour identifier le verbe être.',
  'Écrire « les voisins son partis ». Devant un participe passé dans un temps composé, c''est l''auxiliaire « sont » (verbe être), pas le possessif.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — ces/ses/c'est/s'est (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Intermediaire',
  'qcm',
  'Complétez la phrase avec les homophones corrects.',
  '___ en tombant qu''il ___ cassé le bras. Regarde ___ blessures sur ___ mains !',
  '[{"id":"a","label":"C''est / s''est / ces / ses"},{"id":"b","label":"S''est / c''est / ses / ces"},{"id":"c","label":"C''est / s''est / ses / ces"},{"id":"d","label":"C''est / c''est / ces / ses"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« C''est en tombant » : tournure présentative (c''est… que). « Il s''est cassé » : verbe pronominal « se casser » au passé composé. « Ces blessures » : déterminant démonstratif (on montre). « Ses mains » : déterminant possessif (les mains à lui). Quatre homophones en [sɛ] à bien distinguer.',
  'Confondre « c''est » (présentatif) et « s''est » (pronominal). Astuce : « s''est » est toujours suivi d''un participe passé et a un sujet (il/elle).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — et/est (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Lisez l''affirmation et répondez.',
  'Dans la phrase « Mon père est cuisinier et ma mère est médecin », on peut remplacer chaque « est » par « était » pour vérifier qu''il s''agit du verbe être.',
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La substitution par « était » fonctionne : « Mon père était cuisinier et ma mère était médecin ». Cela confirme que les deux « est » sont des formes du verbe être. La conjonction « et » ne peut pas être remplacée par « était » : « Mon père est cuisinier *était ma mère » n''a pas de sens.',
  'Appliquer la substitution par « était » au « et » conjonction. Cette astuce ne fonctionne que pour identifier le verbe « est ».',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — on/ont (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Lisez l''affirmation et répondez.',
  'Dans la phrase « On a mangé les crêpes qu''ils ont préparées », le mot « on » peut être remplacé par « il » ou « nous ».',
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « On » est un pronom personnel indéfini (3e personne du singulier). On peut le remplacer par « il » : « Il a mangé les crêpes ». En langage courant, « on » remplace souvent « nous ». En revanche, « ont » est le verbe avoir conjugué (« ils ont préparées » → « ils avaient préparées »).',
  'Confondre « on » (pronom sujet, toujours suivi d''un verbe au singulier) avec « ont » (verbe avoir, 3e personne du pluriel).',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Vrai/Faux — leur/leurs (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Lisez l''affirmation et répondez.',
  'Dans « Je leur ai rendu leurs cahiers », le premier « leur » (sans -s) est un pronom personnel COI et le second « leurs » (avec -s) est un déterminant possessif pluriel.',
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Leur » (pronom personnel COI) est invariable : il remplace « à eux/à elles » (« Je leur ai rendu » = « J''ai rendu à eux »). « Leurs » (déterminant possessif) s''accorde avec le nom qu''il détermine : « leurs cahiers » (plusieurs cahiers). Pronom COI → invariable ; déterminant → variable.',
  'Mettre un -s au pronom « leur » devant un verbe. Le pronom personnel « leur » (= à eux) est toujours invariable. Seul le déterminant « leur/leurs » varie.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — et/est (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Facile',
  'reponse_courte',
  'Complétez le trou avec l''homophone correct (et/est).',
  'Le ciel ___ bleu ___ le soleil brille.',
  NULL,
  '{"mode":"text","acceptableAnswers":["est, et","est et","est / et"]}'::jsonb,
  '« Le ciel est bleu » : « est » est le verbe être (on peut dire « était »). « Et le soleil brille » : « et » est une conjonction de coordination qui relie deux propositions (on peut la remplacer par « et aussi » ou « et puis »).',
  'Inverser les deux : écrire « Le ciel et bleu est le soleil brille ». Le verbe être relie le sujet à son attribut.',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — ce/se (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4030000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'homophones_grammaticaux_corr',
  'Correction : homophones grammaticaux',
  'Intermediaire',
  'reponse_courte',
  'Complétez les trous avec « ce » ou « se » (en minuscules, séparés par une virgule).',
  '___ soir, les enfants ___ couchent tôt car ___ sont les vacances demain.',
  NULL,
  '{"mode":"text","acceptableAnswers":["ce, se, ce","ce se ce","Ce, se, ce","ce,se,ce"]}'::jsonb,
  '« Ce soir » : déterminant démonstratif devant le nom « soir ». « Se couchent » : pronom réfléchi du verbe pronominal « se coucher ». « Ce sont » : « ce » pronom démonstratif sujet de « sont ». Règle : devant un nom → « ce » ; devant un verbe pronominal → « se » ; « ce sont/c''est » → présentatif.',
  'Écrire « se sont les vacances ». Dans la tournure présentative « ce sont », c''est toujours « ce » (pronom démonstratif), jamais « se ».',
  'valide',
  'CRPE Français V4',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 4 : Sprint — Figures de style (10 questions)
-- subdomain: lexique | topic_key: figures_style_sprint
-- UUID prefix: b4040000 | access_tier: premium
-- Mix : 6 QCM + 4 vrai_faux
-- ============================================================

-- Q1 — QCM — Métaphore (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Intermediaire',
  'qcm',
  'Quelle figure de style est employée dans cet extrait ?',
  '« Cette faucille d''or dans le champ des étoiles. » (Victor Hugo, Booz endormi)',
  '[{"id":"a","label":"Comparaison"},{"id":"b","label":"Métaphore"},{"id":"c","label":"Personnification"},{"id":"d","label":"Hyperbole"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est une métaphore : Hugo désigne la lune par « cette faucille d''or » sans outil de comparaison (comme, tel, semblable à…). L''identification se fait directement : la lune EST une faucille d''or. Si Hugo avait écrit « la lune comme une faucille d''or », ce serait une comparaison.',
  'Confondre métaphore et comparaison. La métaphore supprime l''outil de comparaison : le rapprochement est direct et implicite.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — QCM — Comparaison (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Intermediaire',
  'qcm',
  'Quelle figure de style est employée dans cette phrase ?',
  '« Il est fort comme un lion et rusé comme un renard. »',
  '[{"id":"a","label":"Métaphore"},{"id":"b","label":"Comparaison"},{"id":"c","label":"Personnification"},{"id":"d","label":"Antithèse"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est une comparaison. Les trois éléments constitutifs sont présents : le comparé (« il »), l''outil de comparaison (« comme ») et le comparant (« un lion », « un renard »). La comparaison établit un rapprochement explicite grâce à un mot-outil.',
  'Parler de « métaphore » dès qu''il y a une image. La présence du mot « comme » indique une comparaison, pas une métaphore.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Personnification (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Intermediaire',
  'qcm',
  'Quelle figure de style est employée dans cet extrait ?',
  '« La mer grondait de colère et les vagues hurlaient contre les rochers. »',
  '[{"id":"a","label":"Hyperbole"},{"id":"b","label":"Métonymie"},{"id":"c","label":"Personnification"},{"id":"d","label":"Litote"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'C''est une personnification : la mer et les vagues se voient attribuer des comportements humains (« grondait de colère », « hurlaient »). La personnification consiste à prêter des caractéristiques humaines (actions, sentiments, parole) à un animal, un objet ou un élément naturel.',
  'Confondre personnification et métaphore. La personnification est un cas particulier de métaphore qui attribue spécifiquement des traits humains à un non-humain.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Oxymore (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Difficile',
  'qcm',
  'Quelle figure de style est employée dans cet extrait ?',
  '« Cette obscure clarté qui tombe des étoiles. » (Pierre Corneille, Le Cid)',
  '[{"id":"a","label":"Antithèse"},{"id":"b","label":"Oxymore"},{"id":"c","label":"Euphémisme"},{"id":"d","label":"Anaphore"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est un oxymore : « obscure clarté » réunit deux termes de sens contraire dans un même groupe nominal. L''oxymore crée une alliance de mots contradictoires au sein d''un même syntagme. L''antithèse, elle, oppose deux termes dans des parties différentes de la phrase.',
  'Confondre oxymore et antithèse. L''oxymore unit les contraires dans un même groupe syntaxique (« obscure clarté ») ; l''antithèse les oppose dans des propositions distinctes.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Hyperbole (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Intermediaire',
  'qcm',
  'Quelle figure de style est employée dans cette phrase ?',
  '« Je meurs de faim ! J''ai attendu mille ans dans cette file d''attente ! »',
  '[{"id":"a","label":"Litote"},{"id":"b","label":"Euphémisme"},{"id":"c","label":"Hyperbole"},{"id":"d","label":"Métonymie"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'C''est une hyperbole : l''exagération est manifeste (« meurs de faim », « mille ans »). L''hyperbole amplifie la réalité pour frapper l''imagination. C''est le contraire de la litote et de l''euphémisme, qui atténuent l''expression.',
  'Confondre hyperbole et métaphore. L''hyperbole porte sur l''amplification (exagérer la quantité, l''intensité) ; la métaphore porte sur le transfert d''image.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Anaphore (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Difficile',
  'qcm',
  'Quelle figure de style est employée dans cet extrait ?',
  '« Moi, président de la République, je ne traiterai pas mon premier ministre de collaborateur. Moi, président de la République, je ne participerai pas à des collectes de fonds. » (François Hollande, 2012)',
  '[{"id":"a","label":"Anaphore"},{"id":"b","label":"Antithèse"},{"id":"c","label":"Métaphore"},{"id":"d","label":"Litote"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'C''est une anaphore : la répétition de « Moi, président de la République » en début de chaque phrase crée un effet d''insistance et de rythme. L''anaphore est la répétition d''un même mot ou groupe de mots en tête de vers, de phrases ou de propositions successives.',
  'Confondre anaphore (figure de style = répétition en début de phrase) avec anaphore (procédé de reprise textuelle par un pronom). En stylistique, l''anaphore est une figure de répétition.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Litote (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Lisez l''affirmation et répondez.',
  '« Va, je ne te hais point. » (Corneille, Le Cid) est une litote : Chimène dit le contraire de ce qu''elle pense pour atténuer ses sentiments.',
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux tel que formulé. La litote ne consiste pas à dire le contraire (ce serait une antiphrase/ironie), mais à dire moins pour suggérer plus. « Je ne te hais point » = « je t''aime profondément ». Chimène ne dit pas le contraire : elle atténue en niant le contraire de ce qu''elle ressent.',
  'Confondre litote et antiphrase. La litote atténue par la négation du contraire (dire moins pour suggérer plus). L''antiphrase dit exactement le contraire de ce qu''on pense (ironie).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Vrai/Faux — Métonymie (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Lisez l''affirmation et répondez.',
  'Dans « Boire un verre » et « Tout Paris en parle », le même procédé est à l''œuvre : la métonymie.',
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Dans les deux cas, un mot est remplacé par un autre ayant un lien logique avec lui. « Boire un verre » : le contenant (verre) désigne le contenu (la boisson). « Tout Paris » : le lieu (Paris) désigne les habitants. La métonymie remplace un terme par un autre lié par un rapport de contiguïté (contenant/contenu, lieu/habitants, cause/effet…).',
  'Confondre métonymie et métaphore. La métonymie repose sur un lien logique réel (contiguïté) ; la métaphore repose sur une ressemblance (analogie).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Antithèse (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Lisez l''affirmation et répondez.',
  '« Je vis, je meurs ; je me brûle et me noie. » (Louise Labé) est une antithèse car elle oppose des termes contraires dans la même phrase.',
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Louise Labé oppose « vis/meurs » et « brûle/noie » : des termes antonymes sont mis en regard dans la même phrase. L''antithèse rapproche deux termes ou idées opposés pour créer un contraste saisissant. Ici, elle exprime les contradictions de la passion amoureuse.',
  'Confondre antithèse et oxymore. L''antithèse oppose des termes dans des parties distinctes de la phrase ; l''oxymore les unit dans un même groupe syntaxique (ex. : « douce violence »).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Euphémisme (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4040000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'figures_style_sprint',
  'Sprint : figures de style',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Lisez l''affirmation et répondez.',
  'L''expression « il nous a quittés » pour dire « il est mort » est un euphémisme, c''est-à-dire une atténuation d''une réalité jugée trop brutale.',
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. L''euphémisme atténue une réalité désagréable, choquante ou douloureuse en utilisant une expression plus douce. « Il nous a quittés » évite la brutalité du mot « mort ». Autres exemples classiques : « les non-voyants » (les aveugles), « disparaître » (mourir), « un plan social » (des licenciements).',
  'Confondre euphémisme et litote. L''euphémisme adoucit une réalité pénible ; la litote dit moins pour suggérer plus (le contexte est différent : la litote peut porter sur une réalité positive).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 5 : Tri — Compléments circonstanciels (10 questions)
-- subdomain: grammaire | topic_key: tri_complements_circonstanciels
-- UUID prefix: b4050000 | access_tier: premium
-- ============================================================

-- Q1 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « Hier, les enfants restaient sagement dans la maison à cause de la pluie. »',
  '[{"id":"s5q1w1","label":"hier"},{"id":"s5q1w2","label":"sagement"},{"id":"s5q1w3","label":"dans la maison"},{"id":"s5q1w4","label":"à cause de la pluie"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q1w1":"temps","s5q1w2":"maniere","s5q1w3":"lieu","s5q1w4":"cause"}}'::jsonb,
  '« Hier » indique quand (CC de temps). « Sagement » indique comment (CC de manière). « Dans la maison » indique où (CC de lieu). « À cause de la pluie » indique pourquoi (CC de cause). Les compléments circonstanciels sont supprimables et déplaçables : ils ne sont pas essentiels au sens minimal de la phrase.',
  'Confondre CC de manière et CC de cause. Le CC de manière répond à « comment ? » ; le CC de cause répond à « pourquoi ? / pour quelle raison ? ».',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « Chaque matin, le facteur distribue le courrier avec soin dans notre rue. »',
  '[{"id":"s5q2w1","label":"chaque matin"},{"id":"s5q2w2","label":"avec soin"},{"id":"s5q2w3","label":"dans notre rue"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q2w1":"temps","s5q2w2":"maniere","s5q2w3":"lieu"}}'::jsonb,
  '« Chaque matin » répond à « quand ? » → CC de temps. « Avec soin » répond à « comment ? » → CC de manière (= soigneusement). « Dans notre rue » répond à « où ? » → CC de lieu. Aucun CC de cause n''est présent dans cette phrase.',
  'Confondre « avec soin » (manière) avec un complément d''objet. « Avec soin » est supprimable et déplaçable : « Le facteur distribue le courrier » reste grammaticalement correct.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « Par peur du loup, le Petit Chaperon rouge courut à toute vitesse jusqu''à la maison de sa grand-mère. »',
  '[{"id":"s5q3w1","label":"par peur du loup"},{"id":"s5q3w2","label":"à toute vitesse"},{"id":"s5q3w3","label":"jusqu''à la maison de sa grand-mère"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q3w1":"cause","s5q3w2":"maniere","s5q3w3":"lieu"}}'::jsonb,
  '« Par peur du loup » indique la raison de l''action (pourquoi elle court) → CC de cause. « À toute vitesse » indique comment elle court → CC de manière. « Jusqu''à la maison de sa grand-mère » indique le lieu de destination → CC de lieu.',
  'Classer « par peur du loup » en CC de manière. La peur est la raison qui motive l''action (= parce qu''elle a peur) : c''est une cause, pas une manière.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Difficile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Difficile',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « En raison des travaux, les ouvriers travaillent de nuit sur le chantier avec précaution. »',
  '[{"id":"s5q4w1","label":"en raison des travaux"},{"id":"s5q4w2","label":"de nuit"},{"id":"s5q4w3","label":"sur le chantier"},{"id":"s5q4w4","label":"avec précaution"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q4w1":"cause","s5q4w2":"temps","s5q4w3":"lieu","s5q4w4":"maniere"}}'::jsonb,
  '« En raison des travaux » = pourquoi → CC de cause. « De nuit » = quand → CC de temps (indique le moment). « Sur le chantier » = où → CC de lieu. « Avec précaution » = comment → CC de manière (= précautionneusement).',
  'Hésiter sur « de nuit » : ce n''est pas une manière de travailler mais un moment (la nuit, par opposition au jour). C''est un CC de temps.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Difficile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Difficile',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « Grâce à son talent, l''artiste peignait silencieusement dans son atelier depuis des heures. »',
  '[{"id":"s5q5w1","label":"grâce à son talent"},{"id":"s5q5w2","label":"silencieusement"},{"id":"s5q5w3","label":"dans son atelier"},{"id":"s5q5w4","label":"depuis des heures"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q5w1":"cause","s5q5w2":"maniere","s5q5w3":"lieu","s5q5w4":"temps"}}'::jsonb,
  '« Grâce à son talent » = cause positive (pourquoi il peint ainsi) → CC de cause. « Silencieusement » = comment → CC de manière. « Dans son atelier » = où → CC de lieu. « Depuis des heures » = quand / depuis quand → CC de temps (durée).',
  'Classer « grâce à son talent » en CC de manière. « Grâce à » exprime une cause (positive). Le talent est la raison du succès, pas la façon de peindre.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase du Petit Prince : « Le renard apparut doucement au pied du baobab au lever du soleil. »',
  '[{"id":"s5q6w1","label":"doucement"},{"id":"s5q6w2","label":"au pied du baobab"},{"id":"s5q6w3","label":"au lever du soleil"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q6w1":"maniere","s5q6w2":"lieu","s5q6w3":"temps"}}'::jsonb,
  '« Doucement » répond à « comment ? » → CC de manière. « Au pied du baobab » répond à « où ? » → CC de lieu. « Au lever du soleil » répond à « quand ? » → CC de temps (moment précis de la journée).',
  'Classer « au lever du soleil » en CC de lieu à cause du mot « soleil ». C''est un repère temporel (= à l''aube), pas un lieu.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Difficile',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « Sous la pression de ses parents, l''enfant étudiait à contrecœur dans sa chambre chaque soir. »',
  '[{"id":"s5q7w1","label":"sous la pression de ses parents"},{"id":"s5q7w2","label":"à contrecœur"},{"id":"s5q7w3","label":"dans sa chambre"},{"id":"s5q7w4","label":"chaque soir"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q7w1":"cause","s5q7w2":"maniere","s5q7w3":"lieu","s5q7w4":"temps"}}'::jsonb,
  '« Sous la pression de ses parents » = pourquoi il étudie → CC de cause. « À contrecœur » = comment il étudie (avec réticence) → CC de manière. « Dans sa chambre » = où → CC de lieu. « Chaque soir » = quand → CC de temps (fréquence).',
  'Confondre « sous la pression de ses parents » (cause) avec « à contrecœur » (manière). La pression parentale est la cause de l''action ; « à contrecœur » décrit l''état d''esprit pendant l''action, donc la manière.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « Pendant la récréation, les élèves courent rapidement autour de la cour. »',
  '[{"id":"s5q8w1","label":"pendant la récréation"},{"id":"s5q8w2","label":"rapidement"},{"id":"s5q8w3","label":"autour de la cour"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q8w1":"temps","s5q8w2":"maniere","s5q8w3":"lieu"}}'::jsonb,
  '« Pendant la récréation » = quand → CC de temps (durée délimitée). « Rapidement » = comment → CC de manière (adverbe de manière). « Autour de la cour » = où → CC de lieu (localisation spatiale).',
  'Hésiter entre « pendant la récréation » comme CC de cause ou de temps. « Pendant » indique un cadre temporel, pas une raison.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Difficile',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « Faute de temps, le chercheur travaillait méthodiquement dans son laboratoire jusqu''à minuit. »',
  '[{"id":"s5q9w1","label":"faute de temps"},{"id":"s5q9w2","label":"méthodiquement"},{"id":"s5q9w3","label":"dans son laboratoire"},{"id":"s5q9w4","label":"jusqu''à minuit"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q9w1":"cause","s5q9w2":"maniere","s5q9w3":"lieu","s5q9w4":"temps"}}'::jsonb,
  '« Faute de temps » = pourquoi il travaille tard → CC de cause (la cause est le manque de temps). « Méthodiquement » = comment → CC de manière. « Dans son laboratoire » = où → CC de lieu. « Jusqu''à minuit » = jusqu''à quand → CC de temps (limite temporelle).',
  'Confondre « faute de temps » avec un CC de temps. « Faute de » signifie « en raison du manque de » : c''est une cause, pas un repère temporel.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4050000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'tri_complements_circonstanciels',
  'Tri : compléments circonstanciels',
  'Intermediaire',
  'tri_categories',
  'Classez chaque groupe de mots selon la circonstance qu''il exprime.',
  'Phrase : « Après le dîner, nous nous promenons tranquillement le long de la rivière car il fait doux. »',
  '[{"id":"s5q10w1","label":"après le dîner"},{"id":"s5q10w2","label":"tranquillement"},{"id":"s5q10w3","label":"le long de la rivière"},{"id":"s5q10w4","label":"car il fait doux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"maniere","label":"CC de manière"},{"id":"cause","label":"CC de cause"}],"mapping":{"s5q10w1":"temps","s5q10w2":"maniere","s5q10w3":"lieu","s5q10w4":"cause"}}'::jsonb,
  '« Après le dîner » = quand → CC de temps. « Tranquillement » = comment → CC de manière. « Le long de la rivière » = où → CC de lieu. « Car il fait doux » exprime la cause. Attention : « car » est une conjonction de coordination — il introduit donc une proposition coordonnée à valeur causale, et non une subordonnée. La relation logique reste celle de la cause.',
  'Ne pas identifier « car il fait doux » comme un CC de cause parce que c''est une proposition et non un groupe nominal prépositionnel. Un CC de cause peut être exprimé par différentes structures : GN prépositionnel, adverbe ou proposition.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
