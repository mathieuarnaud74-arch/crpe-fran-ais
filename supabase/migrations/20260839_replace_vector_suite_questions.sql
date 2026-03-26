-- ============================================================
-- Migration de remplacement : 10 questions
-- PARTIE A : Q1-Q3 de math_transformations_composees (supprime la notation vectorielle)
-- PARTIE B : Q1-Q7 de math_suites_motifs (réécriture complète, supprime le formalisme de suites)
-- ============================================================

-- ============================================================
-- PARTIE A — Transformations composées (Q1, Q2, Q3)
-- On supprime puis réinsère pour remplacer le contenu
-- ============================================================

DELETE FROM public.exercises WHERE id IN (
  'f90f0000-0000-0000-0000-000000000001',
  'f90f0000-0000-0000-0000-000000000002',
  'f90f0000-0000-0000-0000-000000000003'
);

-- Q1 — AMORCE — QCM — Reconnaître une transformation à partir d'une description
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'qcm',
  'On effectue deux transformations successives sur un triangle : d''abord une symétrie axiale par rapport à une droite (d), puis une symétrie axiale par rapport à une droite (d'') parallèle à (d). La transformation résultante est :',
  'Les droites (d) et (d'') sont parallèles et distantes de 4 cm.',
  '[{"id":"a","label":"Une translation perpendiculaire à (d) et (d''), de longueur 8 cm"},{"id":"b","label":"Une symétrie axiale par rapport à une troisième droite"},{"id":"c","label":"Une rotation de 180°"},{"id":"d","label":"Une translation perpendiculaire à (d) et (d''), de longueur 4 cm"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La composée de deux symétries axiales dont les axes sont parallèles est toujours une translation. La direction de cette translation est perpendiculaire aux deux axes, et sa longueur vaut le double de la distance entre les axes. Ici, la distance entre (d) et (d'') est 4 cm, donc la translation est de 2 × 4 = 8 cm. La réponse D (4 cm) est l''erreur classique : oublier de doubler la distance. La réponse B est fausse car la composée de deux symétries axiales d''axes parallèles n''est jamais une symétrie axiale. La réponse C est fausse car une rotation de 180° correspondrait à deux symétries axiales d''axes sécants.',
  'Oublier de doubler la distance entre les axes et répondre 4 cm au lieu de 8 cm.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
);

-- Q2 — AMORCE — Vrai/Faux — Propriétés conservées par les isométries
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'vrai_faux',
  'Vrai ou faux : lorsqu''on compose deux isométries du plan (par exemple une symétrie axiale suivie d''une rotation), la figure obtenue a les mêmes longueurs et les mêmes angles que la figure de départ.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Une isométrie est une transformation qui conserve les distances. La composée de deux isométries est elle-même une isométrie : si la première transformation conserve les longueurs, et la seconde aussi, alors en enchaînant les deux, chaque distance est préservée à chaque étape. Les angles sont également conservés car ils dépendent uniquement des distances entre points. Les isométries du plan sont : les translations, les rotations, les symétries axiales et les symétries centrales (qui est un cas particulier de rotation de 180°). Toute composée de ces transformations conserve longueurs et angles.',
  'Penser qu''en composant deux transformations, les « erreurs » s''accumulent et les longueurs ne sont plus conservées.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
);

-- Q3 — CONSOLIDATION — QCM — Image d'une figure par composition de symétries sécantes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90f0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_transformations_composees',
  'Transformations composées — Composition et effets', 'Difficile', 'qcm',
  'On compose deux symétries axiales dont les axes (d₁) et (d₂) se coupent en un point O en formant un angle de 35°. Quelle est la nature de la transformation résultante ?',
  NULL,
  '[{"id":"a","label":"Une rotation de centre O et d''angle 70°"},{"id":"b","label":"Une translation de longueur 35 cm"},{"id":"c","label":"Une rotation de centre O et d''angle 35°"},{"id":"d","label":"Une symétrie centrale de centre O"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La composée de deux symétries axiales dont les axes sont sécants en un point O est une rotation de centre O. L''angle de cette rotation vaut le double de l''angle entre les deux axes. Ici, les axes forment un angle de 35°, donc la rotation résultante a un angle de 2 × 35° = 70°. La réponse C (35°) oublie de doubler l''angle. La réponse B est fausse : une translation résulterait d''axes parallèles, pas sécants. La réponse D serait correcte uniquement si l''angle entre les axes valait 90° (car 2 × 90° = 180°, ce qui donnerait une symétrie centrale).',
  'Confondre l''angle entre les axes (35°) avec l''angle de la rotation résultante (70°) en oubliant de doubler.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
);

