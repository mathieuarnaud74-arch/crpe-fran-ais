-- Migration: 10 exercices — Opérations sur les nombres relatifs
-- Série : math_nombres_relatifs_operations (Mathématiques, nombres_calcul)
-- Addition, soustraction, multiplication, division, règle des signes, priorités
-- UUID prefix: f2b30000

-- Q1 — QCM — Addition de deux relatifs de signes contraires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'qcm',
  'Quel est le résultat de (−7) + (+3) ?',
  NULL,
  '[{"id":"a","label":"−4"},{"id":"b","label":"−10"},{"id":"c","label":"+4"},{"id":"d","label":"+10"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour additionner deux nombres relatifs de signes contraires, on calcule la différence de leurs valeurs absolues et on garde le signe de celui qui a la plus grande valeur absolue. Ici : |−7| = 7 et |+3| = 3. Différence : 7 − 3 = 4. Comme |−7| > |+3|, le résultat est négatif : −4. On peut aussi visualiser sur la droite graduée : partir de −7, puis avancer de 3 unités vers la droite → on arrive à −4.',
  'Additionner les valeurs absolues (7 + 3 = 10) au lieu de les soustraire. Quand les signes sont différents, on soustrait ; quand ils sont identiques, on additionne.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Réponse courte — Soustraction de relatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'reponse_courte',
  'Calculez : (−5) − (−8).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","+3"]}'::jsonb,
  'Soustraire un nombre, c''est additionner son opposé. Donc : (−5) − (−8) = (−5) + (+8). On additionne ensuite deux relatifs de signes contraires : |+8| − |−5| = 8 − 5 = 3. Comme |+8| > |−5|, le résultat est positif : +3. Règle fondamentale : a − (−b) = a + b. Autrement dit, « moins moins » donne « plus ». Sur la droite graduée : partir de −5, puis avancer de 8 unités vers la droite → on arrive à +3.',
  'Écrire −13 en calculant (−5) + (−8) au lieu de (−5) + (+8). La soustraction d''un négatif se transforme en addition d''un positif.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Vrai/Faux — Règle des signes pour la multiplication
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : le produit de deux nombres négatifs est toujours négatif.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Le produit de deux nombres négatifs est toujours POSITIF. Règle des signes pour la multiplication (et la division) : (+) × (+) = (+) ; (+) × (−) = (−) ; (−) × (+) = (−) ; (−) × (−) = (+). Moyen mnémotechnique : si les deux facteurs ont le MÊME signe, le produit est positif ; s''ils ont des signes DIFFÉRENTS, le produit est négatif. Exemple : (−3) × (−4) = +12.',
  'Croire que « négatif × négatif = négatif ». C''est l''erreur la plus fréquente. La règle « moins fois moins égale plus » est contre-intuitive mais fondamentale.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Multiplication de trois relatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'qcm',
  'Quel est le signe du produit (−2) × (+5) × (−3) ?',
  NULL,
  '[{"id":"a","label":"Positif, car il y a un nombre pair de facteurs négatifs"},{"id":"b","label":"Négatif, car il y a plus de facteurs négatifs que positifs"},{"id":"c","label":"Positif, car (−2) × (−3) = +6 et 6 × 5 > 0"},{"id":"d","label":"Les réponses a et c sont correctes"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Le produit est positif (+30). Les deux justifications (a et c) sont correctes. Méthode 1 (comptage) : il y a 2 facteurs négatifs (nombre pair) → produit positif. Règle : dans un produit de relatifs, si le nombre de facteurs négatifs est pair, le résultat est positif ; s''il est impair, le résultat est négatif. Méthode 2 (calcul pas à pas) : (−2) × (+5) = −10, puis (−10) × (−3) = +30. Les deux approches sont valables et doivent donner le même résultat.',
  'Répondre « négatif car il y a plus de négatifs (2) que de positifs (1) ». Ce n''est pas le NOMBRE de négatifs par rapport aux positifs qui compte, mais la PARITÉ du nombre de facteurs négatifs.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Réponse courte — Division de relatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'reponse_courte',
  'Calculez : (−24) ÷ (−6).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["4","+4"]}'::jsonb,
  '(−24) ÷ (−6) = +4. La règle des signes s''applique de la même manière pour la division que pour la multiplication : deux nombres de même signe → quotient positif. Calcul : 24 ÷ 6 = 4, et (−) ÷ (−) = (+), donc le résultat est +4. Vérification : (+4) × (−6) = −24 ✓. La division est l''opération réciproque de la multiplication : si a ÷ b = c, alors c × b = a.',
  'Répondre −4 en oubliant la règle « même signe = résultat positif ». La règle des signes est identique pour la multiplication et la division.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Priorités opératoires avec relatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'qcm',
  'Calculez : 3 − 5 × (−2).',
  NULL,
  '[{"id":"a","label":"−4"},{"id":"b","label":"13"},{"id":"c","label":"−13"},{"id":"d","label":"4"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La multiplication est prioritaire sur la soustraction. Étape 1 : 5 × (−2) = −10. Étape 2 : 3 − (−10) = 3 + 10 = 13. Le résultat est 13. Attention à deux pièges simultanés : (1) respecter la priorité de la multiplication ; (2) soustraire un nombre négatif revient à additionner son opposé. Si on calcule de gauche à droite sans priorité : (3 − 5) × (−2) = (−2) × (−2) = 4. C''est faux car on n''a pas respecté les priorités.',
  'Calculer de gauche à droite sans priorité : (3 − 5) × (−2) = 4. La multiplication et la division sont TOUJOURS prioritaires sur l''addition et la soustraction.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Opposé et valeur absolue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : l''opposé de (−3,5) est 3,5 et la valeur absolue de (−3,5) est aussi 3,5.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! L''opposé d''un nombre a est le nombre −a tel que a + (−a) = 0. L''opposé de −3,5 est +3,5 car (−3,5) + (+3,5) = 0. La valeur absolue d''un nombre est sa distance à zéro sur la droite graduée, toujours positive ou nulle : |−3,5| = 3,5. Pour un nombre négatif, l''opposé et la valeur absolue coïncident : si a < 0, alors −a = |a| > 0. Pour un nombre positif, c''est différent : l''opposé de 3,5 est −3,5, mais |3,5| = 3,5. L''opposé change le signe ; la valeur absolue « enlève » le signe.',
  'Confondre opposé et inverse. L''opposé de −3,5 est +3,5 (somme = 0) ; l''inverse de −3,5 est −1/3,5 ≈ −0,286 (produit = 1). Ce sont deux notions distinctes.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Somme algébrique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'qcm',
  'Simplifiez puis calculez : −8 + 3 − (−5) + (−2).',
  NULL,
  '[{"id":"a","label":"−2"},{"id":"b","label":"−12"},{"id":"c","label":"+2"},{"id":"d","label":"−8"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'On transforme d''abord en somme algébrique : −8 + 3 − (−5) + (−2) = −8 + 3 + 5 + (−2) = −8 + 3 + 5 − 2. Méthode : regrouper les positifs et les négatifs. Positifs : 3 + 5 = 8. Négatifs : −8 − 2 = −10. Total : 8 + (−10) = −2. Ou pas à pas : −8 + 3 = −5 ; −5 + 5 = 0 ; 0 + (−2) = −2. Le résultat est −2. Dans une somme algébrique, on peut regrouper les termes dans n''importe quel ordre (commutativité et associativité de l''addition).',
  'Se tromper sur − (−5) : soustraire un négatif, c''est ajouter un positif. −(−5) = +5.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Problème en contexte (température)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'reponse_courte',
  'À 6 h du matin, la température est de −4 °C. À midi, elle a augmenté de 9 °C. Puis entre midi et 18 h, elle a baissé de 6 °C. Quelle est la température à 18 h ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["-1","-1 °C","−1","−1 °C"]}'::jsonb,
  'Température à midi : (−4) + 9 = +5 °C. Température à 18 h : (+5) − 6 = −1 °C. La température est de −1 °C à 18 h. Ce type de problème illustre l''usage quotidien des nombres relatifs : les températures, les altitudes (au-dessus/en dessous du niveau de la mer), les comptes bancaires (crédit/débit). L''addition traduit une augmentation, la soustraction traduit une diminution. Le calcul global : −4 + 9 − 6 = −4 + 3 = −1.',
  'Se tromper dans l''ordre des opérations ou confondre « augmenter de 9 °C » (additionner) avec « la température est de 9 °C » (remplacer).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Distributivité avec relatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f2b30000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_relatifs_operations',
  'Opérations sur les nombres relatifs',
  'Standard',
  'qcm',
  'Développez et calculez : −3 × (4 − 7).',
  NULL,
  '[{"id":"a","label":"−3 car −3 × 4 − 7 = −12 − 7 = −19… non, +9"},{"id":"b","label":"+9 car −3 × (−3) = +9"},{"id":"c","label":"+9 car −3 × 4 + (−3) × (−7) = −12 + 21 = 9"},{"id":"d","label":"−9 car 3 × 3 = 9 et le signe est négatif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Deux méthodes possibles. Méthode 1 (priorité des parenthèses) : −3 × (4 − 7) = −3 × (−3) = +9. Méthode 2 (distributivité) : −3 × (4 − 7) = (−3) × 4 + (−3) × (−7) = −12 + 21 = +9. Les deux méthodes donnent +9. La distributivité : a × (b − c) = a × b − a × c. Quand on distribue un facteur négatif, tous les signes à l''intérieur de la parenthèse changent : −3 × (+4) = −12 et −3 × (−7) = +21. Le résultat est bien +9.',
  'Oublier de distribuer le signe négatif au deuxième terme : écrire −3 × 4 − 3 × 7 = −12 − 21 = −33. Quand on distribue −3, il faut multiplier −3 par CHAQUE terme, y compris le −7.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
