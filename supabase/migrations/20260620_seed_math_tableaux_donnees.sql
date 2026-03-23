-- Série : Tableaux de données — Lecture et interprétation
-- Sous-domaine : organisation_donnees | Niveau : Intermédiaire | Accès : free
-- 7 questions — progression amorce → consolidation → approfondissement

-- Q1 — Amorce (QCM) — Lecture directe d'un tableau à double entrée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation', 'Intermediaire',
  'qcm',
  'Dans une école, le tableau à double entrée suivant recense les élèves pratiquant un sport :\n\n|          | Football | Natation | Tennis |\n|----------|----------|----------|--------|\n| Garçons  |    18    |    12    |    8   |\n| Filles   |    10    |    15    |   11   |\n\nCombien de filles pratiquent la natation ?',
  NULL,
  '[{"id":"a","label":"12"},{"id":"b","label":"15"},{"id":"c","label":"10"},{"id":"d","label":"27"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Dans un tableau à double entrée, on repère l''intersection de la ligne « Filles » et de la colonne « Natation ». La valeur lue est 15.\nLa réponse 12 correspond aux garçons pratiquant la natation (mauvaise ligne). La réponse 27 correspond au total de la colonne natation (12 + 15), ce qui n''est pas demandé.',
  'Confondre les lignes et les colonnes dans un tableau à double entrée : lire la valeur des garçons (12) au lieu de celle des filles (15).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Amorce (vrai/faux) — Interprétation d'un total dans un tableau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation', 'Intermediaire',
  'vrai_faux',
  'Un tableau recense les moyens de transport utilisés par 200 salariés pour se rendre au travail :\n• Voiture : 90\n• Transport en commun : 70\n• Vélo : 25\n• Marche : 15\n\nAffirmation : « Plus de la moitié des salariés utilisent la voiture ou les transports en commun. »',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'On additionne les effectifs « Voiture » et « Transport en commun » : 90 + 70 = 160 salariés.\nLa moitié de 200 est 100. Puisque 160 > 100, plus de la moitié des salariés utilisent la voiture ou les transports en commun.\nEn proportion : 160/200 = 80 %, ce qui est bien supérieur à 50 %.',
  'Ne comparer qu''une seule catégorie à la moitié (par exemple 90 < 100 donc « non »), en oubliant que l''affirmation porte sur la réunion de deux catégories.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Consolidation (réponse courte) — Calcul de proportion à partir d'un tableau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation', 'Intermediaire',
  'reponse_courte',
  'Dans une bibliothèque, on a classé 250 livres empruntés en un mois :\n• Romans : 100\n• BD : 60\n• Documentaires : 50\n• Albums jeunesse : 40\n\nQuel pourcentage des emprunts représentent les BD ? (Donner la réponse en %.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["24","24%","24 %"]}'::jsonb,
  'Pour calculer le pourcentage, on divise l''effectif de la catégorie par l''effectif total, puis on multiplie par 100 :\n(60 ÷ 250) × 100 = 0,24 × 100 = 24 %.\nLes BD représentent 24 % des emprunts du mois.',
  'Diviser par le mauvais total (par exemple 60 ÷ 100 = 60 % en divisant par les romans au lieu du total), ou oublier de multiplier par 100 et donner 0,24 comme réponse.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Consolidation (QCM) — Identifier une tendance dans un tableau d'évolution
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation', 'Intermediaire',
  'qcm',
  'Le tableau suivant donne le nombre d''inscriptions dans une école sur 5 ans :\n\n| Année    | 2019 | 2020 | 2021 | 2022 | 2023 |\n|----------|------|------|------|------|------|\n| Inscrits |  180 |  175 |  190 |  195 |  210 |\n\nQuelle affirmation décrit le mieux l''évolution des inscriptions ?',
  NULL,
  '[{"id":"a","label":"Les inscriptions augmentent régulièrement chaque année."},{"id":"b","label":"Les inscriptions diminuent globalement sur la période."},{"id":"c","label":"Après une baisse en 2020, les inscriptions augmentent de façon continue jusqu''en 2023."},{"id":"d","label":"Les inscriptions stagnent autour de 190."}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'En lisant le tableau chronologiquement :\n• 2019 → 2020 : baisse de 180 à 175 (−5)\n• 2020 → 2021 : hausse de 175 à 190 (+15)\n• 2021 → 2022 : hausse de 190 à 195 (+5)\n• 2022 → 2023 : hausse de 195 à 210 (+15)\n\nOn observe une baisse initiale suivie d''une croissance continue. La réponse (a) est incorrecte car il y a une baisse en 2020. La réponse (d) est fausse car l''amplitude va de 175 à 210, bien au-delà de 190.',
  'Affirmer que les inscriptions augmentent « régulièrement » en ne regardant que la première et la dernière valeur (180 → 210), sans vérifier la baisse intermédiaire de 2020.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Consolidation (vrai/faux) — Tableau de fréquences relatives
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation', 'Intermediaire',
  'vrai_faux',
  'Un tableau de fréquences relatives donne les résultats suivants pour les couleurs préférées de 80 élèves :\n• Bleu : 0,35\n• Rouge : 0,25\n• Vert : 0,20\n• Jaune : 0,15\n• Autre : 0,05\n\nAffirmation : « 28 élèves ont choisi le bleu comme couleur préférée. »',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La fréquence relative du bleu est 0,35. Pour retrouver l''effectif, on multiplie la fréquence par l''effectif total :\n0,35 × 80 = 28 élèves.\nOn vérifie que la somme des fréquences vaut 1 : 0,35 + 0,25 + 0,20 + 0,15 + 0,05 = 1,00. ✓\nL''affirmation est correcte.',
  'Confondre fréquence relative et pourcentage : interpréter 0,35 comme 35 élèves au lieu de 0,35 × 80 = 28. La fréquence relative est un nombre entre 0 et 1, pas un effectif.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Approfondissement (QCM) — Croisement de données entre deux tableaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation', 'Intermediaire',
  'qcm',
  'Dans une enquête sur 120 élèves, on obtient le tableau suivant :\n\n|                | Demi-pensionnaire | Externe |\n|----------------|-------------------|---------|\n| Pratique sport |        48         |   24    |\n| Ne pratique pas|        32         |   16    |\n\nParmi les demi-pensionnaires, quel pourcentage pratique un sport ?',
  NULL,
  '[{"id":"a","label":"40 %"},{"id":"b","label":"48 %"},{"id":"c","label":"60 %"},{"id":"d","label":"66,7 %"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'On cherche le pourcentage de sportifs parmi les demi-pensionnaires uniquement.\nTotal des demi-pensionnaires : 48 + 32 = 80.\nDemi-pensionnaires pratiquant un sport : 48.\nPourcentage = (48 ÷ 80) × 100 = 60 %.\n\nL''erreur (a) vient du calcul 48 ÷ 120 = 40 % (proportion sur le total et non sur les demi-pensionnaires).\nL''erreur (b) consiste à confondre l''effectif 48 avec un pourcentage.',
  'Diviser par l''effectif total (120) au lieu du sous-total des demi-pensionnaires (80). C''est une erreur classique de confusion entre proportion conditionnelle et proportion globale.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Approfondissement (réponse courte) — Analyse complète d'un tableau de données CRPE
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation', 'Intermediaire',
  'reponse_courte',
  'Un tableau recense les résultats de 50 élèves à un test noté sur 20 :\n\n| Note       | [0 ; 8[ | [8 ; 12[ | [12 ; 16[ | [16 ; 20] |\n|------------|---------|----------|-----------|-----------|\n| Effectif   |    5    |    15    |    20     |    10     |\n\nCalculer la fréquence relative de la classe [12 ; 16[ exprimée en pourcentage.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["40","40%","40 %"]}'::jsonb,
  'La fréquence relative d''une classe se calcule en divisant l''effectif de cette classe par l''effectif total :\nEffectif de [12 ; 16[ : 20\nEffectif total : 5 + 15 + 20 + 10 = 50\nFréquence relative = 20 ÷ 50 = 0,40\nEn pourcentage : 0,40 × 100 = 40 %.\n\nOn peut vérifier : la somme de toutes les fréquences relatives doit valoir 1 (ou 100 %) :\n5/50 + 15/50 + 20/50 + 10/50 = 10 % + 30 % + 40 % + 20 % = 100 %. ✓',
  'Confondre effectif et fréquence : donner 20 au lieu de 40 %. Autre erreur : diviser par le nombre de classes (4) au lieu de l''effectif total (50).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;