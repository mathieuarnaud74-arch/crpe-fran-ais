-- Seed: Histogrammes à classes — Lecture et construction (7 exercices)
-- Subdomain: organisation_donnees | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb080000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction', 'Intermediaire',
  'qcm',
  'Un histogramme représente la répartition des tailles (en cm) de 40 élèves. Les classes sont de même amplitude (10 cm). La barre correspondant à la classe [140 ; 150[ a une hauteur de 12. Combien d''élèves mesurent entre 140 cm et 150 cm ?',
  NULL,
  '[{"id":"a","label":"10"},{"id":"b","label":"12"},{"id":"c","label":"14"},{"id":"d","label":"40"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Lorsque toutes les classes d''un histogramme ont la même amplitude, la hauteur de chaque barre est directement proportionnelle à l''effectif de la classe. Ici, la hauteur de 12 signifie que 12 élèves ont une taille comprise dans l''intervalle [140 ; 150[. La lecture est donc directe : effectif = hauteur de la barre.',
  'L''erreur fréquente est de penser qu''il faut toujours calculer une aire pour lire un effectif, même lorsque les classes sont de même amplitude.',
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
  'fb080000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans un histogramme à classes d''amplitudes égales, la classe modale est la classe dont la barre est la plus haute.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La classe modale est la classe qui a le plus grand effectif (ou la plus grande fréquence). Lorsque toutes les classes ont la même amplitude, la hauteur des barres est proportionnelle aux effectifs. La barre la plus haute correspond donc bien à la classe modale. Attention : si les classes ont des amplitudes différentes, il faut comparer les densités de fréquence (hauteur des barres), et non les aires.',
  'L''erreur courante est d''appliquer cette règle lorsque les classes ont des amplitudes inégales. Dans ce cas, la barre la plus haute ne correspond pas nécessairement à la classe modale.',
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
  'fb080000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction', 'Intermediaire',
  'qcm',
  'Un histogramme à classes d''amplitudes égales (10 unités) représente les temps de trajet (en minutes) de 60 employés. Les hauteurs des barres sont : [0 ; 10[ → 5, [10 ; 20[ → 15, [20 ; 30[ → 25, [30 ; 40[ → 10, [40 ; 50[ → 5. Quelle est la fréquence de la classe [20 ; 30[ ?',
  NULL,
  '[{"id":"a","label":"25 %"},{"id":"b","label":"37,5 %"},{"id":"c","label":"41,7 %"},{"id":"d","label":"50 %"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''effectif de la classe [20 ; 30[ est 25. L''effectif total est : 5 + 15 + 25 + 10 + 5 = 60. La fréquence est donc : 25 ÷ 60 ≈ 0,4167, soit environ 41,7 %. Pour calculer une fréquence à partir d''un histogramme à classes égales, on divise l''effectif de la classe (lu sur la hauteur de la barre) par l''effectif total.',
  'L''erreur fréquente est de diviser par le nombre de classes (5) au lieu de l''effectif total (60), ce qui donnerait 25 ÷ 5 = 5, un résultat sans signification.',
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
  'fb080000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction', 'Intermediaire',
  'reponse_courte',
  'Un histogramme représente les masses (en kg) de colis. Les classes ont des amplitudes inégales. La classe [0 ; 5[ a une fréquence de 0,30 et une amplitude de 5. Quelle est la densité de fréquence (hauteur de la barre) pour cette classe ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["0,06","0.06"]}'::jsonb,
  'Lorsque les classes d''un histogramme ont des amplitudes inégales, on ne peut pas représenter directement les fréquences en hauteur. On utilise la densité de fréquence : densité = fréquence ÷ amplitude. Ici : densité = 0,30 ÷ 5 = 0,06. C''est cette densité qui détermine la hauteur de la barre. L''aire de la barre (densité × amplitude = 0,06 × 5 = 0,30) redonne bien la fréquence.',
  'L''erreur classique est de confondre fréquence et densité de fréquence, en utilisant directement 0,30 comme hauteur de la barre, ce qui fausserait la représentation graphique.',
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
  'fb080000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction', 'Intermediaire',
  'qcm',
  'On souhaite tracer la courbe des fréquences cumulées croissantes (ogive) à partir du tableau suivant : [0 ; 10[ → fréq. 0,15 ; [10 ; 20[ → fréq. 0,25 ; [20 ; 30[ → fréq. 0,35 ; [30 ; 40[ → fréq. 0,25. Quelle est la fréquence cumulée croissante à la borne x = 30 ?',
  NULL,
  '[{"id":"a","label":"0,35"},{"id":"b","label":"0,60"},{"id":"c","label":"0,75"},{"id":"d","label":"1,00"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La fréquence cumulée croissante à la borne x = 30 correspond à la somme des fréquences de toutes les classes inférieures ou égales à cette borne : F(30) = 0,15 + 0,25 + 0,35 = 0,75. Cela signifie que 75 % des individus ont une valeur inférieure à 30. Sur l''ogive, on place le point (30 ; 0,75) et on relie les points par des segments.',
  'L''erreur courante est de ne prendre que la fréquence de la classe [20 ; 30[ (0,35) sans additionner les fréquences des classes précédentes.',
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
  'fb080000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction', 'Intermediaire',
  'qcm',
  'Deux histogrammes à classes égales représentent les notes d''un même examen dans deux lycées. Le lycée A a une distribution centrée autour de [12 ; 14[ avec peu de dispersion. Le lycée B a des effectifs répartis uniformément sur toutes les classes de [4 ; 20[. Quelle affirmation est correcte ?',
  NULL,
  '[{"id":"a","label":"Le lycée A a une plus grande dispersion que le lycée B."},{"id":"b","label":"Le lycée B a une plus grande dispersion que le lycée A."},{"id":"c","label":"Les deux lycées ont la même dispersion."},{"id":"d","label":"On ne peut rien conclure sans connaître les effectifs exacts."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La dispersion d''une distribution se lit sur un histogramme par l''étalement des barres. Le lycée A, dont la distribution est concentrée autour de [12 ; 14[, présente une faible dispersion : les notes sont regroupées. Le lycée B, avec des effectifs uniformément répartis sur toutes les classes, a une distribution étalée, donc une plus grande dispersion. On peut évaluer visuellement la dispersion sans calculer l''écart-type.',
  'L''erreur fréquente est de confondre hauteur maximale des barres et dispersion : une barre très haute ne signifie pas une grande dispersion, mais au contraire une concentration.',
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
  'fb080000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction', 'Intermediaire',
  'reponse_courte',
  'On dispose des données suivantes sur les durées (en minutes) de 30 appels téléphoniques : [0 ; 5[ → 8 appels, [5 ; 10[ → 12 appels, [10 ; 15[ → 6 appels, [15 ; 20[ → 4 appels. On souhaite construire un histogramme à classes égales (amplitude 5). Quelle sera la hauteur de la barre la plus haute ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12"]}'::jsonb,
  'Puisque toutes les classes ont la même amplitude (5 minutes), la hauteur de chaque barre est directement égale à l''effectif de la classe. Les effectifs sont : 8, 12, 6 et 4. La barre la plus haute correspond à la classe [5 ; 10[ avec un effectif de 12. Cette classe est aussi la classe modale de la distribution. Pour construire l''histogramme, on trace quatre barres adjacentes (sans espace entre elles) de hauteurs respectives 8, 12, 6 et 4.',
  'L''erreur courante est de laisser des espaces entre les barres (comme dans un diagramme en bâtons), alors que dans un histogramme les barres doivent être juxtaposées car elles représentent des classes contiguës d''une variable continue.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
