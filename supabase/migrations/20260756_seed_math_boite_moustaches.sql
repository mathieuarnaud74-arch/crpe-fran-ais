-- Seed: Boîte à moustaches — Lecture et interprétation (7 exercices)
-- Subdomain: organisation_donnees | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0c0000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation', 'Difficile',
  'qcm',
  'On lit sur un diagramme en boîte (box plot) les valeurs suivantes : minimum = 22, Q₁ = 35, médiane = 42, Q₃ = 51, maximum = 68. Quelles sont les valeurs du premier quartile, de la médiane et du troisième quartile ?',
  NULL,
  '[{"id":"a","label":"Q₁ = 35, médiane = 42, Q₃ = 51"},{"id":"b","label":"Q₁ = 22, médiane = 42, Q₃ = 68"},{"id":"c","label":"Q₁ = 35, médiane = 45, Q₃ = 51"},{"id":"d","label":"Q₁ = 22, médiane = 35, Q₃ = 51"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Dans un diagramme en boîte, la « boîte » est délimitée par Q₁ (bord gauche ou inférieur) et Q₃ (bord droit ou supérieur). Le trait vertical à l''intérieur de la boîte indique la médiane. Les « moustaches » s''étendent du minimum à Q₁ et de Q₃ au maximum. On lit donc directement : Q₁ = 35, médiane = 42, Q₃ = 51. Le minimum (22) et le maximum (68) ne sont pas des quartiles, ce sont les valeurs extrêmes de la série. Le diagramme en boîte synthétise cinq indicateurs statistiques essentiels en une seule représentation graphique.',
  'Confondre le minimum avec Q₁ ou le maximum avec Q₃. Les extrémités des moustaches représentent le minimum et le maximum, pas les quartiles.',
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
  'fb0c0000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation', 'Difficile',
  'reponse_courte',
  'Un diagramme en boîte indique Q₁ = 18 et Q₃ = 34. Calculer l''écart interquartile (IQR) de cette série.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["16","IQR = 16","Q3 - Q1 = 16"]}'::jsonb,
  'L''écart interquartile se lit directement sur le diagramme en boîte : c''est la largeur de la boîte, soit IQR = Q₃ − Q₁ = 34 − 18 = 16. Cet indicateur représente l''étendue des 50 % de valeurs centrales de la série. Plus la boîte est large, plus la distribution est dispersée autour de la médiane. L''IQR est un indicateur robuste de dispersion : contrairement à l''étendue (max − min), il n''est pas sensible aux valeurs extrêmes. Il sert aussi de base pour détecter les valeurs atypiques (règle des 1,5 × IQR).',
  'Calculer l''étendue (max − min) au lieu de l''écart interquartile (Q₃ − Q₁). L''étendue mesure la dispersion totale, l''IQR mesure la dispersion des 50 % centraux.',
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
  'fb0c0000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation', 'Difficile',
  'qcm',
  'On compare les diagrammes en boîte de deux classes ayant passé le même examen. Classe A : min = 4, Q₁ = 8, médiane = 12, Q₃ = 16, max = 20. Classe B : min = 9, Q₁ = 11, médiane = 13, Q₃ = 15, max = 17. Quelle affirmation est correcte ?',
  NULL,
  '[{"id":"a","label":"La classe A a de meilleurs résultats car son maximum est plus élevé"},{"id":"b","label":"La classe B est plus homogène car son écart interquartile est plus petit"},{"id":"c","label":"Les deux classes ont des résultats équivalents car leurs médianes sont proches"},{"id":"d","label":"La classe A est plus homogène car elle a plus de valeurs"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Comparons les deux distributions. Médianes : A = 12, B = 13, très proches. Écarts interquartiles : IQR(A) = 16 − 8 = 8, IQR(B) = 15 − 11 = 4. Étendues : A = 20 − 4 = 16, B = 17 − 9 = 8. La classe B est nettement plus homogène : sa boîte est deux fois plus étroite et ses moustaches sont plus courtes. La classe A a certes le maximum le plus élevé (20), mais aussi le minimum le plus bas (4), signe d''une grande dispersion. Un maximum élevé seul ne signifie pas « meilleurs résultats » : il faut regarder l''ensemble de la distribution.',
  'Se focaliser uniquement sur les valeurs extrêmes (min ou max) pour comparer les distributions, au lieu de comparer les indicateurs de position (médiane) et de dispersion (IQR).',
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
  'fb0c0000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation', 'Difficile',
  'qcm',
  'Un diagramme en boîte montre : min = 15, Q₁ = 20, médiane = 35, Q₃ = 40, max = 45. Que peut-on dire de l''asymétrie de cette distribution ?',
  NULL,
  '[{"id":"a","label":"La distribution est symétrique car la boîte est centrée"},{"id":"b","label":"La distribution est étalée vers la gauche (asymétrie négative) car la médiane est plus proche de Q₃"},{"id":"c","label":"La distribution est étalée vers la droite (asymétrie positive) car la médiane est plus proche de Q₁"},{"id":"d","label":"On ne peut pas déterminer l''asymétrie à partir d''un diagramme en boîte"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La médiane (35) est plus proche de Q₃ (40) que de Q₁ (20) : la distance médiane − Q₁ = 15 est bien plus grande que Q₃ − médiane = 5. La partie gauche de la boîte (de Q₁ à la médiane) est donc trois fois plus large que la partie droite (de la médiane à Q₃). Les 25 % de valeurs entre Q₁ et la médiane sont plus dispersées que celles entre la médiane et Q₃. La distribution est étalée vers les petites valeurs (queue à gauche) : c''est une asymétrie négative. Les moustaches gauche (20 − 15 = 5) et droite (45 − 40 = 5) sont de même longueur, confirmant que l''asymétrie provient de la position décentrée de la médiane dans la boîte.',
  'Croire que la distribution est symétrique parce que les moustaches sont de même longueur. L''asymétrie se lit aussi dans la position de la médiane à l''intérieur de la boîte.',
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
  'fb0c0000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation', 'Difficile',
  'vrai_faux',
  'Un diagramme en boîte indique Q₁ = 30 et Q₃ = 50. En appliquant la règle des 1,5 × IQR, une valeur de 85 est considérée comme une valeur atypique (outlier).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''écart interquartile vaut IQR = Q₃ − Q₁ = 50 − 30 = 20. La règle des 1,5 × IQR définit les bornes au-delà desquelles une valeur est considérée comme atypique : borne inférieure = Q₁ − 1,5 × IQR = 30 − 30 = 0, borne supérieure = Q₃ + 1,5 × IQR = 50 + 30 = 80. Toute valeur inférieure à 0 ou supérieure à 80 est considérée comme atypique. Ici, 85 > 80, donc 85 est bien une valeur atypique. Sur un diagramme en boîte, ces valeurs atypiques sont souvent représentées par des points isolés au-delà des moustaches, et les moustaches s''arrêtent à la dernière valeur non atypique.',
  'Confondre la borne de détection des outliers (Q₃ + 1,5 × IQR) avec le maximum de la série. La moustache supérieure ne s''étend pas nécessairement jusqu''au maximum si des valeurs atypiques existent.',
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
  'fb0c0000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation', 'Difficile',
  'reponse_courte',
  'On dispose de la série ordonnée suivante de 12 valeurs : 5, 8, 10, 12, 14, 16, 18, 20, 22, 25, 28, 32. Construire mentalement le diagramme en boîte : quelle est la valeur de la médiane ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["17","médiane = 17"]}'::jsonb,
  'La série comporte 12 valeurs (effectif pair). La médiane est la demi-somme des valeurs de rang 6 et 7. La 6ᵉ valeur est 16 et la 7ᵉ valeur est 18. Donc la médiane = (16 + 18) / 2 = 17. Pour construire le diagramme en boîte complet, on calcule aussi : Q₁ = médiane de la première moitié (5, 8, 10, 12, 14, 16) = (10 + 12) / 2 = 11. Q₃ = médiane de la seconde moitié (18, 20, 22, 25, 28, 32) = (22 + 25) / 2 = 23,5. Le diagramme en boîte s''étend de min = 5 à max = 32, avec la boîte de Q₁ = 11 à Q₃ = 23,5 et le trait de médiane à 17.',
  'Prendre la 6ᵉ valeur (16) ou la 7ᵉ valeur (18) comme médiane sans calculer leur demi-somme. Pour un effectif pair, la médiane est toujours la moyenne des deux valeurs centrales.',
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
  'fb0c0000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation', 'Difficile',
  'qcm',
  'Un professeur compare les résultats de ses classes à l''examen final sur trois années consécutives à l''aide de diagrammes en boîte. Année 1 : Q₁ = 8, médiane = 11, Q₃ = 14. Année 2 : Q₁ = 9, médiane = 12, Q₃ = 15. Année 3 : Q₁ = 11, médiane = 14, Q₃ = 16. Quelle conclusion peut-on tirer de cette comparaison ?',
  NULL,
  '[{"id":"a","label":"Les résultats se sont dégradés car l''écart interquartile a diminué"},{"id":"b","label":"Les résultats se sont améliorés : la médiane et les quartiles ont augmenté chaque année"},{"id":"c","label":"Les résultats sont stables car l''écart interquartile est resté constant"},{"id":"d","label":"On ne peut rien conclure sans connaître les moyennes"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On observe une progression nette des indicateurs de position d''année en année. Les médianes augmentent : 11, 12, 14. Les premiers quartiles augmentent : 8, 9, 11. Les troisièmes quartiles augmentent : 14, 15, 16. Cela signifie que l''ensemble de la distribution se décale vers les valeurs supérieures chaque année : les résultats s''améliorent globalement. L''écart interquartile reste relativement stable (6, 6, 5), ce qui indique que l''homogénéité des résultats est préservée voire légèrement améliorée. La comparaison de diagrammes en boîte sur plusieurs périodes est un outil puissant pour suivre l''évolution d''une distribution au fil du temps.',
  'Se limiter à observer que l''IQR est presque constant et en conclure que « rien n''a changé ». L''IQR mesure la dispersion, pas le niveau : il faut aussi comparer les indicateurs de position (médiane, quartiles) pour évaluer l''évolution globale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
