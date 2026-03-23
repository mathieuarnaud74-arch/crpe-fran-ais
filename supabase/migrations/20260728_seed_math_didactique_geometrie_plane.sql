-- Seed: Didactique de la géométrie plane — Enseigner les figures (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures', 'Intermediaire',
  'qcm',
  'Le modèle de Van Hiele décrit les niveaux de pensée géométrique des élèves. Un élève qui reconnaît un carré parce qu''il « ressemble à un carré » (forme globale) mais ne sait pas justifier par ses propriétés se situe à quel niveau ?',
  NULL,
  '[{"id":"a","label":"Niveau 0 — Visualisation (reconnaissance globale des formes sans analyse des propriétés)"},{"id":"b","label":"Niveau 1 — Analyse (identification des propriétés des figures sans les relier entre elles)"},{"id":"c","label":"Niveau 2 — Déduction informelle (relations logiques entre propriétés, inclusion de classes)"},{"id":"d","label":"Niveau 3 — Déduction formelle (démonstrations rigoureuses dans un système axiomatique)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Cet élève se situe au niveau 0 (visualisation) du modèle de Van Hiele. À ce niveau, l''élève reconnaît les figures de manière globale, par leur apparence visuelle, sans analyser leurs propriétés. Il dira « c''est un carré parce que ça ressemble à un carré » ou « c''est un triangle parce que ça a une pointe ». Un carré tourné à 45° pourra ne plus être reconnu comme tel. Ce niveau correspond à la géométrie perceptive. Au niveau 1 (analyse), l''élève identifierait les propriétés : « c''est un carré car il a 4 côtés égaux et 4 angles droits ». Le modèle de Van Hiele est fondamental en didactique car il montre que les niveaux sont séquentiels : on ne peut pas sauter un niveau, et l''enseignement doit s''adapter au niveau de l''élève.',
  'Confondre le niveau 0 (visualisation globale) avec le niveau 1 (analyse des propriétés). La clé est la justification : si l''élève ne peut pas nommer de propriétés, il est au niveau 0.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures', 'Intermediaire',
  'vrai_faux',
  'En didactique de la géométrie, on distingue trois types d''approche : la géométrie perceptive, la géométrie instrumentée et la géométrie déductive. La géométrie instrumentée consiste à raisonner uniquement par la vision, sans outil.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est la géométrie perceptive (et non instrumentée) qui repose uniquement sur la vision. La géométrie perceptive correspond au « voir » : l''élève reconnaît les formes par leur apparence globale (niveau 0 de Van Hiele). La géométrie instrumentée correspond au « savoir-faire » : l''élève utilise des instruments (règle, équerre, compas, gabarit d''angle) pour construire, vérifier ou reproduire des figures. Par exemple, vérifier qu''un angle est droit avec une équerre relève de la géométrie instrumentée. La géométrie déductive correspond au « savoir » : l''élève raisonne sur les propriétés sans avoir besoin de vérifier avec des instruments. Les programmes Éduscol prévoient une progression du perceptif (maternelle/début C2) vers l''instrumenté (C2-C3) puis vers le déductif (fin C3 et au-delà).',
  'Confondre géométrie perceptive et géométrie instrumentée. Le critère discriminant est l''usage d''instruments : la géométrie perceptive s''appuie sur la vue seule, la géométrie instrumentée mobilise des outils pour valider ou construire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures', 'Intermediaire',
  'qcm',
  'Un élève de CE2 affirme : « Un carré n''est pas un rectangle parce qu''un rectangle est allongé et un carré ne l''est pas. » Cette erreur traduit un obstacle didactique classique. Lequel ?',
  NULL,
  '[{"id":"a","label":"Une confusion entre périmètre et aire"},{"id":"b","label":"Un obstacle lié au prototype : l''élève a construit une image mentale du rectangle comme figure « allongée » et exclut le carré de cette catégorie"},{"id":"c","label":"Une méconnaissance des tables de multiplication"},{"id":"d","label":"Un problème de latéralisation spatiale"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il s''agit d''un obstacle lié au prototype (ou effet de prototype). L''élève a construit une image mentale typique du rectangle : une figure plus longue que large, avec un « grand côté » et un « petit côté ». Le carré, ayant tous ses côtés égaux, ne correspond pas à ce prototype et est donc exclu de la catégorie « rectangle ». Pourtant, mathématiquement, un carré est un rectangle particulier (rectangle ayant en plus quatre côtés égaux). Cet obstacle, très documenté en didactique de la géométrie, relève du niveau 0 de Van Hiele (reconnaissance visuelle) et empêche l''inclusion de classes (niveau 2). Pour le dépasser, l''enseignant doit travailler sur les propriétés : « un rectangle est un quadrilatère ayant 4 angles droits » — définition que le carré satisfait. Éduscol recommande de varier systématiquement les exemples et les contre-exemples.',
  'Penser que cette erreur est anodine ou passagère. L''obstacle du prototype est résistant et nécessite un travail didactique explicite sur les propriétés et la classification des quadrilatères.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures', 'Intermediaire',
  'reponse_courte',
  'En didactique de la géométrie, on distingue le « dessin » et la « figure ». Comment appelle-t-on la représentation mentale d''un objet géométrique défini par ses propriétés, dont le tracé sur la feuille n''est qu''une réalisation particulière ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["figure","la figure","Figure","La figure","une figure"]}'::jsonb,
  'On parle de « figure » par opposition à « dessin ». Cette distinction fondamentale en didactique de la géométrie, formalisée notamment par Laborde et Capponi (1994), établit que le dessin est un objet matériel (trait sur la feuille, tracé à l''écran) tandis que la figure est un objet théorique défini par ses propriétés géométriques. Un même figure (par exemple « le carré ABCD de côté 5 cm ») peut donner lieu à une infinité de dessins différents (positions, orientations, tailles à l''écran). L''enjeu didactique est de faire passer l''élève du dessin (perceptif) à la figure (conceptuel) : il doit comprendre que les propriétés d''une figure ne dépendent pas de la façon dont elle est tracée. C''est un passage essentiel du niveau 0 au niveau 1 de Van Hiele.',
  'Confondre dessin et figure ou considérer ces deux termes comme synonymes. En géométrie, le dessin est matériel et particulier, la figure est abstraite et définie par des propriétés.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures', 'Intermediaire',
  'qcm',
  'Concernant la progression de la classification des quadrilatères du cycle 2 au cycle 3, quelle affirmation est conforme aux programmes Éduscol ?',
  NULL,
  '[{"id":"a","label":"Au C2, les élèves doivent maîtriser l''inclusion « un carré est un losange qui est un parallélogramme »"},{"id":"b","label":"Au C2, on reconnaît et nomme carré, rectangle, triangle, cercle ; au C3, on approfondit les propriétés et on commence à travailler l''inclusion de classes (ex : un carré est un rectangle particulier)"},{"id":"c","label":"La classification des quadrilatères n''est abordée qu''au collège"},{"id":"d","label":"Au C2, on étudie uniquement le carré ; le rectangle n''est introduit qu''au C3"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les programmes Éduscol prévoient une progression spiralaire. Au cycle 2, les élèves apprennent à reconnaître, nommer et décrire les figures usuelles (carré, rectangle, triangle, cercle) en s''appuyant d''abord sur la perception puis sur la vérification instrumentée (utilisation de l''équerre, de la règle). On travaille les propriétés de base : nombre de côtés, présence d''angles droits, côtés de même longueur. Au cycle 3, on approfondit : les élèves étudient les propriétés des quadrilatères particuliers et commencent à comprendre les relations d''inclusion (un carré est un rectangle particulier, un rectangle est un parallélogramme particulier). Cette progression permet de passer du niveau 0-1 de Van Hiele (perception et analyse) au niveau 2 (déduction informelle et inclusion de classes).',
  'Croire que l''inclusion de classes (« un carré est un rectangle ») doit être acquise dès le C2. C''est un objectif du C3, car il nécessite le niveau 2 de Van Hiele que les élèves de C2 n''ont généralement pas atteint.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures', 'Intermediaire',
  'vrai_faux',
  'Un élève de CM1 trace un losange au compas en procédant ainsi : il trace un segment [AB], puis deux arcs de cercle de même rayon centrés en A et B qui se coupent en C et D, et relie A-C-B-D. Sa construction est valide car elle garantit quatre côtés de même longueur.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La construction est valide. En traçant deux arcs de cercle de même rayon r (avec r = AB) centrés en A et en B, les points d''intersection C et D vérifient : AC = BC = AD = BD = r = AB. On obtient donc le quadrilatère ACBD (en reliant les points dans l''ordre) qui a quatre côtés de même longueur : c''est bien un losange. Cette construction au compas est une application de la géométrie instrumentée : l''élève utilise le compas pour reporter des longueurs et construire une figure ayant la propriété requise (quatre côtés égaux). Analyser les constructions des élèves est une compétence clé pour le CRPE : il faut vérifier si la procédure garantit mathématiquement les propriétés attendues, et non simplement si le résultat « ressemble » à la figure souhaitée.',
  'Invalider une construction correcte parce qu''elle ne suit pas la méthode enseignée en classe. En géométrie, ce qui compte est que la procédure garantisse mathématiquement les propriétés de la figure, quelle que soit la méthode employée.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures', 'Intermediaire',
  'qcm',
  'Vous concevez une activité de tri de polygones pour des élèves de CE2. L''objectif est de faire émerger les propriétés des quadrilatères. Quelle conception de l''activité est la plus pertinente didactiquement ?',
  NULL,
  '[{"id":"a","label":"Donner les définitions de chaque quadrilatère puis demander aux élèves de trier les figures selon ces définitions"},{"id":"b","label":"Proposer une collection variée de polygones (incluant des cas limites et des non-exemples) et demander aux élèves de les trier selon des critères qu''ils choisissent eux-mêmes, puis confronter les classements lors d''un débat collectif"},{"id":"c","label":"Ne présenter que des figures prototypiques (rectangles allongés, carrés droits) pour éviter de perturber les élèves"},{"id":"d","label":"Faire uniquement nommer les figures sans les manipuler ni les classer"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La démarche la plus pertinente s''inscrit dans la théorie des situations de Brousseau : proposer une situation-problème ouverte (trier selon ses propres critères) qui provoque un conflit cognitif lors de la confrontation des classements. La collection doit inclure : des exemples variés (rectangles de proportions différentes, carrés en position oblique), des cas limites (un carré dans la collection de rectangles) et des non-exemples (figures qui ressemblent mais ne vérifient pas la propriété). La confrontation des critères de tri (« moi j''ai mis le carré avec les rectangles car il a 4 angles droits » vs « moi je l''ai mis à part car ses côtés sont tous égaux ») fait émerger les propriétés et prépare l''inclusion de classes. Cette approche permet de dépasser les prototypes et de construire des concepts géométriques robustes.',
  'Ne proposer que des figures prototypiques. Les recherches montrent que la variété des exemples et la présence de contre-exemples sont essentielles pour construire des concepts géométriques solides et dépasser l''effet de prototype.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
