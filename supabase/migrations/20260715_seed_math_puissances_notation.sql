-- Série : Puissances de 10 et notation scientifique (nombres_calcul)
-- Niveau : Intermédiaire | Accès : free
-- 7 exercices — progression amorce → consolidation → approfondissement

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_puissances_notation', 'Puissances de 10 et notation scientifique', 'Intermediaire',
  'qcm', 'Que vaut 10³ ?', NULL,
  '[{"id":"a","label":"30"},{"id":"b","label":"100"},{"id":"c","label":"1 000"},{"id":"d","label":"10 000"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '10³ signifie 10 × 10 × 10 = 1 000. L''exposant indique le nombre de fois que l''on multiplie 10 par lui-même.', 'Confondre 10³ avec 10 × 3 = 30.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_puissances_notation', 'Puissances de 10 et notation scientifique', 'Intermediaire',
  'reponse_courte', 'Calculer 10⁻². Donner le résultat sous forme décimale.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["0,01","0.01"]}'::jsonb,
  '10⁻² = 1 / 10² = 1 / 100 = 0,01. Un exposant négatif signifie que l''on divise 1 par la puissance correspondante.', 'Écrire −100 au lieu de 0,01, en confondant exposant négatif et nombre négatif.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_puissances_notation', 'Puissances de 10 et notation scientifique', 'Intermediaire',
  'qcm', 'Quelle est l''écriture scientifique de 45 200 ?', NULL,
  '[{"id":"a","label":"45,2 × 10³"},{"id":"b","label":"4,52 × 10⁴"},{"id":"c","label":"452 × 10²"},{"id":"d","label":"4,52 × 10³"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''écriture scientifique d''un nombre se présente sous la forme a × 10ⁿ, où 1 ≤ a < 10. Ici : 45 200 = 4,52 × 10⁴.', 'Oublier que le coefficient a doit être compris entre 1 (inclus) et 10 (exclu).', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_puissances_notation', 'Puissances de 10 et notation scientifique', 'Intermediaire',
  'reponse_courte', 'Calculer 10⁴ × 10³. Donner le résultat sous forme d''une puissance de 10 (par exemple : 10^5).', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10^7","10⁷","10 000 000"]}'::jsonb,
  'Lorsque l''on multiplie deux puissances de même base, on additionne les exposants : 10⁴ × 10³ = 10⁴⁺³ = 10⁷.', 'Multiplier les exposants au lieu de les additionner (10¹² au lieu de 10⁷).', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_puissances_notation', 'Puissances de 10 et notation scientifique', 'Intermediaire',
  'qcm', 'Le nombre 3,6 × 10⁻³ est égal à :', NULL,
  '[{"id":"a","label":"3 600"},{"id":"b","label":"0,036"},{"id":"c","label":"0,0036"},{"id":"d","label":"−3 600"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '3,6 × 10⁻³ = 3,6 × 0,001 = 0,0036. L''exposant −3 décale la virgule de 3 rangs vers la gauche.', 'Décaler la virgule dans le mauvais sens et obtenir 3 600.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_puissances_notation', 'Puissances de 10 et notation scientifique', 'Intermediaire',
  'vrai_faux', 'L''ordre de grandeur de 8 743 est 10⁴.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''ordre de grandeur d''un nombre est la puissance de 10 la plus proche. 8 743 est plus proche de 10 000 (10⁴) que de 1 000 (10³), donc l''ordre de grandeur est bien 10⁴.', 'Confondre l''ordre de grandeur avec le nombre de chiffres du nombre.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8040000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_puissances_notation', 'Puissances de 10 et notation scientifique', 'Intermediaire',
  'qcm', 'La distance moyenne Terre-Soleil est d''environ 150 millions de kilomètres. Quelle est son écriture scientifique en kilomètres ?', NULL,
  '[{"id":"a","label":"1,5 × 10⁷ km"},{"id":"b","label":"15 × 10⁷ km"},{"id":"c","label":"1,5 × 10⁸ km"},{"id":"d","label":"1,5 × 10⁹ km"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '150 millions = 150 000 000 = 1,5 × 10⁸. On décompose : 150 000 000 = 1,5 × 100 000 000 = 1,5 × 10⁸. Ce type de grandeur astronomique illustre l''intérêt pratique de la notation scientifique.', 'Se tromper dans le comptage des zéros et écrire 10⁷ ou 10⁹ au lieu de 10⁸.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
