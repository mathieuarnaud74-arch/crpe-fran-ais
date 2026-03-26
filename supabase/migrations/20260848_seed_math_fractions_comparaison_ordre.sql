-- Migration: 10 exercices — Comparaison et ordre des fractions
-- Série : math_fractions_comparaison_ordre (Mathématiques, nombres_calcul)
-- Même dénominateur, même numérateur, réduction, encadrement par des entiers
-- UUID prefix: f6f70000

-- Q1 : Comparer deux fractions de même dénominateur (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'qcm',
  'Laquelle de ces affirmations est correcte concernant les fractions 5/9 et 7/9 ?',
  NULL,
  '[{"id":"a","label":"5/9 > 7/9"},{"id":"b","label":"5/9 = 7/9"},{"id":"c","label":"5/9 < 7/9"},{"id":"d","label":"On ne peut pas comparer sans calculer"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Lorsque deux fractions ont le même dénominateur, on compare directement leurs numérateurs. Ici, le dénominateur commun est 9. On compare donc les numérateurs : 5 < 7. Par conséquent, 5/9 < 7/9. Plus le numérateur est grand (à dénominateur égal), plus la fraction représente une quantité importante.',
  'L''erreur fréquente est de croire qu''il faut toujours effectuer un calcul ou une conversion en décimal pour comparer des fractions. Or, lorsque les dénominateurs sont identiques, la comparaison des numérateurs suffit.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 : Comparer deux fractions de même numérateur (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : 3/5 > 3/8.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Lorsque deux fractions positives ont le même numérateur, celle qui a le plus petit dénominateur est la plus grande. En effet, diviser un même nombre en moins de parts donne des parts plus grandes. Ici, 3/5 signifie « 3 parts d''un tout divisé en 5 » et 3/8 signifie « 3 parts d''un tout divisé en 8 ». Comme 5 < 8, les cinquièmes sont plus grands que les huitièmes, donc 3/5 > 3/8. On peut vérifier : 3/5 = 0,6 et 3/8 = 0,375.',
  'L''erreur classique consiste à raisonner comme pour les fractions de même dénominateur et à conclure que « le plus grand dénominateur donne la plus grande fraction ». C''est l''inverse : à numérateur égal, plus le dénominateur est grand, plus la fraction est petite.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 : Réduction au même dénominateur — PPCM (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'qcm',
  'On souhaite comparer 5/6 et 7/8 en les réduisant au même dénominateur. Quel est le PPCM de 6 et 8, et laquelle des deux fractions est la plus grande ?',
  NULL,
  '[{"id":"a","label":"PPCM = 48 et 5/6 > 7/8"},{"id":"b","label":"PPCM = 24 et 5/6 < 7/8"},{"id":"c","label":"PPCM = 24 et 5/6 > 7/8"},{"id":"d","label":"PPCM = 48 et 5/6 < 7/8"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour trouver le PPCM de 6 et 8, on décompose : 6 = 2 x 3 et 8 = 2³. Le PPCM est 2³ x 3 = 24. On convertit : 5/6 = (5 x 4)/(6 x 4) = 20/24 et 7/8 = (7 x 3)/(8 x 3) = 21/24. Comme 20 < 21, on a 20/24 < 21/24, donc 5/6 < 7/8. La réduction au même dénominateur via le PPCM est la méthode la plus efficace pour comparer des fractions de dénominateurs différents.',
  'Une erreur courante est de calculer le produit des dénominateurs (6 x 8 = 48) au lieu du PPCM (24). Bien que le résultat de la comparaison reste correct avec 48, cela complique inutilement les calculs. Une autre erreur est d''oublier de multiplier le numérateur par le même facteur que le dénominateur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 : Encadrer une fraction entre deux entiers consécutifs (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'reponse_courte',
  'Entre quels entiers consécutifs se situe la fraction 17/5 ? Répondez sous la forme « a < 17/5 < b » (avec a et b entiers).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3 < 17/5 < 4"]}'::jsonb,
  'Pour encadrer 17/5 entre deux entiers consécutifs, on effectue la division euclidienne de 17 par 5 : 17 = 5 x 3 + 2. Le quotient est 3 et le reste est 2 (avec 0 < 2 < 5). Cela signifie que 17/5 = 3 + 2/5, donc 17/5 est compris strictement entre 3 et 4. On écrit : 3 < 17/5 < 4. Cette technique d''encadrement par la division euclidienne est fondamentale pour situer une fraction sur la droite graduée.',
  'L''erreur fréquente est de se tromper dans la division euclidienne, par exemple en confondant 17/5 avec 17/4 ou en calculant mal le quotient. Certains candidats donnent aussi un encadrement non strict (avec des inégalités larges) ou oublient que les bornes doivent être des entiers consécutifs.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 : Comparer une fraction à 1 (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : la fraction 11/13 est supérieure à 1.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Une fraction a/b (avec b > 0) est supérieure à 1 si et seulement si le numérateur a est strictement supérieur au dénominateur b. Ici, 11 < 13, donc 11/13 < 1. On peut aussi raisonner ainsi : 11/13 représente 11 parts sur 13 parts au total, il manque 2 parts pour atteindre l''entier, donc 11/13 < 1. En décimal, 11/13 ≈ 0,846.',
  'L''erreur est de confondre le sens de la comparaison : certains pensent qu''une fraction dont le numérateur et le dénominateur sont tous deux « grands » est forcément supérieure à 1. Ce qui compte, c''est uniquement le rapport entre numérateur et dénominateur.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 : Ranger des fractions dans l'ordre croissant (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'qcm',
  'Ranger les fractions suivantes dans l''ordre croissant : 2/3, 3/4, 5/12.',
  NULL,
  '[{"id":"a","label":"5/12 < 2/3 < 3/4"},{"id":"b","label":"2/3 < 5/12 < 3/4"},{"id":"c","label":"5/12 < 3/4 < 2/3"},{"id":"d","label":"3/4 < 2/3 < 5/12"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'On réduit au même dénominateur. Le PPCM de 3, 4 et 12 est 12. On convertit : 2/3 = 8/12, 3/4 = 9/12, 5/12 = 5/12. On compare les numérateurs : 5 < 8 < 9. Donc l''ordre croissant est : 5/12 < 2/3 < 3/4, soit 5/12 < 8/12 < 9/12. La réduction au même dénominateur permet de ramener la comparaison de fractions à une simple comparaison d''entiers.',
  'L''erreur la plus courante est de comparer les fractions en regardant uniquement les numérateurs ou uniquement les dénominateurs sans réduire au même dénominateur. Par exemple, conclure que 2/3 < 5/12 parce que 2 < 5, ce qui est faux.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 : Comparer des fractions en passant par les décimaux (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'reponse_courte',
  'En convertissant en écriture décimale, comparer 7/8 et 9/10. Indiquer le signe correct : écrire <, > ou =.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["<"]}'::jsonb,
  'On convertit chaque fraction en décimal : 7/8 = 7 ÷ 8 = 0,875 et 9/10 = 9 ÷ 10 = 0,9. Comme 0,875 < 0,9, on a 7/8 < 9/10. La conversion en écriture décimale est une méthode pratique quand les fractions se prêtent bien au calcul (dénominateurs diviseurs de puissances de 10, ou divisions exactes). Elle permet une comparaison immédiate des valeurs obtenues.',
  'L''erreur courante est de mal poser la division, par exemple en calculant 7/8 = 0,78 (en concaténant numérateur et dénominateur) au lieu de 0,875. Une autre erreur est de comparer 0,875 et 0,9 en pensant que 0,875 > 0,9 parce que 875 > 9, en oubliant de tenir compte de la position des chiffres après la virgule.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 : Fractions négatives — comparaison (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'qcm',
  'Comparer les fractions −3/4 et −5/6.',
  NULL,
  '[{"id":"a","label":"−3/4 < −5/6"},{"id":"b","label":"−3/4 > −5/6"},{"id":"c","label":"−3/4 = −5/6"},{"id":"d","label":"On ne peut pas comparer des fractions négatives"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour comparer −3/4 et −5/6, on réduit d''abord les fractions positives au même dénominateur. Le PPCM de 4 et 6 est 12. On a : 3/4 = 9/12 et 5/6 = 10/12. Donc 3/4 < 5/6, c''est-à-dire 9/12 < 10/12. Or, quand on multiplie par −1, l''inégalité s''inverse : −3/4 > −5/6, soit −9/12 > −10/12. Sur la droite graduée, −3/4 est plus proche de 0 que −5/6, donc −3/4 est plus grand.',
  'L''erreur la plus fréquente est d''oublier d''inverser le sens de l''inégalité lors du passage aux nombres négatifs. Puisque 3/4 < 5/6, certains concluent à tort que −3/4 < −5/6. C''est l''inverse : plus un nombre négatif est « éloigné de zéro », plus il est petit.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 : Fraction irréductible et comparaison (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : 12/18 > 8/15.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Simplifions d''abord 12/18 : PGCD(12, 18) = 6, donc 12/18 = 2/3. Comparons maintenant 2/3 et 8/15. Le PPCM de 3 et 15 est 15. On convertit : 2/3 = 10/15. On compare : 10/15 et 8/15. Comme 10 > 8, on a 10/15 > 8/15, donc 2/3 > 8/15, c''est-à-dire 12/18 > 8/15. Simplifier une fraction avant de comparer rend souvent les calculs plus simples.',
  'L''erreur courante est de comparer directement 12/18 et 8/15 sans simplifier, ce qui conduit à chercher le PPCM de 18 et 15 (soit 90), rendant les calculs plus lourds et augmentant le risque d''erreur. Simplifier au préalable est une bonne pratique qui allège la comparaison.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 : Encadrement d'une fraction par deux fractions de même dénominateur (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f6f70000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_comparaison_ordre',
  'Comparaison et ordre des fractions',
  'Standard',
  'reponse_courte',
  'Encadrer la fraction 5/7 par deux fractions consécutives de dénominateur 14. Répondez sous la forme « a/14 < 5/7 < b/14 » (avec a et b entiers consécutifs).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["9/14 < 5/7 < 11/14"]}'::jsonb,
  'On convertit 5/7 au dénominateur 14 : 5/7 = 10/14. On cherche l''encadrement par deux fractions consécutives de dénominateur 14. Or 10/14 est exactement égal à 5/7, il n''est pas strictement compris entre deux fractions consécutives de dénominateur 14 dont il serait distinct. On prend donc les fractions qui l''entourent : 9/14 < 10/14 < 11/14, soit 9/14 < 5/7 < 11/14. Cet encadrement est strict car 9/14 ≠ 5/7 et 11/14 ≠ 5/7.',
  'L''erreur fréquente est d''écrire 10/14 < 5/7 < 11/14 en oubliant que 10/14 = 5/7 (fraction simplifiable), ce qui rendrait l''inégalité de gauche fausse en inégalité stricte. Il faut bien vérifier que les bornes de l''encadrement sont distinctes de la fraction encadrée.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
