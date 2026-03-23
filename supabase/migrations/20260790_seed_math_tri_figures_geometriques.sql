-- Migration: 10 exercices interactifs tri_categories — Classer des figures géométriques
-- Série : tri_quadrilateres_proprietes (Maths, géométrie)
-- Exercice type : tri_categories

-- Q1 — Parallélogramme / Non parallélogramme (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Facile',
  'tri_categories',
  'Classez chaque figure selon qu''elle est ou non un parallélogramme.',
  NULL,
  '[{"id":"f1","label":"Rectangle"},{"id":"f2","label":"Trapèze isocèle"},{"id":"f3","label":"Losange"},{"id":"f4","label":"Carré"},{"id":"f5","label":"Trapèze rectangle"},{"id":"f6","label":"Parallélogramme quelconque"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"para","label":"Parallélogramme"},{"id":"non","label":"Non parallélogramme"}],"mapping":{"f1":"para","f2":"non","f3":"para","f4":"para","f5":"non","f6":"para"}}'::jsonb,
  'Le rectangle, le losange, le carré et le parallélogramme quelconque ont tous deux paires de côtés parallèles : ce sont des parallélogrammes. Le trapèze (isocèle ou rectangle) n''a qu''une seule paire de côtés parallèles : ce n''est pas un parallélogramme.',
  'Croire que le trapèze est un parallélogramme parce qu''il a des côtés parallèles. Un parallélogramme exige DEUX paires de côtés parallèles.',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'free',
  true
);

-- Q2 — Classer par nombre d'axes de symétrie (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Facile',
  'tri_categories',
  'Classez chaque quadrilatère selon son nombre d''axes de symétrie.',
  NULL,
  '[{"id":"f1","label":"Carré"},{"id":"f2","label":"Rectangle (non carré)"},{"id":"f3","label":"Losange (non carré)"},{"id":"f4","label":"Parallélogramme quelconque"},{"id":"f5","label":"Trapèze isocèle"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"a4","label":"4 axes"},{"id":"a2","label":"2 axes"},{"id":"a1","label":"1 axe"},{"id":"a0","label":"0 axe"}],"mapping":{"f1":"a4","f2":"a2","f3":"a2","f4":"a0","f5":"a1"}}'::jsonb,
  'Le carré possède 4 axes de symétrie (2 médiatrices des côtés + 2 diagonales). Le rectangle et le losange en ont chacun 2. Le trapèze isocèle en a 1 (la médiatrice des bases). Le parallélogramme quelconque n''a aucun axe de symétrie (mais un centre de symétrie).',
  'Attribuer des axes au parallélogramme quelconque en confondant centre de symétrie et axe de symétrie.',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'free',
  true
);

-- Q3 — Propriétés des diagonales (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Intermediaire',
  'tri_categories',
  'Classez chaque quadrilatère selon que ses diagonales sont perpendiculaires ou non.',
  NULL,
  '[{"id":"f1","label":"Losange"},{"id":"f2","label":"Rectangle"},{"id":"f3","label":"Carré"},{"id":"f4","label":"Parallélogramme quelconque"},{"id":"f5","label":"Trapèze isocèle"},{"id":"f6","label":"Cerf-volant (2 paires de côtés consécutifs égaux)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"perp","label":"Diagonales perpendiculaires"},{"id":"non","label":"Diagonales non perpendiculaires"}],"mapping":{"f1":"perp","f2":"non","f3":"perp","f4":"non","f5":"non","f6":"perp"}}'::jsonb,
  'Le losange et le carré ont des diagonales perpendiculaires (propriété caractéristique du losange, et le carré est un losange particulier). Le cerf-volant a aussi des diagonales perpendiculaires. Le rectangle, le parallélogramme quelconque et le trapèze isocèle n''ont pas de diagonales perpendiculaires.',
  'Penser que le rectangle a des diagonales perpendiculaires. Les diagonales du rectangle sont de même longueur et se coupent en leur milieu, mais elles ne sont pas perpendiculaires (sauf si c''est un carré).',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'free',
  true
);

-- Q4 — Diagonales de même longueur (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Intermediaire',
  'tri_categories',
  'Classez chaque quadrilatère selon que ses diagonales sont de même longueur ou non.',
  NULL,
  '[{"id":"f1","label":"Carré"},{"id":"f2","label":"Losange (non carré)"},{"id":"f3","label":"Rectangle (non carré)"},{"id":"f4","label":"Trapèze isocèle"},{"id":"f5","label":"Parallélogramme quelconque"},{"id":"f6","label":"Trapèze quelconque"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"eg","label":"Diagonales de même longueur"},{"id":"diff","label":"Diagonales de longueurs différentes"}],"mapping":{"f1":"eg","f2":"diff","f3":"eg","f4":"eg","f5":"diff","f6":"diff"}}'::jsonb,
  'Le carré, le rectangle et le trapèze isocèle ont des diagonales de même longueur. Le losange (non carré), le parallélogramme quelconque et le trapèze quelconque ont des diagonales de longueurs différentes. Attention : les diagonales de même longueur caractérisent le rectangle parmi les parallélogrammes.',
  'Croire que le losange a des diagonales de même longueur. Les diagonales du losange sont perpendiculaires mais n''ont pas la même longueur (sauf si c''est un carré).',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'free',
  true
);

