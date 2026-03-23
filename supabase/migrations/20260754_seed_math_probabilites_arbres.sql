-- Seed: Probabilités — Arbres et situations composées (7 exercices)
-- Subdomain: organisation_donnees | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0a0000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées', 'Intermediaire',
  'qcm',
  'Une urne contient 3 boules rouges et 2 boules bleues. On tire successivement deux boules avec remise. À l''aide d''un arbre de probabilités, déterminer la probabilité d''obtenir deux boules rouges.',
  NULL,
  '[{"id":"a","label":"6/25"},{"id":"b","label":"9/25"},{"id":"c","label":"3/10"},{"id":"d","label":"6/20"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On construit un arbre à deux niveaux. Au premier tirage, P(Rouge) = 3/5. Comme le tirage est avec remise, la composition de l''urne ne change pas au second tirage : P(Rouge) = 3/5. Pour obtenir deux boules rouges, on multiplie les probabilités le long de la branche : P(R puis R) = 3/5 × 3/5 = 9/25. C''est la règle fondamentale de l''arbre de probabilités : on multiplie les probabilités le long d''un chemin pour obtenir la probabilité de la séquence d''événements correspondante.',
  'Additionner les probabilités au lieu de les multiplier (3/5 + 3/5 = 6/5 > 1, ce qui est impossible pour une probabilité). On multiplie le long des branches et on additionne entre les chemins exclusifs.',
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
  'fb0a0000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées', 'Intermediaire',
  'reponse_courte',
  'On lance une pièce équilibrée deux fois de suite. En utilisant un arbre de probabilités, calculer la probabilité d''obtenir exactement un Pile et un Face (dans n''importe quel ordre). Donner le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/2","0,5","0.5"]}'::jsonb,
  'L''arbre comporte 4 chemins équiprobables de probabilité 1/4 chacun : (P,P), (P,F), (F,P), (F,F). Les chemins correspondant à « exactement un Pile et un Face » sont (P,F) et (F,P). Ces deux événements sont incompatibles, donc on additionne leurs probabilités : P = 1/4 + 1/4 = 2/4 = 1/2. C''est la règle d''addition des chemins exclusifs dans un arbre : quand plusieurs chemins réalisent l''événement souhaité, on additionne les probabilités de chaque chemin.',
  'Ne compter qu''un seul chemin (P,F) et oublier (F,P), ce qui donne 1/4 au lieu de 1/2. L''ordre des lancers compte dans l''arbre, il faut considérer tous les chemins favorables.',
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
  'fb0a0000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées', 'Intermediaire',
  'qcm',
  'Un sac contient 4 billes vertes et 6 billes jaunes. On tire une bille, on note sa couleur, puis on tire une seconde bille sans remettre la première. Quelle est la probabilité d''obtenir une bille verte puis une bille jaune ?',
  NULL,
  '[{"id":"a","label":"24/100"},{"id":"b","label":"4/15"},{"id":"c","label":"6/25"},{"id":"d","label":"24/90"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Au premier tirage, P(Verte) = 4/10. Comme le tirage est sans remise, il reste 9 billes dans le sac après le premier tirage, dont 6 jaunes. Donc P(Jaune | Verte au 1er) = 6/9. On multiplie le long de la branche : P(V puis J) = 4/10 × 6/9 = 24/90 = 4/15. Dans un arbre de probabilités sans remise, les probabilités au second niveau dépendent du résultat du premier tirage : ce sont des probabilités conditionnelles. C''est ce qui distingue fondamentalement le tirage sans remise du tirage avec remise.',
  'Utiliser les mêmes probabilités qu''avec remise (4/10 × 6/10 = 24/100) en oubliant que la composition de l''urne change après le premier tirage sans remise.',
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
  'fb0a0000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées', 'Intermediaire',
  'qcm',
  'On lance deux pièces équilibrées simultanément. Quelle est la probabilité d''obtenir au moins un Pile ?',
  NULL,
  '[{"id":"a","label":"1/2"},{"id":"b","label":"1/4"},{"id":"c","label":"3/4"},{"id":"d","label":"2/3"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''arbre donne 4 issues équiprobables : (P,P), (P,F), (F,P), (F,F), chacune de probabilité 1/4. « Au moins un Pile » correspond à tous les chemins sauf (F,F). On peut calculer directement : P(au moins un P) = 1 − P(aucun P) = 1 − P(F,F) = 1 − 1/4 = 3/4. On peut aussi additionner les chemins favorables : P = 1/4 + 1/4 + 1/4 = 3/4. La méthode par l''événement contraire (1 − P(contraire)) est souvent plus rapide quand « au moins un » est demandé.',
  'Répondre 1/2 en pensant qu''il suffit de regarder une seule pièce. Avec deux pièces, la situation est composée et l''arbre montre bien 4 issues distinctes, pas 2.',
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
  'fb0a0000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées', 'Intermediaire',
  'vrai_faux',
  'Dans un tirage sans remise de 2 boules parmi 5 rouges et 5 bleues, la probabilité d''obtenir 2 boules rouges est la même que dans un tirage avec remise.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Avec remise : P(2 rouges) = 5/10 × 5/10 = 25/100 = 1/4. Sans remise : P(2 rouges) = 5/10 × 4/9 = 20/90 = 2/9. Or 1/4 = 0,25 et 2/9 ≈ 0,222, ces deux valeurs sont différentes. Sans remise, après avoir tiré une boule rouge, il ne reste que 4 rouges sur 9 boules, ce qui diminue la probabilité d''en tirer une seconde rouge. La probabilité conditionnelle P(Rouge au 2ᵉ | Rouge au 1ᵉʳ) passe de 5/10 (avec remise) à 4/9 (sans remise). L''arbre de probabilités met clairement en évidence cette différence entre les deux situations.',
  'Croire que le mode de tirage (avec ou sans remise) ne change pas les probabilités. La dépendance entre les tirages successifs modifie les probabilités conditionnelles et donc le résultat final.',
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
  'fb0a0000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées', 'Intermediaire',
  'reponse_courte',
  'Un sac contient 3 boules rouges et 7 boules blanches. On effectue deux tirages avec remise. Calculer la probabilité d''obtenir au moins une boule rouge. Donner le résultat sous forme de fraction sur 100.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["51/100","51 %","0,51","0.51"]}'::jsonb,
  'On utilise l''événement contraire : P(au moins une rouge) = 1 − P(aucune rouge) = 1 − P(blanche puis blanche). Avec remise, P(Blanche) = 7/10 à chaque tirage. Donc P(BB) = 7/10 × 7/10 = 49/100. Ainsi P(au moins une rouge) = 1 − 49/100 = 51/100 = 51 %. L''arbre comporte 4 chemins : (R,R) = 9/100, (R,B) = 21/100, (B,R) = 21/100, (B,B) = 49/100. La somme des trois premiers donne bien 51/100. La méthode par le complémentaire est plus efficace quand « au moins un » est demandé.',
  'Calculer uniquement P(Rouge au 1er tirage) = 3/10 = 30 % en oubliant les cas où le rouge apparaît au second tirage seulement.',
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
  'fb0a0000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées', 'Intermediaire',
  'qcm',
  'Un test de dépistage a une sensibilité de 95 % (si l''on est malade, le test est positif dans 95 % des cas) et une spécificité de 90 % (si l''on n''est pas malade, le test est négatif dans 90 % des cas). Dans une population où 2 % des individus sont atteints de la maladie, quelle est la probabilité qu''une personne testée positive soit réellement malade ?',
  'On modélise la situation par un arbre à deux niveaux : premier niveau = malade (M) ou non malade (M̄), second niveau = test positif (T⁺) ou négatif (T⁻).',
  '[{"id":"a","label":"95 %"},{"id":"b","label":"Environ 16 %"},{"id":"c","label":"Environ 50 %"},{"id":"d","label":"Environ 2 %"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On construit l''arbre avec P(M) = 0,02 et P(M̄) = 0,98. Branches : P(T⁺|M) = 0,95, P(T⁻|M) = 0,05, P(T⁺|M̄) = 0,10, P(T⁻|M̄) = 0,90. On calcule P(T⁺) par la formule des probabilités totales : P(T⁺) = P(M) × P(T⁺|M) + P(M̄) × P(T⁺|M̄) = 0,02 × 0,95 + 0,98 × 0,10 = 0,019 + 0,098 = 0,117. Puis, par la formule de Bayes : P(M|T⁺) = P(M) × P(T⁺|M) / P(T⁺) = 0,019 / 0,117 ≈ 0,162, soit environ 16 %. Ce résultat surprenant montre que même avec un test performant, quand la maladie est rare, la plupart des tests positifs sont des faux positifs.',
  'Confondre la sensibilité du test (95 %) avec la probabilité d''être malade sachant que le test est positif. Ce sont deux probabilités conditionnelles différentes : P(T⁺|M) ≠ P(M|T⁺). C''est le piège classique de l''inversion des conditionnelles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
