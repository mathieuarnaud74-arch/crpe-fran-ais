-- Série : Médiane, hauteur et bissectrice — Droites remarquables
-- Sous-domaine : geometrie
-- Niveau : Intermediaire | Accès : free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_mediane_hauteur_bissectrice', 'Médiane, hauteur et bissectrice — Droites remarquables', 'Intermediaire',
  'qcm', 'Quelle est la définition correcte d''une médiane d''un triangle ?', NULL,
  '[{"id":"a","label":"Un segment reliant un sommet au milieu du côté opposé"},{"id":"b","label":"Un segment perpendiculaire à un côté passant par le sommet opposé"},{"id":"c","label":"Un segment qui coupe un angle en deux parties égales"},{"id":"d","label":"Un segment perpendiculaire passant par le milieu d''un côté"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La médiane d''un triangle est le segment qui relie un sommet au milieu du côté opposé. L''option b décrit une hauteur (perpendiculaire issue d''un sommet). L''option c décrit une bissectrice (qui partage un angle en deux angles égaux). L''option d décrit une médiatrice (perpendiculaire passant par le milieu d''un côté). Chaque triangle possède exactement trois médianes.',
  'Confondre médiane et médiatrice : l''élève pense que la médiane est perpendiculaire au côté opposé, alors qu''elle le rejoint simplement en son milieu sans condition d''angle.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_mediane_hauteur_bissectrice', 'Médiane, hauteur et bissectrice — Droites remarquables', 'Intermediaire',
  'vrai_faux', 'Dans un triangle ABC, la hauteur issue de A est toujours située à l''intérieur du triangle.', NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Dans un triangle obtusangle (ayant un angle obtus), la hauteur issue d''un sommet adjacent à l''angle obtus tombe à l''extérieur du triangle. Par exemple, dans un triangle ABC avec un angle obtus en B, la hauteur issue de A (perpendiculaire à la droite (BC)) a son pied situé en dehors du segment [BC]. Seul le triangle acutangle a ses trois hauteurs intérieures.',
  'Penser que toutes les droites remarquables d''un triangle restent à l''intérieur de celui-ci : l''élève ne considère que le cas des triangles acutangles.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_mediane_hauteur_bissectrice', 'Médiane, hauteur et bissectrice — Droites remarquables', 'Intermediaire',
  'qcm', 'Comment s''appelle le point de concours des trois médianes d''un triangle ?', NULL,
  '[{"id":"a","label":"L''orthocentre"},{"id":"b","label":"Le centre de gravité (ou centroïde)"},{"id":"c","label":"Le centre du cercle inscrit"},{"id":"d","label":"Le centre du cercle circonscrit"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les trois médianes d''un triangle se coupent en un point unique appelé centre de gravité (ou centroïde), noté G. L''orthocentre (option a) est le point de concours des trois hauteurs. Le centre du cercle inscrit (option c) est le point de concours des trois bissectrices. Le centre du cercle circonscrit (option d) est le point de concours des trois médiatrices.',
  'Confondre les points remarquables : l''élève associe le centre de gravité aux hauteurs ou aux bissectrices au lieu des médianes.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_mediane_hauteur_bissectrice', 'Médiane, hauteur et bissectrice — Droites remarquables', 'Intermediaire',
  'qcm', 'Dans un triangle ABC, G est le centre de gravité et M le milieu de [BC]. Si AM = 9 cm, quelle est la longueur AG ?', NULL,
  '[{"id":"a","label":"3 cm"},{"id":"b","label":"4,5 cm"},{"id":"c","label":"6 cm"},{"id":"d","label":"7,5 cm"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le centre de gravité G divise chaque médiane dans le rapport 2:1 à partir du sommet. Ainsi AG = (2/3) × AM = (2/3) × 9 = 6 cm, et GM = (1/3) × AM = 3 cm. Cette propriété est fondamentale : le centre de gravité est toujours situé aux deux tiers de chaque médiane en partant du sommet.',
  'Inverser le rapport et calculer AG = (1/3) × AM = 3 cm : l''élève place G au tiers de la médiane depuis le sommet au lieu des deux tiers.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_mediane_hauteur_bissectrice', 'Médiane, hauteur et bissectrice — Droites remarquables', 'Intermediaire',
  'reponse_courte', 'Dans un triangle ABC, les trois hauteurs se coupent en un point remarquable. Comment s''appelle ce point ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["orthocentre","l''orthocentre","Orthocentre","L''orthocentre"]}'::jsonb,
  'Le point de concours des trois hauteurs d''un triangle s''appelle l''orthocentre, souvent noté H. Dans un triangle acutangle, l''orthocentre est à l''intérieur du triangle. Dans un triangle obtusangle, il est à l''extérieur. Dans un triangle rectangle, l''orthocentre coïncide avec le sommet de l''angle droit.',
  'Confondre orthocentre et centre de gravité : l''élève mélange le point de concours des hauteurs avec celui des médianes.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_mediane_hauteur_bissectrice', 'Médiane, hauteur et bissectrice — Droites remarquables', 'Intermediaire',
  'qcm', 'Quel point remarquable du triangle est le centre du cercle circonscrit ?', NULL,
  '[{"id":"a","label":"Le point de concours des trois médianes"},{"id":"b","label":"Le point de concours des trois hauteurs"},{"id":"c","label":"Le point de concours des trois médiatrices"},{"id":"d","label":"Le point de concours des trois bissectrices"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le centre du cercle circonscrit à un triangle est le point de concours des trois médiatrices des côtés, souvent noté O. Ce point est équidistant des trois sommets du triangle (OA = OB = OC = rayon du cercle). À ne pas confondre avec le centre du cercle inscrit (point de concours des bissectrices), qui est équidistant des trois côtés.',
  'Confondre cercle inscrit et cercle circonscrit : l''élève associe le cercle circonscrit aux bissectrices au lieu des médiatrices.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_mediane_hauteur_bissectrice', 'Médiane, hauteur et bissectrice — Droites remarquables', 'Intermediaire',
  'qcm', 'Un architecte doit suspendre un panneau triangulaire par un seul câble pour qu''il reste parfaitement en équilibre horizontal. En quel point remarquable du triangle doit-il fixer le câble ?', NULL,
  '[{"id":"a","label":"À l''orthocentre (point de concours des hauteurs)"},{"id":"b","label":"Au centre du cercle inscrit (point de concours des bissectrices)"},{"id":"c","label":"Au centre de gravité (point de concours des médianes)"},{"id":"d","label":"Au centre du cercle circonscrit (point de concours des médiatrices)"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Pour qu''un objet plan reste en équilibre horizontal lorsqu''il est suspendu en un seul point, il faut le fixer en son centre de gravité. Ce point, situé à l''intersection des trois médianes, a la propriété de diviser le triangle en zones de masses égales. C''est une application concrète de la géométrie dans la vie quotidienne, souvent rencontrée dans les problèmes du CRPE.',
  'Choisir l''orthocentre ou le centre du cercle inscrit : l''élève confond le point d''équilibre physique avec d''autres points remarquables du triangle.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
