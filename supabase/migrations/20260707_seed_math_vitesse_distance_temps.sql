-- Seed: Vitesse, distance et temps — Résolution de problèmes (7 exercices)
-- Subdomain: grandeurs_mesures | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire',
  'qcm',
  'Un cycliste parcourt 60 km en 3 heures. Quelle est sa vitesse moyenne ?',
  NULL,
  '[{"id":"a","label":"15 km/h"},{"id":"b","label":"20 km/h"},{"id":"c","label":"30 km/h"},{"id":"d","label":"180 km/h"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La vitesse moyenne se calcule avec la formule v = d ÷ t. Ici : v = 60 ÷ 3 = 20 km/h. La vitesse moyenne est le quotient de la distance totale par la durée totale du trajet.',
  'Erreur fréquente : multiplier distance par temps au lieu de diviser, ce qui donnerait 180.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire',
  'reponse_courte',
  'Une voiture roule à 90 km/h pendant 2 h 30 min. Quelle distance parcourt-elle ? Donner la réponse en km.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["225","225 km","225km"]}'::jsonb,
  'La distance se calcule avec d = v × t. Il faut d''abord convertir la durée : 2 h 30 min = 2,5 h. Ainsi : d = 90 × 2,5 = 225 km.',
  'Erreur fréquente : convertir 2 h 30 min en 2,3 h au lieu de 2,5 h. Les minutes se convertissent en fraction d''heure en divisant par 60, et non par 100.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire',
  'qcm',
  'Combien de temps faut-il pour parcourir 150 km à une vitesse de 60 km/h ?',
  NULL,
  '[{"id":"a","label":"2 h"},{"id":"b","label":"2 h 15 min"},{"id":"c","label":"2 h 30 min"},{"id":"d","label":"2 h 50 min"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le temps se calcule avec t = d ÷ v. Ici : t = 150 ÷ 60 = 2,5 h = 2 h 30 min. Pour convertir 0,5 h en minutes : 0,5 × 60 = 30 min.',
  'Erreur fréquente : écrire 2,5 h = 2 h 50 min en confondant les centièmes d''heure avec les minutes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire',
  'vrai_faux',
  '72 km/h = 20 m/s. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir des km/h en m/s, on divise par 3,6. En effet : 1 km/h = 1 000 m ÷ 3 600 s = 1/3,6 m/s. Ainsi : 72 ÷ 3,6 = 20 m/s. L''affirmation est vraie. On peut aussi raisonner : 72 km/h = 72 000 m / 3 600 s = 20 m/s.',
  'Erreur fréquente : multiplier par 3,6 au lieu de diviser (ce qui donnerait 259,2 m/s), ou diviser par 3 600 sans convertir les km en m.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire',
  'qcm',
  'Un automobiliste parcourt 120 km à 80 km/h, puis 80 km à 120 km/h. Quelle est sa vitesse moyenne sur l''ensemble du trajet (arrondie à l''unité) ?',
  NULL,
  '[{"id":"a","label":"100 km/h"},{"id":"b","label":"96 km/h"},{"id":"c","label":"92 km/h"},{"id":"d","label":"90 km/h"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Attention : la vitesse moyenne n''est PAS la moyenne arithmétique des vitesses. Il faut calculer : distance totale ÷ durée totale. Durée du 1er tronçon : 120 ÷ 80 = 1,5 h. Durée du 2e tronçon : 80 ÷ 120 = 2/3 h. Distance totale : 120 + 80 = 200 km. Durée totale : 1,5 + 2/3 = 3/2 + 2/3 = 9/6 + 4/6 = 13/6 h. Vitesse moyenne : 200 ÷ (13/6) = 200 × 6/13 = 1 200/13 ≈ 92,3 km/h, soit environ 92 km/h.',
  'Erreur fréquente : faire la moyenne arithmétique (80 + 120) ÷ 2 = 100 km/h. La vitesse moyenne est toujours le rapport distance totale / durée totale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire',
  'reponse_courte',
  'Un randonneur marche à 4,5 km/h. Il part à 8 h 15 et parcourt 13,5 km. À quelle heure arrive-t-il ? (format HH h MM)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["11 h 15","11h15","11h 15","11 h15"]}'::jsonb,
  'On calcule d''abord la durée : t = d ÷ v = 13,5 ÷ 4,5 = 3 h. Heure d''arrivée : 8 h 15 + 3 h = 11 h 15.',
  'Erreur fréquente : mal calculer la division 13,5 ÷ 4,5 ou faire une erreur dans l''addition des heures et minutes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire',
  'qcm',
  'Un train part de Paris à 9 h 45 et arrive à Lyon (distance : 465 km) à 11 h 50. Quelle est sa vitesse moyenne, arrondie à l''unité ?',
  NULL,
  '[{"id":"a","label":"186 km/h"},{"id":"b","label":"200 km/h"},{"id":"c","label":"223 km/h"},{"id":"d","label":"232 km/h"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Calculons d''abord la durée du trajet. De 9 h 45 à 11 h 50 : de 9 h 45 à 11 h 45 = 2 h, puis de 11 h 45 à 11 h 50 = 5 min. Durée totale : 2 h 5 min = 2 + 5/60 = 2 + 1/12 = 25/12 h. Vitesse moyenne : v = 465 ÷ (25/12) = 465 × 12/25 = 5 580/25 = 223,2 km/h ≈ 223 km/h.',
  'Erreur fréquente : convertir 2 h 5 min en 2,5 h au lieu de 25/12 h, ou arrondir la durée de façon incorrecte.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
