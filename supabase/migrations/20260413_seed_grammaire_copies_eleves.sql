-- ============================================================
-- Migration : 10 exercices — Analyser et corriger des copies d'élèves
-- Série : Analyse de copies d'élèves : erreurs grammaticales
-- Sous-domaine : grammaire | topic_key : grammaire_copies_eleves
-- UUID prefix : e1060000
-- Types : 4 correction_orthographique, 3 qcm, 3 tri_categories
-- Niveaux : Intermediaire (5), Avancé (5)
-- ============================================================

-- ============================================================
-- CORRECTION ORTHOGRAPHIQUE (4 exercices)
-- ============================================================

-- Q1 — Intermediaire — Copie CE2 : accord sujet-verbe avec sujet inversé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Intermediaire',
  'correction_orthographique',
  'Voici un extrait de copie d''un élève de CE2. Corrigez le mot en gras (entre astérisques) en écrivant la forme correcte.',
  'Texte d''élève (CE2, production écrite sur les vacances) : « Pendant les vacances, je suis allé chez ma mamie. Dans le jardin *pousse* de jolies fleurs. On a fait un bouquet pour maman. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["poussent"]}'::jsonb,
  'L''élève a écrit « pousse » au singulier car le verbe est placé avant le sujet « de jolies fleurs » (sujet inversé). Quand le sujet est postposé, le verbe doit quand même s''accorder avec lui : « poussent » (3e personne du pluriel). C''est une erreur typique liée à l''inversion sujet-verbe, fréquente en CE2.',
  'Au CRPE, on attend du candidat qu''il identifie la cause de l''erreur (inversion du sujet) et non qu''il se contente de corriger. L''analyse didactique de l''erreur est essentielle : l''élève applique la stratégie « le verbe s''accorde avec le mot qui le précède », qui ne fonctionne pas avec un sujet inversé.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — Copie CM1 : confusion être/avoir au passé composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Intermediaire',
  'correction_orthographique',
  'Un élève de CM1 a écrit ce texte. Corrigez le mot en gras (entre astérisques) en écrivant la forme correcte.',
  'Texte d''élève (CM1, récit d''aventure) : « Le héros a monté sur la montagne. Il *a tombé* dans un trou. Heureusement, ses amis l''ont retrouvé. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["est tombé"]}'::jsonb,
  'Le verbe « tomber » se conjugue avec l''auxiliaire « être » au passé composé (comme tous les verbes de mouvement ou de changement d''état : aller, venir, partir, naître, mourir, tomber...). L''élève a surgénéralisé l''emploi de l''auxiliaire « avoir ». La forme correcte est « est tombé ».',
  'Les candidats CRPE doivent maîtriser la liste des verbes se conjuguant avec « être » au passé composé. L''erreur de l''élève révèle une surgénéralisation fréquente en CM1 : l''auxiliaire « avoir » étant plus courant, les élèves l''appliquent à tous les verbes.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Avancé — Copie CM2 : accord du participe passé avec COD antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Avance',
  'correction_orthographique',
  'Voici un extrait de copie d''un élève de CM2. Corrigez le mot en gras (entre astérisques) en écrivant la forme correcte.',
  'Texte d''élève (CM2, compte rendu de lecture) : « J''ai lu une histoire passionnante. Les aventures que j''ai *lu* étaient incroyables. Le personnage principal est très courageux. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["lues"]}'::jsonb,
  'Le participe passé « lu » est employé avec l''auxiliaire « avoir ». Le COD « que » (pronom relatif reprenant « les aventures », féminin pluriel) est placé avant le verbe. Selon la règle d''accord du participe passé avec « avoir », le participe s''accorde avec le COD antéposé : « lues » (féminin pluriel).',
  'L''accord du participe passé avec le COD antéposé est l''un des points de grammaire les plus évalués au CRPE. Le candidat doit savoir expliquer la règle ET analyser pourquoi l''élève ne l''applique pas : en CM2, la règle du COD antéposé n''est souvent pas encore automatisée.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Avancé — Copie CM2 : confusion homophone leur/leurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Avance',
  'correction_orthographique',
  'Un élève de CM2 a rédigé ce texte. Corrigez le mot en gras (entre astérisques) en écrivant la forme correcte.',
  'Texte d''élève (CM2, lettre au directeur) : « Cher directeur, les élèves de CM2 voudraient organiser une fête. On *leurs* a demandé de préparer des gâteaux. Tout le monde est motivé. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["leur"]}'::jsonb,
  'Ici, « leur » est un pronom personnel COI (on a demandé à eux). En tant que pronom, « leur » est invariable et ne prend jamais de -s. L''élève a confondu avec le déterminant possessif « leurs » (ex. : « leurs gâteaux ») qui, lui, s''accorde en nombre avec le nom qu''il détermine.',
  'La distinction pronom « leur » (invariable) / déterminant « leurs » (variable) est un classique du CRPE. Le test : si on peut remplacer par « lui » (singulier), c''est le pronom invariable. « On lui a demandé » fonctionne → « leur » sans -s.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- QCM — Analyse didactique de l'erreur (3 exercices)
