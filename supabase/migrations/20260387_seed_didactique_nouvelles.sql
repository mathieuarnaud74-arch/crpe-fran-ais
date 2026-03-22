-- Migration: 20260370_seed_didactique_nouvelles.sql
-- Deux nouvelles séries — Didactique du français
-- Série 1 : did_ecriture_processus (10 QCM) — UUID prefix d501
-- Série 2 : did_oral_enjeux (10 vrai_faux) — UUID prefix d502


-- ************************************************************
-- SÉRIE 1 : La didactique de l'écriture : processus rédactionnel
-- topic_key = did_ecriture_processus
-- 10 questions QCM — premium — Intermediaire
-- ************************************************************

-- Q1 — Intermediaire — qcm — Modèle de Hayes et Flower
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Selon le modèle de Hayes et Flower (1980), quelles sont les trois grandes opérations du processus rédactionnel ?',
  NULL,
  '[{"id":"a","label":"Lecture, écriture, correction"},{"id":"b","label":"Planification, mise en texte, révision"},{"id":"c","label":"Brouillon, copie, relecture"},{"id":"d","label":"Recherche, rédaction, publication"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le modèle de Hayes et Flower distingue trois processus cognitifs majeurs dans l''écriture : la planification (élaborer des idées, les organiser, se fixer des objectifs), la mise en texte (traduire les idées en langage écrit) et la révision (relire et corriger). Ces processus ne sont pas linéaires mais récursifs : le scripteur peut revenir à tout moment à la planification ou à la révision pendant la mise en texte.',
  'Confondre les étapes scolaires (brouillon, copie) avec les processus cognitifs du modèle scientifique.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — qcm — Écrits de travail
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Quelle est la fonction principale des « écrits de travail » (ou écrits intermédiaires) dans les apprentissages scolaires ?',
  NULL,
  '[{"id":"a","label":"Produire un texte final destiné à être évalué par l''enseignant"},{"id":"b","label":"Permettre à l''élève d''organiser sa pensée et de construire ses savoirs"},{"id":"c","label":"Entraîner la calligraphie et la mise en page"},{"id":"d","label":"Remplacer la prise de notes en classe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les écrits de travail, théorisés notamment par Dominique Bucheton, sont des écrits transitoires qui servent d''outils pour penser. Ils permettent à l''élève de reformuler, d''organiser ses idées, de faire des hypothèses. Contrairement aux écrits normés, ils ne visent pas la correction formelle mais la construction de la réflexion. Éduscol les recommande dans toutes les disciplines comme levier d''apprentissage.',
  'Croire que tout écrit scolaire doit être normé et évalué. Les écrits de travail ont une visée heuristique, pas évaluative.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Dictée à l'adulte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Quel est l''objectif didactique principal de la dictée à l''adulte en maternelle ?',
  NULL,
  '[{"id":"a","label":"Apprendre à l''enfant à écrire en cursive le plus tôt possible"},{"id":"b","label":"Permettre à l''enfant de produire un texte en se concentrant sur la mise en mots, sans être freiné par le geste graphique"},{"id":"c","label":"Évaluer le niveau de vocabulaire de l''enfant"},{"id":"d","label":"Enseigner la correspondance graphème-phonème dès la petite section"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La dictée à l''adulte, dispositif central en maternelle décrit par Laurence Lentin, permet à l''enfant de se confronter aux exigences de la langue écrite (structuration syntaxique, choix lexicaux, cohérence textuelle) sans être entravé par les difficultés motrices de l''écriture manuscrite. L''adulte transcrit ce que l''enfant dicte, mais exige un oral « écrivable » : l''enfant apprend ainsi la différence entre oral spontané et langage écrit.',
  'Penser que la dictée à l''adulte est une simple transcription fidèle de l''oral de l''enfant. En réalité, l''adulte guide l''enfant vers un oral « écrivable ».',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Le brouillon comme outil d'apprentissage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Dans une perspective didactique, pourquoi est-il essentiel de valoriser le brouillon en classe ?',
  NULL,
  '[{"id":"a","label":"Parce que le brouillon permet de repérer les fautes d''orthographe avant la copie au propre"},{"id":"b","label":"Parce que le brouillon rend visible le processus de révision et montre que l''écriture est un travail de réécriture"},{"id":"c","label":"Parce que le brouillon est plus rapide à corriger pour l''enseignant"},{"id":"d","label":"Parce que les programmes interdisent d''écrire directement au propre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le brouillon est un outil didactique majeur car il matérialise le processus de révision décrit par Hayes et Flower. En rendant visibles les ratures, ajouts et réorganisations, il enseigne aux élèves que l''écriture n''est pas un acte linéaire mais un processus itératif. Claudine Fabre-Cols a montré que l''analyse des brouillons d''élèves révèle une véritable activité métalinguistique, même chez les jeunes scripteurs.',
  'Réduire le brouillon à un « premier jet à corriger » orthographiquement. L''enjeu est la réécriture du contenu, pas seulement la correction de surface.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Écriture collaborative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Quel intérêt didactique majeur présente l''écriture collaborative (à plusieurs) par rapport à l''écriture individuelle ?',
  NULL,
  '[{"id":"a","label":"Elle permet de produire des textes plus longs en moins de temps"},{"id":"b","label":"Elle externalise les processus cognitifs de planification et de révision grâce aux échanges verbaux entre pairs"},{"id":"c","label":"Elle évite que les élèves les plus faibles aient à écrire eux-mêmes"},{"id":"d","label":"Elle est recommandée uniquement pour les activités d''écriture créative"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''écriture collaborative oblige les élèves à expliciter oralement leurs choix rédactionnels : que va-t-on écrire ? comment l''organiser ? cette formulation est-elle claire ? Ce faisant, les processus cognitifs habituellement internes (planification, révision) deviennent observables et discutables. Sylvie Plane et les travaux du groupe RÉSEIDA ont montré que cette explicitation favorise l''appropriation des stratégies d''écriture, notamment chez les élèves en difficulté.',
  'Penser que l''écriture collaborative profite surtout aux élèves forts. Elle bénéficie à tous car elle rend explicites des stratégies qui restent implicites dans l''écriture individuelle.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Critères de réussite en production d'écrit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Pourquoi est-il recommandé de co-construire les critères de réussite d''un écrit avec les élèves plutôt que de les imposer ?',
  NULL,
  '[{"id":"a","label":"Pour gagner du temps lors de la correction"},{"id":"b","label":"Pour que les élèves puissent s''auto-évaluer et orienter leur révision de manière autonome"},{"id":"c","label":"Pour que les élèves choisissent eux-mêmes le sujet de rédaction"},{"id":"d","label":"Pour respecter une obligation réglementaire des programmes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La co-construction des critères de réussite est un principe de l''évaluation formatrice théorisé par Jean-Charles Chabanne et Dominique Bucheton. Lorsque les élèves participent à l''élaboration des critères (par exemple à partir de l''analyse de textes-modèles), ils se les approprient et peuvent ensuite les utiliser comme grille d''auto-évaluation et de révision. Cela favorise la posture réflexive et l''autonomie du jeune scripteur.',
  'Confondre critères de réussite (qualitatifs, liés au projet d''écriture) et critères de réalisation (procéduraux, liés aux étapes à suivre).',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — qcm — Étayage en écriture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Selon Dominique Bucheton, quels « gestes professionnels » l''enseignant mobilise-t-il principalement pour étayer l''activité d''écriture des élèves ?',
  NULL,
  '[{"id":"a","label":"La dictée, la copie et l''écriture sous contrainte"},{"id":"b","label":"Le tissage, l''atmosphère, le pilotage et l''étayage proprement dit"},{"id":"c","label":"La notation, la sanction et la récompense"},{"id":"d","label":"La lecture magistrale, la reformulation et la mémorisation"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le « multi-agenda » de Dominique Bucheton identifie cinq préoccupations enchâssées de l''enseignant : le pilotage (gestion du temps, de l''espace), l''atmosphère (climat de confiance), le tissage (liens entre les savoirs), les objets de savoir, et l''étayage (aides ponctuelles). En situation d''écriture, l''enseignant navigue entre ces gestes pour accompagner chaque élève selon ses besoins, par exemple en reformulant la consigne (tissage), en encourageant (atmosphère) ou en proposant une aide lexicale (étayage).',
  'Réduire l''étayage à la simple aide ponctuelle. Le multi-agenda montre que l''étayage est un geste intégré dans un ensemble plus large de postures professionnelles.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — Écrits pour apprendre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Qu''est-ce qui distingue fondamentalement un « écrit pour apprendre » d''un « écrit littéraire » dans la didactique de l''écriture ?',
  NULL,
  '[{"id":"a","label":"L''écrit pour apprendre est toujours plus court que l''écrit littéraire"},{"id":"b","label":"L''écrit pour apprendre a une fonction heuristique (construire des savoirs) tandis que l''écrit littéraire a une fonction esthétique et narrative"},{"id":"c","label":"L''écrit pour apprendre n''utilise pas de phrases complètes"},{"id":"d","label":"L''écrit littéraire est réservé au cycle 3, l''écrit pour apprendre au cycle 2"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La distinction entre types d''écrits scolaires est fondamentale en didactique. L''écrit pour apprendre (compte rendu d''expérience, schéma légendé, trace écrite) sert à structurer la pensée et fixer les savoirs dans toutes les disciplines. L''écrit littéraire (récit, poème, texte théâtral) vise la création, l''expression et l''appropriation des codes littéraires. Les programmes 2020 insistent sur la diversité des écrits scolaires et la nécessité de ne pas réduire la production d''écrit aux seules rédactions narratives.',
  'Opposer ces deux types d''écrits au lieu de les articuler. Un bon enseignement de l''écriture alterne et croise ces différentes fonctions.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — qcm — La révision dans le processus rédactionnel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'Pourquoi les jeunes scripteurs (cycle 2) ont-ils particulièrement du mal à réviser leurs propres textes, selon les recherches en didactique ?',
  NULL,
  '[{"id":"a","label":"Parce qu''ils n''ont pas encore appris les règles d''orthographe"},{"id":"b","label":"Parce que la surcharge cognitive liée au geste graphique et à l''encodage leur laisse peu de ressources attentionnelles pour la relecture critique"},{"id":"c","label":"Parce qu''ils ne savent pas encore lire couramment"},{"id":"d","label":"Parce que les enseignants ne leur demandent jamais de se relire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les recherches de Michel Fayol et de José Morais montrent que chez le jeune scripteur, la mémoire de travail est largement mobilisée par les tâches de bas niveau (formation des lettres, encodage phonographique). Il reste donc très peu de ressources cognitives disponibles pour les opérations de haut niveau comme la révision. C''est pourquoi l''étayage de l''enseignant et les outils d''aide (grilles de relecture, écriture collaborative) sont essentiels pour rendre la révision possible.',
  'Attribuer la difficulté de révision à un manque de motivation ou de soin. Il s''agit d''une limitation cognitive liée à la surcharge de la mémoire de travail, pas d''un problème d''attitude.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — qcm — Écriture sous contrainte et écriture créative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'did_ecriture_processus',
  'La didactique de l''écriture : processus rédactionnel',
  'Intermediaire',
  'qcm',
  'En quoi les jeux d''écriture à contraintes (à la manière de l''Oulipo) constituent-ils un levier didactique pertinent pour les élèves en difficulté face à l''écriture ?',
  NULL,
  '[{"id":"a","label":"Parce qu''ils dispensent les élèves de réfléchir au contenu"},{"id":"b","label":"Parce que la contrainte formelle réduit l''angoisse de la page blanche en fournissant un cadre structurant pour la planification"},{"id":"c","label":"Parce qu''ils ne nécessitent aucune connaissance grammaticale"},{"id":"d","label":"Parce qu''ils permettent de n''écrire que des textes très courts"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les jeux d''écriture sous contrainte (lipogramme, acrostiche, texte à structure imposée) offrent un cadre qui facilite l''entrée dans l''écriture, notamment pour les élèves inhibés. La contrainte oriente la planification et libère le scripteur de l''angoisse du « quoi écrire ? ». Le groupe Français de l''OULIPO a montré que « la contrainte est ce qui libère l''écriture ». En didactique, ces dispositifs permettent aussi de travailler la langue de manière ludique (synonymes, structures syntaxiques) tout en produisant des textes aboutis.',
  'Penser que les jeux d''écriture sont de simples activités récréatives sans valeur didactique. Ils travaillent des compétences linguistiques et rédactionnelles fondamentales.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ************************************************************
