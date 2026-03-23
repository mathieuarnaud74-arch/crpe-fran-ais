-- ============================================================
-- Migration : Didactique de la production d'écrits
-- 1 série × 10 questions
-- UUID prefix : d502
-- ============================================================


-- ************************************************************
-- SÉRIE : Didactique de la production d'écrits aux cycles 2 et 3
-- topic_key = didactique_production_ecrite
-- ************************************************************

-- Q1 — Facile — qcm — Les trois étapes de la production d'écrits
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Facile',
  'qcm',
  'Selon le modèle de Hayes et Flower, quelles sont les trois grandes opérations du processus d''écriture ?',
  NULL,
  '[{"id":"a","label":"Lecture, copie et dictée"},{"id":"b","label":"Planification, mise en texte et révision"},{"id":"c","label":"Grammaire, orthographe et conjugaison"},{"id":"d","label":"Brouillon, copie au propre et illustration"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le modèle de Hayes et Flower (1980), référence en didactique de l''écriture, identifie trois opérations cognitives : la planification (élaborer un plan, organiser ses idées, définir le but), la mise en texte (rédiger, choisir les mots, construire les phrases) et la révision (relire, corriger, améliorer). Ces opérations ne sont pas linéaires mais récursives : le scripteur peut revenir à la planification en cours de rédaction. Les programmes 2020 s''appuient sur ce modèle pour structurer l''enseignement de l''écriture aux cycles 2 et 3.',
  'Les candidats présentent souvent l''écriture comme un processus linéaire (brouillon → copie au propre). Le modèle de Hayes et Flower montre au contraire que l''écriture est un processus récursif où planification, mise en texte et révision s''entrelacent en permanence.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Dictée à l'adulte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : la dictée à l''adulte est un dispositif didactique qui permet aux élèves non scripteurs de produire un texte en dictant à l''enseignant qui écrit sous leurs yeux.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'La dictée à l''adulte est un dispositif fondamental en maternelle et au début du cycle 2. L''élève compose oralement un texte que l''enseignant transcrit en verbalisant les contraintes de l''écrit (ponctuation, segmentation en mots, orthographe). Ce dispositif permet de dissocier la composante intellectuelle de la production (élaborer un texte) de la composante graphique (le transcrire). L''élève apprend ainsi que l''écrit est différent de l''oral et découvre les normes de l''écrit par l''observation de l''adulte scripteur.',
  'Certains candidats réduisent la dictée à l''adulte à une simple prise de notes par l''enseignant. En réalité, c''est un dispositif d''enseignement où l''adulte négocie avec l''élève la formulation, reformule si nécessaire et rend explicites les spécificités du langage écrit.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Écriture tâtonnée / essais d'écriture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Intermediaire',
  'qcm',
  'Quel est l''intérêt didactique principal des « essais d''écriture » (ou écriture tâtonnée) proposés dès la GS et au CP ?',
  NULL,
  '[{"id":"a","label":"Permettre aux élèves d''écrire sans aucune contrainte orthographique pour développer la créativité"},{"id":"b","label":"Amener les élèves à mobiliser leurs connaissances des correspondances graphèmes-phonèmes en situation d''encodage"},{"id":"c","label":"Remplacer la copie qui est trop fastidieuse pour les jeunes élèves"},{"id":"d","label":"Évaluer le niveau de vocabulaire des élèves en début d''année"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les essais d''écriture (ou écriture tâtonnée, ou écriture inventée/approchée) sont des situations où l''élève tente d''encoder des mots ou des phrases en mobilisant ses connaissances des correspondances graphèmes-phonèmes. Ce dispositif, recommandé par le guide « Pour enseigner la lecture et l''écriture au CP » (2018), renforce l''apprentissage du code alphabétique en sens inverse du décodage. L''élève développe sa conscience phonémique en segmentant les mots en sons puis en cherchant les graphèmes correspondants. L''enseignant étaye et valorise les essais tout en guidant vers la norme.',
  'Confondre « écriture tâtonnée » et « écriture libre sans contrainte » est une erreur fréquente. L''écriture tâtonnée est une activité d''encodage structurée et étayée par l''enseignant, pas une écriture sans exigence orthographique.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — vrai_faux — Le brouillon comme outil d'apprentissage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : en didactique de l''écriture, le brouillon est conçu uniquement comme un premier jet à recopier au propre sans modification.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'En didactique de l''écriture, le brouillon est un véritable outil de travail, un espace de recherche et de tâtonnement. Les programmes 2020 insistent sur la révision comme composante essentielle du processus d''écriture : le brouillon est fait pour être raturé, annoté, restructuré. L''enseignant doit apprendre aux élèves à utiliser le brouillon comme un espace de réflexion (flèches de déplacement, ratures, ajouts en marge) et non comme une copie préalable. Cette conception du brouillon comme « outil de pensée » transforme le rapport de l''élève à l''écriture.',
  'Beaucoup d''élèves (et de candidats) considèrent le brouillon comme un premier jet à recopier proprement. Cette conception empêche le travail de révision véritable et réduit l''écriture à un exercice de copie plutôt qu''à un processus de construction du texte.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — qcm — Écriture au quotidien
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Facile',
  'qcm',
  'Quelle recommandation des programmes 2020 concerne la fréquence de la production d''écrits aux cycles 2 et 3 ?',
  NULL,
  '[{"id":"a","label":"Une séance de production d''écrits par semaine suffit"},{"id":"b","label":"Les élèves doivent écrire dans toutes les disciplines et de manière quotidienne"},{"id":"c","label":"La production d''écrits est réservée aux séances de français"},{"id":"d","label":"Seuls les projets d''écriture longue sont recommandés"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes 2020 recommandent que les élèves écrivent quotidiennement et dans toutes les disciplines. L''écriture est une compétence transversale qui se développe par la pratique régulière : écrits courts (phrase du jour, réponse à une question, légende d''image), écrits intermédiaires (prise de notes, compte rendu d''expérience), écrits longs (récit, exposé). La diversité des situations d''écriture et leur fréquence sont les leviers principaux du progrès des élèves. Le « jogging d''écriture » ou les « écrits courts quotidiens » sont des dispositifs particulièrement efficaces.',
  'Limiter la production d''écrits à une séance hebdomadaire dédiée est insuffisant. Les programmes insistent sur l''écriture comme pratique quotidienne intégrée à toutes les disciplines, y compris les mathématiques et les sciences.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Étayage et zone proximale de développement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Intermediaire',
  'qcm',
  'Dans le cadre de la production d''écrits, comment l''enseignant peut-il adapter son étayage en fonction de la zone proximale de développement (ZPD) des élèves ?',
  NULL,
  '[{"id":"a","label":"En donnant la même consigne et les mêmes outils à tous les élèves"},{"id":"b","label":"En proposant des aides différenciées : outils d''aide à la planification, banques de mots, guidage oral, écriture collaborative"},{"id":"c","label":"En corrigeant systématiquement les erreurs pendant que l''élève écrit"},{"id":"d","label":"En réduisant la longueur du texte demandé pour tous les élèves en difficulté"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La zone proximale de développement (Vygotski) désigne l''écart entre ce que l''élève peut faire seul et ce qu''il peut accomplir avec l''aide d''un expert. En production d''écrits, l''étayage différencié consiste à proposer des aides adaptées au niveau de chaque élève : un élève en difficulté de planification bénéficiera d''un plan pré-structuré, un autre ayant des lacunes lexicales disposera d''une banque de mots, tandis qu''un élève plus avancé travaillera sur la révision stylistique. L''objectif est de réduire progressivement l''aide pour amener chaque élève vers l''autonomie.',
  'Réduire l''étayage à une simple différenciation quantitative (texte plus court, moins de mots) ne suffit pas. L''étayage doit être qualitatif et cibler les processus en jeu (planification, mise en texte, révision) en fonction des besoins spécifiques de chaque élève.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Avancé — vrai_faux — Évaluation formative en production d'écrits
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Avancé',
  'vrai_faux',
  'Vrai ou faux : une grille de critères de réussite co-construite avec les élèves est un outil d''évaluation formative pertinent en production d''écrits car elle permet à l''élève de s''autoévaluer.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'La grille de critères de réussite co-construite est un outil central de l''évaluation formative en production d''écrits. Élaborée avec les élèves à partir de l''analyse de textes réussis, elle rend explicites les attendus (organisation, cohérence, orthographe, ponctuation...) et donne à l''élève les moyens de s''autoévaluer et de réviser son texte de manière autonome. Les programmes 2020 encouragent cette posture réflexive de l''élève sur sa propre production. La co-construction garantit que les critères sont compris et appropriés par les élèves.',
  'Des candidats proposent des grilles de critères imposées par l''enseignant sans impliquer les élèves. Or, la co-construction est essentielle : un critère que l''élève n''a pas compris ou dont il n''a pas saisi le sens ne sera pas mobilisé lors de la révision.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — qcm — Écriture collaborative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Avancé',
  'qcm',
  'Un enseignant de CM1 met en place un dispositif d''écriture collaborative où les élèves rédigent un récit à plusieurs. Quel est le principal intérêt didactique de cette situation ?',
  NULL,
  '[{"id":"a","label":"Réduire la charge de travail individuelle de chaque élève"},{"id":"b","label":"Permettre aux élèves de confronter leurs choix d''écriture et d''expliciter les procédures rédactionnelles"},{"id":"c","label":"Garantir un texte sans erreur grâce au contrôle mutuel"},{"id":"d","label":"Éviter la surcharge cognitive liée à l''écriture individuelle en classe entière"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''écriture collaborative est un dispositif didactique puissant car elle rend visibles et explicites les processus d''écriture habituellement internes. Les élèves doivent négocier leurs choix lexicaux, syntaxiques et textuels, ce qui les oblige à verbaliser leurs stratégies et à justifier leurs décisions. Ce conflit sociocognitif (au sens de Vygotski et Doise) favorise l''intériorisation progressive des procédures rédactionnelles. L''enseignant peut observer les échanges et identifier les obstacles pour adapter son enseignement.',
  'L''écriture collaborative n''a pas pour but premier de « réduire la charge de travail » ni de « garantir un texte sans erreur ». Son intérêt est cognitif et métacognitif : c''est la confrontation des points de vue qui génère l''apprentissage, même si le texte produit n''est pas parfait.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — vrai_faux — Contraintes d'écriture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : proposer des contraintes d''écriture (écrire un texte sans la lettre « e », utiliser obligatoirement cinq mots imposés) est un frein à la créativité des élèves.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'En didactique de l''écriture, les contraintes sont des leviers de créativité et non des freins. Elles obligent l''élève à chercher des solutions linguistiques nouvelles, à enrichir son vocabulaire et à explorer des constructions syntaxiques qu''il n''utiliserait pas spontanément. Les jeux d''écriture à contrainte (inspirés de l''OuLiPo) sont recommandés par Éduscol comme des entrées motivantes dans l''écriture. La contrainte libère paradoxalement la créativité en réduisant « l''angoisse de la page blanche » et en fournissant un cadre structurant.',
  'Opposer contrainte et créativité est une conception naïve de l''écriture. Les plus grands écrivains ont travaillé sous contrainte (sonnet, alexandrin, lipogramme). En classe, la contrainte est un étayage qui structure l''activité créative de l''élève.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — qcm — Révision de texte au cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd50d0000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrite',
  'Didactique de la production d''écrits aux cycles 2 et 3',
  'Avancé',
  'qcm',
  'Pourquoi l''enseignement explicite de la révision de texte est-il particulièrement difficile à mettre en œuvre au cycle 3, et quel dispositif permet d''y remédier ?',
  NULL,
  '[{"id":"a","label":"La révision est impossible avant le CM2 car elle nécessite une maturité cognitive que les élèves n''ont pas"},{"id":"b","label":"La révision est un processus coûteux cognitivement car elle demande de se relire avec un regard critique ; la relecture croisée entre pairs facilite cette distanciation"},{"id":"c","label":"La révision ne porte que sur l''orthographe et la grammaire, ce qui la rend monotone pour les élèves"},{"id":"d","label":"La révision est inutile si l''élève a bien planifié son texte en amont"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La révision est le processus rédactionnel le plus exigeant sur le plan cognitif : le scripteur doit prendre de la distance avec son propre texte pour le relire avec un œil critique, identifier les problèmes (cohérence, clarté, orthographe, syntaxe) et trouver des solutions. Les recherches montrent que les élèves révisent peu spontanément et se limitent souvent à des corrections de surface. La relecture croisée entre pairs est un dispositif efficace car le regard d''un autre lecteur offre la distanciation nécessaire. L''élève-relecteur apprend aussi à analyser un texte selon des critères explicites.',
  'Penser que la révision se réduit à la correction orthographique est une erreur majeure. La révision porte sur toutes les dimensions du texte : cohérence globale, progression thématique, choix lexicaux, syntaxe, connecteurs, et aussi orthographe. C''est un processus de réécriture, pas de simple relecture.',
  'valide',
  'CRPE Français — Didactique du français',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
