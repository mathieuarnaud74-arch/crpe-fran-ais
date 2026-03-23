-- Seed: Diagramme circulaire — Construction et calcul d'angles (7 exercices)
-- Subdomain: organisation_donnees | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0e0000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles', 'Intermediaire',
  'reponse_courte',
  'Dans une classe de 30 élèves, 12 pratiquent le football. On souhaite représenter cette donnée dans un diagramme circulaire. Quel angle (en degrés) doit-on attribuer au secteur « football » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["144","144°","144 degrés","144 °"]}'::jsonb,
  'Pour convertir une fréquence en angle dans un diagramme circulaire, on multiplie la fréquence par 360°. La fréquence du football est 12/30 = 0,4 (soit 40 %). L''angle correspondant est 0,4 × 360° = 144°. On peut aussi raisonner par proportionnalité : si 30 élèves correspondent à 360°, alors 1 élève correspond à 360° / 30 = 12°, et 12 élèves correspondent à 12 × 12° = 144°. Cette méthode de calcul est fondamentale pour construire tout diagramme circulaire : chaque secteur a un angle proportionnel à l''effectif (ou à la fréquence) de la catégorie qu''il représente.',
  'Diviser 360° par le nombre de catégories au lieu de calculer l''angle proportionnellement à l''effectif. Ce serait correct seulement si toutes les catégories avaient le même effectif.',
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
  'fb0e0000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles', 'Intermediaire',
  'qcm',
  'Dans un diagramme circulaire, un secteur a un angle de 90°. Quel pourcentage de l''effectif total ce secteur représente-t-il ?',
  NULL,
  '[{"id":"a","label":"10 %"},{"id":"b","label":"25 %"},{"id":"c","label":"30 %"},{"id":"d","label":"50 %"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour passer d''un angle à un pourcentage, on divise l''angle par 360° et on multiplie par 100. Ici : (90° / 360°) × 100 = 25 %. Un angle de 90° correspond donc à un quart du disque, soit 25 % de l''effectif total. On peut le vérifier visuellement : 90° est un angle droit, qui découpe exactement un quart du cercle. Quelques repères utiles à mémoriser : 360° = 100 %, 180° = 50 %, 90° = 25 %, 36° = 10 %, 3,6° = 1 %.',
  'Confondre l''angle avec le pourcentage : un angle de 90° ne représente pas 90 % mais 25 %. Il faut toujours ramener à 360° (le tour complet), pas à 100.',
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
  'fb0e0000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles', 'Intermediaire',
  'reponse_courte',
  'Un diagramme circulaire comporte 4 secteurs dont les angles sont : 120° ; 90° ; 80° et un angle inconnu. Calculer l''angle du quatrième secteur.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["70","70°","70 °","70 degrés"]}'::jsonb,
  'La somme des angles d''un diagramme circulaire doit toujours être égale à 360° (un tour complet). On calcule la somme des trois angles connus : 120° + 90° + 80° = 290°. L''angle du quatrième secteur est donc 360° − 290° = 70°. Cette propriété fondamentale permet de vérifier la cohérence de tout diagramme circulaire : si la somme des angles ne fait pas 360°, c''est qu''il y a une erreur de calcul ou qu''une catégorie a été oubliée. C''est un excellent réflexe de vérification à adopter systématiquement.',
  'Oublier que la somme doit faire 360° et non 100° (confusion entre degrés et pourcentages).',
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
  'fb0e0000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles', 'Intermediaire',
  'vrai_faux',
  'Un diagramme circulaire comporte 5 secteurs dont les angles sont : 100° ; 85° ; 72° ; 60° ; 45°. Ce diagramme est correctement construit.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Vérifions la somme des angles : 100° + 85° + 72° + 60° + 45° = 362°. Or, la somme des angles d''un diagramme circulaire doit être exactement 360°. Ici, la somme dépasse de 2°, ce qui signifie qu''il y a une erreur dans les calculs ou les mesures. Même un écart de 2° est significatif et doit être corrigé. Pour construire un diagramme circulaire correct, on calcule d''abord les fréquences de chaque catégorie, puis les angles correspondants (fréquence × 360°), et on vérifie que la somme fait bien 360° avant de tracer.',
  'Considérer qu''un écart de quelques degrés est négligeable. En mathématiques, la somme doit être exactement 360°. Tout écart signale une erreur à corriger.',
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
  'fb0e0000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles', 'Intermediaire',
  'qcm',
  'On compare deux écoles à l''aide de diagrammes circulaires représentant la répartition des élèves par niveau. Dans l''école A (200 élèves), le secteur CP occupe 72°. Dans l''école B (150 élèves), le secteur CP occupe 96°. Quelle école a le plus grand nombre d''élèves en CP ?',
  NULL,
  '[{"id":"a","label":"École A avec 40 élèves en CP"},{"id":"b","label":"École B avec 40 élèves en CP"},{"id":"c","label":"Les deux écoles ont le même nombre d''élèves en CP"},{"id":"d","label":"École A avec 72 élèves en CP"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Il faut convertir les angles en effectifs réels. École A : (72° / 360°) × 200 = 0,2 × 200 = 40 élèves en CP. École B : (96° / 360°) × 150 = 0,2667 × 150 = 40 élèves en CP. Les deux écoles ont exactement 40 élèves en CP ! Le secteur de l''école B est plus grand en angle (96° > 72°) car le CP représente une proportion plus importante dans l''école B (26,7 % contre 20 %), mais en effectifs absolus, les deux écoles sont à égalité. Cet exercice illustre un piège classique : comparer des diagrammes circulaires d''effectifs totaux différents nécessite de revenir aux valeurs absolues.',
  'Comparer directement les angles des deux diagrammes et conclure que l''école B a plus d''élèves en CP parce que son angle est plus grand. Les angles représentent des proportions, pas des effectifs absolus.',
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
  'fb0e0000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles', 'Intermediaire',
  'qcm',
  'Un diagramme circulaire indique que 35 % du budget d''une école est consacré aux fournitures scolaires. On lit sur le diagramme que ce secteur correspond à 12 600 €. Quel est le budget total de l''école ?',
  NULL,
  '[{"id":"a","label":"36 000 €"},{"id":"b","label":"44 100 €"},{"id":"c","label":"25 200 €"},{"id":"d","label":"126 000 €"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Si 35 % du budget correspond à 12 600 €, alors le budget total est 12 600 € / 0,35 = 36 000 €. On peut vérifier : 35 % × 36 000 € = 12 600 €. En termes d''angle, le secteur « fournitures » occuperait 0,35 × 360° = 126°. La lecture d''un diagramme circulaire peut se faire de deux manières : en lecture relative (pourcentages ou proportions) ou en lecture absolue (valeurs réelles), à condition de connaître le total. Ici, un seul pourcentage et sa valeur absolue suffisent pour retrouver le total, puis toutes les autres valeurs absolues.',
  'Multiplier 12 600 par 0,35 au lieu de diviser, obtenant 4 410 €. Quand on connaît la partie et le pourcentage, on divise pour trouver le tout.',
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
  'fb0e0000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles', 'Intermediaire',
  'reponse_courte',
  'Une municipalité répartit son budget annuel de 900 000 € ainsi : Éducation 30 %, Sport 20 %, Culture 15 %, Voirie 25 %, Divers 10 %. Calculer l''angle (en degrés) du secteur « Voirie » dans le diagramme circulaire correspondant.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["90","90°","90 °","90 degrés"]}'::jsonb,
  'Le secteur « Voirie » représente 25 % du budget total. L''angle correspondant dans le diagramme circulaire est : 25 % × 360° = 0,25 × 360° = 90°. On peut vérifier la cohérence en calculant tous les angles : Éducation = 0,30 × 360° = 108°, Sport = 0,20 × 360° = 72°, Culture = 0,15 × 360° = 54°, Voirie = 0,25 × 360° = 90°, Divers = 0,10 × 360° = 36°. Somme de contrôle : 108° + 72° + 54° + 90° + 36° = 360°. Le budget « Voirie » correspond à 0,25 × 900 000 € = 225 000 €. Un diagramme circulaire est particulièrement adapté pour visualiser la répartition d''un budget car il montre clairement les parts relatives de chaque poste.',
  'Calculer l''angle à partir du montant (225 000 €) au lieu du pourcentage, en oubliant de ramener au total. Les deux approches donnent le même résultat, mais la méthode par pourcentage est plus directe.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
