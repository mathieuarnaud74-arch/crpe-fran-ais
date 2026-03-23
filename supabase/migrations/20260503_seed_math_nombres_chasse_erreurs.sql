-- Migration: série math_chasse_erreurs_calcul (10 questions)
-- Chasse aux erreurs — Calcul et fractions — Mathématiques CRPE
-- UUID prefix: b0010000
-- Types : qcm, vrai_faux, reponse_courte
-- Niveau : Intermediaire
-- Access : free

-- ============================================================================
-- Q1 — QCM — Addition de fractions (dénominateurs différents)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'qcm',
  'Liam a écrit : 1/3 + 2/5 = 3/8. Quelle erreur a-t-il commise ?',
  NULL,
  '[{"id":"a","label":"Il a additionné les numérateurs ET les dénominateurs"},{"id":"b","label":"Il a oublié de simplifier le résultat"},{"id":"c","label":"Il a inversé numérateur et dénominateur"},{"id":"d","label":"Il a multiplié au lieu d''additionner"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour additionner deux fractions, il faut d''abord les mettre au même dénominateur. Ici, le dénominateur commun de 3 et 5 est 15. On obtient : 1/3 = 5/15 et 2/5 = 6/15, donc 1/3 + 2/5 = 5/15 + 6/15 = 11/15. Liam a commis l''erreur classique d''additionner les numérateurs entre eux (1 + 2 = 3) et les dénominateurs entre eux (3 + 5 = 8), ce qui donne 3/8. Cette procédure est FAUSSE : on n''additionne jamais les dénominateurs. Le dénominateur représente le nombre de parts égales dans lesquelles l''unité est découpée ; additionner des parts de tailles différentes (des tiers et des cinquièmes) n''a pas de sens sans les convertir d''abord.',
  'Additionner numérateurs et dénominateurs séparément. C''est l''erreur la plus fréquente en calcul fractionnaire : l''élève traite la fraction comme deux nombres indépendants au lieu de chercher un dénominateur commun.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — QCM — Multiplication de décimaux (virgule mal placée)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'qcm',
  'Liam a calculé 2,5 × 0,4 et a trouvé 10. Quelle est son erreur ?',
  NULL,
  '[{"id":"a","label":"Il a oublié de placer la virgule dans le résultat"},{"id":"b","label":"Il a confondu multiplication et addition"},{"id":"c","label":"Il a inversé les facteurs"},{"id":"d","label":"Il a arrondi au nombre entier le plus proche"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour multiplier 2,5 × 0,4, on peut d''abord calculer 25 × 4 = 100, puis replacer la virgule. Le nombre total de chiffres après la virgule dans les deux facteurs est : 1 (dans 2,5) + 1 (dans 0,4) = 2 chiffres. On place donc la virgule 2 rangs avant la fin de 100, ce qui donne 1,00 = 1. Le résultat correct est 1. Liam a calculé 25 × 4 = 100 mais a « oublié » de replacer la virgule (ou l''a mal placée), obtenant 10 au lieu de 1. Pour vérifier : 2,5 × 0,4 = 2,5 × 4/10 = 10/10 = 1.',
  'Oublier de compter le nombre total de décimales des deux facteurs pour positionner la virgule dans le produit. L''élève effectue la multiplication des entiers correctement mais ne replace pas la virgule au bon endroit.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — QCM — Priorités opératoires (PEMDAS)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'qcm',
  'Liam a écrit : 3 + 4 × 2 = 14. Quelle erreur a-t-il commise ?',
  NULL,
  '[{"id":"a","label":"Il a effectué l''addition avant la multiplication"},{"id":"b","label":"Il a confondu × et +"},{"id":"c","label":"Il a oublié les parenthèses"},{"id":"d","label":"Il a fait une erreur dans la table de multiplication"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les règles de priorité opératoire imposent d''effectuer les multiplications et divisions AVANT les additions et soustractions (sauf si des parenthèses modifient cet ordre). Le calcul correct est : 3 + (4 × 2) = 3 + 8 = 11. Liam a calculé de gauche à droite sans respecter les priorités : (3 + 4) × 2 = 7 × 2 = 14. Cette erreur montre qu''il traite l''expression comme une lecture séquentielle au lieu d''analyser la hiérarchie des opérations. Au CRPE, on parle de « priorité de la multiplication sur l''addition » ou de « conventions d''écriture des expressions numériques ».',
  'Calculer de gauche à droite sans tenir compte des priorités opératoires. L''élève ne hiérarchise pas les opérations et traite l''expression de manière séquentielle, comme une calculatrice basique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — QCM — Division par une fraction
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'qcm',
  'Liam a calculé 3/4 ÷ 2/5 et a trouvé 6/20. Quelle est son erreur ?',
  NULL,
  '[{"id":"a","label":"Il a multiplié les deux fractions au lieu de diviser"},{"id":"b","label":"Il a divisé numérateur par numérateur et dénominateur par dénominateur"},{"id":"c","label":"Il n''a pas inversé la deuxième fraction avant de multiplier"},{"id":"d","label":"Il a simplifié trop tôt"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Diviser par une fraction revient à multiplier par son inverse. Le calcul correct est : 3/4 ÷ 2/5 = 3/4 × 5/2 = 15/8. Liam a directement multiplié 3/4 × 2/5 = 6/20 = 3/10, sans inverser la deuxième fraction. Il a appliqué la règle de la multiplication au lieu de celle de la division. La règle à retenir : « Diviser par a/b, c''est multiplier par b/a. » Autrement dit, on inverse la fraction qui suit le signe ÷, puis on multiplie.',
  'Multiplier directement les deux fractions sans inverser le diviseur. L''élève connaît la multiplication de fractions mais n''applique pas la transformation « diviser = multiplier par l''inverse ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — Vrai/Faux — Simplification abusive de fraction
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'vrai_faux',
  'Liam affirme que 26/65 = 2/5 car on peut « barrer les 6 » au numérateur et au dénominateur. A-t-il raison ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Aussi surprenant que cela puisse paraître, le résultat 26/65 = 2/5 est effectivement CORRECT ! On peut le vérifier : 26/65 = 26 ÷ 13 / 65 ÷ 13 = 2/5. Le PGCD de 26 et 65 est 13 (26 = 2 × 13, 65 = 5 × 13), donc la fraction simplifiée est bien 2/5. CEPENDANT, la méthode de Liam (« barrer les 6 ») est totalement fausse et ne fonctionne que par coïncidence. Simplifier une fraction, c''est diviser numérateur et dénominateur par un même nombre (leur PGCD), pas « barrer » des chiffres identiques. Contre-exemple : 16/64 — si on « barre le 6 », on obtient 1/4, ce qui est aussi correct par hasard ! Mais 17/73 — barrer le 7 donnerait 1/3, or 17/73 ≠ 1/3. La question demande si le résultat est correct : oui, 26/65 = 2/5 est vrai, même si le raisonnement est invalide.',
  'Simplifier une fraction en « barrant » des chiffres communs au lieu de diviser par le PGCD. Cette erreur de méthode peut parfois donner un résultat correct par hasard, ce qui la rend particulièrement trompeuse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — Vrai/Faux — Conversion fraction → décimal
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'vrai_faux',
  'Liam affirme que 3/8 = 0,375. A-t-il raison ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Oui, Liam a raison cette fois. Pour convertir 3/8 en décimal, on effectue la division 3 ÷ 8. Posons la division : 3,000 ÷ 8. 8 × 0 = 0, reste 3. On abaisse un 0 : 30 ÷ 8 = 3, reste 6. On abaisse un 0 : 60 ÷ 8 = 7, reste 4. On abaisse un 0 : 40 ÷ 8 = 5, reste 0. Donc 3 ÷ 8 = 0,375. On peut vérifier : 0,375 × 8 = 3. Autre méthode : 3/8 = 3 × 125 / 8 × 125 = 375/1000 = 0,375.',
  'Confondre le sens de la division dans une fraction : diviser le dénominateur par le numérateur (8 ÷ 3 ≈ 2,666…) au lieu du numérateur par le dénominateur (3 ÷ 8 = 0,375).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — Vrai/Faux — Calcul de pourcentage
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'vrai_faux',
  'Liam dit que 30 % de 200, c''est 200 ÷ 30 ≈ 6,67. A-t-il raison ?',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Non, Liam a tort. « 30 % de 200 » signifie 30/100 × 200 = 0,30 × 200 = 60. Liam a confondu « 30 % de 200 » avec « 200 divisé par 30 ». Le symbole % signifie « pour cent » : 30 % = 30/100 = 0,30. Calculer un pourcentage d''une quantité revient à MULTIPLIER cette quantité par la fraction correspondante, pas à diviser. Astuce : 10 % de 200 = 20, donc 30 % = 3 × 20 = 60. Le résultat de Liam (≈ 6,67) est environ 10 fois trop petit, ce qui aurait dû l''alerter sur son erreur.',
  'Confondre « X % de Y » (= X/100 × Y) avec « Y ÷ X ». L''élève inverse l''opération et divise la quantité par le pourcentage au lieu de multiplier par la fraction décimale correspondante.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q8 — Réponse courte — Multiplication de nombres négatifs
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'reponse_courte',
  'Liam a écrit : (−3) × (−7) = −21. Quel est le résultat correct de ce calcul ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["21","+21"]}'::jsonb,
  'Le résultat correct est 21 (positif). La règle des signes pour la multiplication est : moins × moins = plus. Autrement dit, le produit de deux nombres négatifs est toujours positif. (−3) × (−7) = +(3 × 7) = +21 = 21. Liam a appliqué une fausse règle : il a multiplié les valeurs absolues correctement (3 × 7 = 21) mais a gardé le signe négatif, comme s''il pensait que « négatif × négatif = négatif ». Les quatre règles des signes : (+)(+) = +, (+)(−) = −, (−)(+) = −, (−)(−) = +. Moyen mnémotechnique : un nombre pair de signes négatifs donne un résultat positif.',
  'Croire que le produit de deux nombres négatifs est négatif. L''élève retient que « négatif donne du négatif » sans appliquer correctement la règle des signes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — Réponse courte — PGCD
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'reponse_courte',
  'Liam affirme que le PGCD de 48 et 36 est 6. Quel est le vrai PGCD de 48 et 36 ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12"]}'::jsonb,
  'Le PGCD de 48 et 36 est 12, pas 6. Calculons par décomposition en facteurs premiers : 48 = 2⁴ × 3 et 36 = 2² × 3². Le PGCD est le produit des facteurs communs avec le plus petit exposant : 2² × 3 = 4 × 3 = 12. On peut vérifier avec l''algorithme d''Euclide : 48 = 1 × 36 + 12, puis 36 = 3 × 12 + 0, donc PGCD(48, 36) = 12. Liam a trouvé 6, qui est bien un diviseur commun de 48 et 36 (48 = 8 × 6, 36 = 6 × 6), mais ce n''est pas le PLUS GRAND diviseur commun. Il s''est probablement arrêté trop tôt dans sa recherche ou a divisé une seule fois par 2 puis par 3 sans vérifier si on pouvait simplifier davantage.',
  'S''arrêter à un diviseur commun sans vérifier qu''il est le plus grand. L''élève trouve un diviseur commun (ici 6) et conclut sans chercher plus loin. Il faut systématiser la décomposition en facteurs premiers ou l''algorithme d''Euclide.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — Réponse courte — Produit en croix (proportionnalité)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0010000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_chasse_erreurs_calcul',
  'Chasse aux erreurs — Calcul et fractions',
  'Intermediaire',
  'reponse_courte',
  'Voici le calcul de Liam : « Si 5 kg de pommes coûtent 12 €, alors 8 kg coûtent (5 × 8) ÷ 12 = 3,33 €. » Quel est le prix correct de 8 kg de pommes ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["19,2","19.2","19,20","19.20","19,2 €","19.2 €","19,20 €","19.20 €"]}'::jsonb,
  'Le prix correct est 19,20 €. Dans une situation de proportionnalité, on utilise le produit en croix : si 5 kg → 12 €, alors 8 kg → x €. On écrit : 5/12 = 8/x, donc x = (12 × 8) ÷ 5 = 96 ÷ 5 = 19,2 €. Liam a inversé le produit en croix : il a calculé (5 × 8) ÷ 12 = 40 ÷ 12 ≈ 3,33 € au lieu de (12 × 8) ÷ 5 = 19,2 €. Son erreur est d''avoir multiplié les deux masses entre elles et divisé par le prix, au lieu de multiplier le prix par la nouvelle masse et diviser par l''ancienne masse. Un indice d''erreur : 3,33 € pour 8 kg est MOINS cher que 12 € pour 5 kg, ce qui est absurde.',
  'Inverser les termes du produit en croix. L''élève mélange les grandeurs et multiplie/divise les mauvaises valeurs entre elles. Il faut toujours vérifier la cohérence du résultat : si la quantité augmente, le prix doit aussi augmenter.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
