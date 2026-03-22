-- Série : Géométrie dans l'espace — Sections et perspectives (7 exercices, Avancé, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives', 'Avance', 'qcm',
  'Quelle forme obtient-on en coupant un cube par un plan parallèle à une face ?',
  NULL,
  '[{"id":"A","label":"Un triangle"},{"id":"B","label":"Un carré"},{"id":"C","label":"Un rectangle"},{"id":"D","label":"Un hexagone"}]',
  '{"mode":"single","value":"B"}',
  'Un plan parallèle à une face d''un cube coupe toutes les arêtes perpendiculaires à cette face à la même hauteur relative. La section obtenue est donc un quadrilatère dont les quatre côtés sont égaux et les quatre angles droits : c''est un carré, de même dimension que la face du cube.',
  'Confondre avec un rectangle : un rectangle n''apparaît que si le plan est parallèle à une arête sans être parallèle à une face complète.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives', 'Avance', 'vrai_faux',
  'La section d''un cylindre par un plan perpendiculaire à son axe est toujours un cercle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}',
  'Un cylindre de révolution est engendré par la rotation d''un segment autour d''un axe. Tout plan perpendiculaire à cet axe coupe le cylindre selon un cercle dont le rayon est égal au rayon de base du cylindre. Ce résultat est indépendant de la position du plan le long de l''axe.',
  'Penser qu''on pourrait obtenir une ellipse : l''ellipse apparaît lorsque le plan est oblique par rapport à l''axe, pas perpendiculaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives', 'Avance', 'qcm',
  'Quelle forme obtient-on en coupant un cône de révolution par un plan parallèle à sa base ?',
  NULL,
  '[{"id":"A","label":"Une ellipse"},{"id":"B","label":"Un cercle"},{"id":"C","label":"Un triangle"},{"id":"D","label":"Une parabole"}]',
  '{"mode":"single","value":"B"}',
  'Un cône de révolution possède une symétrie axiale. Un plan parallèle à la base coupe le cône selon une figure semblable à la base, c''est-à-dire un cercle. Ce cercle est plus petit que la base, son rayon étant proportionnel à la distance entre le plan de coupe et le sommet du cône (théorème de Thalès).',
  'Confondre avec une ellipse : une ellipse est obtenue lorsque le plan de coupe est incliné par rapport à la base, sans être parallèle ni passer par le sommet.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives', 'Avance', 'reponse_courte',
  'Un cube d''arête 6 cm est coupé par un plan passant par les milieux de trois arêtes issues d''un même sommet. Quelle est la forme de la section ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["triangle","triangle equilateral","triangle équilatéral"]}',
  'Les trois milieux des arêtes issues d''un même sommet sont chacun à 3 cm de ce sommet. Par symétrie du cube, ces trois points sont équidistants les uns des autres. La distance entre deux milieux vaut 3√2 cm (diagonale d''un carré de côté 3 cm). La section est donc un triangle équilatéral de côté 3√2 cm.',
  'Penser qu''il s''agit d''un triangle quelconque ou isocèle : la symétrie du cube par rapport à la grande diagonale passant par ce sommet garantit l''équilatéralité.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives', 'Avance', 'qcm',
  'En perspective cavalière, les droites parallèles dans l''espace sont représentées par :',
  NULL,
  '[{"id":"A","label":"Des droites parallèles sur le dessin"},{"id":"B","label":"Des droites convergentes"},{"id":"C","label":"Des droites perpendiculaires"},{"id":"D","label":"Des courbes"}]',
  '{"mode":"single","value":"A"}',
  'La perspective cavalière est une projection parallèle oblique. Sa propriété fondamentale est de conserver le parallélisme : deux droites parallèles dans l''espace restent parallèles sur la représentation. C''est ce qui la distingue de la perspective conique (ou centrale) où les droites parallèles convergent vers un point de fuite.',
  'Confondre avec la perspective conique (point de fuite) où les droites parallèles convergent : en perspective cavalière, le parallélisme est toujours conservé.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives', 'Avance', 'reponse_courte',
  'Un prisme droit a une base pentagonale régulière. Combien a-t-il de faces, d''arêtes et de sommets ? Vérifiez avec la formule d''Euler.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7 faces, 15 arêtes, 10 sommets","7 faces 15 arêtes 10 sommets","7"]}',
  'Un prisme droit à base pentagonale possède : 2 bases pentagonales + 5 faces latérales rectangulaires = 7 faces ; 5 arêtes sur chaque base + 5 arêtes latérales = 15 arêtes ; 5 sommets sur chaque base = 10 sommets. Vérification par la formule d''Euler pour les polyèdres convexes : S - A + F = 10 - 15 + 7 = 2 ✓.',
  'Oublier de compter les deux bases comme des faces, ou confondre le nombre d''arêtes latérales avec le nombre total d''arêtes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02a0000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_geometrie_espace_sections',
  'Géométrie dans l''espace — Sections et perspectives', 'Avance', 'qcm',
  'On coupe un cube par un plan passant par un sommet et par les milieux des deux arêtes opposées à ce sommet. La section obtenue est :',
  NULL,
  '[{"id":"A","label":"Un triangle isocèle"},{"id":"B","label":"Un triangle rectangle"},{"id":"C","label":"Un rectangle"},{"id":"D","label":"Un pentagone"}]',
  '{"mode":"single","value":"A"}',
  'Le plan passe par un sommet du cube et par les milieux de deux arêtes qui ne passent pas par ce sommet. Par la symétrie du cube, les deux segments reliant le sommet à chacun des deux milieux ont la même longueur, ce qui forme un triangle isocèle. Le troisième côté (reliant les deux milieux) a une longueur différente des deux premiers.',
  'Penser que la section est un triangle équilatéral : cela n''est le cas que lorsque le plan passe par les milieux de trois arêtes issues d''un même sommet, pas lorsqu''il passe par un sommet et deux milieux d''arêtes opposées.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
