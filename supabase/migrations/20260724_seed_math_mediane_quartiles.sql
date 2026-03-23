-- Seed: Médiane et quartiles — Calculs et interprétation (7 exercices)
-- Subdomain: organisation_donnees | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb040000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation', 'Intermediaire',
  'qcm',
  'On relève les notes suivantes obtenues par 9 élèves à un contrôle de mathématiques : 7 ; 9 ; 11 ; 12 ; 13 ; 14 ; 15 ; 16 ; 18. Quelle est la médiane de cette série statistique ?',
  NULL,
  '[{"id":"a","label":"12"},{"id":"b","label":"13"},{"id":"c","label":"12,5"},{"id":"d","label":"14"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La série comporte 9 valeurs déjà rangées dans l''ordre croissant. Lorsque l''effectif total est impair, la médiane est la valeur qui occupe le rang (n + 1) / 2. Ici, (9 + 1) / 2 = 5, donc la médiane est la 5ᵉ valeur de la série ordonnée : 13. La médiane sépare la série en deux sous-ensembles de même effectif : 4 valeurs inférieures ou égales à 13 et 4 valeurs supérieures ou égales à 13. Elle est un indicateur de position centrale robuste, peu sensible aux valeurs extrêmes, contrairement à la moyenne.',
  'Calculer la moyenne au lieu de la médiane. La moyenne vaut ici (7 + 9 + 11 + 12 + 13 + 14 + 15 + 16 + 18) / 9 = 115 / 9 ≈ 12,8, ce qui est différent de la médiane (13).',
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
  'fb040000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation', 'Intermediaire',
  'reponse_courte',
  'Les durées (en minutes) de 8 trajets domicile-école sont : 12 ; 15 ; 18 ; 20 ; 22 ; 25 ; 28 ; 35. Calculer la médiane de cette série.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["21","21 min","21 minutes"]}'::jsonb,
  'Lorsque l''effectif total est pair (ici n = 8), la médiane est la demi-somme des deux valeurs centrales, c''est-à-dire les valeurs de rang n/2 et n/2 + 1. Les valeurs de rang 4 et 5 sont respectivement 20 et 22. La médiane vaut donc (20 + 22) / 2 = 21 minutes. Cela signifie que la moitié des trajets durent moins de 21 minutes et l''autre moitié plus de 21 minutes. Remarquons que 21 n''appartient pas nécessairement à la série : la médiane d''un effectif pair peut être une valeur « intermédiaire ».',
  'Oublier de faire la demi-somme et donner directement la 4ᵉ valeur (20) ou la 5ᵉ valeur (22) comme médiane, au lieu de calculer leur moyenne.',
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
  'fb040000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation', 'Intermediaire',
  'qcm',
  'On considère la série ordonnée suivante de 12 valeurs : 3 ; 5 ; 7 ; 8 ; 10 ; 12 ; 14 ; 15 ; 17 ; 19 ; 21 ; 24. Quelles sont les valeurs du premier quartile Q₁ et du troisième quartile Q₃ ?',
  NULL,
  '[{"id":"a","label":"Q₁ = 7 et Q₃ = 19"},{"id":"b","label":"Q₁ = 7,5 et Q₃ = 18"},{"id":"c","label":"Q₁ = 8 et Q₃ = 17"},{"id":"d","label":"Q₁ = 5 et Q₃ = 21"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour une série de 12 valeurs, on détermine les quartiles en divisant la série en 4 groupes de taille égale. Le premier quartile Q₁ est la médiane de la première moitié (les 6 premières valeurs : 3, 5, 7, 8, 10, 12). La médiane de ces 6 valeurs est (7 + 8) / 2 = 7,5. Le troisième quartile Q₃ est la médiane de la seconde moitié (les 6 dernières valeurs : 14, 15, 17, 19, 21, 24). La médiane de ces 6 valeurs est (17 + 19) / 2 = 18. Ainsi Q₁ = 7,5 et Q₃ = 18. Au moins 25 % des valeurs sont inférieures ou égales à Q₁ et au moins 75 % sont inférieures ou égales à Q₃.',
  'Confondre le rang du quartile avec la valeur du quartile : le rang de Q₁ n''est pas 3 (le 3ᵉ élément), il faut calculer la médiane de la sous-série appropriée.',
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
  'fb040000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation', 'Intermediaire',
  'reponse_courte',
  'Dans une série statistique, le premier quartile vaut Q₁ = 12 et le troisième quartile vaut Q₃ = 28. Calculer l''écart interquartile de cette série.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["16","IQR = 16","Q3 - Q1 = 16"]}'::jsonb,
  'L''écart interquartile (souvent noté IQR pour Interquartile Range) est la différence entre le troisième et le premier quartile : IQR = Q₃ − Q₁ = 28 − 12 = 16. L''écart interquartile mesure la dispersion des 50 % de valeurs centrales de la série. Plus il est grand, plus la distribution est étalée ; plus il est petit, plus les valeurs centrales sont concentrées. C''est un indicateur de dispersion robuste car il n''est pas affecté par les valeurs extrêmes, contrairement à l''étendue (max − min).',
  'Confondre l''écart interquartile avec l''étendue de la série. L''étendue prend en compte la plus grande et la plus petite valeur, tandis que l''écart interquartile ne considère que les quartiles Q₁ et Q₃.',
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
  'fb040000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation', 'Intermediaire',
  'vrai_faux',
  'Dans une classe de 30 élèves, la médiane des notes à un devoir est 14/20 et la moyenne est 11/20. On peut en conclure que la majorité des élèves a obtenu une note supérieure ou égale à 14.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. La médiane à 14 signifie que la moitié des élèves (15 élèves) a obtenu 14 ou plus, et l''autre moitié a obtenu 14 ou moins. On ne peut pas dire que « la majorité » (plus de la moitié) a obtenu 14 ou plus : exactement la moitié se situe de chaque côté. De plus, le fait que la moyenne (11) soit nettement inférieure à la médiane (14) indique que quelques notes très basses tirent la moyenne vers le bas, ce qui révèle une distribution asymétrique avec une « queue » à gauche. Cela illustre bien la différence entre moyenne et médiane : la médiane résiste aux valeurs extrêmes, pas la moyenne.',
  'Interpréter « la médiane vaut 14 » comme « la majorité des élèves a au moins 14 ». La médiane sépare en deux moitiés égales, ce n''est pas une majorité stricte.',
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
  'fb040000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation', 'Intermediaire',
  'qcm',
  'Deux classes A et B ont passé le même examen. Classe A : médiane = 12, Q₁ = 9, Q₃ = 15. Classe B : médiane = 12, Q₁ = 11, Q₃ = 13. Quelle affirmation est correcte ?',
  NULL,
  '[{"id":"a","label":"Les deux classes ont des résultats identiques puisque leurs médianes sont égales"},{"id":"b","label":"La classe B a des résultats plus homogènes que la classe A"},{"id":"c","label":"La classe A a des résultats plus homogènes que la classe B"},{"id":"d","label":"On ne peut rien conclure sans connaître les moyennes"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les deux classes ont la même médiane (12), ce qui signifie que leur « valeur centrale » est identique. Cependant, l''écart interquartile diffère : IQR(A) = 15 − 9 = 6 et IQR(B) = 13 − 11 = 2. L''écart interquartile de la classe B est nettement plus petit, ce qui signifie que les 50 % de notes centrales de B sont beaucoup plus concentrées autour de la médiane. La classe B est donc plus homogène. La classe A présente une plus grande dispersion : certains élèves sont bien en dessous de la médiane (Q₁ = 9) et d''autres bien au-dessus (Q₃ = 15). Cet exemple montre que la médiane seule ne suffit pas à caractériser une distribution ; les quartiles apportent une information complémentaire sur la dispersion.',
  'Se limiter à comparer les médianes et conclure que les deux distributions sont identiques. Deux séries peuvent avoir la même médiane mais des dispersions très différentes.',
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
  'fb040000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation', 'Intermediaire',
  'qcm',
  'On observe le diagramme en boîte (box plot) suivant pour les temps de course (en secondes) d''un groupe d''élèves : minimum = 45, Q₁ = 52, médiane = 58, Q₃ = 65, maximum = 82. Quel pourcentage approximatif d''élèves a réalisé un temps compris entre 52 et 65 secondes ?',
  NULL,
  '[{"id":"a","label":"25 %"},{"id":"b","label":"50 %"},{"id":"c","label":"75 %"},{"id":"d","label":"100 %"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Dans un diagramme en boîte, la « boîte » s''étend de Q₁ à Q₃. Par définition des quartiles, environ 25 % des valeurs se trouvent en dessous de Q₁ et environ 25 % au-dessus de Q₃. La boîte elle-même contient donc environ 50 % des valeurs de la série, soit les 50 % centraux. Ici, entre Q₁ = 52 s et Q₃ = 65 s, on retrouve environ 50 % des élèves. Le trait vertical à l''intérieur de la boîte (la médiane = 58 s) sépare cette boîte en deux parties contenant chacune environ 25 % des effectifs. Les « moustaches » (de 45 à 52 et de 65 à 82) contiennent chacune environ 25 % des valeurs.',
  'Penser que la boîte contient 75 % des valeurs (en confondant « de Q₁ à Q₃ » avec « du minimum à Q₃ »). La boîte ne représente que les 50 % centraux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
