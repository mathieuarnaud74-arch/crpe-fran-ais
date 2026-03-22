-- Migration: série math_geometrie_vrai_faux_figures (10 questions)
-- Géométrie : vrai ou faux ? — Propriétés des figures — Mathématiques CRPE
-- UUID prefix: b0020000
-- Type : vrai_faux uniquement
-- Niveau : Intermediaire
-- Access : free

-- ============================================================================
-- Q1 — Un carré est un rectangle — VRAI
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Un carré est un rectangle.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Un rectangle est défini comme un quadrilatère ayant quatre angles droits. Or, un carré possède bien quatre angles droits (en plus d''avoir ses quatre côtés égaux). Le carré est donc un cas particulier de rectangle. Cette relation d''inclusion est fondamentale en géométrie : tout carré est un rectangle, mais tout rectangle n''est pas un carré. Au CRPE, la hiérarchie des quadrilatères (parallélogramme → rectangle/losange → carré) est un classique.',
  'Penser que carré et rectangle sont deux catégories totalement distinctes. Beaucoup d''élèves (et de candidats) considèrent qu''un carré « n''est pas » un rectangle parce qu''il a des propriétés supplémentaires. C''est confondre « cas particulier » et « catégorie différente ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — Un rectangle est un carré — FAUX
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Un rectangle est un carré.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. Un rectangle a quatre angles droits, mais ses côtés ne sont pas nécessairement tous égaux. Un rectangle de 3 cm × 5 cm, par exemple, n''est pas un carré. Le carré est un cas particulier du rectangle (il ajoute la contrainte d''égalité des quatre côtés), mais l''inverse n''est pas vrai. La relation d''inclusion n''est pas symétrique : « tout carré est un rectangle » ne signifie pas « tout rectangle est un carré ».',
  'Confondre l''implication et sa réciproque. Parce que « un carré est un rectangle » est vrai, certains candidats pensent que la réciproque l''est aussi. C''est une erreur de logique fréquente au CRPE.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — Un losange a ses diagonales perpendiculaires — VRAI
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Un losange a ses diagonales perpendiculaires.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Le losange est un quadrilatère dont les quatre côtés sont de même longueur. Ses diagonales se coupent en leur milieu et sont perpendiculaires. C''est d''ailleurs une propriété caractéristique : un parallélogramme dont les diagonales sont perpendiculaires est un losange. Attention : les diagonales d''un losange ne sont pas forcément de même longueur (sauf si c''est un carré). Au programme du cycle 3, les propriétés des diagonales sont un critère essentiel de classification des quadrilatères.',
  'Confondre les propriétés des diagonales du losange et du rectangle. Le losange a des diagonales perpendiculaires (mais pas nécessairement égales), tandis que le rectangle a des diagonales égales (mais pas nécessairement perpendiculaires). Le carré, qui est les deux, a des diagonales à la fois perpendiculaires et égales.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — Tout parallélogramme a un axe de symétrie — FAUX
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Tout parallélogramme a un axe de symétrie.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. Un parallélogramme « quelconque » (ni rectangle, ni losange) ne possède aucun axe de symétrie. Il possède en revanche un centre de symétrie : le point d''intersection de ses diagonales. Les parallélogrammes qui ont des axes de symétrie sont des cas particuliers : le rectangle (2 axes), le losange (2 axes) et le carré (4 axes). La distinction entre symétrie axiale et symétrie centrale est un point clé du programme de géométrie au cycle 3.',
  'Confondre symétrie axiale et symétrie centrale. Le parallélogramme a bien une symétrie (centrale), ce qui pousse certains candidats à croire qu''il a aussi un axe de symétrie. Ce sont deux types de symétrie bien distincts.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — Un triangle peut avoir deux angles droits — FAUX
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Un triangle peut avoir deux angles droits.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. La somme des angles d''un triangle vaut toujours 180° (en géométrie euclidienne). Si un triangle avait deux angles droits, la somme de ces deux angles serait déjà 90° + 90° = 180°, ce qui ne laisserait rien (0°) pour le troisième angle — ce qui est impossible. Un triangle peut avoir au maximum un seul angle droit : c''est alors un triangle rectangle. Cette propriété fondamentale de la somme des angles est au programme dès le cycle 3.',
  'Ne pas mobiliser la propriété de la somme des angles pour vérifier la possibilité. Certains candidats hésitent parce qu''ils ne pensent pas à calculer : 90° + 90° = 180°, il ne reste plus rien pour le troisième angle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — La somme des angles d'un triangle est toujours 180° — VRAI
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : La somme des angles d''un triangle est toujours 180°.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. En géométrie euclidienne (celle du plan, enseignée à l''école), la somme des mesures des trois angles d''un triangle vaut toujours exactement 180°. C''est un théorème fondamental que les élèves découvrent dès le cycle 3, d''abord par la manipulation (découpage et assemblage des angles) puis par la démonstration au collège. Cette propriété est utilisée constamment pour calculer un angle manquant dans un triangle. Attention : en géométrie non euclidienne (sphérique), cette propriété n''est plus vraie, mais le CRPE porte sur la géométrie euclidienne.',
  'Douter de l''universalité de cette propriété en se disant que « ça dépend du triangle ». Non : en géométrie euclidienne, c''est toujours 180°, quel que soit le triangle (rectangle, isocèle, équilatéral, quelconque).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — Un trapèze a toujours au moins deux côtés parallèles — VRAI
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Un trapèze a toujours au moins deux côtés parallèles.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Par définition, un trapèze est un quadrilatère qui possède au moins une paire de côtés parallèles (appelés « bases »). C''est sa propriété définitoire. Avec la définition inclusive (utilisée dans les programmes français), un parallélogramme est un trapèze particulier (deux paires de côtés parallèles). Le trapèze est souvent le premier quadrilatère « non trivial » étudié en cycle 3, et sa classification dans la hiérarchie des quadrilatères est un attendu du CRPE.',
  'Penser que « au moins deux côtés parallèles » signifie « exactement deux côtés parallèles ». En réalité, un parallélogramme (quatre côtés parallèles deux à deux) est aussi un trapèze dans la définition inclusive.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q8 — Le cercle a une infinité d'axes de symétrie — VRAI
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Le cercle a une infinité d''axes de symétrie.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Tout diamètre du cercle est un axe de symétrie. Comme on peut tracer une infinité de diamètres (un par direction), le cercle possède une infinité d''axes de symétrie. C''est la figure plane qui a le plus de symétries. Cette propriété est abordée dès le cycle 3 quand on étudie la symétrie axiale : le cercle sert de figure de référence pour comprendre qu''un axe de symétrie « partage la figure en deux parties superposables par pliage ».',
  'Penser que le cercle a « seulement » deux axes de symétrie (horizontal et vertical). C''est oublier que toute droite passant par le centre du cercle est un axe de symétrie, et il y en a une infinité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — Deux triangles ayant les mêmes longueurs de côtés sont toujours superposables — VRAI
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Deux triangles ayant les mêmes longueurs de côtés sont toujours superposables.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. C''est le cas d''isométrie « côté-côté-côté » (SSS en anglais, CCC en français). Si deux triangles ont leurs trois côtés respectivement de même longueur, ils sont isométriques (superposables). Ce théorème est fondamental en construction géométrique : connaître les trois côtés d''un triangle suffit à le construire de manière unique (à une symétrie près). Ce cas d''isométrie est au programme du cycle 4 mais la notion de « reproduction de figure » dès le cycle 3 s''y appuie implicitement.',
  'Penser que deux triangles pourraient avoir les mêmes côtés mais être « différents ». C''est impossible : trois longueurs de côtés déterminent un triangle de façon unique (à un retournement près). Cette rigidité du triangle (contrairement aux quadrilatères) est une propriété essentielle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — Si un quadrilatère a ses quatre côtés égaux, c'est un carré — FAUX
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0020000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_geometrie_vrai_faux_figures',
  'Géométrie : vrai ou faux ? — Propriétés des figures',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : Si un quadrilatère a ses quatre côtés égaux, c''est un carré.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. Un quadrilatère ayant quatre côtés de même longueur est un losange, mais pas nécessairement un carré. Pour être un carré, il faudrait en plus que ses quatre angles soient droits. Un losange « aplati » (avec des angles de 60° et 120° par exemple) a bien quatre côtés égaux sans être un carré. Le carré est un losange particulier (qui est aussi un rectangle). Cette distinction losange/carré illustre parfaitement la hiérarchie des quadrilatères au programme du CRPE.',
  'Associer automatiquement « quatre côtés égaux » à « carré » en oubliant le losange. Cette confusion vient du fait que le carré est le quadrilatère régulier le plus connu, et qu''on oublie que l''égalité des côtés seule ne garantit pas l''égalité des angles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
