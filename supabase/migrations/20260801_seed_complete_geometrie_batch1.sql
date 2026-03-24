-- ============================================================================
-- Migration: Complétion des séries géométrie (batch 1)
-- Ajout de 3 questions (Q8, Q9, Q10) à 10 séries existantes = 30 exercices
-- Séries concernées :
--   1. math_agrandissement_reduction
--   2. math_angles_alternes_correspondants
--   3. math_angles_mesures_proprietes
--   4. math_angles_polygones
--   5. math_cercles_disques
--   6. math_chasse_erreurs_geometrie
--   7. math_droites_paralleles_perpendiculaires
--   8. math_equations_droites
--   9. math_figures_complexes_aires
--  10. math_geometrie_coordonnees
-- ============================================================================

-- ############################################################################
-- 1. AGRANDISSEMENT ET RÉDUCTION (b0260000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — vrai_faux — Périmètre et coefficient de réduction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_agrandissement_reduction',
  'Agrandissement et réduction',
  'Intermediaire',
  'vrai_faux',
  'On réduit un triangle avec un coefficient 0,5. Le périmètre du triangle réduit est égal à la moitié du périmètre du triangle initial.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Le périmètre est une grandeur de dimension 1 (une longueur). Lors d''une réduction de coefficient k = 0,5, toutes les longueurs sont multipliées par k. Le périmètre, étant la somme de longueurs, est donc aussi multiplié par k = 0,5, c''est-à-dire divisé par 2. Attention à ne pas confondre avec l''aire, qui serait multipliée par k² = 0,25 (divisée par 4). Retenir : longueurs × k, périmètres × k, aires × k², volumes × k³.',
  'Confondre le coefficient appliqué au périmètre (k) avec celui appliqué à l''aire (k²). Certains élèves pensent que le périmètre est divisé par 4 (comme l''aire) au lieu de 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Coefficient d'agrandissement à partir des aires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_agrandissement_reduction',
  'Agrandissement et réduction',
  'Intermediaire',
  'reponse_courte',
  'Un carré a une aire de 16 cm². Après agrandissement, son aire est de 144 cm². Quel est le coefficient d''agrandissement appliqué aux longueurs ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","k = 3","k=3"]}'::jsonb,
  'Le rapport des aires est 144 / 16 = 9. Or l''aire est multipliée par k² lors d''un agrandissement de coefficient k. Donc k² = 9, ce qui donne k = √9 = 3. Vérification : le côté initial mesure √16 = 4 cm. Après agrandissement : 4 × 3 = 12 cm. Aire du carré agrandi : 12² = 144 cm² ✓. Pour retrouver le coefficient des longueurs à partir du rapport des aires, on prend la racine carrée.',
  'Répondre 9 en confondant le coefficient des aires (k² = 9) avec le coefficient des longueurs (k = 3). Il faut extraire la racine carrée du rapport des aires pour obtenir le coefficient des longueurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — qcm — Échelle et rapport de réduction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0260000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_agrandissement_reduction',
  'Agrandissement et réduction',
  'Avance',
  'qcm',
  'Sur un plan à l''échelle 1/200, un terrain rectangulaire mesure 4 cm × 3 cm. Quelle est l''aire réelle du terrain ?',
  NULL,
  '[{"id":"a","label":"24 m²"},{"id":"b","label":"48 m²"},{"id":"c","label":"96 m²"},{"id":"d","label":"240 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''échelle 1/200 signifie que 1 cm sur le plan représente 200 cm = 2 m en réalité. Dimensions réelles : longueur = 4 × 200 = 800 cm = 8 m, largeur = 3 × 200 = 600 cm = 6 m. Aire réelle = 8 × 6 = 48 m². On peut aussi raisonner avec le coefficient des aires : l''aire sur le plan est 4 × 3 = 12 cm², le coefficient des aires est 200² = 40 000, donc l''aire réelle est 12 × 40 000 = 480 000 cm² = 48 m². Les deux méthodes donnent le même résultat.',
  'Oublier la conversion en mètres et répondre en cm² (480 000 cm²), ou multiplier l''aire sur le plan par 200 au lieu de 200² (aire = 12 × 200 = 2 400 cm² = 0,24 m², faux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 2. ANGLES ALTERNES-INTERNES ET CORRESPONDANTS (f90c0000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — vrai_faux — Angles correspondants et parallélisme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_angles_alternes_correspondants',
  'Angles alternes-internes et correspondants',
  'Intermediaire',
  'vrai_faux',
  'Deux droites sont coupées par une sécante. Si deux angles correspondants mesurent respectivement 73° et 73°, alors les deux droites sont nécessairement parallèles.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. C''est la réciproque du théorème des angles correspondants : si deux droites coupées par une sécante forment des angles correspondants égaux, alors ces deux droites sont parallèles. Cette réciproque est un outil fondamental pour démontrer le parallélisme de deux droites. On dispose de trois critères équivalents : (1) angles alternes-internes égaux, (2) angles correspondants égaux, (3) angles co-intérieurs supplémentaires. Si l''une de ces conditions est vérifiée, les droites sont parallèles.',
  'Croire que la réciproque n''est pas valable et répondre faux. La réciproque du théorème des angles correspondants est vraie : l''égalité suffit à garantir le parallélisme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Calcul d'angle avec co-intérieurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_angles_alternes_correspondants',
  'Angles alternes-internes et correspondants',
  'Avance',
  'reponse_courte',
  'Deux droites parallèles (d₁) et (d₂) sont coupées par une sécante. L''angle alterne-interne côté (d₁) mesure x et l''angle co-intérieur du même côté de la sécante sur (d₂) mesure 3x. Quelle est la valeur de x en degrés ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["45","45°","45 °"]}'::jsonb,
  'Les angles alternes-internes sont égaux quand les droites sont parallèles. L''angle alterne-interne côté (d₁) mesure x. L''angle co-intérieur du même côté de la sécante est supplémentaire de l''angle alterne-interne côté (d₂), qui mesure aussi x. Donc : x + 3x = 180° (les angles co-intérieurs sont supplémentaires). On obtient 4x = 180°, soit x = 45°. Vérification : l''angle alterne-interne = 45°, l''angle co-intérieur = 3 × 45° = 135°, et 45° + 135° = 180° ✓.',
  'Écrire x + 3x = 90° (confusion avec la complémentarité) au lieu de x + 3x = 180° (supplémentarité des angles co-intérieurs).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — qcm — Configuration avec deux sécantes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90c0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_angles_alternes_correspondants',
  'Angles alternes-internes et correspondants',
  'Avance',
  'qcm',
  'Deux droites parallèles (d₁) et (d₂) sont coupées par deux sécantes (s₁) et (s₂) qui se croisent en un point P situé entre les deux parallèles. L''angle formé par (s₁) et (d₁) (angle alterne-interne) mesure 50° et l''angle formé par (s₂) et (d₁) (angle alterne-interne) mesure 70°. Quelle est la mesure de l''angle formé en P entre les deux sécantes ?',
  NULL,
  '[{"id":"a","label":"60°"},{"id":"b","label":"120°"},{"id":"c","label":"110°"},{"id":"d","label":"70°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'En P, les deux sécantes forment un triangle avec la droite (d₁). Dans ce triangle, les angles à la base sur (d₁) sont les angles alternes-internes : 50° et 70°. La somme des angles d''un triangle est 180°, donc l''angle en P = 180° − 50° − 70° = 60°. On peut vérifier en utilisant les angles alternes-internes côté (d₂) : ils valent aussi 50° et 70° respectivement (par le théorème des angles alternes-internes). L''angle en P entre les sécantes est bien 60°.',
  'Additionner les deux angles (50° + 70° = 120°) au lieu de les soustraire de 180°. L''élève oublie d''utiliser la propriété de la somme des angles du triangle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 3. ANGLES — MESURES ET PROPRIÉTÉS (c0100000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — qcm — Angles opposés par le sommet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Intermediaire',
  'qcm',
  'Deux droites se coupent en un point O. L''un des angles formés mesure 47°. Quelles sont les mesures des trois autres angles ?',
  NULL,
  '[{"id":"a","label":"47°, 133°, 133°"},{"id":"b","label":"47°, 143°, 143°"},{"id":"c","label":"133°, 133°, 133°"},{"id":"d","label":"47°, 47°, 47°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Quand deux droites se coupent, elles forment quatre angles. Les angles opposés par le sommet sont égaux : l''angle opposé au 47° mesure aussi 47°. Les deux autres angles sont supplémentaires du premier (adjacents sur une droite) : 180° − 47° = 133° chacun. Les quatre angles sont donc : 47°, 133°, 47°, 133°. Vérification : 47 + 133 + 47 + 133 = 360° (somme des angles autour d''un point). Les propriétés utilisées ici sont : (1) les angles opposés par le sommet sont égaux, (2) deux angles adjacents formés par deux droites sécantes sont supplémentaires.',
  'Calculer le complément (90° − 47° = 43°) au lieu du supplément (180° − 47° = 133°). L''élève confond complémentaire et supplémentaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Angle extérieur d'un triangle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Avance',
  'vrai_faux',
  'Un angle extérieur d''un triangle est toujours égal à la somme des deux angles intérieurs non adjacents.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Soit un triangle ABC. L''angle extérieur en C (adjacent à l''angle intérieur C) est le supplément de l''angle C : il vaut 180° − C. Or la somme des angles du triangle donne A + B + C = 180°, donc A + B = 180° − C. L''angle extérieur en C vaut donc A + B, c''est-à-dire la somme des deux angles intérieurs non adjacents. Ce résultat est très utile pour les calculs d''angles. Par exemple, si A = 50° et B = 70°, l''angle extérieur en C = 50° + 70° = 120°, et l''angle intérieur en C = 180° − 120° = 60°.',
  'Croire que l''angle extérieur est le supplément d''un seul angle intérieur non adjacent, et non la somme des deux. L''élève confond la propriété avec celle des angles supplémentaires adjacents.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Angle au centre et arc intercepté
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0100000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_angles_mesures_proprietes',
  'Angles — Mesures et propriétés',
  'Avance',
  'reponse_courte',
  'Dans un cercle, un angle inscrit mesure 35°. Quelle est la mesure de l''angle au centre qui intercepte le même arc ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["70°","70","70 °","70 degrés"]}'::jsonb,
  'L''angle inscrit est toujours égal à la moitié de l''angle au centre qui intercepte le même arc. Réciproquement, l''angle au centre est le double de l''angle inscrit. Ici, l''angle inscrit mesure 35°, donc l''angle au centre = 2 × 35° = 70°. Vérification : l''angle inscrit = 70° / 2 = 35° ✓. Cette relation fondamentale entre angle inscrit et angle au centre est essentielle pour résoudre les problèmes de géométrie du cercle au CRPE.',
  'Diviser l''angle inscrit par 2 au lieu de le multiplier par 2. L''élève inverse la relation : c''est l''angle inscrit qui est la moitié de l''angle au centre, pas l''inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 4. ANGLES DANS LES POLYGONES (f9100000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — reponse_courte — Angle intérieur d'un polygone régulier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_angles_polygones',
  'Angles dans les polygones — Calculs',
  'Intermediaire',
  'reponse_courte',
  'Quelle est la mesure de chaque angle intérieur d''un décagone régulier (polygone régulier à 10 côtés) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["144°","144","144 °","144 degrés"]}'::jsonb,
  'Pour un polygone régulier à n côtés, chaque angle intérieur mesure (n − 2) × 180° / n. Pour le décagone (n = 10) : (10 − 2) × 180° / 10 = 8 × 180° / 10 = 1 440° / 10 = 144°. On peut aussi utiliser les angles extérieurs : chaque angle extérieur = 360° / 10 = 36°, et l''angle intérieur = 180° − 36° = 144°. Les deux méthodes donnent le même résultat.',
  'Utiliser la formule (n − 2) × 180° sans diviser par n, ce qui donne la somme totale (1 440°) au lieu de l''angle individuel (144°).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Nombre de côtés à partir de l'angle intérieur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_angles_polygones',
  'Angles dans les polygones — Calculs',
  'Avance',
  'qcm',
  'Un polygone régulier a un angle intérieur de 150°. Combien de côtés possède-t-il ?',
  NULL,
  '[{"id":"a","label":"10 côtés"},{"id":"b","label":"12 côtés"},{"id":"c","label":"15 côtés"},{"id":"d","label":"18 côtés"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''angle extérieur = 180° − 150° = 30°. Or, pour un polygone régulier, chaque angle extérieur = 360° / n. Donc n = 360° / 30° = 12. Le polygone est un dodécagone régulier (12 côtés). Vérification avec la formule de l''angle intérieur : (12 − 2) × 180° / 12 = 10 × 180° / 12 = 1 800° / 12 = 150° ✓. La méthode par l''angle extérieur est souvent plus rapide : angle extérieur = 180° − angle intérieur, puis n = 360° / angle extérieur.',
  'Résoudre directement (n − 2) × 180 / n = 150 sans simplifier et se tromper dans l''algèbre. La méthode par l''angle extérieur (360° / (180° − 150°) = 12) est plus sûre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Somme des angles extérieurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9100000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_angles_polygones',
  'Angles dans les polygones — Calculs',
  'Intermediaire',
  'vrai_faux',
  'La somme des angles intérieurs d''un polygone convexe à 9 côtés (ennéagone) vaut 1 260°.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La somme des angles intérieurs d''un polygone à n côtés est (n − 2) × 180°. Pour un ennéagone (n = 9) : (9 − 2) × 180° = 7 × 180° = 1 260°. Rappel des sommes pour les polygones courants : triangle (180°), quadrilatère (360°), pentagone (540°), hexagone (720°), heptagone (900°), octogone (1 080°), ennéagone (1 260°), décagone (1 440°).',
  'Erreur de calcul sur (n − 2) : utiliser n − 1 = 8 au lieu de n − 2 = 7, ce qui donnerait 8 × 180° = 1 440° (faux, c''est la somme pour le décagone).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 5. CERCLES ET DISQUES (c0130000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — qcm — Aire d'un secteur circulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'qcm',
  'Un secteur circulaire a un rayon de 12 cm et un angle au centre de 90°. Quelle est son aire ? (Prendre π ≈ 3,14.)',
  NULL,
  '[{"id":"a","label":"113,04 cm²"},{"id":"b","label":"452,16 cm²"},{"id":"c","label":"56,52 cm²"},{"id":"d","label":"37,68 cm²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Un secteur de 90° représente 90/360 = 1/4 du disque complet. Aire du disque complet = πr² = 3,14 × 12² = 3,14 × 144 = 452,16 cm². Aire du secteur = 452,16 / 4 = 113,04 cm². Formule générale : aire du secteur = (angle / 360) × πr². Ici : (90 / 360) × 3,14 × 144 = 0,25 × 452,16 = 113,04 cm². Le distracteur B correspond à l''aire totale du disque (oubli de la fraction 1/4).',
  'Oublier de prendre la fraction correspondant à l''angle et calculer l''aire du disque entier au lieu du secteur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Rayon à partir du périmètre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Avance',
  'reponse_courte',
  'Un cercle a un périmètre de 31,4 cm. Quel est son rayon ? (Prendre π ≈ 3,14. Répondre en cm.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5 cm","5","5cm","5,0","5,0 cm"]}'::jsonb,
  'Le périmètre d''un cercle est P = 2πr. Pour trouver le rayon, on isole r : r = P / (2π). Ici : r = 31,4 / (2 × 3,14) = 31,4 / 6,28 = 5 cm. Vérification : 2 × 3,14 × 5 = 31,4 cm ✓. Cette opération inverse (trouver le rayon à partir du périmètre) est un classique du CRPE qui teste la capacité à manipuler les formules dans les deux sens.',
  'Diviser par π au lieu de 2π : 31,4 / 3,14 = 10, ce qui donne le diamètre et non le rayon. Ou oublier de diviser et confondre périmètre et rayon.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Corde et diamètre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0130000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_cercles_disques',
  'Cercles et disques — Propriétés et calculs',
  'Intermediaire',
  'vrai_faux',
  'Le diamètre d''un cercle est la plus longue corde que l''on puisse tracer dans ce cercle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Le diamètre est un segment qui relie deux points du cercle en passant par le centre. C''est un cas particulier de corde (segment reliant deux points du cercle), et c''est la plus longue de toutes les cordes. On peut le démontrer : pour toute corde [AB] ne passant pas par le centre O, le triangle OAB a comme côtés OA = OB = r (rayons) et AB < OA + OB = 2r = diamètre (inégalité triangulaire stricte). Donc toute corde est strictement plus courte que le diamètre, sauf le diamètre lui-même.',
  'Confondre corde et arc. Une corde est un segment rectiligne reliant deux points du cercle. Le diamètre est bien la corde maximale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 6. CHASSE AUX ERREURS — GÉOMÉTRIE (b0040000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — vrai_faux — Erreur sur la symétrie du losange
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'vrai_faux',
  'Emma affirme : « Les diagonales d''un losange sont de même longueur. » Cette affirmation est-elle vraie ou fausse ?',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est FAUX. Les diagonales d''un losange sont perpendiculaires et se coupent en leur milieu, mais elles ne sont PAS nécessairement de même longueur. C''est le rectangle qui possède des diagonales de même longueur. Le seul quadrilatère dont les diagonales sont à la fois perpendiculaires ET de même longueur est le carré (qui est à la fois losange et rectangle). Emma confond les propriétés du losange avec celles du rectangle. Propriétés du losange : 4 côtés égaux, diagonales perpendiculaires, diagonales qui se coupent en leur milieu. Propriétés du rectangle : 4 angles droits, diagonales de même longueur, diagonales qui se coupent en leur milieu.',
  'Confondre les propriétés des diagonales du losange (perpendiculaires) avec celles du rectangle (de même longueur). L''élève ne distingue pas les deux types de quadrilatères particuliers.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Erreur sur l'aire du triangle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Intermediaire',
  'qcm',
  'Emma calcule l''aire d''un triangle de base 10 cm et de hauteur 6 cm. Elle écrit : « Aire = 10 × 6 = 60 cm². » Quelle erreur commet-elle ?',
  NULL,
  '[{"id":"a","label":"Elle a oublié de diviser par 2 : l''aire d''un triangle est (base × hauteur) / 2 = 30 cm²"},{"id":"b","label":"Elle aurait dû additionner la base et la hauteur : 10 + 6 = 16 cm²"},{"id":"c","label":"Elle a utilisé la mauvaise unité : le résultat devrait être en cm et non en cm²"},{"id":"d","label":"Le calcul est correct : l''aire d''un triangle est bien base × hauteur"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Emma a calculé base × hauteur = 60 cm², mais l''aire d''un triangle est (base × hauteur) / 2. En oubliant de diviser par 2, elle obtient l''aire du rectangle ayant la même base et la même hauteur. L''aire correcte est : (10 × 6) / 2 = 30 cm². On peut visualiser cela : un triangle est la moitié d''un parallélogramme (ou d''un rectangle dans le cas d''un triangle rectangle). C''est pourquoi la formule contient le facteur 1/2. Cette erreur d''oubli du facteur 1/2 est extrêmement fréquente chez les élèves et constitue un classique de la didactique de la géométrie au CRPE.',
  'Oublier le facteur 1/2 dans la formule de l''aire du triangle. L''élève applique la formule du rectangle (L × l) au lieu de celle du triangle (b × h / 2).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Erreur sur la réciproque de Pythagore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0040000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_chasse_erreurs_geometrie',
  'Chasse aux erreurs — Géométrie',
  'Avance',
  'reponse_courte',
  'Emma dit : « Un triangle de côtés 5 cm, 12 cm et 13 cm est rectangle car 5² + 12² = 13². » Elle applique ensuite le même raisonnement à un triangle de côtés 7 cm, 24 cm et 25 cm et affirme qu''il est rectangle. Vérifiez : quel est le résultat de 7² + 24² ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["625","625 cm²","625cm²"]}'::jsonb,
  'Calculons : 7² + 24² = 49 + 576 = 625. Et 25² = 625. Donc 7² + 24² = 25² ✓. Emma a raison cette fois ! Le triangle de côtés 7, 24 et 25 est bien rectangle (c''est un triplet pythagoricien). Le raisonnement d''Emma est correct : c''est la réciproque du théorème de Pythagore. Si le carré du plus grand côté est égal à la somme des carrés des deux autres, alors le triangle est rectangle. Triplets pythagoriciens courants à connaître : (3, 4, 5), (5, 12, 13), (7, 24, 25), (8, 15, 17). Tout multiple d''un triplet est aussi un triplet : (6, 8, 10) = 2 × (3, 4, 5).',
  'Faire une erreur de calcul sur 24² : écrire 24² = 486 au lieu de 576. Il est utile de vérifier : 24² = (25 − 1)² = 625 − 50 + 1 = 576, ou 24 × 24 = 24 × 20 + 24 × 4 = 480 + 96 = 576.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 7. DROITES PARALLÈLES ET PERPENDICULAIRES (f9010000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — qcm — Propriété de la perpendiculaire commune
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Intermediaire',
  'qcm',
  'Soit trois droites (d₁), (d₂) et (d₃) dans le plan. On sait que (d₁) // (d₂) et que (d₃) ⊥ (d₁). Que peut-on affirmer sur (d₃) par rapport à (d₂) ?',
  NULL,
  '[{"id":"a","label":"(d₃) est parallèle à (d₂)"},{"id":"b","label":"(d₃) est perpendiculaire à (d₂)"},{"id":"c","label":"(d₃) est sécante à (d₂) sans être perpendiculaire"},{"id":"d","label":"On ne peut rien conclure"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Si (d₁) // (d₂) et (d₃) ⊥ (d₁), alors (d₃) ⊥ (d₂). C''est la propriété : « si une droite est perpendiculaire à l''une de deux droites parallèles, alors elle est perpendiculaire à l''autre. » Justification : (d₃) forme un angle de 90° avec (d₁). Les angles correspondants formés par (d₃) avec (d₁) et (d₂) sont égaux (car (d₁) // (d₂)). Donc (d₃) forme aussi un angle de 90° avec (d₂), ce qui signifie (d₃) ⊥ (d₂). Cette propriété est fondamentale et très utilisée au CRPE pour les démonstrations géométriques.',
  'Répondre que (d₃) est parallèle à (d₂), en confondant les propriétés de transitivité du parallélisme et de la perpendicularité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Unicité de la perpendiculaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Intermediaire',
  'vrai_faux',
  'Par un point extérieur à une droite, on peut tracer une infinité de droites parallèles à cette droite.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Par un point extérieur à une droite, il passe exactement UNE SEULE droite parallèle à cette droite. C''est l''axiome d''Euclide (ou postulat des parallèles), l''un des fondements de la géométrie euclidienne. De même, par un point extérieur à une droite, il passe une seule droite perpendiculaire à cette droite. Ces deux unicités (parallèle unique et perpendiculaire unique par un point) sont des propriétés fondamentales à connaître pour le CRPE.',
  'Confondre « il existe au moins une droite parallèle » (vrai) avec « il existe une infinité de droites parallèles » (faux). L''unicité de la parallèle est un axiome fondamental de la géométrie euclidienne.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Nombre d'angles droits
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9010000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_droites_paralleles_perpendiculaires',
  'Droites parallèles et perpendiculaires — Propriétés',
  'Intermediaire',
  'reponse_courte',
  'Deux droites perpendiculaires se coupent en un point O et forment quatre angles. Combien de ces angles sont des angles droits ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4","quatre","les 4","les quatre"]}'::jsonb,
  'Deux droites perpendiculaires forment 4 angles droits (4 × 90° = 360°). En effet, la perpendicularité signifie que les droites forment un angle de 90°. Les quatre angles formés au point d''intersection sont : l''angle de 90°, son opposé par le sommet (aussi 90°), et les deux angles adjacents (supplémentaires de 90°, donc 180° − 90° = 90° chacun). Tous les quatre mesurent 90°. On peut retenir : deux droites sécantes forment 2 paires d''angles opposés par le sommet. Si un angle vaut 90°, les quatre valent 90°.',
  'Répondre 2 en pensant que seuls deux angles opposés par le sommet sont droits. En réalité, si un angle est droit, son supplémentaire est aussi 180° − 90° = 90°.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 8. ÉQUATIONS DE DROITES ET REPÈRES (b02c0000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — reponse_courte — Ordonnée à l'origine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_equations_droites',
  'Équations de droites et repères',
  'Intermediaire',
  'reponse_courte',
  'Déterminer l''équation réduite de la droite passant par les points A(2, 3) et B(6, 11). Donner l''ordonnée à l''origine (la valeur de p dans y = mx + p).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["-1","−1","- 1"]}'::jsonb,
  'Étape 1 : calculer le coefficient directeur m = (yB − yA) / (xB − xA) = (11 − 3) / (6 − 2) = 8 / 4 = 2. Étape 2 : utiliser un point pour trouver p. Avec A(2, 3) : 3 = 2 × 2 + p, donc 3 = 4 + p, d''où p = −1. L''équation de la droite est y = 2x − 1. Vérification avec B(6, 11) : 2 × 6 − 1 = 12 − 1 = 11 ✓. L''ordonnée à l''origine est −1, ce qui signifie que la droite coupe l''axe des ordonnées au point (0, −1).',
  'Confondre l''ordonnée à l''origine avec l''ordonnée d''un point de la droite. L''ordonnée à l''origine p est la valeur de y quand x = 0, pas la valeur de y pour un point quelconque.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Droites perpendiculaires et coefficients directeurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_equations_droites',
  'Équations de droites et repères',
  'Avance',
  'vrai_faux',
  'Les droites d''équations y = 4x − 3 et y = −0,25x + 1 sont perpendiculaires.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Deux droites sont perpendiculaires si et seulement si le produit de leurs coefficients directeurs vaut −1 : m₁ × m₂ = −1. Ici m₁ = 4 et m₂ = −0,25 = −1/4. Produit : 4 × (−1/4) = −1 ✓. Les droites sont bien perpendiculaires. Pour trouver la pente d''une droite perpendiculaire à une droite de pente m, on calcule −1/m. Pour m = 4 : la pente perpendiculaire est −1/4 = −0,25.',
  'Vérifier si m₁ + m₂ = 0 au lieu de m₁ × m₂ = −1. La condition m₁ + m₂ = 0 signifie que les pentes sont opposées (symétriques par rapport à l''axe horizontal), ce qui n''a rien à voir avec la perpendicularité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — qcm — Droite horizontale et droite verticale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02c0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_equations_droites',
  'Équations de droites et repères',
  'Intermediaire',
  'qcm',
  'Quelle est l''équation de la droite horizontale passant par le point A(3, −2) ?',
  NULL,
  '[{"id":"a","label":"y = 3"},{"id":"b","label":"x = 3"},{"id":"c","label":"y = −2"},{"id":"d","label":"x = −2"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Une droite horizontale a une équation de la forme y = k, où k est l''ordonnée constante de tous les points de la droite. Puisque la droite passe par A(3, −2), l''ordonnée est −2, donc l''équation est y = −2. Le coefficient directeur d''une droite horizontale est 0 (la droite « ne monte ni ne descend »). Attention : x = 3 est l''équation d''une droite VERTICALE passant par A, et non horizontale. Les droites verticales n''ont pas de coefficient directeur (pente « infinie »).',
  'Confondre droite horizontale (y = constante) et droite verticale (x = constante). Pour une droite horizontale passant par (a, b), l''équation est y = b, pas x = a.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 9. FIGURES COMPLEXES — CALCULS D'AIRES (c00a0000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — reponse_courte — Aire d'une figure en T
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées',
  'Avance',
  'reponse_courte',
  'Une figure en forme de T est composée d''un rectangle horizontal de 16 cm × 4 cm et d''un rectangle vertical de 4 cm × 10 cm (le rectangle vertical est centré sous le rectangle horizontal). Quelle est l''aire totale de cette figure en cm² ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["104","104 cm²","104cm²"]}'::jsonb,
  'La figure en T est composée de deux rectangles qui ne se chevauchent pas. Aire du rectangle horizontal : 16 × 4 = 64 cm². Aire du rectangle vertical : 4 × 10 = 40 cm². Aire totale : 64 + 40 = 104 cm². La stratégie de décomposition additive consiste à identifier des formes simples disjointes dont on connaît les formules d''aire, puis à additionner. Il est essentiel de vérifier que les rectangles ne se chevauchent pas pour éviter de compter deux fois une zone.',
  'Compter deux fois la zone de chevauchement entre les deux rectangles (si les dimensions incluent cette zone). Ici, les dimensions sont données pour des rectangles disjoints, mais dans d''autres configurations, il faut soustraire la zone commune.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Aire restante après découpe circulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées',
  'Avance',
  'qcm',
  'Dans un carré de côté 10 cm, on découpe un disque de rayon 4 cm. Quelle est l''aire de la partie restante du carré ? (Prendre π ≈ 3,14.)',
  NULL,
  '[{"id":"a","label":"49,76 cm²"},{"id":"b","label":"68,56 cm²"},{"id":"c","label":"87,44 cm²"},{"id":"d","label":"100 cm²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Aire du carré : 10² = 100 cm². Aire du disque découpé : π × 4² = 3,14 × 16 = 50,24 cm². Aire restante : 100 − 50,24 = 49,76 cm². La méthode soustractive consiste à retirer l''aire de la figure découpée de l''aire de la figure complète. Attention : le rayon du disque (4 cm) doit être inférieur à la moitié du côté du carré (5 cm) pour que le disque soit entièrement contenu dans le carré, ce qui est bien le cas ici.',
  'Utiliser le diamètre (8 cm) au lieu du rayon (4 cm) dans le calcul de l''aire du disque : π × 8² = 200,96 cm², ce qui donnerait un résultat négatif (impossible). Toujours vérifier la cohérence du résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Aire d'un parallélogramme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00a0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_figures_complexes_aires',
  'Figures complexes — Calculs d''aires composées',
  'Intermediaire',
  'vrai_faux',
  'Un parallélogramme de base 12 cm et de côté oblique 8 cm a une aire de 96 cm².',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''aire d''un parallélogramme est base × HAUTEUR, et non base × côté oblique. La hauteur est la distance perpendiculaire entre les deux côtés parallèles (la base et le côté opposé). Le côté oblique n''est pas la hauteur, sauf dans le cas particulier du rectangle. Emma a calculé 12 × 8 = 96 cm² en utilisant le côté oblique au lieu de la hauteur. Sans connaître la hauteur, on ne peut pas calculer l''aire. Si par exemple la hauteur est de 6 cm, l''aire serait 12 × 6 = 72 cm². Cette confusion entre côté et hauteur est un piège classique du CRPE.',
  'Utiliser le côté oblique au lieu de la hauteur dans la formule de l''aire du parallélogramme. La hauteur est TOUJOURS perpendiculaire à la base, ce qui n''est le cas du côté que pour un rectangle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################################
-- 10. GÉOMÉTRIE — REPÉRAGE ET COORDONNÉES (b0120000) — Q8, Q9, Q10
-- ############################################################################

-- Q8 — qcm — Vecteur et translation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées',
  'Intermediaire',
  'qcm',
  'Le point A(3, 5) est translaté par le vecteur u⃗(−2, 4). Quelles sont les coordonnées de l''image A'' ?',
  NULL,
  '[{"id":"a","label":"(1, 9)"},{"id":"b","label":"(5, 1)"},{"id":"c","label":"(−2, 4)"},{"id":"d","label":"(1, 1)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''image d''un point par une translation de vecteur u⃗(a, b) s''obtient en ajoutant les coordonnées du vecteur à celles du point. A''(xA + a, yA + b) = A''(3 + (−2), 5 + 4) = A''(1, 9). Vérification : le vecteur AA'' = (1 − 3, 9 − 5) = (−2, 4) = u⃗ ✓. La translation conserve les distances et les angles : elle « déplace » la figure sans la déformer.',
  'Soustraire le vecteur au lieu de l''ajouter : A''(3 − (−2), 5 − 4) = (5, 1). L''élève confond translation (addition) et transformation inverse (soustraction).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Distance entre deux points
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées',
  'Avance',
  'reponse_courte',
  'Calculer la distance entre les points P(−3, 1) et Q(5, −5).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10","10 unités","10 u"]}'::jsonb,
  'On applique la formule de la distance : PQ = √((xQ − xP)² + (yQ − yP)²) = √((5 − (−3))² + (−5 − 1)²) = √((8)² + (−6)²) = √(64 + 36) = √100 = 10. Attention aux signes : 5 − (−3) = 5 + 3 = 8 (et non 5 − 3 = 2). Les coordonnées négatives imposent une rigueur dans le calcul des différences. On reconnaît ici le triplet pythagoricien (6, 8, 10) = 2 × (3, 4, 5).',
  'Se tromper dans le calcul avec les nombres négatifs : écrire 5 − (−3) = 2 au lieu de 8, ce qui donnerait √(4 + 36) = √40 ≈ 6,32 (faux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Alignement de trois points
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0120000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_geometrie_coordonnees',
  'Géométrie — Repérage et coordonnées',
  'Avance',
  'vrai_faux',
  'Les points A(1, 2), B(3, 6) et C(5, 10) sont alignés.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Trois points sont alignés si les vecteurs AB et AC sont colinéaires. AB = (3 − 1, 6 − 2) = (2, 4). AC = (5 − 1, 10 − 2) = (4, 8). Deux vecteurs (a, b) et (c, d) sont colinéaires si ad − bc = 0. Ici : 2 × 8 − 4 × 4 = 16 − 16 = 0 ✓. Les vecteurs sont colinéaires, donc A, B et C sont alignés. On peut aussi vérifier avec les coefficients directeurs : pente de AB = (6 − 2)/(3 − 1) = 4/2 = 2. Pente de AC = (10 − 2)/(5 − 1) = 8/4 = 2. Les pentes sont égales, confirmant l''alignement. La droite passant par ces points a pour équation y = 2x.',
  'Calculer les distances AB, BC et AC et vérifier si AB + BC = AC (méthode valide mais plus longue). La méthode par les vecteurs colinéaires (déterminant nul) est plus efficace.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
