-- Série : Ingénierie didactique en mathématiques (Artigue)
-- Subdomain : didactique_maths | topic_key : math_did_ingenierie_didactique
-- 10 questions | UUIDs : c07d0000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000001',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'qcm',
  'L''ingénierie didactique en mathématiques est une méthodologie développée principalement par :',
  NULL,
  '[{"id":"a","label":"Guy Brousseau"},{"id":"b","label":"Gérard Vergnaud"},{"id":"c","label":"Michèle Artigue"},{"id":"d","label":"Yves Chevallard"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''ingénierie didactique est une méthodologie de recherche et d''enseignement formalisée par Michèle Artigue dans les années 1980-1990. Elle s''appuie sur la Théorie des Situations Didactiques (Brousseau) et se distingue des pratiques ordinaires d''enseignement par sa rigueur analytique. Brousseau est l''auteur de la TSD, Vergnaud des champs conceptuels, Chevallard de la transposition didactique.',
  'Confondre Artigue (ingénierie didactique) avec Brousseau (TSD) ou Vergnaud (champs conceptuels). Ces chercheurs sont complémentaires mais ont des apports distincts.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000002',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'qcm',
  'Combien de phases comporte le schéma classique de l''ingénierie didactique ?',
  NULL,
  '[{"id":"a","label":"2 phases : analyse et expérimentation"},{"id":"b","label":"3 phases : conception, mise en œuvre, évaluation"},{"id":"c","label":"4 phases : analyses préalables, conception et analyse a priori, expérimentation, analyse a posteriori"},{"id":"d","label":"5 phases : observation, hypothèse, conception, mise en œuvre, bilan"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''ingénierie didactique se déroule en quatre phases : (1) analyses préalables — étude épistémologique, didactique et cognitive du contenu ; (2) conception et analyse a priori — anticipation des comportements des élèves ; (3) expérimentation — mise en œuvre en classe ; (4) analyse a posteriori et validation — confrontation des observations avec l''analyse a priori.',
  'Confondre les 4 phases avec le modèle en 3 temps (conception/mise en œuvre/évaluation) courant dans l''ingénierie pédagogique ordinaire. L''ingénierie didactique se distingue par la dualité analyse a priori / analyse a posteriori.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000003',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? L''analyse a priori en ingénierie didactique consiste à analyser les productions des élèves après la séance.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''analyse a priori est réalisée AVANT l''expérimentation. Elle consiste à anticiper et à prévoir les comportements possibles des élèves face à la situation proposée, à identifier les variables didactiques pertinentes et à définir des critères de validation. C''est l''analyse a posteriori qui, elle, porte sur ce qui s''est passé pendant la séance.',
  'Inverser les deux analyses : a priori signifie « avant » (avant la séance), a posteriori signifie « après » (après la séance). Cette dualité avant/après est au cœur de la méthode de l''ingénierie didactique.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000004',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'qcm',
  'Qu''appelle-t-on « variable didactique » dans le cadre de l''ingénierie didactique ?',
  NULL,
  '[{"id":"a","label":"Une variable statistique calculée sur les résultats des élèves"},{"id":"b","label":"Un paramètre de la situation que l''enseignant peut modifier et qui influe sur les stratégies des élèves"},{"id":"c","label":"Le niveau de difficulté d''un exercice mesuré par son taux de réussite"},{"id":"d","label":"Un indicateur de l''hétérogénéité de la classe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Une variable didactique (ou variable de commande) est un paramètre de la situation d''enseignement que l''enseignant/ingénieur peut contrôler et qui, selon sa valeur, modifie les procédures et stratégies que les élèves vont mettre en œuvre. Exemple : dans une situation sur les fractions, la variable « nature des fractions » (simples, avec PGCD ≠ 1, impropres...) modifie les stratégies de simplification.',
  'Confondre variable didactique et variable mathématique. La variable didactique n''est pas une inconnue dans un calcul, mais un levier pédagogique sur lequel l''enseignant joue pour orienter l''apprentissage.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'qcm',
  'Sur quelle théorie l''ingénierie didactique de Artigue s''appuie-t-elle principalement pour concevoir les situations ?',
  NULL,
  '[{"id":"a","label":"La théorie de l''apprentissage social de Vygotski"},{"id":"b","label":"La théorie des situations didactiques de Brousseau"},{"id":"c","label":"La théorie des champs conceptuels de Vergnaud"},{"id":"d","label":"La théorie de la transposition didactique de Chevallard"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''ingénierie didactique s''inscrit dans le cadre de la Théorie des Situations Didactiques (TSD) de Guy Brousseau. Elle mobilise notamment les concepts de milieu, de contrat didactique, et les différents types de situations (action, formulation, validation, institutionnalisation) pour concevoir les séquences d''enseignement.',
  'Confondre avec Vygotski (zone proximale de développement — pas spécifique aux maths) ou Chevallard (transposition didactique — concerne le savoir savant vers savoir enseigné). Artigue formalise la méthode de conception et d''analyse ; Brousseau apporte les outils théoriques.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? L''ingénierie didactique se distingue des pratiques ordinaires d''enseignement en ce qu''elle valide ses choix par une confrontation systématique entre l''analyse a priori et l''analyse a posteriori.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est exactement ce qui distingue l''ingénierie didactique : la validation interne passe par la confrontation entre ce qui était prévu (analyse a priori) et ce qui a été observé (analyse a posteriori). Cette boucle de validation remplace le recours à des groupes témoins et constitue la « marque » épistémologique de la méthode.',
  'Croire que l''ingénierie didactique est simplement une bonne préparation de cours. C''est une démarche de recherche rigoureuse avec une validation systématique de ses hypothèses, pas un simple travail de conception pédagogique.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000007',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'qcm',
  'Que comprend la phase des « analyses préalables » dans l''ingénierie didactique ?',
  NULL,
  '[{"id":"a","label":"L''observation des productions des élèves lors de la première séance"},{"id":"b","label":"L''analyse épistémologique du savoir, l''analyse des obstacles et l''analyse du rapport actuel des élèves au savoir"},{"id":"c","label":"La définition des objectifs pédagogiques du programme officiel"},{"id":"d","label":"La construction du bilan de la séquence et des remédiations"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les analyses préalables (phase 1) portent sur : l''analyse épistémologique du contenu (histoire et genèse du savoir), l''analyse des obstacles épistémologiques et didactiques identifiés dans la littérature, l''analyse des conceptions des élèves, et l''analyse des contraintes institutionnelles (programmes, manuels). Ces analyses nourrissent la conception des situations.',
  'Confondre les analyses préalables (phase 1 — avant toute conception) avec la phase de bilan (phase 4). Les analyses préalables se situent en amont de la création de la séquence.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'qcm',
  'En ingénierie didactique, modifier la valeur numérique d''un problème (ex. : passer de nombres entiers à des décimaux) constitue un exemple de :',
  NULL,
  '[{"id":"a","label":"Transposition didactique"},{"id":"b","label":"Jeu sur une variable didactique"},{"id":"c","label":"Différenciation pédagogique"},{"id":"d","label":"Institutionnalisation du savoir"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Changer les nombres (entiers → décimaux) est un exemple classique de jeu sur une variable didactique numérique. Ce changement modifie les stratégies disponibles pour les élèves : avec des entiers, on peut dessiner ou dénombrer ; avec des décimaux, ces stratégies deviennent inefficaces et l''élève est contraint de mobiliser des procédures plus sophistiquées.',
  'Confondre avec la différenciation pédagogique. La différenciation vise à adapter l''enseignement aux besoins individuels des élèves. Le jeu sur les variables didactiques vise à orienter les stratégies de tous les élèves vers un apprentissage visé.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? En ingénierie didactique, la phase d''expérimentation correspond à la mise en œuvre en classe de la séquence telle qu''elle a été conçue dans l''analyse a priori.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'La phase d''expérimentation consiste effectivement à mettre en œuvre en classe la séquence conçue. L''enseignant-chercheur observe et recueille des données (productions des élèves, interactions, temps...) sans modifier le scénario en cours d''expérimentation. C''est ensuite dans l''analyse a posteriori que ces observations sont interprétées.',
  'Croire que l''expérimentation permet de modifier la séquence en temps réel selon ce qui se passe. Dans le cadre de l''ingénierie didactique, la fidélité au scénario prévu est importante pour pouvoir valider ou infirmer l''analyse a priori.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c07d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_did_ingenierie_didactique',
  'Ingénierie didactique en mathématiques',
  'Standard',
  'qcm',
  'En quoi l''ingénierie didactique peut-elle être utile à un professeur des écoles dans sa pratique quotidienne ?',
  NULL,
  '[{"id":"a","label":"Elle lui permet de ne pas avoir à connaître les programmes officiels"},{"id":"b","label":"Elle lui fournit un cadre rigoureux pour analyser des situations d''apprentissage et adapter ses choix didactiques en fonction des obstacles prévisibles"},{"id":"c","label":"Elle remplace la préparation habituelle des cours par une méthode algorithmique"},{"id":"d","label":"Elle garantit que tous les élèves atteignent les objectifs sans différenciation"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Même si l''ingénierie didactique au sens strict est une démarche de recherche, ses concepts (variables didactiques, analyse a priori, anticipation des obstacles, validation) sont transposables à la pratique ordinaire. Un PE peut s''en inspirer pour analyser les difficultés prévisibles des élèves, choisir les variables d''une situation et évaluer l''efficacité de ses choix didactiques après coup.',
  'Croire que l''ingénierie didactique est réservée aux chercheurs et n''a aucune application pratique pour un PE en classe. Ses outils conceptuels enrichissent la réflexion didactique au quotidien.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
