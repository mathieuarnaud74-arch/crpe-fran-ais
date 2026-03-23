-- Série : Périmètre du cercle et longueur d'arc
-- Sous-domaine : geometrie
-- Niveau : Intermediaire | Accès : premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_perimetre_cercle_arc', 'Périmètre du cercle et longueur d''arc', 'Intermediaire',
  'qcm', 'Un cercle a un rayon de 7 cm. Quel est son périmètre ? (On prendra π ≈ 3,14)', NULL,
  '[{"id":"a","label":"21,98 cm"},{"id":"b","label":"43,96 cm"},{"id":"c","label":"153,86 cm"},{"id":"d","label":"14 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le périmètre (ou circonférence) d''un cercle se calcule avec la formule P = 2πr. Ici : P = 2 × 3,14 × 7 = 43,96 cm. L''option a (21,98 cm) correspond à πr, c''est-à-dire la moitié du périmètre. L''option c (153,86 cm) correspond à l''aire du disque (πr²).',
  'Confondre périmètre du cercle (2πr) et aire du disque (πr²) : l''élève calcule 3,14 × 49 = 153,86 cm au lieu de 2 × 3,14 × 7 = 43,96 cm.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_perimetre_cercle_arc', 'Périmètre du cercle et longueur d''arc', 'Intermediaire',
  'reponse_courte', 'La circonférence d''une roue de vélo est de 2,0096 m. Quel est le diamètre de cette roue en cm ? (π ≈ 3,14)', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["64","64 cm","64cm"]}'::jsonb,
  'On sait que P = πd, donc d = P / π. Ici : d = 2,0096 / 3,14 = 0,64 m = 64 cm. L''élève doit penser à convertir le résultat en centimètres. Le diamètre est le double du rayon : on aurait aussi pu écrire P = 2πr, d''où r = P / (2π) = 0,32 m, puis d = 2r = 0,64 m.',
  'Oublier la conversion de mètres en centimètres et répondre 0,64 au lieu de 64 cm.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_perimetre_cercle_arc', 'Périmètre du cercle et longueur d''arc', 'Intermediaire',
  'qcm', 'Un arc de cercle de rayon 10 cm est sous-tendu par un angle au centre de 90°. Quelle est la longueur de cet arc ? (π ≈ 3,14)', NULL,
  '[{"id":"a","label":"31,4 cm"},{"id":"b","label":"15,7 cm"},{"id":"c","label":"62,8 cm"},{"id":"d","label":"7,85 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La longueur d''un arc de cercle se calcule avec la formule L = (angle / 360) × 2πr. Ici : L = (90 / 360) × 2 × 3,14 × 10 = 0,25 × 62,8 = 15,7 cm. L''angle de 90° représente un quart du cercle complet, donc l''arc mesure un quart de la circonférence totale.',
  'Utiliser la formule de l''aire du secteur au lieu de la longueur d''arc : l''élève calcule (90/360) × πr² = 78,5 cm² au lieu de la longueur.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_perimetre_cercle_arc', 'Périmètre du cercle et longueur d''arc', 'Intermediaire',
  'vrai_faux', 'Le périmètre d''un demi-cercle de rayon 5 cm est égal à 15,7 cm. (π ≈ 3,14)', NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Le périmètre d''un demi-cercle comprend le demi-cercle (la moitié de la circonférence) PLUS le diamètre. Demi-circonférence = πr = 3,14 × 5 = 15,7 cm. Diamètre = 2r = 10 cm. Périmètre total = 15,7 + 10 = 25,7 cm. La valeur 15,7 cm ne correspond qu''à la partie courbe, pas au périmètre complet.',
  'Oublier d''ajouter le diamètre au périmètre du demi-cercle : l''élève ne considère que la partie courbe et omet le segment rectiligne qui ferme la figure.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_perimetre_cercle_arc', 'Périmètre du cercle et longueur d''arc', 'Intermediaire',
  'qcm', 'Une piste d''athlétisme a la forme d''un rectangle de 100 m × 60 m complété par deux demi-cercles de diamètre 60 m à chaque extrémité. Quel est le périmètre de cette piste ? (π ≈ 3,14)', NULL,
  '[{"id":"a","label":"320 m"},{"id":"b","label":"388,4 m"},{"id":"c","label":"508,4 m"},{"id":"d","label":"448,4 m"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le périmètre de la piste se compose des deux longueurs du rectangle et des deux demi-cercles (qui forment un cercle complet). Deux longueurs = 2 × 100 = 200 m. Cercle complet de diamètre 60 m : P = πd = 3,14 × 60 = 188,4 m. Périmètre total = 200 + 188,4 = 388,4 m. Les largeurs du rectangle ne comptent pas car elles sont remplacées par les demi-cercles.',
  'Ajouter aussi les deux largeurs du rectangle (2 × 60 = 120 m) en plus des demi-cercles : l''élève compte deux fois les segments remplacés par les arcs.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_perimetre_cercle_arc', 'Périmètre du cercle et longueur d''arc', 'Intermediaire',
  'reponse_courte', 'Un jardinier veut entourer un massif circulaire de rayon 4 m avec une clôture. Le grillage coûte 8,50 € le mètre. Quel est le coût total de la clôture, arrondi au centime ? (π ≈ 3,14)', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["213,52 €","213,52€","213,52"]}'::jsonb,
  'Il faut d''abord calculer le périmètre du cercle : P = 2πr = 2 × 3,14 × 4 = 25,12 m. Puis multiplier par le prix au mètre : 25,12 × 8,50 = 213,52 €. Ce problème concret mobilise la formule du périmètre du cercle dans un contexte de la vie quotidienne.',
  'Calculer l''aire du disque (πr² = 50,24 m²) au lieu du périmètre : l''élève confond la surface à couvrir et la longueur de clôture nécessaire.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_perimetre_cercle_arc', 'Périmètre du cercle et longueur d''arc', 'Intermediaire',
  'qcm', 'Un cadran d''horloge a un rayon de 15 cm. L''aiguille des minutes parcourt un arc de 120° en 20 minutes. Quelle est la longueur de cet arc en cm ? (π ≈ 3,14)', NULL,
  '[{"id":"a","label":"31,4 cm"},{"id":"b","label":"62,8 cm"},{"id":"c","label":"15,7 cm"},{"id":"d","label":"94,2 cm"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La longueur de l''arc parcouru se calcule avec L = (angle / 360) × 2πr. Ici : L = (120 / 360) × 2 × 3,14 × 15 = (1/3) × 94,2 = 31,4 cm. En 20 minutes, l''aiguille des minutes parcourt effectivement 120° (soit un tiers du cadran : 20/60 = 1/3). Ce problème combine la notion de longueur d''arc avec une conversion temporelle.',
  'Confondre le rayon (15 cm) avec le diamètre et utiliser r = 7,5 cm dans le calcul, ce qui divise le résultat par deux.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