-- ============================================================

-- Q5 — Intermediaire — QCM : identifier la nature de l'erreur (accord dans le GN)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Intermediaire',
  'qcm',
  'Lisez cet extrait de copie d''élève et identifiez la nature exacte de l''erreur grammaticale commise.',
  'Texte d''élève (CE2, description d''un animal) : « Mon chat a des grand yeux vert. Il est très beau. Il aime dormir sur le canapé. » — L''erreur se trouve dans la première phrase.',
  '[{"id":"a","label":"Erreur de conjugaison : le verbe « a » devrait être « est »"},{"id":"b","label":"Erreur d''accord dans le GN : les adjectifs épithètes ne sont pas accordés en nombre et en genre avec le nom « yeux »"},{"id":"c","label":"Erreur de déterminant : « des » devrait être « les »"},{"id":"d","label":"Erreur de syntaxe : l''ordre des mots dans le GN est incorrect"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''erreur est un défaut d''accord dans le groupe nominal. Le nom noyau « yeux » est masculin pluriel. Les adjectifs épithètes « grand » et « vert » doivent s''accorder : « grands yeux verts ». L''élève n''a pas marqué le pluriel sur les adjectifs, ce qui est une erreur fréquente en CE2 quand plusieurs adjectifs encadrent le nom.',
  'Au CRPE, il ne suffit pas de repérer l''erreur : il faut la catégoriser précisément (accord en genre, accord en nombre, accord dans le GN vs. accord sujet-verbe). Ici, il s''agit spécifiquement d''un accord en nombre des adjectifs épithètes au sein du GN.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Avancé — QCM : analyser la cause d'une erreur de temps verbal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Avance',
  'qcm',
  'Analysez l''erreur grammaticale dans cette copie d''élève. Quelle est l''explication didactique la plus pertinente ?',
  'Texte d''élève (CM1, récit au passé) : « Il était une fois un roi qui vivait dans un château. Un jour, un dragon arriva et le roi a peur. Il appela ses chevaliers. » — L''erreur est « a peur » dans la troisième phrase.',
  '[{"id":"a","label":"L''élève ne connaît pas la conjugaison du verbe « avoir » au passé simple"},{"id":"b","label":"L''élève confond le présent de narration avec le passé simple dans un récit au passé"},{"id":"c","label":"L''élève a opéré une rupture temporelle involontaire : il est passé du système du passé (passé simple) au système du présent (présent de l''indicatif)"},{"id":"d","label":"L''élève a correctement utilisé le présent pour exprimer une émotion, ce n''est pas une erreur"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''élève a quitté le système temporel du récit au passé (imparfait « vivait » / passé simple « arriva », « appela ») pour passer au présent « a peur ». C''est une rupture temporelle involontaire, très fréquente en CM1. L''élève aurait dû écrire « eut peur » (passé simple). Cette erreur révèle une difficulté à maintenir la cohérence du système des temps dans un récit long.',
  'Le candidat CRPE doit distinguer la rupture temporelle involontaire (erreur) du présent de narration volontaire (choix stylistique). En CM1, il s''agit quasi systématiquement d''une rupture involontaire, car les élèves ne maîtrisent pas encore le passé simple de « avoir » (eut).',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM : identifier une erreur de segmentation syntaxique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Intermediaire',
  'qcm',
  'Lisez cette copie d''élève et identifiez quelle erreur grammaticale a été commise.',
  'Texte d''élève (CM1, résumé de film) : « Le héros il part en voyage. Il rencontre une fille elle est très courageuse. Ensemble ils sauvent le monde. » — Concentrez-vous sur la structure des deux premières phrases.',
  '[{"id":"a","label":"Erreur de ponctuation uniquement : il manque des virgules"},{"id":"b","label":"Redoublement du sujet par un pronom : « Le héros il » et « une fille elle » — l''élève dédouble le sujet par calque de l''oral"},{"id":"c","label":"Erreur de conjugaison : « part » et « est » sont mal conjugués"},{"id":"d","label":"Erreur de vocabulaire : les mots employés sont incorrects"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''élève redouble le sujet nominal par un pronom personnel : « Le héros il part » au lieu de « Le héros part ». C''est un calque de la syntaxe orale (dislocation à gauche). De même, « une fille elle est » devrait être « une fille qui est » (avec un pronom relatif) ou une nouvelle phrase. Ce phénomène est un marqueur classique du passage oral-écrit en cycle 3.',
  'Au CRPE, le redoublement du sujet est un phénomène linguistique important en didactique. Il ne s''agit pas d''une simple erreur de ponctuation mais d''une interférence oral/écrit. Le candidat doit identifier le mécanisme (dislocation) et proposer des remédiations adaptées.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- TRI PAR CATÉGORIES (3 exercices)
