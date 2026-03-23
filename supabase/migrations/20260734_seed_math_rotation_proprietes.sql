-- Série : Rotation — Propriétés et images (7 exercices, Intermédiaire, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000001',
  'Mathematiques', 'geometrie', 'math_rotation_proprietes',
  'Rotation — Propriétés et images', 'Intermediaire',
  'qcm',
  'Une rotation est définie par trois éléments. Lesquels ?',
  NULL,
  '[{"id":"a","label":"Un centre, un angle et un sens (horaire ou antihoraire)"},{"id":"b","label":"Deux points et une distance"},{"id":"c","label":"Un axe et une direction"},{"id":"d","label":"Un centre et une distance"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Une rotation du plan est entièrement caractérisée par trois données : son centre (le point fixe autour duquel s''effectue la rotation), son angle (l''amplitude de la rotation, exprimée en degrés) et son sens (horaire ou antihoraire, aussi appelé sens direct ou sens indirect). Sans l''un de ces trois éléments, la transformation n''est pas définie de manière unique.',
  'Oublier le sens de rotation. L''élève indique seulement le centre et l''angle, sans préciser si la rotation s''effectue dans le sens horaire ou antihoraire. Or, une rotation de 90° dans le sens horaire et une rotation de 90° dans le sens antihoraire donnent des images différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000002',
  'Mathematiques', 'geometrie', 'math_rotation_proprietes',
  'Rotation — Propriétés et images', 'Intermediaire',
  'vrai_faux',
  'L''image d''un point M par une rotation de centre O et d''angle 90° dans le sens antihoraire est le point M'' tel que OM = OM'' et l''angle (OM, OM'') = 90°.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est exactement la définition de l''image d''un point par une rotation. Le point M'' est situé à la même distance du centre O que le point M (conservation des distances : OM = OM''), et l''angle orienté de OM vers OM'' mesure 90° dans le sens antihoraire. La rotation conserve les distances au centre, ce qui signifie que M se déplace sur le cercle de centre O et de rayon OM.',
  'Croire que OM'' est différent de OM, c''est-à-dire que la rotation modifie la distance au centre. L''élève confond rotation et homothétie : la rotation conserve les distances, pas l''homothétie.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000003',
  'Mathematiques', 'geometrie', 'math_rotation_proprietes',
  'Rotation — Propriétés et images', 'Intermediaire',
  'qcm',
  'Quelle propriété est conservée par une rotation ?',
  NULL,
  '[{"id":"a","label":"Les longueurs, les angles et les aires"},{"id":"b","label":"Les longueurs uniquement"},{"id":"c","label":"Les angles uniquement"},{"id":"d","label":"Les aires uniquement"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La rotation est une isométrie du plan, c''est-à-dire une transformation qui conserve les distances. En conséquence, elle conserve également les longueurs des segments, les mesures des angles, les aires des figures, le parallélisme et la perpendicularité. L''image d''un segment est un segment de même longueur, l''image d''un cercle est un cercle de même rayon, etc.',
  'Penser que seules les longueurs sont conservées. L''élève ne réalise pas que la conservation des distances entraîne automatiquement la conservation de toutes les propriétés métriques (angles, aires, périmètres).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000004',
  'Mathematiques', 'geometrie', 'math_rotation_proprietes',
  'Rotation — Propriétés et images', 'Intermediaire',
  'reponse_courte',
  'Un triangle équilatéral ABC a son centre de gravité en G. Quel est l''angle minimal (en degrés) d''une rotation de centre G qui envoie le triangle sur lui-même ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120","120°","120 degrés"]}'::jsonb,
  'Un triangle équilatéral possède une symétrie de rotation d''ordre 3 : il est invariant par les rotations de centre G et d''angles 120°, 240° et 360°. L''angle minimal non nul est donc 120° = 360°/3. Cela signifie qu''une rotation de 120° autour du centre de gravité envoie chaque sommet sur le sommet suivant (A sur B, B sur C, C sur A).',
  'Répondre 60° en confondant avec la rotation qui construit un triangle équilatéral à partir d''un côté. L''élève confond l''angle intérieur du triangle (60°) avec l''angle de rotation qui laisse le triangle invariant (120°).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000005',
  'Mathematiques', 'geometrie', 'math_rotation_proprietes',
  'Rotation — Propriétés et images', 'Intermediaire',
  'qcm',
  'On compose une rotation de centre O et d''angle 130° dans le sens antihoraire avec une rotation de même centre O et d''angle 50° dans le sens antihoraire. Quelle transformation obtient-on ?',
  NULL,
  '[{"id":"a","label":"Une rotation de centre O et d''angle 180°"},{"id":"b","label":"Une rotation de centre O et d''angle 80°"},{"id":"c","label":"Une symétrie centrale de centre O"},{"id":"d","label":"Les réponses A et C sont toutes les deux correctes"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'La composée de deux rotations de même centre est une rotation de même centre dont l''angle est la somme des angles : 130° + 50° = 180°. Or, une rotation de 180° est exactement la même chose qu''une symétrie centrale (symétrie de centre O). Donc les réponses A et C sont toutes les deux correctes : c''est une rotation de 180°, autrement dit une symétrie centrale.',
  'Soustraire les angles au lieu de les additionner : calculer 130° − 50° = 80°. L''élève confond la composition de rotations de même sens (on additionne) avec une composition de rotations de sens contraires.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000006',
  'Mathematiques', 'geometrie', 'math_rotation_proprietes',
  'Rotation — Propriétés et images', 'Intermediaire',
  'qcm',
  'Sur la figure, le quadrilatère A''B''C''D'' est l''image du quadrilatère ABCD par une transformation. On observe que les distances au point O sont conservées et que chaque point a tourné de 90° dans le sens horaire autour de O. Quelle est cette transformation ?',
  NULL,
  '[{"id":"a","label":"Rotation de centre O, d''angle 90° dans le sens horaire"},{"id":"b","label":"Symétrie axiale d''axe passant par O"},{"id":"c","label":"Translation de vecteur OA''"},{"id":"d","label":"Homothétie de centre O et de rapport 1"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les indices sont clairs : conservation des distances au point O (donc O est le centre) et chaque point a tourné de 90° dans le sens horaire. C''est la définition même d''une rotation de centre O et d''angle 90° dans le sens horaire. Pour identifier une rotation sur une figure, on vérifie : (1) l''existence d''un point fixe (le centre), (2) la conservation des distances à ce point, (3) un angle constant entre chaque point et son image.',
  'Confondre avec une symétrie axiale. L''élève voit que la figure a « bougé » et pense à une symétrie, sans vérifier que les distances au centre sont conservées et que l''angle est constant — ce qui caractérise la rotation.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000007',
  'Mathematiques', 'geometrie', 'math_rotation_proprietes',
  'Rotation — Propriétés et images', 'Intermediaire',
  'reponse_courte',
  'Une éolienne possède 3 pales identiques régulièrement espacées. Lorsqu''elle tourne, chaque pale prend la place de la suivante. De quel angle (en degrés) l''éolienne a-t-elle tourné quand chaque pale a pris exactement la position de la pale suivante ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120","120°","120 degrés"]}'::jsonb,
  'Les 3 pales sont régulièrement espacées, donc l''angle entre deux pales consécutives est 360° ÷ 3 = 120°. Quand l''éolienne tourne de 120°, chaque pale prend exactement la position de la pale suivante. C''est une application concrète de la rotation : l''éolienne possède une symétrie de rotation d''ordre 3, et la rotation de 120° autour de l''axe central est une transformation qui laisse la figure globale invariante.',
  'Répondre 60° en divisant 360° par 6 au lieu de 3, ou répondre 180° en pensant qu''il faut un demi-tour. L''élève ne compte pas correctement le nombre de pales ou confond le nombre de pales avec un autre paramètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
