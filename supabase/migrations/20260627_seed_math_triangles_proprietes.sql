-- Série : Triangles — Propriétés, angles et cas remarquables (7 exercices, Intermédiaire, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000001',
  'Mathematiques', 'geometrie', 'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables', 'Intermediaire',
  'qcm',
  'Dans un triangle ABC, on sait que l''angle en A mesure 54° et que l''angle en B mesure 73°. Quelle est la mesure de l''angle en C ?',
  NULL,
  '[{"id":"a","label":"53°"},{"id":"b","label":"63°"},{"id":"c","label":"127°"},{"id":"d","label":"73°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La somme des angles d''un triangle est toujours égale à 180°. On calcule donc : angle C = 180° − 54° − 73° = 53°. Cette propriété fondamentale découle du cinquième postulat d''Euclide et s''applique à tout triangle du plan euclidien, quelle que soit sa nature (quelconque, isocèle, rectangle, etc.).',
  'Répondre 127° en calculant 54° + 73° = 127° au lieu de soustraire de 180°. L''élève oublie que la somme des trois angles vaut 180° et additionne les deux angles connus au lieu de les retrancher.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000002',
  'Mathematiques', 'geometrie', 'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables', 'Intermediaire',
  'vrai_faux',
  'Un triangle qui possède deux côtés de même longueur est nécessairement un triangle isocèle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Par définition, un triangle isocèle est un triangle qui possède au moins deux côtés de même longueur. La présence de deux côtés égaux est exactement la condition nécessaire et suffisante pour qu''un triangle soit isocèle. Notons qu''un triangle équilatéral, qui possède trois côtés égaux, est un cas particulier de triangle isocèle.',
  'Penser qu''il faut exactement deux côtés égaux (et pas trois) pour être isocèle. En réalité, un triangle équilatéral est aussi isocèle — « au moins deux côtés égaux » suffit.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000003',
  'Mathematiques', 'geometrie', 'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables', 'Intermediaire',
  'qcm',
  'Un triangle ABC a un angle droit en B. L''angle en A mesure 30°. Quelles sont les propriétés de ce triangle ?',
  NULL,
  '[{"id":"a","label":"Il est rectangle et isocèle"},{"id":"b","label":"Il est rectangle avec un angle de 60° en C"},{"id":"c","label":"Il est rectangle avec un angle de 30° en C"},{"id":"d","label":"Il est équilatéral"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le triangle est rectangle en B (angle droit de 90°). La somme des angles vaut 180°, donc l''angle en C = 180° − 90° − 30° = 60°. Ce triangle remarquable 30-60-90 possède des propriétés métriques importantes : le côté opposé à l''angle de 30° (soit AB) mesure la moitié de l''hypoténuse AC. Ce rapport est fondamental en trigonométrie puisque sin(30°) = 1/2.',
  'Choisir « rectangle et isocèle » en confondant avec le triangle 45-45-90. Un triangle rectangle isocèle a ses deux angles aigus égaux à 45°, pas 30° et 60°.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000004',
  'Mathematiques', 'geometrie', 'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables', 'Intermediaire',
  'reponse_courte',
  'Dans un triangle ABC, le côté [BC] est prolongé au-delà de C. L''angle extérieur en C ainsi formé mesure 115°. Si l''angle en A mesure 47°, quelle est la mesure (en degrés) de l''angle en B ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["68","68°","68 degrés"]}'::jsonb,
  'Le théorème de l''angle extérieur d''un triangle affirme qu''un angle extérieur d''un triangle est égal à la somme des deux angles intérieurs non adjacents. Ici, l''angle extérieur en C (115°) est égal à la somme des angles en A et en B : 115° = 47° + angle B, donc angle B = 115° − 47° = 68°. Vérification : l''angle intérieur en C = 180° − 115° = 65°, et 47° + 68° + 65° = 180°.',
  'Soustraire de 180° au lieu d''appliquer le théorème de l''angle extérieur : l''élève calcule 180° − 115° = 65° puis s''arrête là, confondant l''angle intérieur en C avec l''angle en B.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000005',
  'Mathematiques', 'geometrie', 'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables', 'Intermediaire',
  'vrai_faux',
  'Peut-on construire un triangle dont les côtés mesurent 3 cm, 7 cm et 11 cm ?',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'L''inégalité triangulaire stipule que dans tout triangle, la longueur de chaque côté doit être strictement inférieure à la somme des longueurs des deux autres côtés. Ici, 3 + 7 = 10 < 11 : la somme des deux plus petits côtés (10 cm) est strictement inférieure au plus grand côté (11 cm). L''inégalité triangulaire n''est pas vérifiée, donc ce triangle ne peut pas exister.',
  'Vérifier une seule inégalité (par exemple 3 + 11 > 7) et conclure hâtivement que le triangle existe. Il faut vérifier les trois inégalités, et en pratique il suffit de vérifier que la somme des deux plus petits côtés est supérieure au plus grand.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000006',
  'Mathematiques', 'geometrie', 'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables', 'Intermediaire',
  'qcm',
  'Un triangle rectangle isocèle a pour hypoténuse un segment de 10 cm. Quelle est la longueur de chacun des deux autres côtés ?',
  NULL,
  '[{"id":"a","label":"5 cm"},{"id":"b","label":"5√2 cm (environ 7,07 cm)"},{"id":"c","label":"10√2 cm (environ 14,14 cm)"},{"id":"d","label":"10 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Dans un triangle rectangle isocèle (45-45-90), les deux côtés de l''angle droit sont égaux. Notons a leur longueur commune. Par le théorème de Pythagore : a² + a² = 10², soit 2a² = 100, donc a² = 50 et a = √50 = 5√2 ≈ 7,07 cm. La propriété fondamentale de ce triangle est que l''hypoténuse vaut toujours √2 fois le côté de l''angle droit.',
  'Répondre 5 cm en divisant simplement l''hypoténuse par 2. Cette erreur revient à confondre le triangle rectangle isocèle avec un triangle équilatéral coupé en deux, ou à ignorer le théorème de Pythagore.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000007',
  'Mathematiques', 'geometrie', 'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables', 'Intermediaire',
  'reponse_courte',
  'Dans un triangle ABC, l''angle en A mesure 36° et le triangle est isocèle en A (AB = AC). Les angles à la base sont donc égaux. Calculer la mesure de l''angle en B puis déterminer si la médiane issue de A est aussi hauteur du triangle. Donner la mesure de l''angle en B (en degrés).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["72","72°","72 degrés"]}'::jsonb,
  'Le triangle est isocèle en A, donc AB = AC, ce qui implique que les angles en B et en C sont égaux (propriété des triangles isocèles : les angles à la base sont égaux). Soit x cette mesure commune. On a : 36° + x + x = 180°, donc 2x = 144° et x = 72°. L''angle en B mesure 72°. Concernant la médiane issue de A : dans un triangle isocèle en A, la médiane, la hauteur et la médiatrice issues du sommet principal A sont confondues. La médiane issue de A est donc bien aussi hauteur du triangle.',
  'Calculer (180° − 36°) ÷ 3 = 48° en divisant par 3 au lieu de 2 : l''élève répartit le complément entre trois angles au lieu de deux. Seuls les deux angles à la base sont égaux, pas les trois angles du triangle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
