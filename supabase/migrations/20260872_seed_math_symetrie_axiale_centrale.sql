-- Migration: 10 exercices — Symétrie axiale et symétrie centrale
-- Série : math_symetrie_axiale_centrale (Mathématiques, geometrie)
-- Axe de symétrie, centre de symétrie, figures remarquables, construction de symétriques
-- UUID prefix: 4ef50000

-- Q1 — QCM — Définition de l'axe de symétrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'qcm',
  'Un axe de symétrie d''une figure est une droite qui…',
  NULL,
  '[{"id":"a","label":"Divise la figure en deux parties de même aire"},{"id":"b","label":"Divise la figure en deux parties superposables par pliage le long de cette droite"},{"id":"c","label":"Passe obligatoirement par le centre de gravité de la figure"},{"id":"d","label":"Est toujours perpendiculaire au côté le plus long de la figure"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Un axe de symétrie d''une figure est une droite (d) telle que, si l''on plie la figure le long de (d), les deux parties se superposent exactement. Plus précisément, (d) est un axe de symétrie de la figure si, pour tout point A de la figure, son symétrique A'' par rapport à (d) appartient également à la figure. Le pliage est le moyen concret pour le vérifier.',
  'Confondre axe de symétrie et médiatrice d''un côté, ou penser que toute droite divisant une figure en deux parties de même aire est un axe de symétrie. Deux parties de même aire ne sont pas nécessairement superposables (elles peuvent avoir des formes différentes).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Le rectangle a deux axes de symétrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Un rectangle (non carré) possède exactement deux axes de symétrie.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Un rectangle (non carré) possède exactement deux axes de symétrie : les deux droites joignant les milieux des côtés opposés (les « médiatrices des côtés »). Les diagonales d''un rectangle ne sont PAS des axes de symétrie (contrairement au carré). Un carré, lui, possède 4 axes de symétrie (2 médiatrices des côtés + 2 diagonales).',
  'Confondre rectangle et carré : les diagonales d''un rectangle ne sont pas des axes de symétrie. Si l''on plie un rectangle selon sa diagonale, les deux triangles obtenus ne se superposent que si c''est un carré.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Nombre d'axes de symétrie du carré
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'qcm',
  'Combien d''axes de symétrie possède un carré ?',
  NULL,
  '[{"id":"a","label":"2"},{"id":"b","label":"3"},{"id":"c","label":"4"},{"id":"d","label":"8"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Un carré possède 4 axes de symétrie : les 2 droites joignant les milieux des côtés opposés (axes horizontaux et verticaux) et les 2 diagonales. En général, un polygone régulier à n côtés possède n axes de symétrie. Le carré est un polygone régulier à 4 côtés, il possède donc 4 axes.',
  'Confondre avec le rectangle (2 axes) ou oublier que les diagonales du carré sont aussi des axes de symétrie (ce qui n''est pas le cas du rectangle).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Vrai/Faux — Triangle scalène et axe de symétrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Un triangle quelconque (dont les trois côtés ont des longueurs différentes) possède au moins un axe de symétrie.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Un triangle scalène (trois côtés inégaux) ne possède aucun axe de symétrie. Seuls les triangles isocèles (un axe : la médiatrice de la base) et le triangle équilatéral (trois axes) possèdent des axes de symétrie. La présence d''un axe de symétrie dans un triangle implique que deux côtés au moins sont égaux.',
  'Croire que la médiatrice d''un côté est toujours un axe de symétrie du triangle. C''est seulement vrai si les deux autres côtés sont égaux (triangle isocèle par rapport à ce côté).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Propriété du symétrique d'un point par rapport à un axe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'qcm',
  'Quelle est la propriété caractéristique du symétrique d''un point A par rapport à un axe (d) ?',
  NULL,
  '[{"id":"a","label":"Le point A et son image A'' sont équidistants de l''axe, et le segment [AA''] est perpendiculaire à (d), avec le milieu de [AA''] sur (d)"},{"id":"b","label":"Le point A et son image A'' ont la même ordonnée dans tout repère"},{"id":"c","label":"Le point A et son image A'' sont reliés par une rotation de 90° autour du centre de (d)"},{"id":"d","label":"Le point A'' est le pied de la perpendiculaire abaissée de A sur (d)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le symétrique de A par rapport à l''axe (d) est le point A'' tel que : (1) le segment [AA''] est perpendiculaire à (d) ; (2) le milieu de [AA''] est le point d''intersection de [AA''] avec (d). Ces deux conditions garantissent que A et A'' sont « à égale distance » de l''axe, de part et d''autre. C''est cette propriété qui permet la construction à la règle et à l''équerre.',
  'Confondre le symétrique de A avec le pied de la perpendiculaire (d) : le pied H est le milieu de [AA''], pas le symétrique lui-même. Le symétrique A'' est tel que AH = HA''.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Symétrie centrale : construction du symétrique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'qcm',
  'Dans une symétrie centrale de centre O, comment obtient-on le symétrique A'' d''un point A ?',
  NULL,
  '[{"id":"a","label":"En traçant la perpendiculaire à OA et en prenant le point à égale distance"},{"id":"b","label":"En trouvant le point A'' tel que O soit le milieu du segment [AA'']"},{"id":"c","label":"En effectuant une rotation de 90° autour de O"},{"id":"d","label":"En trouvant le point A'' équidistant de O tel que OA'' soit perpendiculaire à OA"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans une symétrie de centre O, le symétrique de A est le point A'' tel que O est le milieu du segment [AA'']. Cela revient à « passer de l''autre côté de O en conservant la même distance » : OA = OA'' et A, O, A'' sont alignés. On peut construire A'' en prolongeant [AO] au-delà de O de la même longueur que AO.',
  'Confondre symétrie centrale et symétrie axiale. Dans la symétrie axiale, l''axe est une droite et la construction utilise une perpendiculaire. Dans la symétrie centrale, le centre est un point et O est le milieu de [AA''].',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Symétrie centrale = rotation de 180°
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Une symétrie centrale de centre O est équivalente à une rotation de 180° autour de O.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. La symétrie centrale de centre O est en effet une rotation d''angle 180° (ou π radians) autour de O. Pour tout point A, le symétrique A'' est tel que O est le milieu de [AA''], ce qui correspond exactement à une rotation de 180° autour de O. C''est une isométrie directe (qui conserve l''orientation des figures, contrairement à la symétrie axiale qui est une isométrie indirecte).',
  'Confondre symétrie centrale (rotation 180°, isométrie directe, conserve l''orientation) et symétrie axiale (isométrie indirecte, renverse l''orientation). Une figure et son image par symétrie axiale sont en miroir ; par symétrie centrale, elles sont « retournées à 180° ».',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Réponse courte — Nombre d'axes de symétrie du cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'reponse_courte',
  'Combien d''axes de symétrie possède un cercle ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["une infinité","infinité","infini","une infinite","infinite d''axes","infiniment"]}'::jsonb,
  'Un cercle possède une infinité d''axes de symétrie : tout diamètre (droite passant par le centre) est un axe de symétrie. Le cercle est la figure plane avec le plus grand nombre d''axes de symétrie. Il possède également un centre de symétrie (son centre).',
  'Donner un nombre fini (ex : 4 ou 360). Tout diamètre est un axe de symétrie, et il y en a une infinité puisque toute droite passant par le centre divise le cercle en deux demi-cercles superposables.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Lettre majuscule avec deux axes de symétrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'qcm',
  'Parmi les lettres majuscules suivantes, laquelle possède à la fois un axe de symétrie vertical ET un axe de symétrie horizontal ?',
  NULL,
  '[{"id":"a","label":"A"},{"id":"b","label":"T"},{"id":"c","label":"H"},{"id":"d","label":"V"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La lettre H possède un axe de symétrie vertical (symétrie gauche-droite) et un axe de symétrie horizontal (symétrie haut-bas). La lettre A possède uniquement un axe vertical. La lettre T possède uniquement un axe vertical. La lettre V possède uniquement un axe vertical. H est le seul exemple parmi ces propositions à présenter les deux axes.',
  'Choisir A ou T, qui ne possèdent qu''un axe vertical. Vérifier la symétrie horizontale : si l''on retourne la lettre « à l''envers », elle doit rester identique (c''est le cas de H, mais pas de A ou T).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Quadrilatère sans centre de symétrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '4ef50000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale_centrale',
  'Symétrie axiale et symétrie centrale',
  'Standard',
  'qcm',
  'Lequel de ces quadrilatères NE possède PAS de centre de symétrie ?',
  NULL,
  '[{"id":"a","label":"Le carré"},{"id":"b","label":"Le rectangle"},{"id":"c","label":"Le losange"},{"id":"d","label":"Le trapèze isocèle (non parallélogramme)"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Le carré, le rectangle et le losange sont tous des parallélogrammes : leur centre de symétrie est le point d''intersection de leurs diagonales. Le trapèze isocèle non parallélogramme possède un axe de symétrie (la médiatrice des bases parallèles) mais PAS de centre de symétrie : aucun point ne permet une symétrie centrale qui laisse la figure invariante.',
  'Penser que le trapèze isocèle a un centre de symétrie parce qu''il a un axe. Symétrie axiale et symétrie centrale sont deux propriétés distinctes. Un quadrilatère peut avoir l''une sans l''autre.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
