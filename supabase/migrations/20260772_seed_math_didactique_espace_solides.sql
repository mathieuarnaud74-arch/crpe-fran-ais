-- Seed: Didactique de l'espace et des solides (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_espace_solides',
  'Didactique de l''espace et des solides', 'Intermediaire',
  'qcm',
  'Selon les programmes Éduscol, le développement des compétences spatiales aux cycles 2 et 3 repose sur une progression didactique. Laquelle de ces affirmations décrit le mieux cette progression ?',
  NULL,
  '[{"id":"a","label":"On commence par l''étude des solides en 3D, puis on passe aux figures planes en 2D"},{"id":"b","label":"On travaille d''abord le repérage et l''orientation dans l''espace vécu (salle de classe, cour), puis le passage à des représentations planes (plans, schémas), et enfin l''étude des propriétés géométriques des solides"},{"id":"c","label":"On commence directement par le vocabulaire géométrique (face, arête, sommet) dès le CP"},{"id":"d","label":"L''espace et la géométrie ne sont travaillés qu''à partir du cycle 3"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La progression didactique en géométrie de l''espace suit le principe fondamental du concret vers l''abstrait. Au cycle 2, les élèves commencent par le repérage dans l''espace vécu : se déplacer dans la classe, suivre un parcours, décrire un itinéraire. Ils manipulent des objets réels (boîtes, balles, rouleaux) avant de les nommer comme solides géométriques. Puis ils passent progressivement à des représentations planes : lire un plan de classe, tracer un itinéraire sur une carte. Au cycle 3, l''étude devient plus formelle avec l''identification des propriétés des solides (nombre de faces, d''arêtes, de sommets) et le lien entre solides et patrons. Brousseau insiste sur le fait que l''espace géométrique se construit à partir de l''espace sensible : l''élève doit d''abord vivre l''espace avant de le conceptualiser. Vergnaud complète en montrant que les concepts spatiaux appartiennent à un champ conceptuel qui se structure progressivement par la confrontation à des situations variées.',
  'Croire que l''on peut enseigner les propriétés des solides sans passer par la manipulation d''objets réels et le repérage dans l''espace vécu. Les élèves récitent alors un vocabulaire sans ancrage spatial.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_espace_solides',
  'Didactique de l''espace et des solides', 'Intermediaire',
  'vrai_faux',
  'En didactique de la géométrie, la progression du vocabulaire relatif aux solides (face, arête, sommet) doit s''appuyer sur la manipulation d''objets physiques avant toute définition formelle. Par exemple, les élèves de CE1 doivent d''abord toucher et compter les faces d''une boîte avant qu''on leur donne le mot « face ».',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le vocabulaire géométrique (face, arête, sommet) doit émerger de la manipulation et non la précéder. C''est un principe central de la didactique des mathématiques : le concept se construit dans l''action avant d''être nommé. Quand l''élève manipule un cube en bois, il touche les surfaces planes (futures « faces »), passe le doigt le long des lignes où deux surfaces se rencontrent (futures « arêtes »), et identifie les points de jonction (futurs « sommets »). C''est seulement après cette exploration sensorielle que l''enseignant introduit le vocabulaire formel. Brousseau parle de phase d''action puis de phase de formulation : l''élève agit d''abord, puis met en mots. Éduscol recommande explicitement cette démarche pour le cycle 2 : « Les élèves manipulent des solides (cubes, pavés droits, cylindres, pyramides, cônes, boules) et apprennent progressivement à les décrire en utilisant le vocabulaire approprié. » Vergnaud ajoute que le vocabulaire n''est pas une fin en soi mais un outil au service de la conceptualisation : nommer, c''est catégoriser.',
  'Introduire le vocabulaire (face, arête, sommet) de manière magistrale avant toute manipulation. Les élèves mémorisent des mots vides de sens et confondent ensuite les termes.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_espace_solides',
  'Didactique de l''espace et des solides', 'Intermediaire',
  'qcm',
  'Un élève de CM1 décrit un pavé droit en disant : « Il a 6 arêtes et 8 faces. » Quelle est l''erreur commise et quelle en est l''origine didactique la plus probable ?',
  NULL,
  '[{"id":"a","label":"L''élève confond face et arête : il attribue le nombre d''arêtes aux faces et inversement. Cette confusion provient souvent d''un apprentissage du vocabulaire sans manipulation, où les mots ne sont pas ancrés dans une expérience sensorielle"},{"id":"b","label":"L''élève ne sait pas compter au-delà de 8"},{"id":"c","label":"L''élève confond le pavé droit avec un autre solide"},{"id":"d","label":"L''élève a simplement fait une erreur d''inattention sans signification didactique"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Un pavé droit possède 6 faces, 12 arêtes et 8 sommets. L''élève qui dit « 6 arêtes et 8 faces » a inversé les termes « face » et « arête ». Cette confusion est un classique de la didactique de la géométrie des solides. Elle révèle que le vocabulaire a été appris de manière décontextualisée, sans ancrage dans la manipulation. Pour l''élève, « face » et « arête » sont des mots interchangeables car il n''a pas construit de lien entre le mot et la réalité géométrique qu''il désigne. La face est une surface plane (on peut poser le solide dessus), l''arête est le segment où deux faces se rejoignent (on peut passer le doigt dessus). Pour remédier à cette confusion, Brousseau recommande de revenir à la manipulation : faire toucher les faces (« montre-moi une surface sur laquelle tu peux poser le cube »), faire passer le doigt sur les arêtes (« montre-moi une ligne où deux surfaces se rencontrent »). Vergnaud insiste sur le fait que le vocabulaire géométrique est un outil conceptuel qui ne fonctionne que s''il est relié à des invariants opératoires construits dans l''action.',
  'Considérer cette erreur comme une simple confusion de mots sans importance. C''est un indicateur que le vocabulaire n''est pas conceptuellement ancré et que l''élève a besoin de revenir à la manipulation.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_espace_solides',
  'Didactique de l''espace et des solides', 'Intermediaire',
  'qcm',
  'Quel est le rôle principal de la manipulation de solides physiques (cubes, pavés, pyramides en bois ou en plastique) dans l''enseignement de la géométrie de l''espace au cycle 2 ?',
  NULL,
  '[{"id":"a","label":"Occuper les élèves pendant que l''enseignant prépare la leçon suivante"},{"id":"b","label":"Permettre aux élèves de construire des représentations mentales des solides en associant des propriétés tactiles et visuelles (faces planes, arêtes rectilignes, sommets pointus) à des catégories géométriques"},{"id":"c","label":"Remplacer entièrement l''apprentissage du vocabulaire géométrique"},{"id":"d","label":"Entraîner uniquement la motricité fine des élèves"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La manipulation de solides physiques est au cœur de la didactique de la géométrie de l''espace. Son rôle fondamental est de permettre à l''élève de construire des images mentales des solides, c''est-à-dire des représentations internes qui associent des propriétés sensorielles (ce que l''on voit, ce que l''on touche) à des propriétés géométriques (nombre de faces, nature des faces, parallélisme des arêtes). Brousseau, dans sa théorie des situations didactiques, place la manipulation dans la phase d''action : l''élève explore le solide, le retourne, le compare à d''autres, et construit progressivement des invariants. Par exemple, en manipulant un cube, l''élève découvre que toutes les faces sont des carrés identiques, que chaque sommet est le point de rencontre de trois arêtes. Ces observations sensorielles deviennent ensuite des propriétés géométriques formelles. Vergnaud souligne que les représentations mentales ainsi construites sont des « schèmes » qui permettent à l''élève de raisonner sur les solides même en leur absence. Éduscol insiste : sans manipulation suffisante au cycle 2, les élèves du cycle 3 peinent à visualiser les patrons de solides.',
  'Réduire la manipulation à une activité récréative. Elle est un outil didactique puissant qui construit les représentations mentales nécessaires à la géométrie abstraite.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_espace_solides',
  'Didactique de l''espace et des solides', 'Intermediaire',
  'reponse_courte',
  'En géométrie de l''espace, les programmes distinguent deux grandes catégories de solides selon la nature de leurs faces. Les solides dont toutes les faces sont des polygones (plans) sont appelés des … Complétez avec le terme géométrique exact.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["polyèdres","polyèdre","Polyèdres","Polyèdre","des polyèdres","un polyèdre"]}'::jsonb,
  'Les polyèdres sont des solides dont toutes les faces sont des polygones plans. Le cube (6 faces carrées), le pavé droit (6 faces rectangulaires), la pyramide (une base polygonale et des faces triangulaires latérales) et le prisme sont des exemples de polyèdres. En revanche, les solides qui possèdent au moins une surface courbe — le cylindre, le cône, la sphère — ne sont pas des polyèdres. Cette distinction est fondamentale dans la progression didactique : au cycle 2, les élèves trient les solides en « ceux qui roulent » et « ceux qui ne roulent pas », ce qui correspond intuitivement à la distinction non-polyèdres / polyèdres. Au cycle 3, cette catégorisation sensorielle est formalisée avec le vocabulaire géométrique. Vergnaud montre que la classification est un outil conceptuel puissant : en triant les solides, l''élève identifie des propriétés communes et construit des catégories abstraites. Éduscol recommande de faire évoluer les critères de tri au fil des cycles : du tactile (ça roule / ça ne roule pas) vers le géométrique (polyèdre / non-polyèdre, puis nombre de faces, régularité).',
  'Confondre polyèdre et polygone. Le polygone est une figure plane (2D) ; le polyèdre est un solide (3D) dont les faces sont des polygones.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_espace_solides',
  'Didactique de l''espace et des solides', 'Intermediaire',
  'qcm',
  'Vous souhaitez concevoir une activité de tri de solides pour des élèves de CE2. Parmi les propositions suivantes, laquelle constitue la situation didactique la plus riche pour faire émerger les propriétés des solides ?',
  NULL,
  '[{"id":"a","label":"Donner aux élèves une collection de solides variés (cubes, pavés, cylindres, cônes, pyramides, prismes) et leur demander de les classer en groupes selon des critères qu''ils choisissent eux-mêmes, puis de justifier leurs choix"},{"id":"b","label":"Distribuer une fiche avec les noms des solides et demander aux élèves de les mémoriser"},{"id":"c","label":"Projeter des images de solides au tableau et demander aux élèves de les nommer"},{"id":"d","label":"Donner directement le tableau récapitulatif (nom, nombre de faces, arêtes, sommets) et le faire copier"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''activité de tri libre est une situation didactique fondamentale en géométrie de l''espace. En demandant aux élèves de classer eux-mêmes une collection de solides selon des critères qu''ils choisissent, on crée une situation au sens de Brousseau : le problème (classer) nécessite de mobiliser et construire des connaissances (identifier des propriétés). Les élèves peuvent d''abord trier par critères perceptifs (« ceux qui roulent / ceux qui ne roulent pas »), puis affiner vers des critères géométriques (« ceux qui ont des faces rectangulaires / triangulaires », « ceux qui ont un sommet pointu en haut »). La phase de mise en commun est cruciale : en confrontant les différents classements, les élèves découvrent que plusieurs critères sont possibles et que certains sont plus pertinents géométriquement. Vergnaud montre que cette activité de catégorisation est au cœur de la formation des concepts : l''élève construit des « classes de situations » qui structurent le champ conceptuel de la géométrie. Éduscol recommande explicitement ce type d''activité pour le cycle 2 avec une progression vers des critères de plus en plus formels au cycle 3.',
  'Donner les critères de tri aux élèves au lieu de les laisser les découvrir. Le potentiel didactique de l''activité réside dans la recherche autonome des critères et la confrontation des classements.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_espace_solides',
  'Didactique de l''espace et des solides', 'Intermediaire',
  'reponse_courte',
  'En CM2, un élève doit construire le patron d''un pavé droit. Il dessine 6 rectangles séparés sur sa feuille, sans les relier. Il ne comprend pas comment les assembler pour former le solide. Quel type de matériel concret pourriez-vous lui proposer pour l''aider à comprendre le lien entre le patron (représentation plane) et le solide (objet 3D) ? Décrivez en une phrase.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Lui faire déplier une boîte en carton (pavé droit) pour observer comment le solide se transforme en patron","Déplier une boîte en carton","déplier un solide en carton","Lui donner une boîte en carton à déplier","ouvrir une boîte en carton et la mettre à plat","démonter une boîte pour obtenir le patron","faire déplier un pavé droit en carton","découper une boîte le long des arêtes et la déplier"]}'::jsonb,
  'Le passage du solide au patron (et inversement) est une compétence spatiale complexe qui mobilise la capacité de visualisation en 3D. Pour un élève en difficulté, le détour par la manipulation concrète est essentiel. L''activité la plus efficace consiste à prendre une boîte en carton (un pavé droit réel), à la découper le long de certaines arêtes et à la déplier pour obtenir le patron. L''élève voit physiquement comment les faces du solide se « déplient » pour former une figure plane. Il peut ensuite replier le patron pour reconstituer la boîte. Ce va-et-vient entre 3D et 2D construit le lien conceptuel entre le solide et son patron. Brousseau insiste sur le rôle de la situation a-didactique : l''élève doit agir sur le matériel (découper, déplier, replier) et c''est cette action qui produit la connaissance. Vergnaud ajoute que la manipulation construit des « schèmes de dépliage/pliage » qui permettent ensuite à l''élève de visualiser mentalement le passage du patron au solide. Éduscol recommande de multiplier les expériences de pliage/dépliage avec des solides variés avant de demander aux élèves de dessiner des patrons de mémoire.',
  'Donner le patron tout fait et demander à l''élève de le découper et le coller. L''élève exécute une tâche mécanique sans comprendre le lien entre la figure plane et le solide.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
