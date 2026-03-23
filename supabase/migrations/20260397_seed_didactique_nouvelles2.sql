-- ============================================================
-- Migration : 2 nouvelles séries Didactique du français
-- 2 séries × 10 questions = 20 exercices
-- UUID prefix : e501 (oral/langage), e502 (littérature jeunesse)
-- ============================================================


-- ************************************************************
-- SÉRIE 1 : L'enseignement de l'oral et du langage
-- topic_key = didac_oral_langage
-- access_tier = free
-- Mix : 7 qcm, 3 vrai_faux
-- Levels : 3 Facile, 4 Intermediaire, 3 Difficile
-- ************************************************************

-- Q1 — Facile — qcm — Place de l'oral dans les programmes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Facile',
  'qcm',
  'Dans les programmes 2020 du cycle 1, quel domaine d''apprentissage place le langage oral au cœur des priorités ?',
  NULL,
  '[{"id":"a","label":"Explorer le monde"},{"id":"b","label":"Mobiliser le langage dans toutes ses dimensions"},{"id":"c","label":"Agir, s''exprimer, comprendre à travers l''activité physique"},{"id":"d","label":"Construire les premiers outils pour structurer sa pensée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le domaine « Mobiliser le langage dans toutes ses dimensions » est le premier des cinq domaines d''apprentissage du cycle 1 dans les programmes 2020. Il place le langage oral comme priorité absolue de l''école maternelle, considérant que c''est le vecteur principal de tous les autres apprentissages. Éduscol souligne que l''oral est à la fois un objet et un outil d''apprentissage dès la petite section.',
  'Les candidats tendent à sous-estimer la place structurante du langage oral au cycle 1, en le réduisant à une simple compétence transversale plutôt qu''à un domaine d''apprentissage à part entière avec des attendus de fin de cycle explicites.',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Oral pour apprendre vs oral à apprendre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Facile',
  'qcm',
  'Quelle distinction fondamentale les didacticiens (Dolz, Schneuwly) établissent-ils concernant l''enseignement de l''oral ?',
  NULL,
  '[{"id":"a","label":"L''oral spontané et l''oral préparé"},{"id":"b","label":"L''oral pour apprendre et l''oral à apprendre"},{"id":"c","label":"L''oral individuel et l''oral collectif"},{"id":"d","label":"L''oral en situation et l''oral hors contexte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dolz et Schneuwly distinguent « l''oral pour apprendre » (l''oral comme outil au service des apprentissages disciplinaires) et « l''oral à apprendre » (l''oral comme objet d''enseignement avec des compétences spécifiques à travailler). Cette distinction est reprise dans les documents d''accompagnement Éduscol et structure l''enseignement de l''oral aux cycles 2 et 3. Le CRPE attend des candidats qu''ils sachent articuler ces deux dimensions dans une séquence didactique.',
  'Confondre les deux dimensions en pensant que faire parler les élèves suffit à enseigner l''oral. L''oral pour apprendre est nécessaire mais ne garantit pas une progression dans la maîtrise des genres oraux formels (exposé, débat, récitation).',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — vrai_faux — Langage d'évocation en maternelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le langage d''évocation, travaillé en maternelle, consiste à parler d''événements passés ou à venir, absents de la situation immédiate de communication.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le langage d''évocation est effectivement la capacité à parler de ce qui n''est pas présent dans la situation immédiate : raconter un événement passé, anticiper un projet, décrire un objet absent. Les programmes 2020 du cycle 1 insistent sur le passage progressif du langage en situation (ancré dans le « ici et maintenant ») au langage d''évocation, qui exige une décontextualisation et constitue un prédicteur majeur de la réussite scolaire ultérieure.',
  'Réduire le langage d''évocation à la simple narration. Il inclut aussi l''anticipation (parler du futur), l''explication décontextualisée et la description d''un référent absent, compétences que Boisseau identifie comme essentielles pour l''entrée dans l''écrit.',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Étayage et reformulation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Intermediaire',
  'qcm',
  'Selon le concept d''étayage de Bruner, quelle posture l''enseignant adopte-t-il lorsqu''il reformule l''énoncé d''un élève en le complétant syntaxiquement sans le corriger explicitement ?',
  NULL,
  '[{"id":"a","label":"La posture de contrôle"},{"id":"b","label":"La posture d''enrôlement"},{"id":"c","label":"La posture de reformulation modélisante (recast)"},{"id":"d","label":"La posture de contre-étayage"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La reformulation modélisante (ou « recast ») est une des formes d''étayage langagier identifiées dans le prolongement des travaux de Bruner. L''enseignant reprend l''énoncé de l''élève en le reformulant dans une forme syntaxiquement correcte et enrichie, sans demander de répétition explicite. Éduscol recommande cette stratégie comme levier essentiel pour le développement du langage oral, en particulier au cycle 1, car elle offre un modèle linguistique positif dans la zone proximale de développement de l''élève.',
  'Confondre la reformulation modélisante avec une correction explicite. La correction (« Non, on ne dit pas ça, on dit... ») interrompt la communication et peut inhiber la prise de parole, tandis que le recast maintient le flux conversationnel tout en offrant un modèle correct.',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Genres oraux scolaires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Intermediaire',
  'qcm',
  'Quel genre oral scolaire est explicitement mentionné dans les programmes 2020 du cycle 3 comme situation de communication exigeant une préparation et une structuration du discours ?',
  NULL,
  '[{"id":"a","label":"La conversation libre entre pairs"},{"id":"b","label":"L''exposé oral préparé devant la classe"},{"id":"c","label":"Le bavardage en récréation"},{"id":"d","label":"La lecture silencieuse suivie d''un résumé mental"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''exposé oral est un genre oral formel explicitement inscrit dans les programmes 2020 du cycle 3, au même titre que le débat et la récitation. Il suppose une préparation (recherche documentaire, prise de notes, structuration du plan) et une mise en œuvre de compétences spécifiques : parler en continu, utiliser des supports visuels, gérer l''interaction avec l''auditoire. Les ressources Éduscol pour le cycle 3 proposent des grilles d''évaluation critériées pour ce genre oral.',
  'Penser que l''oral scolaire se limite aux échanges spontanés. Les programmes distinguent clairement les genres oraux formels (exposé, débat, récitation, compte-rendu) qui nécessitent un enseignement explicite, des situations d''oral intégré aux activités quotidiennes.',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Évaluation de l'oral
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : selon les recommandations Éduscol, l''évaluation de l''oral doit porter uniquement sur la correction linguistique (syntaxe, vocabulaire, prononciation) des productions des élèves.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''évaluation de l''oral ne se limite pas à la correction linguistique. Les documents Éduscol préconisent une évaluation pluridimensionnelle intégrant des critères communicationnels (audibilité, regard, posture), discursifs (cohérence, structuration du propos), linguistiques (lexique, syntaxe) et interactionnels (écoute, prise en compte de l''interlocuteur). Cette approche globale permet de valoriser les compétences des élèves et de cibler les axes de progrès.',
  'Réduire l''évaluation de l''oral à la seule dimension linguistique, en négligeant les compétences pragmatiques et communicationnelles. Au CRPE, le candidat doit montrer qu''il connaît les différentes dimensions de la compétence orale et peut proposer des critères d''évaluation diversifiés.',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — qcm — Interactions langagières
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Intermediaire',
  'qcm',
  'Dans le cadre du débat réglé au cycle 3, quel rôle pédagogique les interactions entre pairs jouent-elles selon les travaux de Vygotski repris par Éduscol ?',
  NULL,
  '[{"id":"a","label":"Elles permettent uniquement de vérifier la compréhension d''un texte lu"},{"id":"b","label":"Elles créent un conflit socio-cognitif qui favorise la construction de savoirs dans la zone proximale de développement"},{"id":"c","label":"Elles remplacent l''enseignement magistral de la grammaire"},{"id":"d","label":"Elles servent exclusivement à développer les compétences sociales sans lien avec les apprentissages disciplinaires"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les interactions entre pairs, notamment dans le cadre du débat, créent des conflits socio-cognitifs qui poussent chaque élève à confronter son point de vue à celui des autres. Selon Vygotski, c''est dans la zone proximale de développement (ZPD) que l''apprentissage est le plus efficace, et les échanges entre pairs de niveaux légèrement différents y contribuent. Éduscol recommande le débat réglé comme dispositif permettant de travailler simultanément l''argumentation orale et la construction de connaissances.',
  'Considérer les interactions orales entre élèves comme du simple « bavardage » sans valeur didactique. Le candidat doit comprendre que les échanges structurés (débat, discussion à visée philosophique) sont des situations d''apprentissage à part entière, à condition d''être encadrés par des règles et un étayage enseignant.',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — qcm — Progressivité des apprentissages oraux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Difficile',
  'qcm',
  'Comment les programmes 2020 organisent-ils la progressivité de l''enseignement de l''oral entre les cycles 2 et 3 ?',
  NULL,
  '[{"id":"a","label":"Au cycle 2, on travaille exclusivement la récitation ; au cycle 3, on introduit le débat"},{"id":"b","label":"Au cycle 2, les élèves apprennent à écouter et prendre la parole dans un échange ; au cycle 3, ils apprennent à organiser un discours oral long et structuré (exposé, compte-rendu)"},{"id":"c","label":"L''oral n''est pas un objet d''enseignement au cycle 2, il le devient uniquement au cycle 3"},{"id":"d","label":"Les mêmes compétences orales sont attendues aux deux cycles, seul le niveau de langue change"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes 2020 établissent une progressivité claire : au cycle 2, les attendus portent sur l''écoute active, la prise de parole dans un échange (respecter les tours de parole, rester dans le sujet) et la récitation. Au cycle 3, les élèves doivent maîtriser des formes orales plus élaborées : l''exposé préparé, le compte-rendu structuré, le débat argumenté. Cette progressivité va du discours court et dialogique vers le discours long et monologal, conformément aux repères de progression Éduscol.',
  'Penser que la progressivité entre cycles concerne uniquement le volume de parole ou le niveau de vocabulaire. La vraie progression porte sur la complexité des genres oraux (du dialogue simple vers le monologue structuré), le degré de préparation et la capacité à adapter son discours à la situation.',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — qcm — Lien oral-écrit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Difficile',
  'qcm',
  'Selon les recherches en didactique du français (Chabanne, Bucheton), comment le brouillon oral (ou « oral préparatoire à l''écrit ») contribue-t-il à l''amélioration de la production écrite ?',
  NULL,
  '[{"id":"a","label":"Il remplace la phase de planification écrite et dispense les élèves de faire un brouillon"},{"id":"b","label":"Il permet aux élèves de verbaliser et d''organiser leurs idées avant de les fixer par écrit, facilitant la planification textuelle"},{"id":"c","label":"Il sert uniquement à corriger les erreurs d''orthographe à l''oral avant d''écrire"},{"id":"d","label":"Il est utile uniquement pour les élèves en difficulté et n''a pas de valeur pour les scripteurs experts"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Chabanne et Bucheton montrent que l''oral préparatoire à l''écrit permet aux élèves de « penser avant d''écrire » : verbaliser les idées, les organiser, tester des formulations. Ce passage par l''oral allège la surcharge cognitive liée à la production écrite (gestion simultanée du contenu, de la langue et de la graphie). Les programmes 2020 et les documents Éduscol recommandent explicitement d''articuler oral et écrit dans les séquences de production d''écrits, en utilisant l''oral comme tremplin vers l''écriture.',
  'Opposer oral et écrit comme deux compétences cloisonnées. Le candidat au CRPE doit montrer qu''il comprend le continuum oral-écrit et sait exploiter l''oral comme outil de préparation, de révision et de socialisation des écrits (lecture à voix haute, partage de textes).',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — vrai_faux — Récitation et mémorisation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50c0000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'didac_oral_langage',
  'L''enseignement de l''oral',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : selon les programmes 2020, la récitation (dire de mémoire un texte en prose ou un poème) est un attendu de fin de cycle dès le cycle 2 et contribue à la fois à l''enseignement de l''oral et à la culture littéraire.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'La récitation figure bien dans les attendus de fin de cycle 2 et de cycle 3 des programmes 2020. Elle est rattachée au domaine « Langage oral » et consiste à dire de mémoire un texte (poème, extrait de prose, texte théâtral) en l''interprétant avec expressivité. Elle articule l''enseignement de l''oral (travail sur la diction, l''intonation, le débit) et la culture littéraire (fréquentation d''œuvres patrimoniales et contemporaines). Éduscol propose des progressions de la PS au CM2 pour cet exercice.',
  'Réduire la récitation à un simple exercice de mémorisation mécanique. Les programmes insistent sur la dimension interprétative : comprendre le texte, en restituer le sens par la voix, adapter sa diction au genre. Le candidat doit dépasser la vision traditionnelle de la récitation-restitution.',
  'valide',
  'CRPE Français — Didactique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;


