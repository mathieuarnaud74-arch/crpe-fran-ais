-- Seed: Tri et classement de données (7 exercices)
-- Subdomain: organisation_donnees | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0b0000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_tri_classement_donnees',
  'Tri et classement de données', 'Facile',
  'qcm',
  'On relève les tailles (en cm) de 8 élèves : 142, 138, 155, 129, 147, 131, 150, 136. Quel est le classement correct de ces tailles dans l''ordre croissant ?',
  NULL,
  '[{"id":"a","label":"129 ; 131 ; 136 ; 138 ; 142 ; 147 ; 150 ; 155"},{"id":"b","label":"155 ; 150 ; 147 ; 142 ; 138 ; 136 ; 131 ; 129"},{"id":"c","label":"129 ; 131 ; 138 ; 136 ; 142 ; 147 ; 150 ; 155"},{"id":"d","label":"129 ; 131 ; 136 ; 142 ; 138 ; 147 ; 150 ; 155"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Trier des données dans l''ordre croissant signifie les ranger de la plus petite à la plus grande valeur. On identifie d''abord le minimum (129), puis on place chaque valeur suivante dans l''ordre : 129 < 131 < 136 < 138 < 142 < 147 < 150 < 155. Ce classement est une étape fondamentale en statistiques car il permet ensuite de déterminer la médiane, les quartiles et l''étendue de la série. C''est la première opération à effectuer avant toute analyse statistique.',
  'Inverser deux valeurs proches lors du tri, par exemple 136 et 138. Quand les nombres sont proches, il faut comparer chiffre par chiffre pour éviter les erreurs de classement.',
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
  'fb0b0000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_tri_classement_donnees',
  'Tri et classement de données', 'Facile',
  'qcm',
  'Lors d''une enquête sur les moyens de transport utilisés par les élèves d''une école, on obtient les réponses suivantes : voiture, bus, vélo, voiture, marche, bus, voiture, vélo, bus, marche, voiture, bus, marche, vélo, voiture. Dans quelle catégorie y a-t-il le plus d''élèves ?',
  NULL,
  '[{"id":"a","label":"Bus (4 élèves)"},{"id":"b","label":"Voiture (5 élèves)"},{"id":"c","label":"Vélo (3 élèves)"},{"id":"d","label":"Marche (4 élèves)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour organiser ces données qualitatives, on classe les réponses par catégories et on compte l''effectif de chacune. Voiture : 5 occurrences. Bus : 4 occurrences. Marche : 3 occurrences. Vélo : 3 occurrences. La catégorie « voiture » est la plus fréquente avec 5 élèves. Ce regroupement par catégories est la base de l''organisation des données qualitatives : on passe d''une liste brute de réponses à un tableau de fréquences exploitable.',
  'Se tromper dans le décompte en oubliant une occurrence ou en comptant deux fois la même réponse. Une méthode fiable consiste à barrer chaque donnée au fur et à mesure qu''on la comptabilise.',
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
  'fb0b0000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_tri_classement_donnees',
  'Tri et classement de données', 'Facile',
  'reponse_courte',
  'L''élève a relevé les résultats d''un lancer de dé avec des bâtons de comptage (tally marks). Le résultat « 3 » est noté : ꠹꠹꠹ II (trois groupes de 5 barrés et 2 bâtons). Quel est l''effectif correspondant au résultat « 3 » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["17","17 fois"]}'::jsonb,
  'Les bâtons de comptage (ou tally marks) regroupent les occurrences par paquets de 5 : quatre traits verticaux barrés par un trait diagonal forment un groupe de 5. Ici, on a 3 groupes de 5 plus 2 traits isolés : 3 × 5 + 2 = 15 + 2 = 17. Cette technique de comptage est enseignée dès le cycle 2 et permet de passer efficacement d''une collecte de données brutes à un tableau d''effectifs. Elle facilite le dénombrement en évitant les erreurs de comptage un par un.',
  'Compter chaque trait individuellement sans reconnaître le groupement par 5, ou oublier le trait diagonal qui barre le groupe (compter 4 au lieu de 5 par groupe).',
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
  'fb0b0000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_tri_classement_donnees',
  'Tri et classement de données', 'Facile',
  'vrai_faux',
  'On mesure les températures quotidiennes sur une semaine : 12 °C, 14 °C, 11 °C, 28 °C, 13 °C, 12 °C, 14 °C. La valeur 28 °C peut être considérée comme une valeur atypique (outlier) dans cette série.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Les six autres valeurs sont comprises entre 11 °C et 14 °C, formant un groupe homogène. La valeur 28 °C s''écarte fortement de ce groupe : elle est deux fois plus élevée que la moyenne des autres valeurs (environ 12,7 °C). On parle de valeur atypique ou aberrante (outlier) quand une donnée s''éloigne significativement du reste de la série. Identifier ces valeurs est important car elles peuvent résulter d''une erreur de mesure ou d''un phénomène exceptionnel, et elles peuvent fausser les indicateurs statistiques comme la moyenne.',
  'Considérer que toute valeur différente des autres est automatiquement une erreur. Une valeur atypique peut être correcte (un jour exceptionnellement chaud) mais mérite d''être signalée et discutée.',
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
  'fb0b0000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_tri_classement_donnees',
  'Tri et classement de données', 'Facile',
  'qcm',
  'On relève l''âge de 20 participants à une activité sportive. Les âges vont de 18 à 65 ans. On souhaite regrouper ces données en classes d''amplitude égale. Quel regroupement en 5 classes est le plus adapté ?',
  NULL,
  '[{"id":"a","label":"[18 ; 28[ , [28 ; 38[ , [38 ; 48[ , [48 ; 58[ , [58 ; 68["},{"id":"b","label":"[18 ; 27[ , [27 ; 36[ , [36 ; 45[ , [45 ; 54[ , [54 ; 65]"},{"id":"c","label":"[0 ; 20[ , [20 ; 40[ , [40 ; 60[ , [60 ; 80[ , [80 ; 100["},{"id":"d","label":"[18 ; 25[ , [25 ; 35[ , [35 ; 50[ , [50 ; 60[ , [60 ; 65]"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''étendue de la série est 65 − 18 = 47. Pour 5 classes d''amplitude égale, on choisit une amplitude de 10 (qui couvre bien l''étendue : 5 × 10 = 50 ≥ 47). Le regroupement [18 ; 28[, [28 ; 38[, [38 ; 48[, [48 ; 58[, [58 ; 68[ respecte trois critères importants : (1) les classes sont de même amplitude (10 ans), (2) elles couvrent toutes les valeurs observées, (3) elles ne se chevauchent pas grâce à la convention des intervalles semi-ouverts. La réponse (d) a des amplitudes inégales, (c) contient des classes inutiles (0-18 et 80-100 sont vides), et (b) a des amplitudes de 9 qui ne couvrent pas exactement l''étendue.',
  'Choisir des classes d''amplitudes inégales ou qui ne couvrent pas toutes les valeurs. Les classes doivent être de même largeur pour permettre des comparaisons visuelles correctes dans un histogramme.',
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
  'fb0b0000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_tri_classement_donnees',
  'Tri et classement de données', 'Facile',
  'reponse_courte',
  'On dispose des notes suivantes obtenues par 10 élèves : 8, 15, 12, 8, 14, 10, 8, 12, 15, 10. Compléter le tableau d''effectifs en indiquant l''effectif de la note qui apparaît le plus souvent.',
  'Notes relevées : 8 — 15 — 12 — 8 — 14 — 10 — 8 — 12 — 15 — 10',
  NULL,
  '{"mode":"text","acceptableAnswers":["3","3 fois","3 élèves"]}'::jsonb,
  'Pour construire le tableau d''effectifs, on identifie les valeurs distinctes et on compte combien de fois chacune apparaît. Note 8 : 3 fois. Note 10 : 2 fois. Note 12 : 2 fois. Note 14 : 1 fois. Note 15 : 2 fois. La note 8 apparaît 3 fois, c''est la plus fréquente : on l''appelle le mode de la série. Vérification : 3 + 2 + 2 + 1 + 2 = 10, ce qui correspond bien à l''effectif total. Le passage de la liste brute au tableau d''effectifs est une compétence fondamentale en statistiques descriptives.',
  'Oublier une occurrence dans le comptage, surtout quand les données ne sont pas triées. Il est recommandé de trier d''abord la série avant de compter les effectifs.',
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
  'fb0b0000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_tri_classement_donnees',
  'Tri et classement de données', 'Facile',
  'qcm',
  'Une enseignante a mené un sondage auprès de 30 élèves sur leur fruit préféré. Les résultats bruts sont : pomme (×8), banane (×6), fraise (×9), orange (×4), raisin (×3). Elle souhaite présenter ces résultats dans un tableau organisé. Quel classement est le plus pertinent pour mettre en valeur les préférences des élèves ?',
  NULL,
  '[{"id":"a","label":"Par ordre alphabétique des fruits"},{"id":"b","label":"Par effectif décroissant : fraise (9), pomme (8), banane (6), orange (4), raisin (3)"},{"id":"c","label":"Par effectif croissant : raisin (3), orange (4), banane (6), pomme (8), fraise (9)"},{"id":"d","label":"Dans l''ordre de collecte des réponses"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour mettre en valeur les préférences, le classement par effectif décroissant est le plus pertinent : fraise (9), pomme (8), banane (6), orange (4), raisin (3). Ce classement permet d''identifier immédiatement le fruit le plus populaire (fraise) et le moins populaire (raisin). On vérifie la cohérence : 9 + 8 + 6 + 4 + 3 = 30, ce qui correspond bien à l''effectif total de l''enquête. Le choix du mode de classement dépend de l''objectif : par effectif pour analyser les préférences, par ordre alphabétique pour faciliter la recherche d''une catégorie spécifique.',
  'Présenter les données dans l''ordre de collecte (sans tri), ce qui rend l''interprétation difficile. L''organisation des données est une étape essentielle entre la collecte brute et l''analyse statistique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
