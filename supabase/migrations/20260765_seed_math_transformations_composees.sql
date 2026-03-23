-- ============================================================
-- Série : Transformations composées — Composition et effets (Géométrie, Difficile, Premium)
-- 7 exercices : 2 amorce · 3 consolidation · 2 approfondissement
-- ============================================================

-- Q1 — AMORCE — QCM — Composition de deux translations
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'qcm',
  'On applique successivement la translation de vecteur →u(3 ; 1) puis la translation de vecteur →v(−1 ; 4) à un point A. Quelle transformation unique produit le même résultat ?',
  NULL,
  '[{"id":"a","label":"La translation de vecteur (2 ; 5)"},{"id":"b","label":"La translation de vecteur (4 ; 5)"},{"id":"c","label":"La rotation de centre A et d''angle 90°"},{"id":"d","label":"La translation de vecteur (−3 ; 3)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La composée de deux translations est toujours une translation dont le vecteur est la somme des deux vecteurs. Ici : →u + →v = (3 + (−1) ; 1 + 4) = (2 ; 5). La réponse B additionne les valeurs absolues des abscisses (3 + 1 = 4) au lieu de tenir compte du signe négatif. La réponse C est incorrecte : la composée de deux translations ne peut jamais donner une rotation. La réponse D soustrait au lieu d''additionner.',
  'L''élève additionne les valeurs absolues sans tenir compte des signes : il calcule (3 + 1) au lieu de (3 + (−1)) = 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Composition de deux symétries centrales
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'vrai_faux',
  'Vrai ou faux : la composée de deux symétries centrales de centres distincts A et B est une translation de vecteur 2→AB.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Soit sA la symétrie centrale de centre A et sB la symétrie centrale de centre B. Pour tout point M, si M'' = sA(M), alors →MM'' = 2→MA (car A est le milieu de [MM'']). Si M'''' = sB(M''), alors →M''M'''' = 2→M''B. On obtient →MM'''' = →MM'' + →M''M'''' = 2→MA + 2→M''B. Après simplification, →MM'''' = 2→AB. La composée est donc la translation de vecteur 2→AB, indépendante du point M choisi.',
  'L''élève pense que la composée de deux symétries centrales est encore une symétrie centrale, ou que le vecteur est →AB et non 2→AB.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Composition rotation + translation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'qcm',
  'On applique d''abord une rotation de centre O et d''angle 90° dans le sens direct, puis une translation de vecteur →u(2 ; 0) au point A(1 ; 0). Quelles sont les coordonnées de l''image finale A'''' ?',
  NULL,
  '[{"id":"a","label":"A''''(2 ; 1)"},{"id":"b","label":"A''''(0 ; 3)"},{"id":"c","label":"A''''(3 ; 1)"},{"id":"d","label":"A''''(−1 ; 2)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Étape 1 : la rotation de centre O(0 ; 0) et d''angle 90° dans le sens direct transforme A(1 ; 0) en A''(0 ; 1). En effet, la rotation de 90° envoie (x ; y) sur (−y ; x), donc (1 ; 0) devient (0 ; 1). Étape 2 : la translation de vecteur →u(2 ; 0) envoie A''(0 ; 1) sur A''''(0 + 2 ; 1 + 0) = A''''(2 ; 1). Attention : l''ordre des transformations est crucial. Si on inversait l''ordre, le résultat serait différent.',
  'L''élève applique les transformations dans le mauvais ordre, ou se trompe dans la formule de la rotation de 90° (confondant (−y ; x) avec (y ; −x)).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Identifier la transformation résultante
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'reponse_courte',
  'On compose deux rotations de même centre O : une rotation de 120° suivie d''une rotation de 240°. Quel est l''angle de la rotation résultante ? Donnez votre réponse en degrés (entre 0° et 360°).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["360","0","360°","0°"]}'::jsonb,
  'La composée de deux rotations de même centre est une rotation de même centre dont l''angle est la somme des angles. Ici : 120° + 240° = 360°. Or une rotation de 360° est l''identité (chaque point reste à sa place). Cela signifie que ces deux rotations sont réciproques l''une de l''autre : la rotation de 240° « annule » la rotation de 120°. On peut aussi noter que 240° = −120° (modulo 360°).',
  'L''élève ne reconnaît pas qu''une rotation de 360° est l''identité et cherche un angle différent de 0° comme résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Points invariants
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'vrai_faux',
  'Vrai ou faux : une translation (différente de l''identité) possède au moins un point invariant.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Une translation de vecteur →v ≠ →0 déplace tous les points de la même manière : chaque point M est envoyé sur M'' tel que →MM'' = →v. Aucun point ne reste fixe, car cela nécessiterait →v = →0, ce qui contredirait l''hypothèse. En revanche, une rotation (autre que l''identité) possède exactement un point invariant : son centre. Une symétrie axiale fixe tous les points de l''axe. L''existence de points invariants est un critère utile pour distinguer les transformations.',
  'L''élève confond translation et rotation : il pense que le « centre » de la translation est un point fixe, alors qu''une translation n''a pas de centre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Frise et transformation : motif répétitif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'qcm',
  'Une frise décorative est obtenue en répétant un motif de base par une translation de vecteur →u, puis chaque motif est aussi transformé par une symétrie axiale d''axe horizontal. Quel type de frise obtient-on ?',
  'Le motif de base est un triangle isocèle pointant vers le haut.',
  '[{"id":"a","label":"Une frise avec des triangles alternativement vers le haut et vers le bas"},{"id":"b","label":"Une frise avec tous les triangles vers le haut"},{"id":"c","label":"Une frise avec des triangles pivotés de 90°"},{"id":"d","label":"Une frise avec des triangles de tailles croissantes"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La translation de vecteur →u décale le motif horizontalement, créant une répétition régulière. La symétrie axiale d''axe horizontal retourne le triangle : un triangle pointant vers le haut devient un triangle pointant vers le bas. En alternant translation et symétrie, on obtient une frise où les triangles pointent alternativement vers le haut et vers le bas. C''est le type de frise « saut » (translation + réflexion transversale), l''un des sept types de frises possibles en mathématiques.',
  'L''élève pense que la symétrie axiale ne change pas l''orientation du motif, ou confond symétrie axiale et translation.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Pavage et transformations
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'reponse_courte',
  'Un pavage régulier est constitué d''hexagones réguliers. Autour de chaque sommet, combien d''hexagones se rencontrent ? Ce nombre correspond à l''ordre de la rotation qui envoie un hexagone sur son voisin autour de ce sommet.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","trois"]}'::jsonb,
  'Dans un pavage régulier d''hexagones, chaque angle intérieur d''un hexagone régulier mesure 120°. Autour d''un sommet, la somme des angles doit faire 360°. On a donc 360° / 120° = 3 hexagones qui se rencontrent en chaque sommet. La rotation qui envoie un hexagone sur le suivant autour de ce sommet est une rotation de 360° / 3 = 120°, d''ordre 3. Ce pavage est le seul pavage régulier par hexagones, avec les pavages par carrés (4 autour d''un sommet) et par triangles équilatéraux (6 autour d''un sommet).',
  'L''élève confond le nombre de côtés de l''hexagone (6) avec le nombre d''hexagones autour d''un sommet (3), ou pense que l''angle intérieur est 60° au lieu de 120°.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
