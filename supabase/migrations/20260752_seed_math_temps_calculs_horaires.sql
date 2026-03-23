-- Série : Temps et calculs horaires — Durées et conversions
-- Sous-domaine : grandeurs_mesures
-- Niveau : Facile | Accès : free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires', 'Temps et calculs horaires — Durées et conversions', 'Facile',
  'qcm', 'Combien de minutes y a-t-il dans 3 heures et 45 minutes ?', NULL,
  '[{"id":"a","label":"225 minutes"},{"id":"b","label":"345 minutes"},{"id":"c","label":"180 minutes"},{"id":"d","label":"215 minutes"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour convertir des heures en minutes, on multiplie par 60 : 3 h = 3 × 60 = 180 min. On ajoute ensuite les 45 minutes : 180 + 45 = 225 minutes. L''option b (345) correspond à l''erreur de multiplier 3 × 100 + 45.',
  'Utiliser la base 100 au lieu de la base 60 : l''élève calcule 3 × 100 + 45 = 345 au lieu de 3 × 60 + 45 = 225.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires', 'Temps et calculs horaires — Durées et conversions', 'Facile',
  'vrai_faux', '150 secondes sont égales à 2 minutes et 30 secondes.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir 150 secondes en minutes, on divise par 60 : 150 ÷ 60 = 2 reste 30. On obtient donc 2 minutes et 30 secondes. L''affirmation est vraie. La clé est de se rappeler qu''une minute contient 60 secondes, pas 100.',
  'Diviser par 100 au lieu de 60 : l''élève pense que 150 s = 1 min 50 s en raisonnant en base décimale.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires', 'Temps et calculs horaires — Durées et conversions', 'Facile',
  'reponse_courte', 'Un film commence à 14 h 20 et se termine à 16 h 05. Quelle est la durée du film en minutes ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["105","105 min","105 minutes","1 h 45","1h45","1 h 45 min"]}'::jsonb,
  'De 14 h 20 à 16 h 05, on peut calculer par étapes : de 14 h 20 à 15 h 00 = 40 min, de 15 h 00 à 16 h 00 = 60 min, de 16 h 00 à 16 h 05 = 5 min. Total : 40 + 60 + 5 = 105 minutes, soit 1 h 45 min.',
  'Soustraire directement les minutes (05 − 20) et obtenir un résultat négatif mal géré : l''élève écrit 2 h − 15 min ou se trompe dans la retenue.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires', 'Temps et calculs horaires — Durées et conversions', 'Facile',
  'qcm', 'On additionne 2 h 45 min et 1 h 30 min. Quel est le résultat ?', NULL,
  '[{"id":"a","label":"3 h 75 min"},{"id":"b","label":"4 h 15 min"},{"id":"c","label":"3 h 15 min"},{"id":"d","label":"4 h 05 min"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On additionne séparément les heures et les minutes : 2 h + 1 h = 3 h et 45 min + 30 min = 75 min. Comme 75 min = 1 h 15 min, on ajoute cette heure supplémentaire : 3 h + 1 h 15 min = 4 h 15 min. L''option a (3 h 75 min) oublie la conversion des minutes excédentaires.',
  'Ne pas convertir les minutes au-delà de 60 : l''élève écrit « 3 h 75 min » comme résultat final sans transformer 75 min en 1 h 15 min.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires', 'Temps et calculs horaires — Durées et conversions', 'Facile',
  'qcm', 'Il est 5 h 10 min. Quelle heure était-il il y a 1 h 25 min ?', NULL,
  '[{"id":"a","label":"3 h 45 min"},{"id":"b","label":"3 h 85 min"},{"id":"c","label":"4 h 45 min"},{"id":"d","label":"4 h 15 min"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On soustrait les heures puis les minutes : 5 h 10 min − 1 h 25 min. Comme 10 min < 25 min, on emprunte 1 heure : 4 h 70 min − 1 h 25 min = 3 h 45 min. La technique de la retenue en base 60 est essentielle dans les calculs horaires.',
  'Soustraire sans retenue et obtenir un nombre négatif de minutes : l''élève écrit « 4 h −15 min » ou bloque sur la soustraction 10 − 25.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires', 'Temps et calculs horaires — Durées et conversions', 'Facile',
  'vrai_faux', 'Un événement commence à 23 h 40 et se termine à 1 h 10 le lendemain. Sa durée est de 1 h 30 min.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Lorsqu''un calcul de durée passe minuit, on procède par étapes : de 23 h 40 à minuit (00 h 00) = 20 min, puis de minuit à 1 h 10 = 1 h 10 min. Total : 20 min + 1 h 10 min = 1 h 30 min. L''affirmation est vraie. Le passage par minuit est un piège classique.',
  'Soustraire directement 23 h 40 de 1 h 10 en obtenant un résultat aberrant (22 h 30 ou −22 h 30) : l''élève ne gère pas le franchissement de minuit.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires', 'Temps et calculs horaires — Durées et conversions', 'Facile',
  'reponse_courte', 'Un train part de Paris à 8 h 47 et arrive à Lyon à 10 h 52. Le trajet comporte un arrêt de 5 minutes en gare intermédiaire. Quelle est la durée totale du trajet (arrêt compris), en heures et minutes ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2 h 05","2h05","2 h 05 min","2h05min","125 min","125 minutes"]}'::jsonb,
  'De 8 h 47 à 10 h 52 : de 8 h 47 à 9 h 00 = 13 min, de 9 h 00 à 10 h 00 = 60 min, de 10 h 00 à 10 h 52 = 52 min. Total = 13 + 60 + 52 = 125 min = 2 h 05 min. L''arrêt de 5 minutes est déjà inclus dans la durée entre le départ et l''arrivée, il ne faut donc pas l''ajouter à nouveau.',
  'Ajouter les 5 minutes d''arrêt au résultat alors qu''elles sont déjà comprises dans l''intervalle départ-arrivée : l''élève répond 2 h 10 min au lieu de 2 h 05 min.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
