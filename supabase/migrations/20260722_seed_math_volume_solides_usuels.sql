-- Série : Volume des solides usuels — Formules et applications
-- Sous-domaine : grandeurs_mesures
-- Niveau : Intermediaire | Accès : premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels', 'Volume des solides usuels — Formules et applications', 'Intermediaire',
  'qcm', 'Un cube a une arête de 5 cm. Quel est son volume ?', NULL,
  '[{"id":"a","label":"25 cm³"},{"id":"b","label":"125 cm³"},{"id":"c","label":"150 cm³"},{"id":"d","label":"75 cm³"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le volume d''un cube d''arête a est V = a³. Ici : V = 5³ = 5 × 5 × 5 = 125 cm³. L''option a (25 cm³) correspond à a², c''est-à-dire l''aire d''une face. L''option c (150 cm³) correspond à l''aire totale des 6 faces (6 × 25).',
  'Calculer a² au lieu de a³ : l''élève confond l''aire d''une face du cube avec son volume.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels', 'Volume des solides usuels — Formules et applications', 'Intermediaire',
  'reponse_courte', 'Un pavé droit (parallélépipède rectangle) a pour dimensions : longueur 8 cm, largeur 5 cm, hauteur 3 cm. Quel est son volume en cm³ ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120","120 cm³","120cm³"]}'::jsonb,
  'Le volume d''un pavé droit se calcule avec la formule V = L × l × h. Ici : V = 8 × 5 × 3 = 120 cm³. Le pavé droit est le solide de référence pour la notion de volume ; sa formule est la généralisation du cube.',
  'Calculer seulement L × l (aire de la base = 40 cm²) en oubliant de multiplier par la hauteur.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels', 'Volume des solides usuels — Formules et applications', 'Intermediaire',
  'qcm', 'Un cylindre a un rayon de base de 4 cm et une hauteur de 10 cm. Quel est son volume ? (π ≈ 3,14)', NULL,
  '[{"id":"a","label":"125,6 cm³"},{"id":"b","label":"502,4 cm³"},{"id":"c","label":"251,2 cm³"},{"id":"d","label":"160 cm³"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le volume d''un cylindre est V = π × r² × h. Ici : V = 3,14 × 4² × 10 = 3,14 × 16 × 10 = 502,4 cm³. L''option a correspond à π × 2r × h (périmètre × hauteur, soit l''aire latérale). L''option c correspond à π × r² × h / 2.',
  'Utiliser le diamètre au lieu du rayon dans la formule, ou oublier de mettre le rayon au carré : l''élève calcule π × r × h au lieu de π × r² × h.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels', 'Volume des solides usuels — Formules et applications', 'Intermediaire',
  'vrai_faux', 'Le volume d''un cône de rayon 3 cm et de hauteur 12 cm est égal à 113,04 cm³. (π ≈ 3,14)', NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le volume d''un cône est V = (1/3) × π × r² × h. Ici : V = (1/3) × 3,14 × 3² × 12 = (1/3) × 3,14 × 9 × 12 = (1/3) × 339,12 = 113,04 cm³. L''affirmation est vraie. Le facteur 1/3 provient du fait qu''un cône occupe exactement le tiers du volume du cylindre de même base et même hauteur.',
  'Oublier le facteur 1/3 et calculer π × r² × h = 339,12 cm³ : l''élève applique la formule du cylindre au lieu de celle du cône.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels', 'Volume des solides usuels — Formules et applications', 'Intermediaire',
  'qcm', 'Quel est le volume d''une sphère de rayon 6 cm ? (π ≈ 3,14)', NULL,
  '[{"id":"a","label":"452,16 cm³"},{"id":"b","label":"678,24 cm³"},{"id":"c","label":"904,32 cm³"},{"id":"d","label":"113,04 cm³"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le volume d''une sphère est V = (4/3) × π × r³. Ici : V = (4/3) × 3,14 × 6³ = (4/3) × 3,14 × 216 = (4/3) × 678,24 = 904,32 cm³. L''option b (678,24) correspond à π × r³ sans le facteur 4/3. L''option a correspond à (2/3) × π × r³.',
  'Oublier le facteur 4/3 ou le confondre avec 1/3 (formule du cône) : l''élève mélange les coefficients des différentes formules de volume.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels', 'Volume des solides usuels — Formules et applications', 'Intermediaire',
  'qcm', 'On compare deux solides : un cube d''arête 10 cm et un cylindre de rayon 6 cm et de hauteur 10 cm (π ≈ 3,14). Lequel a le plus grand volume ?', NULL,
  '[{"id":"a","label":"Le cube (1 000 cm³)"},{"id":"b","label":"Le cylindre (1 130,4 cm³)"},{"id":"c","label":"Ils ont le même volume"},{"id":"d","label":"Le cylindre (376,8 cm³)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Volume du cube = 10³ = 1 000 cm³. Volume du cylindre = π × 6² × 10 = 3,14 × 36 × 10 = 1 130,4 cm³. Le cylindre a un volume supérieur de 130,4 cm³. L''option d correspond à π × r × h × 2 (aire latérale, pas le volume).',
  'Penser qu''un cube « contient toujours plus » qu''un cylindre de même hauteur, sans calculer : l''élève se fie à son intuition géométrique.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels', 'Volume des solides usuels — Formules et applications', 'Intermediaire',
  'reponse_courte', 'Une piscine a la forme d''un pavé droit de 10 m de long, 5 m de large et 1,8 m de profondeur. Combien de litres d''eau faut-il pour la remplir entièrement ? (1 m³ = 1 000 L)', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["90000","90 000","90000 L","90 000 L","90000 litres","90 000 litres"]}'::jsonb,
  'Volume de la piscine = 10 × 5 × 1,8 = 90 m³. Conversion : 90 m³ × 1 000 = 90 000 litres. Ce problème combine le calcul de volume d''un pavé droit avec la conversion m³ → litres, compétence essentielle au CRPE.',
  'Oublier la conversion m³ en litres et répondre 90 : l''élève donne le volume en m³ sans convertir en litres comme demandé.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
