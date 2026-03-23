-- Série 11 : Grandeurs — Conversions systématiques
-- 7 questions, Facile, free
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte
-- Série d'entrée de parcours pour maîtriser les conversions

-- Q1 — AMORCE — QCM — Conversion de longueurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0110000-0000-0000-0000-000000000001',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Facile',
  'qcm',
  'Combien y a-t-il de mètres dans 3,7 km ?',
  NULL,
  '[{"id":"a","label":"37 m"},{"id":"b","label":"370 m"},{"id":"c","label":"3 700 m"},{"id":"d","label":"37 000 m"}]',
  '{"mode":"single","value":"c"}',
  '1 km = 1 000 m. Donc 3,7 km = 3,7 × 1 000 = 3 700 m. Dans le tableau de conversion des longueurs (km | hm | dam | m), on décale la virgule de 3 rangs vers la droite : 3,700 → 3 700. Astuce : multiplier par 1 000 revient à décaler la virgule de 3 positions vers la droite.',
  'Décaler la virgule d''un mauvais nombre de rangs (×100 au lieu de ×1 000, donnant 370 m).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Réponse courte — Conversion de masses
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0110000-0000-0000-0000-000000000002',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Facile',
  'reponse_courte',
  'Convertissez 4 250 g en kg.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4,25 kg","4.25 kg","4,25","4.25","4,250 kg","4.250 kg"]}',
  '1 kg = 1 000 g. Donc pour passer de g à kg, on divise par 1 000. 4 250 g = 4 250 / 1 000 = 4,25 kg. Dans le tableau de conversion des masses (kg | hg | dag | g), on décale la virgule de 3 rangs vers la gauche : 4 250, → 4,250 = 4,25 kg.',
  'Diviser par 100 au lieu de 1 000, ce qui donnerait 42,5 kg (faux). Ou confondre le sens de la conversion (multiplier au lieu de diviser).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Vrai/Faux — Conversion de contenances
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0110000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : 50 cL = 0,5 L.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}',
  'VRAI. 1 L = 100 cL, donc 50 cL = 50/100 = 0,5 L. Rappel des sous-multiples du litre : 1 L = 10 dL = 100 cL = 1 000 mL. Le préfixe « centi- » signifie centième (comme centimètre = centième de mètre). Donc 1 cL = 1/100 L = 0,01 L, et 50 cL = 50 × 0,01 = 0,5 L. C''est l''équivalent d''une demi-bouteille d''eau.',
  'Confondre cL et mL. 50 mL = 0,05 L (et non 0,5 L). Le préfixe « milli- » signifie millième, « centi- » signifie centième.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Conversion d'unités de temps
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0110000-0000-0000-0000-000000000004',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Facile',
  'reponse_courte',
  'Convertissez 2 h 45 min en minutes.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["165 min","165","165 minutes","165min"]}',
  '1 h = 60 min. Donc 2 h 45 min = (2 × 60) + 45 = 120 + 45 = 165 min. Attention : les durées ne suivent pas le système décimal ! On ne peut pas écrire 2 h 45 min = 2,45 h. En écriture décimale : 2 h 45 min = 2 + 45/60 = 2 + 0,75 = 2,75 h. La conversion h → min est une multiplication par 60 (base sexagésimale), pas par 100.',
  'Écrire 2 h 45 min = 245 min (traiter les heures et minutes comme un nombre décimal). Ou écrire 2,45 h × 60 = 147 min (confusion entre écriture horaire et décimale).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — QCM — Conversion d'unités d'aire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0110000-0000-0000-0000-000000000005',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Facile',
  'qcm',
  'Combien y a-t-il de cm² dans 3 m² ?',
  NULL,
  '[{"id":"a","label":"300 cm²"},{"id":"b","label":"3 000 cm²"},{"id":"c","label":"30 000 cm²"},{"id":"d","label":"300 000 cm²"}]',
  '{"mode":"single","value":"c"}',
  '1 m = 100 cm, donc 1 m² = (100 cm)² = 10 000 cm². Ainsi 3 m² = 3 × 10 000 = 30 000 cm². ATTENTION : pour les aires, le facteur de conversion est au CARRÉ. On ne multiplie pas par 100 (longueur) mais par 100² = 10 000 (aire). Dans le tableau de conversion des aires, chaque colonne occupe DEUX rangs (au lieu d''un pour les longueurs). C''est la même logique pour toutes les unités d''aire : 1 km² = 1 000 000 m² (et non 1 000 m²).',
  'Multiplier par 100 (conversion des longueurs) au lieu de 10 000 (conversion des aires). C''est l''erreur la plus fréquente sur les conversions d''unités d''aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Conversion vitesse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0110000-0000-0000-0000-000000000006',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Facile',
  'reponse_courte',
  'Convertissez 36 km/h en m/s.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10 m/s","10","10m/s","10 m.s-1"]}',
  '36 km/h = 36 × 1 000 m / 3 600 s = 36 000 / 3 600 = 10 m/s. Astuce rapide : diviser par 3,6. 36 / 3,6 = 10 m/s. Justification de l''astuce : 1 km/h = 1 000 m / 3 600 s = 1/3,6 m/s. Donc pour passer de km/h à m/s, on divise par 3,6. Et pour passer de m/s à km/h, on multiplie par 3,6. Vérification : 10 m/s = 10 × 3,6 = 36 km/h ✓.',
  'Diviser par 60 au lieu de 3 600 (oublier qu''une heure = 3 600 secondes, pas 60). Ou multiplier au lieu de diviser (confusion sur le sens de la conversion).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Conversion d'unités composées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0110000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_conversions_systematiques',
  'Grandeurs — Conversions systématiques',
  'Facile',
  'qcm',
  'Un terrain fait 2 500 m². Combien cela fait-il en hectares (ha) ?',
  NULL,
  '[{"id":"a","label":"2,5 ha"},{"id":"b","label":"0,25 ha"},{"id":"c","label":"25 ha"},{"id":"d","label":"0,025 ha"}]',
  '{"mode":"single","value":"b"}',
  '1 ha = 10 000 m². Donc 2 500 m² = 2 500 / 10 000 = 0,25 ha. C''est un quart d''hectare. Les unités agraires : 1 ha (hectare) = 100 a (ares) = 10 000 ca (centiares) = 10 000 m². 2 500 m² = 25 ares = 0,25 ha. Un terrain de football fait environ 0,7 ha (7 000 m²), donc 0,25 ha est environ un tiers de terrain de foot. Cette conversion est très fréquente au CRPE dans les problèmes de surfaces de terrain.',
  'Diviser par 1 000 au lieu de 10 000, ce qui donnerait 2,5 ha (faux). Confondre les facteurs de conversion des longueurs (×1 000 pour km→m) et des aires (×10 000 pour ha→m²).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
