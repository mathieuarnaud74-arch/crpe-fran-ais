-- Série : Angles alternes-internes et correspondants
-- Sous-domaine : geometrie
-- Niveau : Intermediaire | Accès : free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_angles_alternes_correspondants', 'Angles alternes-internes et correspondants', 'Intermediaire',
  'qcm', 'Deux droites parallèles (d₁) et (d₂) sont coupées par une sécante. On obtient un angle de 65° sur (d₁) du côté gauche de la sécante, entre les deux parallèles. Que vaut l''angle alterne-interne correspondant sur (d₂) ?', NULL,
  '[{"id":"a","label":"65°"},{"id":"b","label":"115°"},{"id":"c","label":"25°"},{"id":"d","label":"130°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Lorsque deux droites parallèles sont coupées par une sécante, les angles alternes-internes sont égaux. L''angle alterne-interne est situé de l''autre côté de la sécante, entre les deux parallèles. Il mesure donc également 65°. L''option b (115°) correspond à l''angle supplémentaire (180° − 65°), qui serait un angle co-intérieur, pas un angle alterne-interne.',
  'Confondre angles alternes-internes et angles co-intérieurs (ou angles intérieurs du même côté) : l''élève calcule 180° − 65° = 115° au lieu de reconnaître l''égalité.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_angles_alternes_correspondants', 'Angles alternes-internes et correspondants', 'Intermediaire',
  'vrai_faux', 'Si deux droites parallèles sont coupées par une sécante, les angles correspondants sont supplémentaires (leur somme vaut 180°).', NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Lorsque deux droites parallèles sont coupées par une sécante, les angles correspondants sont égaux, pas supplémentaires. Ce sont les angles co-intérieurs (angles intérieurs situés du même côté de la sécante) qui sont supplémentaires et dont la somme vaut 180°. Deux angles correspondants occupent la même position relative par rapport à la sécante et à chaque parallèle.',
  'Confondre les propriétés : l''élève mélange « angles correspondants = égaux » et « angles co-intérieurs = supplémentaires ».',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_angles_alternes_correspondants', 'Angles alternes-internes et correspondants', 'Intermediaire',
  'qcm', 'Deux droites parallèles sont coupées par une sécante. Un angle co-intérieur (angle intérieur du même côté de la sécante) mesure 72°. Que vaut l''autre angle co-intérieur ?', NULL,
  '[{"id":"a","label":"72°"},{"id":"b","label":"108°"},{"id":"c","label":"288°"},{"id":"d","label":"36°"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les angles co-intérieurs (ou angles intérieurs situés du même côté de la sécante) sont supplémentaires lorsque les droites sont parallèles : leur somme vaut 180°. Donc l''autre angle co-intérieur mesure 180° − 72° = 108°. Cette propriété est la réciproque utile : si deux angles co-intérieurs sont supplémentaires, alors les droites sont parallèles.',
  'Penser que les angles co-intérieurs sont égaux (comme les alternes-internes) et répondre 72° au lieu de 108°.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_angles_alternes_correspondants', 'Angles alternes-internes et correspondants', 'Intermediaire',
  'reponse_courte', 'Les droites (d₁) et (d₂) sont parallèles, coupées par une sécante (s). On donne l''angle formé entre (d₁) et (s) du côté supérieur gauche : 130°. Quel est l''angle formé entre (d₂) et (s) du côté inférieur droit, entre les deux parallèles ? (en degrés)', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["50","50°","50 °"]}'::jsonb,
  'L''angle de 130° est situé au-dessus de (d₁) à gauche de (s). L''angle demandé est situé en dessous de (d₂) à droite de (s), entre les parallèles. Ces deux angles ne sont ni alternes-internes ni correspondants : il faut décomposer. L''angle correspondant sur (d₂) du côté supérieur gauche mesure aussi 130°. L''angle adjacent (supplémentaire) mesure 180° − 130° = 50°. L''angle alterne-interne de cet angle de 50° (côté gauche, entre les parallèles) est aussi 50°.',
  'Répondre 130° en confondant avec un angle correspondant : l''élève ne repère pas correctement la position de l''angle demandé par rapport à la sécante.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_angles_alternes_correspondants', 'Angles alternes-internes et correspondants', 'Intermediaire',
  'qcm', 'Deux droites (d₁) et (d₂) sont coupées par une sécante. On mesure deux angles alternes-internes : l''un vaut 55° et l''autre 55°. Que peut-on conclure ?', NULL,
  '[{"id":"a","label":"Les droites (d₁) et (d₂) sont parallèles"},{"id":"b","label":"Les droites (d₁) et (d₂) sont perpendiculaires"},{"id":"c","label":"On ne peut rien conclure"},{"id":"d","label":"Les droites (d₁) et (d₂) sont sécantes en un point"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Si deux droites coupées par une sécante forment des angles alternes-internes égaux, alors ces droites sont parallèles. C''est la réciproque du théorème des angles alternes-internes. Cette propriété est très utilisée en géométrie pour démontrer le parallélisme de deux droites. On peut aussi utiliser l''égalité des angles correspondants ou la supplémentarité des angles co-intérieurs pour prouver le parallélisme.',
  'Répondre « on ne peut rien conclure » : l''élève ne connaît pas la réciproque du théorème et pense qu''il ne fonctionne que dans un sens.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_angles_alternes_correspondants', 'Angles alternes-internes et correspondants', 'Intermediaire',
  'qcm', 'Trois droites parallèles (d₁), (d₂) et (d₃) sont coupées par une sécante. L''angle entre (d₁) et la sécante vaut 40°. On sait que l''angle entre (d₂) et la sécante (angle correspondant) vaut x, et que l''angle co-intérieur entre (d₂) et (d₃) vaut y. Quelles sont les valeurs de x et y ?', NULL,
  '[{"id":"a","label":"x = 40° et y = 140°"},{"id":"b","label":"x = 140° et y = 40°"},{"id":"c","label":"x = 40° et y = 40°"},{"id":"d","label":"x = 140° et y = 140°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Puisque (d₁) // (d₂), les angles correspondants sont égaux : x = 40°. Puisque (d₂) // (d₃), les angles co-intérieurs sont supplémentaires : y = 180° − 40° = 140°. Ce problème combine deux propriétés distinctes dans une configuration à trois parallèles, ce qui exige de l''élève une lecture attentive de la position des angles.',
  'Appliquer la même propriété aux deux paires d''angles : l''élève répond x = 40° et y = 40° en oubliant que les angles co-intérieurs sont supplémentaires et non égaux.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_angles_alternes_correspondants', 'Angles alternes-internes et correspondants', 'Intermediaire',
  'reponse_courte', 'Deux rails de chemin de fer sont parallèles. Une traverse les coupe en formant un angle de 78° avec le rail gauche. Un ingénieur doit vérifier l''angle formé entre la traverse et le rail droit (angle correspondant). Quelle valeur doit-il trouver pour confirmer que les rails sont bien parallèles ? (en degrés)', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["78","78°","78 °"]}'::jsonb,
  'Si les rails sont parallèles, les angles correspondants formés par la traverse (sécante) sont égaux. L''ingénieur doit donc mesurer un angle de 78° entre la traverse et le rail droit. Si cet angle diffère de 78°, cela signifie que les rails ne sont pas parfaitement parallèles. Ce problème illustre une application concrète de la propriété des angles correspondants dans le domaine ferroviaire.',
  'Calculer le supplémentaire (180° − 78° = 102°) : l''élève confond angles correspondants (égaux) et angles co-intérieurs (supplémentaires).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
