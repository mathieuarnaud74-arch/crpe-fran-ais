-- Migration: seed exercices "Vitesses moyennes et pièges"
-- Subdomain: grandeurs_mesures | Level: Avance | Access: premium
-- 7 exercices (3 QCM, 1 vrai_faux, 3 réponse_courte) — progression amorce → consolidation → approfondissement

-- Q1 (QCM) — Amorce : calcul direct de vitesse moyenne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'qcm',
  'Un cycliste parcourt 45 km en 1 h 30 min. Quelle est sa vitesse moyenne ?', NULL,
  '[{"id":"a","label":"33,3 km/h"},{"id":"b","label":"30 km/h"},{"id":"c","label":"22,5 km/h"},{"id":"d","label":"45 km/h"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La vitesse moyenne se calcule par la formule : v = d / t. Ici, la distance est de 45 km et le temps de 1 h 30 min = 1,5 h. Donc v = 45 / 1,5 = 30 km/h. Attention : 1 h 30 min ne vaut pas 1,3 h mais bien 1,5 h (30 min = 0,5 h).',
  'Convertir 1 h 30 min en 1,3 h au lieu de 1,5 h, ce qui donnerait environ 34,6 km/h.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (vrai_faux) — Amorce : piège classique de la moyenne arithmétique des vitesses
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'vrai_faux',
  'Un marcheur fait l''aller à 4 km/h et le retour à 6 km/h sur le même trajet. Sa vitesse moyenne sur l''aller-retour est de 5 km/h.', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est FAUX. C''est le piège classique des vitesses moyennes ! La moyenne arithmétique (4 + 6) / 2 = 5 km/h ne donne PAS la vitesse moyenne. Il faut utiliser la moyenne harmonique. Soit d la distance d''un trajet simple. Temps aller = d / 4, temps retour = d / 6. Temps total = d/4 + d/6 = 3d/12 + 2d/12 = 5d/12. Distance totale = 2d. Vitesse moyenne = 2d / (5d/12) = 2d × 12 / (5d) = 24/5 = 4,8 km/h. La vitesse moyenne est de 4,8 km/h, et non 5 km/h. Règle fondamentale : quand on parcourt la même distance à deux vitesses différentes, la vitesse moyenne est la moyenne harmonique, toujours inférieure à la moyenne arithmétique.',
  'Calculer la moyenne arithmétique des deux vitesses : (4 + 6) / 2 = 5 km/h. C''est le piège le plus fréquent au CRPE sur ce thème.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (reponse_courte) — Consolidation : conversion km/h en m/s
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'reponse_courte',
  'Convertir 90 km/h en m/s.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25","25 m/s","25m/s","25 m.s⁻¹"]}'::jsonb,
  'Pour convertir des km/h en m/s, on divise par 3,6. Pourquoi ? 1 km = 1 000 m et 1 h = 3 600 s. Donc 1 km/h = 1 000 / 3 600 m/s = 1 / 3,6 m/s. Application : 90 km/h = 90 / 3,6 = 25 m/s. Méthode alternative : 90 km/h = 90 000 m / 3 600 s = 25 m/s.',
  'Multiplier par 3,6 au lieu de diviser (ce qui donnerait 324 m/s, une valeur absurde proche de la vitesse du son).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (QCM) — Consolidation : temps de parcours avec arrêt
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'qcm',
  'Un TGV roule à 320 km/h. En combien de temps parcourt-il 480 km, en comptant un arrêt de 12 minutes en gare ?', NULL,
  '[{"id":"a","label":"1 h 30 min"},{"id":"b","label":"1 h 42 min"},{"id":"c","label":"1 h 50 min"},{"id":"d","label":"2 h"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Temps de roulage : t = d / v = 480 / 320 = 1,5 h = 1 h 30 min. En ajoutant l''arrêt de 12 minutes en gare : 1 h 30 min + 12 min = 1 h 42 min. Attention : le temps total inclut les arrêts. La vitesse moyenne effective sur l''ensemble du voyage serait alors : 480 / (102/60) ≈ 282,4 km/h, bien inférieure à la vitesse de croisière.',
  'Oublier d''ajouter le temps d''arrêt et répondre 1 h 30 min, ou mal convertir 1,5 h en 1 h 50 min.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (reponse_courte) — Consolidation : avance entre deux mobiles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'reponse_courte',
  'Deux voitures partent en même temps du point A vers le point B (distance : 240 km). La voiture X roule à 80 km/h, la voiture Y roule à 120 km/h. Quelle avance (en km) la voiture Y a-t-elle sur X quand Y arrive à B ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["80","80 km","80km"]}'::jsonb,
  'La voiture Y arrive à B en : t = 240 / 120 = 2 h. Pendant ces 2 h, la voiture X a parcouru : d = 80 × 2 = 160 km. L''avance de Y sur X au moment où Y arrive est donc : 240 − 160 = 80 km. Autre approche : la différence de vitesse est 120 − 80 = 40 km/h. En 2 h, l''écart creusé est 40 × 2 = 80 km.',
  'Calculer le temps d''arrivée de X (3 h) au lieu de celui de Y, ou confondre la distance restante avec l''avance.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (QCM) — Approfondissement : vitesse moyenne sur deux moitiés de trajet (piège moyenne harmonique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'qcm',
  'Un automobiliste parcourt la première moitié d''un trajet à 60 km/h et la seconde moitié à 90 km/h. Quelle est sa vitesse moyenne sur l''ensemble du trajet ?', NULL,
  '[{"id":"a","label":"75 km/h"},{"id":"b","label":"72 km/h"},{"id":"c","label":"70 km/h"},{"id":"d","label":"80 km/h"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Soit d la distance totale du trajet. Temps pour la 1re moitié : t₁ = (d/2) / 60 = d / 120. Temps pour la 2e moitié : t₂ = (d/2) / 90 = d / 180. Temps total : t = d/120 + d/180 = 3d/360 + 2d/360 = 5d/360 = d/72. Vitesse moyenne : v = d / (d/72) = 72 km/h. PIÈGE : la moyenne arithmétique (60 + 90) / 2 = 75 km/h est fausse ! Quand on parcourt deux distances égales à des vitesses différentes, la vitesse moyenne est la moyenne harmonique : Vmoy = 2 × v₁ × v₂ / (v₁ + v₂) = 2 × 60 × 90 / (60 + 90) = 10 800 / 150 = 72 km/h.',
  'Faire la moyenne arithmétique (60 + 90) / 2 = 75 km/h. C''est le piège n°1 du CRPE sur les vitesses.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (reponse_courte) — Approfondissement : aller-retour et démonstration moyenne harmonique ≠ moyenne arithmétique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'reponse_courte',
  'Un coureur fait un aller-retour sur une piste de 5 km. À l''aller, il court à 12 km/h. Au retour, fatigué, il court à 8 km/h. Calculez sa vitesse moyenne sur l''aller-retour (en km/h).', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["9,6","9.6","9,6 km/h","9.6 km/h","9,6km/h","9.6km/h"]}'::jsonb,
  'Temps aller : t₁ = 5 / 12 h. Temps retour : t₂ = 5 / 8 h. Temps total : t = 5/12 + 5/8 = 10/24 + 15/24 = 25/24 h. Distance totale : 2 × 5 = 10 km. Vitesse moyenne : v = 10 / (25/24) = 10 × 24/25 = 240/25 = 9,6 km/h. Vérification par la formule de la moyenne harmonique : Vmoy = 2 × v₁ × v₂ / (v₁ + v₂) = 2 × 12 × 8 / (12 + 8) = 192 / 20 = 9,6 km/h. La moyenne arithmétique donnerait (12 + 8) / 2 = 10 km/h, ce qui est FAUX. La vitesse moyenne (9,6 km/h) est toujours inférieure à la moyenne arithmétique (10 km/h) quand les vitesses sont différentes.',
  'Calculer la moyenne arithmétique (12 + 8) / 2 = 10 km/h au lieu de la moyenne harmonique 9,6 km/h.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
