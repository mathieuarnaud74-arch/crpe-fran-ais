-- Série : Périmètre des figures usuelles
-- Sous-domaine : grandeurs_mesures
-- Niveau : Facile | Accès : free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles', 'Périmètre des figures usuelles', 'Facile',
  'qcm', 'Un carré a un côté de 9 cm. Quel est son périmètre ?', NULL,
  '[{"id":"a","label":"18 cm"},{"id":"b","label":"27 cm"},{"id":"c","label":"36 cm"},{"id":"d","label":"81 cm"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le périmètre d''un carré est égal à 4 fois la longueur de son côté : P = 4 × c = 4 × 9 = 36 cm. L''option d (81 cm) correspond à l''aire du carré (9² = 81 cm²), pas à son périmètre.',
  'Confondre périmètre et aire : l''élève calcule 9 × 9 = 81 au lieu de 4 × 9 = 36.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles', 'Périmètre des figures usuelles', 'Facile',
  'reponse_courte', 'Un rectangle a une longueur de 14 cm et une largeur de 8 cm. Calculez son périmètre en cm.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["44","44 cm","44cm"]}'::jsonb,
  'Le périmètre d''un rectangle se calcule avec la formule P = 2 × (L + l) = 2 × (14 + 8) = 2 × 22 = 44 cm. On additionne d''abord la longueur et la largeur, puis on multiplie par 2 car le rectangle possède deux paires de côtés égaux.',
  'Oublier de multiplier par 2 et répondre 22 cm : l''élève additionne L + l mais ne prend en compte que la moitié du contour.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles', 'Périmètre des figures usuelles', 'Facile',
  'qcm', 'Un triangle a des côtés mesurant 7 cm, 5 cm et 9 cm. Quel est son périmètre ?', NULL,
  '[{"id":"a","label":"17,5 cm"},{"id":"b","label":"21 cm"},{"id":"c","label":"35 cm"},{"id":"d","label":"15 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le périmètre d''un triangle est la somme des longueurs de ses trois côtés : P = 7 + 5 + 9 = 21 cm. Il n''existe pas de formule spéciale : on additionne simplement les trois côtés, quelle que soit la nature du triangle.',
  'Appliquer par erreur une formule du type « 2 × (a + b) » comme pour le rectangle : l''élève oublie que le triangle possède trois côtés distincts.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles', 'Périmètre des figures usuelles', 'Facile',
  'vrai_faux', 'Un losange dont le côté mesure 6 cm a un périmètre de 24 cm.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Un losange possède quatre côtés de même longueur. Son périmètre est donc P = 4 × c = 4 × 6 = 24 cm. L''affirmation est vraie. Attention à ne pas confondre le losange avec un parallélogramme quelconque dont les côtés opposés seulement sont égaux.',
  'Confondre losange et parallélogramme quelconque : l''élève pense que seuls deux côtés mesurent 6 cm et calcule un périmètre différent.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles', 'Périmètre des figures usuelles', 'Facile',
  'qcm', 'Quelle est la formule du périmètre d''un polygone régulier à n côtés, chaque côté mesurant c ?', NULL,
  '[{"id":"a","label":"P = n × c"},{"id":"b","label":"P = 2 × n × c"},{"id":"c","label":"P = n × c²"},{"id":"d","label":"P = (n × c) / 2"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Un polygone régulier possède n côtés de même longueur c. Son périmètre est simplement la somme de tous ses côtés : P = n × c. Par exemple, un hexagone régulier de côté 4 cm a un périmètre de 6 × 4 = 24 cm.',
  'Multiplier par 2 par réflexe (formule du rectangle) : l''élève applique P = 2 × n × c, ce qui donne un résultat doublé.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles', 'Périmètre des figures usuelles', 'Facile',
  'vrai_faux', 'Une figure en forme de L est constituée d''un grand rectangle de 10 cm × 8 cm dont on a retiré un rectangle de 6 cm × 4 cm dans un coin. Le périmètre de cette figure en L est de 36 cm.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'En parcourant le contour extérieur de la figure en L, on compte 6 segments. En plaçant le rectangle initial avec sa base en bas (10 cm × 8 cm) et en retirant un rectangle de 6 cm × 4 cm dans le coin supérieur droit, les sommets de la figure en L sont : (0,0), (10,0), (10,4), (4,4), (4,8), (0,8). Les segments mesurent : 10 + 4 + 6 + 4 + 4 + 8 = 36 cm. Remarque importante : le périmètre d''une figure en L est le même que celui du rectangle englobant ! En effet, les deux segments supplémentaires créés par l''encoche (ici 6 et 4) remplacent exactement les deux segments manquants du rectangle (6 et 4).',
  'Additionner les périmètres des deux rectangles composants (28 + 20 = 48 cm), en comptant deux fois le côté intérieur. Le périmètre se calcule en suivant uniquement le contour extérieur.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles', 'Périmètre des figures usuelles', 'Facile',
  'reponse_courte', 'Un jardin rectangulaire de 25 m de long et 18 m de large doit être entouré d''une clôture. Quelle longueur de clôture faut-il acheter, en mètres ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["86","86 m","86m"]}'::jsonb,
  'La longueur de clôture correspond au périmètre du jardin rectangulaire : P = 2 × (L + l) = 2 × (25 + 18) = 2 × 43 = 86 m. Ce type de problème concret illustre l''utilité du calcul de périmètre dans la vie quotidienne : l''élève doit identifier que « entourer » revient à calculer un périmètre.',
  'Calculer l''aire au lieu du périmètre : l''élève répond 25 × 18 = 450 m² alors qu''on demande une longueur de clôture (mesure linéaire, pas surfacique).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
