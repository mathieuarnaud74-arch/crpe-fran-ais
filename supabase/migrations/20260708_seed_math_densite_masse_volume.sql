-- Seed: Densité, masse et volume — Applications (7 exercices)
-- Subdomain: grandeurs_mesures | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa030000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_densite_masse_volume',
  'Densité, masse et volume — Applications', 'Difficile',
  'qcm',
  'La densité d''un matériau est de 2,7 g/cm³. Que signifie cette valeur ?',
  NULL,
  '[{"id":"a","label":"1 cm³ de ce matériau a une masse de 2,7 g"},{"id":"b","label":"1 g de ce matériau occupe un volume de 2,7 cm³"},{"id":"c","label":"Le matériau est 2,7 fois plus lourd que le fer"},{"id":"d","label":"Le matériau pèse 2,7 kg par litre"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La masse volumique (souvent appelée densité dans le langage courant) ρ = m/V exprime la masse par unité de volume. Dire ρ = 2,7 g/cm³ signifie que chaque centimètre cube du matériau a une masse de 2,7 g. Note : 2,7 g/cm³ est la masse volumique de l''aluminium.',
  'Erreur fréquente : confondre masse volumique et densité (sans unité, par rapport à l''eau). La proposition d est numériquement exacte (2,7 g/cm³ = 2,7 kg/L) mais la question porte sur la signification de la valeur.',
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
  'fa030000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_densite_masse_volume',
  'Densité, masse et volume — Applications', 'Difficile',
  'reponse_courte',
  'Un bloc de marbre a une masse volumique de 2 600 kg/m³ et un volume de 0,5 m³. Calculer sa masse en kg.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1300","1 300","1300 kg","1 300 kg"]}'::jsonb,
  'On utilise la formule m = ρ × V. Ici : m = 2 600 × 0,5 = 1 300 kg. Le bloc de marbre a une masse de 1 300 kg, soit 1,3 tonne.',
  'Erreur fréquente : diviser la masse volumique par le volume au lieu de multiplier, ou confondre les unités (g/cm³ vs kg/m³).',
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
  'fa030000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_densite_masse_volume',
  'Densité, masse et volume — Applications', 'Difficile',
  'qcm',
  'Un objet a une masse de 540 g et une masse volumique de 10,8 g/cm³. Quel est son volume ?',
  NULL,
  '[{"id":"a","label":"50 cm³"},{"id":"b","label":"5 832 cm³"},{"id":"c","label":"0,02 cm³"},{"id":"d","label":"500 cm³"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On utilise la formule V = m ÷ ρ. Ici : V = 540 ÷ 10,8 = 50 cm³. On peut vérifier : 50 × 10,8 = 540 g. Note : 10,8 g/cm³ correspond approximativement à la masse volumique de l''argent.',
  'Erreur fréquente : multiplier m × ρ au lieu de diviser, ce qui donnerait 5 832 cm³.',
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
  'fa030000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_densite_masse_volume',
  'Densité, masse et volume — Applications', 'Difficile',
  'vrai_faux',
  'Un objet de masse volumique 0,8 g/cm³ flotte dans l''eau (masse volumique de l''eau : 1 g/cm³). Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Un objet flotte dans un liquide si sa masse volumique est inférieure à celle du liquide. Ici, 0,8 g/cm³ < 1 g/cm³, donc l''objet flotte. C''est le cas du bois ou de l''huile par exemple. À l''inverse, un objet de masse volumique supérieure à 1 g/cm³ coule dans l''eau.',
  'Erreur fréquente : penser que c''est la masse (et non la masse volumique) qui détermine si un objet flotte. Un gros bateau en acier flotte grâce à sa forme qui lui confère une masse volumique moyenne inférieure à celle de l''eau.',
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
  'fa030000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_densite_masse_volume',
  'Densité, masse et volume — Applications', 'Difficile',
  'qcm',
  'Un alliage est composé de 60 % de cuivre (ρ = 8 900 kg/m³) et 40 % d''étain (ρ = 7 300 kg/m³) en proportions volumiques. Quelle est la masse volumique de l''alliage ?',
  NULL,
  '[{"id":"a","label":"8 100 kg/m³"},{"id":"b","label":"8 260 kg/m³"},{"id":"c","label":"7 600 kg/m³"},{"id":"d","label":"8 900 kg/m³"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour un alliage dont on connaît les proportions volumiques, la masse volumique est la moyenne pondérée : ρ_alliage = 0,60 × 8 900 + 0,40 × 7 300 = 5 340 + 2 920 = 8 260 kg/m³. Cet alliage est appelé bronze.',
  'Erreur fréquente : faire une simple moyenne arithmétique (8 900 + 7 300) ÷ 2 = 8 100 kg/m³ sans tenir compte des proportions.',
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
  'fa030000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_densite_masse_volume',
  'Densité, masse et volume — Applications', 'Difficile',
  'vrai_faux',
  '1 g/cm³ = 1 000 kg/m³. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir g/cm³ en kg/m³ : 1 g/cm³ = 1 g pour 1 cm³. Or 1 m³ = 1 000 000 cm³ et 1 kg = 1 000 g. Donc : 1 g/cm³ = (1/1 000) kg / (1/1 000 000) m³ = 1 000 kg/m³. On peut aussi retenir que le facteur de conversion est × 1 000. Ainsi, l''eau a une masse volumique de 1 g/cm³ = 1 000 kg/m³.',
  'Erreur fréquente : penser que le facteur de conversion est 100 ou 10 000 en confondant les puissances de 10 liées au cm³ et au m³.',
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
  'fa030000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_densite_masse_volume',
  'Densité, masse et volume — Applications', 'Difficile',
  'qcm',
  'Un aquarium parallélépipédique mesure 80 cm × 40 cm × 50 cm (L × l × h). On le remplit d''eau (ρ = 1 g/cm³) aux trois quarts de sa hauteur, puis on y dépose 5 kg de gravier (ρ_gravier = 2,5 g/cm³). Quelle est la masse totale de l''eau et du gravier dans l''aquarium ?',
  NULL,
  '[{"id":"a","label":"120 kg"},{"id":"b","label":"125 kg"},{"id":"c","label":"160 kg"},{"id":"d","label":"165 kg"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Étape 1 — Volume d''eau. L''eau remplit les 3/4 de la hauteur : hauteur d''eau = 50 × 3/4 = 37,5 cm. Volume d''eau = 80 × 40 × 37,5 = 120 000 cm³. Étape 2 — Masse d''eau. Avec ρ_eau = 1 g/cm³ : masse d''eau = 120 000 × 1 = 120 000 g = 120 kg. Étape 3 — Masse totale. On ajoute le gravier : 120 + 5 = 125 kg. Note : le volume du gravier (5 000 ÷ 2,5 = 2 000 cm³) fait légèrement monter le niveau d''eau, mais la masse totale reste 125 kg.',
  'Erreur fréquente : oublier de convertir le volume d''eau en masse, ou ajouter la masse volumique du gravier au lieu de sa masse. Certains candidats calculent aussi le volume total de l''aquarium au lieu des 3/4.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
