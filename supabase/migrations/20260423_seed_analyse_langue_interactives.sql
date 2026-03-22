-- Migration: 2 séries interactives analyse_langue (20 questions)
-- Série 1 : tri_categories — Distinguer nature et fonction (free)
-- Série 2 : surlignage_propositions — Propositions dans la phrase complexe (premium)

-- ============================================================
-- SÉRIE 1 : Tri — Nature vs fonction (10 questions)
-- topic_key: tri_nature_fonction
-- ============================================================

-- Q1 — Facile (2 catégories : nature / fonction)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Facile',
  'tri_categories',
  'Classez chaque terme grammatical selon qu''il désigne une nature (classe de mots) ou une fonction (rôle syntaxique).',
  NULL,
  '[{"id":"s1q1w1","label":"nom"},{"id":"s1q1w2","label":"sujet"},{"id":"s1q1w3","label":"adjectif"},{"id":"s1q1w4","label":"COD"},{"id":"s1q1w5","label":"verbe"},{"id":"s1q1w6","label":"attribut du sujet"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"}],"mapping":{"s1q1w1":"nature","s1q1w2":"fonction","s1q1w3":"nature","s1q1w4":"fonction","s1q1w5":"nature","s1q1w6":"fonction"}}'::jsonb,
  'La nature d''un mot est sa classe grammaticale intrinsèque (nom, verbe, adjectif, etc.). La fonction est le rôle que ce mot joue dans une phrase donnée (sujet, COD, attribut, etc.). Selon les programmes Éduscol, cette distinction fondamentale doit être maîtrisée dès le cycle 3.',
  'Confondre « adjectif » (nature) avec « épithète » (fonction). Un adjectif peut avoir différentes fonctions : épithète, attribut du sujet, attribut du COD.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile (2 catégories : nature / fonction)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Facile',
  'tri_categories',
  'Classez chaque terme grammatical selon qu''il désigne une nature (classe de mots) ou une fonction (rôle syntaxique).',
  NULL,
  '[{"id":"s1q2w1","label":"déterminant"},{"id":"s1q2w2","label":"complément circonstanciel"},{"id":"s1q2w3","label":"pronom"},{"id":"s1q2w4","label":"COI"},{"id":"s1q2w5","label":"adverbe"},{"id":"s1q2w6","label":"épithète"},{"id":"s1q2w7","label":"conjonction"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"}],"mapping":{"s1q2w1":"nature","s1q2w2":"fonction","s1q2w3":"nature","s1q2w4":"fonction","s1q2w5":"nature","s1q2w6":"fonction","s1q2w7":"nature"}}'::jsonb,
  'Le déterminant, le pronom, l''adverbe et la conjonction sont des classes grammaticales (natures). Le complément circonstanciel, le COI et l''épithète sont des rôles syntaxiques (fonctions). Les programmes Éduscol insistent sur la nécessité de manipuler ces deux plans d''analyse distinctement.',
  'Classer « adverbe » comme une fonction parce qu''il modifie un verbe. L''adverbe est bien une classe de mots (nature), même s''il joue souvent un rôle de modification.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile (2 catégories : nature / fonction)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Facile',
  'tri_categories',
  'Classez chaque terme grammatical selon qu''il désigne une nature (classe de mots) ou une fonction (rôle syntaxique).',
  NULL,
  '[{"id":"s1q3w1","label":"préposition"},{"id":"s1q3w2","label":"complément du nom"},{"id":"s1q3w3","label":"interjection"},{"id":"s1q3w4","label":"apposition"},{"id":"s1q3w5","label":"nom"},{"id":"s1q3w6","label":"sujet"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"}],"mapping":{"s1q3w1":"nature","s1q3w2":"fonction","s1q3w3":"nature","s1q3w4":"fonction","s1q3w5":"nature","s1q3w6":"fonction"}}'::jsonb,
  'La préposition, l''interjection et le nom sont des classes de mots (natures). Le complément du nom, l''apposition et le sujet sont des fonctions. Les instructions Éduscol précisent que l''élève doit savoir identifier la nature d''un mot indépendamment de la phrase où il apparaît.',
  'Confondre « préposition » avec « complément du nom ». La préposition (à, de, par…) est une classe de mots ; le complément du nom est la fonction du groupe qu''elle introduit.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire (2 catégories, termes plus subtils)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Intermediaire',
  'tri_categories',
  'Classez chaque terme grammatical selon qu''il désigne une nature (classe de mots) ou une fonction (rôle syntaxique).',
  NULL,
  '[{"id":"s1q4w1","label":"pronom relatif"},{"id":"s1q4w2","label":"complément du nom"},{"id":"s1q4w3","label":"adverbe"},{"id":"s1q4w4","label":"épithète"},{"id":"s1q4w5","label":"préposition"},{"id":"s1q4w6","label":"attribut du COD"},{"id":"s1q4w7","label":"conjonction de subordination"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"}],"mapping":{"s1q4w1":"nature","s1q4w2":"fonction","s1q4w3":"nature","s1q4w4":"fonction","s1q4w5":"nature","s1q4w6":"fonction","s1q4w7":"nature"}}'::jsonb,
  'Le pronom relatif (qui, que, dont…), l''adverbe, la préposition et la conjonction de subordination sont des classes grammaticales. Le complément du nom, l''épithète et l''attribut du COD sont des fonctions. Les programmes Éduscol rappellent que les pronoms relatifs sont une sous-catégorie des pronoms (nature), à ne pas confondre avec leur rôle dans la subordonnée.',
  'Classer « pronom relatif » comme fonction parce qu''il introduit une subordonnée relative. Introduire une proposition est un rôle, mais « pronom relatif » désigne la classe grammaticale du mot.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire (2 catégories, termes plus subtils)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Intermediaire',
  'tri_categories',
  'Classez chaque terme grammatical selon qu''il désigne une nature (classe de mots) ou une fonction (rôle syntaxique).',
  NULL,
  '[{"id":"s1q5w1","label":"conjonction de coordination"},{"id":"s1q5w2","label":"complément d''agent"},{"id":"s1q5w3","label":"pronom personnel"},{"id":"s1q5w4","label":"apposition"},{"id":"s1q5w5","label":"déterminant possessif"},{"id":"s1q5w6","label":"complément circonstanciel de temps"},{"id":"s1q5w7","label":"adjectif qualificatif"},{"id":"s1q5w8","label":"COD"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"}],"mapping":{"s1q5w1":"nature","s1q5w2":"fonction","s1q5w3":"nature","s1q5w4":"fonction","s1q5w5":"nature","s1q5w6":"fonction","s1q5w7":"nature","s1q5w8":"fonction"}}'::jsonb,
  'Les natures sont : conjonction de coordination (mais, ou, et…), pronom personnel, déterminant possessif et adjectif qualificatif. Les fonctions sont : complément d''agent, apposition, complément circonstanciel de temps et COD. Éduscol recommande d''enseigner ces deux plans en parallèle pour éviter les confusions systématiques.',
  'Confondre « complément d''agent » avec une nature. Le complément d''agent est la fonction du groupe nominal introduit par « par » ou « de » dans une phrase passive.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire (2 catégories, termes plus subtils)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Intermediaire',
  'tri_categories',
  'Classez chaque terme grammatical selon qu''il désigne une nature (classe de mots) ou une fonction (rôle syntaxique).',
  NULL,
  '[{"id":"s1q6w1","label":"pronom démonstratif"},{"id":"s1q6w2","label":"complément circonstanciel de lieu"},{"id":"s1q6w3","label":"verbe"},{"id":"s1q6w4","label":"épithète liée"},{"id":"s1q6w5","label":"article défini"},{"id":"s1q6w6","label":"sujet inversé"},{"id":"s1q6w7","label":"adverbe de manière"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"}],"mapping":{"s1q6w1":"nature","s1q6w2":"fonction","s1q6w3":"nature","s1q6w4":"fonction","s1q6w5":"nature","s1q6w6":"fonction","s1q6w7":"nature"}}'::jsonb,
  'Le pronom démonstratif, le verbe, l''article défini et l''adverbe de manière sont des classes de mots. Le complément circonstanciel de lieu, l''épithète liée et le sujet inversé sont des fonctions. Comme le souligne Éduscol, le « sujet inversé » reste une fonction sujet — c''est sa position qui change, pas sa nature syntaxique.',
  'Classer « article défini » comme une fonction parce qu''il « détermine » le nom. Déterminer est un rôle sémantique, mais l''article défini est bien une sous-catégorie des déterminants (nature).',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire (2 catégories, termes plus subtils)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Intermediaire',
  'tri_categories',
  'Classez chaque terme grammatical selon qu''il désigne une nature (classe de mots) ou une fonction (rôle syntaxique).',
  NULL,
  '[{"id":"s1q7w1","label":"nom propre"},{"id":"s1q7w2","label":"attribut du sujet"},{"id":"s1q7w3","label":"pronom indéfini"},{"id":"s1q7w4","label":"complément circonstanciel de cause"},{"id":"s1q7w5","label":"conjonction de subordination"},{"id":"s1q7w6","label":"COI"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"}],"mapping":{"s1q7w1":"nature","s1q7w2":"fonction","s1q7w3":"nature","s1q7w4":"fonction","s1q7w5":"nature","s1q7w6":"fonction"}}'::jsonb,
  'Le nom propre, le pronom indéfini et la conjonction de subordination sont des classes de mots (natures). L''attribut du sujet, le complément circonstanciel de cause et le COI sont des fonctions. Selon les programmes Éduscol 2020, les élèves doivent progressivement apprendre à distinguer ces deux niveaux d''analyse.',
  'Penser que « nom propre » est une fonction parce qu''il identifie une personne ou un lieu. Le nom propre est une sous-catégorie du nom (nature) ; sa fonction peut être sujet, COD, apposition, etc.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile (3 catégories : nature / fonction / peut être les deux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Difficile',
  'tri_categories',
  'Classez chaque terme selon qu''il désigne exclusivement une nature, exclusivement une fonction, ou qu''il peut désigner les deux selon le contexte.',
  NULL,
  '[{"id":"s1q8w1","label":"sujet"},{"id":"s1q8w2","label":"adjectif"},{"id":"s1q8w3","label":"complément"},{"id":"s1q8w4","label":"déterminant"},{"id":"s1q8w5","label":"apposition"},{"id":"s1q8w6","label":"infinitif"},{"id":"s1q8w7","label":"participe"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"},{"id":"les_deux","label":"Peut être les deux selon le contexte"}],"mapping":{"s1q8w1":"fonction","s1q8w2":"nature","s1q8w3":"fonction","s1q8w4":"nature","s1q8w5":"fonction","s1q8w6":"les_deux","s1q8w7":"les_deux"}}'::jsonb,
  'L''infinitif peut être considéré comme un mode verbal (nature) ou comme une forme nominale du verbe pouvant occuper la fonction sujet ou COD. Le participe est à la fois un mode du verbe (nature) et une forme pouvant fonctionner comme adjectif (épithète, attribut). Éduscol signale ces cas ambigus comme des points de vigilance au cycle 3.',
  'Classer « infinitif » uniquement comme nature. Dans « Mentir est un défaut », l''infinitif « mentir » a la fonction sujet — il fonctionne alors comme un nom.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile (3 catégories)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Difficile',
  'tri_categories',
  'Classez chaque terme selon qu''il désigne exclusivement une nature, exclusivement une fonction, ou qu''il peut désigner les deux selon le contexte.',
  NULL,
  '[{"id":"s1q9w1","label":"pronom"},{"id":"s1q9w2","label":"épithète"},{"id":"s1q9w3","label":"adverbe"},{"id":"s1q9w4","label":"attribut"},{"id":"s1q9w5","label":"que"},{"id":"s1q9w6","label":"COD"},{"id":"s1q9w7","label":"tout"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"},{"id":"les_deux","label":"Peut être les deux selon le contexte"}],"mapping":{"s1q9w1":"nature","s1q9w2":"fonction","s1q9w3":"nature","s1q9w4":"fonction","s1q9w5":"les_deux","s1q9w6":"fonction","s1q9w7":"les_deux"}}'::jsonb,
  'Le mot « que » peut être pronom relatif, conjonction de subordination ou adverbe exclamatif — sa nature change selon le contexte. « Tout » peut être déterminant, pronom, adverbe ou nom selon l''emploi. Éduscol recommande de travailler ces mots polyvalents par la manipulation de phrases pour faire émerger les différences.',
  'Classer « que » comme une simple conjonction. Ce mot est polyvalent : dans « la chose que je vois », c''est un pronom relatif (nature) ; dans « je veux que tu viennes », c''est une conjonction de subordination (nature différente).',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile (3 catégories)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3010000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'tri_nature_fonction',
  'Tri — Nature vs fonction',
  'Difficile',
  'tri_categories',
  'Classez chaque terme selon qu''il désigne exclusivement une nature, exclusivement une fonction, ou qu''il peut désigner les deux selon le contexte.',
  NULL,
  '[{"id":"s1q10w1","label":"préposition"},{"id":"s1q10w2","label":"complément d''agent"},{"id":"s1q10w3","label":"le"},{"id":"s1q10w4","label":"en"},{"id":"s1q10w5","label":"attribut du sujet"},{"id":"s1q10w6","label":"conjonction"},{"id":"s1q10w7","label":"y"},{"id":"s1q10w8","label":"sujet"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nature","label":"Nature (classe de mots)"},{"id":"fonction","label":"Fonction (rôle syntaxique)"},{"id":"les_deux","label":"Peut être les deux selon le contexte"}],"mapping":{"s1q10w1":"nature","s1q10w2":"fonction","s1q10w3":"les_deux","s1q10w4":"les_deux","s1q10w5":"fonction","s1q10w6":"nature","s1q10w7":"les_deux","s1q10w8":"fonction"}}'::jsonb,
  '« Le » peut être article défini (déterminant, nature) ou pronom personnel COD (nature différente). « En » peut être préposition (nature) ou pronom adverbial (nature différente). « Y » peut être pronom adverbial ou adverbe de lieu. Ces mots homophones à natures multiples sont identifiés par Éduscol comme des obstacles didactiques majeurs au cycle 3.',
  'Considérer « en » comme uniquement une préposition. Dans « J''en veux », « en » est un pronom personnel complément, pas une préposition.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 2 : Surlignage — Propositions dans la phrase complexe (10 questions)
