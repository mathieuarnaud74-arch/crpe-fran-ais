-- Migration: seed calcul littéral (expressions et identités remarquables)
-- 7 exercices, niveau Intermediaire, premium, subdomain nombres_calcul

-- Q1 (QCM) — Amorce : développer (x + 3)²
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables', 'Intermediaire', 'qcm',
  'Développer (x + 3)².', NULL,
  '[{"id":"a","label":"x² + 9"},{"id":"b","label":"x² + 6x + 9"},{"id":"c","label":"x² + 3x + 9"},{"id":"d","label":"2x + 6"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On applique l''identité remarquable (a + b)² = a² + 2ab + b². Ici a = x et b = 3, donc (x + 3)² = x² + 2 × x × 3 + 3² = x² + 6x + 9.',
  'Oublier le double produit 2ab et écrire directement x² + 9.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (vrai_faux) — Amorce : (a+b)² = a² + b² ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables', 'Intermediaire', 'vrai_faux',
  '(a + b)² = a² + b².', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''identité remarquable correcte est (a + b)² = a² + 2ab + b². Le terme « double produit » 2ab est indispensable. Par exemple, (3 + 2)² = 25, alors que 3² + 2² = 13.',
  'Confondre (a + b)² avec a² + b² en oubliant le double produit 2ab.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (reponse_courte) — Consolidation : factoriser x² - 25
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables', 'Intermediaire', 'reponse_courte',
  'Factoriser x² - 25.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(x-5)(x+5)","(x+5)(x-5)","(x - 5)(x + 5)","(x + 5)(x - 5)"]}'::jsonb,
  'On reconnaît une différence de deux carrés : x² - 25 = x² - 5². On applique l''identité remarquable a² - b² = (a - b)(a + b). Donc x² - 25 = (x - 5)(x + 5).',
  'Ne pas reconnaître la forme a² - b² ou tenter de développer au lieu de factoriser.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (QCM) — Consolidation : développer (2x - 3)(2x + 3)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables', 'Intermediaire', 'qcm',
  'Développer (2x - 3)(2x + 3).', NULL,
  '[{"id":"a","label":"4x² - 6x - 9"},{"id":"b","label":"4x² + 9"},{"id":"c","label":"4x² - 9"},{"id":"d","label":"2x² - 9"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'On reconnaît le produit (a - b)(a + b) = a² - b² avec a = 2x et b = 3. Donc (2x - 3)(2x + 3) = (2x)² - 3² = 4x² - 9.',
  'Ajouter un terme en x (comme -6x) en développant par double distribution au lieu d''utiliser l''identité remarquable.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (QCM) — Consolidation : calcul mental avec identité remarquable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables', 'Intermediaire', 'qcm',
  'Quel est le résultat de 101² calculé mentalement en utilisant une identité remarquable ?', NULL,
  '[{"id":"a","label":"10201"},{"id":"b","label":"10101"},{"id":"c","label":"10001"},{"id":"d","label":"10401"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On écrit 101 = 100 + 1, puis on applique (a + b)² = a² + 2ab + b². Donc 101² = (100 + 1)² = 100² + 2 × 100 × 1 + 1² = 10 000 + 200 + 1 = 10 201.',
  'Oublier le double produit et calculer 100² + 1² = 10 001, ou mal évaluer 2 × 100 × 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (reponse_courte) — Approfondissement : résoudre x² - 9x + 20 = 0
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables', 'Intermediaire', 'reponse_courte',
  'Résoudre l''équation x² - 9x + 20 = 0.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4 et 5","5 et 4","x=4 ou x=5","x=5 ou x=4","x = 4 ou x = 5","x = 5 ou x = 4"]}'::jsonb,
  'On cherche deux nombres dont la somme est 9 et le produit est 20 : ce sont 4 et 5. On factorise : x² - 9x + 20 = (x - 4)(x - 5) = 0. Un produit est nul si et seulement si l''un de ses facteurs est nul, donc x = 4 ou x = 5. On peut aussi utiliser le discriminant : Δ = 81 - 80 = 1, puis x = (9 ± 1) / 2.',
  'Faire une erreur de signe dans la factorisation ou oublier l''une des deux solutions.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (QCM) — Approfondissement : problème géométrique avec identité remarquable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0280000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_calcul_litteral',
  'Calcul littéral — Expressions et identités remarquables', 'Intermediaire', 'qcm',
  'Un carré a un côté de longueur (x + 2) cm. On lui retire un carré de côté x cm. Quelle expression représente l''aire restante ?', NULL,
  '[{"id":"a","label":"4"},{"id":"b","label":"4(x + 1)"},{"id":"c","label":"2x + 2"},{"id":"d","label":"x² + 4"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''aire du grand carré est (x + 2)² = x² + 4x + 4. L''aire du petit carré est x². L''aire restante est donc (x² + 4x + 4) - x² = 4x + 4 = 4(x + 1).',
  'Calculer (x + 2)² - x² = 4 en simplifiant trop vite, ou oublier de développer correctement (x + 2)².',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