-- Q5 — Triangles : classer par type (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Facile',
  'tri_categories',
  'Classez chaque triangle selon le nombre de côtés de même longueur.',
  NULL,
  '[{"id":"t1","label":"Triangle avec côtés 3, 4, 5 cm"},{"id":"t2","label":"Triangle avec côtés 5, 5, 3 cm"},{"id":"t3","label":"Triangle avec côtés 6, 6, 6 cm"},{"id":"t4","label":"Triangle avec côtés 7, 7, 4 cm"},{"id":"t5","label":"Triangle avec côtés 3, 5, 7 cm"},{"id":"t6","label":"Triangle avec côtés 4, 4, 4 cm"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"eq","label":"Équilatéral (3 côtés égaux)"},{"id":"iso","label":"Isocèle (2 côtés égaux)"},{"id":"sc","label":"Scalène (0 côtés égaux)"}],"mapping":{"t1":"sc","t2":"iso","t3":"eq","t4":"iso","t5":"sc","t6":"eq"}}'::jsonb,
  'Un triangle équilatéral a ses 3 côtés de même longueur (6-6-6 et 4-4-4). Un triangle isocèle a exactement 2 côtés égaux (5-5-3 et 7-7-4). Un triangle scalène a 3 côtés de longueurs différentes (3-4-5 et 3-5-7). Rappel : 3-4-5 est un cas particulier de triangle rectangle (triplet pythagoricien).',
  'Oublier qu''un triangle équilatéral est aussi isocèle (au sens large). Ici, on utilise la classification exclusive pour la clarté.',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'free',
  true
);

-- Q6 — Figures : polygone régulier ou non (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Intermediaire',
  'tri_categories',
  'Classez chaque figure selon qu''elle est un polygone régulier ou non.',
  NULL,
  '[{"id":"f1","label":"Carré"},{"id":"f2","label":"Rectangle (non carré)"},{"id":"f3","label":"Triangle équilatéral"},{"id":"f4","label":"Losange (non carré)"},{"id":"f5","label":"Hexagone régulier"},{"id":"f6","label":"Triangle isocèle"},{"id":"f7","label":"Pentagone régulier"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"reg","label":"Polygone régulier"},{"id":"non","label":"Non régulier"}],"mapping":{"f1":"reg","f2":"non","f3":"reg","f4":"non","f5":"reg","f6":"non","f7":"reg"}}'::jsonb,
  'Un polygone régulier a tous ses côtés ET tous ses angles égaux. Le carré (4 côtés égaux, 4 angles droits), le triangle équilatéral (3 côtés, 3 angles de 60°), l''hexagone régulier et le pentagone régulier sont des polygones réguliers. Le rectangle n''est pas régulier (côtés inégaux). Le losange non plus (angles inégaux). Le triangle isocèle a des côtés et angles inégaux.',
  'Croire que le losange est régulier parce qu''il a 4 côtés égaux. Il faut AUSSI que les 4 angles soient égaux (ce qui n''est le cas que du carré).',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'free',
  true
);

-- Q7 — Solides : polyèdre ou non (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Intermediaire',
  'tri_categories',
  'Classez chaque solide selon qu''il est un polyèdre (faces planes) ou un non-polyèdre (au moins une face courbe).',
  NULL,
  '[{"id":"s1","label":"Cube"},{"id":"s2","label":"Cylindre"},{"id":"s3","label":"Pyramide à base carrée"},{"id":"s4","label":"Sphère"},{"id":"s5","label":"Parallélépipède rectangle (pavé droit)"},{"id":"s6","label":"Cône"},{"id":"s7","label":"Tétraèdre"},{"id":"s8","label":"Prisme droit à base triangulaire"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"poly","label":"Polyèdre"},{"id":"non","label":"Non-polyèdre"}],"mapping":{"s1":"poly","s2":"non","s3":"poly","s4":"non","s5":"poly","s6":"non","s7":"poly","s8":"poly"}}'::jsonb,
  'Un polyèdre est un solide dont toutes les faces sont des polygones plans. Le cube, la pyramide, le parallélépipède, le tétraèdre et le prisme sont des polyèdres. Le cylindre (surface latérale courbe), la sphère (entièrement courbe) et le cône (surface latérale courbe) ne sont pas des polyèdres.',
  'Hésiter sur le cylindre : même si ses bases sont des disques (plans), sa surface latérale est courbe. Un polyèdre doit avoir TOUTES ses faces planes.',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'free',
  true
);

