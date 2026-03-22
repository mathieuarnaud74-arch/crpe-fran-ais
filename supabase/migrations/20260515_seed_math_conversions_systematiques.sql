-- ============================================================
-- Série : Grandeurs — Conversions systématiques
-- Niveau : Facile | Accès : free | 7 exercices
-- ============================================================

-- Q1 — AMORCE — Conversion km → m (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques', 'Facile', 'qcm',
  'Convertir 3,5 km en mètres.', NULL,
  '[{"id":"a","label":"350 m"},{"id":"b","label":"3 500 m"},{"id":"c","label":"35 000 m"},{"id":"d","label":"0,35 m"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour convertir des kilomètres en mètres, on multiplie par 1 000 car 1 km = 1 000 m.

Tableau de conversion des longueurs :
km → hm → dam → m (3 rangs, donc ×10³ = ×1 000)

Calcul : 3,5 × 1 000 = 3 500 m.

Astuce : multiplier par 1 000 revient à décaler la virgule de 3 rangs vers la droite.
3,5 → 3 500.

Les distracteurs correspondent à des erreurs fréquentes :
• 350 m → multiplication par 100 (confusion km/hm)
• 35 000 m → multiplication par 10 000
• 0,35 m → division au lieu de multiplication',
  'Multiplier par 100 au lieu de 1 000 (confusion avec la conversion hm → m ou oubli d''un rang dans le tableau).', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Conversion g → kg (Vrai/Faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques', 'Facile', 'vrai_faux',
  '4 500 g = 4,5 kg', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''affirmation est vraie.

Pour convertir des grammes en kilogrammes, on divise par 1 000 car 1 kg = 1 000 g.

Tableau de conversion des masses :
kg → hg → dag → g (3 rangs, donc ÷10³ = ÷1 000)

Calcul : 4 500 ÷ 1 000 = 4,5 kg.

Vérification inverse : 4,5 × 1 000 = 4 500 g. ✓

Rappel : diviser par 1 000 revient à décaler la virgule de 3 rangs vers la gauche.
4 500, → 4,500 = 4,5.',
  'Diviser par 100 au lieu de 1 000, ce qui donnerait 45 kg — erreur de placement dans le tableau de conversion.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Conversion m² → cm² (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques', 'Facile', 'qcm',
  'Convertir 2,5 m² en cm².', NULL,
  '[{"id":"a","label":"250 cm²"},{"id":"b","label":"2 500 cm²"},{"id":"c","label":"25 000 cm²"},{"id":"d","label":"2 500 000 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Pour les unités d''aire, chaque rang du tableau comporte DEUX colonnes (et non une seule comme pour les longueurs).

Tableau de conversion des aires :
m² → dm² → cm² = 2 rangs × 2 colonnes = 4 positions, donc ×10⁴ = ×10 000.

Calcul : 2,5 × 10 000 = 25 000 cm².

Attention au piège classique : pour les longueurs, m → cm = ×100 (2 rangs × 1 colonne).
Pour les aires, m² → cm² = ×10 000 (2 rangs × 2 colonnes).

Analyse des distracteurs :
• 250 cm² → ×100 (erreur : application du facteur des longueurs)
• 2 500 cm² → ×1 000 (erreur intermédiaire)
• 2 500 000 cm² → ×1 000 000 (confusion avec les volumes)',
  'Appliquer le facteur de conversion des longueurs (×100) au lieu de celui des aires (×10 000). Pour les aires, chaque rang compte double.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Volume et capacité (Réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques', 'Facile', 'reponse_courte',
  'Un aquarium mesure 50 cm × 30 cm × 40 cm. Quel est son volume en litres ? (Donner uniquement la valeur numérique suivie de « L ».)', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["60 L","60L","60"]}'::jsonb,
  'Étape 1 — Calcul du volume en cm³ :
Volume = longueur × largeur × hauteur
Volume = 50 × 30 × 40 = 60 000 cm³

Étape 2 — Conversion cm³ → L :
La relation fondamentale à connaître est : 1 dm³ = 1 L.
Or 1 dm³ = 1 000 cm³, donc 1 L = 1 000 cm³.

60 000 cm³ ÷ 1 000 = 60 dm³ = 60 L.

Méthode alternative :
Convertir d''abord en dm : 50 cm = 5 dm, 30 cm = 3 dm, 40 cm = 4 dm.
Volume = 5 × 3 × 4 = 60 dm³ = 60 L.

Rappel Éduscol : la correspondance 1 dm³ = 1 L est un lien essentiel entre les unités de volume et les unités de capacité.',
  'Oublier que 1 L = 1 dm³ = 1 000 cm³ et diviser par 100 au lieu de 1 000, ce qui donnerait 600 L.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Conversion km/h → m/s (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques', 'Facile', 'qcm',
  'Convertir 72 km/h en m/s.', NULL,
  '[{"id":"a","label":"72 m/s"},{"id":"b","label":"7,2 m/s"},{"id":"c","label":"20 m/s"},{"id":"d","label":"2 m/s"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Pour convertir des km/h en m/s, on utilise la relation :
1 km/h = 1 000 m / 3 600 s = 1/3,6 m/s.

Donc : pour passer de km/h à m/s, on divise par 3,6.

Calcul : 72 ÷ 3,6 = 20 m/s.

Vérification par le raisonnement :
72 km/h signifie 72 000 m en 3 600 s.
72 000 ÷ 3 600 = 20 m/s. ✓

Astuce mnémotechnique : « ÷ 3,6 pour descendre (km/h → m/s), × 3,6 pour monter (m/s → km/h) ».

Analyse des distracteurs :
• 72 m/s → aucune conversion effectuée
• 7,2 m/s → division par 10 (erreur)
• 2 m/s → division par 36 au lieu de 3,6',
  'Diviser par 10 ou par 36 au lieu de 3,6. Retenir la formule : km/h ÷ 3,6 = m/s.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Aire en hectares (Réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques', 'Facile', 'reponse_courte',
  'Un terrain rectangulaire mesure 150 m × 80 m. Quelle est son aire en hectares ? (Donner uniquement la valeur numérique suivie de « ha ».)', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1,2 ha","1.2 ha","1,2ha","1.2ha","1,2","1.2"]}'::jsonb,
  'Étape 1 — Calcul de l''aire en m² :
Aire = longueur × largeur = 150 × 80 = 12 000 m².

Étape 2 — Conversion m² → ha :
1 hectare (ha) = 10 000 m² (un carré de 100 m de côté).

12 000 m² ÷ 10 000 = 1,2 ha.

Rappel des unités agraires (programme Éduscol) :
• 1 are (a) = 100 m² (carré de 10 m de côté)
• 1 hectare (ha) = 100 a = 10 000 m² (carré de 100 m de côté)
• 1 centiare (ca) = 1 m²

Ces unités agraires sont des unités d''aire particulières très utilisées pour les surfaces de terrains.',
  'Diviser par 1 000 au lieu de 10 000, ce qui donnerait 12 ha. Retenir : 1 ha = 10 000 m² = un carré de 100 m × 100 m.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Problème contextuel multi-étapes (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00c0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques', 'Facile', 'qcm',
  'Pour peindre un mur de 3 m × 2,5 m, on utilise 0,5 L de peinture par m². Il reste un pot de 3 L. A-t-on assez de peinture pour peindre ce mur et un second mur identique ?', NULL,
  '[{"id":"a","label":"Oui, il reste même de la peinture"},{"id":"b","label":"Oui, pile la bonne quantité"},{"id":"c","label":"Non, il manque 4,5 L"},{"id":"d","label":"Non, il manque 0,75 L"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Étape 1 — Aire d''un mur :
Aire = 3 × 2,5 = 7,5 m².

Étape 2 — Aire totale (2 murs identiques) :
Aire totale = 2 × 7,5 = 15 m².

Étape 3 — Quantité de peinture nécessaire :
Peinture = 15 m² × 0,5 L/m² = 7,5 L.

Étape 4 — Comparaison avec le stock disponible :
Stock = 3 L.
Il manque : 7,5 − 3 = 4,5 L.

Conclusion : Non, 3 L ne suffisent pas. Il manque 4,5 L de peinture.

Ce type de problème mobilise plusieurs compétences :
• Calcul d''aire (grandeurs géométriques)
• Proportionnalité (consommation par m²)
• Comparaison de grandeurs et raisonnement logique',
  'Calculer la peinture pour un seul mur (3,75 L) et conclure qu''il en manque peu, en oubliant qu''il faut peindre les deux murs.', 'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
