-- Série : Méthodes d'apprentissage de la lecture
-- Subdomain : didactique_francais | topic_key : did_methodes_lecture
-- 10 questions | UUIDs : 15c20000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'qcm',
  'Quelle approche repose sur l''apprentissage systématique des correspondances graphème-phonème avant de lire des mots entiers ?',
  NULL,
  '[{"id":"a","label":"La méthode globale"},{"id":"b","label":"La méthode syllabique (ou phonique)"},{"id":"c","label":"La méthode idéovisuelle"},{"id":"d","label":"La méthode naturelle de Freinet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La méthode syllabique (ou phonique) part des unités les plus petites : lettres → phonèmes → syllabes → mots → phrases. Elle repose sur l''apprentissage explicite et systématique du code graphophonologique (correspondances graphème-phonème). Cette démarche est dite « synthétique » car elle va du simple vers le complexe.',
  'Confondre méthode syllabique et méthode globale. La méthode globale part au contraire de mots ou de phrases entiers reconnus visuellement, sans décodage explicite du code.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'qcm',
  'Quel chercheur a conduit en 2016 une étude de grande envergure sur l''enseignement de la lecture en CP en France ?',
  NULL,
  '[{"id":"a","label":"Jean Foucambert"},{"id":"b","label":"Roland Goigoux"},{"id":"c","label":"Jocelyne Giasson"},{"id":"d","label":"André Ouzoulias"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le rapport Goigoux (2016) — « Lire et Écrire » — est une étude longitudinale nationale portant sur 2 507 élèves de CP dans 131 classes. Il conclut que les pratiques les plus efficaces combinent un enseignement explicite et systématique du code (phonologie) avec des activités de compréhension et de production d''écrits. Goigoux dirige le laboratoire ACTé (Université Clermont Auvergne).',
  'Attribuer ce rapport à Foucambert (militant du tout-idéovisuel) ou à Giasson (chercheuse québécoise spécialiste de la compréhension). Ces auteurs sont importants en didactique du français, mais ne sont pas à l''origine du rapport 2016.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La conscience phonologique désigne la capacité à manipuler les unités sonores de la langue (syllabes, rimes, phonèmes) indépendamment du sens.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'La conscience phonologique est la capacité à identifier et à manipuler les unités sonores du langage oral : syllabes (ba-teau), rimes (chapeau / gâteau), phonèmes (/b/, /a/, /t/, /o/). Elle est distincte de la conscience graphophonologique (qui implique la connaissance des lettres). Elle constitue un prédicteur fort de l''apprentissage de la lecture et peut être travaillée en maternelle avant l''entrée dans l''écrit.',
  'Confondre conscience phonologique et conscience phonémique. La conscience phonémique est une composante plus fine de la conscience phonologique, portant spécifiquement sur la manipulation des phonèmes (unités les plus petites).',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'qcm',
  'Dans le modèle à deux voies (Coltheart), quelle voie est utilisée pour lire un mot régulier inconnu comme « flurbeau » ?',
  NULL,
  '[{"id":"a","label":"La voie lexicale (ou directe)"},{"id":"b","label":"La voie sublexicale (ou phonologique, ou indirecte)"},{"id":"c","label":"Les deux voies simultanément"},{"id":"d","label":"Aucune voie, le mot est illisible"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le modèle à deux voies (Coltheart, 1978) distingue : (1) la voie lexicale (directe) — reconnaissance globale du mot à partir du lexique orthographique interne (réservée aux mots connus) ; (2) la voie sublexicale (phonologique, indirecte) — conversion graphème-phonème, applicable à tout mot, y compris les mots nouveaux ou inventés. Un pseudo-mot comme « flurbeau » n''est pas dans le lexique, donc seule la voie sublexicale peut le lire.',
  'Croire que les deux voies fonctionnent toujours en parallèle. La voie lexicale est réservée aux mots stockés dans le lexique mental. Pour un mot inconnu ou inventé, seule la voie sublexicale fonctionne.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'qcm',
  'Quel terme désigne la capacité à reconnaître des mots écrits de façon rapide, précise et automatisée ?',
  NULL,
  '[{"id":"a","label":"La fluence"},{"id":"b","label":"La compréhension"},{"id":"c","label":"L''identification des mots écrits (IME)"},{"id":"d","label":"La métacognition"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''identification des mots écrits (IME) désigne la capacité à reconnaître avec précision et automaticité les mots écrits, qu''on passe par la voie lexicale ou sublexicale. C''est la compétence de bas niveau indispensable pour libérer les ressources cognitives vers la compréhension. La fluence (fluidité de lecture orale) est un indicateur indirect de l''IME, mais ce n''est pas la même chose.',
  'Confondre IME et fluence. La fluence est une mesure comportementale (nombre de mots lus correctement par minute) qui rend compte de l''automaticité de l''IME, mais l''IME désigne le processus cognitif sous-jacent.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Le rapport Goigoux (2016) conclut que la méthode purement globale est aussi efficace que la méthode syllabique pour apprendre à lire.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Le rapport Goigoux (2016) conclut au contraire que les pratiques incluant un enseignement explicite, systématique et précoce du code graphophonologique (phonologie, correspondances graphème-phonème) sont associées aux meilleurs résultats en lecture-écriture en fin de CP. La méthode purement globale, qui ne fait pas travailler le code explicitement, n''est pas soutenue par les données. Le consensus scientifique actuel recommande un enseignement du code systématique et précoce.',
  'Croire que toutes les méthodes se valent ou que la méthode globale est adaptée à certains élèves. Le rapport n''invalide pas l''importance de la compréhension, mais souligne que le décodage explicite est non négociable au CP.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'qcm',
  'Selon le « simple view of reading » (Hoover & Gough, 1990), la compréhension en lecture est le produit de :',
  NULL,
  '[{"id":"a","label":"La vitesse de lecture × la mémoire de travail"},{"id":"b","label":"L''identification des mots écrits × la compréhension orale"},{"id":"c","label":"La conscience phonologique × le vocabulaire"},{"id":"d","label":"Le décodage × la fluence"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le modèle « simple view of reading » (SVR, Hoover & Gough, 1990) formule : Compréhension en lecture (C) = Identification des mots écrits (D) × Compréhension orale (L). Le signe × signifie que si l''un des deux composants est nul, la compréhension est nulle. Ce modèle permet de diagnostiquer les difficultés : un enfant peut être bon décodeur mais avoir des difficultés en compréhension orale (et inversement). Il est fondamental pour le CRPE.',
  'Croire que la fluence ou la vitesse de lecture est un composant direct du modèle. La fluence est un indicateur de l''automaticité du décodage, mais le SVR ne la mentionne pas explicitement comme composant du produit.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'reponse_courte',
  'Quel terme désigne la démarche pédagogique qui part de textes porteurs de sens (albums, poèmes) pour en extraire les correspondances graphème-phonème, mêlant ainsi approche globale et travail du code ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["méthode mixte","méthode semi-globale","approche mixte","méthode mixte ou semi-globale"]}'::jsonb,
  'La méthode mixte (ou semi-globale) combine les deux approches : elle part de textes entiers porteurs de sens (comme la méthode globale) mais en extrait systématiquement des éléments du code graphophonologique à étudier (comme la méthode syllabique). Elle cherche à articuler motivation par le sens et maîtrise du code. La plupart des manuels de CP actuels adoptent cette approche.',
  'Répondre « méthode analytique ». L''analytique va du tout (texte/mot) vers les parties (syllabes/phonèmes), ce qui recouvre la méthode mixte, mais le terme usuel dans les programmes et concours est « méthode mixte » ou « semi-globale ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'qcm',
  'Quel type de difficulté en lecture est caractérisé par des troubles persistants du décodage malgré un enseignement adapté et une intelligence normale ?',
  NULL,
  '[{"id":"a","label":"La dysphasie"},{"id":"b","label":"La dyslexie développementale"},{"id":"c","label":"La dysorthographie"},{"id":"d","label":"La dyscalculie"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La dyslexie développementale est un trouble spécifique et persistant de l''apprentissage de la lecture, d''origine neurobiologique, qui se manifeste par des difficultés dans la précision et/ou la fluidité de la reconnaissance des mots écrits, malgré un enseignement de qualité et une intelligence dans la norme. Elle touche le traitement phonologique (voie sublexicale). La dyslexie n''est PAS un retard d''apprentissage ordinaire.',
  'Confondre dyslexie et dysorthographie. La dysorthographie est un trouble spécifique de l''écriture (orthographe), souvent associée à la dyslexie, mais distincte. La dysphasie est un trouble du langage oral.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '15c20000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'did_methodes_lecture',
  'Méthodes d''apprentissage de la lecture',
  'Standard',
  'qcm',
  'Selon les programmes Éduscol (cycles 2 et 3), quel est l''objectif principal de l''enseignement de la lecture au cycle 2 ?',
  NULL,
  '[{"id":"a","label":"Lire couramment des textes littéraires de façon expressive"},{"id":"b","label":"Acquérir le principe alphabétique et automatiser l''identification des mots écrits"},{"id":"c","label":"Développer l''esprit critique face aux textes informatifs"},{"id":"d","label":"Mémoriser le vocabulaire des textes patrimoniaux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Au cycle 2 (CP-CE1-CE2), l''objectif central est l''acquisition du principe alphabétique — comprendre que les lettres ou groupes de lettres codent des sons — et l''automatisation de l''identification des mots écrits (reconnaissance rapide et précise). Cette automatisation est indispensable pour libérer les ressources cognitives vers la compréhension. La lecture expressive, l''esprit critique et les textes patrimoniaux sont des objectifs de cycle 3.',
  'Croire que la compréhension de textes complexes est l''objectif central du cycle 2. La compréhension est bien visée dès le cycle 2, mais elle repose sur la maîtrise préalable du décodage automatisé.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
