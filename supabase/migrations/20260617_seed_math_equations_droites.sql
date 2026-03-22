-- Seed: Équations de droites et repères (7 exercices)
-- Subdomain: geometrie | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000001',
  'Mathematiques', 'geometrie', 'math_equations_droites',
  'Équations de droites et repères', 'Intermediaire',
  'qcm',
  'Quelle est l''équation de la droite passant par l''origine et de coefficient directeur 3 ?',
  NULL,
  '[{"id":"a","label":"y = x + 3"},{"id":"b","label":"y = 3x"},{"id":"c","label":"y = 3"},{"id":"d","label":"x = 3"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Une droite passant par l''origine a une équation de la forme y = mx, où m est le coefficient directeur. Ici m = 3, donc l''équation est y = 3x.',
  'Confondre l''ordonnée à l''origine avec le coefficient directeur et écrire y = x + 3 au lieu de y = 3x.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000002',
  'Mathematiques', 'geometrie', 'math_equations_droites',
  'Équations de droites et repères', 'Intermediaire',
  'vrai_faux',
  'La droite d''équation y = 2x + 1 passe par le point (3, 7).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'On remplace x par 3 dans l''équation : y = 2 × 3 + 1 = 6 + 1 = 7. On obtient bien y = 7, donc le point (3, 7) appartient à la droite. L''affirmation est vraie.',
  'Oublier d''ajouter l''ordonnée à l''origine (+1) et calculer y = 2 × 3 = 6, concluant à tort que le point n''appartient pas à la droite.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000003',
  'Mathematiques', 'geometrie', 'math_equations_droites',
  'Équations de droites et repères', 'Intermediaire',
  'reponse_courte',
  'Déterminer le coefficient directeur de la droite passant par les points A(1, 2) et B(4, 8).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2"]}'::jsonb,
  'Le coefficient directeur m se calcule avec la formule : m = (yB − yA) / (xB − xA) = (8 − 2) / (4 − 1) = 6 / 3 = 2.',
  'Inverser le numérateur et le dénominateur dans la formule du coefficient directeur, en calculant (4 − 1) / (8 − 2) = 1/2 au lieu de 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000004',
  'Mathematiques', 'geometrie', 'math_equations_droites',
  'Équations de droites et repères', 'Intermediaire',
  'qcm',
  'Quelle est l''équation de la droite passant par A(2, 5) et de coefficient directeur −1 ?',
  NULL,
  '[{"id":"a","label":"y = −x + 5"},{"id":"b","label":"y = −x + 7"},{"id":"c","label":"y = x + 3"},{"id":"d","label":"y = −x + 2"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On utilise l''équation y − yA = m(x − xA), soit y − 5 = −1 × (x − 2). En développant : y − 5 = −x + 2, donc y = −x + 7.',
  'Oublier de développer correctement −1 × (−2) = +2 et écrire y = −x + 5 en conservant l''ordonnée du point A comme ordonnée à l''origine.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000005',
  'Mathematiques', 'geometrie', 'math_equations_droites',
  'Équations de droites et repères', 'Intermediaire',
  'qcm',
  'Les droites d''équations y = 3x + 1 et y = 3x − 5 sont :',
  NULL,
  '[{"id":"a","label":"Sécantes"},{"id":"b","label":"Parallèles"},{"id":"c","label":"Perpendiculaires"},{"id":"d","label":"Confondues"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Deux droites sont parallèles lorsqu''elles ont le même coefficient directeur mais des ordonnées à l''origine différentes. Ici, les deux droites ont pour coefficient directeur 3, mais des ordonnées à l''origine distinctes (+1 et −5). Elles sont donc parallèles.',
  'Confondre droites parallèles et droites confondues : des droites confondues ont le même coefficient directeur ET la même ordonnée à l''origine.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000006',
  'Mathematiques', 'geometrie', 'math_equations_droites',
  'Équations de droites et repères', 'Intermediaire',
  'reponse_courte',
  'Trouver les coordonnées du point d''intersection des droites d''équations y = 2x + 1 et y = −x + 7.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(2, 5)","(2 ; 5)","(2;5)","(2,5)","x=2 et y=5","x = 2 et y = 5"]}'::jsonb,
  'On résout le système en égalisant : 2x + 1 = −x + 7. On obtient 3x = 6, soit x = 2. En remplaçant dans la première équation : y = 2 × 2 + 1 = 5. Le point d''intersection est (2, 5).',
  'Faire une erreur de signe en résolvant l''équation : oublier de changer le signe de −x en le passant de l''autre côté, ce qui donne x = 6 au lieu de 3x = 6.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000007',
  'Mathematiques', 'geometrie', 'math_equations_droites',
  'Équations de droites et repères', 'Intermediaire',
  'qcm',
  'Deux droites de coefficients directeurs m₁ et m₂ sont perpendiculaires si :',
  NULL,
  '[{"id":"a","label":"m₁ = m₂"},{"id":"b","label":"m₁ + m₂ = 0"},{"id":"c","label":"m₁ × m₂ = −1"},{"id":"d","label":"m₁ × m₂ = 1"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Deux droites sont perpendiculaires si et seulement si le produit de leurs coefficients directeurs vaut −1, c''est-à-dire m₁ × m₂ = −1. Par exemple, les droites y = 2x et y = −½x sont perpendiculaires car 2 × (−½) = −1.',
  'Confondre la condition de perpendicularité (m₁ × m₂ = −1) avec la condition m₁ + m₂ = 0, qui signifie simplement que les pentes sont opposées (droites symétriques par rapport à l''axe des abscisses).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
