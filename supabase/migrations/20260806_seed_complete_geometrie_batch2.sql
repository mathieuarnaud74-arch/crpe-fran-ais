-- ============================================================
-- Migration : Complétion des séries géométrie batch 2 (Q8, Q9, Q10)
-- 21 séries × 3 questions = 63 exercices ajoutés
-- Objectif : amener chaque série à 10 questions minimum
-- ============================================================

-- ============================================================
-- 1. math_geometrie_espace_sections (prefix=b02a0000, Avance, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives',
  'Avance',
  'vrai_faux',
  'La section d''une sphère par un plan est toujours un cercle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Tout plan qui coupe une sphère produit une section circulaire. Si le plan passe par le centre de la sphère, la section est un grand cercle (de rayon égal à celui de la sphère). Si le plan ne passe pas par le centre, la section est un petit cercle (de rayon strictement inférieur). Ce résultat se démontre en considérant la distance du centre de la sphère au plan de coupe et en appliquant le théorème de Pythagore.',
  'Penser que la section d''une sphère peut être une ellipse : c''est faux, contrairement au cylindre ou au cône, la sphère ne donne que des sections circulaires (grâce à sa symétrie totale).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives',
  'Avance',
  'qcm',
  'On coupe un tétraèdre régulier par un plan passant par les milieux de quatre de ses six arêtes. Quelle est la forme de la section obtenue ?',
  NULL,
  '[{"id":"A","label":"Un triangle équilatéral"},{"id":"B","label":"Un carré"},{"id":"C","label":"Un rectangle"},{"id":"D","label":"Un losange"}]'::jsonb,
  '{"mode":"single","value":"B"}'::jsonb,
  'En coupant un tétraèdre régulier par le plan qui passe par les milieux de quatre arêtes non adjacentes deux à deux, on obtient un carré. En effet, chaque côté de la section relie les milieux de deux arêtes du tétraèdre, et par la propriété des milieux, ces côtés sont tous de même longueur et forment des angles droits entre eux. C''est un résultat classique de la géométrie dans l''espace.',
  'Répondre « triangle » en pensant que toute section d''un tétraèdre est un triangle : ce n''est le cas que si le plan passe par trois milieux d''arêtes issues d''un même sommet.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives',
  'Avance',
  'reponse_courte',
  'Un cube possède 8 sommets, 12 arêtes et 6 faces. Combien de grands diagonaux (diagonales de l''espace, c''est-à-dire les segments reliant deux sommets non situés sur la même face) possède-t-il ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4","quatre"]}'::jsonb,
  'Un cube possède 8 sommets. Depuis chaque sommet, on peut tracer des segments vers les 7 autres sommets. Parmi ceux-ci, 3 sont des arêtes et 3 sont des diagonales de faces. Il ne reste qu''un seul segment qui traverse l''intérieur du cube : la diagonale d''espace. On obtient donc 8 × 1 = 8 segments, mais chaque diagonale est comptée deux fois, soit 8 / 2 = 4 diagonales d''espace.',
  'Confondre les diagonales de faces (il y en a 12) avec les diagonales d''espace (il n''y en a que 4).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 2. math_mediane_hauteur_bissectrice (prefix=f90b0000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_mediane_hauteur_bissectrice',
  'Médiane, hauteur et bissectrice — Droites remarquables',
  'Intermediaire',
  'vrai_faux',
  'Dans un triangle rectangle en B, l''orthocentre coïncide avec le sommet B.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''orthocentre est le point de concours des trois hauteurs. Dans un triangle rectangle en B, la hauteur issue de A est la droite (AB) elle-même (puisque AB est perpendiculaire à BC), et la hauteur issue de C est la droite (BC) elle-même (puisque BC est perpendiculaire à AB). Ces deux hauteurs se coupent en B, donc l''orthocentre est le sommet de l''angle droit. La troisième hauteur (issue de B, perpendiculaire à AC) passe aussi par B.',
  'Croire que l''orthocentre est toujours à l''intérieur du triangle : dans un triangle rectangle, il coïncide avec le sommet de l''angle droit.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_mediane_hauteur_bissectrice',
  'Médiane, hauteur et bissectrice — Droites remarquables',
  'Intermediaire',
  'qcm',
  'Dans un triangle ABC, la bissectrice de l''angle A partage le côté opposé [BC] en deux segments [BD] et [DC] (D sur [BC]). Quelle propriété relie les longueurs BD, DC, AB et AC ?',
  NULL,
  '[{"id":"a","label":"BD/DC = AB/AC"},{"id":"b","label":"BD = DC (la bissectrice coupe le côté opposé en son milieu)"},{"id":"c","label":"BD × DC = AB × AC"},{"id":"d","label":"BD + DC = AB + AC"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'C''est le théorème de la bissectrice intérieure : la bissectrice de l''angle A d''un triangle ABC coupe le côté opposé [BC] en un point D tel que BD/DC = AB/AC. Le point D divise [BC] dans le rapport des côtés adjacents à l''angle considéré. L''option B est fausse : la bissectrice ne passe par le milieu du côté opposé que si le triangle est isocèle en A.',
  'Confondre bissectrice et médiane : croire que la bissectrice passe par le milieu du côté opposé. C''est la médiane qui passe par le milieu, pas la bissectrice.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90b0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_mediane_hauteur_bissectrice',
  'Médiane, hauteur et bissectrice — Droites remarquables',
  'Intermediaire',
  'reponse_courte',
  'Dans un triangle équilatéral ABC, les quatre points remarquables (centre de gravité, orthocentre, centre du cercle inscrit et centre du cercle circonscrit) sont confondus en un seul point. Quel est le nom de ce point commun ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["centre de gravité","centre du triangle","le centre","isobarycentre","centre"]}'::jsonb,
  'Dans un triangle équilatéral, la parfaite symétrie fait que les trois médianes, les trois hauteurs, les trois médiatrices et les trois bissectrices sont confondues deux à deux. Leurs points de concours respectifs — le centre de gravité (G), l''orthocentre (H), le centre du cercle circonscrit (O) et le centre du cercle inscrit (I) — coïncident tous en un unique point, souvent appelé le centre du triangle. C''est une propriété caractéristique du triangle équilatéral.',
  'Penser que cette propriété est vraie pour tout triangle isocèle : c''est uniquement dans le triangle équilatéral que les quatre points remarquables sont confondus.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 3. math_patron_solides (prefix=f9090000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance',
  'Intermediaire',
  'vrai_faux',
  'Le patron d''une pyramide à base carrée est composé d''un carré et de quatre triangles isocèles.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Une pyramide régulière à base carrée possède une base carrée et quatre faces latérales triangulaires. Si la pyramide est régulière (son sommet se projette orthogonalement au centre de la base), les quatre triangles latéraux sont isocèles et identiques. Le patron se compose donc d''un carré central entouré de quatre triangles isocèles, chacun partageant un côté avec le carré. Lors du pliage, les quatre triangles se relèvent pour former les faces latérales.',
  'Croire que les triangles latéraux sont toujours équilatéraux : ils ne sont équilatéraux que si la hauteur de la pyramide a une valeur particulière. En général, ce sont des triangles isocèles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance',
  'Intermediaire',
  'qcm',
  'Un octaèdre régulier possède 6 sommets, 12 arêtes et 8 faces triangulaires. Combien de triangles équilatéraux composent son patron ?',
  NULL,
  '[{"id":"a","label":"4"},{"id":"b","label":"6"},{"id":"c","label":"8"},{"id":"d","label":"12"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''octaèdre régulier possède 8 faces, toutes des triangles équilatéraux. Son patron est donc composé de 8 triangles équilatéraux disposés dans le plan de sorte qu''on puisse les replier pour former le solide. On peut vérifier avec la formule d''Euler : S − A + F = 6 − 12 + 8 = 2. L''octaèdre régulier est l''un des cinq solides de Platon.',
  'Confondre le nombre de faces (8) avec le nombre de sommets (6) ou le nombre d''arêtes (12).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance',
  'Intermediaire',
  'reponse_courte',
  'On souhaite construire le patron d''un cylindre de rayon 5 cm et de hauteur 8 cm. Quelle doit être la longueur du rectangle constituant la surface latérale, arrondie au dixième de cm ? (π ≈ 3,14)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["31,4","31,4 cm","31.4","31.4 cm"]}'::jsonb,
  'La longueur du rectangle du patron correspond au périmètre du cercle de base : L = 2πr = 2 × 3,14 × 5 = 31,4 cm. La largeur du rectangle est la hauteur du cylindre, soit 8 cm. Ce calcul est essentiel pour construire un patron correct : si la longueur du rectangle ne correspond pas exactement au périmètre du cercle, le patron ne pourra pas se refermer pour former le cylindre.',
  'Utiliser le diamètre au lieu du rayon dans la formule, ou confondre la longueur du rectangle (périmètre du cercle) avec l''aire du disque.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 4. math_perimetre_cercle_arc (prefix=f90a0000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_perimetre_cercle_arc',
  'Périmètre du cercle et longueur d''arc',
  'Intermediaire',
  'reponse_courte',
  'Une roue de vélo fait exactement 5 tours complets pour parcourir 9,42 m. Quel est le rayon de cette roue en cm ? (π ≈ 3,14)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30","30 cm","30cm"]}'::jsonb,
  'En 5 tours, la roue parcourt 5 fois sa circonférence. Donc la circonférence C = 9,42 / 5 = 1,884 m. Or C = 2πr, donc r = C / (2π) = 1,884 / (2 × 3,14) = 1,884 / 6,28 = 0,3 m = 30 cm. Ce type de problème inverse (retrouver le rayon à partir du périmètre) est fréquent au CRPE.',
  'Oublier de diviser par le nombre de tours : l''élève utilise 9,42 m directement comme circonférence au lieu de 9,42 / 5.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_perimetre_cercle_arc',
  'Périmètre du cercle et longueur d''arc',
  'Intermediaire',
  'qcm',
  'Un quart de cercle de rayon 8 cm est découpé dans une feuille de papier. Quel est le périmètre de cette figure ? (π ≈ 3,14)',
  NULL,
  '[{"id":"a","label":"12,56 cm"},{"id":"b","label":"28,56 cm"},{"id":"c","label":"25,12 cm"},{"id":"d","label":"20,56 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le périmètre d''un quart de cercle comprend l''arc de cercle (un quart de la circonférence) et les deux rayons. Arc = (1/4) × 2πr = (1/4) × 2 × 3,14 × 8 = (1/4) × 50,24 = 12,56 cm. Deux rayons = 2 × 8 = 16 cm. Périmètre total = 12,56 + 16 = 28,56 cm. Il ne faut pas oublier les deux segments rectilignes qui ferment la figure.',
  'Calculer uniquement la longueur de l''arc (12,56 cm) en oubliant les deux rayons qui complètent le périmètre de la figure.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90a0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_perimetre_cercle_arc',
  'Périmètre du cercle et longueur d''arc',
  'Intermediaire',
  'vrai_faux',
  'Si on double le rayon d''un cercle, son périmètre est multiplié par 4.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Le périmètre d''un cercle est P = 2πr. Si on double le rayon (r'' = 2r), le nouveau périmètre est P'' = 2π × 2r = 4πr = 2 × (2πr) = 2P. Le périmètre est donc multiplié par 2, pas par 4. C''est l''aire du disque qui est multipliée par 4 quand on double le rayon (car A = πr² et A'' = π(2r)² = 4πr² = 4A). Les longueurs varient linéairement avec le rayon, les aires varient avec le carré du rayon.',
  'Confondre le comportement du périmètre (proportionnel au rayon) avec celui de l''aire (proportionnelle au carré du rayon) : c''est l''aire qui est multipliée par 4, pas le périmètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 5. math_polygones_reguliers (prefix=f9020000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'qcm',
  'Combien mesure chaque angle intérieur d''un octogone régulier ?',
  NULL,
  '[{"id":"a","label":"120°"},{"id":"b","label":"135°"},{"id":"c","label":"144°"},{"id":"d","label":"150°"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La mesure de chaque angle intérieur d''un polygone régulier à n côtés est (n − 2) × 180° / n. Pour un octogone régulier (n = 8) : (8 − 2) × 180° / 8 = 6 × 180° / 8 = 1080° / 8 = 135°. On peut vérifier : l''angle extérieur vaut 360° / 8 = 45°, et 180° − 45° = 135°.',
  'Appliquer la formule (n × 180°) / n = 180° en oubliant de soustraire 2 à n, ce qui donnerait toujours 180° quel que soit le polygone.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'vrai_faux',
  'Le pentagone régulier possède exactement 5 axes de symétrie.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Un polygone régulier à n côtés possède exactement n axes de symétrie. Pour le pentagone régulier (n = 5), chaque axe passe par un sommet et le milieu du côté opposé (puisque 5 est impair). Ces 5 axes passent tous par le centre du pentagone. De manière générale, si n est impair, les n axes passent chacun par un sommet ; si n est pair, n/2 axes passent par deux sommets opposés et n/2 axes passent par les milieux de deux côtés opposés.',
  'Répondre 10 en comptant un axe par sommet ET un axe par côté séparément : quand n est impair, chaque axe passe par un sommet ET par le milieu du côté opposé, il n''y a donc que n axes en tout.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9020000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_polygones_reguliers',
  'Polygones réguliers — Angles et propriétés',
  'Intermediaire',
  'reponse_courte',
  'Quel est l''angle au centre d''un polygone régulier à 12 côtés (dodécagone régulier) ? Donnez votre réponse en degrés.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30","30°","30 degrés"]}'::jsonb,
  'L''angle au centre d''un polygone régulier à n côtés vaut 360° / n. Pour un dodécagone régulier : 360° / 12 = 30°. Cet angle au centre correspond aussi à l''angle extérieur du polygone régulier (car la somme des angles extérieurs de tout polygone convexe vaut 360°). L''angle intérieur correspondant est 180° − 30° = 150°.',
  'Calculer (12 − 2) × 180° / 12 = 150° en confondant l''angle au centre avec l''angle intérieur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 6. math_programmes_construction (prefix=b0150000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter',
  'Intermediaire',
  'vrai_faux',
  'Le programme suivant produit un losange : « Tracer un segment [AC] de 8 cm. Tracer la médiatrice de [AC]. Placer sur cette médiatrice un point B à 5 cm du milieu de [AC], et un point D de l''autre côté, aussi à 5 cm du milieu de [AC]. Tracer le quadrilatère ABCD. »',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Ce programme est correct. Les diagonales du quadrilatère ABCD sont [AC] et [BD]. Elles sont perpendiculaires (car [BD] est sur la médiatrice de [AC]) et se coupent en leur milieu (car le milieu de [AC] est aussi le milieu de [BD] par construction). Un quadrilatère dont les diagonales sont perpendiculaires et se coupent en leur milieu est un losange. On peut vérifier : par le théorème de Pythagore, chaque côté mesure √(4² + 5²) = √41 cm. Les quatre côtés sont bien égaux.',
  'Penser que ce programme produit un carré : il ne produit un carré que si les diagonales sont de même longueur (AC = BD), ce qui nécessiterait que les deux demi-diagonales soient égales (4 ≠ 5 ici).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter',
  'Intermediaire',
  'qcm',
  'Un élève exécute ce programme : « 1. Tracer un segment [AB] de 7 cm. 2. Tracer le cercle de centre A et de rayon 5 cm. 3. Tracer le cercle de centre B et de rayon 5 cm. 4. Nommer C l''un des points d''intersection des deux cercles. 5. Tracer le triangle ABC. » Quelle est la nature du triangle ABC ?',
  NULL,
  '[{"id":"a","label":"Équilatéral"},{"id":"b","label":"Isocèle en C"},{"id":"c","label":"Rectangle en C"},{"id":"d","label":"Scalène (quelconque)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le point C est à l''intersection des deux cercles, donc AC = 5 cm (rayon du cercle de centre A) et BC = 5 cm (rayon du cercle de centre B). On a AC = BC = 5 cm mais AB = 7 cm ≠ 5 cm. Le triangle est donc isocèle en C (deux côtés égaux de 5 cm). Il n''est pas équilatéral car AB ≠ AC. Pour obtenir un triangle équilatéral, il faudrait que les deux cercles aient un rayon égal à AB (soit 7 cm).',
  'Conclure que le triangle est équilatéral en confondant cette construction avec celle du triangle équilatéral classique (où le rayon des cercles est égal à la longueur du segment).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter',
  'Intermediaire',
  'reponse_courte',
  'Un enseignant demande à ses élèves de construire un triangle ABC tel que AB = 6 cm, l''angle en A = 90° et AC = 4 cm. Quel instrument est indispensable pour construire l''angle droit ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["équerre","l''équerre","une équerre","Equerre","equerre"]}'::jsonb,
  'L''équerre est l''instrument indispensable pour construire un angle droit avec précision. La construction se fait ainsi : 1. Tracer un segment [AB] de 6 cm à la règle. 2. Placer l''équerre en A pour tracer la perpendiculaire à (AB) passant par A. 3. Reporter 4 cm sur cette perpendiculaire pour placer le point C. 4. Relier B et C. L''équerre garantit la mesure exacte de 90° en A, ce que ni le compas seul ni la règle ne peuvent assurer directement.',
  'Répondre « compas » : le compas permet de reporter des longueurs et de tracer des cercles, mais il ne permet pas directement de construire un angle de mesure donnée (sauf pour 60° avec le triangle équilatéral).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 7. math_pythagore_reciproque (prefix=f9040000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque',
  'Intermediaire',
  'reponse_courte',
  'Un terrain en forme de triangle a des côtés mesurant 8 m, 15 m et 17 m. Ce terrain est-il de forme rectangulaire (c''est-à-dire possède-t-il un angle droit) ? Répondez par « oui » ou « non ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["oui","Oui","OUI"]}'::jsonb,
  'On applique la réciproque du théorème de Pythagore. Le plus grand côté est 17 m. On vérifie : 8² + 15² = 64 + 225 = 289 = 17². L''égalité est vérifiée, donc le triangle est rectangle avec l''angle droit opposé au côté de 17 m. Le triplet (8, 15, 17) est un triplet pythagoricien. Ce type de vérification est utilisé en pratique par les maçons et géomètres pour s''assurer de l''équerrage d''un terrain.',
  'Vérifier l''inégalité triangulaire (8 + 15 > 17) au lieu de la relation de Pythagore : l''inégalité triangulaire ne permet que de vérifier l''existence du triangle, pas sa nature rectangulaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque',
  'Intermediaire',
  'qcm',
  'Dans un carré de côté 5 cm, quelle est la longueur de la diagonale ?',
  NULL,
  '[{"id":"a","label":"10 cm"},{"id":"b","label":"5√2 cm ≈ 7,07 cm"},{"id":"c","label":"25 cm"},{"id":"d","label":"√5 cm ≈ 2,24 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La diagonale d''un carré de côté a partage le carré en deux triangles rectangles isocèles. Par le théorème de Pythagore : d² = a² + a² = 2a². Donc d = a√2 = 5√2 ≈ 7,07 cm. La réponse A (10 cm = 2 × 5) double simplement le côté. La réponse C (25 = 5²) oublie de prendre la racine carrée. Cette relation d = a√2 est fondamentale et doit être connue au CRPE.',
  'Calculer la diagonale comme le double du côté (2 × 5 = 10 cm) au lieu d''appliquer le théorème de Pythagore.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9040000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_pythagore_reciproque',
  'Pythagore — Théorème direct et réciproque',
  'Intermediaire',
  'vrai_faux',
  'Le triplet (9, 40, 41) est un triplet pythagoricien.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. On vérifie : 9² + 40² = 81 + 1600 = 1681 = 41². L''égalité est satisfaite, donc (9, 40, 41) est bien un triplet pythagoricien. Un triplet pythagoricien est un ensemble de trois entiers naturels (a, b, c) vérifiant a² + b² = c². Exemples classiques : (3, 4, 5), (5, 12, 13), (8, 15, 17), (7, 24, 25), (9, 40, 41).',
  'Calculer 9² + 40² = 81 + 1600 = 1681 mais ne pas reconnaître que 41² = 1681, ou faire une erreur de calcul sur 40² (obtenir 1200 au lieu de 1600).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 8. math_pythagore_thales_applications (prefix=b00e0000, Avance, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications',
  'Avance',
  'qcm',
  'Un terrain triangulaire ABC est rectangle en A avec AB = 30 m et AC = 40 m. Un chemin rectiligne relie un point D sur [AB] à un point E sur [AC], parallèlement à [BC]. Si AD = 12 m, quelle est la longueur du chemin DE ?',
  NULL,
  '[{"id":"a","label":"16 m"},{"id":"b","label":"20 m"},{"id":"c","label":"24 m"},{"id":"d","label":"18 m"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Étape 1 — Calculons BC par Pythagore : BC² = AB² + AC² = 30² + 40² = 900 + 1600 = 2500, donc BC = 50 m. Étape 2 — Par Thalès, puisque (DE) // (BC) : AD/AB = DE/BC, soit 12/30 = DE/50. Donc DE = 50 × 12/30 = 50 × 2/5 = 20 m. Ce problème combine les deux théorèmes fondamentaux de la géométrie du collège.',
  'Oublier de calculer BC par Pythagore et utiliser directement AC = 40 m dans le rapport de Thalès, ce qui donnerait DE = 40 × 12/30 = 16 m (réponse fausse).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications',
  'Avance',
  'vrai_faux',
  'On peut utiliser la réciproque du théorème de Thalès pour démontrer que deux droites sont parallèles.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La réciproque du théorème de Thalès est l''outil principal pour démontrer un parallélisme. Si deux droites sécantes sont coupées par deux autres droites, et si les rapports des segments déterminés sur les sécantes sont égaux, alors les deux droites sont parallèles. Plus précisément : si M et N sont sur les côtés [AB] et [AC] d''un triangle ABC, et si AM/AB = AN/AC, alors (MN) // (BC).',
  'Confondre le théorème direct (si parallèle → rapports égaux) avec sa réciproque (si rapports égaux → parallèle). Au CRPE, il faut savoir utiliser le bon sens de l''implication.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00e0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_pythagore_thales_applications',
  'Pythagore et Thalès — Applications',
  'Avance',
  'reponse_courte',
  'Un câble diagonal relie le pied d''un mât de 9 m à un point du sol situé à 12 m du pied du mât. Quelle est la longueur du câble en mètres ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15","15 m","15m"]}'::jsonb,
  'Le mât est vertical et le sol est horizontal, formant un angle droit. Le câble est l''hypoténuse du triangle rectangle formé. Par le théorème de Pythagore : câble² = 9² + 12² = 81 + 144 = 225. Donc câble = √225 = 15 m. On reconnaît le triplet pythagoricien (9, 12, 15) = 3 × (3, 4, 5).',
  'Additionner directement 9 + 12 = 21 m au lieu d''appliquer le théorème de Pythagore.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 9. math_quadrilateres_demonstrations (prefix=b00b0000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'qcm',
  'Un parallélogramme a des diagonales de même longueur. Quelle est sa nature exacte ?',
  NULL,
  '[{"id":"a","label":"C''est un losange"},{"id":"b","label":"C''est un rectangle"},{"id":"c","label":"C''est un carré"},{"id":"d","label":"On ne peut pas conclure sans information supplémentaire"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un parallélogramme dont les diagonales sont de même longueur est nécessairement un rectangle. C''est une caractérisation du rectangle parmi les parallélogrammes. Attention : les diagonales de même longueur ne suffisent pas à elles seules pour conclure « rectangle » — il faut d''abord savoir que c''est un parallélogramme (car un trapèze isocèle a aussi des diagonales de même longueur). Ce n''est pas un carré car on n''a aucune information sur la perpendicularité des diagonales.',
  'Conclure hâtivement que c''est un carré en ajoutant mentalement la perpendicularité des diagonales, qui n''est pas donnée.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'vrai_faux',
  'Les diagonales d''un rectangle sont perpendiculaires.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux en général. Les diagonales d''un rectangle se coupent en leur milieu et sont de même longueur, mais elles ne sont pas perpendiculaires (sauf si le rectangle est un carré). La perpendicularité des diagonales est une propriété du losange, pas du rectangle. Pour qu''un rectangle ait des diagonales perpendiculaires, il faut que ses quatre côtés soient égaux, ce qui en fait un carré.',
  'Attribuer au rectangle la propriété des diagonales perpendiculaires, qui caractérise le losange. Le rectangle se caractérise par des diagonales de même longueur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00b0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_quadrilateres_demonstrations',
  'Quadrilatères — Propriétés et démonstrations',
  'Intermediaire',
  'reponse_courte',
  'On trace les milieux des quatre côtés d''un quadrilatère quelconque et on les relie dans l''ordre. Quelle est toujours la nature de la figure obtenue ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["parallélogramme","un parallélogramme","parallelogramme"]}'::jsonb,
  'C''est le théorème de Varignon : les milieux des côtés de tout quadrilatère forment un parallélogramme. Ce résultat remarquable est vrai quel que soit le quadrilatère de départ (même non convexe). La démonstration utilise le théorème des milieux : dans chacun des triangles formés par une diagonale du quadrilatère, le segment joignant les milieux de deux côtés est parallèle au troisième côté et en mesure la moitié.',
  'Penser que la nature de la figure obtenue dépend du quadrilatère de départ. Le résultat est universel : c''est toujours un parallélogramme (qui peut être un rectangle, un losange ou un carré dans des cas particuliers).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 10. math_reperage_plan (prefix=f90e0000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes',
  'Intermediaire',
  'qcm',
  'On donne les points A(1 ; 1), B(5 ; 1) et C(5 ; 4). Quelle est la nature du triangle ABC ?',
  NULL,
  '[{"id":"a","label":"Équilatéral"},{"id":"b","label":"Isocèle"},{"id":"c","label":"Rectangle en B"},{"id":"d","label":"Rectangle en A"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Calculons les côtés : AB = |5 − 1| = 4 (segment horizontal), BC = |4 − 1| = 3 (segment vertical). Puisque AB est horizontal et BC est vertical, l''angle en B est droit (90°). AC = √(4² + 3²) = √25 = 5 (hypoténuse). Le triangle ABC est rectangle en B. On reconnaît le triplet pythagoricien (3, 4, 5). Il n''est ni isocèle ni équilatéral car ses trois côtés sont différents.',
  'Conclure « rectangle en A » sans vérifier quel sommet forme l''angle droit. Les coordonnées montrent clairement que c''est en B que les deux côtés sont perpendiculaires (l''un horizontal, l''autre vertical).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes',
  'Intermediaire',
  'vrai_faux',
  'L''image du point P(4 ; −3) par la symétrie par rapport à l''axe des abscisses est le point P''(4 ; 3).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La symétrie par rapport à l''axe des abscisses (droite y = 0) transforme le point (x ; y) en (x ; −y) : l''abscisse reste inchangée et l''ordonnée change de signe. Ici, P(4 ; −3) devient P''(4 ; −(−3)) = P''(4 ; 3). Vérification : le milieu de [PP''] est (4 ; 0), qui est bien sur l''axe des abscisses, et [PP''] est vertical, donc perpendiculaire à l''axe des abscisses.',
  'Confondre la symétrie par rapport à l''axe des abscisses (y change de signe) avec la symétrie par rapport à l''axe des ordonnées (x change de signe).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90e0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_reperage_plan',
  'Repérage dans le plan — Coordonnées cartésiennes',
  'Intermediaire',
  'reponse_courte',
  'Un triangle a pour sommets A(0 ; 0), B(6 ; 0) et C(0 ; 8). Calculez le périmètre de ce triangle.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["24","24 unités"]}'::jsonb,
  'Calculons les trois côtés : AB = |6 − 0| = 6, AC = |8 − 0| = 8, et BC = √((6−0)² + (0−8)²) = √(36 + 64) = √100 = 10. Le périmètre est P = AB + AC + BC = 6 + 8 + 10 = 24. On reconnaît le triplet pythagoricien (6, 8, 10) = 2 × (3, 4, 5), ce qui confirme que le triangle est rectangle en A.',
  'Oublier de calculer BC et n''additionner que les deux côtés le long des axes : 6 + 8 = 14 au lieu de 6 + 8 + 10 = 24.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 11. math_rotation_proprietes (prefix=f9080000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_rotation_proprietes',
  'Rotation — Propriétés et images',
  'Intermediaire',
  'qcm',
  'Un carré ABCD a son centre en O. Quel est l''angle minimal (en degrés) d''une rotation de centre O qui envoie le carré sur lui-même ?',
  NULL,
  '[{"id":"a","label":"45°"},{"id":"b","label":"60°"},{"id":"c","label":"90°"},{"id":"d","label":"180°"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Un carré possède une symétrie de rotation d''ordre 4 : il est invariant par les rotations de centre O et d''angles 90°, 180°, 270° et 360° (= 0°). L''angle minimal non nul est donc 90° = 360°/4. Cela signifie qu''une rotation de 90° envoie chaque sommet sur le sommet suivant (A sur B, B sur C, etc.). La réponse A (45°) correspond à l''angle des axes de symétrie entre eux, pas à l''angle de rotation.',
  'Confondre l''angle entre deux axes de symétrie du carré (45°) avec l''angle minimal de rotation qui laisse le carré invariant (90°).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_rotation_proprietes',
  'Rotation — Propriétés et images',
  'Intermediaire',
  'vrai_faux',
  'L''image d''une droite par une rotation est toujours une droite parallèle à la droite initiale.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''image d''une droite par une rotation est bien une droite, mais elle n''est parallèle à la droite initiale que dans deux cas : si l''angle de rotation est 0° (identité) ou 180° (demi-tour). Pour tout autre angle, la droite image fait un angle non nul avec la droite initiale. Par exemple, une rotation de 90° transforme une droite horizontale en droite verticale.',
  'Confondre rotation et translation : c''est la translation qui conserve le parallélisme de manière systématique (l''image d''une droite est toujours une droite parallèle).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9080000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_rotation_proprietes',
  'Rotation — Propriétés et images',
  'Intermediaire',
  'reponse_courte',
  'Un hexagone régulier possède une symétrie de rotation. Quel est l''ordre de cette symétrie de rotation (c''est-à-dire combien de rotations non triviales, plus l''identité, laissent l''hexagone invariant) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6","six","ordre 6"]}'::jsonb,
  'Un hexagone régulier possède une symétrie de rotation d''ordre 6. Les rotations qui le laissent invariant sont celles d''angles 60°, 120°, 180°, 240°, 300° et 360° (identité). L''angle minimal est 360°/6 = 60°. De manière générale, un polygone régulier à n côtés a une symétrie de rotation d''ordre n.',
  'Répondre 3 en ne comptant que les rotations de 120°, 240° et 360°, en confondant l''hexagone avec le triangle. L''hexagone a 6 rotations invariantes, pas 3.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 12. math_solides_patrons (prefix=b0140000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire',
  'Intermediaire',
  'vrai_faux',
  'Le volume d''une sphère de rayon 3 cm est 36π cm³ (environ 113 cm³).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le volume d''une sphère se calcule avec la formule V = (4/3)πr³. Ici : V = (4/3) × π × 3³ = (4/3) × π × 27 = (4 × 27/3) × π = 36π ≈ 36 × 3,14 ≈ 113,04 cm³. L''affirmation est donc correcte. Cette formule est à connaître au CRPE.',
  'Confondre la formule du volume de la sphère (4/3 × πr³) avec l''aire de la sphère (4πr²), ou oublier le coefficient 4/3.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire',
  'Intermediaire',
  'qcm',
  'Un prisme droit a pour base un triangle de côtés 3 cm, 4 cm et 5 cm, et une hauteur de 10 cm. Quelle est son aire latérale ?',
  NULL,
  '[{"id":"a","label":"60 cm²"},{"id":"b","label":"120 cm²"},{"id":"c","label":"132 cm²"},{"id":"d","label":"72 cm²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''aire latérale d''un prisme droit est le produit du périmètre de la base par la hauteur du prisme. Le périmètre de la base triangulaire est 3 + 4 + 5 = 12 cm. L''aire latérale vaut donc 12 × 10 = 120 cm². Les trois faces latérales sont des rectangles de dimensions 3×10, 4×10 et 5×10, soit des aires de 30, 40 et 50 cm². Total : 30 + 40 + 50 = 120 cm².',
  'Calculer l''aire d''une seule face latérale (par exemple 5 × 10 = 50 cm²) et oublier les deux autres faces.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0140000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_solides_patrons',
  'Solides et patrons — Reconnaître, calculer, construire',
  'Intermediaire',
  'reponse_courte',
  'Un cylindre de rayon 4 cm a le même volume qu''un cube de côté 8 cm. Quelle est la hauteur du cylindre, arrondie au dixième ? (π ≈ 3,14)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10,2","10,2 cm","10.2","10.2 cm","environ 10,2 cm"]}'::jsonb,
  'Le volume du cube est V = 8³ = 512 cm³. Le volume du cylindre est V = πr²h = 3,14 × 4² × h = 3,14 × 16 × h = 50,24h. On résout : 50,24h = 512, donc h = 512 / 50,24 ≈ 10,19 cm ≈ 10,2 cm. Ce problème de comparaison de volumes est typique du CRPE.',
  'Utiliser le diamètre (8 cm) au lieu du rayon (4 cm) dans la formule du volume du cylindre, ce qui diviserait la hauteur par 4.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 13. math_symetrie_axiale (prefix=f9110000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions',
  'Intermediaire',
  'qcm',
  'Combien d''axes de symétrie possède un losange non carré ?',
  NULL,
  '[{"id":"a","label":"0"},{"id":"b","label":"1"},{"id":"c","label":"2"},{"id":"d","label":"4"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Un losange non carré possède exactement 2 axes de symétrie : ses deux diagonales. Chaque diagonale partage le losange en deux triangles isocèles symétriques. En revanche, les médiatrices des côtés ne sont pas des axes de symétrie (contrairement au carré). Le carré, qui est un losange particulier, possède 4 axes de symétrie (les 2 diagonales + les 2 médiatrices des côtés).',
  'Répondre 4 en confondant losange et carré, ou répondre 1 en ne considérant qu''une seule diagonale comme axe.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions',
  'Intermediaire',
  'reponse_courte',
  'Le point A a pour coordonnées (5 ; −2). Quelles sont les coordonnées de son image A'' par la symétrie par rapport à l''axe des abscisses ? Donnez votre réponse sous la forme (x ; y).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(5 ; 2)","(5;2)","(5 ;2)","(5; 2)"]}'::jsonb,
  'La symétrie par rapport à l''axe des abscisses (droite y = 0) transforme le point (x ; y) en (x ; −y). Ici, A(5 ; −2) devient A''(5 ; −(−2)) = A''(5 ; 2). L''abscisse reste inchangée et l''ordonnée change de signe. Vérification : le milieu de [AA''] est (5 ; 0), qui appartient bien à l''axe des abscisses.',
  'Changer le signe de l''abscisse au lieu de l''ordonnée : l''élève confond la symétrie par rapport à l''axe des abscisses avec celle par rapport à l''axe des ordonnées.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions',
  'Intermediaire',
  'vrai_faux',
  'Un parallélogramme (qui n''est ni un rectangle, ni un losange, ni un carré) ne possède aucun axe de symétrie.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Un parallélogramme quelconque (non rectangle, non losange) ne possède aucun axe de symétrie. Il possède en revanche un centre de symétrie (le point d''intersection de ses diagonales). Pour acquérir des axes de symétrie, il faut des propriétés supplémentaires : le rectangle non carré a 2 axes (les médiatrices des côtés), le losange non carré a 2 axes (les diagonales), le carré a 4 axes.',
  'Penser que les diagonales du parallélogramme sont des axes de symétrie : c''est faux, les diagonales ne sont des axes de symétrie que pour le losange.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 14. math_symetrie_centrale (prefix=f9050000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions',
  'Intermediaire',
  'qcm',
  'Parmi ces figures, laquelle ne possède PAS de centre de symétrie ?',
  NULL,
  '[{"id":"a","label":"Le rectangle"},{"id":"b","label":"Le parallélogramme"},{"id":"c","label":"Le trapèze isocèle"},{"id":"d","label":"Le cercle"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le trapèze isocèle ne possède pas de centre de symétrie. Il possède un axe de symétrie (la médiatrice des bases) mais pas de centre de symétrie. Le rectangle a pour centre de symétrie l''intersection de ses diagonales. Le parallélogramme aussi. Le cercle a pour centre de symétrie son centre géométrique. Une figure admet un centre de symétrie si et seulement si elle est invariante par une rotation de 180° autour de ce point.',
  'Confondre axe de symétrie et centre de symétrie : le trapèze isocèle a un axe mais pas de centre de symétrie.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions',
  'Intermediaire',
  'reponse_courte',
  'Le point A a pour coordonnées (3 ; −4). Quelles sont les coordonnées de son image A'' par la symétrie centrale de centre O(0 ; 0) ? Donnez votre réponse sous la forme (x ; y).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(-3 ; 4)","(-3;4)","(-3 ;4)","(-3; 4)"]}'::jsonb,
  'La symétrie centrale de centre O(0 ; 0) transforme le point (x ; y) en (−x ; −y). Ici, A(3 ; −4) devient A''(−3 ; 4). Vérification : le milieu de [AA''] est ((3 + (−3))/2 ; (−4 + 4)/2) = (0 ; 0) = O. O est bien le milieu de [AA''], ce qui confirme la construction.',
  'Ne changer le signe que d''une coordonnée (comme dans une symétrie axiale) au lieu des deux : écrire (−3 ; −4) ou (3 ; 4) au lieu de (−3 ; 4).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions',
  'Intermediaire',
  'vrai_faux',
  'La symétrie centrale de centre O est équivalente à une rotation de 180° de centre O.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La symétrie centrale de centre O et la rotation de 180° autour de O sont la même transformation. Dans les deux cas, le point M est envoyé sur le point M'' tel que O est le milieu de [MM''], les points M, O et M'' sont alignés, et OM = OM''. Cette équivalence est fondamentale : elle permet de décomposer la symétrie centrale en une rotation, et réciproquement.',
  'Confondre symétrie centrale et symétrie axiale : la symétrie centrale est une rotation de 180°, alors que la symétrie axiale est une réflexion par rapport à une droite.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 15. math_symetries_transformations (prefix=c0070000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'reponse_courte',
  'La composée de deux symétries axiales par rapport à deux droites sécantes formant un angle de 35° est une rotation. Quel est l''angle de cette rotation ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["70","70°","70 degrés"]}'::jsonb,
  'La composée de deux symétries axiales d''axes sécants est une rotation dont le centre est le point d''intersection des deux axes et dont l''angle est le double de l''angle entre les axes. Ici : 2 × 35° = 70°. Ce résultat fondamental permet de décomposer toute rotation en deux symétries axiales (et inversement), ce qui est un outil puissant en géométrie des transformations.',
  'Prendre l''angle entre les axes (35°) au lieu du double (70°). L''angle de la rotation est toujours le DOUBLE de l''angle entre les axes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'qcm',
  'Parmi les transformations suivantes, laquelle ne conserve PAS les distances ?',
  NULL,
  '[{"id":"a","label":"La rotation"},{"id":"b","label":"La translation"},{"id":"c","label":"L''homothétie de rapport 2"},{"id":"d","label":"La symétrie centrale"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''homothétie de rapport k ≠ ±1 ne conserve pas les distances : elle multiplie toutes les longueurs par |k|. Ici, k = 2, donc toutes les longueurs sont doublées. Les trois autres transformations (rotation, translation, symétrie centrale) sont des isométries : elles conservent toutes les distances. Le critère de conservation des distances est fondamental pour distinguer les isométries des similitudes.',
  'Penser que la symétrie centrale modifie les distances parce qu''elle « retourne » la figure : elle conserve les distances tout en inversant l''orientation.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'vrai_faux',
  'La composée d''une symétrie axiale avec elle-même (la même symétrie appliquée deux fois) est l''identité.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La symétrie axiale est une involution : appliquée deux fois, elle renvoie chaque point à sa position initiale. Si M'' est l''image de M par la symétrie d''axe (d), alors M est l''image de M'' par cette même symétrie. Donc la composée de la symétrie avec elle-même est l''identité. C''est une propriété partagée par la symétrie centrale (qui est aussi une involution).',
  'Penser que la composée de deux symétries axiales donne toujours une translation : c''est le cas uniquement si les axes sont différents et parallèles. Si c''est le même axe, on obtient l''identité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 16. math_tangente_cercle (prefix=f90d0000, Avance, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_tangente_cercle',
  'Tangente au cercle — Propriétés',
  'Avance',
  'reponse_courte',
  'Un cercle de centre O a un rayon de 5 cm. Un point P est situé à 13 cm du centre O. Quelle est la longueur de la tangente [PT] depuis P au cercle (T étant le point de tangence) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12","12 cm"]}'::jsonb,
  'Le triangle OPT est rectangle en T (la tangente est perpendiculaire au rayon). On connaît l''hypoténuse OP = 13 cm et un côté OT = 5 cm (rayon). Par le théorème de Pythagore : PT² = OP² − OT² = 169 − 25 = 144. Donc PT = 12 cm. On reconnaît le triplet pythagoricien (5, 12, 13).',
  'Additionner les carrés au lieu de soustraire : calculer √(169 + 25) au lieu de √(169 − 25). Le triangle est rectangle en T, pas en P.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_tangente_cercle',
  'Tangente au cercle — Propriétés',
  'Avance',
  'qcm',
  'Deux cercles sont tangents extérieurement en un point T. Le premier cercle a un rayon de 4 cm et le second un rayon de 6 cm. Quelle est la distance entre les deux centres ?',
  NULL,
  '[{"id":"a","label":"2 cm"},{"id":"b","label":"10 cm"},{"id":"c","label":"24 cm"},{"id":"d","label":"√52 cm"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Lorsque deux cercles sont tangents extérieurement, la distance entre leurs centres est égale à la somme de leurs rayons. Ici : d = r₁ + r₂ = 4 + 6 = 10 cm. Le point de tangence T est situé sur le segment reliant les deux centres. Si les cercles étaient tangents intérieurement, la distance serait |r₂ − r₁| = 2 cm (réponse A).',
  'Confondre tangence extérieure (somme des rayons) et tangence intérieure (différence des rayons) : l''élève calcule |6 − 4| = 2 cm au lieu de 4 + 6 = 10 cm.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_tangente_cercle',
  'Tangente au cercle — Propriétés',
  'Avance',
  'vrai_faux',
  'Un angle inscrit dans un demi-cercle (dont un côté est un diamètre) est toujours un angle droit.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. C''est le théorème de Thalès (dans sa version « cercle ») : tout angle inscrit dans un cercle qui intercepte un demi-cercle (c''est-à-dire dont les côtés passent par les extrémités d''un diamètre) est un angle droit. L''angle au centre correspondant vaut 180° (c''est un diamètre), donc l''angle inscrit vaut 180°/2 = 90°. Réciproquement, si un angle inscrit est droit, alors il intercepte un demi-cercle.',
  'Confondre le théorème de l''angle inscrit avec d''autres propriétés du cercle, ou penser que l''angle n''est droit que si le sommet est au « sommet » du cercle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 17. math_thales_applications_avancees (prefix=f9030000, Avance, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Avance',
  'qcm',
  'Dans un triangle ABC, M est sur [AB] tel que AM = 5 cm et MB = 10 cm, et N est sur [AC] tel que (MN) // (BC). Si BC = 18 cm, quelle est la longueur MN ?',
  NULL,
  '[{"id":"a","label":"6 cm"},{"id":"b","label":"9 cm"},{"id":"c","label":"12 cm"},{"id":"d","label":"3 cm"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Par le théorème de Thalès, puisque (MN) // (BC) : AM/AB = MN/BC. On a AB = AM + MB = 5 + 10 = 15 cm. Donc AM/AB = 5/15 = 1/3. Par conséquent, MN = BC × 1/3 = 18/3 = 6 cm. Le triangle AMN est une réduction du triangle ABC dans le rapport 1/3.',
  'Utiliser AM/MB = 5/10 = 1/2 comme rapport au lieu de AM/AB = 5/15 = 1/3 : l''élève confond le rapport sur la sécante avec le rapport de la partie au tout.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Avance',
  'vrai_faux',
  'Dans un triangle ABC, si (MN) est parallèle à (BC) avec M sur [AB] et N sur [AC], alors les triangles AMN et ABC sont semblables.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''angle A est commun aux deux triangles. Les droites (MN) et (BC) sont parallèles, donc les angles alternes-internes sont égaux : l''angle AMN = l''angle ABC et l''angle ANM = l''angle ACB. Par le critère AA (deux paires d''angles égaux), les triangles AMN et ABC sont semblables. Le rapport de similitude est AM/AB = AN/AC = MN/BC, ce qui est exactement le théorème de Thalès.',
  'Confondre similarité et égalité : les triangles AMN et ABC sont semblables (même forme, angles égaux) mais pas nécessairement isométriques (taille différente).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9030000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_thales_applications_avancees',
  'Théorème de Thalès — Applications avancées',
  'Avance',
  'reponse_courte',
  'Un photographe de 1,80 m se tient à 4 m d''un lampadaire. Son ombre mesure 2 m. Quelle est la hauteur du lampadaire en mètres ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5,4","5.4","5,4 m","5.4 m","5,40","5.40"]}'::jsonb,
  'Les rayons lumineux du lampadaire sont des droites concourantes (au sommet du lampadaire). Le photographe, son ombre et le lampadaire forment une configuration de Thalès. Posons h la hauteur du lampadaire. La distance du lampadaire au bout de l''ombre du photographe est 4 + 2 = 6 m. Par proportionnalité : h/6 = 1,80/2. Donc h = 1,80 × 6/2 = 10,8/2 = 5,4 m.',
  'Oublier que la distance totale du lampadaire au bout de l''ombre est 4 + 2 = 6 m, et utiliser 4 m au lieu de 6 m dans le rapport.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 18. math_transformations_composees (prefix=f90f0000, Avance, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_transformations_composees',
  'Transformations composées — Composition et effets',
  'Avance',
  'qcm',
  'On compose une rotation de 90° dans le sens direct avec une rotation de 90° dans le sens indirect, les deux ayant le même centre O. Quel est le résultat ?',
  NULL,
  '[{"id":"a","label":"L''identité"},{"id":"b","label":"Une rotation de 180°"},{"id":"c","label":"Une symétrie axiale"},{"id":"d","label":"Une translation"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La composée de deux rotations de même centre est une rotation d''angle égal à la somme des angles. Ici : +90° + (−90°) = 0°. Une rotation de 0° est l''identité (chaque point reste à sa place). Autrement dit, une rotation de 90° dans le sens direct et une rotation de 90° dans le sens indirect sont réciproques l''une de l''autre : elles s''annulent mutuellement.',
  'Penser que le résultat est une rotation de 180° en additionnant les valeurs absolues des angles (90 + 90 = 180) au lieu de tenir compte des sens opposés.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_transformations_composees',
  'Transformations composées — Composition et effets',
  'Avance',
  'vrai_faux',
  'La composée d''une translation et d''une rotation (de centres éventuellement différents) est toujours une rotation.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux en général. La composée d''une translation et d''une rotation est une rotation (de même angle mais de centre différent) sauf si l''angle de rotation est 0° (auquel cas la rotation est l''identité et la composée est la translation elle-même). Plus précisément, si l''angle de la rotation est non nul, la composée est bien une rotation du même angle, mais dont le centre est décalé. Si la rotation est de 360° (identité), le résultat est une translation.',
  'Penser que le résultat est toujours une translation : c''est faux, la nature du résultat dépend de l''angle de la rotation.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_transformations_composees',
  'Transformations composées — Composition et effets',
  'Avance',
  'reponse_courte',
  'On compose trois rotations de même centre O et d''angles respectifs 40°, 110° et 30° dans le sens direct. Quel est l''angle de la rotation résultante ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["180","180°","180 degrés"]}'::jsonb,
  'La composée de rotations de même centre est une rotation de même centre dont l''angle est la somme des angles. Ici : 40° + 110° + 30° = 180°. La rotation résultante est une rotation de 180° de centre O, ce qui est équivalent à une symétrie centrale de centre O. Ce résultat est remarquable car il montre que la composée de ces trois rotations produit un simple demi-tour.',
  'Multiplier les angles au lieu de les additionner, ou se tromper dans l''addition : 40 + 110 + 30 = 180, pas 150 ni 200.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 19. math_triangles_proprietes (prefix=f7050000, Intermediaire, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables',
  'Intermediaire',
  'qcm',
  'Un triangle ABC a ses trois angles égaux. Quelle est la mesure de chaque angle et quelle est la nature de ce triangle ?',
  NULL,
  '[{"id":"a","label":"60° — triangle équilatéral"},{"id":"b","label":"90° — triangle rectangle"},{"id":"c","label":"45° — triangle isocèle"},{"id":"d","label":"120° — triangle obtusangle"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Si les trois angles sont égaux et que leur somme vaut 180°, chaque angle mesure 180° / 3 = 60°. Un triangle dont les trois angles mesurent 60° est un triangle équilatéral (et réciproquement, un triangle dont les trois côtés sont égaux a ses trois angles égaux à 60°). Ce résultat est la conséquence directe de la propriété fondamentale : la somme des angles d''un triangle vaut 180°.',
  'Diviser 360° par 3 au lieu de 180° par 3, obtenant 120° par angle, ce qui est impossible car un triangle ne peut pas avoir trois angles obtus.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables',
  'Intermediaire',
  'vrai_faux',
  'Un triangle peut avoir deux angles obtus (supérieurs à 90°).',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Si un triangle avait deux angles obtus, leur somme dépasserait déjà 180° (puisque chaque angle obtus est supérieur à 90°, leur somme serait supérieure à 180°), ce qui est impossible car la somme des trois angles d''un triangle vaut exactement 180°. Un triangle peut avoir au maximum un seul angle obtus (triangle obtusangle). Il peut aussi n''en avoir aucun : si tous les angles sont aigus, c''est un triangle acutangle ; si un angle vaut 90°, c''est un triangle rectangle.',
  'Penser qu''un triangle très « aplati » a deux angles obtus : en réalité, un triangle aplati a deux angles très aigus et un angle proche de 180°.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7050000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_triangles_proprietes',
  'Triangles — Propriétés, angles et cas remarquables',
  'Intermediaire',
  'reponse_courte',
  'Le triangle 30-60-90 a une propriété remarquable : le côté opposé à l''angle de 30° mesure la moitié de l''hypoténuse. Si l''hypoténuse mesure 14 cm, quelle est la longueur du côté opposé à l''angle de 30° ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7","7 cm"]}'::jsonb,
  'Dans un triangle rectangle 30-60-90, le côté opposé à l''angle de 30° vaut exactement la moitié de l''hypoténuse. Ici, l''hypoténuse mesure 14 cm, donc le côté opposé à 30° mesure 14/2 = 7 cm. Cette propriété découle de la relation sin(30°) = 1/2. Le troisième côté (opposé à 60°) vaudrait 7√3 ≈ 12,12 cm.',
  'Confondre le côté opposé à 30° avec le côté opposé à 60° : c''est le côté opposé à 30° (le plus petit des deux cathètes) qui vaut la moitié de l''hypoténuse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 20. math_triangles_semblables (prefix=f9070000, Avance, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_triangles_semblables',
  'Triangles semblables — Critères et applications',
  'Avance',
  'qcm',
  'Deux triangles semblables ont un rapport de similitude k = 4. Si le triangle original a une aire de 9 cm², quelle est l''aire du triangle image ?',
  NULL,
  '[{"id":"a","label":"36 cm²"},{"id":"b","label":"144 cm²"},{"id":"c","label":"72 cm²"},{"id":"d","label":"81 cm²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Lorsque deux figures sont semblables avec un rapport de similitude k, les longueurs sont multipliées par k et les aires sont multipliées par k². Ici, k = 4, donc l''aire est multipliée par 4² = 16. L''aire du triangle image est 9 × 16 = 144 cm². La réponse A (36 = 9 × 4) multiplie par k au lieu de k². La réponse D (81 = 9²) met l''aire au carré au lieu de multiplier par k².',
  'Multiplier l''aire par k au lieu de k² : l''élève calcule 9 × 4 = 36 cm² en oubliant que les aires varient avec le carré du rapport de similitude.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_triangles_semblables',
  'Triangles semblables — Critères et applications',
  'Avance',
  'vrai_faux',
  'Deux triangles isométriques (superposables) sont toujours semblables.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Deux triangles isométriques ont les mêmes longueurs de côtés et les mêmes angles : ils satisfont le critère SSS de similitude avec un rapport k = 1. L''isométrie est un cas particulier de la similitude (rapport de similitude égal à 1). En revanche, la réciproque est fausse : deux triangles semblables ne sont pas nécessairement isométriques (ils peuvent avoir des tailles différentes).',
  'Confondre l''implication et sa réciproque : « isométrique ⟹ semblable » est vrai, mais « semblable ⟹ isométrique » est faux (sauf si k = 1).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9070000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_triangles_semblables',
  'Triangles semblables — Critères et applications',
  'Avance',
  'reponse_courte',
  'Deux triangles semblables ont des périmètres de 12 cm et 36 cm. Quel est leur rapport de similitude ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","1/3","un tiers","k = 3"]}'::jsonb,
  'Le rapport de similitude entre deux triangles semblables est le rapport entre les longueurs homologues. Puisque le périmètre est une longueur (somme de longueurs), le rapport des périmètres est égal au rapport de similitude. Ici, k = 36/12 = 3 (le second triangle est 3 fois plus grand que le premier). On peut aussi écrire k = 1/3 si on considère le rapport du plus petit au plus grand.',
  'Calculer le rapport des aires des périmètres (36/12)² = 9 au lieu du rapport des longueurs k = 36/12 = 3. Le rapport des périmètres est directement le rapport de similitude.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 21. math_vecteurs_introduction (prefix=f9060000, Avance, free)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations',
  'Avance',
  'reponse_courte',
  'Soit u(3 ; −1) et v(−2 ; 4). Calculez les coordonnées du vecteur 2u − v. Donnez votre réponse sous la forme (x ; y).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(8 ; -6)","(8;-6)","(8 ;-6)","(8; -6)","(8 ; −6)"]}'::jsonb,
  'On calcule d''abord 2u = 2 × (3 ; −1) = (6 ; −2). Puis 2u − v = (6 ; −2) − (−2 ; 4) = (6 − (−2) ; −2 − 4) = (6 + 2 ; −6) = (8 ; −6). Pour soustraire un vecteur, on change le signe de chaque coordonnée puis on additionne. Cette opération est fondamentale pour calculer des vecteurs dans un repère.',
  'Se tromper dans la soustraction avec les nombres négatifs : calculer 6 − (−2) comme 6 − 2 = 4 au lieu de 6 + 2 = 8.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations',
  'Avance',
  'qcm',
  'Les vecteurs u(6 ; −3) et v(−4 ; 2) sont-ils colinéaires ?',
  NULL,
  '[{"id":"a","label":"Oui, car 6 × 2 − (−3) × (−4) = 12 − 12 = 0"},{"id":"b","label":"Non, car 6 × 2 + (−3) × (−4) = 24 ≠ 0"},{"id":"c","label":"Oui, car 6 + (−4) = 2 et −3 + 2 = −1"},{"id":"d","label":"Non, car ils n''ont pas la même norme"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Deux vecteurs u(a ; b) et v(c ; d) sont colinéaires si et seulement si le déterminant ad − bc = 0. Ici : 6 × 2 − (−3) × (−4) = 12 − 12 = 0. Les vecteurs sont colinéaires. On peut vérifier : v = −(2/3) × u, c''est-à-dire (−4 ; 2) = −(2/3) × (6 ; −3) = (−4 ; 2). La colinéarité signifie que les vecteurs ont la même direction (parallèles).',
  'Se tromper dans le calcul du déterminant en additionnant au lieu de soustraire : ad + bc au lieu de ad − bc.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_vecteurs_introduction',
  'Vecteurs — Introduction et opérations',
  'Avance',
  'vrai_faux',
  'La norme du vecteur u(3 ; 4) est 5.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La norme d''un vecteur u(a ; b) est ||u|| = √(a² + b²). Ici : ||u|| = √(3² + 4²) = √(9 + 16) = √25 = 5. On reconnaît le triplet pythagoricien (3, 4, 5). La norme d''un vecteur représente sa longueur. Cette formule est une application directe du théorème de Pythagore : le vecteur et ses composantes forment un triangle rectangle.',
  'Additionner les coordonnées sans les mettre au carré : 3 + 4 = 7 au lieu de √(9 + 16) = 5.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
