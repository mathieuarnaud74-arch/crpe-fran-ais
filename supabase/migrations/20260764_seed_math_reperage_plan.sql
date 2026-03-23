-- ============================================================
-- Série : Repérage dans le plan — Coordonnées cartésiennes (Géométrie, Facile, Free)
-- 7 exercices : 2 amorce · 3 consolidation · 2 approfondissement
-- ============================================================

-- Q1 — AMORCE — QCM — Lire les coordonnées d''un point
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes', 'Facile', 'qcm',
  'Dans un repère orthonormé, un point A est situé 3 unités à droite de l''origine et 2 unités au-dessus. Quelles sont les coordonnées de A ?',
  NULL,
  '[{"id":"a","label":"A(3 ; 2)"},{"id":"b","label":"A(2 ; 3)"},{"id":"c","label":"A(−3 ; 2)"},{"id":"d","label":"A(3 ; −2)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Dans un repère orthonormé, les coordonnées d''un point s''écrivent sous la forme (x ; y), où x est l''abscisse (position horizontale) et y est l''ordonnée (position verticale). Le point A est à 3 unités à droite (abscisse positive : x = 3) et 2 unités au-dessus (ordonnée positive : y = 2). Ses coordonnées sont donc A(3 ; 2). La réponse B inverse abscisse et ordonnée, une erreur fréquente.',
  'Inverser l''abscisse et l''ordonnée : l''élève écrit (2 ; 3) au lieu de (3 ; 2), confondant l''ordre des coordonnées.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Placer un point à partir de ses coordonnées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes', 'Facile', 'vrai_faux',
  'Vrai ou faux : le point B(−4 ; 5) se situe à 4 unités à gauche de l''origine et 5 unités au-dessus.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''abscisse de B est −4, ce qui signifie que B est à 4 unités à gauche de l''axe des ordonnées (vers la gauche car la valeur est négative). L''ordonnée de B est 5, ce qui signifie que B est à 5 unités au-dessus de l''axe des abscisses (vers le haut car la valeur est positive). Le point B se trouve donc dans le deuxième quadrant du repère (abscisse négative, ordonnée positive).',
  'L''élève confond le signe négatif de l''abscisse : il place le point à droite au lieu de à gauche, ou pense que −4 signifie 4 unités en dessous.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Distance entre deux points
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes', 'Facile', 'reponse_courte',
  'Calculez la distance entre les points A(1 ; 2) et B(4 ; 6).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5","5 unités"]}'::jsonb,
  'On applique la formule de la distance entre deux points : AB = √[(xB − xA)² + (yB − yA)²]. Ici : AB = √[(4 − 1)² + (6 − 2)²] = √[3² + 4²] = √[9 + 16] = √25 = 5. On reconnaît le triplet pythagoricien (3, 4, 5). Cette formule est une application directe du théorème de Pythagore dans un repère orthonormé.',
  'L''élève oublie de soustraire les coordonnées et additionne directement : √(4² + 6²) au lieu de √((4−1)² + (6−2)²).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Milieu d''un segment
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes', 'Facile', 'qcm',
  'Quelles sont les coordonnées du milieu M du segment [AB] avec A(−2 ; 3) et B(6 ; 1) ?',
  NULL,
  '[{"id":"a","label":"M(2 ; 2)"},{"id":"b","label":"M(4 ; 4)"},{"id":"c","label":"M(4 ; 2)"},{"id":"d","label":"M(2 ; 1)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les coordonnées du milieu M d''un segment [AB] sont données par la formule : M = ((xA + xB)/2 ; (yA + yB)/2). Ici : xM = (−2 + 6)/2 = 4/2 = 2 et yM = (3 + 1)/2 = 4/2 = 2. Donc M(2 ; 2). La réponse B oublie de diviser par 2 : elle donne directement la somme des coordonnées. La réponse C calcule correctement xM mais se trompe sur yM.',
  'L''élève oublie de diviser par 2 après avoir additionné les coordonnées, donnant (4 ; 4) au lieu de (2 ; 2).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Identifier le quadrant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes', 'Facile', 'vrai_faux',
  'Vrai ou faux : le point C(−3 ; −7) se situe dans le troisième quadrant du repère.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Les quatre quadrants d''un repère sont définis ainsi : 1er quadrant (x > 0, y > 0 — en haut à droite), 2e quadrant (x < 0, y > 0 — en haut à gauche), 3e quadrant (x < 0, y < 0 — en bas à gauche), 4e quadrant (x > 0, y < 0 — en bas à droite). Le point C a une abscisse négative (−3) et une ordonnée négative (−7), il est donc bien dans le troisième quadrant, en bas à gauche du repère.',
  'L''élève ne connaît pas la numérotation conventionnelle des quadrants (sens trigonométrique à partir du quadrant en haut à droite).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Reconnaître une forme à partir de coordonnées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes', 'Facile', 'qcm',
  'On donne les points A(0 ; 0), B(4 ; 0), C(4 ; 3) et D(0 ; 3). Quelle est la nature du quadrilatère ABCD ?',
  NULL,
  '[{"id":"a","label":"Un rectangle"},{"id":"b","label":"Un carré"},{"id":"c","label":"Un losange"},{"id":"d","label":"Un parallélogramme quelconque"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Calculons les longueurs des côtés : AB = 4, BC = 3, CD = 4, DA = 3. Les côtés opposés sont égaux. Vérifions les angles : AB est horizontal, BC est vertical, donc l''angle en B est droit (90°). De même, tous les angles sont droits car les côtés sont parallèles aux axes. ABCD est donc un rectangle. Ce n''est pas un carré car les côtés adjacents ne sont pas égaux (4 ≠ 3). Ce n''est pas un losange car les quatre côtés ne sont pas égaux.',
  'L''élève conclut que c''est un carré sans vérifier que les quatre côtés sont égaux, ou dit « parallélogramme » sans vérifier que les angles sont droits.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Problème concret : coordonnées sur une carte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes', 'Facile', 'reponse_courte',
  'Sur une carte quadrillée, l''école est au point E(2 ; 5) et la mairie au point M(8 ; 5). Chaque unité représente 100 m. Quelle est la distance réelle entre l''école et la mairie, en mètres ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["600","600 m","600 mètres"]}'::jsonb,
  'Les deux points E(2 ; 5) et M(8 ; 5) ont la même ordonnée (y = 5), ils sont donc sur une même droite horizontale. La distance sur la carte est simplement |xM − xE| = |8 − 2| = 6 unités. Comme chaque unité représente 100 m, la distance réelle est 6 × 100 = 600 m. Quand deux points ont la même ordonnée, la formule de distance se simplifie : il suffit de calculer la différence des abscisses en valeur absolue.',
  'L''élève applique la formule complète de distance et se trompe dans le calcul, ou oublie de convertir les unités de la carte en mètres.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
