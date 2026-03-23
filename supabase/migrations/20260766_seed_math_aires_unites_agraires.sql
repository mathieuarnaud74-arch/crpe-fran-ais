-- Série : Aires et unités agraires — Hectares et ares
-- Sous-domaine : grandeurs_mesures
-- Niveau : Intermediaire | Accès : premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_aires_unites_agraires', 'Aires et unités agraires — Hectares et ares', 'Intermediaire',
  'qcm', 'Combien de mètres carrés représente 1 hectare ?', NULL,
  '[{"id":"a","label":"1 000 m²"},{"id":"b","label":"10 000 m²"},{"id":"c","label":"100 000 m²"},{"id":"d","label":"100 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  '1 hectare (ha) = 10 000 m². L''hectare correspond à l''aire d''un carré de 100 m de côté : 100 × 100 = 10 000 m². L''option a (1 000 m²) correspond à 10 ares, et l''option d (100 m²) correspond à 1 are.',
  'Confondre hectare et are : l''élève retient 1 ha = 1 000 m² au lieu de 10 000 m², oubliant que chaque unité agraire vaut 100 fois la précédente.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_aires_unites_agraires', 'Aires et unités agraires — Hectares et ares', 'Intermediaire',
  'vrai_faux', '1 are est égal à 100 m².', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  '1 are (a) = 100 m². L''are correspond à l''aire d''un carré de 10 m de côté : 10 × 10 = 100 m². C''est l''unité intermédiaire entre le mètre carré et l''hectare. On a la progression : 1 m² → 1 a = 100 m² → 1 ha = 100 a = 10 000 m².',
  'Confondre l''are avec l''hectare ou penser que 1 a = 10 m² en appliquant un facteur 10 au lieu de 100.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_aires_unites_agraires', 'Aires et unités agraires — Hectares et ares', 'Intermediaire',
  'reponse_courte', 'Convertissez 3,5 hectares en mètres carrés.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["35000","35 000","35000 m²","35 000 m²"]}'::jsonb,
  '1 ha = 10 000 m², donc 3,5 ha = 3,5 × 10 000 = 35 000 m². Pour convertir des hectares en mètres carrés, on multiplie par 10 000 (on déplace la virgule de 4 rangs vers la droite).',
  'Multiplier par 1 000 au lieu de 10 000 et obtenir 3 500 m² : l''élève confond le facteur de conversion des unités agraires avec celui des unités de longueur.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_aires_unites_agraires', 'Aires et unités agraires — Hectares et ares', 'Intermediaire',
  'qcm', 'Un terrain de 4 500 m² représente combien d''ares ?', NULL,
  '[{"id":"a","label":"4,5 a"},{"id":"b","label":"45 a"},{"id":"c","label":"450 a"},{"id":"d","label":"0,45 a"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  '1 are = 100 m², donc pour convertir des m² en ares, on divise par 100. 4 500 ÷ 100 = 45 ares. L''option a (4,5 a) résulte d''une division par 1 000, et l''option c (450 a) d''une division par 10 seulement.',
  'Diviser par 10 ou par 1 000 au lieu de 100 : l''élève ne maîtrise pas le facteur de conversion entre m² et are.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_aires_unites_agraires', 'Aires et unités agraires — Hectares et ares', 'Intermediaire',
  'reponse_courte', 'Un champ rectangulaire mesure 200 m de long et 150 m de large. Quelle est son aire en hectares ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","3 ha","3ha"]}'::jsonb,
  'Aire du champ = 200 × 150 = 30 000 m². Pour convertir en hectares : 30 000 ÷ 10 000 = 3 ha. Ce champ a donc une superficie de 3 hectares. En contexte agricole, l''hectare est l''unité la plus courante pour exprimer la superficie des parcelles.',
  'Ne pas convertir en hectares et laisser la réponse en m², ou diviser par 100 (ares) au lieu de 10 000 (hectares).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_aires_unites_agraires', 'Aires et unités agraires — Hectares et ares', 'Intermediaire',
  'qcm', 'Quelle surface est la plus grande : 250 ares ou 2,4 hectares ?', NULL,
  '[{"id":"a","label":"250 ares"},{"id":"b","label":"2,4 hectares"},{"id":"c","label":"Elles sont égales"},{"id":"d","label":"On ne peut pas comparer"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Convertissons dans la même unité. 250 ares = 250 × 100 = 25 000 m². 2,4 ha = 2,4 × 10 000 = 24 000 m². 25 000 > 24 000, donc 250 ares est plus grand que 2,4 hectares. On peut aussi convertir en hectares : 250 a = 2,5 ha > 2,4 ha.',
  'Comparer directement les nombres (250 > 2,4) sans tenir compte de l''unité, ou au contraire penser que l''hectare étant plus grand, 2,4 ha est forcément supérieur.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_aires_unites_agraires', 'Aires et unités agraires — Hectares et ares', 'Intermediaire',
  'reponse_courte', 'Un agriculteur possède trois parcelles : la première fait 1,2 ha, la deuxième 85 ares et la troisième 7 500 m². Quelle est la superficie totale de son exploitation en hectares ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2,8","2,8 ha","2,80","2,80 ha"]}'::jsonb,
  'Convertissons tout en hectares. Parcelle 1 : 1,2 ha. Parcelle 2 : 85 a = 85 ÷ 100 = 0,85 ha. Parcelle 3 : 7 500 m² = 7 500 ÷ 10 000 = 0,75 ha. Total = 1,2 + 0,85 + 0,75 = 2,8 ha. Ce problème nécessite de maîtriser les conversions entre les trois unités agraires avant d''additionner.',
  'Additionner les valeurs brutes (1,2 + 85 + 7 500) sans convertir dans la même unité, ou se tromper dans les facteurs de conversion.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
