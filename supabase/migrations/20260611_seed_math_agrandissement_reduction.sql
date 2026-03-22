-- Seed: Agrandissement et réduction (géométrie) — 7 exercices, niveau Intermédiaire, premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_agrandissement_reduction',
  'Agrandissement et réduction', 'Intermediaire', 'qcm',
  'Un rectangle de 6 cm × 4 cm est agrandi avec un coefficient 3. Quelles sont les dimensions de l''image ?',
  NULL,
  '[{"id": "A", "label": "9 cm × 7 cm"}, {"id": "B", "label": "18 cm × 12 cm"}, {"id": "C", "label": "18 cm × 4 cm"}, {"id": "D", "label": "6 cm × 12 cm"}]'::jsonb,
  '{"mode": "single", "value": "B"}'::jsonb,
  'Lors d''un agrandissement de coefficient k, chaque dimension est multipliée par k. Ici k = 3, donc : longueur = 6 × 3 = 18 cm et largeur = 4 × 3 = 12 cm. Les dimensions de l''image sont 18 cm × 12 cm.',
  'Additionner le coefficient au lieu de multiplier (6 + 3 = 9, 4 + 3 = 7), ou n''appliquer le coefficient qu''à une seule dimension.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_agrandissement_reduction',
  'Agrandissement et réduction', 'Intermediaire', 'vrai_faux',
  'Si on agrandit une figure avec un coefficient 2, son aire est multipliée par 2.',
  NULL,
  NULL,
  '{"mode": "single", "value": "faux"}'::jsonb,
  'L''aire n''est pas multipliée par k mais par k². Ici k = 2, donc l''aire est multipliée par 2² = 4. Par exemple, un carré de côté 3 cm (aire = 9 cm²) agrandi avec un coefficient 2 donne un carré de côté 6 cm (aire = 36 cm² = 9 × 4). C''est un piège classique du CRPE : ne pas confondre le coefficient d''agrandissement des longueurs avec celui des aires.',
  'Confondre le coefficient d''agrandissement des longueurs (k) avec celui des aires (k²). Beaucoup d''élèves pensent que si les longueurs sont multipliées par 2, l''aire l''est aussi.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_agrandissement_reduction',
  'Agrandissement et réduction', 'Intermediaire', 'reponse_courte',
  'Un triangle de base 5 cm et de hauteur 3 cm est réduit avec un coefficient 0,5. Quelle est l''aire du triangle réduit (en cm²) ?',
  NULL,
  NULL,
  '{"mode": "multiple", "acceptableAnswers": ["1,875", "1,875 cm²", "1,875 cm2"]}'::jsonb,
  'L''aire du triangle initial est (5 × 3) / 2 = 7,5 cm². Lors d''une réduction de coefficient k = 0,5, l''aire est multipliée par k² = 0,5² = 0,25. L''aire du triangle réduit est donc 7,5 × 0,25 = 1,875 cm². On peut aussi calculer directement : base réduite = 2,5 cm, hauteur réduite = 1,5 cm, aire = (2,5 × 1,5) / 2 = 1,875 cm².',
  'Multiplier l''aire par k au lieu de k² : 7,5 × 0,5 = 3,75 cm² (faux). Ou oublier que le coefficient s''applique aux deux dimensions.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_agrandissement_reduction',
  'Agrandissement et réduction', 'Intermediaire', 'qcm',
  'Sur une photocopie agrandie à 150 %, un segment mesure 9 cm. Quelle était sa longueur originale ?',
  NULL,
  '[{"id": "A", "label": "6 cm"}, {"id": "B", "label": "4,5 cm"}, {"id": "C", "label": "13,5 cm"}, {"id": "D", "label": "7,5 cm"}]'::jsonb,
  '{"mode": "single", "value": "A"}'::jsonb,
  'Agrandir à 150 % signifie multiplier les longueurs par 1,5. Si le segment agrandi mesure 9 cm, la longueur originale est 9 ÷ 1,5 = 6 cm. Vérification : 6 × 1,5 = 9 cm ✓.',
  'Multiplier au lieu de diviser : 9 × 1,5 = 13,5 cm (c''est la longueur si on agrandissait encore). Ou calculer 150 % de 9 au lieu de chercher l''antécédent.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_agrandissement_reduction',
  'Agrandissement et réduction', 'Intermediaire', 'qcm',
  'Un cube de 2 cm d''arête est agrandi avec un coefficient 3. Par combien son volume est-il multiplié ?',
  NULL,
  '[{"id": "A", "label": "3"}, {"id": "B", "label": "9"}, {"id": "C", "label": "27"}, {"id": "D", "label": "6"}]'::jsonb,
  '{"mode": "single", "value": "C"}'::jsonb,
  'Lors d''un agrandissement de coefficient k, le volume est multiplié par k³. Ici k = 3, donc le volume est multiplié par 3³ = 27. Vérification : volume initial = 2³ = 8 cm³, volume agrandi = 6³ = 216 cm³, et 216 ÷ 8 = 27 ✓. Retenir : longueurs × k, aires × k², volumes × k³.',
  'Confondre k, k² et k³ : répondre 3 (coefficient des longueurs) ou 9 (coefficient des aires) au lieu de 27 (coefficient des volumes).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_agrandissement_reduction',
  'Agrandissement et réduction', 'Intermediaire', 'reponse_courte',
  'Une maquette d''avion est à l''échelle 1/72. L''envergure de la maquette mesure 40 cm. Quelle est l''envergure réelle de l''avion en mètres ?',
  NULL,
  NULL,
  '{"mode": "multiple", "acceptableAnswers": ["28,8", "28,8 m", "28.8", "28.8 m"]}'::jsonb,
  'L''échelle 1/72 signifie que la maquette est une réduction de coefficient 1/72. Pour retrouver la taille réelle, on multiplie la mesure de la maquette par 72 : 40 × 72 = 2 880 cm. En mètres : 2 880 ÷ 100 = 28,8 m.',
  'Diviser au lieu de multiplier (40 ÷ 72 ≈ 0,56 cm), ou oublier la conversion en mètres et répondre 2 880 cm.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_agrandissement_reduction',
  'Agrandissement et réduction', 'Intermediaire', 'qcm',
  'On réduit un cercle de rayon 10 cm avec un coefficient 0,4. De combien le périmètre a-t-il diminué en pourcentage ?',
  NULL,
  '[{"id": "A", "label": "40 %"}, {"id": "B", "label": "60 %"}, {"id": "C", "label": "84 %"}, {"id": "D", "label": "16 %"}]'::jsonb,
  '{"mode": "single", "value": "B"}'::jsonb,
  'Le périmètre est une longueur : il est multiplié par le coefficient k = 0,4. Le nouveau périmètre vaut donc 40 % du périmètre initial. La diminution est de 100 % − 40 % = 60 %. Attention : 84 % et 16 % correspondent à l''erreur consistant à appliquer k² (coefficient des aires) au périmètre.',
  'Confondre le coefficient de réduction avec le pourcentage de diminution (répondre 40 % au lieu de 60 %), ou appliquer k² au périmètre comme s''il s''agissait d''une aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
