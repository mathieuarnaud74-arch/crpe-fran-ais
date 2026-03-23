-- Seed: Tableaux d'effectifs et fréquences (7 exercices)
-- Subdomain: organisation_donnees | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences', 'Facile',
  'qcm',
  'Un enseignant a demandé à ses 25 élèves quel était leur fruit préféré. Le tableau suivant résume les résultats : Pomme → 8 élèves, Banane → 6 élèves, Fraise → 7 élèves, Orange → 4 élèves. Quel est l''effectif du fruit « Fraise » ?',
  NULL,
  '[{"id":"a","label":"4"},{"id":"b","label":"6"},{"id":"c","label":"7"},{"id":"d","label":"8"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''effectif d''une modalité correspond au nombre d''individus qui présentent cette modalité. Ici, 7 élèves ont choisi la fraise comme fruit préféré. L''effectif de « Fraise » est donc 7. Lire un effectif dans un tableau revient simplement à repérer la valeur associée à la modalité concernée.',
  'L''erreur fréquente est de confondre l''effectif avec la fréquence ou le rang de la modalité dans le tableau.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences', 'Facile',
  'reponse_courte',
  'Dans une classe de 30 élèves, on a relevé les couleurs de leurs yeux : Marron → 12, Bleu → 9, Vert → 5, Gris → 4. Quel est l''effectif total de cette série statistique ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30"]}'::jsonb,
  'L''effectif total est la somme de tous les effectifs partiels : 12 + 9 + 5 + 4 = 30. Ce résultat correspond bien au nombre total d''élèves dans la classe. Vérifier que l''effectif total correspond à la taille de la population étudiée est un bon réflexe pour détecter d''éventuelles erreurs dans un tableau.',
  'L''erreur courante est de confondre l''effectif total avec le nombre de modalités (ici 4 couleurs) au lieu de la somme des effectifs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences', 'Facile',
  'qcm',
  'Dans un sondage portant sur 40 personnes, 10 ont choisi le cinéma comme loisir préféré. Quelle est la fréquence de la modalité « Cinéma » ?',
  NULL,
  '[{"id":"a","label":"0,10"},{"id":"b","label":"0,25"},{"id":"c","label":"0,40"},{"id":"d","label":"4"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La fréquence d''une modalité se calcule en divisant l''effectif de cette modalité par l''effectif total : fréquence = effectif / effectif total = 10 / 40 = 0,25. La fréquence est toujours un nombre compris entre 0 et 1. Elle exprime la proportion d''individus concernés par cette modalité.',
  'L''erreur la plus fréquente est de confondre effectif et fréquence, ou de diviser l''effectif total par l''effectif partiel (40 ÷ 10 = 4) au lieu de l''inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences', 'Facile',
  'vrai_faux',
  'Vrai ou faux : une fréquence de 0,35 correspond à un pourcentage de 35 %.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir une fréquence en pourcentage, on la multiplie par 100. Ainsi, 0,35 × 100 = 35 %. Inversement, pour passer d''un pourcentage à une fréquence, on divise par 100 : 35 % = 35 ÷ 100 = 0,35. La fréquence est l''écriture décimale de la proportion, le pourcentage en est l''écriture centésimale.',
  'L''erreur fréquente est de confondre le sens de la multiplication ou de la division par 100, par exemple en pensant que 0,35 correspond à 3,5 %.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences', 'Facile',
  'reponse_courte',
  'Dans un tableau de fréquences, on lit : Sport A → 0,30 ; Sport B → 0,25 ; Sport C → ? ; Sport D → 0,15. Quelle est la fréquence manquante du Sport C ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["0,30","0.30","0,3","0.3"]}'::jsonb,
  'La somme de toutes les fréquences d''un tableau statistique est toujours égale à 1. On calcule donc : fréquence(C) = 1 − (0,30 + 0,25 + 0,15) = 1 − 0,70 = 0,30. La fréquence du Sport C est 0,30, soit 30 %. Cette propriété (somme des fréquences = 1) est fondamentale pour vérifier la cohérence d''un tableau de fréquences.',
  'L''erreur courante est d''oublier que la somme des fréquences doit valoir 1 (ou 100 %), ou de se tromper dans la soustraction décimale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences', 'Facile',
  'qcm',
  'On considère le tableau suivant pour 50 élèves : Note 10 → effectif 15, fréquence 0,30 ; Note 12 → effectif ?, fréquence 0,40 ; Note 14 → effectif 10, fréquence 0,20 ; Note 16 → effectif 5, fréquence 0,10. Quel est l''effectif manquant pour la note 12 ?',
  NULL,
  '[{"id":"a","label":"15"},{"id":"b","label":"18"},{"id":"c","label":"20"},{"id":"d","label":"25"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''effectif se retrouve à partir de la fréquence en utilisant la formule : effectif = fréquence × effectif total. Ici : effectif(12) = 0,40 × 50 = 20. On peut vérifier : la somme des effectifs donne 15 + 20 + 10 + 5 = 50, ce qui est bien l''effectif total. On remarque aussi que la somme des fréquences vaut 0,30 + 0,40 + 0,20 + 0,10 = 1.',
  'L''erreur fréquente est de diviser l''effectif total par la fréquence (50 ÷ 0,40 = 125) au lieu de multiplier, ou de chercher la valeur manquante uniquement par soustraction sans utiliser la fréquence.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences', 'Facile',
  'qcm',
  'Un enseignant de cycle 3 a interrogé ses 20 élèves sur leur animal préféré. Voici les résultats : Chat → 7, Chien → 6, Lapin → 4, Poisson → 3. Il souhaite construire un diagramme circulaire. Quel angle (en degrés) correspondra au secteur « Chat » ?',
  NULL,
  '[{"id":"a","label":"70°"},{"id":"b","label":"105°"},{"id":"c","label":"126°"},{"id":"d","label":"140°"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Pour construire un diagramme circulaire, on calcule l''angle de chaque secteur à partir de la fréquence : fréquence(Chat) = 7/20 = 0,35. L''angle correspondant est : 0,35 × 360° = 126°. On peut aussi calculer directement : (7 ÷ 20) × 360 = 126°. Ce type de calcul est très fréquent dans les problèmes CRPE liés à l''organisation et la gestion de données, en lien avec les attendus du cycle 3.',
  'L''erreur courante est de multiplier l''effectif par 360 sans diviser par l''effectif total (7 × 360 = 2520), ou de confondre le pourcentage (35 %) avec l''angle en degrés (35°).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
