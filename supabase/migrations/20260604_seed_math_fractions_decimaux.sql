-- Migration: série math_fractions_decimaux_pieges (7 questions)
-- Fractions et décimaux — Passages et pièges
-- UUID prefix: b0070000
-- Types : qcm (3), vrai_faux (2), reponse_courte (2)
-- Niveau : Avance
-- Access : premium

-- ============================================================================
-- Q1 — QCM — AMORCE — Conversion fraction → décimal
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'qcm',
  'Quelle est l''écriture décimale de la fraction 7/8 ?',
  NULL,
  '[{"id":"a","label":"0,875"},{"id":"b","label":"0,78"},{"id":"c","label":"0,87"},{"id":"d","label":"1,142…"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour convertir 7/8 en écriture décimale, on effectue la division euclidienne de 7 par 8. On peut aussi raisonner par fractions décimales : 7/8 = 7 × 125 / (8 × 125) = 875/1000 = 0,875. Autre stratégie : 1/8 = 0,125, donc 7/8 = 7 × 0,125 = 0,875. Le résultat est un nombre décimal (développement décimal fini) car 8 = 2³ et le dénominateur ne contient que des facteurs 2 et/ou 5.',
  'Juxtaposer les chiffres du numérateur et du dénominateur pour obtenir 0,78 ou inverser pour écrire 0,87. Autre erreur fréquente : calculer 8 ÷ 7 au lieu de 7 ÷ 8, ce qui donne 1,142…',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — REPONSE COURTE — AMORCE — Rangement de fractions
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'reponse_courte',
  'Rangez les fractions suivantes de la plus petite à la plus grande : 3/4, 5/6, 2/3, 7/12. Écrivez votre réponse sous la forme « a/b < c/d < e/f < g/h » (utilisez le signe <).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7/12 < 2/3 < 3/4 < 5/6"]}'::jsonb,
  'Pour comparer ces quatre fractions, on les réduit au même dénominateur. Le PPCM de 4, 6, 3 et 12 est 12. On obtient : 3/4 = 9/12, 5/6 = 10/12, 2/3 = 8/12, 7/12 = 7/12. L''ordre croissant est donc : 7/12 < 8/12 < 9/12 < 10/12, soit 7/12 < 2/3 < 3/4 < 5/6. La réduction au même dénominateur est la méthode de référence pour comparer des fractions dont les dénominateurs sont différents.',
  'Comparer les numérateurs sans réduire au même dénominateur (ce qui donnerait l''ordre erroné 2/3 < 3/4 < 5/6 < 7/12). Autre piège : croire que plus le dénominateur est grand, plus la fraction est grande, alors que c''est l''inverse à numérateur égal.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — VRAI/FAUX — CONSOLIDATION — 0,333… = 1/3 ?
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'vrai_faux',
  'Affirmation : « Le nombre 0,333… (avec une infinité de 3) est exactement égal à la fraction 1/3. »',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est VRAI. Le nombre 0,333… (noté 0,3̅ avec la barre de périodicité) est bien exactement égal à 1/3. On peut le démontrer rigoureusement : si x = 0,333…, alors 10x = 3,333…, d''où 10x − x = 3, soit 9x = 3, donc x = 3/9 = 1/3. Ce n''est pas une approximation : la notation décimale périodique 0,333… est une autre écriture du même nombre rationnel 1/3. La fraction 1/3 ne possède pas de développement décimal fini car 3 ne divise ni 2 ni 5, mais son développement décimal illimité périodique le représente exactement.',
  'Penser que 0,333… est une approximation de 1/3 et non sa valeur exacte. Cette confusion vient du fait qu''en pratique, on tronque souvent à 0,33 ou 0,333, ce qui donne effectivement une approximation. Mais le développement illimité périodique est une écriture exacte.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — QCM — CONSOLIDATION — Calcul fractionnaire composé
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'qcm',
  'Calculez : (3/4 − 2/3) × 12/5. Donnez le résultat sous forme de fraction irréductible.',
  NULL,
  '[{"id":"a","label":"1/5"},{"id":"b","label":"12/60"},{"id":"c","label":"1/4"},{"id":"d","label":"2/5"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Étape 1 — Soustraction dans la parenthèse : 3/4 − 2/3. On réduit au même dénominateur (PPCM de 4 et 3 = 12) : 3/4 = 9/12 et 2/3 = 8/12. Donc 3/4 − 2/3 = 9/12 − 8/12 = 1/12. Étape 2 — Multiplication : 1/12 × 12/5 = (1 × 12)/(12 × 5) = 12/60. Étape 3 — Simplification : PGCD(12, 60) = 12, donc 12/60 = 1/5. Le résultat est 1/5. On respecte la priorité des opérations : la parenthèse d''abord, puis la multiplication.',
  'Soustraire numérateurs et dénominateurs séparément (3−2)/(4−3) = 1/1 = 1, puis multiplier 1 × 12/5 = 12/5. Autre erreur : oublier de simplifier et s''arrêter à 12/60. Certains élèves inversent aussi l''ordre des termes dans la soustraction.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — VRAI/FAUX — CONSOLIDATION — Analyse d''erreur élève
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'vrai_faux',
  'Un élève affirme : « 0,25 est plus grand que 0,3 car 25 est plus grand que 3. » Cette affirmation est-elle correcte ?',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est FAUX. L''élève commet une erreur classique en comparant les parties décimales comme s''il s''agissait de nombres entiers. En réalité, 0,25 = 25/100 = 1/4 et 0,3 = 3/10 = 30/100. On a donc 25/100 < 30/100, soit 0,25 < 0,3. Pour comparer deux nombres décimaux, on compare chiffre à chiffre en partant de la gauche : au rang des dixièmes, 2 < 3, donc 0,25 < 0,3. On peut aussi égaliser le nombre de décimales : 0,25 et 0,30, ce qui rend la comparaison immédiate. Cette erreur est identifiée dans la didactique des mathématiques comme la conception « entière » des décimaux.',
  'Valider le raisonnement de l''élève en ne considérant que la valeur numérique des chiffres après la virgule sans tenir compte de leur position (rang des dixièmes, centièmes, etc.). C''est une erreur de conception fréquente chez les élèves de cycle 3.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — QCM — APPROFONDISSEMENT — Problème en contexte (héritage)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'qcm',
  'Un terrain de 1 200 m² est partagé entre trois héritiers. Le premier reçoit 2/5 du terrain, le deuxième reçoit 1/3 du terrain, et le troisième héritier reçoit le reste. Quelle fraction du terrain le troisième héritier reçoit-il, et quelle superficie cela représente-t-il ?',
  NULL,
  '[{"id":"a","label":"4/15 du terrain, soit 320 m²"},{"id":"b","label":"1/4 du terrain, soit 300 m²"},{"id":"c","label":"3/8 du terrain, soit 450 m²"},{"id":"d","label":"2/15 du terrain, soit 160 m²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Étape 1 — On calcule la part totale des deux premiers héritiers : 2/5 + 1/3. Le PPCM de 5 et 3 est 15 : 2/5 = 6/15 et 1/3 = 5/15. Donc 2/5 + 1/3 = 6/15 + 5/15 = 11/15. Étape 2 — La part du troisième héritier est le complément à 1 : 1 − 11/15 = 15/15 − 11/15 = 4/15. Étape 3 — En superficie : 4/15 × 1 200 = 4 800/15 = 320 m². Vérification : 2/5 × 1 200 = 480 m², 1/3 × 1 200 = 400 m², 480 + 400 + 320 = 1 200 m². Ce type de problème mobilise l''addition de fractions, la soustraction à l''unité, et le calcul d''une fraction d''une quantité.',
  'Additionner les fractions sans réduire au même dénominateur : 2/5 + 1/3 = 3/8, d''où un reste de 5/8 (erreur sur l''addition). Autre erreur : calculer 1/3 de 1 200 = 400, puis 2/5 de 800 (reste) = 320, en appliquant les fractions successivement au lieu de les appliquer au total.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — REPONSE COURTE — APPROFONDISSEMENT — Fraction irréductible et décimal fini
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0070000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_fractions_decimaux_pieges',
  'Fractions et décimaux — Passages et pièges',
  'Avance',
  'reponse_courte',
  'Parmi les fractions irréductibles suivantes, lesquelles ont un développement décimal fini (c''est-à-dire sont des nombres décimaux) ? Fractions : 7/20, 5/12, 3/16, 11/30. Écrivez les fractions séparées par une virgule, dans l''ordre donné.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7/20, 3/16","7/20,3/16","7/20 , 3/16"]}'::jsonb,
  'Un nombre rationnel a/b (fraction irréductible) admet un développement décimal fini si et seulement si le dénominateur b ne contient que des facteurs premiers 2 et/ou 5. Analysons chaque fraction : • 7/20 : 20 = 2² × 5 → uniquement des 2 et des 5 → développement décimal fini. En effet 7/20 = 0,35. • 5/12 : 12 = 2² × 3 → le facteur 3 apparaît → développement décimal non fini. En effet 5/12 = 0,4166… • 3/16 : 16 = 2⁴ → uniquement des 2 → développement décimal fini. En effet 3/16 = 0,1875. • 11/30 : 30 = 2 × 3 × 5 → le facteur 3 apparaît → développement décimal non fini. En effet 11/30 = 0,3666… Réponse : 7/20 et 3/16. Ce théorème fondamental relie la décomposition en facteurs premiers du dénominateur à la nature du développement décimal.',
  'Croire qu''une fraction dont le dénominateur est pair donne toujours un décimal fini (ce qui inclurait à tort 5/12). Ou tester en divisant avec une calculatrice sans comprendre le critère théorique sur les facteurs premiers du dénominateur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
