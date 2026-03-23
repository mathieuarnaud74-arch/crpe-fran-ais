-- Migration: 20260369_seed_orthographe_nouvelles2.sql
-- Description: Ajout de 2 nouvelles séries d'exercices en orthographe (20 questions)
--
-- SÉRIE 1 : ortho_consonnes_doubles — "Les consonnes doubles"
--   UUID prefix : fa150000  (fa150000-0000-0000-0000-00000000000N)
--   access_tier : free
--   10 questions : 5 qcm, 2 vrai_faux, 3 correction_orthographique
--
-- SÉRIE 2 : ortho_trait_union — "Le trait d''union : règles et emplois"
--   UUID prefix : fa160000  (fa160000-0000-0000-0000-00000000000N)
--   access_tier : premium
--   10 questions : 6 qcm, 2 vrai_faux, 2 reponse_courte

-- ============================================================
-- SÉRIE 1 : ortho_consonnes_doubles — Les consonnes doubles
-- ============================================================

-- Q1 (qcm, Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Facile',
  'qcm',
  'Quelle est l''orthographe correcte du verbe formé avec le préfixe « ap- » et le radical « porter » ?',
  NULL,
  '[{"id":"a","label":"aporter"},{"id":"b","label":"apporter"},{"id":"c","label":"appporter"},{"id":"d","label":"aporté"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le préfixe « ap- » entraîne le doublement de la consonne initiale du radical : ap- + porter = apporter. Cette règle d''assimilation du préfixe est systématique devant « p » et constitue un savoir attendu au CRPE.',
  'L''élève oublie de doubler le « p » et écrit « aporter », par analogie avec des mots où le doublement n''a pas lieu.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (qcm, Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Facile',
  'qcm',
  'Parmi ces mots, lequel contient une consonne double correctement orthographiée ?',
  NULL,
  '[{"id":"a","label":"agrésif"},{"id":"b","label":"agressif"},{"id":"c","label":"aggressif"},{"id":"d","label":"agresif"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le mot « agressif » s''écrit avec deux « s » (pour obtenir le son [s] entre deux voyelles) mais un seul « g ». La connaissance de l''orthographe lexicale des mots courants est évaluée au CRPE selon les programmes d''Éduscol.',
  'L''élève double le « g » par hypercorrection (« aggressif ») ou oublie de doubler le « s » (« agrésif »).',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (qcm, Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Intermediaire',
  'qcm',
  'Selon les rectifications orthographiques de 1990, quelle est la conjugaison correcte du verbe « étiqueter » au présent, à la 3e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"il étiquette"},{"id":"b","label":"il étiquète"},{"id":"c","label":"il étiquete"},{"id":"d","label":"il étiquètte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les rectifications de 1990 recommandent l''emploi de l''accent grave au lieu du doublement de la consonne pour les verbes en -eter (sauf « jeter » et ses dérivés). Ainsi « il étiquète » est la forme rectifiée. Le CRPE attend la connaissance de ces rectifications conformément aux programmes d''Éduscol.',
  'L''élève applique l''ancienne règle du doublement (« il étiquette ») sans connaître la réforme de 1990, ou confond avec « jeter » qui conserve le doublement.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (qcm, Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Intermediaire',
  'qcm',
  'Quel mot est correctement orthographié parmi les suivants ?',
  NULL,
  '[{"id":"a","label":"occurence"},{"id":"b","label":"ocurrence"},{"id":"c","label":"occurrence"},{"id":"d","label":"ocurence"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le mot « occurrence » s''écrit avec deux « c » et deux « r ». Il provient du latin « occurrentia » où le préfixe « ob- » s''assimile en « oc- » devant « c ». La maîtrise de l''orthographe lexicale, y compris des mots d''origine latine, est un attendu du CRPE.',
  'L''élève omet le doublement du « c » ou du « r », produisant « occurence » (erreur la plus fréquente) ou « ocurrence ».',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (qcm, Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Difficile',
  'qcm',
  'Parmi ces quatre mots formés avec le préfixe « in- » (ou sa variante), lequel présente un doublement de consonne incorrect ?',
  NULL,
  '[{"id":"a","label":"innombrable"},{"id":"b","label":"innocent"},{"id":"c","label":"innaceptable"},{"id":"d","label":"innovation"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On écrit « inacceptable » avec un seul « n » car le préfixe « in- » ne s''assimile pas devant « a ». L''assimilation du préfixe « in- » en « im- », « il- » ou « ir- » se produit uniquement devant « m/b/p », « l » et « r ». Les programmes d''Éduscol soulignent l''importance de la morphologie dérivationnelle pour enseigner l''orthographe lexicale.',
  'L''élève généralise le doublement après « in- » (comme dans « innombrable » ou « innocent ») et écrit à tort « innaceptable ».',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (vrai_faux, Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le mot « nourrir » s''écrit avec deux « r » tandis que « mourir » ne s''écrit qu''avec un seul « r ».',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai : « nourrir » prend deux « r » alors que « mourir » n''en prend qu''un. Ce sont des exceptions lexicales qu''il faut mémoriser. Les programmes d''Éduscol insistent sur la mémorisation des mots irréguliers fréquents dès le cycle 2.',
  'L''élève pense que les deux verbes suivent la même règle et écrit « mourir » avec deux « r » ou « nourir » avec un seul.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (vrai_faux, Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : selon les rectifications orthographiques de 1990, le verbe « appeler » au présent s''écrit « j''appèle » avec un accent grave au lieu du doublement du « l ».',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux : « appeler » fait partie des exceptions qui conservent le doublement de la consonne même après la réforme de 1990, tout comme « jeter ». On écrit donc toujours « j''appelle ». Le CRPE exige la connaissance précise du périmètre des rectifications orthographiques.',
  'L''élève applique mécaniquement la réforme de 1990 à tous les verbes en -eler/-eter sans connaître les exceptions « appeler » et « jeter ».',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 (correction_orthographique, Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Intermediaire',
  'correction_orthographique',
  'Corrigez l''erreur de consonne double dans la phrase suivante : « L''enseignant a dévellopé une méthode innovante pour apprendre l''orthographe. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["L''enseignant a développé une méthode innovante pour apprendre l''orthographe."]}'::jsonb,
  'On écrit « développé » avec deux « p » et un seul « l ». Le mot vient du préfixe « dé- » + « velopper » (ancien français). La confusion porte souvent sur la place du doublement. Les programmes d''Éduscol insistent sur le rôle de la morphologie pour enseigner l''orthographe lexicale.',
  'L''élève double le « l » au lieu du « p », confondant la position du doublement dans le mot « développer ».',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (correction_orthographique, Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Difficile',
  'correction_orthographique',
  'Corrigez l''erreur de consonne double dans la phrase suivante : « Cette ommission dans le rapport a été remarquée par le directeur. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Cette omission dans le rapport a été remarquée par le directeur."]}'::jsonb,
  'On écrit « omission » avec un seul « m ». Contrairement à « commission » (com- + mission) où le préfixe justifie le doublement, « omission » vient du latin « omissio » avec le préfixe « o- » qui ne provoque pas de doublement. La distinction morphologique est un attendu de l''enseignement de l''orthographe selon les programmes d''Éduscol.',
  'L''élève double le « m » par analogie avec des mots comme « commission » ou « mammifère », sans analyser la structure morphologique du mot.',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (correction_orthographique, Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa150000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'ortho_consonnes_doubles',
  'Les consonnes doubles',
  'Difficile',
  'correction_orthographique',
  'Corrigez l''erreur de consonne double dans la phrase suivante : « Les élèves ont réussi l''exercice grâce à leur persévérance et leur atention. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Les élèves ont réussi l''exercice grâce à leur persévérance et leur attention."]}'::jsonb,
  'On écrit « attention » avec deux « t ». Le mot est formé du préfixe « at- » (assimilation de « ad- » devant « t ») + « tention » (du latin « tentio »). L''assimilation du préfixe « ad- » est une règle morphologique fondamentale que les programmes d''Éduscol préconisent d''enseigner pour renforcer l''orthographe lexicale.',
  'L''élève oublie le doublement du « t » et écrit « atention », ne reconnaissant pas l''assimilation du préfixe latin « ad- ».',
  'valide',
  'CRPE Français — Orthographe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : ortho_trait_union — Le trait d'union : règles et emplois
-- ============================================================

-- Q1 (qcm, Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Facile',
  'qcm',
  'Quelle est l''écriture correcte du nombre 321 en lettres, selon les rectifications orthographiques de 1990 ?',
  NULL,
  '[{"id":"a","label":"trois cent vingt et un"},{"id":"b","label":"trois-cent-vingt-et-un"},{"id":"c","label":"trois-cent-vingt et un"},{"id":"d","label":"trois cent-vingt-et-un"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Selon les rectifications orthographiques de 1990, tous les numéraux composés sont reliés par des traits d''union, sans exception. On écrit donc « trois-cent-vingt-et-un ». Cette règle simplifie l''ancienne norme et est explicitement attendue au CRPE.',
  'L''élève applique l''ancienne règle (trait d''union uniquement entre dizaines et unités inférieures à cent) et écrit « trois cent vingt et un ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (qcm, Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Facile',
  'qcm',
  'Dans quelle phrase le trait d''union est-il correctement employé à l''impératif ?',
  NULL,
  '[{"id":"a","label":"Donne moi ce livre."},{"id":"b","label":"Donne-moi ce livre."},{"id":"c","label":"Donnes-moi ce livre."},{"id":"d","label":"Donne-moi-ce livre."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'À l''impératif affirmatif, le pronom personnel complément est relié au verbe par un trait d''union : « Donne-moi ». Le verbe « donner » au présent de l''impératif, 2e personne du singulier, ne prend pas de « s » (sauf devant « en » et « y »). Cette règle est un attendu fondamental au CRPE.',
  'L''élève oublie le trait d''union entre le verbe et le pronom à l''impératif, ou ajoute un « s » fautif au verbe du 1er groupe.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (qcm, Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Intermediaire',
  'qcm',
  'Quelle phrase présente une utilisation correcte du trait d''union dans l''interrogation avec inversion du sujet ?',
  NULL,
  '[{"id":"a","label":"Viendra t-il demain ?"},{"id":"b","label":"Viendra-t-il demain ?"},{"id":"c","label":"Viendra-til demain ?"},{"id":"d","label":"Viendra-t''il demain ?"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans l''interrogation par inversion, le « t » euphonique est encadré par deux traits d''union : « Viendra-t-il ». Ce « t » n''est ni une apostrophe ni un élément soudé au pronom. La maîtrise de cette convention est évaluée au CRPE selon les attendus d''Éduscol en étude de la langue.',
  'L''élève confond le « t » euphonique avec une élision et utilise une apostrophe (« Viendra-t''il ») ou omet le premier trait d''union.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (qcm, Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Intermediaire',
  'qcm',
  'Quel mot composé parmi les suivants s''écrit correctement avec un trait d''union ?',
  NULL,
  '[{"id":"a","label":"c''est à dire"},{"id":"b","label":"c''est-à-dire"},{"id":"c","label":"cestàdire"},{"id":"d","label":"c''est-a-dire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La locution « c''est-à-dire » s''écrit avec des traits d''union entre ses composants et un accent grave sur le « à ». C''est une locution conjonctive figée dont l''orthographe est invariable. La connaissance des locutions figées avec trait d''union fait partie des attendus du CRPE en orthographe lexicale.',
  'L''élève oublie les traits d''union ou l''accent grave sur « à », confondant la préposition « à » avec la forme verbale « a ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (qcm, Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Difficile',
  'qcm',
  'Dans la phrase « Peut-être viendra-t-elle, dit-il, si nous l''invitons », combien de traits d''union sont correctement placés ?',
  NULL,
  '[{"id":"a","label":"3"},{"id":"b","label":"4"},{"id":"c","label":"5"},{"id":"d","label":"6"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On compte 5 traits d''union : « Peut-être » (adverbe composé, 1 trait), « viendra-t-elle » (inversion avec « t » euphonique, 2 traits), « dit-il » (incise avec inversion, 1 trait), plus le trait dans « l''invitons » n''est pas un trait d''union mais une apostrophe. Total : 5 traits d''union. L''analyse fine de la ponctuation et de l''orthographe grammaticale est un attendu du CRPE.',
  'L''élève confond apostrophes et traits d''union, ou omet de compter les deux traits d''union encadrant le « t » euphonique.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (qcm, Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Intermediaire',
  'qcm',
  'Quel est le pluriel correct du nom composé « un gratte-ciel » ?',
  NULL,
  '[{"id":"a","label":"des gratte-ciels"},{"id":"b","label":"des grattes-ciels"},{"id":"c","label":"des gratte-ciel"},{"id":"d","label":"des grattes-ciel"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Selon les rectifications orthographiques de 1990 (règle du pluriel des noms composés verbe + nom), on écrit « des gratte-ciels » avec un « s » au second élément. La réforme simplifie la règle : dans les composés verbe + nom, seul le second élément prend la marque du pluriel. Cette règle est un point clé du CRPE.',
  'L''élève laisse « ciel » invariable au pluriel (ancienne forme « des gratte-ciel ») ou accorde le verbe « gratte » par erreur.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (vrai_faux, Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le mot « aujourd''hui » s''écrit avec un trait d''union.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux : « aujourd''hui » s''écrit en un seul mot avec une apostrophe, sans aucun trait d''union. Il s''agit d''un mot soudé historiquement formé de « au + jour + de + hui ». La distinction entre apostrophe et trait d''union est un savoir de base attendu en orthographe au CRPE.',
  'L''élève confond apostrophe et trait d''union, ou imagine une segmentation « aujourd''- hui ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 (vrai_faux, Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : à l''impératif affirmatif suivi de « en », on écrit « donnes-en » avec un « s » à « donnes ».',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai : devant « en » et « y », les verbes du 1er groupe à l''impératif prennent un « s » euphonique pour faciliter la liaison. On écrit « donnes-en » et « vas-y ». Cette règle d''euphonie est un point de grammaire fréquemment évalué au CRPE, conformément aux programmes d''Éduscol.',
  'L''élève omet le « s » euphonique devant « en » et écrit « donne-en », ne connaissant pas cette exception à la règle générale de l''impératif.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte, Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Intermediaire',
  'reponse_courte',
  'Écrivez le nombre 72 en toutes lettres selon les rectifications orthographiques de 1990.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["soixante-douze"]}'::jsonb,
  'Selon les rectifications de 1990, tous les éléments d''un numéral composé sont reliés par des traits d''union. On écrit « soixante-douze ». Cette règle, déjà en vigueur pour les numéraux de dix-sept à quatre-vingt-dix-neuf dans l''ancienne norme, est généralisée à tous les numéraux composés par la réforme.',
  'L''élève écrit « soixante douze » sans trait d''union, oubliant que cette liaison est obligatoire même dans l''ancienne orthographe.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (reponse_courte, Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa160000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'ortho_trait_union',
  'Le trait d''union : règles et emplois',
  'Difficile',
  'reponse_courte',
  'Réécrivez correctement la forme interrogative suivante en utilisant l''inversion du sujet : « Elle a compris la leçon. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["A-t-elle compris la leçon ?","A-t-elle compris la leçon?"]}'::jsonb,
  'L''inversion du sujet avec un pronom féminin « elle » après un verbe terminé par une voyelle nécessite un « t » euphonique encadré de traits d''union : « A-t-elle ». Cette construction est un point de grammaire essentiel au CRPE, relevant de l''étude de la langue au cycle 3 selon les programmes d''Éduscol.',
  'L''élève omet le « t » euphonique (« A-elle »), utilise une apostrophe au lieu d''un trait d''union (« A-t''elle »), ou oublie les traits d''union autour du « t ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