-- ============================================================
-- PARTIE B — Régularités et motifs numériques (Q1-Q7)
-- Réécriture complète : suppression du formalisme de suites
-- ============================================================

DELETE FROM public.exercises WHERE id IN (
  'f80a0000-0000-0000-0000-000000000001',
  'f80a0000-0000-0000-0000-000000000002',
  'f80a0000-0000-0000-0000-000000000003',
  'f80a0000-0000-0000-0000-000000000004',
  'f80a0000-0000-0000-0000-000000000005',
  'f80a0000-0000-0000-0000-000000000006',
  'f80a0000-0000-0000-0000-000000000007'
);

-- Q1 — AMORCE — QCM — Nombre suivant dans une régularité additive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Régularités et motifs numériques', 'Intermediaire',
  'qcm',
  'Voici une liste de nombres : 7, 10, 13, 16, 19, … Quel est le nombre suivant ?',
  NULL,
  '[{"id":"a","label":"21"},{"id":"b","label":"22"},{"id":"c","label":"23"},{"id":"d","label":"25"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour trouver la règle, on calcule l''écart entre chaque nombre consécutif : 10 − 7 = 3, 13 − 10 = 3, 16 − 13 = 3, 19 − 16 = 3. L''écart est constant : on ajoute 3 à chaque étape. Le nombre suivant est donc 19 + 3 = 22. Ce type de régularité, où l''on ajoute toujours le même nombre, est le plus simple à identifier : il suffit de vérifier que les écarts entre nombres consécutifs sont tous égaux.',
  'Confondre l''écart (+3) avec le premier nombre de la liste (7), ou mal compter et ajouter 2 au lieu de 3.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
);

-- Q2 — AMORCE — Réponse courte — Régularité multiplicative (×2)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Régularités et motifs numériques', 'Intermediaire',
  'reponse_courte',
  'Voici une liste de nombres : 3, 6, 12, 24, 48, … Pour passer d''un nombre au suivant, on multiplie toujours par le même nombre. Quel est le nombre suivant de cette liste ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["96"]}'::jsonb,
  'On observe le lien entre chaque nombre et le suivant : 6 ÷ 3 = 2, 12 ÷ 6 = 2, 24 ÷ 12 = 2, 48 ÷ 24 = 2. La règle est : on multiplie par 2 à chaque étape. Le nombre suivant est donc 48 × 2 = 96. Pour vérifier, on peut aussi repartir du début : 3 → 6 → 12 → 24 → 48 → 96. Chaque nombre est bien le double du précédent.',
  'Additionner au lieu de multiplier : penser que l''écart augmente de façon additive (3, 6, 9, 12…) au lieu de doubler à chaque fois.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
);

-- Q3 — CONSOLIDATION — QCM — Observer les écarts pour trouver la règle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Régularités et motifs numériques', 'Intermediaire',
  'qcm',
  'Voici une liste de nombres : 2, 5, 10, 17, 26, … Les écarts entre nombres consécutifs sont 3, 5, 7, 9, … Quelle est la règle qui explique cette régularité ?',
  NULL,
  '[{"id":"a","label":"On ajoute à chaque fois 2 de plus que l''écart précédent"},{"id":"b","label":"On multiplie par 2 à chaque étape"},{"id":"c","label":"On ajoute toujours 5"},{"id":"d","label":"On ajoute à chaque fois 3 de plus que l''écart précédent"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Calculons les écarts : 5 − 2 = 3, 10 − 5 = 5, 17 − 10 = 7, 26 − 17 = 9. Les écarts sont 3, 5, 7, 9 : ils augmentent de 2 à chaque étape. La règle est donc : on ajoute à chaque fois 2 de plus que l''écart précédent. Le prochain écart sera 9 + 2 = 11, et le nombre suivant 26 + 11 = 37. On remarque aussi que les nombres de la liste sont 1² + 1, 2² + 1, 3² + 1, 4² + 1, 5² + 1 : ce sont les carrés parfaits augmentés de 1.',
  'Penser que les écarts sont constants (réponse C) en ne regardant que les premiers nombres, ou confondre « ajouter 2 de plus » avec « ajouter 3 de plus ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
);

