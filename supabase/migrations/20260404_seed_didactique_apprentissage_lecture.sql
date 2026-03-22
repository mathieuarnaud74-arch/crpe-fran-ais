-- ============================================================
-- Migration : Didactique de l'apprentissage de la lecture
-- 1 série × 10 questions
-- UUID prefix : d501
-- ============================================================


-- ************************************************************
-- SÉRIE : Didactique de l'apprentissage de la lecture au cycle 2
-- topic_key = didactique_apprentissage_lecture
-- ************************************************************

-- Q1 — Facile — qcm — Conscience phonologique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Facile',
  'qcm',
  'Qu''est-ce que la conscience phonologique dans le cadre de l''apprentissage de la lecture au cycle 2 ?',
  NULL,
  '[{"id":"a","label":"La capacité à reconnaître visuellement les lettres de l''alphabet"},{"id":"b","label":"La capacité à identifier et manipuler les unités sonores de la langue (syllabes, phonèmes)"},{"id":"c","label":"La compréhension du sens global d''un texte lu à haute voix"},{"id":"d","label":"La capacité à écrire correctement les mots les plus fréquents"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La conscience phonologique désigne la capacité à percevoir, découper et manipuler les unités sonores du langage : syllabes, rimes et phonèmes. Les programmes 2020 insistent sur son rôle de prérequis fondamental pour l''apprentissage du décodage. Un élève qui ne parvient pas à segmenter le mot « chat » en /ʃ/ et /a/ ne pourra pas établir les correspondances graphèmes-phonèmes nécessaires à la lecture. Les activités de conscience phonologique doivent être menées dès la GS et intensifiées au CP.',
  'Les candidats confondent souvent conscience phonologique (manipulation des sons) et conscience phonémique (sous-ensemble portant spécifiquement sur les phonèmes). La conscience phonologique est le terme englobant qui inclut aussi la conscience syllabique.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Méthode syllabique pure
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : les programmes officiels de 2020 imposent exclusivement la méthode syllabique pour l''apprentissage de la lecture au CP.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les programmes 2020 ne prescrivent pas une méthode unique mais insistent sur le caractère systématique et explicite de l''enseignement du code alphabétique. Ils recommandent une entrée graphémique (partir des graphèmes vers les phonèmes) et un apprentissage régulier des correspondances graphèmes-phonèmes, sans pour autant exclure le travail sur la compréhension dès le début. La circulaire de 2018 sur la lecture privilégie une approche synthétique mais n''interdit pas les démarches intégratives qui articulent décodage et compréhension.',
  'Beaucoup de candidats pensent que les instructions officielles imposent une méthode syllabique « pure » excluant toute approche globale. En réalité, les textes officiels demandent un enseignement explicite et systématique du code, ce qui est différent d''une prescription méthodologique unique.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Décodage et fluence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Intermediaire',
  'qcm',
  'La fluence en lecture se définit comme la capacité à lire un texte avec :',
  NULL,
  '[{"id":"a","label":"Rapidité uniquement, sans tenir compte de la prosodie"},{"id":"b","label":"Exactitude, rapidité et expressivité (prosodie) appropriées"},{"id":"c","label":"Une compréhension parfaite de chaque mot du texte"},{"id":"d","label":"Une voix forte et audible pour l''ensemble de la classe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La fluence en lecture est définie par trois composantes indissociables : l''exactitude (lire les mots sans erreur), la vitesse ou automaticité (lire à un rythme suffisant) et la prosodie (respecter la ponctuation, les groupes de souffle, l''intonation). Les évaluations nationales mesurent la fluence en MCLM (mots correctement lus par minute). Selon les repères Éduscol, un élève de fin de CE1 devrait lire environ 70 MCLM. L''automatisation du décodage libère des ressources cognitives pour la compréhension.',
  'Les candidats réduisent souvent la fluence à la seule vitesse de lecture. Or, un élève qui lit vite mais sans respecter la ponctuation ni la prosodie n''est pas fluent au sens des programmes. La composante prosodique est un indicateur de compréhension en cours de lecture.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — vrai_faux — Compréhension et décodage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : l''enseignement de la compréhension de texte ne doit commencer qu''une fois le décodage parfaitement automatisé chez l''élève.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les programmes 2020 et les recommandations Éduscol insistent sur le fait que décodage et compréhension doivent être travaillés conjointement dès le début du CP. La compréhension s''enseigne d''abord sur des textes lus par l''enseignant (compréhension orale), puis progressivement sur des textes que l''élève décode lui-même. Attendre une automatisation complète du décodage pour enseigner la compréhension serait une erreur didactique majeure qui priverait les élèves d''un enseignement explicite des stratégies de compréhension pendant une période cruciale.',
  'L''idée qu''il faut « d''abord savoir décoder, puis comprendre » est une conception erronée fréquente. Le modèle simple de la lecture (Gough & Tunmer, 1986) montre que la compréhension en lecture résulte du produit du décodage ET de la compréhension orale : les deux s''enseignent en parallèle.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — qcm — Correspondances graphèmes-phonèmes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Facile',
  'qcm',
  'Dans l''enseignement de la lecture au CP, que signifie une « entrée graphémique » ?',
  NULL,
  '[{"id":"a","label":"Partir des sons (phonèmes) pour trouver les lettres correspondantes"},{"id":"b","label":"Partir des lettres ou groupes de lettres (graphèmes) pour enseigner les sons qu''ils produisent"},{"id":"c","label":"Enseigner l''écriture cursive avant la lecture"},{"id":"d","label":"Présenter les textes de littérature avant les exercices de décodage"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''entrée graphémique consiste à partir des graphèmes (lettres ou groupes de lettres : a, ou, an, tion...) pour enseigner les phonèmes correspondants. Cette approche est préconisée par le guide « Pour enseigner la lecture et l''écriture au CP » (2018). Elle se distingue de l''entrée phonémique qui part des sons pour chercher leurs graphies. L''entrée graphémique est jugée plus efficace car elle correspond au sens de l''activité de lecture : l''élève voit des graphèmes et doit les convertir en sons.',
  'Les candidats confondent souvent entrée graphémique et entrée phonémique. L''entrée phonémique (« j''entends /o/, comment l''écrire ? ») relève davantage de l''encodage, tandis que l''entrée graphémique (« je vois OU, ça fait /u/ ») est propre à l''activité de décodage.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Différenciation en lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Intermediaire',
  'qcm',
  'Pour un élève de CE1 qui décode encore lentement, quel dispositif de différenciation est le plus pertinent selon les recommandations Éduscol ?',
  NULL,
  '[{"id":"a","label":"Lui proposer exclusivement des textes courts sans illustration"},{"id":"b","label":"Le dispenser de lecture à haute voix pour ne pas le mettre en difficulté"},{"id":"c","label":"Renforcer l''entraînement au décodage avec des séances quotidiennes ciblées sur les correspondances graphèmes-phonèmes non maîtrisées"},{"id":"d","label":"Attendre la fin du CE1 pour intervenir, car chaque élève a son propre rythme"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Éduscol recommande une intervention précoce et ciblée pour les élèves en difficulté de décodage. Les séances quotidiennes d''entraînement intensif sur les CGP (correspondances graphèmes-phonèmes) non maîtrisées permettent de combler les lacunes avant qu''elles ne se creusent. Le guide orange (2018) insiste sur le fait que le décodage est une compétence qui s''automatise par la pratique répétée et structurée. L''étayage de l''enseignant dans la zone proximale de développement est essentiel : ni trop facile, ni trop difficile.',
  'Attendre que l''élève « mûrisse » ou « rattrape son retard naturellement » est une erreur fréquente. La recherche montre que sans intervention explicite et précoce, l''écart se creuse (effet Matthieu) : les bons lecteurs lisent plus, progressent plus vite, tandis que les faibles lecteurs évitent la lecture et stagnent.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Avancé — qcm — Évaluation formative en lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Avancé',
  'qcm',
  'Un enseignant observe qu''un élève de CP lit « le chien mange sa pâtée » en substituant « nourriture » à « pâtée ». Quelle analyse didactique peut-on faire de cette erreur ?',
  NULL,
  '[{"id":"a","label":"L''élève ne connaît pas le mot « pâtée » et il faut enrichir son lexique"},{"id":"b","label":"L''élève s''appuie excessivement sur le contexte sémantique au détriment du décodage graphophonologique"},{"id":"c","label":"L''élève a un trouble visuel qui l''empêche de distinguer les lettres"},{"id":"d","label":"L''élève a une bonne stratégie de lecture car il comprend le sens global"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Cette substitution sémantique (remplacer un mot par un synonyme contextuel) révèle que l''élève mobilise une stratégie de devinette appuyée sur le sens, sans recourir au décodage graphophonologique. C''est un signal d''alerte classique : l''élève « devine » au lieu de « décoder ». Le guide « Pour enseigner la lecture et l''écriture au CP » met en garde contre les pratiques qui encouragent cette stratégie (par exemple, trop s''appuyer sur les illustrations ou le contexte). L''enseignant doit réorienter l''élève vers le décodage systématique.',
  'Certains candidats considèrent cette substitution comme positive car l''élève « comprend le sens ». En réalité, cette stratégie de devinette est un obstacle à l''apprentissage de la lecture : elle ne permet pas de lire des mots nouveaux et conduit à des erreurs de plus en plus graves face à des textes complexes.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — vrai_faux — Encodage et apprentissage de la lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Avancé',
  'vrai_faux',
  'Vrai ou faux : selon les recherches en didactique, les activités d''encodage (écriture) renforcent l''apprentissage du décodage (lecture) chez les élèves de CP.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Les recherches convergent pour montrer que lecture et écriture sont des apprentissages qui se renforcent mutuellement. L''encodage oblige l''élève à segmenter le mot en phonèmes et à retrouver les graphèmes correspondants, ce qui consolide les correspondances graphèmes-phonèmes travaillées en lecture. Le guide « Pour enseigner la lecture et l''écriture au CP » recommande explicitement de coupler les activités de décodage et d''encodage dès les premières semaines du CP. L''écriture tâtonnée (ou essais d''écriture) et la dictée sont des activités d''encodage particulièrement efficaces.',
  'Des candidats pensent que l''écriture et la lecture sont des compétences indépendantes qui relèvent de séances distinctes. En réalité, l''encodage est un puissant levier pour le décodage car il mobilise les mêmes correspondances graphèmes-phonèmes dans le sens inverse.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — vrai_faux — Lecture à haute voix au CE2
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la lecture à haute voix est un exercice utile uniquement pour les élèves de CP et ne présente plus d''intérêt didactique au CE2.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'La lecture à haute voix conserve un intérêt didactique majeur tout au long du cycle 2 et au-delà. Au CE2, elle permet de travailler la fluence (automaticité, prosodie), de développer l''aisance face à un public et de consolider le lien entre lecture et compréhension. Les programmes 2020 incluent la lecture à voix haute comme un attendu de fin de cycle 2 : « lire à voix haute avec fluidité, après préparation, un texte d''une demi-page ». Les activités de lecture théâtralisée, de lecture chorale ou de lecture préparée sont autant de dispositifs pertinents au CE2.',
  'L''idée que la lecture à haute voix est réservée aux débutants est une conception erronée. Au CE2, elle sert d''outil d''évaluation de la fluence, de support à la compréhension fine et de préparation à l''oral, compétence transversale des programmes.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — qcm — Enseignement explicite de la compréhension
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'didactique_apprentissage_lecture',
  'Didactique de l''apprentissage de la lecture au cycle 2',
  'Avancé',
  'qcm',
  'Dans le cadre de l''enseignement explicite de la compréhension au cycle 2, que désigne la stratégie de « lecture inférentielle » ?',
  NULL,
  '[{"id":"a","label":"Lire un texte en identifiant uniquement les informations explicitement présentes"},{"id":"b","label":"Déduire des informations implicites en croisant les indices du texte avec ses connaissances personnelles"},{"id":"c","label":"Lire un texte en sautant les mots inconnus pour maintenir la fluidité"},{"id":"d","label":"Relire plusieurs fois le même passage pour le mémoriser"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La lecture inférentielle est une stratégie de compréhension qui consiste à construire du sens en combinant les informations explicites du texte avec les connaissances antérieures du lecteur. Par exemple, si un texte dit « Marie prend son parapluie avant de sortir », le lecteur infère qu''il pleut ou qu''il va pleuvoir. Les programmes 2020 et les ressources Éduscol insistent sur l''enseignement explicite de cette stratégie dès le cycle 2, car les inférences ne s''automatisent pas spontanément. L''enseignant doit modéliser le raisonnement inférentiel à voix haute (think-aloud) puis guider progressivement les élèves vers l''autonomie.',
  'Les candidats confondent parfois inférence et hypothèse de lecture. L''inférence s''appuie sur des indices textuels précis et des connaissances encyclopédiques ; elle n''est pas une simple « devinette » mais un raisonnement logique qui peut être vérifié et justifié.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
