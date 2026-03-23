-- Série : Systèmes d'équations — Résolution (nombres_calcul)
-- Niveau : Difficile | Accès : premium
-- 7 exercices — progression amorce → consolidation → approfondissement

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_systemes_equations', 'Systèmes d''équations — Résolution', 'Difficile',
  'qcm', 'On considère le système : y = 2x + 1 et x + y = 7. Quelle est la valeur de x ?', NULL,
  '[{"id":"a","label":"x = 1"},{"id":"b","label":"x = 2"},{"id":"c","label":"x = 3"},{"id":"d","label":"x = 4"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Par substitution : on remplace y par 2x + 1 dans la seconde équation. x + (2x + 1) = 7, donc 3x + 1 = 7, soit 3x = 6, d''où x = 2.', 'Oublier de remplacer y dans la seconde équation et tenter de résoudre les deux équations séparément.', 'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_systemes_equations', 'Systèmes d''équations — Résolution', 'Difficile',
  'reponse_courte', 'Résoudre par la méthode d''élimination : 3x + 2y = 12 et 3x − 2y = 0. Donner la valeur de x.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2","x = 2","x=2"]}'::jsonb,
  'En additionnant les deux équations membre à membre : (3x + 2y) + (3x − 2y) = 12 + 0, soit 6x = 12, d''où x = 2. Les termes en y s''éliminent.', 'Soustraire les équations au lieu de les additionner, ce qui ne permet pas d''éliminer y ici.', 'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_systemes_equations', 'Systèmes d''équations — Résolution', 'Difficile',
  'qcm', 'Le système 2x + 4y = 10 et x + 2y = 3 admet :', NULL,
  '[{"id":"a","label":"Une solution unique"},{"id":"b","label":"Aucune solution"},{"id":"c","label":"Une infinité de solutions"},{"id":"d","label":"Deux solutions"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'En multipliant la seconde équation par 2, on obtient 2x + 4y = 6, ce qui contredit la première équation 2x + 4y = 10. Les deux droites sont parallèles et distinctes : le système est incompatible.', 'Conclure qu''il y a une infinité de solutions en confondant droites parallèles et droites confondues.', 'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_systemes_equations', 'Systèmes d''équations — Résolution', 'Difficile',
  'vrai_faux', 'Le système x + 3y = 6 et 2x + 6y = 12 admet une infinité de solutions.', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La seconde équation est le double de la première (2 × (x + 3y) = 2 × 6 = 12). Les deux équations décrivent la même droite : tout couple (x, y) vérifiant x + 3y = 6 est solution. Le système est indéterminé.', 'Croire que deux équations donnent toujours une solution unique. Ici, les droites sont confondues.', 'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_systemes_equations', 'Systèmes d''équations — Résolution', 'Difficile',
  'qcm', 'Un père a 40 ans et son fils 12 ans. Dans combien d''années l''âge du père sera-t-il le triple de l''âge du fils ? On pose x le nombre d''années. Quel système modélise la situation ?', NULL,
  '[{"id":"a","label":"40 + x = 3(12 + x)"},{"id":"b","label":"40 + x = 3 × 12 + x"},{"id":"c","label":"40x = 3 × 12x"},{"id":"d","label":"40 − x = 3(12 − x)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Dans x années, le père aura 40 + x ans et le fils 12 + x ans. La condition « l''âge du père est le triple de celui du fils » se traduit par 40 + x = 3(12 + x). En résolvant : 40 + x = 36 + 3x, soit 4 = 2x, d''où x = 2 ans.', 'Oublier d''ajouter x aux deux âges et écrire 40 = 3 × 12.', 'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_systemes_equations', 'Systèmes d''équations — Résolution', 'Difficile',
  'qcm', 'Graphiquement, la solution d''un système de deux équations linéaires à deux inconnues correspond à :', NULL,
  '[{"id":"a","label":"L''ordonnée à l''origine des deux droites"},{"id":"b","label":"Le point d''intersection des deux droites"},{"id":"c","label":"La pente commune des deux droites"},{"id":"d","label":"La distance entre les deux droites"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Chaque équation linéaire du système représente une droite dans le plan. Le couple solution (x, y) correspond aux coordonnées du point d''intersection de ces deux droites.', 'Confondre la solution du système avec l''ordonnée à l''origine ou le coefficient directeur d''une droite.', 'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8050000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_systemes_equations', 'Systèmes d''équations — Résolution', 'Difficile',
  'reponse_courte', 'Marie achète 3 croissants et 2 pains au chocolat pour 8,50 €. Paul achète 1 croissant et 4 pains au chocolat pour 9,50 €. Quel est le prix d''un croissant en euros ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1,50","1.50","1,5","1.5"]}'::jsonb,
  'On pose c le prix d''un croissant et p le prix d''un pain au chocolat. Le système est : 3c + 2p = 8,50 et c + 4p = 9,50. De la seconde équation : c = 9,50 − 4p. On substitue dans la première : 3(9,50 − 4p) + 2p = 8,50, soit 28,50 − 12p + 2p = 8,50, donc −10p = −20, p = 2. Puis c = 9,50 − 4 × 2 = 1,50. Vérification : 3 × 1,50 + 2 × 2 = 4,50 + 4 = 8,50 ✓ et 1,50 + 4 × 2 = 1,50 + 8 = 9,50 ✓.', 'Ne pas vérifier la solution dans les deux équations après résolution.', 'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
