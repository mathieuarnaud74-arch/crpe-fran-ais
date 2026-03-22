-- ============================================================================
-- Seed: Problèmes à étapes — Grandeurs composées (vitesse, débit, masse volumique, prix unitaire)
-- Series key: math_grandeurs_composees_etapes
-- 7 exercices — Niveau Avancé — Premium
-- ============================================================================

-- Q1 (AMORCE — QCM) : Vitesse moyenne d''une voiture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'qcm',
  'Une voiture parcourt 180 km en 2 h 30 min. Quelle est sa vitesse moyenne ?',
  NULL,
  '[{"id":"a","label":"72 km/h"},{"id":"b","label":"78,26 km/h"},{"id":"c","label":"90 km/h"},{"id":"d","label":"20 m/s"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La vitesse moyenne se calcule par la formule : v = d ÷ t. Il faut d''abord convertir la durée en heures : 2 h 30 min = 2,5 h (et non 2,3 h). Puis : v = 180 ÷ 2,5 = 72 km/h. Le distracteur 78,26 km/h provient de l''erreur classique consistant à diviser par 2,3 (conversion incorrecte des minutes en décimal). Le distracteur 20 m/s est le résultat correct converti en m/s (72 km/h = 72 000 m ÷ 3 600 s = 20 m/s), mais l''unité demandée est le km/h. La grandeur composée « vitesse » met en relation une distance et une durée.',
  'Convertir 2 h 30 min en 2,3 h au lieu de 2,5 h. Rappel : 30 min = 0,5 h car 30 ÷ 60 = 0,5.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (AMORCE — Vrai/Faux) : Comparaison de vitesses avec conversion d''unités
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'vrai_faux',
  'Un coureur A court à 12 km/h. Un coureur B court à 200 m/min. Le coureur A est plus rapide que le coureur B.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Pour comparer deux grandeurs composées, il faut les exprimer dans la même unité. Convertissons le coureur B en km/h : 200 m/min = 200 × 60 m/h = 12 000 m/h = 12 km/h. Les deux coureurs ont exactement la même vitesse (12 km/h). L''affirmation « A est plus rapide que B » est donc fausse. Ce type de problème mobilise la compétence de conversion d''unités de grandeurs composées, essentielle au cycle 3.',
  'Comparer directement 12 et 200 sans conversion, ou convertir de façon incorrecte (par exemple 200 m/min = 2 km/h en oubliant de multiplier par 60).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (CONSOLIDATION — Réponse courte) : Débit — remplissage d''une piscine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'reponse_courte',
  'Un robinet débite 3,5 litres par minute. Combien de temps faut-il pour remplir un bassin de 280 litres ? Exprimez votre réponse en heures et minutes (format : Xh Ymin).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1h 20min","1h20min","1 h 20 min","1h 20 min","1h20"]}'::jsonb,
  'Le débit est une grandeur composée reliant un volume et une durée. Étape 1 : calculer la durée en minutes. Durée = volume ÷ débit = 280 ÷ 3,5 = 80 minutes. Étape 2 : convertir en heures et minutes. 80 min = 1 h 20 min (car 80 = 60 + 20). La résolution de ce problème à étapes nécessite d''identifier la grandeur composée (débit), d''appliquer la relation entre les grandeurs, puis de convertir l''unité de temps.',
  'Oublier de convertir les minutes en heures et minutes, ou faire une erreur dans la division 280 ÷ 3,5 (astuce : 280 ÷ 3,5 = 2 800 ÷ 35 = 80).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (CONSOLIDATION — QCM) : Vitesse moyenne sur un trajet en deux parties (piège classique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'qcm',
  'Un cycliste parcourt 15 km à 20 km/h, puis 25 km à 30 km/h. Quelle est sa vitesse moyenne sur l''ensemble du trajet ?',
  NULL,
  '[{"id":"a","label":"24 km/h"},{"id":"b","label":"25 km/h"},{"id":"c","label":"25,26 km/h"},{"id":"d","label":"26,67 km/h"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Attention : la vitesse moyenne n''est PAS la moyenne des vitesses ! Il faut calculer la distance totale divisée par la durée totale. Étape 1 — Durée de chaque portion : t₁ = 15 ÷ 20 = 0,75 h (45 min) ; t₂ = 25 ÷ 30 = 5/6 h ≈ 0,833 h (50 min). Étape 2 — Durée totale : 3/4 + 5/6 = 9/12 + 10/12 = 19/12 h ≈ 1,583 h. Étape 3 — Distance totale : 15 + 25 = 40 km. Étape 4 — Vitesse moyenne : v = 40 ÷ (19/12) = 40 × 12/19 = 480/19 ≈ 25,26 km/h. Le distracteur 25 km/h correspond à la moyenne arithmétique (20 + 30) ÷ 2, qui est une erreur classique. Le distracteur 24 km/h provient d''une erreur de calcul, et 26,67 km/h d''une confusion avec 40 ÷ 1,5.',
  'Calculer la moyenne arithmétique des deux vitesses : (20 + 30) ÷ 2 = 25 km/h. C''est une erreur fréquente. La vitesse moyenne se calcule toujours par distance totale ÷ durée totale.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (CONSOLIDATION — Réponse courte) : Masse volumique — identification d''un métal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'reponse_courte',
  'Un bloc métallique a une masse de 2,7 kg et un volume de 1 000 cm³. Calculez sa masse volumique en g/cm³, puis identifiez le métal sachant que la masse volumique de l''aluminium est 2,7 g/cm³ et celle du fer est 7,8 g/cm³. Quel est ce métal ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["aluminium","Aluminium","ALUMINIUM","l''aluminium","alu"]}'::jsonb,
  'La masse volumique (notée ρ) est une grandeur composée qui met en relation la masse et le volume : ρ = m ÷ V. Étape 1 — Conversion des unités : la masse est en kg, il faut la convertir en grammes pour obtenir des g/cm³. 2,7 kg = 2 700 g. Étape 2 — Calcul : ρ = 2 700 g ÷ 1 000 cm³ = 2,7 g/cm³. Étape 3 — Identification : 2,7 g/cm³ correspond exactement à la masse volumique de l''aluminium. Ce problème illustre l''importance de la cohérence des unités dans le calcul d''une grandeur composée.',
  'Oublier de convertir les kg en g avant de diviser, ce qui donne 0,0027 g/cm³ (résultat en kg/cm³). Autre erreur : confondre masse volumique et densité (la densité est sans unité).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (APPROFONDISSEMENT — QCM) : Problème à étapes multiples — coût du carburant aller-retour
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'qcm',
  'Une famille effectue un trajet de 350 km. Leur voiture consomme 6,5 L pour 100 km et le carburant coûte 1,85 € le litre. Quel sera le coût total en carburant pour l''aller-retour ?',
  NULL,
  '[{"id":"a","label":"42,09 €"},{"id":"b","label":"45,50 €"},{"id":"c","label":"84,18 €"},{"id":"d","label":"90,65 €"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Ce problème à étapes multiples mobilise deux grandeurs composées : la consommation (L/100 km) et le prix unitaire (€/L). Étape 1 — Consommation pour un aller : 350 km × 6,5 L ÷ 100 km = 22,75 L. Étape 2 — Coût pour un aller : 22,75 L × 1,85 €/L = 42,0875 € ≈ 42,09 €. Étape 3 — Coût aller-retour : 42,09 € × 2 = 84,18 €. On identifie les étapes intermédiaires : distance → volume de carburant (via la consommation) → coût (via le prix unitaire) → doublement pour l''aller-retour. Le distracteur a (42,09 €) correspond au coût d''un aller seul (sans doubler). Le distracteur b (45,50 €) provient d''une erreur de calcul. Le distracteur d (90,65 €) résulte d''une surestimation de la consommation.',
  'Oublier de multiplier par 2 pour l''aller-retour (erreur la plus fréquente). Autre piège : calculer 350 × 6,5 = 2 275 au lieu de (350 ÷ 100) × 6,5 = 22,75.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (APPROFONDISSEMENT — Réponse courte) : Problème à étapes — production industrielle et délai
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'reponse_courte',
  'Une usine produit 450 pièces par heure. Une commande de 12 000 pièces doit être livrée dans 3 jours. L''usine fonctionne 8 heures par jour. L''usine pourra-t-elle respecter le délai ? Indiquez le nombre de pièces en excédent ou en déficit (format : +X ou -X pièces).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["-1200 pièces","-1200","-1 200 pièces","-1 200","déficit de 1200 pièces","déficit de 1 200 pièces"]}'::jsonb,
  'Le débit de production (450 pièces/heure) est une grandeur composée reliant une quantité et une durée. Étape 1 — Nombre d''heures de travail disponibles : 3 jours × 8 h/jour = 24 heures. Étape 2 — Production totale possible : 24 h × 450 pièces/h = 10 800 pièces. Étape 3 — Comparaison avec la commande : 10 800 − 12 000 = −1 200 pièces. L''usine ne pourra PAS respecter le délai. Il manquera 1 200 pièces. Ce problème mobilise la proportionnalité (grandeur composée constante) et la résolution d''un problème à plusieurs étapes avec comparaison finale. En contexte CRPE, ce type de situation permet de travailler la modélisation et l''organisation des données.',
  'Calculer 450 × 3 = 1 350 (en oubliant que l''usine travaille 8 h par jour, pas 1 h par jour). Ou encore calculer 450 × 24 = 10 800 mais conclure que c''est suffisant en confondant 10 800 et 12 000.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