-- ************************************************************
-- SÉRIE 2 : La littérature de jeunesse à l'école
-- topic_key = didac_litterature_jeunesse
-- access_tier = premium
-- Mix : 6 qcm, 2 vrai_faux, 2 reponse_courte
-- Levels : 3 Facile, 4 Intermediaire, 3 Difficile
-- ************************************************************

-- Q1 — Facile — qcm — Listes de référence MEN/Éduscol
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Facile',
  'qcm',
  'Quel outil institutionnel le ministère de l''Éducation nationale met-il à disposition des enseignants pour sélectionner des œuvres de littérature de jeunesse adaptées à chaque cycle ?',
  NULL,
  '[{"id":"a","label":"Le bulletin officiel des manuels scolaires agréés"},{"id":"b","label":"Les listes de référence d''œuvres de littérature pour les cycles 2 et 3, publiées par Éduscol"},{"id":"c","label":"Le catalogue officiel des éditeurs jeunesse"},{"id":"d","label":"Le programme national de lectures obligatoires par niveau de classe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le MEN publie sur Éduscol des listes de référence d''œuvres de littérature de jeunesse pour les cycles 2 et 3, régulièrement actualisées. Ces listes proposent des œuvres classées par genre (albums, romans, contes, BD, poésie, théâtre) avec des niveaux de difficulté. Elles constituent un outil de référence pour les enseignants, sans être prescriptives : l''enseignant choisit librement les œuvres, mais les listes garantissent la qualité littéraire et l''adéquation aux compétences visées.',
  'Croire que les listes Éduscol sont des programmes de lectures obligatoires. Elles sont indicatives et constituent une aide au choix, pas une obligation. Le candidat doit connaître leur existence et leur principe de fonctionnement (classement par genre, niveau de difficulté, mise en réseau).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Genres de la littérature de jeunesse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Facile',
  'qcm',
  'Quel genre de la littérature de jeunesse se caractérise par l''interaction entre texte et image, où le sens se construit dans la relation entre ces deux systèmes sémiotiques ?',
  NULL,
  '[{"id":"a","label":"Le roman jeunesse"},{"id":"b","label":"L''album"},{"id":"c","label":"Le conte traditionnel"},{"id":"d","label":"La bande dessinée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''album est le genre emblématique de la littérature de jeunesse qui se définit par la relation texte-image. Le sens ne réside ni dans le texte seul ni dans l''image seule, mais dans leur interaction : convergence, complémentarité, ou même contradiction (comme dans les albums à double narration). Les documents Éduscol insistent sur l''importance de former les élèves à la lecture de l''image et au repérage des rapports texte-image, compétences spécifiques que seul l''album permet de travailler pleinement.',
  'Confondre album et livre illustré. Dans un livre illustré, l''image accompagne le texte mais n''est pas indispensable à la compréhension. Dans l''album, le texte et l''image sont co-dépendants : supprimer l''un des deux altère ou détruit le sens de l''œuvre.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — vrai_faux — Carnet de lecteur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le carnet de lecteur est un outil préconisé par Éduscol dont la fonction principale est de vérifier que l''élève a bien lu l''œuvre intégralement en répondant à un questionnaire de compréhension.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Le carnet de lecteur n''est pas un outil de contrôle de lecture. Selon les préconisations Éduscol, il vise à favoriser l''expression d''une réception personnelle de l''œuvre : impressions, émotions, hypothèses, dessins, citations marquantes, liens avec d''autres lectures. C''est un espace de liberté interprétative qui construit le sujet lecteur et nourrit les échanges collectifs (débat interprétatif, cercle de lecture).',
  'Confondre le carnet de lecteur avec un questionnaire de lecture ou une fiche de lecture traditionnelle. Le candidat doit comprendre que le carnet de lecteur est un outil d''expression subjective du lecteur, pas un outil d''évaluation de la compréhension littérale.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Mise en réseau d'œuvres
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Intermediaire',
  'qcm',
  'Qu''est-ce que la « mise en réseau » d''œuvres littéraires, telle que préconisée par les programmes et les documents d''accompagnement Éduscol ?',
  NULL,
  '[{"id":"a","label":"Regrouper les œuvres par ordre chronologique de publication pour enseigner l''histoire littéraire"},{"id":"b","label":"Proposer aux élèves de lire plusieurs œuvres reliées par un critère commun (thème, personnage archétypal, genre, auteur, procédé d''écriture) pour construire une culture littéraire"},{"id":"c","label":"Faire lire le même livre à toute la classe en même temps"},{"id":"d","label":"Constituer une bibliothèque de classe avec des livres variés sans lien particulier entre eux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La mise en réseau consiste à rapprocher des œuvres partageant un point commun afin de développer la culture littéraire et les compétences interprétatives des élèves. Les liens peuvent être thématiques (le loup, le voyage), génériques (contes étiologiques), intertextuels (réécritures du Petit Chaperon rouge), ou liés à un auteur ou un procédé narratif. Les programmes 2020 et Éduscol insistent sur cette approche qui favorise la comparaison, l''identification de constantes et de variations, et la construction d''une bibliothèque intérieure.',
  'Réduire la mise en réseau à un simple regroupement thématique. Le réseau littéraire peut aussi être construit autour d''un genre, d''un personnage archétypal, d''un procédé narratif ou d''une relation intertextuelle, et c''est cette diversité de critères que le candidat doit maîtriser.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Débat interprétatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Intermediaire',
  'qcm',
  'Quel est l''objectif principal du débat interprétatif en classe de littérature, tel que défini par les documents d''accompagnement Éduscol ?',
  NULL,
  '[{"id":"a","label":"Déterminer la seule interprétation valide du texte, celle de l''auteur"},{"id":"b","label":"Permettre aux élèves de confronter leurs interprétations d''un texte résistant en les justifiant par un retour au texte"},{"id":"c","label":"Évaluer la compréhension littérale de chaque élève par un questionnement oral"},{"id":"d","label":"Faire reformuler le résumé de l''histoire par différents élèves pour vérifier leur attention"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le débat interprétatif porte sur les zones d''ombre ou de polysémie d''un texte littéraire (texte « résistant »). Les élèves formulent des hypothèses interprétatives qu''ils doivent justifier en s''appuyant sur des indices textuels. Il ne s''agit pas de trouver « la » bonne interprétation mais d''apprendre à argumenter une lecture en retournant au texte. Éduscol distingue clairement le débat interprétatif (portant sur le sens) du questionnaire de compréhension (portant sur la compréhension littérale).',
  'Confondre débat interprétatif et questionnaire de compréhension. Le débat interprétatif suppose un texte polysémique et une pluralité d''interprétations possibles, tandis que les questions de compréhension portent sur des informations explicites ou des inférences à réponse unique.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — reponse_courte — Lecture en réseau et intertextualité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Intermediaire',
  'reponse_courte',
  'Comment appelle-t-on la relation qu''un texte littéraire entretient avec d''autres textes antérieurs auxquels il fait référence, par citation, allusion ou réécriture ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["intertextualité","l''intertextualité","intertextualite","l''intertextualite","relation intertextuelle"]}'::jsonb,
  'L''intertextualité, concept issu des travaux de Kristeva et Genette, désigne l''ensemble des relations qu''un texte entretient avec d''autres textes. En didactique de la littérature, Éduscol recommande de faire repérer aux élèves ces liens intertextuels (citations, allusions, réécritures, parodies) pour construire une culture littéraire et développer la posture de « lecteur expert ». La mise en réseau d''œuvres s''appuie largement sur cette notion d''intertextualité.',
  'Confondre intertextualité et simple ressemblance thématique. L''intertextualité suppose une relation explicite ou implicite avec un texte précis (réécriture, parodie, citation), pas un simple point commun de sujet entre deux œuvres indépendantes.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — vrai_faux — Adaptation des dispositifs au cycle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : au cycle 2, la lecture d''œuvres de littérature de jeunesse repose principalement sur la lecture à voix haute par l''enseignant, car les élèves ne maîtrisent pas encore suffisamment le décodage pour lire seuls des textes longs.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Au cycle 2, et particulièrement au CP-CE1, les élèves sont encore en cours d''apprentissage du décodage. Les programmes 2020 et les documents Éduscol préconisent que l''enseignant lise à voix haute des œuvres longues et complexes (albums, romans courts, contes) pour garantir l''accès à la littérature indépendamment du niveau de lecture autonome. Cette lecture magistrale permet de travailler la compréhension, l''interprétation et la culture littéraire sans être limité par les capacités de décodage des élèves.',
  'Penser qu''au cycle 2, on ne peut pas faire de littérature parce que les élèves « ne savent pas encore lire ». La lecture par l''enseignant et la lecture d''albums (avec support de l''image) permettent un enseignement de la littérature dès le CP, comme le rappellent les programmes.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — qcm — Parcours de lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Difficile',
  'qcm',
  'Dans la construction d''un parcours de lecture au cycle 3, quelle démarche didactique permet de former un « sujet lecteur » tel que le définissent les travaux de Rouxel et Langlade ?',
  NULL,
  '[{"id":"a","label":"Proposer exclusivement des questionnaires de compréhension littérale après chaque lecture"},{"id":"b","label":"Imposer une interprétation unique validée par l''enseignant pour chaque œuvre"},{"id":"c","label":"Articuler lecture subjective (expression de la réception personnelle) et lecture analytique (retour au texte, étude des procédés) dans un parcours progressif"},{"id":"d","label":"Se limiter aux œuvres du patrimoine classique en excluant la littérature contemporaine"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Rouxel et Langlade ont théorisé la notion de « sujet lecteur » qui articule deux dimensions : la lecture subjective (émotions, images mentales, projections personnelles du lecteur) et la lecture analytique (étude des procédés littéraires, retour au texte pour justifier une interprétation). Éduscol reprend cette approche en recommandant de partir de la réception des élèves pour aller vers une lecture plus distanciée. Le parcours de lecture au cycle 3 doit permettre cette progression de la réponse subjective vers l''analyse littéraire.',
  'Opposer lecture plaisir et lecture analytique. La didactique actuelle de la littérature (Rouxel, Langlade, Tauveron) montre que les deux sont complémentaires : la réception subjective est le point de départ de l''interprétation, pas un obstacle à l''analyse.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — qcm — Cercles de lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Difficile',
  'qcm',
  'Dans un cercle de lecture (ou comité de lecture), quel dispositif didactique permet de développer simultanément les compétences de compréhension, d''interprétation et d''argumentation orale chez les élèves ?',
  NULL,
  '[{"id":"a","label":"Chaque élève lit silencieusement puis remplit un questionnaire individuel noté"},{"id":"b","label":"L''enseignant lit le livre à voix haute pendant que les élèves écoutent passivement"},{"id":"c","label":"Les élèves, ayant lu la même œuvre, échangent en petit groupe selon des rôles définis (meneur de discussion, maître des passages, illustrateur, connecteur) avant une mise en commun"},{"id":"d","label":"Les élèves résument chacun un chapitre différent pour reconstituer l''histoire collectivement"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le cercle de lecture, inspiré des « literature circles » de Harvey Daniels, est un dispositif où les élèves échangent en petit groupe autour d''une œuvre commune en occupant des rôles tournants : meneur de discussion, maître des passages (choisit des extraits à relire), illustrateur (dessine une scène clé), connecteur (fait des liens avec d''autres œuvres ou le vécu). Ce dispositif, recommandé par Éduscol, articule lecture individuelle, écriture (carnet de lecteur) et oral (échanges argumentés) dans une démarche de coopération.',
  'Réduire le cercle de lecture à une simple discussion informelle sur un livre. La force du dispositif réside dans la distribution de rôles précis qui structurent les échanges et garantissent que chaque élève contribue activement à la construction collective du sens.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Concept de Catherine Tauveron
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50d0000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'didac_litterature_jeunesse',
  'La littérature de jeunesse à l''école',
  'Difficile',
  'reponse_courte',
  'Selon Catherine Tauveron, comment qualifie-t-on les textes littéraires qui posent délibérément des problèmes de compréhension ou d''interprétation au lecteur (blancs du texte, ambiguïtés, points de vue multiples) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["textes résistants","texte résistant","textes resistants","texte resistant","résistants","resistants"]}'::jsonb,
  'Catherine Tauveron a introduit la notion de « textes résistants » pour désigner les œuvres littéraires qui ne livrent pas leur sens de manière transparente. Elle distingue les textes « réticents » (qui retiennent volontairement des informations) et les textes « proliférants » (qui ouvrent sur de multiples interprétations). Cette notion est fondamentale dans la didactique de la littérature à l''école : les programmes et Éduscol recommandent de confronter les élèves à ces textes pour développer leurs compétences interprétatives, et non de se limiter à des textes « lisses » sans difficulté.',
  'Penser que les textes résistants sont inadaptés à l''école primaire parce qu''ils sont « trop difficiles ». C''est précisément la résistance du texte qui crée la nécessité du débat interprétatif et développe les compétences de lecteur. L''enseignant doit choisir des textes résistants adaptés au niveau des élèves.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
