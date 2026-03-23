-- Série : Débit — Volume et temps
-- Sous-domaine : grandeurs_mesures
-- Niveau : Difficile | Accès : premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_debit_volume_temps', 'Débit — Volume et temps', 'Difficile',
  'qcm', 'Quelle est la formule qui relie le débit (D), le volume (V) et le temps (t) ?', NULL,
  '[{"id":"a","label":"D = V × t"},{"id":"b","label":"D = V / t"},{"id":"c","label":"D = t / V"},{"id":"d","label":"D = V + t"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le débit est le quotient du volume par le temps : D = V / t. Il exprime la quantité de fluide qui s''écoule par unité de temps. Par exemple, un débit de 5 L/min signifie que 5 litres s''écoulent chaque minute. On en déduit : V = D × t et t = V / D.',
  'Inverser la formule et écrire D = t / V : l''élève confond numérateur et dénominateur, comme pour la vitesse (v = d / t).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_debit_volume_temps', 'Débit — Volume et temps', 'Difficile',
  'reponse_courte', 'Un robinet a un débit de 8 litres par minute. Quel volume d''eau s''écoule en 15 minutes ? Donnez la réponse en litres.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120","120 L","120 litres","120L"]}'::jsonb,
  'V = D × t = 8 × 15 = 120 litres. Le débit étant exprimé en L/min et le temps en minutes, le volume obtenu est directement en litres. En 15 minutes, il s''écoule 120 litres d''eau.',
  'Diviser au lieu de multiplier (8 / 15) : l''élève confond la formule V = D × t avec D = V / t.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_debit_volume_temps', 'Débit — Volume et temps', 'Difficile',
  'qcm', 'Une citerne de 500 litres se remplit avec un robinet débitant 12,5 L/min. Combien de temps faut-il pour la remplir entièrement ?', NULL,
  '[{"id":"a","label":"40 minutes"},{"id":"b","label":"50 minutes"},{"id":"c","label":"4 heures"},{"id":"d","label":"62,5 minutes"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  't = V / D = 500 / 12,5 = 40 minutes. Pour trouver le temps, on divise le volume total par le débit. L''option d (62,5 min) résulte d''une multiplication 500 × 12,5 / 100, et l''option c confond minutes et heures.',
  'Multiplier volume par débit au lieu de diviser : l''élève calcule 500 × 12,5 = 6 250 et ne sait plus interpréter le résultat.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_debit_volume_temps', 'Débit — Volume et temps', 'Difficile',
  'reponse_courte', 'Convertissez un débit de 120 L/min en m³/h.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7,2","7,2 m³/h","7.2","7.2 m³/h"]}'::jsonb,
  'Étape 1 : convertir les litres en m³. 120 L = 120 / 1 000 = 0,12 m³. Étape 2 : convertir les minutes en heures. 1 min → on multiplie par 60 pour avoir le débit horaire. Donc : 0,12 × 60 = 7,2 m³/h. Alternativement : 120 L/min × 60 min/h = 7 200 L/h = 7,2 m³/h.',
  'Diviser par 60 au lieu de multiplier (passer de minutes à heures, le débit augmente car on considère une durée plus longue), ou oublier de convertir les litres en m³.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_debit_volume_temps', 'Débit — Volume et temps', 'Difficile',
  'vrai_faux', 'Un tuyau A débite 15 L/min et un tuyau B débite 0,8 m³/h. Le tuyau B a un débit plus élevé que le tuyau A.', NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Convertissons dans la même unité. Tuyau A : 15 L/min = 15 × 60 = 900 L/h = 0,9 m³/h. Tuyau B : 0,8 m³/h. Puisque 0,9 > 0,8, le tuyau A a un débit plus élevé. L''affirmation est donc fausse.',
  'Comparer directement 15 et 0,8 sans convertir dans la même unité : l''élève oublie que les unités sont différentes (L/min vs m³/h).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_debit_volume_temps', 'Débit — Volume et temps', 'Difficile',
  'qcm', 'Une piscine de 48 m³ est remplie par deux tuyaux simultanément. Le tuyau A a un débit de 2 m³/h et le tuyau B de 1,5 m³/h. En combien de temps la piscine sera-t-elle pleine ?', NULL,
  '[{"id":"a","label":"24 heures"},{"id":"b","label":"13 h 43 min"},{"id":"c","label":"32 heures"},{"id":"d","label":"~13 h 42 min 51 s"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'Les deux tuyaux coulent ensemble, donc le débit total est : D = 2 + 1,5 = 3,5 m³/h. Le temps de remplissage est : t = V / D = 48 / 3,5 = 480/35 = 96/7 ≈ 13,714 h. Soit 13 h et 0,714 × 60 ≈ 42 min 51 s. L''option a (24 h) correspond à 48 / 2 (un seul tuyau).',
  'Calculer séparément le temps pour chaque tuyau et additionner : l''élève obtient 48/2 + 48/1,5 = 24 + 32 = 56 h, ce qui est incorrect car les tuyaux fonctionnent en parallèle.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0e0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_debit_volume_temps', 'Débit — Volume et temps', 'Difficile',
  'reponse_courte', 'Un réservoir cubique de 2 m de côté doit être vidangé par une pompe dont le débit est de 500 L/min. Combien de minutes faudra-t-il pour vider entièrement le réservoir ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["16","16 min","16 minutes"]}'::jsonb,
  'Volume du cube = 2³ = 8 m³. Conversion en litres : 8 m³ = 8 000 L (car 1 m³ = 1 000 L). Temps = V / D = 8 000 / 500 = 16 minutes. Ce problème combine le calcul de volume d''un solide, la conversion m³ → L, et la formule du débit. L''élève doit enchaîner trois étapes sans erreur.',
  'Oublier de convertir les m³ en litres : l''élève calcule 8 / 500 = 0,016 min, un résultat incohérent qu''il ne remet pas en question.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
