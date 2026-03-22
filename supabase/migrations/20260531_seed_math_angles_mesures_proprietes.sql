-- Série : Angles — Mesures et propriétés
-- 7 questions, Intermédiaire, free
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — AMORCE — QCM — Vocabulaire des angles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Intermediaire',
  'qcm',
  'Un angle mesure 135°. Comment le qualifie-t-on ?',
  NULL,
  '[{"id":"a","label":"Aigu"},{"id":"b","label":"Droit"},{"id":"c","label":"Obtus"},{"id":"d","label":"Plat"}]',
  '{"mode":"single_choice","value":"c"}',
  'Un angle de 135° est obtus. Classification des angles : aigu (0° < a < 90°), droit (a = 90°), obtus (90° < a < 180°), plat (a = 180°), rentrant (180° < a < 360°), plein (a = 360°). 135° est strictement compris entre 90° et 180°, donc c''est un angle obtus. Au CRPE, la connaissance précise du vocabulaire géométrique (angle aigu, obtus, complémentaire, supplémentaire) est attendue dans les questions de géométrie et de didactique.',
  'Confondre obtus et plat. L''angle plat mesure exactement 180° (les deux côtés forment une droite). L''angle obtus est « ouvert » mais pas plat.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Réponse courte — Angles complémentaires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Intermediaire',
  'reponse_courte',
  'Deux angles sont complémentaires. L''un mesure 37°. Combien mesure l''autre ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["53°","53","53 °","53 degrés"]}',
  'Deux angles complémentaires ont une somme de 90°. Si l''un mesure 37°, l''autre mesure 90° − 37° = 53°. Ne pas confondre avec supplémentaires (somme = 180°) : si les angles étaient supplémentaires, la réponse serait 180° − 37° = 143°. Moyen mnémotechnique : Complémentaire → 90° (C comme Coin d''un angle droit), Supplémentaire → 180° (S comme Straight/droit, angle plat).',
  'Confondre complémentaires (somme = 90°) et supplémentaires (somme = 180°). C''est la confusion la plus fréquente.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Angles formés par des parallèles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Intermediaire',
  'qcm',
  'Deux droites parallèles sont coupées par une sécante. Un angle aigu formé mesure 62°. Combien mesure l''angle obtus adjacent ?',
  NULL,
  '[{"id":"a","label":"62°"},{"id":"b","label":"118°"},{"id":"c","label":"128°"},{"id":"d","label":"28°"}]',
  '{"mode":"single_choice","value":"b"}',
  'Deux angles adjacents formés par une sécante coupant une droite sont supplémentaires : leur somme vaut 180°. Angle obtus = 180° − 62° = 118°. Quand deux parallèles sont coupées par une sécante, on distingue : les angles alternes-internes (égaux), les angles correspondants (égaux), et les angles supplémentaires (somme = 180°). L''angle aigu (62°) et l''angle obtus adjacent (118°) sont supplémentaires. Tous les angles aigus formés par ces parallèles et cette sécante mesurent 62°, et tous les angles obtus mesurent 118°.',
  'Confondre supplémentaires (180°) et complémentaires (90°), ce qui donnerait 90° − 62° = 28° (faux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Vrai/Faux — Angles alternes-internes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : si deux droites sont coupées par une sécante et forment des angles alternes-internes égaux, alors ces droites sont parallèles.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}',
  'VRAI. C''est la RÉCIPROQUE du théorème des angles alternes-internes. Le théorème direct dit : « si deux droites sont parallèles, alors les angles alternes-internes sont égaux ». La réciproque dit : « si les angles alternes-internes sont égaux, alors les droites sont parallèles ». Cette réciproque est VRAIE et sert à DÉMONTRER que deux droites sont parallèles. C''est un outil de démonstration fondamental au CRPE. Les angles alternes-internes sont situés de part et d''autre de la sécante, entre les deux droites (« internes »), et en positions « alternées » (l''un à gauche, l''autre à droite de la sécante).',
  'Confondre le théorème et sa réciproque, ou ne pas savoir que la réciproque est vraie. Les deux sens sont valides pour les angles alternes-internes avec des parallèles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Réponse courte — Angle dans un triangle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Intermediaire',
  'reponse_courte',
  'Dans le triangle ABC, l''angle en A mesure 48° et l''angle en B mesure 65°. Quelle est la mesure de l''angle en C ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["67°","67","67 °","67 degrés"]}',
  'La somme des angles d''un triangle est toujours 180°. Angle C = 180° − 48° − 65° = 67°. Vérification : 48° + 65° + 67° = 180° ✓. Ce triangle est acutangle (les 3 angles sont aigus, tous < 90°). Classification des triangles selon les angles : acutangle (3 angles aigus), rectangle (1 angle droit), obtusangle (1 angle obtus). Ici, tous les angles sont entre 0° et 90°, donc acutangle. La propriété « somme des angles = 180° » est l''une des propriétés les plus utilisées en géométrie au CRPE.',
  'Faire 180° − 48° = 132° en oubliant de soustraire aussi l''angle B, ou se tromper dans la soustraction.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Angle inscrit et angle au centre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Intermediaire',
  'qcm',
  'Dans un cercle, un angle au centre mesure 120°. Quel est l''angle inscrit qui intercepte le même arc ?',
  NULL,
  '[{"id":"a","label":"120°"},{"id":"b","label":"60°"},{"id":"c","label":"240°"},{"id":"d","label":"30°"}]',
  '{"mode":"single_choice","value":"b"}',
  'L''angle inscrit est toujours égal à la MOITIÉ de l''angle au centre qui intercepte le même arc. Angle inscrit = 120° / 2 = 60°. Cette relation est fondamentale en géométrie du cercle. Cas particulier important : si l''angle au centre vaut 180° (demi-cercle), l''angle inscrit vaut 90°. C''est le théorème de Thalès pour le cercle : tout angle inscrit dans un demi-cercle est un angle droit. Au CRPE, la relation angle inscrit = angle au centre / 2 est régulièrement utilisée dans les problèmes de géométrie du cercle.',
  'Croire que l''angle inscrit est égal à l''angle au centre (donner 120°). L''angle inscrit est toujours la MOITIÉ de l''angle au centre correspondant.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Somme des angles d'un polygone
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Intermediaire',
  'reponse_courte',
  'Quelle est la somme des angles intérieurs d''un hexagone (polygone à 6 côtés) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["720°","720","720 °","720 degrés"]}',
  'La somme des angles intérieurs d''un polygone à n côtés est (n − 2) × 180°. Pour un hexagone (n = 6) : (6 − 2) × 180° = 4 × 180° = 720°. Justification : on peut découper tout polygone convexe à n côtés en (n − 2) triangles à partir d''un sommet. Chaque triangle a une somme d''angles de 180°, d''où le résultat. Cas particuliers à connaître : triangle (180°), quadrilatère (360°), pentagone (540°), hexagone (720°). Pour un hexagone régulier, chaque angle mesure 720°/6 = 120°.',
  'Appliquer la formule n × 180° au lieu de (n − 2) × 180°, ce qui donnerait 1 080° (faux). Le « − 2 » est crucial.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
