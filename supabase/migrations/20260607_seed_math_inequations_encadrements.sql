-- Seed: Inéquations et encadrements (7 exercices)
-- Niveau: Intermediaire | Accès: premium | Sous-domaine: nombres_calcul

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_inequations_encadrements',
  'Inéquations et encadrements', 'Intermediaire', 'qcm',
  'Résoudre l''inéquation : 3x - 7 > 5.', NULL,
  '[{"id":"a","label":"x > 4"},{"id":"b","label":"x < 4"},{"id":"c","label":"x > 6"},{"id":"d","label":"x > -4"}]',
  '{"mode":"single","value":"a"}',
  'On isole x étape par étape : 3x - 7 > 5, donc 3x > 5 + 7, soit 3x > 12, puis x > 12 ÷ 3, donc x > 4.',
  'Oublier d''ajouter 7 des deux côtés ou diviser incorrectement, ce qui conduit à x > 6 ou x > -4.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_inequations_encadrements',
  'Inéquations et encadrements', 'Intermediaire', 'vrai_faux',
  'Si a < b, alors -a < -b.', NULL,
  NULL,
  '{"mode":"single","value":"faux"}',
  'Lorsqu''on multiplie (ou divise) les deux membres d''une inégalité par un nombre négatif, le sens de l''inégalité s''inverse. Donc si a < b, alors -a > -b. Par exemple : 2 < 5, mais -2 > -5.',
  'Croire que l''ordre est conservé quand on change les signes, en oubliant la règle d''inversion du sens de l''inégalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_inequations_encadrements',
  'Inéquations et encadrements', 'Intermediaire', 'reponse_courte',
  'Encadrer √50 entre deux entiers consécutifs.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7 et 8","7 < √50 < 8","7 < racine de 50 < 8"]}',
  'On cherche deux carrés parfaits consécutifs encadrant 50. On a 7² = 49 et 8² = 64. Comme 49 < 50 < 64, on en déduit que 7 < √50 < 8.',
  'Confondre les carrés parfaits proches ou oublier de vérifier que les entiers sont bien consécutifs.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_inequations_encadrements',
  'Inéquations et encadrements', 'Intermediaire', 'qcm',
  'Sachant que 3,14 < π < 3,15, quel encadrement peut-on donner de 2π ?', NULL,
  '[{"id":"a","label":"6,28 < 2π < 6,30"},{"id":"b","label":"6,28 < 2π < 6,29"},{"id":"c","label":"6,14 < 2π < 6,15"},{"id":"d","label":"5,28 < 2π < 7,30"}]',
  '{"mode":"single","value":"a"}',
  'On multiplie chaque membre de l''encadrement par 2 (nombre positif, le sens est conservé) : 2 × 3,14 < 2π < 2 × 3,15, soit 6,28 < 2π < 6,30.',
  'Multiplier seulement une borne par 2, ou additionner 2 au lieu de multiplier.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_inequations_encadrements',
  'Inéquations et encadrements', 'Intermediaire', 'qcm',
  'Résoudre l''inéquation : -2x + 6 ≤ 0.', NULL,
  '[{"id":"a","label":"x ≥ 3"},{"id":"b","label":"x ≤ 3"},{"id":"c","label":"x ≥ -3"},{"id":"d","label":"x ≤ -3"}]',
  '{"mode":"single","value":"a"}',
  'On résout étape par étape : -2x + 6 ≤ 0, donc -2x ≤ -6. On divise par -2, ce qui inverse le sens de l''inégalité : x ≥ 3. Attention : la division par un nombre négatif change le sens de l''inéquation.',
  'Oublier d''inverser le sens de l''inégalité lors de la division par -2, ce qui conduit à tort à x ≤ 3.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_inequations_encadrements',
  'Inéquations et encadrements', 'Intermediaire', 'reponse_courte',
  'Un artisan vend des objets à 15 € pièce. Ses charges fixes mensuelles sont de 450 €. Combien d''objets doit-il vendre au minimum pour ne pas être en déficit ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30","30 objets"]}',
  'On modélise le problème par une inéquation. Le chiffre d''affaires doit couvrir les charges : 15x ≥ 450. On divise par 15 : x ≥ 30. L''artisan doit donc vendre au minimum 30 objets.',
  'Diviser dans le mauvais sens (450 ÷ 30 au lieu de 450 ÷ 15) ou oublier que le résultat doit être un nombre entier.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0220000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_inequations_encadrements',
  'Inéquations et encadrements', 'Intermediaire', 'qcm',
  'On sait que 2 ≤ a ≤ 5 et 1 ≤ b ≤ 3. Quel encadrement de a - b peut-on affirmer ?', NULL,
  '[{"id":"a","label":"-1 ≤ a - b ≤ 4"},{"id":"b","label":"1 ≤ a - b ≤ 2"},{"id":"c","label":"-1 ≤ a - b ≤ 2"},{"id":"d","label":"0 ≤ a - b ≤ 4"}]',
  '{"mode":"single","value":"a"}',
  'Pour encadrer une différence a - b, on prend : la valeur minimale de a moins la valeur maximale de b pour la borne inférieure (2 - 3 = -1), et la valeur maximale de a moins la valeur minimale de b pour la borne supérieure (5 - 1 = 4). Donc -1 ≤ a - b ≤ 4.',
  'Soustraire les bornes « dans le même sens » (min - min et max - max), ce qui donnerait 1 ≤ a - b ≤ 2, un encadrement trop restrictif et incorrect.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