-- Q4 — CONSOLIDATION — Vrai/Faux — La liste 2, 6, 18, 54 augmente-t-elle toujours de la même quantité ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Régularités et motifs numériques', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans la liste 2, 6, 18, 54, on ajoute toujours la même quantité pour passer d''un nombre au suivant.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Calculons les écarts : 6 − 2 = 4, 18 − 6 = 12, 54 − 18 = 36. Les écarts sont 4, 12 et 36 : ils ne sont pas constants. En revanche, la règle est multiplicative : 6 ÷ 2 = 3, 18 ÷ 6 = 3, 54 ÷ 18 = 3. On multiplie par 3 à chaque étape. Il est important de distinguer une régularité additive (on ajoute toujours la même quantité) d''une régularité multiplicative (on multiplie toujours par le même nombre).',
  'Confondre « augmenter régulièrement » avec « augmenter de la même quantité ». La liste augmente bien de façon régulière, mais la règle est multiplicative (× 3), pas additive.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
);

-- Q5 — CONSOLIDATION — QCM — Problème des allumettes (carrés en ligne)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Régularités et motifs numériques', 'Intermediaire',
  'qcm',
  'On construit des carrés alignés avec des allumettes. Pour 1 carré, il faut 4 allumettes. Pour 2 carrés côte à côte, il faut 7 allumettes (les carrés partagent un côté). Pour 3 carrés, il faut 10 allumettes. Combien d''allumettes faut-il pour construire 10 carrés alignés ?',
  'Chaque nouveau carré partage un côté (une allumette) avec le carré précédent.',
  '[{"id":"a","label":"31"},{"id":"b","label":"40"},{"id":"c","label":"37"},{"id":"d","label":"28"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Observons la régularité : 1 carré → 4 allumettes, 2 carrés → 7 allumettes, 3 carrés → 10 allumettes. L''écart est constant : +3 allumettes par carré supplémentaire. Le premier carré nécessite 4 allumettes, puis chaque carré ajouté en nécessite 3 (car un côté est déjà en place). Pour 10 carrés : 4 + 9 × 3 = 4 + 27 = 31 allumettes. Vérification : 4, 7, 10, 13, 16, 19, 22, 25, 28, 31. Le 10e nombre est bien 31.',
  'Multiplier 10 × 4 = 40 en oubliant que les carrés adjacents partagent un côté, ou se tromper en comptant 10 × 3 = 30 (oublier les 4 allumettes du premier carré).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
);

-- Q6 — APPROFONDISSEMENT — Vrai/Faux — Carrés parfaits (1, 4, 9, 16, 25 → 35 ?)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Régularités et motifs numériques', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans la liste 1, 4, 9, 16, 25, le nombre suivant est 35.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Ces nombres sont les carrés parfaits : 1 = 1², 4 = 2², 9 = 3², 16 = 4², 25 = 5². Le nombre suivant est donc 6² = 36, et non 35. On peut aussi vérifier en regardant les écarts : 3, 5, 7, 9 (les nombres impairs successifs). L''écart suivant serait 11, donc 25 + 11 = 36. L''erreur vient probablement du fait que les écarts augmentent de 2 à chaque fois : en ajoutant 10 (au lieu de 11) à 25, on obtient 35.',
  'Calculer l''écart précédent (9) et ajouter 10 par erreur, au lieu de remarquer que les écarts augmentent de 2 en 2 (3, 5, 7, 9, 11) et obtenir 25 + 11 = 36.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
);

-- Q7 — APPROFONDISSEMENT — Réponse courte — Pyramide de gobelets (nombre triangulaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f80a0000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_suites_motifs',
  'Régularités et motifs numériques', 'Intermediaire',
  'reponse_courte',
  'Pour construire une pyramide de gobelets, on place 1 gobelet sur la rangée du haut, 2 sur la deuxième, 3 sur la troisième, et ainsi de suite. Combien de gobelets faut-il au total pour construire une pyramide de 10 rangées ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["55","55 gobelets"]}'::jsonb,
  'On additionne le nombre de gobelets de chaque rangée : 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10. Pour calculer cette somme rapidement, on peut regrouper les termes par paires symétriques : (1 + 10) + (2 + 9) + (3 + 8) + (4 + 7) + (5 + 6) = 11 + 11 + 11 + 11 + 11 = 5 × 11 = 55. Cette astuce, attribuée au mathématicien Gauss enfant, fonctionne pour toute somme de nombres consécutifs à partir de 1.',
  'Multiplier 10 × 10 = 100 en pensant que chaque rangée contient 10 gobelets, ou oublier certaines rangées dans l''addition.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
);
