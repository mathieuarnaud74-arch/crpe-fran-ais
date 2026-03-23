-- Seed: Étendue et dispersion — Mesurer la variabilité (7 exercices)
-- Subdomain: organisation_donnees | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0d0000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité', 'Intermediaire',
  'reponse_courte',
  'Les tailles (en cm) de 8 élèves d''une classe de CM2 sont : 128 ; 131 ; 135 ; 138 ; 140 ; 142 ; 145 ; 152. Calculer l''étendue de cette série statistique.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["24","24 cm","24cm"]}'::jsonb,
  'L''étendue d''une série statistique est la différence entre la valeur maximale et la valeur minimale. Ici, l''étendue vaut 152 − 128 = 24 cm. Cette mesure donne une première information sur la dispersion de la série : les tailles des élèves s''étalent sur une plage de 24 cm. L''étendue est l''indicateur de dispersion le plus simple à calculer, mais elle ne tient compte que de deux valeurs (le maximum et le minimum) et ignore la répartition des autres données.',
  'Confondre l''étendue avec la moyenne ou la médiane. L''étendue est un indicateur de dispersion, pas de position centrale.',
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
  'fb0d0000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité', 'Intermediaire',
  'qcm',
  'Un maraîcher relève les masses (en kg) de 6 caisses de tomates : 4,2 ; 4,5 ; 4,8 ; 5,1 ; 4,9 ; 4,6. L''étendue de cette série est 0,9 kg. Que peut-on en conclure ?',
  NULL,
  '[{"id":"a","label":"Les caisses ont toutes exactement la même masse"},{"id":"b","label":"Les masses sont relativement homogènes, avec peu de variabilité"},{"id":"c","label":"Les masses sont très dispersées, le conditionnement est irrégulier"},{"id":"d","label":"On ne peut rien conclure à partir de l''étendue seule"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''étendue est de 0,9 kg pour des masses comprises entre 4,2 kg et 5,1 kg. Rapportée à la valeur moyenne (environ 4,7 kg), cette étendue est relativement faible (environ 19 % de la moyenne). Cela indique que les masses des caisses sont assez homogènes : la plus lourde ne dépasse la plus légère que de 0,9 kg. En contexte professionnel, cette information aide le maraîcher à évaluer la régularité de son conditionnement. Une étendue plus grande signalerait des caisses remplies de manière irrégulière.',
  'Interpréter l''étendue sans la rapporter au contexte. Une étendue de 0,9 serait énorme pour des masses de 1 kg, mais elle est modérée pour des masses d''environ 5 kg.',
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
  'fb0d0000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité', 'Intermediaire',
  'vrai_faux',
  'La série A contient les valeurs : 10 ; 11 ; 12 ; 13 ; 14 (étendue = 4). On ajoute la valeur 30, obtenant la série B : 10 ; 11 ; 12 ; 13 ; 14 ; 30 (étendue = 20). L''étendue est un indicateur fiable de la dispersion d''une série car elle prend en compte toutes les valeurs.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''étendue ne prend en compte que deux valeurs : le maximum et le minimum. Elle est donc très sensible aux valeurs extrêmes (outliers). Dans cet exemple, l''ajout d''une seule valeur aberrante (30) fait passer l''étendue de 4 à 20, soit une multiplication par 5, alors que les 5 premières valeurs restent regroupées entre 10 et 14. L''étendue donne ici une image déformée de la dispersion réelle. C''est pourquoi on utilise souvent d''autres indicateurs plus robustes comme l''écart interquartile (IQR), qui n''est pas affecté par les valeurs extrêmes.',
  'Penser que l''étendue est un indicateur robuste. En réalité, c''est l''un des indicateurs les plus sensibles aux valeurs aberrantes, car il suffit d''une seule valeur extrême pour le modifier considérablement.',
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
  'fb0d0000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité', 'Intermediaire',
  'qcm',
  'On considère les notes de 5 élèves : 8 ; 10 ; 12 ; 14 ; 16. La moyenne est 12. Calculer l''écart moyen de cette série (moyenne des écarts absolus à la moyenne).',
  NULL,
  '[{"id":"a","label":"2,4"},{"id":"b","label":"3,2"},{"id":"c","label":"4"},{"id":"d","label":"8"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''écart moyen est la moyenne des valeurs absolues des écarts à la moyenne. On calcule chaque écart : |8 − 12| = 4, |10 − 12| = 2, |12 − 12| = 0, |14 − 12| = 2, |16 − 12| = 4. La somme des écarts absolus vaut 4 + 2 + 0 + 2 + 4 = 12. L''écart moyen est donc 12 / 5 = 2,4. Cet indicateur mesure en moyenne de combien chaque valeur s''écarte de la moyenne de la série. Contrairement à l''étendue, l''écart moyen utilise toutes les valeurs de la série, ce qui en fait un indicateur de dispersion plus représentatif.',
  'Oublier de prendre les valeurs absolues et obtenir un écart moyen nul (car la somme algébrique des écarts à la moyenne est toujours nulle).',
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
  'fb0d0000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité', 'Intermediaire',
  'reponse_courte',
  'Deux équipes de basket ont marqué les points suivants lors de 5 matchs. Équipe X : 78 ; 82 ; 80 ; 79 ; 81. Équipe Y : 65 ; 95 ; 72 ; 88 ; 80. Quelle équipe a les scores les plus réguliers ? Répondre par X ou Y.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["X","x","Équipe X","equipe X"]}'::jsonb,
  'Pour comparer la régularité, on calcule l''étendue de chaque série. Équipe X : étendue = 82 − 78 = 4 points. Équipe Y : étendue = 95 − 65 = 30 points. L''équipe X a une étendue beaucoup plus faible (4 contre 30), ce qui signifie que ses scores sont beaucoup plus resserrés autour de leur valeur centrale. On peut vérifier avec l''écart moyen : la moyenne de X est 80 et l''écart moyen vaut (2 + 2 + 0 + 1 + 1) / 5 = 1,2. La moyenne de Y est 80 et l''écart moyen vaut (15 + 15 + 8 + 8 + 0) / 5 = 9,2. Par tous les indicateurs de dispersion, l''équipe X est nettement plus régulière.',
  'Se fier uniquement aux moyennes : les deux équipes ont la même moyenne (80 points), mais des dispersions très différentes. La moyenne seule ne renseigne pas sur la régularité.',
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
  'fb0d0000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité', 'Intermediaire',
  'qcm',
  'Une série de 20 valeurs a une étendue de 40 et un écart interquartile (IQR) de 8. Quel indicateur est le plus pertinent pour décrire la dispersion « typique » des données, sachant que la série contient des valeurs extrêmes ?',
  NULL,
  '[{"id":"a","label":"L''étendue, car elle couvre l''ensemble des données"},{"id":"b","label":"L''écart interquartile, car il résiste aux valeurs extrêmes"},{"id":"c","label":"Les deux indicateurs sont équivalents"},{"id":"d","label":"Aucun des deux n''est pertinent"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Lorsqu''une série contient des valeurs extrêmes (outliers), l''étendue est fortement influencée par ces valeurs aberrantes et ne reflète pas la dispersion « typique » des données. L''écart interquartile (IQR = Q₃ − Q₁) ne considère que les 50 % centraux de la distribution et est donc insensible aux extrêmes. Ici, l''étendue de 40 est gonflée par les outliers, tandis que l''IQR de 8 reflète la dispersion réelle de la majorité des données. C''est pourquoi l''IQR est l''indicateur recommandé en présence de valeurs aberrantes, tout comme la médiane est préférée à la moyenne pour la tendance centrale.',
  'Préférer systématiquement l''étendue sous prétexte qu''elle utilise « toute la plage » des données. En présence d''outliers, cette propriété devient un inconvénient.',
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
  'fb0d0000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité', 'Intermediaire',
  'qcm',
  'Un météorologue relève les températures maximales (en °C) sur une semaine dans deux villes. Ville A : 18 ; 20 ; 19 ; 21 ; 20 ; 22 ; 18. Ville B : 12 ; 25 ; 15 ; 28 ; 14 ; 26 ; 20. Quelle ville présente la plus grande variabilité de température et quelle est la différence d''étendue entre les deux villes ?',
  NULL,
  '[{"id":"a","label":"Ville A, différence de 2 °C"},{"id":"b","label":"Ville B, différence de 12 °C"},{"id":"c","label":"Ville B, différence de 16 °C"},{"id":"d","label":"Les deux villes ont la même variabilité"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Calculons l''étendue pour chaque ville. Ville A : max = 22, min = 18, étendue = 22 − 18 = 4 °C. Ville B : max = 28, min = 12, étendue = 28 − 12 = 16 °C. La différence d''étendue est 16 − 4 = 12 °C. La ville B présente une variabilité beaucoup plus importante : ses températures oscillent sur 16 °C contre seulement 4 °C pour la ville A. En contexte météorologique, cette information est essentielle : la ville A a un climat plus stable, tandis que la ville B connaît de fortes amplitudes thermiques. Un habitant de la ville B doit adapter sa tenue vestimentaire de manière beaucoup plus importante au fil de la semaine.',
  'Calculer la différence des moyennes plutôt que la différence des étendues. Les moyennes des deux villes sont proches (≈ 19,7 °C pour A et ≈ 20 °C pour B), mais leurs dispersions sont très différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
