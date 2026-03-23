-- Seed: Lecture de données dans les médias (7 exercices)
-- Subdomain: organisation_donnees | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0f0000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_lecture_donnees_media',
  'Lecture de données dans les médias', 'Facile',
  'qcm',
  'Une infographie publiée dans un journal indique : « 3 Français sur 4 pratiquent une activité sportive régulière ». Quel pourcentage cela représente-t-il ?',
  NULL,
  '[{"id":"a","label":"34 %"},{"id":"b","label":"50 %"},{"id":"c","label":"75 %"},{"id":"d","label":"80 %"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '« 3 sur 4 » signifie 3/4, soit 3 ÷ 4 = 0,75 = 75 %. Pour convertir une fraction en pourcentage, on divise le numérateur par le dénominateur et on multiplie par 100. Ce type de formulation (« X sur Y ») est très fréquent dans les médias. Quelques équivalences courantes à connaître : 1 sur 2 = 50 %, 1 sur 3 ≈ 33 %, 1 sur 4 = 25 %, 3 sur 4 = 75 %, 1 sur 5 = 20 %, 1 sur 10 = 10 %. Savoir passer d''une formulation à l''autre est essentiel pour comprendre et critiquer les données présentées dans les médias.',
  'Confondre « 3 sur 4 » avec « 3 pour 4 » et additionner (3 + 4 = 7), obtenant un pourcentage erroné de 3/7 ≈ 43 %.',
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
  'fb0f0000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_lecture_donnees_media',
  'Lecture de données dans les médias', 'Facile',
  'qcm',
  'Un article affirme : « Selon une étude de l''INSEE (2023), le taux de chômage des jeunes de 15 à 24 ans s''élève à 17,2 %. » Parmi les éléments suivants, lequel est essentiel pour évaluer la fiabilité de cette donnée ?',
  NULL,
  '[{"id":"a","label":"Le nom du journaliste qui a écrit l''article"},{"id":"b","label":"La source (INSEE) et la date (2023) de l''étude"},{"id":"c","label":"Le nombre de pages de l''article"},{"id":"d","label":"La couleur du graphique accompagnant la donnée"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour évaluer la fiabilité d''une donnée statistique dans les médias, il faut vérifier la source et la date. Ici, la source est l''INSEE (Institut National de la Statistique et des Études Économiques), un organisme officiel et reconnu, ce qui est un gage de fiabilité. La date (2023) indique que la donnée est récente. Ces deux éléments — source et date — sont les critères fondamentaux pour juger de la crédibilité d''une information chiffrée. Une donnée sans source identifiable ou très ancienne doit être prise avec précaution.',
  'Accorder la même crédibilité à toutes les sources. Un chiffre provenant d''un organisme officiel (INSEE, Eurostat, OMS) n''a pas la même fiabilité qu''un sondage non sourcé ou un chiffre avancé sans référence.',
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
  'fb0f0000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_lecture_donnees_media',
  'Lecture de données dans les médias', 'Facile',
  'vrai_faux',
  'Un article de presse titre : « Les ventes de vélos électriques ont augmenté de 30 % en un an, tandis que les accidents de vélo ont aussi augmenté de 30 %. On peut donc conclure que les vélos électriques sont la cause de l''augmentation des accidents. »',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Le fait que deux phénomènes évoluent dans le même sens (corrélation) ne prouve pas que l''un cause l''autre (causalité). C''est le piège classique de la confusion entre corrélation et causalité. L''augmentation des accidents peut avoir de nombreuses autres causes : augmentation globale du nombre de cyclistes (pas seulement électriques), dégradation des infrastructures cyclables, conditions météorologiques, changement dans la méthode de comptage des accidents, etc. Pour établir un lien de causalité, il faudrait une étude contrôlée isolant l''effet des vélos électriques. En lisant les médias, il faut toujours se demander : cette relation est-elle simplement une corrélation ou une causalité prouvée ?',
  'Confondre corrélation et causalité est l''une des erreurs de raisonnement les plus fréquentes dans l''interprétation des données médiatiques. Deux événements peuvent évoluer ensemble sans que l''un soit la cause de l''autre.',
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
  'fb0f0000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_lecture_donnees_media',
  'Lecture de données dans les médias', 'Facile',
  'qcm',
  'Un journal titre : « Le nombre de cambriolages a augmenté de 200 cas en un an dans la ville. » Un autre journal titre : « Le taux de cambriolages a baissé de 5 % en un an dans la ville. » Les deux informations peuvent-elles être vraies simultanément ?',
  NULL,
  '[{"id":"a","label":"Non, les deux informations sont contradictoires"},{"id":"b","label":"Oui, si la population de la ville a fortement augmenté"},{"id":"c","label":"Non, un nombre et un pourcentage ne peuvent pas aller en sens inverse"},{"id":"d","label":"Oui, mais uniquement si l''un des deux journaux se trompe"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les deux informations peuvent être vraies simultanément. Par exemple, si la ville comptait 100 000 habitants avec 4 000 cambriolages (taux de 4 %) et qu''elle passe à 120 000 habitants avec 4 200 cambriolages, le nombre a augmenté de 200 mais le taux est passé de 4 % à 3,5 %, soit une baisse de 0,5 point (environ −12,5 % en relatif). Cet exemple illustre la différence fondamentale entre valeurs absolues (le nombre brut) et valeurs relatives (le pourcentage ou le taux). Les médias choisissent parfois l''une ou l''autre présentation selon le message qu''ils souhaitent faire passer, d''où l''importance de toujours identifier si l''on parle en absolu ou en relatif.',
  'Penser qu''un nombre et un pourcentage doivent obligatoirement évoluer dans le même sens. Si le dénominateur (ici la population) change, nombre absolu et taux peuvent évoluer en sens opposé.',
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
  'fb0f0000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_lecture_donnees_media',
  'Lecture de données dans les médias', 'Facile',
  'qcm',
  'Un sondage indique : « 62 % des Français sont favorables à cette mesure (enquête réalisée auprès de 1 000 personnes). » Quelle est la différence entre la population étudiée et l''échantillon interrogé ?',
  NULL,
  '[{"id":"a","label":"La population est les 1 000 personnes interrogées, l''échantillon est l''ensemble des Français"},{"id":"b","label":"La population est l''ensemble des Français, l''échantillon est les 1 000 personnes interrogées"},{"id":"c","label":"Population et échantillon désignent la même chose"},{"id":"d","label":"L''échantillon est toujours plus grand que la population"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'En statistiques, la population désigne l''ensemble complet des individus sur lesquels porte l''étude (ici, l''ensemble des Français). L''échantillon est le sous-ensemble de cette population effectivement interrogé (ici, 1 000 personnes). Le résultat du sondage (62 %) est une estimation obtenue sur l''échantillon, qu''on extrapole à la population entière. La qualité de cette extrapolation dépend de la taille de l''échantillon et de sa représentativité (âge, sexe, catégorie socioprofessionnelle, zone géographique). Un échantillon trop petit ou non représentatif peut donner des résultats biaisés.',
  'Confondre population et échantillon. L''échantillon est toujours un sous-ensemble de la population, jamais l''inverse.',
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
  'fb0f0000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_lecture_donnees_media',
  'Lecture de données dans les médias', 'Facile',
  'vrai_faux',
  'Un site internet publie un sondage : « Êtes-vous satisfait de votre maire ? » Les internautes peuvent voter librement. Avec 85 % de « non » sur 2 000 votes, on peut conclure que 85 % de la population de la commune est insatisfaite.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Ce type de sondage en ligne souffre d''un biais de sélection majeur : seuls les internautes motivés (souvent les plus mécontents) participent spontanément. L''échantillon n''est pas représentatif de la population de la commune car il n''est pas constitué de manière aléatoire. Les personnes satisfaites sont moins incitées à répondre, les personnes sans accès internet ou peu à l''aise avec le numérique sont exclues, et rien n''empêche une même personne de voter plusieurs fois. Un sondage fiable nécessite un échantillon aléatoire et représentatif de la population cible. Les sondages en accès libre sur internet sont des indicateurs de tendance, pas des mesures statistiques rigoureuses.',
  'Considérer tout sondage comme fiable quel que soit son mode de collecte. La méthode d''échantillonnage (aléatoire vs. volontaire) est déterminante pour la validité des résultats.',
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
  'fb0f0000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_lecture_donnees_media',
  'Lecture de données dans les médias', 'Facile',
  'qcm',
  'Un journal titre : « La pollution a doublé en 10 ans ! » En lisant l''article, on apprend que le nombre de jours de dépassement du seuil de pollution est passé de 3 jours en 2014 à 6 jours en 2024. Quelle critique peut-on formuler sur ce titre ?',
  NULL,
  '[{"id":"a","label":"Le titre est parfaitement exact et informatif"},{"id":"b","label":"Le titre est mathématiquement correct mais trompeur car les valeurs absolues sont très faibles"},{"id":"c","label":"Le titre est faux car 6 n''est pas le double de 3"},{"id":"d","label":"On ne peut formuler aucune critique sans connaître la source"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le titre est mathématiquement correct : 6 est bien le double de 3, soit une augmentation de 100 %. Cependant, il est trompeur car il utilise un pourcentage spectaculaire (« doublé ») pour masquer des valeurs absolues très faibles. Passer de 3 à 6 jours de dépassement sur 365 jours dans l''année, cela reste marginal (de 0,8 % à 1,6 % des jours). Le lecteur qui ne lit que le titre peut imaginer une situation catastrophique, alors que la réalité est bien plus nuancée. C''est un procédé fréquent dans les médias : utiliser des variations relatives impressionnantes quand les valeurs absolues sont petites. L''esprit critique consiste à toujours demander : « Oui, mais combien en valeur absolue ? »',
  'Se laisser impressionner par un pourcentage d''augmentation élevé sans vérifier les valeurs absolues sous-jacentes. Un doublement peut être insignifiant si la valeur de départ est très faible.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
