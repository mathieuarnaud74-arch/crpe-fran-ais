-- Série : Aire des figures usuelles — Formules et calculs
-- Sous-domaine : grandeurs_mesures
-- Niveau : Intermediaire | Accès : free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_aire_figures_usuelles', 'Aire des figures usuelles — Formules et calculs', 'Intermediaire',
  'qcm', 'Un rectangle a une longueur de 12 cm et une largeur de 7 cm. Quelle est son aire ?', NULL,
  '[{"id":"a","label":"19 cm²"},{"id":"b","label":"84 cm²"},{"id":"c","label":"38 cm²"},{"id":"d","label":"42 cm²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''aire d''un rectangle se calcule en multipliant la longueur par la largeur : A = L × l = 12 × 7 = 84 cm². L''option c (38 cm²) correspond au périmètre divisé par deux, et l''option d (42 cm²) à une erreur de calcul fréquente.',
  'Confondre aire et périmètre : le périmètre serait 2 × (12 + 7) = 38 cm, pas 38 cm².',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_aire_figures_usuelles', 'Aire des figures usuelles — Formules et calculs', 'Intermediaire',
  'reponse_courte', 'Un triangle a une base de 10 cm et une hauteur de 6 cm. Calculez son aire en cm².', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30","30 cm²","30cm²"]}'::jsonb,
  'L''aire d''un triangle se calcule avec la formule A = (base × hauteur) / 2. Ici : A = (10 × 6) / 2 = 60 / 2 = 30 cm². On divise par 2 car le triangle correspond à la moitié d''un parallélogramme de même base et même hauteur.',
  'Oublier de diviser par 2 et répondre 60 cm² : l''élève applique la formule du rectangle au lieu de celle du triangle.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_aire_figures_usuelles', 'Aire des figures usuelles — Formules et calculs', 'Intermediaire',
  'qcm', 'Quelle est la formule de l''aire d''un parallélogramme de base b et de hauteur h ?', NULL,
  '[{"id":"a","label":"A = b × h"},{"id":"b","label":"A = (b × h) / 2"},{"id":"c","label":"A = 2 × (b + h)"},{"id":"d","label":"A = b² × h"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''aire d''un parallélogramme est égale au produit de sa base par sa hauteur : A = b × h. Attention, la hauteur est la distance perpendiculaire entre les deux bases, pas la longueur du côté oblique. La formule (b × h) / 2 est celle du triangle.',
  'Confondre avec la formule du triangle en divisant par 2 : l''élève associe toute figure « non rectangulaire » à une division par 2.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_aire_figures_usuelles', 'Aire des figures usuelles — Formules et calculs', 'Intermediaire',
  'vrai_faux', 'L''aire d''un trapèze de bases B = 8 cm et b = 5 cm, et de hauteur h = 4 cm, est égale à 26 cm².', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''aire d''un trapèze se calcule avec la formule A = (B + b) × h / 2. Ici : A = (8 + 5) × 4 / 2 = 13 × 4 / 2 = 52 / 2 = 26 cm². L''affirmation est donc vraie.',
  'Oublier de diviser par 2 dans la formule du trapèze, ce qui donnerait 52 cm² au lieu de 26 cm².',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_aire_figures_usuelles', 'Aire des figures usuelles — Formules et calculs', 'Intermediaire',
  'qcm', 'Un disque a un rayon de 5 cm. Quelle est son aire ? (On prendra π ≈ 3,14)', NULL,
  '[{"id":"a","label":"31,4 cm²"},{"id":"b","label":"78,5 cm²"},{"id":"c","label":"15,7 cm²"},{"id":"d","label":"157 cm²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''aire d''un disque se calcule avec la formule A = π × r². Ici : A = 3,14 × 5² = 3,14 × 25 = 78,5 cm². L''option a (31,4 cm²) correspond au périmètre du cercle (2πr), et l''option d (157 cm²) correspond à 2 × π × r², une erreur de formule.',
  'Confondre aire du disque (πr²) et périmètre du cercle (2πr) : l''élève calcule 2 × 3,14 × 5 = 31,4 cm² au lieu de 3,14 × 25 = 78,5 cm².',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_aire_figures_usuelles', 'Aire des figures usuelles — Formules et calculs', 'Intermediaire',
  'qcm', 'Parmi ces figures, laquelle a la plus grande aire ? Un carré de côté 6 cm, un cercle de rayon 4 cm (π ≈ 3,14), un triangle de base 10 cm et de hauteur 8 cm.', NULL,
  '[{"id":"a","label":"Le carré (36 cm²)"},{"id":"b","label":"Le cercle (50,24 cm²)"},{"id":"c","label":"Le triangle (40 cm²)"},{"id":"d","label":"Les trois figures ont la même aire"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Calculons chaque aire : Carré = 6² = 36 cm². Cercle = π × 4² = 3,14 × 16 = 50,24 cm². Triangle = (10 × 8) / 2 = 40 cm². Le cercle a la plus grande aire avec 50,24 cm². Cet exercice montre l''importance de calculer avant de comparer visuellement.',
  'Se fier à l''apparence visuelle des figures plutôt qu''au calcul : l''élève pense que le carré ou le triangle est « plus grand » sans effectuer le calcul.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa040000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_aire_figures_usuelles', 'Aire des figures usuelles — Formules et calculs', 'Intermediaire',
  'reponse_courte', 'Un jardin rectangulaire de 20 m sur 15 m contient une allée circulaire (rayon 3 m, π ≈ 3,14) et un massif triangulaire (base 8 m, hauteur 5 m). Quelle est l''aire restante du jardin, en m² ? Arrondissez à l''unité.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["252","252 m²","252m²"]}'::jsonb,
  'Aire du jardin = 20 × 15 = 300 m². Aire du cercle = π × 3² = 3,14 × 9 = 28,26 m². Aire du triangle = (8 × 5) / 2 = 20 m². Aire restante = 300 − 28,26 − 20 = 251,74 ≈ 252 m². Ce problème mobilise plusieurs formules d''aire et la soustraction de surfaces.',
  'Oublier de soustraire l''une des deux figures intérieures, ou additionner au lieu de soustraire.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
