-- Série : Patrons de solides — Construction et reconnaissance (7 exercices, Intermédiaire, free)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000001',
  'Mathematiques', 'geometrie', 'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance', 'Intermediaire',
  'qcm',
  'Combien existe-t-il de patrons différents du cube (à rotation et symétrie près) ?',
  NULL,
  '[{"id":"a","label":"6"},{"id":"b","label":"8"},{"id":"c","label":"11"},{"id":"d","label":"14"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Il existe exactement 11 patrons différents du cube, si l''on ne compte pas les patrons obtenus par rotation ou retournement d''un patron existant. Ces 11 configurations sont les seules manières de disposer 6 carrés reliés par leurs arêtes dans le plan, de sorte qu''on puisse les replier pour former un cube. Ce résultat classique se démontre par énumération exhaustive.',
  'Répondre 6 en pensant qu''il y a un patron par face. L''élève confond le nombre de faces du cube avec le nombre de patrons possibles, ce sont deux notions bien distinctes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000002',
  'Mathematiques', 'geometrie', 'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance', 'Intermediaire',
  'vrai_faux',
  'Le patron d''un pavé droit (parallélépipède rectangle) est composé de 6 rectangles, dont les faces opposées sont identiques.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Un pavé droit possède 6 faces rectangulaires, groupées en 3 paires de faces opposées identiques (même dimensions). Son patron se compose donc de ces 6 rectangles disposés dans le plan de sorte qu''on puisse les replier pour reconstituer le pavé. Chaque paire de faces opposées a les mêmes dimensions : longueur × largeur, longueur × hauteur, et largeur × hauteur.',
  'Penser que toutes les faces du pavé droit sont identiques. L''élève confond le pavé droit avec le cube. Dans un pavé droit quelconque, il y a trois paires de faces distinctes (sauf cas particulier où deux dimensions sont égales).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000003',
  'Mathematiques', 'geometrie', 'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance', 'Intermediaire',
  'qcm',
  'Le patron d''un cylindre de révolution est composé de :',
  NULL,
  '[{"id":"a","label":"Deux cercles et un rectangle"},{"id":"b","label":"Deux cercles et un triangle"},{"id":"c","label":"Un cercle et un rectangle"},{"id":"d","label":"Deux rectangles et un cercle"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le cylindre de révolution possède deux bases circulaires (les deux disques) et une surface latérale. Quand on « déroule » la surface latérale, on obtient un rectangle dont la largeur est la hauteur du cylindre et la longueur est le périmètre du cercle de base (2πr). Le patron complet est donc constitué de deux disques identiques et d''un rectangle. La longueur du rectangle doit correspondre exactement à la circonférence des cercles pour que le patron se referme correctement.',
  'Choisir un seul cercle au lieu de deux. L''élève oublie que le cylindre possède deux bases (haut et bas), ou confond le cylindre avec le cône qui, lui, n''a qu''une seule base circulaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000004',
  'Mathematiques', 'geometrie', 'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance', 'Intermediaire',
  'qcm',
  'Le patron d''un cône de révolution est composé de :',
  NULL,
  '[{"id":"a","label":"Un disque et un secteur de disque (portion de disque)"},{"id":"b","label":"Un cercle et un rectangle"},{"id":"c","label":"Un triangle et un cercle"},{"id":"d","label":"Deux cercles de rayons différents"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le cône de révolution possède une base circulaire (un disque) et une surface latérale courbe. Quand on déroule la surface latérale dans le plan, on obtient un secteur de disque (aussi appelé secteur angulaire) dont le rayon est égal à la génératrice du cône. L''arc du secteur a une longueur égale au périmètre du cercle de base. Le patron est donc constitué d''un disque (la base) et d''un secteur de disque (la surface latérale).',
  'Choisir « un triangle et un cercle » en pensant que la surface latérale est un triangle. L''élève visualise le cône de profil (qui ressemble à un triangle) et confond la vue de profil avec le patron déplié.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000005',
  'Mathematiques', 'geometrie', 'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance', 'Intermediaire',
  'reponse_courte',
  'La formule d''Euler pour les polyèdres convexes relie le nombre de sommets (S), d''arêtes (A) et de faces (F) par la relation S − A + F = 2. Un cube possède 8 sommets et 6 faces. Combien a-t-il d''arêtes ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12","12 arêtes"]}'::jsonb,
  'On applique la formule d''Euler : S − A + F = 2. Avec S = 8 et F = 6, on obtient : 8 − A + 6 = 2, soit 14 − A = 2, donc A = 12. Le cube possède bien 12 arêtes. On peut vérifier : chaque face carrée a 4 arêtes, soit 6 × 4 = 24 arêtes comptées, mais chaque arête est partagée par 2 faces, donc 24 ÷ 2 = 12 arêtes distinctes.',
  'Calculer 6 × 4 = 24 sans diviser par 2. L''élève compte les arêtes de chaque face mais oublie que chaque arête est commune à exactement deux faces, ce qui conduit à compter chaque arête en double.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000006',
  'Mathematiques', 'geometrie', 'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance', 'Intermediaire',
  'qcm',
  'On dispose d''un patron composé de 4 triangles équilatéraux reliés entre eux. À quel solide correspond ce patron ?',
  NULL,
  '[{"id":"a","label":"Un tétraèdre régulier"},{"id":"b","label":"Une pyramide à base carrée"},{"id":"c","label":"Un prisme triangulaire"},{"id":"d","label":"Un octaèdre régulier"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Un tétraèdre régulier est un polyèdre composé de 4 faces triangulaires équilatérales, 4 sommets et 6 arêtes. Son patron est donc formé de 4 triangles équilatéraux. C''est le plus simple des solides de Platon. On peut vérifier avec la formule d''Euler : S − A + F = 4 − 6 + 4 = 2. La pyramide à base carrée a 5 faces (1 carrée + 4 triangulaires), le prisme triangulaire a 5 faces et l''octaèdre a 8 faces.',
  'Confondre avec la pyramide à base carrée. L''élève ne réalise pas qu''une pyramide à base carrée nécessite un carré en plus des triangles. Le tétraèdre est une pyramide dont la base est elle-même un triangle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9090000-0000-0000-0000-000000000007',
  'Mathematiques', 'geometrie', 'math_patron_solides',
  'Patrons de solides — Construction et reconnaissance', 'Intermediaire',
  'reponse_courte',
  'On souhaite fabriquer une boîte sans couvercle en forme de pavé droit de dimensions 20 cm × 15 cm × 10 cm (longueur × largeur × hauteur). Quelle est l''aire minimale de carton nécessaire (en cm²), sachant que la boîte n''a pas de face supérieure ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1000","1000 cm²","1 000","1 000 cm²"]}'::jsonb,
  'La boîte sans couvercle possède 5 faces : le fond (20 × 15 = 300 cm²), deux faces latérales de 20 × 10 = 200 cm² chacune, et deux faces latérales de 15 × 10 = 150 cm² chacune. L''aire totale est : 300 + 2 × 200 + 2 × 150 = 300 + 400 + 300 = 1 000 cm². C''est l''aire minimale nécessaire, sans compter les languettes de collage ni les pertes de découpe.',
  'Calculer l''aire totale du pavé fermé (avec 6 faces) : 2 × (20 × 15 + 20 × 10 + 15 × 10) = 1 300 cm². L''élève oublie que la boîte n''a pas de couvercle et compte la face supérieure en trop.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
