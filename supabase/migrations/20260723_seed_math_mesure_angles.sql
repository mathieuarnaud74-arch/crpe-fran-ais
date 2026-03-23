-- Série : Mesure d'angles — Types et calculs
-- Sous-domaine : grandeurs_mesures
-- Niveau : Facile | Accès : free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles', 'Mesure d''angles — Types et calculs', 'Facile',
  'qcm', 'Un angle mesure 47°. Comment le qualifie-t-on ?', NULL,
  '[{"id":"a","label":"Angle droit"},{"id":"b","label":"Angle aigu"},{"id":"c","label":"Angle obtus"},{"id":"d","label":"Angle plat"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un angle aigu est un angle dont la mesure est strictement comprise entre 0° et 90°. Comme 47° est entre 0° et 90°, c''est un angle aigu. Un angle droit mesure exactement 90°, un angle obtus est compris entre 90° et 180°, et un angle plat mesure exactement 180°.',
  'Confondre angle aigu et angle obtus : l''élève inverse les définitions et pense qu''un angle « petit » est obtus.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles', 'Mesure d''angles — Types et calculs', 'Facile',
  'vrai_faux', 'Un angle de 135° est un angle obtus.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Un angle obtus est un angle dont la mesure est strictement comprise entre 90° et 180°. Comme 90° < 135° < 180°, l''angle de 135° est bien un angle obtus. L''affirmation est vraie.',
  'Penser qu''un angle obtus doit être « proche de 180° » : l''élève a une vision trop restrictive de la catégorie des angles obtus.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles', 'Mesure d''angles — Types et calculs', 'Facile',
  'qcm', 'Deux angles sont complémentaires. L''un mesure 34°. Quelle est la mesure de l''autre ?', NULL,
  '[{"id":"a","label":"146°"},{"id":"b","label":"56°"},{"id":"c","label":"66°"},{"id":"d","label":"34°"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Deux angles complémentaires ont une somme égale à 90°. Si l''un mesure 34°, l''autre mesure 90° − 34° = 56°. L''option a (146°) correspond à 180° − 34°, c''est-à-dire au calcul avec des angles supplémentaires. L''option d suppose que les angles complémentaires sont égaux.',
  'Confondre complémentaire (somme = 90°) et supplémentaire (somme = 180°) : l''élève calcule 180° − 34° = 146° au lieu de 90° − 34° = 56°.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles', 'Mesure d''angles — Types et calculs', 'Facile',
  'reponse_courte', 'Deux angles sont supplémentaires. L''un mesure 72°. Quelle est la mesure de l''autre angle, en degrés ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["108","108°","108 degrés"]}'::jsonb,
  'Deux angles supplémentaires ont une somme égale à 180°. Si l''un mesure 72°, l''autre mesure 180° − 72° = 108°. Les angles supplémentaires apparaissent notamment lorsque deux angles sont adjacents et forment un angle plat.',
  'Calculer 90° − 72° = 18° en confondant avec les angles complémentaires : l''élève mélange les deux notions.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles', 'Mesure d''angles — Types et calculs', 'Facile',
  'qcm', 'Deux droites se coupent en un point O. L''un des angles formés mesure 65°. Que vaut l''angle verticalement opposé ?', NULL,
  '[{"id":"a","label":"65°"},{"id":"b","label":"115°"},{"id":"c","label":"25°"},{"id":"d","label":"130°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Deux angles verticalement opposés sont toujours égaux. Si l''un mesure 65°, l''angle verticalement opposé mesure aussi 65°. Les deux autres angles (adjacents) sont supplémentaires du premier et mesurent chacun 180° − 65° = 115°.',
  'Calculer le supplémentaire (115°) au lieu de reconnaître que les angles verticalement opposés sont égaux : l''élève confond « opposé » et « supplémentaire ».',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles', 'Mesure d''angles — Types et calculs', 'Facile',
  'qcm', 'Dans un triangle, deux angles mesurent 55° et 80°. Quelle est la mesure du troisième angle ?', NULL,
  '[{"id":"a","label":"45°"},{"id":"b","label":"55°"},{"id":"c","label":"35°"},{"id":"d","label":"225°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La somme des angles d''un triangle est toujours égale à 180°. Le troisième angle vaut donc 180° − 55° − 80° = 45°. L''option d (225°) est impossible car un angle d''un triangle ne peut pas dépasser 180°. Cette propriété fondamentale est à connaître par cœur au CRPE.',
  'Additionner les deux angles connus et oublier de soustraire de 180° : l''élève répond 135° ou ne sait plus quelle opération effectuer.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles', 'Mesure d''angles — Types et calculs', 'Facile',
  'reponse_courte', 'À 14 h 00, quelle est la mesure, en degrés, de l''angle formé entre la grande aiguille et la petite aiguille d''une horloge ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["60","60°","60 degrés"]}'::jsonb,
  'À 14 h 00, la grande aiguille pointe vers le 12 et la petite aiguille vers le 2. Chaque heure correspond à 360° / 12 = 30°. L''écart entre 12 et 2 est de 2 heures, soit 2 × 30° = 60°. Ce type de problème est fréquent au CRPE et mobilise la proportionnalité appliquée aux angles.',
  'Diviser 360° par 24 au lieu de 12 : l''élève pense que le cadran couvre 24 heures et obtient 15° par heure au lieu de 30°.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