-- SÉRIE 2 : L'oral à l'école : enjeux et pratiques
-- topic_key = did_oral_enjeux
-- 10 questions vrai_faux — premium — Intermediaire
-- ************************************************************

-- Q1 — Intermediaire — vrai_faux — Oral pour apprendre vs oral à apprendre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la distinction entre « oral pour apprendre » et « oral à apprendre » signifie que l''oral peut être à la fois un outil au service des apprentissages et un objet d''enseignement en soi.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette distinction fondamentale, théorisée notamment par Élisabeth Nonnon et reprise dans les programmes, structure toute la didactique de l''oral. L''« oral pour apprendre » désigne l''utilisation de la parole comme outil de pensée (reformuler, expliquer, argumenter pour construire des savoirs). L''« oral à apprendre » désigne l''enseignement explicite de compétences orales spécifiques (savoir exposer, débattre, raconter). Les deux dimensions sont complémentaires et doivent être travaillées conjointement.',
  'Croire qu''il suffit de « faire parler les élèves » pour enseigner l''oral. L''oral à apprendre nécessite un enseignement explicite de compétences identifiées.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — vrai_faux — Reformulation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la reformulation par l''enseignant des propos d''un élève est une pratique à éviter car elle dévalorise la parole de l''enfant.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'La reformulation par l''enseignant est au contraire un geste professionnel essentiel, particulièrement en maternelle. Elle remplit plusieurs fonctions : valider la prise de parole de l''élève (« tu veux dire que... »), fournir un modèle syntaxique et lexical correct (étayage langagier), et aider l''élève à préciser sa pensée. Agnès Florin a montré que les reformulations de l''enseignant jouent un rôle crucial dans le développement du langage oral, à condition qu''elles ne soient pas systématiquement correctives mais plutôt expansives.',
  'Confondre reformulation et correction. La reformulation expansive reprend l''idée de l''enfant en l''enrichissant, sans stigmatiser l''erreur linguistique.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — vrai_faux — Débat en classe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : le débat interprétatif en littérature et le débat à visée philosophique poursuivent exactement les mêmes objectifs didactiques.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Ces deux formes de débat, bien que partageant des compétences orales communes (écouter, argumenter, respecter la parole d''autrui), ont des visées distinctes. Le débat interprétatif, tel que le décrit Catherine Tauveron, porte sur un texte littéraire et vise à construire collaborativement le sens d''une œuvre en s''appuyant sur des indices textuels. Le débat à visée philosophique, théorisé par Michel Tozzi, vise la conceptualisation, la problématisation et l''argumentation autour de questions existentielles. L''objet de discussion et les critères de validité des arguments diffèrent fondamentalement.',
  'Amalgamer toutes les formes de débat en classe sous une seule catégorie. Chaque type de débat a ses objectifs, ses règles et sa didactique propres.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — vrai_faux — Oral en maternelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : en maternelle, le programme 2021 identifie « Mobiliser le langage dans toutes ses dimensions » comme le premier domaine d''apprentissage, confirmant la place centrale de l''oral.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le programme de maternelle (2021) place effectivement « Mobiliser le langage dans toutes ses dimensions » comme premier des cinq domaines d''apprentissage. L''oral y occupe une place prépondérante avec des objectifs précis : oser entrer en communication, comprendre et apprendre, échanger et réfléchir avec les autres, commencer à réfléchir sur la langue. Mireille Brigaudiot insiste sur le fait que l''école maternelle est le lieu privilégié pour réduire les inégalités langagières, à condition que l''enseignement de l''oral soit structuré et non laissé au hasard des situations quotidiennes.',
  NULL,
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Langage d'évocation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : le « langage d''évocation » désigne la capacité de l''enfant à parler de situations absentes (passées, futures ou imaginaires), et son acquisition est un enjeu majeur de l''école maternelle.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le langage d''évocation (ou langage décontextualisé) s''oppose au langage en situation où la communication est soutenue par le contexte immédiat (gestes, objets présents). Passer du langage en situation au langage d''évocation — raconter un événement passé, anticiper un projet, décrire un personnage de fiction — constitue un saut cognitif et linguistique majeur. Viviane Bouysse et les travaux d''Éduscol soulignent que cette compétence, inégalement développée selon les milieux sociaux, est un prédicteur fort de la réussite scolaire ultérieure, car elle prépare à la compréhension et à la production de l''écrit.',
  'Croire que le langage d''évocation se développe naturellement sans enseignement. Il nécessite des situations didactiques spécifiques : rappel de récit, projet, narration d''expériences.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Différence oral/écrit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : l''oral est simplement une version parlée de l''écrit, et les mêmes règles syntaxiques s''appliquent de manière identique dans les deux registres.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''oral et l''écrit sont deux systèmes linguistiques distincts avec leurs propres caractéristiques. L''oral se caractérise par des phrases souvent inachevées, des reprises, des hésitations, un recours à la prosodie et aux gestes pour compléter le sens, et une syntaxe plus souple (dislocations, phrases clivées). L''écrit exige une structuration syntaxique plus rigoureuse, l''explicitation complète du contexte et le respect de normes orthographiques. Claire Blanche-Benveniste a montré que juger l''oral à l''aune des normes de l''écrit est une erreur linguistique qui conduit à dévaloriser injustement la parole des élèves.',
  'Évaluer l''oral des élèves avec des critères de l''écrit (« il ne fait pas de phrases complètes »). L''oral a sa propre grammaire et ses propres normes.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — vrai_faux — Exposé oral
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : demander à un élève de cycle 3 de « faire un exposé » suffit à enseigner l''oral, car il développe naturellement ses compétences de communication en présentant devant la classe.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''exposé oral, sans enseignement explicite des compétences qu''il mobilise, risque de renforcer les inégalités entre élèves au lieu de les réduire. Un véritable enseignement de l''oral suppose de décomposer les compétences (structurer son propos, adapter son registre, gérer sa voix et son regard, utiliser des supports visuels), de les enseigner explicitement, de proposer des entraînements et de fournir des retours constructifs. Sylvie Plane et le groupe ORAL du CNESCO (2019) ont insisté sur le fait que « l''oral s''enseigne » et ne se développe pas par la seule pratique non guidée.',
  'Croire que multiplier les occasions de parler devant la classe suffit à développer les compétences orales. Sans enseignement explicite, les élèves les plus à l''aise progressent tandis que les plus fragiles se bloquent.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — vrai_faux — Vocabulaire oral
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : selon les recherches en didactique (Goigoux, Cèbe), l''enseignement explicite du vocabulaire à l''oral doit privilégier la rencontre des mots en contexte, leur réemploi actif et la structuration en réseaux sémantiques, plutôt que la seule mémorisation de définitions.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Roland Goigoux et Sylvie Cèbe, dans leurs travaux sur l''enseignement du vocabulaire (notamment la méthode Narramus pour la maternelle), insistent sur trois principes : (1) rencontrer les mots dans des contextes signifiants (albums, situations vécues), (2) les réemployer activement dans des situations variées pour qu''ils passent du vocabulaire passif au vocabulaire actif, et (3) les organiser en réseaux (synonymes, antonymes, champs lexicaux, familles de mots). La simple mémorisation de définitions isolées ne permet pas un apprentissage durable du vocabulaire.',
  'Penser que donner une définition suffit à enseigner un mot. Un mot n''est véritablement acquis que lorsque l''élève peut le réutiliser spontanément dans des contextes variés.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — vrai_faux — Compréhension orale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la compréhension orale (écouter et comprendre un message oral) est une compétence passive qui ne nécessite pas d''enseignement explicite.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'La compréhension orale est une compétence active qui mobilise des opérations cognitives complexes : maintien de l''attention, traitement en temps réel du flux sonore, mobilisation des connaissances lexicales et encyclopédiques, production d''inférences, construction d''une représentation mentale. Les travaux de Maryse Bianco montrent que ces stratégies de compréhension doivent être enseignées explicitement, aussi bien à l''oral qu''à l''écrit. En maternelle, le travail sur la compréhension de récits lus par l''adulte (raconter, reformuler, jouer) est un levier essentiel pour préparer la compréhension en lecture autonome.',
  'Assimiler la compréhension orale à une simple écoute attentive. Comprendre est un processus actif qui s''enseigne et se travaille.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — vrai_faux — Inégalités langagières
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'did_oral_enjeux',
  'L''oral à l''école : enjeux et pratiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : les recherches sociolinguistiques montrent que les élèves issus de milieux défavorisés ont un « déficit langagier » qui rend tout enseignement de l''oral inutile avant le cycle 3.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''idée d''un « déficit langagier » des enfants de milieux populaires a été réfutée par les sociolinguistes depuis les travaux de William Labov. Ces enfants possèdent des compétences langagières riches mais différentes des normes scolaires. Bernstein distingue « code restreint » et « code élaboré », mais cette distinction ne signifie pas absence de langage. C''est précisément parce que les écarts entre les pratiques langagières familiales et les attentes scolaires sont importants que l''enseignement explicite de l''oral doit commencer dès la maternelle. Attendre le cycle 3 serait aggraver les inégalités au lieu de les réduire.',
  'Adhérer à la théorie du « handicap linguistique » qui attribue les difficultés scolaires à un manque de langage plutôt qu''à une différence de pratiques langagières.',
  'valide',
  'CRPE Français V4 — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
