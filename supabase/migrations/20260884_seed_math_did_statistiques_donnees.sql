-- Série : Enseigner l'organisation et la gestion de données en cycle 3
-- Subdomain : didactique_maths | topic_key : math_did_statistiques_donnees
-- 10 questions | UUIDs : 04b10000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '04b10000-0000-0000-0000-000000000001',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'qcm',
  'Dans les programmes de cycle 3, la compétence « organiser et gérer des données » relève du domaine :',
  NULL,
  '[{"id":"a","label":"Nombres et calculs"},{"id":"b","label":"Grandeurs et mesures"},{"id":"c","label":"Espace et géométrie"},{"id":"d","label":"Données et incertitudes"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Dans les programmes de cycle 3 (2016, révisés 2018 et 2024), le domaine « Données et incertitudes » regroupe deux champs : l''organisation et la gestion de données (statistiques descriptives : tableaux, graphiques, indicateurs) et la probabilité (notions d''expérience aléatoire, d''événement, de fréquence). Ce domaine est spécifique au cycle 3 — au cycle 2, ces notions ne constituent pas encore un domaine distinct.',
  'Confondre avec « Grandeurs et mesures » (longueurs, masses, durées, aires, volumes) ou « Nombres et calculs ». L''organisation des données est un domaine à part entière depuis la réforme des programmes.',
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
  '04b10000-0000-0000-0000-000000000002',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? En cycle 3, les élèves doivent savoir calculer une moyenne arithmétique à partir d''un ensemble de données.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le calcul de la moyenne est explicitement au programme du cycle 3 (CM1-CM2-6ᵉ). Les élèves doivent savoir calculer la moyenne arithmétique d''une série de données (somme des valeurs divisée par le nombre de valeurs) et l''interpréter dans un contexte. C''est le premier indicateur de tendance centrale qu''ils rencontrent formellement. La médiane n''est abordée qu''au cycle 4.',
  'Croire que la moyenne est réservée au collège. Elle est au programme du cycle 3 dans les deux aspects : calcul (algorithme) et sens (valeur représentative d''une série de données).',
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
  '04b10000-0000-0000-0000-000000000003',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'qcm',
  'Quel type de représentation graphique est le plus adapté pour comparer des effectifs dans des catégories distinctes (ex. : couleur de yeux des élèves de la classe) en cycle 3 ?',
  NULL,
  '[{"id":"a","label":"L''histogramme"},{"id":"b","label":"Le nuage de points"},{"id":"c","label":"Le diagramme en bâtons"},{"id":"d","label":"Le diagramme à boîtes (box-plot)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le diagramme en bâtons (ou diagramme à barres) est adapté aux données qualitatives ou aux données discrètes : il permet de comparer visuellement des effectifs entre catégories distinctes. Pour la couleur des yeux (catégories sans ordre naturel), le diagramme en bâtons est le plus lisible. L''histogramme, lui, est réservé aux données quantitatives continues groupées par classes (et les barres sont contiguës). Au cycle 3, on distingue les deux.',
  'Utiliser un histogramme pour des données qualitatives. Un histogramme implique une variable quantitative continue avec des classes contiguës — il n''est pas adapté pour des catégories comme la couleur des yeux.',
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
  '04b10000-0000-0000-0000-000000000004',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'qcm',
  'Pourquoi est-il pédagogiquement pertinent de faire construire des tableaux et des graphiques aux élèves de cycle 3, plutôt que de simplement leur faire lire des documents fournis ?',
  NULL,
  '[{"id":"a","label":"Parce que les programmes l''imposent obligatoirement"},{"id":"b","label":"Parce que la construction nécessite de comprendre le sens des représentations, pas seulement leur lecture"},{"id":"c","label":"Parce que cela évite de préparer des documents en amont"},{"id":"d","label":"Parce que la lecture de graphiques est trop complexe pour des élèves de cycle 3"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La construction active d''une représentation (tableau, diagramme) oblige l''élève à réfléchir aux choix de représentation : quelles catégories ? Quelle échelle ? Quel titre ? Ce processus développe une compréhension profonde des conventions graphiques et du sens des données. La simple lecture de documents fournis reste plus passive et ne garantit pas que l''élève comprend les principes de construction.',
  'Penser que l''objectif est uniquement de lire des documents statistiques. Les programmes de cycle 3 incluent explicitement la production de représentations — tableaux, diagrammes — comme compétence à développer.',
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
  '04b10000-0000-0000-0000-000000000005',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? En cycle 3, les premières notions de probabilité peuvent s''appuyer sur des expériences concrètes (lancer de dé, tirage de bille) et sur la notion de fréquence observée.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Les programmes de cycle 3 introduisent les premières notions de hasard et de probabilité à travers des situations concrètes (jeux de dés, urnes, pièces...). On travaille la notion d''expérience aléatoire, d''événement, et la loi des grands nombres est approchée intuitivement : plus on répète l''expérience, plus la fréquence observée se rapproche de la probabilité théorique. Cette entrée expérimentale est préconisée avant toute formalisation probabiliste.',
  'Croire que les probabilités ne s''enseignent qu''au collège. Le cycle 3 en pose les fondements à travers l''expérimentation et la notion de fréquence relative, conformément aux programmes.',
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
  '04b10000-0000-0000-0000-000000000006',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'qcm',
  'Quelle erreur fréquente des élèves de cycle 3 observe-t-on lors de la lecture d''un diagramme circulaire ?',
  NULL,
  '[{"id":"a","label":"Confondre les secteurs avec les barres d''un diagramme en bâtons"},{"id":"b","label":"Lire les angles comme des effectifs plutôt que comme des proportions"},{"id":"c","label":"Calculer la somme de tous les secteurs et trouver 360°"},{"id":"d","label":"Identifier correctement le secteur le plus grand"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''erreur typique est de lire visuellement les tailles des secteurs et d''en déduire des effectifs ou des fréquences absolues sans passer par le calcul de la proportion. Un secteur plus grand est vu comme « il y en a beaucoup » sans quantifier précisément. Une autre erreur connexe est de comparer les effectifs de deux diagrammes circulaires différents sans tenir compte des effectifs totaux (qui peuvent être très différents). L''enseignant doit travailler explicitement le lien secteur → angle → pourcentage.',
  'Croire que les élèves identifient naturellement la signification des secteurs proportionnels. La lecture et l''interprétation d''un diagramme circulaire nécessitent un enseignement explicite des liens entre proportions, angles et pourcentages.',
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
  '04b10000-0000-0000-0000-000000000007',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'qcm',
  'Quel est le lien entre l''enseignement de l''organisation de données et la proportionnalité en cycle 3 ?',
  NULL,
  '[{"id":"a","label":"Il n''y a aucun lien : ce sont deux domaines complètement distincts"},{"id":"b","label":"Le calcul des fréquences relatives et la construction de diagrammes circulaires font appel à la proportionnalité"},{"id":"c","label":"La proportionnalité remplace les statistiques dans le programme de cycle 3"},{"id":"d","label":"Les statistiques servent uniquement à illustrer la proportionnalité"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La proportionnalité est un outil central de l''organisation de données en cycle 3 : calculer une fréquence relative (effectif / effectif total) est une application de la proportionnalité ; construire un diagramme circulaire nécessite de calculer les angles proportionnellement aux effectifs. Les deux domaines se nourrissent mutuellement et les programmes encouragent explicitement cette transversalité.',
  'Croire que statistiques et proportionnalité sont des domaines cloisonnés. Les programmes de cycle 3 insistent sur les liens entre les domaines, et la construction de représentations statistiques en est un exemple canonique.',
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
  '04b10000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'reponse_courte',
  'Comment appelle-t-on le rapport entre l''effectif d''une modalité et l''effectif total, exprimé en pourcentage ou en valeur décimale ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["fréquence relative","fréquence","la fréquence relative","fréquence relative ou pourcentage"]}'::jsonb,
  'La fréquence relative d''une modalité = effectif de la modalité / effectif total. Elle peut s''exprimer en valeur décimale (ex. : 0,25) ou en pourcentage (ex. : 25 %). La fréquence relative est un outil fondamental de l''organisation de données car elle permet de comparer des séries ayant des effectifs totaux différents.',
  'Confondre « fréquence relative » (proportion) avec « fréquence absolue » (= l''effectif brut). La fréquence absolue est le nombre d''occurrences ; la fréquence relative est la proportion, comparable entre séries.',
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
  '04b10000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? En cycle 3, un tableau de données à double entrée est un outil trop complexe pour être introduit en classe.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les tableaux à double entrée sont explicitement au programme du cycle 3. Les élèves doivent savoir lire un tableau croisé (ex. : résultats d''élèves en fonction de leur groupe et de leur genre) et en extraire des informations pertinentes. La difficulté réside dans la lecture des lignes ET des colonnes simultanément. Un enseignement progressif — d''abord lire, ensuite compléter, puis construire — permet d''introduire ces outils de manière adaptée.',
  'Croire que les tableaux à double entrée dépassent les capacités des élèves de cycle 3. Au contraire, ils font partie des outils de représentation que les élèves doivent maîtriser à ce niveau, dans des contextes concrets (emploi du temps, relevés météo, résultats sportifs...).',
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
  '04b10000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_did_statistiques_donnees',
  'Enseigner l''organisation et la gestion de données en cycle 3',
  'Standard',
  'qcm',
  'Quelle approche est recommandée pour introduire la notion de moyenne en cycle 3 ?',
  NULL,
  '[{"id":"a","label":"Partir d''emblée de la formule : moyenne = somme ÷ nombre de valeurs"},{"id":"b","label":"Introduire la moyenne comme un « partage équitable » à partir de situations concrètes, puis formaliser"},{"id":"c","label":"Attendre que les élèves aient maîtrisé la division décimale avant d''aborder la moyenne"},{"id":"d","label":"Présenter la moyenne uniquement comme un indicateur statistique abstrait"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La didactique recommande d''ancrer la notion de moyenne dans le sens avant la procédure : en partant de situations de « partage équitable » (ex. : redistribuer des billes pour que chaque élève en ait le même nombre), les élèves construisent le sens de la moyenne comme valeur représentative. Cette entrée conceptuelle précède la formalisation algorithmique (somme ÷ effectif) et prévient l''application mécanique sans compréhension.',
  'Présenter la formule d''emblée. Les recherches en didactique des mathématiques montrent que partir de la procédure sans le sens conduit à une application mécanique sans compréhension : les élèves calculent sans interpréter le résultat.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