-- ============================================================

-- Q8 — Intermediaire — Tri : classer les mots soulignés par nature grammaticale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Intermediaire',
  'tri_categories',
  'Dans ce texte d''élève, classez chaque mot souligné selon sa nature grammaticale (classe de mots).',
  'Texte d''élève (CE2, description de sa chambre) : « Ma chambre est grande. J''ai un lit bleu et une armoire. Dessus, je mets mes livres préférés. Ils sont très beaux. »',
  '[{"id":"w1","label":"grande"},{"id":"w2","label":"bleu"},{"id":"w3","label":"une"},{"id":"w4","label":"mes"},{"id":"w5","label":"préférés"},{"id":"w6","label":"très"},{"id":"w7","label":"Ils"},{"id":"w8","label":"beaux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"adj","label":"Adjectif qualificatif"},{"id":"det","label":"Déterminant"},{"id":"adv","label":"Adverbe"},{"id":"pron","label":"Pronom"}],"mapping":{"w1":"adj","w2":"adj","w3":"det","w4":"det","w5":"adj","w6":"adv","w7":"pron","w8":"adj"}}'::jsonb,
  'Les adjectifs qualificatifs sont « grande » (attribut du sujet), « bleu » (épithète), « préférés » (épithète) et « beaux » (attribut). Les déterminants sont « une » (article indéfini) et « mes » (déterminant possessif). « Très » est un adverbe de degré qui modifie l''adjectif « beaux ». « Ils » est un pronom personnel sujet reprenant « mes livres ».',
  'Confondre la nature (classe grammaticale) et la fonction est l''erreur la plus fréquente au CRPE. « Grande » est un adjectif (nature) qui a la fonction d''attribut du sujet. La nature ne change jamais ; la fonction dépend du contexte.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — Tri : classer par fonction syntaxique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Avance',
  'tri_categories',
  'Voici une copie d''élève de CM2. Classez chaque groupe de mots souligné selon sa fonction syntaxique dans la phrase.',
  'Texte d''élève (CM2, récit d''aventure) : « Le courageux explorateur découvrit une grotte mystérieuse dans la montagne. Il donna sa lampe à son compagnon fidèle. Avec prudence, ils avancèrent dans l''obscurité. »',
  '[{"id":"g1","label":"une grotte mystérieuse"},{"id":"g2","label":"dans la montagne"},{"id":"g3","label":"sa lampe"},{"id":"g4","label":"à son compagnon fidèle"},{"id":"g5","label":"Avec prudence"},{"id":"g6","label":"dans l''obscurité"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cod","label":"COD"},{"id":"coi","label":"COI"},{"id":"cc_lieu","label":"CC de lieu"},{"id":"cc_maniere","label":"CC de manière"}],"mapping":{"g1":"cod","g2":"cc_lieu","g3":"cod","g4":"coi","g5":"cc_maniere","g6":"cc_lieu"}}'::jsonb,
  '« Une grotte mystérieuse » est COD de « découvrit » (découvrir quelque chose). « Dans la montagne » et « dans l''obscurité » sont des CC de lieu (où ?), déplaçables et supprimables. « Sa lampe » est COD de « donna » (donner quelque chose). « À son compagnon fidèle » est COI de « donna » (donner à quelqu''un). « Avec prudence » est CC de manière (comment ?).',
  'Confondre COI et CC est un piège classique. Le COI est un complément essentiel du verbe (« donner à quelqu''un » — on ne peut pas supprimer « à son compagnon » sans altérer la construction du verbe). Le CC est un complément de phrase, déplaçable et supprimable.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — Tri : classer les erreurs par type
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e1060000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'grammaire_copies_eleves',
  'Analyse de copies d''élèves : erreurs grammaticales',
  'Intermediaire',
  'tri_categories',
  'Ce texte d''élève contient plusieurs erreurs. Classez chaque erreur soulignée selon son type grammatical.',
  'Texte d''élève (CM1, texte libre) : « Les oiseaux chante dans les arbres. Ma sœur et moi allons au parc. Les belle fleurs rouge pousse partout. On mangent notre pique-nique. » — Les erreurs sont : (1) « chante », (2) « belle », (3) « rouge », (4) « pousse », (5) « mangent ».',
  '[{"id":"e1","label":"chante (au lieu de chantent)"},{"id":"e2","label":"belle (au lieu de belles)"},{"id":"e3","label":"rouge (au lieu de rouges)"},{"id":"e4","label":"pousse (au lieu de poussent)"},{"id":"e5","label":"mangent (au lieu de mange)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"accord_sv","label":"Erreur d''accord sujet-verbe"},{"id":"accord_gn","label":"Erreur d''accord dans le GN"}],"mapping":{"e1":"accord_sv","e2":"accord_gn","e3":"accord_gn","e4":"accord_sv","e5":"accord_sv"}}'::jsonb,
  'Les erreurs d''accord sujet-verbe sont : « chante » (sujet « Les oiseaux » = 3e pers. pluriel), « pousse » (sujet « Les belles fleurs rouges » = 3e pers. pluriel), et « mangent » (sujet « On » = toujours 3e pers. singulier, même s''il désigne un groupe). Les erreurs d''accord dans le GN sont : « belle » et « rouge » qui devraient porter la marque du pluriel pour s''accorder avec « fleurs ».',
  'Le cas de « on mangent » est particulièrement piégeux. « On » est toujours sujet de la 3e personne du singulier, même quand il signifie « nous ». C''est l''une des sources d''erreur les plus fréquentes chez les élèves ET chez les candidats au CRPE.',
  'valide',
  'CRPE Français — Grammaire interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
