-- Migration: 10 exercices — Fractions sur la droite graduée
-- Série : math_fractions_droite_graduee (Mathématiques, nombres_calcul)
-- Placer, comparer et encadrer des fractions sur la droite graduée
-- UUID prefix: e9350000

-- Q1 — QCM — Placer une fraction sur la droite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'qcm',
  'Sur une droite graduée, la fraction 3/4 se situe :',
  NULL,
  '[{"id":"a","label":"Entre 0 et 1, plus proche de 1"},{"id":"b","label":"Entre 0 et 1, plus proche de 0"},{"id":"c","label":"Entre 1 et 2"},{"id":"d","label":"Exactement sur 1"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '3/4 = 0,75 se situe entre 0 et 1, plus proche de 1 (à un quart de distance de 1). Pour placer une fraction a/b sur la droite graduée : (1) diviser le segment [0 ; 1] en b parts égales, (2) compter a parts à partir de 0. Ici, on divise [0 ; 1] en 4 parts et on en prend 3. Comme 3/4 > 1/2, le point est dans la moitié supérieure du segment [0 ; 1], donc plus proche de 1.',
  'Confondre numérateur et dénominateur pour le placement. Le dénominateur indique le nombre de parts, le numérateur indique combien on en prend.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Fraction supérieure à 1
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : la fraction 7/5 se situe entre 1 et 2 sur la droite graduée.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! 7/5 = 1 + 2/5 = 1,4. Donc 1 < 7/5 < 2. Une fraction dont le numérateur est supérieur au dénominateur est toujours supérieure à 1. On l''appelle parfois « fraction impropre ». Pour la placer : 7/5 = 5/5 + 2/5 = 1 + 2/5. On se place sur 1, puis on avance de 2 cinquièmes. Le placement de fractions supérieures à 1 est un enjeu didactique important : les élèves doivent comprendre que les fractions ne sont pas limitées à l''intervalle [0 ; 1].',
  'Croire qu''une fraction est toujours inférieure à 1. C''est vrai seulement quand le numérateur est inférieur au dénominateur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Comparer deux fractions
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'qcm',
  'Laquelle de ces fractions est la plus grande : 5/8 ou 7/12 ?',
  NULL,
  '[{"id":"a","label":"5/8 > 7/12"},{"id":"b","label":"5/8 < 7/12"},{"id":"c","label":"5/8 = 7/12"},{"id":"d","label":"On ne peut pas comparer"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '5/8 > 7/12. Pour comparer, on réduit au même dénominateur. PPCM(8, 12) = 24. 5/8 = 15/24 et 7/12 = 14/24. Comme 15 > 14, on a 5/8 > 7/12. Autre méthode (produits en croix) : 5 × 12 = 60 et 7 × 8 = 56. Comme 60 > 56, 5/8 > 7/12. Sur la droite graduée, 5/8 = 0,625 est à droite de 7/12 ≈ 0,583. La réduction au même dénominateur est la méthode de référence pour comparer des fractions.',
  'Comparer les numérateurs directement (5 < 7 donc 5/8 < 7/12 ?). NON ! On ne peut comparer les numérateurs que si les dénominateurs sont identiques.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Encadrement par deux entiers
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'reponse_courte',
  'Entre quels deux entiers consécutifs se situe la fraction 23/7 ? Répondez sous la forme « a et b » (a < b).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3 et 4"]}'::jsonb,
  '23/7 = 3 reste 2, donc 23/7 = 3 + 2/7. On a 3 < 23/7 < 4. Pour encadrer une fraction a/b par deux entiers consécutifs, on effectue la division euclidienne de a par b : a = b × q + r. Alors q < a/b < q+1 (si r ≠ 0). Ici : 23 = 7 × 3 + 2, donc q = 3 et 23/7 est entre 3 et 4. Cet encadrement par deux entiers consécutifs est la première étape pour placer une fraction sur la droite graduée.',
  'Écrire 2 et 3 en divisant mal (23 ÷ 7 ≠ 2,…). La division euclidienne donne le quotient exact : 23 = 7 × 3 + 2.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Fractions égales sur la droite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'qcm',
  'Lesquelles de ces fractions correspondent au même point sur la droite graduée : 2/3, 4/6, 6/8, 8/12 ?',
  NULL,
  '[{"id":"a","label":"2/3, 4/6 et 8/12"},{"id":"b","label":"2/3 et 4/6 uniquement"},{"id":"c","label":"Toutes les quatre"},{"id":"d","label":"4/6 et 6/8 uniquement"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '2/3 = 4/6 = 8/12 (elles sont égales). 2/3 = 4/6 (× 2 au numérateur et au dénominateur) et 2/3 = 8/12 (× 4). En revanche, 6/8 = 3/4 ≠ 2/3. Deux fractions a/b et c/d sont égales si et seulement si a × d = b × c (produits en croix). Vérification : 2 × 6 = 12 = 3 × 4 ✓ ; 2 × 12 = 24 = 3 × 8 ✓ ; 2 × 8 = 16 ≠ 3 × 6 = 18 ✗. Des fractions égales représentent le même point sur la droite graduée — on dit qu''elles sont dans la même « classe d''équivalence ».',
  'Croire que 6/8 est aussi égale à 2/3 parce que les numérateurs et dénominateurs « se suivent ». Le critère est le produit en croix, pas une apparence de régularité.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Densité des fractions
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : entre deux fractions distinctes, on peut toujours trouver une autre fraction.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! C''est la propriété de densité des nombres rationnels (fractions). Entre deux fractions a/b et c/d (avec a/b < c/d), la fraction (a+c)/(b+d), appelée médiante, n''est pas toujours entre les deux, mais la moyenne (a/b + c/d)/2 = (ad + bc)/(2bd) est toujours strictement comprise entre elles. On peut aussi prendre une fraction avec un dénominateur plus grand. Cette propriété est fondamentale : elle montre que contrairement aux entiers (entre 3 et 4, il n''y a aucun entier), les fractions « remplissent » la droite de façon dense.',
  'Penser qu''entre 1/3 et 1/2, il n''y a pas de fraction. Il y en a une infinité : 2/5, 3/7, 5/12, etc.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Comparer à 1/2
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'qcm',
  'Parmi ces fractions, laquelle est inférieure à 1/2 ?',
  NULL,
  '[{"id":"a","label":"5/9"},{"id":"b","label":"7/13"},{"id":"c","label":"4/9"},{"id":"d","label":"11/20"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '4/9 < 1/2 car 4 × 2 = 8 < 9 × 1 = 9 (produit en croix). Astuce rapide : une fraction a/b est inférieure à 1/2 si et seulement si 2a < b (le double du numérateur est inférieur au dénominateur). Vérification : 4/9 → 2 × 4 = 8 < 9 ✓ ; 5/9 → 2 × 5 = 10 > 9 ✗ ; 7/13 → 2 × 7 = 14 > 13 ✗ ; 11/20 → 2 × 11 = 22 > 20 ✗. Comparer à 1/2 est une stratégie puissante pour ordonner des fractions : on classe d''abord celles < 1/2 et celles > 1/2.',
  'Comparer les numérateurs ou les dénominateurs séparément. Pour comparer à 1/2, le critère est : 2 × numérateur vs dénominateur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Réponse courte — Fraction correspondant à un point
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'reponse_courte',
  'Sur une droite graduée, le segment [0 ; 1] est divisé en 6 parts égales. Le point A est placé sur la 5ᵉ graduation. Quelle fraction correspond au point A ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5/6"]}'::jsonb,
  'Le point A correspond à la fraction 5/6. Quand le segment [0 ; 1] est divisé en n parts égales, la kᵉ graduation correspond à la fraction k/n. Ici, n = 6 (le segment est divisé en 6) et k = 5 (on est sur la 5ᵉ graduation), donc la fraction est 5/6. Inversement, pour placer 5/6 : on divise [0 ; 1] en 6 et on pointe la 5ᵉ marque. C''est la correspondance fondamentale entre fractions et droite graduée.',
  'Écrire 6/5 (inverser numérateur et dénominateur). Le dénominateur est le nombre TOTAL de parts, le numérateur est le numéro de la graduation.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Ranger des fractions
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'qcm',
  'Rangez ces fractions dans l''ordre croissant : 2/3, 3/5, 7/10.',
  NULL,
  '[{"id":"a","label":"3/5 < 2/3 < 7/10"},{"id":"b","label":"2/3 < 3/5 < 7/10"},{"id":"c","label":"3/5 < 7/10 < 2/3"},{"id":"d","label":"7/10 < 3/5 < 2/3"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''ordre croissant est : 3/5 < 2/3 < 7/10. Méthode : réduire au même dénominateur. PPCM(3, 5, 10) = 30. 2/3 = 20/30, 3/5 = 18/30, 7/10 = 21/30. Comme 18 < 20 < 21, on a 18/30 < 20/30 < 21/30, soit 3/5 < 2/3 < 7/10. Vérification décimale : 3/5 = 0,6 ; 2/3 ≈ 0,667 ; 7/10 = 0,7. La réduction au même dénominateur est la méthode la plus sûre, surtout quand la conversion décimale donne des résultats proches.',
  'Comparer les numérateurs sans réduire au même dénominateur. Les fractions 2/3, 3/5 et 7/10 n''ont pas le même dénominateur, donc les numérateurs ne sont pas directement comparables.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Encadrement au dixième
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9350000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_droite_graduee',
  'Fractions sur la droite graduée — placer, comparer, encadrer',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : l''encadrement de 5/7 au dixième près est 0,7 ≤ 5/7 ≤ 0,8.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! 5/7 ≈ 0,71428… Donc 0,7 < 5/7 < 0,8. L''encadrement au dixième près est 0,7 ≤ 5/7 ≤ 0,8 (l''amplitude de l''encadrement est 0,1 = un dixième). Pour encadrer une fraction au dixième : (1) effectuer la division 5 ÷ 7 = 0,714…, (2) garder le chiffre des dixièmes (7) et prendre le dixième suivant (8). Donc 0,7 ≤ 5/7 ≤ 0,8. Sur la droite graduée en dixièmes, 5/7 se situe entre les graduations 0,7 et 0,8, plus proche de 0,7.',
  'Écrire 0,7 < 5/7 < 0,7 (même borne). L''encadrement au dixième est toujours entre deux dixièmes consécutifs : d ≤ x ≤ d + 0,1.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
