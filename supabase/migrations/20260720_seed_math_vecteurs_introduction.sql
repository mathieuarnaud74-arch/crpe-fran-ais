-- ============================================================
-- Série : Vecteurs — Introduction et opérations (Géométrie, Difficile, Premium)
-- 7 exercices : 2 amorce · 3 consolidation · 2 approfondissement
-- ============================================================

-- Q1 — AMORCE — QCM — Définition d''un vecteur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations', 'Difficile', 'qcm',
  'Un vecteur est caractérisé par trois éléments. Lesquels ?',
  NULL,
  '[{"id":"a","label":"Direction, sens et norme"},{"id":"b","label":"Origine, extrémité et longueur"},{"id":"c","label":"Abscisse, ordonnée et cote"},{"id":"d","label":"Direction, angle et position"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Un vecteur est défini par sa direction (la droite sur laquelle il se trouve, ou toute droite parallèle), son sens (parmi les deux sens possibles sur cette direction) et sa norme (sa longueur). Un vecteur n''est pas attaché à un point d''origine particulier : deux vecteurs de même direction, même sens et même norme sont égaux, quelle que soit leur position dans le plan. La réponse B décrit un bipoint (couple de points), pas un vecteur libre.',
  'Confondre un vecteur avec un segment orienté : l''élève pense qu''un vecteur a une position fixe dans le plan.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Vecteurs égaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations', 'Difficile', 'vrai_faux',
  'Vrai ou faux : si ABCD est un parallélogramme, alors le vecteur AB est égal au vecteur DC.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Dans un parallélogramme ABCD, les côtés [AB] et [DC] sont parallèles et de même longueur. De plus, le sens de A vers B est le même que le sens de D vers C (parcours dans le même sens du parallélogramme). Les vecteurs AB et DC ont donc la même direction, le même sens et la même norme : ils sont égaux. C''est d''ailleurs une propriété caractéristique du parallélogramme : ABCD est un parallélogramme si et seulement si vecteur(AB) = vecteur(DC).',
  'Écrire vecteur(AB) = vecteur(CD) au lieu de vecteur(AB) = vecteur(DC) : attention à l''ordre des lettres qui détermine le sens.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Vecteurs opposés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations', 'Difficile', 'qcm',
  'Si le vecteur u a pour coordonnées (3 ; −2), quelles sont les coordonnées du vecteur opposé −u ?',
  NULL,
  '[{"id":"a","label":"(−3 ; 2)"},{"id":"b","label":"(−3 ; −2)"},{"id":"c","label":"(3 ; 2)"},{"id":"d","label":"(2 ; −3)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le vecteur opposé de u = (3 ; −2) est −u = (−3 ; 2). On change le signe de chaque coordonnée. Le vecteur opposé a la même direction et la même norme que u, mais un sens contraire. La réponse B ne change le signe que de la première coordonnée. La réponse C ne change le signe que de la deuxième. La réponse D permute les coordonnées.',
  'Ne changer le signe que d''une seule coordonnée au lieu des deux : l''élève écrit (−3 ; −2) ou (3 ; 2) au lieu de (−3 ; 2).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Addition de vecteurs (coordonnées)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations', 'Difficile', 'reponse_courte',
  'Soit u(4 ; −1) et v(−2 ; 5). Donnez les coordonnées du vecteur u + v sous la forme (x ; y).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(2 ; 4)","(2;4)","(2 ;4)","(2; 4)"]}'::jsonb,
  'Pour additionner deux vecteurs en coordonnées, on additionne les coordonnées correspondantes. u + v = (4 + (−2) ; −1 + 5) = (2 ; 4). Géométriquement, cela correspond à la règle du parallélogramme : on place les deux vecteurs au même point d''origine, et le vecteur somme est la diagonale du parallélogramme construit sur les deux vecteurs.',
  'Soustraire les coordonnées au lieu de les additionner, ou se tromper dans les signes avec les nombres négatifs.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — QCM — Multiplication par un scalaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations', 'Difficile', 'qcm',
  'Si le vecteur u a pour coordonnées (−3 ; 2), quelles sont les coordonnées du vecteur 4u ?',
  NULL,
  '[{"id":"a","label":"(−12 ; 8)"},{"id":"b","label":"(1 ; 6)"},{"id":"c","label":"(−12 ; 2)"},{"id":"d","label":"(−7 ; 6)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Multiplier un vecteur par un scalaire k revient à multiplier chaque coordonnée par k. Donc 4u = 4 × (−3 ; 2) = (4 × (−3) ; 4 × 2) = (−12 ; 8). Le vecteur 4u a la même direction que u, le même sens (car 4 > 0), et une norme 4 fois plus grande. La réponse B additionne 4 au lieu de multiplier. La réponse C ne multiplie que la première coordonnée. La réponse D additionne 4 à la deuxième coordonnée et multiplie la première.',
  'Additionner le scalaire aux coordonnées au lieu de multiplier : l''élève calcule (−3 + 4 ; 2 + 4) = (1 ; 6) au lieu de (−12 ; 8).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Vrai/Faux — Translation et vecteur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations', 'Difficile', 'vrai_faux',
  'Vrai ou faux : la translation de vecteur u transforme tout point M en un point M'' tel que le vecteur MM'' est égal au vecteur u.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Par définition, la translation de vecteur u est la transformation qui à tout point M associe le point M'' tel que vecteur(MM'') = u. Cela signifie que chaque point du plan est déplacé de la même manière : même direction, même sens, même distance. La translation est entièrement déterminée par son vecteur. C''est le lien fondamental entre vecteurs et translations : tout vecteur définit une translation et réciproquement.',
  'Confondre translation et symétrie centrale : l''élève pense que M'' est tel que le milieu de [MM''] est un point fixe.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Coordonnées du milieu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations', 'Difficile', 'reponse_courte',
  'A a pour coordonnées (−2 ; 7) et B a pour coordonnées (6 ; 3). Donnez les coordonnées du milieu I de [AB] sous la forme (x ; y).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(2 ; 5)","(2;5)","(2 ;5)","(2; 5)"]}'::jsonb,
  'Les coordonnées du milieu I de [AB] sont : xI = (xA + xB)/2 = (−2 + 6)/2 = 4/2 = 2, et yI = (yA + yB)/2 = (7 + 3)/2 = 10/2 = 5. Donc I(2 ; 5). Cette formule se retrouve avec les vecteurs : I est le milieu de [AB] signifie que vecteur(AI) = vecteur(IB), ce qui donne en coordonnées (xI − xA ; yI − yA) = (xB − xI ; yB − yI), d''où xI = (xA + xB)/2 et yI = (yA + yB)/2.',
  'Soustraire les coordonnées au lieu de les additionner : l''élève calcule (6 − (−2))/2 = 4 au lieu de (6 + (−2))/2 = 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
