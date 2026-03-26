-- Série : Constructions géométriques aux instruments
-- Subdomain : geometrie | topic_key : math_constructions_geometrie_instruments
-- 10 questions | UUIDs : 26d30000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'qcm',
  'Quel instrument permet de tracer une droite perpendiculaire à une droite donnée passant par un point donné ?',
  NULL,
  '[{"id":"a","label":"Le compas seul"},{"id":"b","label":"L''équerre (ou le rapporteur)"},{"id":"c","label":"La règle seul"},{"id":"d","label":"Le compas et la règle, mais pas l''équerre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''équerre permet de tracer des angles droits (90°) et donc des droites perpendiculaires. Posée contre la droite donnée avec le coin droit au point donné, elle permet de tracer directement la perpendiculaire. Le rapporteur peut aussi mesurer 90°. On peut aussi construire une perpendiculaire au compas et à la règle (via la médiatrice d''un segment), mais l''équerre est l''outil direct au cycle 3.',
  'Croire que le compas seul suffit. Le compas trace des cercles et des arcs ; la perpendiculaire directe nécessite l''équerre (ou une construction au compas + règle en plusieurs étapes).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La médiatrice d''un segment [AB] est la droite perpendiculaire à [AB] passant par son milieu.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'La médiatrice d''un segment [AB] est la droite qui est à la fois perpendiculaire au segment et passe par son milieu. Elle est le lieu géométrique des points équidistants de A et de B. Elle peut être construite au compas : en traçant deux arcs de cercle de même rayon (supérieur à AB/2) centrés en A et en B, les deux points d''intersection donnent deux points de la médiatrice.',
  'Confondre médiatrice et hauteur (d''un triangle) ou axe de symétrie. La médiatrice est propre à un segment ; la hauteur est relative à un triangle. Ces notions sont souvent confondues au cycle 3.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'qcm',
  'Pour construire la médiatrice d''un segment [AB] au compas et à la règle, quelle est la première étape correcte ?',
  NULL,
  '[{"id":"a","label":"Tracer un arc de cercle centré en A avec un rayon quelconque"},{"id":"b","label":"Tracer deux arcs de cercle de même rayon r > AB/2, centrés en A puis en B"},{"id":"c","label":"Mesurer AB avec la règle et trouver le milieu M"},{"id":"d","label":"Tracer un angle droit avec l''équerre au point milieu de AB"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La construction classique de la médiatrice au compas et à la règle utilise deux arcs de cercle de même rayon r > AB/2, centrés respectivement en A et en B. Ces arcs se coupent en deux points I et J. La droite (IJ) est la médiatrice de [AB]. Cette construction est fondamentale au cycle 3 et au collège. Elle ne nécessite pas de mesurer AB au préalable.',
  'Penser qu''il faut d''abord trouver le milieu M de [AB] avec la règle, puis tracer la perpendiculaire. Cette démarche est possible mais moins rigoureuse ; la construction au compas est la méthode canonique car elle ne repose sur aucune mesure approximative.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'qcm',
  'Comment construire une droite parallèle à une droite donnée (d) passant par un point P extérieur à (d) avec l''équerre et la règle ?',
  NULL,
  '[{"id":"a","label":"Tracer un arc de cercle centré en P coupant (d) en deux points"},{"id":"b","label":"Faire glisser l''équerre le long de la règle après avoir calé l''équerre sur (d)"},{"id":"c","label":"Mesurer la distance entre P et (d), puis reporter cette distance"},{"id":"d","label":"Tracer la perpendiculaire à (d) en P, puis la perpendiculaire à cette perpendiculaire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La technique de la règle et de l''équerre pour tracer une parallèle consiste à : (1) poser l''équerre avec un côté sur la droite (d) et la règle contre l''hypoténuse (ou un autre côté) ; (2) maintenir la règle fixe et faire glisser l''équerre jusqu''à ce qu''un côté passe par le point P ; (3) tracer la droite le long de ce côté. La méthode d utilise aussi la perpendiculaire (deux perpendiculaires successives donnent une parallèle), mais elle est plus longue.',
  'Croire qu''il faut mesurer la distance de P à (d) et reporter cette mesure. Cette approche donne un point de la parallèle, mais ne permet pas à elle seule de tracer toute la droite sans instrument d''angle.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Avec un compas, il est possible de reporter une longueur donnée sur une demi-droite sans utiliser la règle graduée.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le compas est un outil de report de longueur : on peut écarter ses branches de la longueur souhaitée (en les calant sur un segment de référence), puis reporter cette même distance en pointant le centre sur un point de la demi-droite et en traçant un arc. L''intersection de l''arc avec la demi-droite donne le point à la bonne distance. On n''a pas besoin de lire une mesure sur la règle graduée.',
  'Croire que le compas ne sert qu''à tracer des cercles complets. Le compas est fondamentalement un instrument de report de distance, ce qui explique son rôle dans de nombreuses constructions géométriques classiques.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'qcm',
  'Quelle propriété caractérise le centre d''un cercle par rapport à tous les points de ce cercle ?',
  NULL,
  '[{"id":"a","label":"Il est équidistant de tous les points du cercle"},{"id":"b","label":"Il est le point d''intersection des diamètres uniquement"},{"id":"c","label":"Il est le milieu de la corde la plus longue"},{"id":"d","label":"Il est à l''intérieur du cercle mais pas nécessairement au centre géométrique"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Par définition, un cercle de centre O et de rayon r est l''ensemble des points du plan situés à la distance r du point O. Autrement dit, O est à égale distance de tous les points du cercle. Cette propriété fondamentale est utilisée dans toutes les constructions au compas. Les réponses b et c sont partiellement vraies (le diamètre est bien la corde la plus longue et passe par le centre) mais ne constituent pas LA définition.',
  'Choisir la réponse b ou c en pensant que la définition passe par le diamètre. La définition du cercle est équidistance — c''est la propriété fondamentale à maîtriser pour le CRPE.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'qcm',
  'Pour construire un triangle équilatéral de côté 5 cm, quels instruments sont strictement nécessaires (sans rapporteur) ?',
  NULL,
  '[{"id":"a","label":"La règle graduée seule"},{"id":"b","label":"La règle graduée et le compas"},{"id":"c","label":"L''équerre et la règle graduée"},{"id":"d","label":"Le compas seul"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Construction : (1) tracer un segment [AB] de 5 cm à la règle ; (2) centrer le compas en A, rayon 5 cm, tracer un arc ; (3) centrer en B, même rayon, tracer un arc ; (4) les deux arcs se coupent en C ; (5) tracer [AC] et [BC] à la règle. On obtient un triangle équilatéral car les trois côtés mesurent 5 cm. La règle seule ne suffit pas (impossible de vérifier l''égalité des côtés sans mesure) ; l''équerre n''est pas nécessaire.',
  'Penser que le compas seul suffit. Le compas place le troisième sommet C mais on ne peut pas tracer les segments [AC] et [BC] sans règle.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'reponse_courte',
  'Comment appelle-t-on le segment qui joint le centre d''un cercle à un point de ce cercle ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["rayon","un rayon"]}'::jsonb,
  'Le rayon d''un cercle est le segment qui relie le centre O à n''importe quel point du cercle. Sa longueur est constante pour un cercle donné. À ne pas confondre avec le diamètre (qui traverse le cercle en passant par le centre, soit deux fois le rayon) ou la corde (segment reliant deux points du cercle sans passer nécessairement par le centre).',
  'Répondre « diamètre ». Le diamètre est un cas particulier de corde passant par le centre ; il mesure 2r, pas r. Le rayon est le segment reliant le centre à un point du cercle.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'qcm',
  'Dans le cadre de la didactique des instruments géométriques au cycle 3, quelle posture est recommandée pour l''enseignant lors de la première séance d''utilisation du compas ?',
  NULL,
  '[{"id":"a","label":"Donner directement la procédure complète pour éviter les erreurs"},{"id":"b","label":"Laisser les élèves explorer librement sans aucune consigne"},{"id":"c","label":"Proposer un problème de construction motivant et accompagner la découverte du maniement"},{"id":"d","label":"Utiliser uniquement le logiciel de géométrie dynamique en remplacement du compas physique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les programmes et la didactique des mathématiques recommandent une démarche de résolution de problème : proposer une situation qui rende nécessaire l''instrument (ex. : tracer un cercle passant exactement par trois points donnés) plutôt que de montrer d''emblée la technique. L''enseignant accompagne la découverte du maniement dans ce contexte. La manipulation physique reste importante même si les logiciels de géométrie dynamique (GéoGébra...) sont complémentaires.',
  'Croire que la démonstration magistrale préalable est la meilleure approche. Les recherches en didactique montrent que l''apprentissage instrumental est plus solide quand il est motivé par un besoin (résolution d''un problème) plutôt que présenté hors contexte.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '26d30000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_constructions_geometrie_instruments',
  'Constructions géométriques aux instruments',
  'Standard',
  'qcm',
  'Quel est le lien entre la bissectrice d''un angle et le compas ?',
  NULL,
  '[{"id":"a","label":"La bissectrice ne peut pas être construite au compas"},{"id":"b","label":"On construit la bissectrice en traçant deux arcs de même rayon depuis le sommet, puis un arc depuis chaque point d''intersection"},{"id":"c","label":"La bissectrice est le rayon du cercle inscrit dans l''angle"},{"id":"d","label":"On la trace en mesurant l''angle au rapporteur et en divisant par deux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Construction de la bissectrice d''un angle au compas : (1) centrer en S (sommet), tracer un arc coupant les deux côtés en A et B ; (2) centrer en A puis en B avec le même rayon, tracer deux arcs se coupant en C ; (3) la demi-droite [SC) est la bissectrice. Cette construction repose sur la propriété que tout point de la bissectrice est équidistant des deux côtés de l''angle. Le rapporteur (méthode d) est correct mathématiquement mais moins rigoureux que la construction au compas.',
  'Choisir la méthode au rapporteur (d). Bien qu''elle soit praticable, la construction au compas est la méthode canonique en géométrie euclidienne et celle attendue dans le contexte du CRPE.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
