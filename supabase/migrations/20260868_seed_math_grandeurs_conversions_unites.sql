-- Migration: 10 exercices — Conversions d'unités de grandeurs
-- Série : math_grandeurs_conversions_unites (Mathématiques, grandeurs_mesures)
-- Longueurs, masses, capacités, aires, durées — conversion et contexte
-- UUID prefix: 0ab10000

-- Q1 — QCM — Convertir des mètres en centimètres
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000001',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'qcm',
  'Combien de centimètres y a-t-il dans 3,7 mètres ?',
  NULL,
  '[{"id":"a","label":"37 cm"},{"id":"b","label":"370 cm"},{"id":"c","label":"3 700 cm"},{"id":"d","label":"0,037 cm"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '1 m = 100 cm. Pour convertir des mètres en centimètres, on multiplie par 100. Donc 3,7 m = 3,7 × 100 = 370 cm. Dans le tableau de conversion, on décale la virgule de deux rangs vers la droite.',
  'Multiplier par 1 000 au lieu de 100 (confusion avec la conversion m → mm). Retenir : m → cm × 100, m → mm × 1 000.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Réponse courte — Convertir km en m
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000002',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'reponse_courte',
  'Convertis 4,5 km en mètres. Indique le résultat en chiffres.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4500","4 500","4500 m","4 500 m"]}'::jsonb,
  '1 km = 1 000 m. Pour convertir des kilomètres en mètres, on multiplie par 1 000. Donc 4,5 km = 4,5 × 1 000 = 4 500 m.',
  'Diviser par 1 000 au lieu de multiplier, ce qui donnerait 0,0045 m. Pour descendre dans le tableau de conversion (km → m), on multiplie toujours.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Vrai/Faux — 1 m² = 100 cm²
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? 1 m² est égal à 100 cm².',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. 1 m² = 10 000 cm². En effet, 1 m = 100 cm, donc 1 m² = 100 cm × 100 cm = 10 000 cm². L''erreur classique consiste à appliquer le même facteur de conversion (× 100) qu''aux longueurs. Pour les aires, le facteur est élevé au carré : si les longueurs sont × 100, les aires sont × (100)² = × 10 000.',
  'Appliquer le facteur de conversion des longueurs aux aires. Pour passer d''unités d''aire en n fois plus grandes, il faut multiplier par n², pas par n.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — 1 hectare en m²
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000004',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'qcm',
  'Quelle est l''équivalence correcte de l''hectare ?',
  NULL,
  '[{"id":"a","label":"1 ha = 1 000 m²"},{"id":"b","label":"1 ha = 10 000 m²"},{"id":"c","label":"1 ha = 100 000 m²"},{"id":"d","label":"1 ha = 100 m²"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '1 hectare (ha) = 10 000 m². L''hectare est l''unité agraire de base, définie comme la superficie d''un carré de 100 m de côté : 100 m × 100 m = 10 000 m². À retenir : 1 km² = 100 ha = 1 000 000 m².',
  'Confondre ha et km² : 1 km² = 100 ha et non 1 ha = 1 km². L''hectare est une unité intermédiaire, bien plus petite qu''un km².',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Convertir litres en millilitres
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000005',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'qcm',
  'Un récipient contient 2,5 litres d''eau. Quelle est cette contenance exprimée en millilitres ?',
  NULL,
  '[{"id":"a","label":"25 mL"},{"id":"b","label":"250 mL"},{"id":"c","label":"2 500 mL"},{"id":"d","label":"25 000 mL"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '1 L = 1 000 mL. Pour convertir des litres en millilitres, on multiplie par 1 000. Donc 2,5 L = 2,5 × 1 000 = 2 500 mL.',
  'Multiplier par 100 au lieu de 1 000 (confusion avec centilitres). Retenir : 1 L = 10 dL = 100 cL = 1 000 mL.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — 1 tonne = 1 000 kg
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000006',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? 1 tonne est égale à 1 000 kilogrammes.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. 1 t = 1 000 kg = 1 000 000 g. La tonne est la plus grande unité de masse du système courant. À retenir : 1 t = 10 quintaux = 1 000 kg.',
  'Confondre tonne et quintal. 1 quintal = 100 kg (et non 1 000 kg). La tonne vaut 10 quintaux.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Convertir 3h 45min en minutes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'reponse_courte',
  'Convertis 3 heures 45 minutes en minutes. Indique le résultat en chiffres.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["225","225 min","225 minutes"]}'::jsonb,
  '3 heures = 3 × 60 = 180 minutes. 180 + 45 = 225 minutes. Attention : la conversion des durées utilise la base 60 (et non 10), car 1 heure = 60 minutes.',
  'Utiliser la base 10 en calculant 3,45 × 100 = 345. La durée "3 h 45 min" n''est pas 3,45 : les minutes ne sont pas des dixièmes d''heure.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Convertir kg en grammes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'qcm',
  'Quelle est la masse de 2,3 kg exprimée en grammes ?',
  NULL,
  '[{"id":"a","label":"23 g"},{"id":"b","label":"230 g"},{"id":"c","label":"2 300 g"},{"id":"d","label":"23 000 g"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '1 kg = 1 000 g. Pour convertir des kilogrammes en grammes, on multiplie par 1 000. Donc 2,3 kg = 2,3 × 1 000 = 2 300 g.',
  'Multiplier par 100 au lieu de 1 000 (confusion avec d''autres conversions décimales). Dans le tableau des masses, chaque rang vaut × 10 : kg → hg × 10, hg → dag × 10, dag → g × 10, soit kg → g × 1 000.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Volume d'un cube de 1 dm en litres
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'qcm',
  'Un cube a une arête de 1 décimètre. Quel est son volume exprimé en litres ?',
  NULL,
  '[{"id":"a","label":"0,1 L"},{"id":"b","label":"1 L"},{"id":"c","label":"10 L"},{"id":"d","label":"100 L"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '1 dm³ = 1 L. Un cube d''arête 1 dm a un volume de 1 × 1 × 1 = 1 dm³ = 1 litre. Cette équivalence fondamentale (1 dm³ = 1 L = 1 000 cm³) est au programme du cycle 3. Elle permet le lien entre unités de volume (dm³, cm³) et unités de contenance (L, mL).',
  'Penser que 1 dm = 10 cm implique que 1 dm³ = 10 L. Pour les volumes, le facteur est cubique : 1 dm = 10 cm donc 1 dm³ = 10³ cm³ = 1 000 cm³ = 1 L.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — 5 000 m = 5 km
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '0ab10000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_conversions_unites',
  'Conversions d''unités de grandeurs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? 5 000 m est équivalent à 5 km.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. 1 km = 1 000 m, donc 5 000 m = 5 000 ÷ 1 000 = 5 km. Pour passer des mètres aux kilomètres (monter dans le tableau), on divise par 1 000.',
  'Diviser par 100 au lieu de 1 000 : 5 000 ÷ 100 = 50 km. La conversion m → km divise par 1 000 (pas par 100).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
