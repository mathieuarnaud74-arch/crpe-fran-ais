-- Migration: seed exercices "Aires et périmètres — Figures composées"
-- Subdomain: grandeurs_mesures | Level: Intermediaire | Access: free
-- 7 exercices (3 QCM, 2 vrai_faux, 2 réponse_courte) — progression amorce → consolidation → approfondissement

-- Q1 (QCM) — Amorce : aire d'un triangle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées', 'Intermediaire', 'qcm',
  'Quelle est l''aire d''un triangle de base 8 cm et de hauteur 5 cm ?', NULL,
  '[{"id":"a","label":"40 cm²"},{"id":"b","label":"13 cm²"},{"id":"c","label":"20 cm²"},{"id":"d","label":"25 cm²"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''aire d''un triangle se calcule avec la formule : A = (base × hauteur) / 2. Ici : A = (8 × 5) / 2 = 40 / 2 = 20 cm².',
  'Oublier de diviser par 2 et répondre 40 cm² (aire du rectangle correspondant).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (vrai_faux) — Amorce : périmètre d'un cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées', 'Intermediaire', 'vrai_faux',
  'Le périmètre d''un cercle de rayon 7 cm est 44 cm.', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le périmètre (circonférence) d''un cercle se calcule avec la formule P = 2 × π × r. Ici : P = 2 × 3,14 × 7 = 43,96 cm, que l''on arrondit à 44 cm. L''affirmation est donc vraie.',
  'Confondre rayon et diamètre, ou utiliser la formule de l''aire (π × r²) au lieu de celle du périmètre.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (reponse_courte) — Consolidation : aire d'une figure composée (rectangle − cercle)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées', 'Intermediaire', 'reponse_courte',
  'Un terrain rectangulaire de 40 m × 25 m contient une piscine circulaire de diamètre 10 m. Quelle est l''aire de la zone enherbée autour de la piscine ? Arrondir au m².', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["921","921 m²","921 m2"]}'::jsonb,
  'Aire du terrain rectangulaire : 40 × 25 = 1 000 m². Aire de la piscine circulaire (rayon = 10 / 2 = 5 m) : π × 5² = 3,14 × 25 = 78,5 m². Aire de la zone enherbée : 1 000 − 78,5 ≈ 921 m².',
  'Utiliser le diamètre (10 m) au lieu du rayon (5 m) dans la formule de l''aire du cercle, ce qui donnerait une aire de piscine de 314 m².',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (QCM) — Consolidation : périmètre d'une piste d'athlétisme (rectangle + demi-cercles)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées', 'Intermediaire', 'qcm',
  'Une piste d''athlétisme est composée d''un rectangle de 100 m × 60 m et de deux demi-cercles de diamètre 60 m aux extrémités. Quel est le périmètre de la piste ? Arrondir au m.', NULL,
  '[{"id":"a","label":"320 m"},{"id":"b","label":"389 m"},{"id":"c","label":"508 m"},{"id":"d","label":"440 m"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le périmètre de la piste se compose des deux longueurs du rectangle et des deux demi-cercles (qui forment un cercle complet de diamètre 60 m). P = 2 × 100 + π × 60 = 200 + 3,14 × 60 = 200 + 188,4 = 388,4 m ≈ 389 m.',
  'Additionner les quatre côtés du rectangle (320 m) sans tenir compte des demi-cercles, ou ajouter le périmètre complet du rectangle plus les demi-cercles.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (reponse_courte) — Consolidation : aire et périmètre d'un losange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées', 'Intermediaire', 'reponse_courte',
  'Un losange a des diagonales de 12 cm et 16 cm. Calculez son aire.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["96","96 cm²","96 cm2"]}'::jsonb,
  'L''aire d''un losange se calcule avec la formule : A = (d₁ × d₂) / 2. Ici : A = (12 × 16) / 2 = 192 / 2 = 96 cm². Pour information, le côté du losange vaut √(6² + 8²) = √(36 + 64) = √100 = 10 cm, et le périmètre vaut 4 × 10 = 40 cm.',
  'Oublier de diviser par 2 et répondre 192 cm², ou confondre la formule avec celle du rectangle.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (QCM) — Approfondissement : aire restante après découpe d'un quart de cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées', 'Intermediaire', 'qcm',
  'On découpe un quart de cercle de rayon 6 cm dans un carré de côté 6 cm. Quelle est l''aire de la partie restante ? Arrondir au dixième.', NULL,
  '[{"id":"a","label":"7,7 cm²"},{"id":"b","label":"9,0 cm²"},{"id":"c","label":"28,3 cm²"},{"id":"d","label":"14,1 cm²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Aire du carré : 6 × 6 = 36 cm². Aire du quart de cercle : (π × 6²) / 4 = (3,14 × 36) / 4 = 113,04 / 4 = 28,26 cm². Aire restante : 36 − 28,26 = 7,74 cm² ≈ 7,7 cm².',
  'Calculer l''aire d''un demi-cercle au lieu d''un quart de cercle, ou soustraire dans le mauvais sens.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (reponse_courte) — Approfondissement : aire d'une figure composée (rectangle + triangle)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0170000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_aires_perimetres_composees',
  'Aires et périmètres — Figures composées', 'Intermediaire', 'reponse_courte',
  'Une figure est composée d''un rectangle de 12 cm × 8 cm surmonté d''un triangle isocèle de base 12 cm et de hauteur 5 cm. Calculez l''aire totale de cette figure.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["126","126 cm²","126 cm2"]}'::jsonb,
  'Aire du rectangle : 12 × 8 = 96 cm². Aire du triangle : (12 × 5) / 2 = 30 cm². Aire totale : 96 + 30 = 126 cm². Pour le périmètre : côté du triangle = √(6² + 5²) = √61 ≈ 7,81 cm. Périmètre = 12 + 8 + 7,81 + 7,81 + 8 = 43,62 ≈ 43,6 cm.',
  'Oublier de diviser par 2 pour l''aire du triangle et répondre 156 cm², ou ne calculer que l''aire d''une des deux figures.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
