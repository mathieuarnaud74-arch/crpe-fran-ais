-- Seed: Programmes de construction — Rédiger et interpréter (géométrie, intermédiaire, premium)
-- 7 exercices : 4 QCM, 1 vrai/faux, 2 réponses courtes

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter', 'Intermediaire', 'qcm',
  'Quel programme de construction permet de tracer un carré ABCD de côté 5 cm ?',
  NULL,
  '[{"id":"a","label":"Tracer un segment [AB] de 5 cm. Tracer la perpendiculaire à (AB) passant par A. Reporter 5 cm sur cette perpendiculaire pour placer D. Tracer la perpendiculaire à (AB) passant par B. Reporter 5 cm sur cette perpendiculaire pour placer C. Tracer les segments [DC]."},{"id":"b","label":"Tracer un segment [AB] de 5 cm. Tracer un segment [AD] de 5 cm. Tracer un segment [DC] de 5 cm. Tracer un segment [CB] de 5 cm."},{"id":"c","label":"Tracer un segment [AB] de 5 cm. À l''aide du compas, tracer un arc de cercle de centre A et de rayon 5 cm. Tracer un arc de cercle de centre B et de rayon 5 cm. Relier les points d''intersection."},{"id":"d","label":"Tracer un segment [AB] de 5 cm. Tracer la perpendiculaire à (AB) passant par A. Reporter 5 cm pour placer D. Tracer un segment [DC] de 5 cm parallèle à [AB]. Relier C à B."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour construire un carré, il ne suffit pas de tracer quatre segments de même longueur : il faut garantir que les quatre angles sont droits. Le programme (a) utilise deux perpendiculaires (à l''aide de l''équerre) pour s''assurer que les angles en A et en B sont droits. Le programme (b) ne construit aucun angle droit, on obtient un quadrilatère quelconque aux côtés égaux (un losange, pas nécessairement un carré). Le programme (c) utilise le compas mais ne garantit pas d''angle droit. Le programme (d) est presque correct mais l''étape « tracer un segment parallèle » sans outil de construction précis est insuffisante : il faudrait une seconde perpendiculaire en D.',
  'Penser qu''il suffit de tracer quatre segments de 5 cm pour obtenir un carré, en oubliant que les angles droits doivent être explicitement construits à l''aide d''une équerre ou de perpendiculaires.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter', 'Intermediaire', 'vrai_faux',
  'Le programme suivant produit un triangle équilatéral : « Tracer un segment [AB] de 6 cm. Tracer le cercle de centre A et de rayon 6 cm. Tracer le cercle de centre B et de rayon 6 cm. Nommer C un point d''intersection des deux cercles. Tracer le triangle ABC. »',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Ce programme est la construction classique du triangle équilatéral au compas. Le point C, intersection des deux cercles, se trouve à 6 cm de A (car il est sur le cercle de centre A et de rayon 6 cm) et à 6 cm de B (car il est sur le cercle de centre B et de rayon 6 cm). On a donc AC = BC = AB = 6 cm : le triangle ABC a ses trois côtés égaux, c''est bien un triangle équilatéral. Cette construction fondamentale est au programme du cycle 3 et constitue un classique du CRPE.',
  'Confondre cette construction avec celle d''un triangle isocèle, ou ne pas reconnaître que les deux cercles de même rayon (égal à la longueur du segment) garantissent l''équilatéralité.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter', 'Intermediaire', 'qcm',
  'Un élève de CM1 suit ce programme : « Trace un segment [AB] de 4 cm. Place le milieu M de [AB]. Trace le cercle de centre M et de rayon 3 cm. » Quelle affirmation est correcte concernant la figure obtenue ?',
  NULL,
  '[{"id":"a","label":"Le cercle passe par les points A et B."},{"id":"b","label":"Les points A et B sont à l''extérieur du cercle."},{"id":"c","label":"Les points A et B sont à l''intérieur du cercle, qui ne passe ni par A ni par B."},{"id":"d","label":"Le point A est sur le cercle et le point B est à l''intérieur."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le milieu M de [AB] est situé à 2 cm de A et à 2 cm de B (car AB = 4 cm). Le cercle a pour centre M et pour rayon 3 cm. Un point est à l''intérieur du cercle si sa distance au centre est inférieure au rayon. Or MA = MB = 2 cm < 3 cm (le rayon). Donc A et B sont tous les deux à l''intérieur du cercle. Le cercle ne passe pas par A ni par B car il faudrait pour cela que MA = 3 cm ou MB = 3 cm, ce qui n''est pas le cas. Cette question mobilise la définition du cercle comme ensemble des points situés à une distance donnée (le rayon) du centre.',
  'Confondre « être à l''intérieur du cercle » et « être sur le cercle ». Un point est sur le cercle si et seulement si sa distance au centre est exactement égale au rayon.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter', 'Intermediaire', 'reponse_courte',
  'Voici un programme de construction : « 1. Tracer un segment [AB] de 5 cm. 2. Tracer la médiatrice de [AB]. 3. Placer le point C sur la médiatrice, à 4 cm du point A. 4. Tracer le triangle ABC. » Quelle est la nature du triangle ABC ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["isocèle en C","isocèle","triangle isocèle","triangle isocèle en C","isocele","isocele en C","triangle isocele"]}'::jsonb,
  'La médiatrice d''un segment est l''ensemble des points équidistants des deux extrémités de ce segment. Le point C est placé sur la médiatrice de [AB], donc par définition de la médiatrice, CA = CB. L''énoncé précise que CA = 4 cm, donc CB = 4 cm également. Le triangle ABC a deux côtés égaux (CA = CB = 4 cm) et un troisième côté AB = 5 cm : c''est un triangle isocèle en C. Cette propriété caractéristique de la médiatrice est fondamentale au cycle 3 et fréquemment mobilisée au CRPE.',
  'Oublier la propriété fondamentale de la médiatrice (équidistance aux extrémités) et ne pas reconnaître que C étant sur la médiatrice de [AB] implique CA = CB.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter', 'Intermediaire', 'qcm',
  'Un élève veut tracer un losange ABCD. Il écrit le programme suivant : « 1. Tracer un segment [AC] de 6 cm. 2. Tracer un segment [BD] de 4 cm, perpendiculaire à [AC] en son milieu. 3. Relier A, B, C et D. » Quelle erreur a-t-il commise dans son programme ?',
  NULL,
  '[{"id":"a","label":"Les diagonales d''un losange ne sont pas perpendiculaires, son programme est donc faux dès le départ."},{"id":"b","label":"Il manque la condition que [BD] soit aussi coupé en son milieu par [AC] : les diagonales d''un losange se coupent mutuellement en leur milieu."},{"id":"c","label":"Il faudrait que les deux diagonales aient la même longueur pour obtenir un losange."},{"id":"d","label":"Le programme est correct, il produit bien un losange."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans un losange, les diagonales sont perpendiculaires ET se coupent mutuellement en leur milieu. Le programme de l''élève indique que [BD] est perpendiculaire à [AC] en son milieu (le milieu de [AC]), mais il ne précise pas que le point d''intersection est aussi le milieu de [BD]. Sans cette condition, le point d''intersection pourrait couper [BD] en deux parties inégales, et le quadrilatère obtenu serait un cerf-volant (deux paires de côtés consécutifs égaux) mais pas nécessairement un losange (quatre côtés égaux). Pour corriger le programme, il faudrait écrire : « Tracer [BD] perpendiculaire à [AC], de sorte que les deux segments se coupent en leur milieu. »',
  'Croire que deux diagonales perpendiculaires suffisent à définir un losange, sans vérifier qu''elles se coupent mutuellement en leur milieu. Cette confusion entre losange et cerf-volant est une erreur classique.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter', 'Intermediaire', 'reponse_courte',
  'Rédigez un programme de construction pour tracer un rectangle ABCD de longueur 6 cm et de largeur 4 cm, en utilisant uniquement une règle graduée et une équerre. Indiquez les étapes numérotées.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1. Tracer un segment [AB] de 6 cm. 2. Tracer la perpendiculaire à (AB) passant par A à l''aide de l''équerre. Reporter 4 cm pour placer D. 3. Tracer la perpendiculaire à (AB) passant par B à l''aide de l''équerre. Reporter 4 cm pour placer C. 4. Tracer le segment [DC].","perpendiculaire équerre","perpendiculaire"]}'::jsonb,
  'Pour construire un rectangle, il faut garantir la présence de quatre angles droits. L''équerre est l''instrument qui permet de tracer des perpendiculaires et donc de matérialiser ces angles droits. Un programme correct comporte les étapes suivantes : 1. Tracer un segment [AB] de 6 cm (la longueur). 2. À l''aide de l''équerre, tracer la perpendiculaire à la droite (AB) passant par le point A. Sur cette perpendiculaire, reporter 4 cm à partir de A et placer le point D. 3. À l''aide de l''équerre, tracer la perpendiculaire à la droite (AB) passant par le point B. Sur cette perpendiculaire, reporter 4 cm à partir de B (du même côté que D) et placer le point C. 4. Tracer le segment [DC]. Le rectangle ABCD est obtenu avec AB = DC = 6 cm et AD = BC = 4 cm. Chaque angle est droit car construit à l''équerre.',
  'Oublier d''utiliser l''équerre pour construire les angles droits, ou ne pas préciser de quel côté placer les points C et D (ce qui peut donner un quadrilatère croisé).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0150000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_programmes_construction',
  'Programmes de construction — Rédiger et interpréter', 'Intermediaire', 'qcm',
  'Un programme de construction permet de tracer un hexagone régulier inscrit dans un cercle de rayon 4 cm en reportant 6 fois la longueur du rayon sur le cercle à l''aide du compas. Quelle propriété géométrique justifie que chaque côté de l''hexagone mesure exactement 4 cm ?',
  NULL,
  '[{"id":"a","label":"Le théorème de Pythagore appliqué aux triangles formés par les rayons et les côtés."},{"id":"b","label":"Les six triangles formés par le centre et les sommets consécutifs sont équilatéraux, donc leur côté est égal au rayon du cercle."},{"id":"c","label":"Le théorème de Thalès appliqué aux diagonales de l''hexagone."},{"id":"d","label":"Le périmètre du cercle divisé par 6 donne la longueur de chaque côté."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Lorsqu''on inscrit un hexagone régulier dans un cercle de rayon r, on peut le décomposer en 6 triangles dont les sommets sont le centre du cercle et deux sommets consécutifs de l''hexagone. Chacun de ces triangles a deux côtés égaux au rayon r (ce sont des rayons du cercle). L''angle au centre de chaque triangle vaut 360° ÷ 6 = 60°. Un triangle isocèle dont l''angle au sommet principal mesure 60° a ses deux angles de base égaux à (180° − 60°) ÷ 2 = 60° : c''est donc un triangle équilatéral. Tous ses côtés mesurent r = 4 cm, y compris le côté de l''hexagone. C''est pourquoi la construction au compas fonctionne : en reportant le rayon sur le cercle, on obtient exactement les 6 sommets de l''hexagone régulier. Cette propriété remarquable est un classique de la géométrie du cycle 3.',
  'Confondre le périmètre du cercle (2πr) avec 6 × r. En réalité, le périmètre du cercle (≈ 25,1 cm pour r = 4 cm) est supérieur au périmètre de l''hexagone inscrit (6 × 4 = 24 cm). La justification correcte repose sur les triangles équilatéraux, pas sur une division du périmètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
