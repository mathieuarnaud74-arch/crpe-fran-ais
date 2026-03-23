-- Série : Moyenne, médiane et étendue
-- Sous-domaine : organisation_donnees | Niveau : Intermédiaire | Accès : premium
-- 7 questions — progression amorce → consolidation → approfondissement

-- Q1 — Amorce (QCM) — Calcul d'une moyenne simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_moyennes_medianes',
  'Moyenne, médiane et étendue', 'Intermediaire',
  'qcm',
  'Un élève a obtenu les notes suivantes en mathématiques : 12, 15, 9, 14 et 10. Quelle est sa moyenne ?',
  NULL,
  '[{"id":"a","label":"12"},{"id":"b","label":"11"},{"id":"c","label":"12,5"},{"id":"d","label":"10"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour calculer la moyenne, on additionne toutes les valeurs puis on divise par l''effectif total :\n(12 + 15 + 9 + 14 + 10) ÷ 5 = 60 ÷ 5 = 12.\nLa moyenne est donc 12.',
  'Erreur fréquente : diviser par un nombre différent du nombre de valeurs (par exemple diviser par 4 au lieu de 5), ou faire une erreur dans la somme en oubliant une valeur.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Amorce (vrai/faux) — Médiane d'une série impaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_moyennes_medianes',
  'Moyenne, médiane et étendue', 'Intermediaire',
  'vrai_faux',
  'La série de valeurs ordonnées est : 3, 7, 8, 12, 15. La médiane de cette série est 8.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La série comporte 5 valeurs (effectif impair). La médiane est la valeur centrale, c''est-à-dire celle qui occupe la position (5 + 1) ÷ 2 = 3ᵉ position dans la série ordonnée.\nLa 3ᵉ valeur est 8, donc la médiane est bien 8.\nRappel : la médiane partage la série ordonnée en deux sous-ensembles de même effectif.',
  'Confondre la médiane avec la moyenne (qui vaut ici (3 + 7 + 8 + 12 + 15) ÷ 5 = 9), ou oublier d''ordonner les valeurs avant de chercher la valeur centrale.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Consolidation (réponse courte) — Étendue d'une série
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_moyennes_medianes',
  'Moyenne, médiane et étendue', 'Intermediaire',
  'reponse_courte',
  'Les températures relevées sur une semaine sont : 5 °C, 8 °C, 3 °C, 11 °C, 7 °C, 2 °C, 9 °C. Quelle est l''étendue de cette série de températures ? (Donner la valeur en °C, sans unité.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["9","9°C","9 °C"]}'::jsonb,
  'L''étendue d''une série statistique est la différence entre la valeur maximale et la valeur minimale.\nValeur maximale : 11 °C\nValeur minimale : 2 °C\nÉtendue = 11 − 2 = 9 °C.\nL''étendue mesure la dispersion des données : plus elle est grande, plus les valeurs sont dispersées.',
  'Confondre l''étendue avec la moyenne ou la médiane. Autre erreur : soustraire deux valeurs quelconques au lieu de la plus grande et la plus petite.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Consolidation (QCM) — Moyenne pondérée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_moyennes_medianes',
  'Moyenne, médiane et étendue', 'Intermediaire',
  'qcm',
  'Dans une classe, les résultats à un contrôle sont les suivants :\n• Note 8 : 5 élèves\n• Note 12 : 10 élèves\n• Note 16 : 5 élèves\nQuelle est la moyenne pondérée de la classe ?',
  NULL,
  '[{"id":"a","label":"12"},{"id":"b","label":"11"},{"id":"c","label":"12,5"},{"id":"d","label":"11,5"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour calculer la moyenne pondérée, on multiplie chaque valeur par son effectif, on additionne ces produits, puis on divise par l''effectif total :\n(8 × 5 + 12 × 10 + 16 × 5) ÷ (5 + 10 + 5)\n= (40 + 120 + 80) ÷ 20\n= 240 ÷ 20 = 12.\nLa moyenne pondérée est 12.',
  'Calculer la moyenne simple des trois notes (8 + 12 + 16) ÷ 3 = 12 (ici le résultat coïncide par hasard). L''erreur courante est de ne pas tenir compte des effectifs, ce qui donne un résultat faux dès que les effectifs sont inégaux.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Consolidation (réponse courte) — Médiane d'une série paire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_moyennes_medianes',
  'Moyenne, médiane et étendue', 'Intermediaire',
  'reponse_courte',
  'Voici les tailles (en cm) de 6 élèves, rangées par ordre croissant : 142, 148, 153, 157, 162, 170. Déterminer la médiane de cette série.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["155","155 cm","155cm"]}'::jsonb,
  'La série comporte 6 valeurs (effectif pair). La médiane est la demi-somme des deux valeurs centrales, c''est-à-dire les valeurs en 3ᵉ et 4ᵉ positions.\n3ᵉ valeur : 153\n4ᵉ valeur : 157\nMédiane = (153 + 157) ÷ 2 = 310 ÷ 2 = 155 cm.\nLorsque l''effectif est pair, la médiane n''est pas nécessairement une valeur de la série.',
  'Prendre uniquement la 3ᵉ valeur (153) ou la 4ᵉ valeur (157) sans faire la demi-somme. Autre erreur : oublier d''ordonner les valeurs avant de déterminer la médiane.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Approfondissement (QCM) — Comparaison moyenne/médiane sur données asymétriques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_moyennes_medianes',
  'Moyenne, médiane et étendue', 'Intermediaire',
  'qcm',
  'Les salaires mensuels (en euros) de 7 employés d''une entreprise sont : 1 500, 1 600, 1 600, 1 700, 1 800, 1 900, 5 000. Parmi les affirmations suivantes, laquelle est correcte ?',
  NULL,
  '[{"id":"a","label":"La moyenne est plus représentative que la médiane pour cette série."},{"id":"b","label":"La médiane vaut 1 700 € et la moyenne vaut environ 2 157 €. La médiane est plus représentative."},{"id":"c","label":"La moyenne et la médiane sont égales."},{"id":"d","label":"La médiane vaut 1 800 € et la moyenne vaut 2 000 €."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Calcul de la médiane : la série est déjà ordonnée et comporte 7 valeurs. La médiane est la 4ᵉ valeur : 1 700 €.\nCalcul de la moyenne : (1 500 + 1 600 + 1 600 + 1 700 + 1 800 + 1 900 + 5 000) ÷ 7 = 15 100 ÷ 7 ≈ 2 157 €.\nLa valeur extrême 5 000 € « tire » la moyenne vers le haut. Dans ce cas, la médiane (1 700 €) est plus représentative de la tendance centrale car elle n''est pas influencée par les valeurs extrêmes.\nC''est un résultat classique : pour les distributions asymétriques, la médiane est souvent préférée à la moyenne.',
  'Penser que la moyenne est toujours le meilleur indicateur de tendance centrale. Or, en présence de valeurs extrêmes (ici 5 000 €), la moyenne est « tirée » vers cette valeur et ne reflète plus le salaire typique.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Approfondissement (réponse courte) — Moyenne pondérée à partir d'un tableau de fréquences
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_moyennes_medianes',
  'Moyenne, médiane et étendue', 'Intermediaire',
  'reponse_courte',
  'Lors d''une évaluation, les résultats de 40 élèves sont regroupés dans le tableau suivant :\n• Note 6 : 4 élèves\n• Note 10 : 12 élèves\n• Note 14 : 16 élèves\n• Note 18 : 8 élèves\nCalculer la moyenne de la classe et déterminer la médiane. Donner la réponse sous la forme « moyenne ; médiane » (par exemple : 11,5 ; 12).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12,6 ; 14","12.6 ; 14","12,6;14","12.6;14","12,60 ; 14","12,6 ; 14,0"]}'::jsonb,
  'Calcul de la moyenne pondérée :\n(6 × 4 + 10 × 12 + 14 × 16 + 18 × 8) ÷ 40\n= (24 + 120 + 224 + 144) ÷ 40\n= 504 ÷ 40 = 12,6.\n\nDétermination de la médiane :\nL''effectif total est 40 (pair). La médiane est la demi-somme des 20ᵉ et 21ᵉ valeurs.\nEffectifs cumulés : note 6 → 4 élèves ; note 10 → 4 + 12 = 16 élèves ; note 14 → 16 + 16 = 32 élèves.\nLes 20ᵉ et 21ᵉ élèves ont tous les deux la note 14 (ils sont dans le groupe 17 à 32).\nMédiane = (14 + 14) ÷ 2 = 14.',
  'Pour la médiane, confondre la position (20ᵉ et 21ᵉ) avec la valeur elle-même. Autre erreur : ne pas utiliser les effectifs cumulés et prendre la médiane des notes (6, 10, 14, 18) au lieu de la médiane de la série complète de 40 valeurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;