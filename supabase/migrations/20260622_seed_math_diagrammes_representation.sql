-- Série : Diagrammes et représentations graphiques
-- Sous-domaine : organisation_donnees | Niveau : Facile | Accès : free
-- 7 questions — progression amorce → consolidation → approfondissement

-- Q1 — Amorce (QCM) — Lecture d'un diagramme en bâtons
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0040000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_diagrammes_representation',
  'Diagrammes et représentations graphiques', 'Facile',
  'qcm',
  'Un diagramme en bâtons représente le nombre d''animaux adoptés dans un refuge sur 4 mois :\n• Janvier : 15 animaux\n• Février : 20 animaux\n• Mars : 25 animaux\n• Avril : 10 animaux\n\nCombien d''animaux ont été adoptés au total sur ces 4 mois ?',
  NULL,
  '[{"id":"a","label":"60"},{"id":"b","label":"70"},{"id":"c","label":"65"},{"id":"d","label":"55"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour trouver le total, on additionne les effectifs lus sur chaque bâton du diagramme :\n15 + 20 + 25 + 10 = 70 animaux.\n\nUn diagramme en bâtons représente des données quantitatives discrètes ou qualitatives. La hauteur de chaque bâton est proportionnelle à l''effectif de la catégorie correspondante.',
  'Erreur de calcul dans l''addition, par exemple oublier un mois (15 + 20 + 25 = 60) ou confondre deux valeurs lues sur le diagramme.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Amorce (vrai/faux) — Diagramme circulaire et pourcentage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0040000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_diagrammes_representation',
  'Diagrammes et représentations graphiques', 'Facile',
  'vrai_faux',
  'Dans un diagramme circulaire, une catégorie représente 25 % du total. L''angle du secteur correspondant mesure 90°.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Un diagramme circulaire (ou « camembert ») représente un cercle complet, soit 360°.\nPour convertir un pourcentage en angle : angle = pourcentage × 360° / 100.\n25 % × 360° / 100 = 90°.\nL''affirmation est vraie : un quart du cercle (25 %) correspond bien à un angle de 90°.\n\nFormule générale : angle = (effectif de la catégorie / effectif total) × 360°.',
  'Ne pas connaître la correspondance entre pourcentage et angle dans un diagramme circulaire. Erreur fréquente : confondre 25 % avec 25° au lieu de 90°.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Consolidation (réponse courte) — Calcul d'un angle dans un diagramme circulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0040000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_diagrammes_representation',
  'Diagrammes et représentations graphiques', 'Facile',
  'reponse_courte',
  'Dans une classe de 30 élèves, 12 préfèrent les mathématiques. On souhaite représenter cette donnée dans un diagramme circulaire. Quel angle (en degrés) doit mesurer le secteur « mathématiques » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["144","144°","144 °"]}'::jsonb,
  'L''angle du secteur se calcule par la formule :\nAngle = (effectif de la catégorie / effectif total) × 360°\nAngle = (12 / 30) × 360° = 0,4 × 360° = 144°.\n\nOn peut vérifier : 12/30 = 2/5, et 2/5 × 360 = 720/5 = 144°.\nLes 12 élèves qui préfèrent les mathématiques sont représentés par un secteur de 144°.',
  'Calculer (12 / 360) × 30 au lieu de (12 / 30) × 360, en inversant le rôle du total et de l''angle. Autre erreur : calculer 12 × 30 = 360 par coïncidence et croire que l''angle est 360° (le cercle entier).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Consolidation (QCM) — Distinction histogramme / diagramme en bâtons
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0040000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_diagrammes_representation',
  'Diagrammes et représentations graphiques', 'Facile',
  'qcm',
  'Quelle est la différence principale entre un histogramme et un diagramme en bâtons ?',
  NULL,
  '[{"id":"a","label":"L''histogramme utilise des couleurs, pas le diagramme en bâtons."},{"id":"b","label":"Dans un histogramme, les rectangles sont accolés car ils représentent des classes d''une variable continue ; dans un diagramme en bâtons, les bâtons sont séparés car ils représentent des valeurs discrètes."},{"id":"c","label":"L''histogramme a toujours des bâtons de même largeur, contrairement au diagramme en bâtons."},{"id":"d","label":"Le diagramme en bâtons ne peut représenter que des données qualitatives."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La différence fondamentale est la nature des données représentées :\n• L''histogramme représente une variable quantitative continue, regroupée en classes (intervalles). Les rectangles sont accolés car les classes sont contiguës sur un axe continu.\n• Le diagramme en bâtons représente une variable discrète (quantitative ou qualitative). Les bâtons sont séparés car il n''y a pas de continuité entre les valeurs.\n\nRemarque importante : dans un histogramme à classes d''amplitudes inégales, c''est l''aire des rectangles (et non leur hauteur) qui est proportionnelle à l''effectif.',
  'Penser que la seule différence est esthétique (couleurs, espacements) alors qu''elle est liée à la nature statistique des données (variable continue vs discrète).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Consolidation (vrai/faux) — Identifier un graphique trompeur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0040000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_diagrammes_representation',
  'Diagrammes et représentations graphiques', 'Facile',
  'vrai_faux',
  'Un diagramme en bâtons montre les ventes d''une entreprise sur deux ans. L''axe vertical commence à 950 (et non à 0). Les ventes passent de 1 000 à 1 050 unités.\n\nAffirmation : « Ce graphique peut donner l''impression visuelle d''une forte augmentation alors que la hausse n''est que de 5 %. »',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''affirmation est vraie. Lorsque l''axe des ordonnées ne commence pas à 0, les différences visuelles entre les bâtons sont amplifiées.\nIci, la hausse réelle est : (1 050 − 1 000) / 1 000 × 100 = 5 %.\nMais visuellement, le bâton de 1 050 semble environ deux fois plus haut que celui de 1 000 (car on compare les hauteurs au-dessus de 950 : 100 vs 50).\n\nC''est un procédé de manipulation graphique fréquent. Pour lire correctement un graphique, il faut toujours vérifier :\n1. L''origine de l''axe des ordonnées\n2. La graduation et l''échelle utilisées\n3. La présence éventuelle d''une rupture d''axe (symbolisée par un zigzag).',
  'Ne pas remarquer que l''axe ne commence pas à 0 et interpréter le graphique comme si l''augmentation était proportionnelle à la différence de hauteur visuelle des bâtons.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Approfondissement (QCM) — Lecture d'un graphique en courbe avec changement d'échelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0040000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_diagrammes_representation',
  'Diagrammes et représentations graphiques', 'Facile',
  'qcm',
  'Un graphique en courbe représente l''évolution de la température d''un patient sur 24 heures. L''axe horizontal va de 0 h à 24 h (1 graduation = 2 heures). L''axe vertical va de 36 °C à 40 °C (1 graduation = 0,5 °C). À 8 h, la courbe passe par la 3ᵉ graduation au-dessus de 36 °C. Quelle est la température du patient à 8 h ?',
  NULL,
  '[{"id":"a","label":"37 °C"},{"id":"b","label":"37,5 °C"},{"id":"c","label":"38 °C"},{"id":"d","label":"39 °C"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Chaque graduation sur l''axe vertical représente 0,5 °C. En partant de 36 °C :\n1ʳᵉ graduation : 36,5 °C\n2ᵉ graduation : 37 °C\n3ᵉ graduation : 37,5 °C\n\nLa température du patient à 8 h est 37,5 °C.\n\nPour lire correctement un graphique en courbe, il est essentiel d''identifier d''abord la valeur représentée par chaque graduation sur les deux axes avant de lire les points.',
  'Compter les graduations comme des entiers (36 + 3 = 39 °C) en oubliant que chaque graduation vaut 0,5 °C et non 1 °C. C''est une erreur classique de lecture d''échelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Approfondissement (réponse courte) — Construire un diagramme circulaire à partir de données réelles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0040000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_diagrammes_representation',
  'Diagrammes et représentations graphiques', 'Facile',
  'reponse_courte',
  'Une enquête auprès de 200 personnes donne les résultats suivants sur leur moyen de transport préféré :\n• Voiture : 80 personnes\n• Bus : 50 personnes\n• Vélo : 40 personnes\n• Marche : 30 personnes\n\nPour construire un diagramme circulaire, calculer l''angle du secteur correspondant au bus. Donner la réponse en degrés.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["90","90°","90 °"]}'::jsonb,
  'L''angle du secteur « Bus » se calcule :\nAngle = (effectif Bus / effectif total) × 360°\nAngle = (50 / 200) × 360° = 0,25 × 360° = 90°.\n\nVérification avec tous les secteurs :\n• Voiture : (80/200) × 360 = 144°\n• Bus : (50/200) × 360 = 90°\n• Vélo : (40/200) × 360 = 72°\n• Marche : (30/200) × 360 = 54°\nTotal : 144 + 90 + 72 + 54 = 360°. ✓\n\nChaque secteur angulaire est proportionnel à l''effectif de la catégorie qu''il représente.',
  'Calculer (50 / 360) × 200 au lieu de (50 / 200) × 360, en inversant le total et l''angle. Autre erreur : calculer le pourcentage (25 %) et le donner comme angle (25°) au lieu de 90°.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;