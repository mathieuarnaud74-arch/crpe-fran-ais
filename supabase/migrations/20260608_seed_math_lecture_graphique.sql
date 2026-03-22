-- Série : Lecture graphique de fonctions (organisation_donnees)
-- 7 exercices, niveau Intermediaire, accès free
-- Progression : Q1-Q2 amorce → Q3-Q5 consolidation → Q6-Q7 approfondissement

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0230000-0000-0000-0000-000000000001', 'Mathematiques', 'organisation_donnees', 'math_lecture_graphique',
  'Lecture graphique de fonctions', 'Intermediaire', 'qcm',
  'Un graphique représente la température au cours d''une journée. À 6h il fait 8°C, à 14h il fait 22°C, à 20h il fait 15°C. Quelle est l''amplitude thermique de la journée ?', NULL,
  '[{"id": "A", "label": "7°C"}, {"id": "B", "label": "14°C"}, {"id": "C", "label": "22°C"}, {"id": "D", "label": "30°C"}]'::jsonb,
  '{"mode": "single", "value": "B"}'::jsonb,
  'L''amplitude thermique est la différence entre la température maximale et la température minimale relevées sur la période. Ici : 22°C − 8°C = 14°C. Il ne faut pas confondre avec la température maximale elle-même (22°C) ni avec un écart partiel (22 − 15 = 7).',
  'Confondre l''amplitude thermique avec la température maximale ou calculer un écart entre deux valeurs consécutives au lieu de prendre le maximum et le minimum.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0230000-0000-0000-0000-000000000002', 'Mathematiques', 'organisation_donnees', 'math_lecture_graphique',
  'Lecture graphique de fonctions', 'Intermediaire', 'vrai_faux',
  'Sur un graphique, si la courbe monte de gauche à droite, cela signifie que la grandeur représentée en ordonnée augmente.', NULL,
  NULL,
  '{"mode": "single", "value": "vrai"}'::jsonb,
  'Sur un graphique cartésien, l''axe horizontal (abscisses) représente généralement la variable indépendante (temps, distance…) qui croît de gauche à droite. Si la courbe monte dans ce sens, cela signifie que la valeur en ordonnée augmente quand l''abscisse augmente : la grandeur représentée est donc croissante.',
  'Confondre le sens de lecture du graphique ou penser que la courbe qui monte indique une diminution.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0230000-0000-0000-0000-000000000003', 'Mathematiques', 'organisation_donnees', 'math_lecture_graphique',
  'Lecture graphique de fonctions', 'Intermediaire', 'reponse_courte',
  'Un graphique montre la distance parcourue par un cycliste en fonction du temps. Les points relevés sont : (0h, 0 km), (1h, 20 km), (2h, 20 km), (3h, 50 km). Que s''est-il passé entre 1h et 2h ?', NULL,
  NULL,
  '{"mode": "flexible", "acceptableAnswers": ["arrêt", "arret", "pause", "il s''est arrêté", "il s''est arrete", "arrêt du cycliste", "le cycliste s''est arrêté", "il ne bouge pas", "il est à l''arrêt"]}'::jsonb,
  'Entre 1h et 2h, la distance reste constante à 20 km. Sur un graphique distance-temps, un segment horizontal signifie que la distance ne varie pas : le cycliste est à l''arrêt (vitesse nulle). Il a fait une pause d''une heure avant de reprendre sa route.',
  'Penser que le cycliste avance lentement alors que la distance est strictement constante, ce qui signifie un arrêt complet.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0230000-0000-0000-0000-000000000004', 'Mathematiques', 'organisation_donnees', 'math_lecture_graphique',
  'Lecture graphique de fonctions', 'Intermediaire', 'qcm',
  'Le graphique d''une fonction linéaire passe par l''origine et par le point (4 ; 12). Quelle est l''image de 7 par cette fonction ?', NULL,
  '[{"id": "A", "label": "28"}, {"id": "B", "label": "21"}, {"id": "C", "label": "19"}, {"id": "D", "label": "84"}]'::jsonb,
  '{"mode": "single", "value": "B"}'::jsonb,
  'Une fonction linéaire a pour expression f(x) = ax, où a est le coefficient directeur. Comme la droite passe par (4 ; 12), on a : a = 12 ÷ 4 = 3. Donc f(x) = 3x. L''image de 7 est f(7) = 3 × 7 = 21. Le distracteur 28 correspond à 4 × 7, et 84 à 12 × 7 : des erreurs classiques de confusion entre les données.',
  'Multiplier 7 par 4 ou par 12 au lieu de d''abord calculer le coefficient directeur (12 ÷ 4 = 3) puis de l''appliquer à 7.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0230000-0000-0000-0000-000000000005', 'Mathematiques', 'organisation_donnees', 'math_lecture_graphique',
  'Lecture graphique de fonctions', 'Intermediaire', 'qcm',
  'Un graphique en escalier montre les tarifs postaux selon le poids : de 0 à 20 g : 1,16 €, de 20 g à 100 g : 2,32 €, de 100 g à 250 g : 4,00 €. Un colis pèse exactement 100 g. Quel est son tarif ?', NULL,
  '[{"id": "A", "label": "1,16 €"}, {"id": "B", "label": "2,32 €"}, {"id": "C", "label": "4,00 €"}, {"id": "D", "label": "3,16 €"}]'::jsonb,
  '{"mode": "single", "value": "C"}'::jsonb,
  'Dans un graphique en escalier (fonction en paliers), les intervalles sont généralement fermés à gauche et ouverts à droite : [0 ; 20[, [20 ; 100[, [100 ; 250[. Un colis de 100 g tombe donc dans la tranche [100 ; 250[, au tarif de 4,00 €. C''est un piège classique aux valeurs limites.',
  'Choisir le tarif de la tranche inférieure (2,32 €) en pensant que 100 g est inclus dans l''intervalle « de 20 à 100 g », alors que la convention des paliers postaux place 100 g dans la tranche suivante.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0230000-0000-0000-0000-000000000006', 'Mathematiques', 'organisation_donnees', 'math_lecture_graphique',
  'Lecture graphique de fonctions', 'Intermediaire', 'reponse_courte',
  'Une courbe représente le remplissage d''une piscine. Elle est d''abord une droite pendant 2 h, atteignant 300 L, puis horizontale pendant 30 min, puis reprend avec une pente plus forte. Calculez le débit (en L/h) pendant la première phase.', NULL,
  NULL,
  '{"mode": "flexible", "acceptableAnswers": ["150 L/h", "150L/h", "150", "150 litres par heure"]}'::jsonb,
  'Pendant la première phase, la piscine se remplit de 0 à 300 L en 2 h. Le débit est constant (droite), donc : débit = 300 ÷ 2 = 150 L/h. La partie horizontale qui suit indique que le volume ne change plus : le robinet est fermé (arrêt du remplissage). La reprise avec une pente plus forte signifie un débit supérieur à 150 L/h.',
  'Diviser 300 par un autre nombre que 2 (par exemple inclure les 30 min de pause dans le calcul) ou oublier de préciser l''unité.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0230000-0000-0000-0000-000000000007', 'Mathematiques', 'organisation_donnees', 'math_lecture_graphique',
  'Lecture graphique de fonctions', 'Intermediaire', 'qcm',
  'Deux droites sur un même graphique représentent les offres de deux opérateurs téléphoniques. Opérateur A : forfait fixe de 10 € + 0,05 €/min. Opérateur B : pas de forfait, 0,15 €/min. À partir de combien de minutes l''opérateur A devient-il plus avantageux ?', NULL,
  '[{"id": "A", "label": "50 minutes"}, {"id": "B", "label": "100 minutes"}, {"id": "C", "label": "150 minutes"}, {"id": "D", "label": "200 minutes"}]'::jsonb,
  '{"mode": "single", "value": "B"}'::jsonb,
  'On cherche le point d''intersection des deux droites, c''est-à-dire le nombre de minutes x pour lequel les deux coûts sont égaux. Coût A = 10 + 0,05x. Coût B = 0,15x. Égalité : 10 + 0,05x = 0,15x → 10 = 0,10x → x = 100. Les deux offres coûtent le même prix à 100 minutes. Au-delà, l''opérateur A (pente plus faible) est plus avantageux.',
  'Se tromper dans la résolution de l''équation ou confondre « plus avantageux » avec « moins avantageux » en inversant le sens de l''inégalité.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
