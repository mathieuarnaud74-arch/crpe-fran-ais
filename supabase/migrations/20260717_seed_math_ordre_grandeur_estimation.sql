-- Série : Ordre de grandeur et estimation (nombres_calcul)
-- Niveau : Intermédiaire | Accès : free
-- 7 exercices — progression amorce → consolidation → approfondissement

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_ordre_grandeur_estimation', 'Ordre de grandeur et estimation', 'Intermediaire',
  'qcm', 'Sans calculer exactement, quelle est la meilleure estimation de 498 × 21 ?', NULL,
  '[{"id":"a","label":"Environ 1 000"},{"id":"b","label":"Environ 5 000"},{"id":"c","label":"Environ 10 000"},{"id":"d","label":"Environ 50 000"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'On arrondit 498 à 500 et 21 à 20. L''estimation donne 500 × 20 = 10 000. Le résultat exact est 10 458, ce qui confirme la pertinence de l''estimation.', 'Arrondir les deux facteurs dans le même sens (500 × 25 = 12 500), ce qui surestime le résultat.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_ordre_grandeur_estimation', 'Ordre de grandeur et estimation', 'Intermediaire',
  'qcm', 'Quel est l''ordre de grandeur de 73 245 ?', NULL,
  '[{"id":"a","label":"10³"},{"id":"b","label":"10⁴"},{"id":"c","label":"10⁵"},{"id":"d","label":"10⁶"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''ordre de grandeur est la puissance de 10 la plus proche du nombre. 73 245 est plus proche de 100 000 (10⁵) que de 10 000 (10⁴), car 73 245 > 31 623 (√(10⁴ × 10⁵)). L''ordre de grandeur est donc 10⁵.', 'Confondre le nombre de chiffres (5) avec l''exposant et répondre 10⁵ par coïncidence, sans comprendre la règle.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_ordre_grandeur_estimation', 'Ordre de grandeur et estimation', 'Intermediaire',
  'reponse_courte', 'Estimer le quotient 7 894 ÷ 41 en arrondissant. Donner une valeur approchée (nombre entier).', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["200","190","195"]}'::jsonb,
  'On arrondit 7 894 à 8 000 et 41 à 40. L''estimation donne 8 000 ÷ 40 = 200. Le résultat exact est environ 192,5, ce qui est cohérent avec l''estimation.', 'Arrondir de manière trop grossière (par exemple 10 000 ÷ 50 = 200) sans évaluer la perte de précision.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_ordre_grandeur_estimation', 'Ordre de grandeur et estimation', 'Intermediaire',
  'vrai_faux', 'Un élève affirme que 12 × 37 = 444. Ce résultat est-il plausible ?', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Estimation : 12 × 37 ≈ 10 × 40 = 400. Le résultat 444 est dans le bon ordre de grandeur. Vérification exacte : 12 × 37 = 12 × 30 + 12 × 7 = 360 + 84 = 444 ✓. Le résultat est correct.', 'Se fier uniquement à l''estimation (≈ 400) et conclure que 444 est trop éloigné, sans faire de vérification exacte.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_ordre_grandeur_estimation', 'Ordre de grandeur et estimation', 'Intermediaire',
  'qcm', 'Quelle est la meilleure estimation de 3/7 + 2/9 ?', NULL,
  '[{"id":"a","label":"Environ 0,2"},{"id":"b","label":"Environ 0,65"},{"id":"c","label":"Environ 1"},{"id":"d","label":"Environ 1,5"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On estime chaque fraction : 3/7 ≈ 0,43 (un peu moins que la moitié) et 2/9 ≈ 0,22 (un peu plus qu''un cinquième). La somme approchée est 0,43 + 0,22 ≈ 0,65. La valeur exacte est 41/63 ≈ 0,651.', 'Additionner numérateurs et dénominateurs (3+2)/(7+9) = 5/16, ce qui est une erreur classique sur les fractions.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_ordre_grandeur_estimation', 'Ordre de grandeur et estimation', 'Intermediaire',
  'qcm', 'Problème de Fermi : on estime qu''il y a environ 30 millions de foyers en France et que chaque foyer possède en moyenne 1,5 télévision. Quel est l''ordre de grandeur du nombre total de télévisions en France ?', NULL,
  '[{"id":"a","label":"10⁶"},{"id":"b","label":"10⁷"},{"id":"c","label":"10⁸"},{"id":"d","label":"10⁹"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  '30 000 000 × 1,5 = 45 000 000 ≈ 4,5 × 10⁷. L''ordre de grandeur est 10⁷. Ce type de raisonnement, appelé « problème de Fermi », consiste à enchaîner des estimations raisonnables pour approcher une grandeur inconnue.', 'Confondre 30 millions avec 30 000 et obtenir un résultat mille fois trop petit.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8060000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_ordre_grandeur_estimation', 'Ordre de grandeur et estimation', 'Intermediaire',
  'reponse_courte', 'Une école organise une sortie pour 287 élèves. Chaque bus peut transporter 52 passagers. Combien de bus faut-il réserver au minimum ? (Donner un nombre entier.)', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6"]}'::jsonb,
  'Estimation : 287 ÷ 52 ≈ 300 ÷ 50 = 6. Calcul exact : 287 ÷ 52 = 5,52… Il faut arrondir au-dessus car on ne peut pas laisser d''élèves sans bus. Il faut donc 6 bus. Ce problème illustre l''importance de l''interprétation du résultat dans un contexte réel : ici, on arrondit toujours au-dessus.', 'Arrondir à 5 bus en tronquant le résultat décimal, ce qui laisserait des élèves sans transport.', 'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
