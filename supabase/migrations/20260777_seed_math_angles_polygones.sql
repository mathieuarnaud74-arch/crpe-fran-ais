-- Seed: Angles dans les polygones — Calculs (7 exercices)
-- Subdomain: geometrie | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000001',
  'Mathematiques', 'geometrie', 'math_angles_polygones',
  'Angles dans les polygones — Calculs', 'Intermediaire',
  'qcm',
  'La somme des angles intérieurs d''un polygone à n côtés est donnée par une formule. Quelle est cette formule ?',
  NULL,
  '[{"id":"a","label":"n × 180°"},{"id":"b","label":"(n − 2) × 180°"},{"id":"c","label":"(n − 1) × 180°"},{"id":"d","label":"(n + 2) × 180°"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La somme des angles intérieurs d''un polygone convexe à n côtés vaut (n − 2) × 180°. Cette formule se démontre en décomposant le polygone en triangles à partir d''un sommet : depuis un sommet donné, on peut tracer (n − 3) diagonales qui découpent le polygone en (n − 2) triangles. Comme la somme des angles de chaque triangle vaut 180°, la somme totale vaut (n − 2) × 180°. Exemples : triangle (n = 3) → (3 − 2) × 180° = 180° ; quadrilatère (n = 4) → (4 − 2) × 180° = 360° ; pentagone (n = 5) → (5 − 2) × 180° = 540° ; hexagone (n = 6) → (6 − 2) × 180° = 720°. Cette formule est fondamentale en géométrie et revient très fréquemment au CRPE, aussi bien dans les exercices de calcul que dans les problèmes de pavage.',
  'Utiliser n × 180° au lieu de (n − 2) × 180°. Ne pas oublier de soustraire 2 au nombre de côtés avant de multiplier par 180°.',
  'valide',
  'Génération Claude — Programmes cycle 3-collège / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000002',
  'Mathematiques', 'geometrie', 'math_angles_polygones',
  'Angles dans les polygones — Calculs', 'Intermediaire',
  'reponse_courte',
  'Un quadrilatère a trois angles mesurant 85°, 110° et 72°. Quelle est la mesure du quatrième angle ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["93°","93","93 degrés"]}'::jsonb,
  'La somme des angles intérieurs d''un quadrilatère vaut (4 − 2) × 180° = 360°. On connaît trois angles : 85° + 110° + 72° = 267°. Le quatrième angle mesure donc 360° − 267° = 93°. Vérification : 85° + 110° + 72° + 93° = 360°. Ce type de calcul est un classique du CRPE. Il repose sur la connaissance de la somme des angles d''un quadrilatère (360°) et sur la capacité à résoudre une équation simple : a + 85 + 110 + 72 = 360, donc a = 360 − 267 = 93. Attention : il faut toujours vérifier que le résultat est cohérent (un angle d''un polygone convexe doit être compris entre 0° et 360° exclu). Ici, 93° est bien un angle plausible pour un quadrilatère convexe.',
  'Utiliser 180° comme somme des angles d''un quadrilatère (confusion avec le triangle). La somme des angles d''un quadrilatère est 360°, pas 180°.',
  'valide',
  'Génération Claude — Programmes cycle 3-collège / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000003',
  'Mathematiques', 'geometrie', 'math_angles_polygones',
  'Angles dans les polygones — Calculs', 'Intermediaire',
  'qcm',
  'Quelle est la mesure de chaque angle intérieur d''un hexagone régulier ?',
  NULL,
  '[{"id":"a","label":"108°"},{"id":"b","label":"120°"},{"id":"c","label":"135°"},{"id":"d","label":"150°"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un hexagone régulier a 6 côtés égaux et 6 angles égaux. La somme de ses angles intérieurs vaut (6 − 2) × 180° = 4 × 180° = 720°. Comme les 6 angles sont égaux, chaque angle mesure 720° ÷ 6 = 120°. Pour un polygone régulier à n côtés, la formule de l''angle intérieur est : (n − 2) × 180° / n. Récapitulatif des angles intérieurs des polygones réguliers courants : triangle équilatéral (n = 3) → 60° ; carré (n = 4) → 90° ; pentagone régulier (n = 5) → 108° ; hexagone régulier (n = 6) → 120° ; octogone régulier (n = 8) → 135° ; décagone régulier (n = 10) → 144°. L''hexagone régulier est particulièrement important car son angle de 120° permet un pavage du plan (3 × 120° = 360°), ce qui explique la forme des alvéoles d''abeilles.',
  'Confondre les angles des différents polygones réguliers. 108° est l''angle du pentagone régulier, 135° celui de l''octogone. Toujours recalculer avec la formule (n − 2) × 180° / n.',
  'valide',
  'Génération Claude — Programmes cycle 3-collège / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000004',
  'Mathematiques', 'geometrie', 'math_angles_polygones',
  'Angles dans les polygones — Calculs', 'Intermediaire',
  'qcm',
  'La somme des angles extérieurs d''un polygone convexe (un angle extérieur à chaque sommet) est une valeur remarquable. Quelle est cette somme pour un décagone régulier (10 côtés) ?',
  NULL,
  '[{"id":"a","label":"1 440°"},{"id":"b","label":"180°"},{"id":"c","label":"360°"},{"id":"d","label":"3 600°"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La somme des angles extérieurs d''un polygone convexe est toujours égale à 360°, quel que soit le nombre de côtés. C''est un résultat remarquable et universel. Chaque angle extérieur est le supplément de l''angle intérieur correspondant : angle extérieur = 180° − angle intérieur. Pour un polygone régulier à n côtés, chaque angle extérieur mesure 360° / n. Pour le décagone régulier : chaque angle extérieur = 360° / 10 = 36°. Vérification : l''angle intérieur = 180° − 36° = 144°, et (10 − 2) × 180° / 10 = 1 440° / 10 = 144°. La propriété « somme des angles extérieurs = 360° » s''explique intuitivement : si l''on parcourt le contour du polygone en tournant à chaque sommet, on effectue un tour complet (360°) pour revenir au point de départ. Cette propriété est très utile au CRPE pour calculer rapidement les angles extérieurs.',
  'Croire que la somme des angles extérieurs dépend du nombre de côtés. Elle vaut toujours 360° pour tout polygone convexe.',
  'valide',
  'Génération Claude — Programmes cycle 3-collège / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000005',
  'Mathematiques', 'geometrie', 'math_angles_polygones',
  'Angles dans les polygones — Calculs', 'Intermediaire',
  'vrai_faux',
  'Un polygone possède 5 angles intérieurs mesurant respectivement 108°, 108°, 108°, 108° et 108°. Ce polygone est nécessairement un pentagone régulier.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Avoir 5 angles égaux à 108° est une condition nécessaire mais pas suffisante pour qu''un pentagone soit régulier. Un pentagone régulier a à la fois 5 angles égaux ET 5 côtés égaux. On peut construire un pentagone dont les 5 angles mesurent tous 108° mais dont les côtés ont des longueurs différentes : c''est un pentagone équiangle mais non équilatéral. Par analogie, un rectangle a 4 angles de 90° mais n''est pas forcément un carré (ses côtés ne sont pas nécessairement égaux). La régularité d''un polygone exige deux conditions simultanées : équiangularité (tous les angles égaux) ET équilatéralité (tous les côtés égaux). Vérifions la somme : 5 × 108° = 540° = (5 − 2) × 180°. La somme est bien correcte pour un pentagone. Mais l''égalité des angles seule ne garantit pas la régularité.',
  'Croire que l''égalité des angles suffit à garantir la régularité d''un polygone. Il faut aussi vérifier l''égalité des côtés. (Exception : pour le triangle, équiangle implique équilatéral.)',
  'valide',
  'Génération Claude — Programmes cycle 3-collège / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000006',
  'Mathematiques', 'geometrie', 'math_angles_polygones',
  'Angles dans les polygones — Calculs', 'Intermediaire',
  'qcm',
  'Depuis un sommet d''un polygone convexe à n côtés, on trace toutes les diagonales possibles, ce qui divise le polygone en triangles. Combien de triangles obtient-on ainsi ?',
  NULL,
  '[{"id":"a","label":"n triangles"},{"id":"b","label":"(n − 1) triangles"},{"id":"c","label":"(n − 2) triangles"},{"id":"d","label":"(n − 3) triangles"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Depuis un sommet d''un polygone convexe à n côtés, on peut tracer (n − 3) diagonales (on ne peut pas tracer de diagonale vers les deux sommets adjacents ni vers le sommet lui-même). Ces diagonales découpent le polygone en exactement (n − 2) triangles. C''est d''ailleurs la base de la démonstration de la formule de la somme des angles : chaque triangle a une somme d''angles de 180°, donc la somme totale vaut (n − 2) × 180°. Exemples concrets : un quadrilatère (n = 4) se découpe en 4 − 2 = 2 triangles ; un pentagone (n = 5) se découpe en 5 − 2 = 3 triangles ; un hexagone (n = 6) se découpe en 6 − 2 = 4 triangles. Cette propriété de triangulation est fondamentale en géométrie : elle permet de ramener l''étude d''un polygone quelconque à celle de triangles, figures dont on connaît parfaitement les propriétés.',
  'Répondre (n − 3), qui est le nombre de diagonales depuis un sommet, et non le nombre de triangles formés. Les diagonales créent un triangle de plus qu''il n''y a de diagonales.',
  'valide',
  'Génération Claude — Programmes cycle 3-collège / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000007',
  'Mathematiques', 'geometrie', 'math_angles_polygones',
  'Angles dans les polygones — Calculs', 'Intermediaire',
  'reponse_courte',
  'Pour réaliser un pavage du plan avec un seul type de polygone régulier, il faut que l''angle intérieur de ce polygone divise exactement 360°. Parmi le triangle équilatéral, le carré et l''hexagone régulier, combien de ces polygones permettent un pavage régulier du plan ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","trois","les trois","les 3"]}'::jsonb,
  'Les trois polygones réguliers permettent un pavage du plan, et ce sont les seuls polygones réguliers à le permettre. Pour paver le plan, il faut que plusieurs polygones se rejoignent en chaque sommet et que la somme des angles en ce sommet soit exactement 360°. Triangle équilatéral : angle = 60°, et 360° ÷ 60° = 6. Six triangles équilatéraux se rejoignent en chaque sommet → pavage possible. Carré : angle = 90°, et 360° ÷ 90° = 4. Quatre carrés se rejoignent en chaque sommet → pavage possible. Hexagone régulier : angle = 120°, et 360° ÷ 120° = 3. Trois hexagones se rejoignent en chaque sommet → pavage possible. Pour le pentagone régulier : angle = 108°, et 360° ÷ 108° = 3,33... Ce n''est pas un entier, donc le pavage est impossible. De même pour l''heptagone (128,57°) et tous les polygones réguliers à plus de 6 côtés. Ce résultat est un classique du CRPE, souvent posé dans les problèmes de pavage et de carrelage.',
  'Oublier l''un des trois polygones, en particulier le triangle équilatéral. Ou croire que le pentagone régulier pave le plan (son angle de 108° ne divise pas 360°).',
  'valide',
  'Génération Claude — Programmes cycle 3-collège / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