-- Q8 — Quadrilatères : centre de symétrie ou non (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Avance',
  'tri_categories',
  'Classez chaque quadrilatère selon qu''il possède un centre de symétrie ou non.',
  NULL,
  '[{"id":"f1","label":"Parallélogramme quelconque"},{"id":"f2","label":"Rectangle"},{"id":"f3","label":"Losange"},{"id":"f4","label":"Carré"},{"id":"f5","label":"Trapèze isocèle"},{"id":"f6","label":"Trapèze quelconque"},{"id":"f7","label":"Cerf-volant"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"oui","label":"Possède un centre de symétrie"},{"id":"non","label":"Pas de centre de symétrie"}],"mapping":{"f1":"oui","f2":"oui","f3":"oui","f4":"oui","f5":"non","f6":"non","f7":"non"}}'::jsonb,
  'Tous les parallélogrammes (parallélogramme quelconque, rectangle, losange, carré) possèdent un centre de symétrie : c''est le point d''intersection de leurs diagonales. Les trapèzes et le cerf-volant n''ont pas de centre de symétrie. Un centre de symétrie signifie que la rotation de 180° autour de ce point laisse la figure invariante.',
  'Confondre axe de symétrie et centre de symétrie. Le trapèze isocèle a un axe de symétrie mais pas de centre de symétrie.',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'premium',
  true
);

-- Q9 — Propriétés caractéristiques des parallélogrammes (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Avance',
  'tri_categories',
  'Classez chaque propriété selon le quadrilatère qu''elle caractérise de manière unique parmi les parallélogrammes.',
  NULL,
  '[{"id":"p1","label":"Diagonales perpendiculaires + même longueur"},{"id":"p2","label":"Diagonales de même longueur (non perpendiculaires)"},{"id":"p3","label":"Diagonales perpendiculaires (longueurs différentes)"},{"id":"p4","label":"Diagonales ni égales ni perpendiculaires (se coupent en leur milieu)"},{"id":"p5","label":"4 côtés égaux et 4 angles droits"},{"id":"p6","label":"4 angles droits (côtés inégaux)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"carre","label":"Carré"},{"id":"rect","label":"Rectangle"},{"id":"los","label":"Losange"},{"id":"para","label":"Parallélogramme quelconque"}],"mapping":{"p1":"carre","p2":"rect","p3":"los","p4":"para","p5":"carre","p6":"rect"}}'::jsonb,
  'Le carré est le seul parallélogramme dont les diagonales sont à la fois perpendiculaires ET de même longueur. Le rectangle se reconnaît aux diagonales de même longueur (non perpendiculaires). Le losange aux diagonales perpendiculaires (de longueurs différentes). Le parallélogramme quelconque a des diagonales qui se coupent en leur milieu mais ne sont ni égales ni perpendiculaires.',
  'Oublier que le carré cumule les propriétés du rectangle et du losange. C''est l''intersection des deux ensembles dans la hiérarchie des quadrilatères.',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'premium',
  true
);

-- Q10 — Formules d'aire : quelle figure ? (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9010000-0000-0000-0000-00000000000a',
  'Mathematiques',
  'geometrie',
  'tri_quadrilateres_proprietes',
  'Tri — Quadrilatères et propriétés',
  'Intermediaire',
  'tri_categories',
  'Associez chaque formule d''aire à la figure correspondante.',
  NULL,
  '[{"id":"a1","label":"A = côté × côté"},{"id":"a2","label":"A = longueur × largeur"},{"id":"a3","label":"A = (d₁ × d₂) / 2"},{"id":"a4","label":"A = base × hauteur"},{"id":"a5","label":"A = (B + b) × h / 2"},{"id":"a6","label":"A = π × r²"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"carre","label":"Carré"},{"id":"rect","label":"Rectangle"},{"id":"los","label":"Losange"},{"id":"para","label":"Parallélogramme"},{"id":"trap","label":"Trapèze"},{"id":"disq","label":"Disque"}],"mapping":{"a1":"carre","a2":"rect","a3":"los","a4":"para","a5":"trap","a6":"disq"}}'::jsonb,
  'Le carré : A = c² (côté au carré). Le rectangle : A = L × l (longueur × largeur). Le losange : A = (d₁ × d₂) / 2 (produit des diagonales divisé par 2). Le parallélogramme : A = b × h (base × hauteur, comme le rectangle mais avec une hauteur qui n''est pas un côté). Le trapèze : A = (B + b) × h / 2 (somme des bases × hauteur / 2). Le disque : A = πr².',
  'Confondre la formule du losange (d₁ × d₂ / 2) avec celle du triangle (b × h / 2). Les deux divisent par 2, mais les données sont différentes.',
  'valide',
  'CRPE Maths — Tri figures géométriques',
  'free',
  true
);
