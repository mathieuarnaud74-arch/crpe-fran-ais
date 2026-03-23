-- Seed: Statistiques — Comparer deux séries (7 exercices)
-- Subdomain: organisation_donnees | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb090000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries', 'Difficile',
  'qcm',
  'Un enseignant compare les résultats de deux groupes à un même contrôle. Groupe A (5 élèves) : 8, 10, 12, 14, 16. Groupe B (5 élèves) : 10, 11, 12, 13, 14. Quelle affirmation est correcte concernant les moyennes ?',
  NULL,
  '[{"id":"a","label":"Le groupe A a une moyenne supérieure à celle du groupe B."},{"id":"b","label":"Le groupe B a une moyenne supérieure à celle du groupe A."},{"id":"c","label":"Les deux groupes ont la même moyenne."},{"id":"d","label":"On ne peut pas comparer sans connaître les médianes."}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Moyenne du groupe A : (8 + 10 + 12 + 14 + 16) ÷ 5 = 60 ÷ 5 = 12. Moyenne du groupe B : (10 + 11 + 12 + 13 + 14) ÷ 5 = 60 ÷ 5 = 12. Les deux groupes ont exactement la même moyenne (12). Cependant, la répartition des notes est très différente : le groupe A a des notes plus étalées, le groupe B des notes plus resserrées. La moyenne seule ne suffit pas à caractériser une distribution.',
  'L''erreur fréquente est de conclure hâtivement que des moyennes identiques impliquent des distributions identiques. Ici, malgré des moyennes égales, les deux groupes ont des dispersions très différentes.',
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
  'fb090000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries', 'Difficile',
  'reponse_courte',
  'Série X : 3, 5, 7, 9, 11, 13, 15. Série Y : 8, 9, 9, 10, 10, 11, 12. Quelle est la médiane de la série Y ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10"]}'::jsonb,
  'La série Y ordonnée est : 8, 9, 9, 10, 10, 11, 12. Avec 7 valeurs, la médiane est la valeur de rang (7+1)÷2 = 4, soit la 4e valeur : 10. Pour comparaison, la médiane de la série X (3, 5, 7, 9, 11, 13, 15) est la 4e valeur : 9. La série Y a donc une médiane plus élevée (10 > 9). La médiane partage la série en deux groupes de même effectif.',
  'L''erreur courante est de ne pas ordonner les valeurs avant de chercher la médiane, ou de calculer la moyenne à la place de la médiane.',
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
  'fb090000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries', 'Difficile',
  'qcm',
  'Un professeur d''EPS compare les performances au saut en longueur de deux classes. Classe A : étendue = 1,2 m. Classe B : étendue = 0,4 m. Les moyennes sont identiques. Quelle classe présente des résultats plus homogènes ?',
  NULL,
  '[{"id":"a","label":"La classe A, car son étendue est plus grande."},{"id":"b","label":"La classe B, car son étendue est plus petite."},{"id":"c","label":"Les deux classes sont aussi homogènes l''une que l''autre."},{"id":"d","label":"On ne peut pas conclure avec l''étendue seule."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''étendue est la différence entre la plus grande et la plus petite valeur d''une série. C''est un indicateur de dispersion. Une étendue plus petite signifie que les valeurs sont plus resserrées, donc plus homogènes. La classe B (étendue = 0,4 m) a des résultats plus homogènes que la classe A (étendue = 1,2 m). Attention : l''étendue est un indicateur sensible aux valeurs extrêmes.',
  'L''erreur fréquente est de penser qu''une grande étendue signifie de meilleurs résultats, en confondant dispersion et performance.',
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
  'fb090000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries', 'Difficile',
  'qcm',
  'Un directeur d''école compare deux classes sur un test de mathématiques. Classe A : moyenne = 14, médiane = 11. Classe B : moyenne = 12, médiane = 13. Quelle classe devrait-il choisir pour représenter l''école à un concours si la majorité des élèves doivent obtenir un bon résultat ?',
  NULL,
  '[{"id":"a","label":"La classe A, car sa moyenne est plus élevée."},{"id":"b","label":"La classe B, car sa médiane est plus élevée."},{"id":"c","label":"Les deux classes sont équivalentes."},{"id":"d","label":"On ne peut pas décider sans connaître l''écart-type."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Dans la classe A, la moyenne (14) est nettement supérieure à la médiane (11), ce qui indique que quelques élèves très performants tirent la moyenne vers le haut, mais plus de la moitié des élèves ont une note inférieure ou égale à 11. Dans la classe B, la médiane (13) est supérieure à la moyenne (12), ce qui signifie que plus de la moitié des élèves ont au moins 13. Si l''objectif est que la majorité des élèves réussissent, la classe B est préférable. La médiane est plus pertinente que la moyenne pour évaluer le niveau « typique » d''un groupe.',
  'L''erreur classique est de se fier uniquement à la moyenne. Quand la moyenne est très différente de la médiane, la distribution est asymétrique et la moyenne peut être trompeuse.',
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
  'fb090000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries', 'Difficile',
  'reponse_courte',
  'Le temps de course (en secondes) de deux sprinters sur 10 essais donne : Sprinter A → moyenne = 11,2 s, écart-type = 0,3 s. Sprinter B → moyenne = 10,8 s, écart-type = 1,5 s. Calculez le coefficient de variation du sprinter B (en pourcentage, arrondi à l''unité).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["14","14 %","14%"]}'::jsonb,
  'Le coefficient de variation (CV) mesure la dispersion relative d''une série par rapport à sa moyenne : CV = (écart-type ÷ moyenne) × 100. Pour le sprinter B : CV = (1,5 ÷ 10,8) × 100 ≈ 13,89 %, soit environ 14 %. Pour comparaison, le CV du sprinter A est : (0,3 ÷ 11,2) × 100 ≈ 2,7 %. Le sprinter A est beaucoup plus régulier. Le CV est particulièrement utile pour comparer la dispersion de séries dont les moyennes sont différentes.',
  'L''erreur courante est de comparer directement les écarts-types sans tenir compte des moyennes. Un écart-type de 1,5 peut sembler faible, mais rapporté à une moyenne de 10,8, il représente une variation importante (14 %).',
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
  'fb090000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries', 'Difficile',
  'vrai_faux',
  'Vrai ou faux : deux distributions peuvent avoir la même moyenne, la même médiane et la même étendue, tout en étant très différentes dans leur répartition.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Considérons deux séries de 5 valeurs : Série P = {2, 2, 6, 10, 10} et Série Q = {2, 5, 6, 7, 10}. Moyenne de P = 30 ÷ 5 = 6, médiane = 6, étendue = 8. Moyenne de Q = 30 ÷ 5 = 6, médiane = 6, étendue = 8. Pourtant, P a des valeurs concentrées aux extrêmes (distribution bimodale) tandis que Q est plus uniformément répartie. Cela montre qu''aucun indicateur unique ne suffit à résumer complètement une distribution. Il est essentiel de combiner plusieurs indicateurs (position, dispersion) et de regarder la forme de la distribution.',
  'L''erreur fréquente est de croire que moyenne + médiane + étendue suffisent à décrire entièrement une série. Ces trois indicateurs ne capturent pas la forme (symétrie, bimodalité) de la distribution.',
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
  'fb090000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries', 'Difficile',
  'qcm',
  'Deux classes de CM2 passent une évaluation de français notée sur 20. Classe A (28 élèves) : moyenne = 13,5 ; médiane = 14 ; étendue = 8. Classe B (32 élèves) : moyenne = 13,5 ; médiane = 12 ; étendue = 15. Un inspecteur souhaite identifier la classe la plus fragile. Quelle analyse est la plus pertinente ?',
  NULL,
  '[{"id":"a","label":"Les deux classes sont au même niveau car leurs moyennes sont identiques."},{"id":"b","label":"La classe B est plus fragile : sa médiane est plus basse et son étendue plus grande, indiquant des écarts importants."},{"id":"c","label":"La classe A est plus fragile car son étendue est plus faible, signe d''un manque de diversité."},{"id":"d","label":"Impossible de conclure sans les notes individuelles de chaque élève."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Malgré des moyennes identiques (13,5), les deux classes présentent des profils très différents. La classe B a une médiane de 12 (plus de la moitié des élèves sont en dessous de 12/20) et une étendue de 15 (forte hétérogénéité). Cela suggère que quelques très bons élèves tirent la moyenne vers le haut. La classe A, avec une médiane de 14 et une étendue de 8, est plus homogène et la majorité des élèves est au-dessus de 14. Dans un contexte d''enseignement, la classe B nécessite davantage de différenciation pédagogique. Ce type d''analyse croisée est fréquent dans les épreuves CRPE.',
  'L''erreur classique est de se contenter de comparer les moyennes. Deux moyennes identiques peuvent masquer des réalités très différentes. Il faut toujours croiser moyenne, médiane et indicateurs de dispersion pour une analyse pertinente.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