-- topic_key: surlignage_phrase_complexe
-- ============================================================

-- Q1 — Facile (2 groupes : principale / subordonnée)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots de la proposition principale et de la proposition subordonnée.',
  NULL,
  '[{"id":"s1","label":"Je"},{"id":"s2","label":"pense"},{"id":"s3","label":"que"},{"id":"s4","label":"tu"},{"id":"s5","label":"as"},{"id":"s6","label":"raison."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Proposition principale","color":"#4A6E8F"},{"id":"subordonnee","label":"Proposition subordonnée","color":"#A46849"}],"mapping":{"s1":"principale","s2":"principale","s3":"subordonnee","s4":"subordonnee","s5":"subordonnee","s6":"subordonnee"}}'::jsonb,
  'La proposition principale « Je pense » contient le verbe dont dépend la subordonnée. La proposition subordonnée conjonctive complétive « que tu as raison » est introduite par la conjonction « que » et occupe la fonction COD du verbe « pense ». Selon Éduscol, la conjonction de subordination appartient à la subordonnée qu''elle introduit.',
  'Rattacher « que » à la proposition principale. La conjonction de subordination fait partie intégrante de la subordonnée qu''elle introduit.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile (2 groupes : principale / subordonnée)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots de la proposition principale et de la proposition subordonnée.',
  NULL,
  '[{"id":"s1","label":"L''enfant"},{"id":"s2","label":"qui"},{"id":"s3","label":"court"},{"id":"s4","label":"dans"},{"id":"s5","label":"la"},{"id":"s6","label":"cour"},{"id":"s7","label":"est"},{"id":"s8","label":"mon"},{"id":"s9","label":"frère."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Proposition principale","color":"#4A6E8F"},{"id":"subordonnee","label":"Proposition subordonnée","color":"#A46849"}],"mapping":{"s1":"principale","s2":"subordonnee","s3":"subordonnee","s4":"subordonnee","s5":"subordonnee","s6":"subordonnee","s7":"principale","s8":"principale","s9":"principale"}}'::jsonb,
  'La proposition principale est « L''enfant est mon frère » — elle constitue le noyau de la phrase. La subordonnée relative « qui court dans la cour » est enchâssée dans la principale et complète le nom « enfant ». Selon les programmes Éduscol, l''élève doit repérer que la principale peut être discontinue quand la subordonnée est insérée.',
  'Oublier que la principale est discontinue (« L''enfant … est mon frère ») et ne surligner que « est mon frère » comme principale.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile (2 groupes : principale / subordonnée)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Facile',
  'surlignage_propositions',
  'Surlignez les mots de la proposition principale et de la proposition subordonnée.',
  NULL,
  '[{"id":"s1","label":"Nous"},{"id":"s2","label":"sortirons"},{"id":"s3","label":"quand"},{"id":"s4","label":"la"},{"id":"s5","label":"pluie"},{"id":"s6","label":"cessera."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Proposition principale","color":"#4A6E8F"},{"id":"subordonnee","label":"Proposition subordonnée","color":"#A46849"}],"mapping":{"s1":"principale","s2":"principale","s3":"subordonnee","s4":"subordonnee","s5":"subordonnee","s6":"subordonnee"}}'::jsonb,
  'La proposition principale « Nous sortirons » exprime l''action principale. La subordonnée conjonctive circonstancielle de temps « quand la pluie cessera » est introduite par « quand » et indique le moment de l''action. Éduscol classe « quand » parmi les conjonctions de subordination à valeur temporelle.',
  'Hésiter sur le rattachement de « quand » : cette conjonction de subordination appartient bien à la subordonnée circonstancielle qu''elle introduit.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire (3 groupes : principale / sub. relative / sub. conjonctive)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots selon qu''ils appartiennent à la proposition principale, à la subordonnée relative ou à la subordonnée conjonctive.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"professeur"},{"id":"s3","label":"qui"},{"id":"s4","label":"enseigne"},{"id":"s5","label":"le"},{"id":"s6","label":"français"},{"id":"s7","label":"espère"},{"id":"s8","label":"que"},{"id":"s9","label":"ses"},{"id":"s10","label":"élèves"},{"id":"s11","label":"réussiront."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Principale","color":"#4A6E8F"},{"id":"sub_relative","label":"Sub. relative","color":"#A46849"},{"id":"sub_conjonctive","label":"Sub. conjonctive","color":"#6B534A"}],"mapping":{"s1":"principale","s2":"principale","s3":"sub_relative","s4":"sub_relative","s5":"sub_relative","s6":"sub_relative","s7":"principale","s8":"sub_conjonctive","s9":"sub_conjonctive","s10":"sub_conjonctive","s11":"sub_conjonctive"}}'::jsonb,
  'La principale « Le professeur espère » est discontinue. La subordonnée relative « qui enseigne le français » complète le nom « professeur » (fonction : complément de l''antécédent). La subordonnée conjonctive complétive « que ses élèves réussiront » est COD de « espère ». Éduscol insiste sur la capacité à identifier les deux types de subordonnées dans une même phrase.',
  'Confondre « que » (conjonction de subordination introduisant une complétive) avec « qui » (pronom relatif introduisant une relative). Les deux introduisent des subordonnées mais de nature différente.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire (3 groupes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots selon qu''ils appartiennent à la proposition principale, à la subordonnée relative ou à la subordonnée conjonctive.',
  NULL,
  '[{"id":"s1","label":"La"},{"id":"s2","label":"maison"},{"id":"s3","label":"dont"},{"id":"s4","label":"je"},{"id":"s5","label":"rêvais"},{"id":"s6","label":"sera"},{"id":"s7","label":"vendue"},{"id":"s8","label":"parce"},{"id":"s9","label":"qu''elle"},{"id":"s10","label":"est"},{"id":"s11","label":"trop"},{"id":"s12","label":"grande."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Principale","color":"#4A6E8F"},{"id":"sub_relative","label":"Sub. relative","color":"#A46849"},{"id":"sub_conjonctive","label":"Sub. conjonctive","color":"#6B534A"}],"mapping":{"s1":"principale","s2":"principale","s3":"sub_relative","s4":"sub_relative","s5":"sub_relative","s6":"principale","s7":"principale","s8":"sub_conjonctive","s9":"sub_conjonctive","s10":"sub_conjonctive","s11":"sub_conjonctive","s12":"sub_conjonctive"}}'::jsonb,
  'La principale « La maison sera vendue » est discontinue. La subordonnée relative « dont je rêvais » complète « maison » (introduite par le pronom relatif « dont »). La subordonnée conjonctive circonstancielle de cause « parce qu''elle est trop grande » est introduite par la locution conjonctive « parce que ». Selon Éduscol, « parce que » forme une locution conjonctive de subordination à valeur causale.',
  'Séparer « parce » et « qu''elle » en les assignant à des propositions différentes. « Parce que » est une locution conjonctive indissociable qui introduit la subordonnée circonstancielle.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire (3 groupes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots selon qu''ils appartiennent à la proposition principale, à la subordonnée relative ou à la subordonnée conjonctive.',
  NULL,
  '[{"id":"s1","label":"Je"},{"id":"s2","label":"sais"},{"id":"s3","label":"que"},{"id":"s4","label":"le"},{"id":"s5","label":"livre"},{"id":"s6","label":"qui"},{"id":"s7","label":"se"},{"id":"s8","label":"trouve"},{"id":"s9","label":"sur"},{"id":"s10","label":"la"},{"id":"s11","label":"table"},{"id":"s12","label":"est"},{"id":"s13","label":"passionnant."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Principale","color":"#4A6E8F"},{"id":"sub_relative","label":"Sub. relative","color":"#A46849"},{"id":"sub_conjonctive","label":"Sub. conjonctive","color":"#6B534A"}],"mapping":{"s1":"principale","s2":"principale","s3":"sub_conjonctive","s4":"sub_conjonctive","s5":"sub_conjonctive","s6":"sub_relative","s7":"sub_relative","s8":"sub_relative","s9":"sub_relative","s10":"sub_relative","s11":"sub_relative","s12":"sub_conjonctive","s13":"sub_conjonctive"}}'::jsonb,
  'La principale est « Je sais ». La subordonnée conjonctive complétive « que le livre est passionnant » est COD de « sais » — elle est elle-même discontinue car interrompue par la relative. La subordonnée relative « qui se trouve sur la table » est enchâssée dans la complétive et complète « livre ». Éduscol souligne que les subordonnées peuvent s''emboîter les unes dans les autres.',
  'Oublier que la subordonnée conjonctive englobe « le livre » et « est passionnant » : la relative est enchâssée à l''intérieur de la conjonctive, pas à côté.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire (3 groupes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les mots selon qu''ils appartiennent à la proposition principale, à la subordonnée relative ou à la subordonnée conjonctive.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"élèves"},{"id":"s3","label":"travaillent"},{"id":"s4","label":"bien"},{"id":"s5","label":"pour"},{"id":"s6","label":"que"},{"id":"s7","label":"l''enseignant"},{"id":"s8","label":"qui"},{"id":"s9","label":"les"},{"id":"s10","label":"encadre"},{"id":"s11","label":"soit"},{"id":"s12","label":"satisfait."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Principale","color":"#4A6E8F"},{"id":"sub_relative","label":"Sub. relative","color":"#A46849"},{"id":"sub_conjonctive","label":"Sub. conjonctive","color":"#6B534A"}],"mapping":{"s1":"principale","s2":"principale","s3":"principale","s4":"principale","s5":"sub_conjonctive","s6":"sub_conjonctive","s7":"sub_conjonctive","s8":"sub_relative","s9":"sub_relative","s10":"sub_relative","s11":"sub_conjonctive","s12":"sub_conjonctive"}}'::jsonb,
  'La principale est « Les élèves travaillent bien ». La subordonnée conjonctive circonstancielle de but « pour que l''enseignant soit satisfait » est introduite par la locution « pour que » et exprime la finalité. La subordonnée relative « qui les encadre » est enchâssée dans la circonstancielle et complète « enseignant ». Éduscol recommande de repérer les locutions conjonctives (pour que, afin que, bien que…) dès le CM2.',
  'Ne pas reconnaître « pour que » comme une locution conjonctive de subordination et séparer « pour » (rattaché à la principale) de « que » (rattaché à la subordonnée).',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile (3-4 groupes avec types spécifiques)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les mots selon qu''ils appartiennent à la proposition principale, à la subordonnée relative, à la subordonnée complétive ou à la subordonnée circonstancielle.',
  NULL,
  '[{"id":"s1","label":"Bien"},{"id":"s2","label":"qu''il"},{"id":"s3","label":"pleuve,"},{"id":"s4","label":"le"},{"id":"s5","label":"jardinier"},{"id":"s6","label":"qui"},{"id":"s7","label":"aime"},{"id":"s8","label":"son"},{"id":"s9","label":"métier"},{"id":"s10","label":"affirme"},{"id":"s11","label":"qu''il"},{"id":"s12","label":"continuera"},{"id":"s13","label":"à"},{"id":"s14","label":"travailler."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Principale","color":"#4A6E8F"},{"id":"sub_relative","label":"Sub. relative","color":"#A46849"},{"id":"sub_completive","label":"Sub. complétive","color":"#6B534A"},{"id":"sub_circonstancielle","label":"Sub. circonstancielle","color":"#8B6F47"}],"mapping":{"s1":"sub_circonstancielle","s2":"sub_circonstancielle","s3":"sub_circonstancielle","s4":"principale","s5":"principale","s6":"sub_relative","s7":"sub_relative","s8":"sub_relative","s9":"sub_relative","s10":"principale","s11":"sub_completive","s12":"sub_completive","s13":"sub_completive","s14":"sub_completive"}}'::jsonb,
  'Cette phrase complexe contient trois subordonnées. La subordonnée circonstancielle concessive « Bien qu''il pleuve » est introduite par « bien que ». La principale discontinue est « le jardinier affirme ». La subordonnée relative « qui aime son métier » complète « jardinier ». La subordonnée complétive « qu''il continuera à travailler » est COD de « affirme ». Éduscol distingue trois grands types de subordonnées : relative, complétive et circonstancielle.',
  'Confondre la subordonnée circonstancielle concessive (« bien que ») avec une complétive. « Bien que » exprime une concession (circonstancielle), pas un contenu propositionnel (complétive).',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile (4 groupes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les mots selon qu''ils appartiennent à la proposition principale, à la subordonnée relative, à la subordonnée complétive ou à la subordonnée circonstancielle.',
  NULL,
  '[{"id":"s1","label":"L''auteur"},{"id":"s2","label":"dont"},{"id":"s3","label":"on"},{"id":"s4","label":"parle"},{"id":"s5","label":"souhaite"},{"id":"s6","label":"que"},{"id":"s7","label":"son"},{"id":"s8","label":"roman"},{"id":"s9","label":"soit"},{"id":"s10","label":"publié"},{"id":"s11","label":"avant"},{"id":"s12","label":"que"},{"id":"s13","label":"l''été"},{"id":"s14","label":"arrive."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Principale","color":"#4A6E8F"},{"id":"sub_relative","label":"Sub. relative","color":"#A46849"},{"id":"sub_completive","label":"Sub. complétive","color":"#6B534A"},{"id":"sub_circonstancielle","label":"Sub. circonstancielle","color":"#8B6F47"}],"mapping":{"s1":"principale","s2":"sub_relative","s3":"sub_relative","s4":"sub_relative","s5":"principale","s6":"sub_completive","s7":"sub_completive","s8":"sub_completive","s9":"sub_completive","s10":"sub_completive","s11":"sub_circonstancielle","s12":"sub_circonstancielle","s13":"sub_circonstancielle","s14":"sub_circonstancielle"}}'::jsonb,
  'La principale « L''auteur souhaite » est discontinue. La subordonnée relative « dont on parle » complète « auteur » (le pronom relatif « dont » = complément indirect). La subordonnée complétive « que son roman soit publié » est COD de « souhaite » (subjonctif après verbe de souhait). La subordonnée circonstancielle de temps « avant que l''été arrive » est introduite par la locution « avant que ». Éduscol souligne l''importance de distinguer les trois types de subordonnées conjonctives.',
  'Confondre les deux « que » de la phrase : le premier introduit une complétive (COD), le second fait partie de la locution « avant que » (circonstancielle de temps).',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile (4 groupes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f3020000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'surlignage_phrase_complexe',
  'Surlignage — Propositions dans la phrase complexe',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les mots selon qu''ils appartiennent à la proposition principale, à la subordonnée relative, à la subordonnée complétive ou à la subordonnée circonstancielle.',
  NULL,
  '[{"id":"s1","label":"Quand"},{"id":"s2","label":"le"},{"id":"s3","label":"soleil"},{"id":"s4","label":"se"},{"id":"s5","label":"couche,"},{"id":"s6","label":"le"},{"id":"s7","label":"pêcheur"},{"id":"s8","label":"qui"},{"id":"s9","label":"rentre"},{"id":"s10","label":"au"},{"id":"s11","label":"port"},{"id":"s12","label":"sait"},{"id":"s13","label":"que"},{"id":"s14","label":"la"},{"id":"s15","label":"journée"},{"id":"s16","label":"est"},{"id":"s17","label":"finie."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"principale","label":"Principale","color":"#4A6E8F"},{"id":"sub_relative","label":"Sub. relative","color":"#A46849"},{"id":"sub_completive","label":"Sub. complétive","color":"#6B534A"},{"id":"sub_circonstancielle","label":"Sub. circonstancielle","color":"#8B6F47"}],"mapping":{"s1":"sub_circonstancielle","s2":"sub_circonstancielle","s3":"sub_circonstancielle","s4":"sub_circonstancielle","s5":"sub_circonstancielle","s6":"principale","s7":"principale","s8":"sub_relative","s9":"sub_relative","s10":"sub_relative","s11":"sub_relative","s12":"principale","s13":"sub_completive","s14":"sub_completive","s15":"sub_completive","s16":"sub_completive","s17":"sub_completive"}}'::jsonb,
  'Cette phrase complexe illustre les trois types de subordonnées. La circonstancielle de temps « Quand le soleil se couche » est antéposée. La principale discontinue est « le pêcheur sait ». La relative « qui rentre au port » complète « pêcheur ». La complétive « que la journée est finie » est COD de « sait ». Éduscol recommande de travailler sur des phrases à subordonnées multiples pour consolider l''analyse syntaxique au cycle 3.',
  'Rattacher « quand » à la proposition principale parce qu''il est en tête de phrase. Une subordonnée circonstancielle peut être antéposée — sa position ne change pas sa nature de subordonnée.',
  'valide',
  'CRPE Français — Analyse de la langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
