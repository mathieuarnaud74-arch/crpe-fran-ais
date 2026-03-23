-- Seed: Équations du premier degré — Résolution et applications (7 exercices)
-- Subdomain: nombres_calcul | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications', 'Intermediaire',
  'reponse_courte',
  'Résoudre l''équation : 3x + 7 = 22.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5","x=5","x = 5"]}'::jsonb,
  'On isole x étape par étape. On soustrait 7 des deux côtés : 3x + 7 − 7 = 22 − 7, soit 3x = 15. On divise par 3 : x = 15/3 = 5. Vérification : 3 × 5 + 7 = 15 + 7 = 22. ✓',
  'L''erreur courante est d''oublier d''effectuer la même opération des deux côtés de l''équation, ou de se tromper dans le signe lors de la transposition.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications', 'Intermediaire',
  'qcm',
  'Résoudre l''équation : 5x − 3 = 2x + 9.',
  NULL,
  '[{"id":"a","label":"x = 2"},{"id":"b","label":"x = 4"},{"id":"c","label":"x = 6"},{"id":"d","label":"x = −4"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On regroupe les termes en x d''un côté et les constantes de l''autre. On soustrait 2x des deux côtés : 5x − 2x − 3 = 9, soit 3x − 3 = 9. On ajoute 3 : 3x = 12. On divise par 3 : x = 4. Vérification : 5 × 4 − 3 = 17 et 2 × 4 + 9 = 17. ✓',
  'L''erreur fréquente est de mal gérer les signes lors du regroupement des termes, par exemple écrire 5x + 2x au lieu de 5x − 2x.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications', 'Intermediaire',
  'reponse_courte',
  'Résoudre l''équation : x/3 + x/6 = 5. Donner la solution sous forme entière ou fractionnaire.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10","x=10","x = 10"]}'::jsonb,
  'On réduit au même dénominateur (PPCM de 3 et 6 = 6) : 2x/6 + x/6 = 5, soit 3x/6 = 5, c''est-à-dire x/2 = 5. On multiplie par 2 : x = 10. Vérification : 10/3 + 10/6 = 10/3 + 5/3 = 15/3 = 5. ✓',
  'L''erreur courante est de multiplier un seul membre par le dénominateur commun. Lorsqu''on multiplie par 6, il faut multiplier tous les termes de l''équation, y compris le membre de droite.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications', 'Intermediaire',
  'qcm',
  'Résoudre l''équation : 4(2x − 1) − 3(x + 2) = 7.',
  NULL,
  '[{"id":"a","label":"x = 3"},{"id":"b","label":"x = 17/5"},{"id":"c","label":"x = 1"},{"id":"d","label":"x = −3"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On développe les parenthèses (distributivité) : 4 × 2x − 4 × 1 − 3 × x − 3 × 2 = 7, soit 8x − 4 − 3x − 6 = 7. On regroupe : 5x − 10 = 7. On ajoute 10 : 5x = 17. On divise par 5 : x = 17/5. Vérification : 4(34/5 − 1) − 3(17/5 + 2) = 4 × 29/5 − 3 × 27/5 = 116/5 − 81/5 = 35/5 = 7. ✓',
  'L''erreur classique est d''oublier de distribuer le signe moins devant la deuxième parenthèse : −3(x + 2) donne −3x − 6, et non −3x + 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications', 'Intermediaire',
  'reponse_courte',
  'Marie a trois fois plus de billes que Lucas. Ensemble, ils ont 56 billes. Combien de billes a Lucas ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["14","14 billes"]}'::jsonb,
  'Soit x le nombre de billes de Lucas. Marie en a 3x. L''équation est : x + 3x = 56, soit 4x = 56, donc x = 14. Lucas a 14 billes et Marie en a 3 × 14 = 42. Vérification : 14 + 42 = 56. ✓ Ce type de problème demande d''abord de traduire l''énoncé en équation avant de résoudre.',
  'L''erreur fréquente est de diviser directement 56 par 3, obtenant environ 18,7. Il faut bien identifier que le total est constitué de x + 3x = 4x parts.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications', 'Intermediaire',
  'vrai_faux',
  'x = −2 est solution de l''équation 3(x + 4) = 2x + 8. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'On vérifie en remplaçant x par −2. Membre de gauche : 3(−2 + 4) = 3 × 2 = 6. Membre de droite : 2 × (−2) + 8 = −4 + 8 = 4. Or 6 ≠ 4, donc x = −2 n''est pas solution. La vraie solution est : 3x + 12 = 2x + 8, soit x = −4.',
  'L''erreur est de ne pas effectuer la vérification complète et de se fier à une intuition. Toujours substituer la valeur proposée dans les deux membres de l''équation pour vérifier l''égalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8030000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_equations_premier_degre',
  'Équations du premier degré — Résolution et applications', 'Intermediaire',
  'qcm',
  'Un artisan facture 45 € de déplacement plus 30 € par heure de travail. Un client a payé 165 €. Combien d''heures l''artisan a-t-il travaillé ?',
  NULL,
  '[{"id":"a","label":"3 heures"},{"id":"b","label":"4 heures"},{"id":"c","label":"5 heures"},{"id":"d","label":"5,5 heures"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Soit h le nombre d''heures travaillées. Le prix total est : 45 + 30h = 165. On résout : 30h = 165 − 45 = 120, donc h = 120/30 = 4. L''artisan a travaillé 4 heures. Vérification : 45 + 30 × 4 = 45 + 120 = 165 €. ✓ Ce problème modélise une situation de proportionnalité avec une partie fixe (ordonnée à l''origine).',
  'L''erreur courante est de diviser directement 165 par 30 (= 5,5 h) en oubliant de retrancher les frais fixes de déplacement. Il faut d''abord soustraire le coût fixe avant de diviser.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
