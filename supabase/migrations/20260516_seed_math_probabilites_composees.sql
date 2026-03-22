-- ============================================================
-- Série : Probabilités — Situations composées (Avancé / Premium)
-- 7 exercices : Q1-Q2 Amorce · Q3-Q5 Consolidation · Q6-Q7 Approfondissement
-- ============================================================

-- Q1 — AMORCE — QCM — Probabilité d''un nombre premier sur un dé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000001', 'Mathematiques', 'organisation_donnees', 'math_probabilites_composees',
  'Probabilités — Situations composées', 'Avance', 'qcm',
  'On lance un dé équilibré à six faces. Quelle est la probabilité d''obtenir un nombre premier ?', NULL,
  '[{"id":"a","label":"1/3"},{"id":"b","label":"1/2"},{"id":"c","label":"2/3"},{"id":"d","label":"1/6"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les nombres premiers entre 1 et 6 sont : 2, 3 et 5. Il y en a donc 3 sur 6 faces possibles. La probabilité est 3/6 = 1/2. Attention : 1 n''est pas un nombre premier (il n''a qu''un seul diviseur), et 4 et 6 ne sont pas premiers car ils sont divisibles par 2.',
  'Oublier que 1 n''est pas un nombre premier et compter 4 nombres premiers (1, 2, 3, 5), ce qui donnerait 4/6 = 2/3.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Comparaison des totaux avec deux dés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000002', 'Mathematiques', 'organisation_donnees', 'math_probabilites_composees',
  'Probabilités — Situations composées', 'Avance', 'vrai_faux',
  'Quand on lance deux dés équilibrés à six faces, obtenir un total de 6 est aussi probable qu''obtenir un total de 7.', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. L''espace des possibles comprend 6 × 6 = 36 issues équiprobables. Pour un total de 6, les combinaisons sont : (1,5), (2,4), (3,3), (4,2), (5,1) → 5 issues favorables, soit une probabilité de 5/36. Pour un total de 7, les combinaisons sont : (1,6), (2,5), (3,4), (4,3), (5,2), (6,1) → 6 issues favorables, soit une probabilité de 6/36 = 1/6. Le total de 7 est donc plus probable que le total de 6.',
  'Croire que tous les totaux possibles sont équiprobables, sans dénombrer les combinaisons distinctes associées à chaque somme.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Tirage sans remise (boules)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000003', 'Mathematiques', 'organisation_donnees', 'math_probabilites_composees',
  'Probabilités — Situations composées', 'Avance', 'qcm',
  'Un sac contient 3 boules rouges et 5 boules bleues. On tire successivement 2 boules SANS remise. Quelle est la probabilité de tirer 2 boules rouges ?', NULL,
  '[{"id":"a","label":"9/64"},{"id":"b","label":"3/28"},{"id":"c","label":"6/64"},{"id":"d","label":"1/8"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'On utilise un arbre de probabilités pour modéliser cette expérience à deux épreuves successives. Au premier tirage, la probabilité de tirer une boule rouge est 3/8 (3 rouges sur 8 boules au total). Puisqu''il n''y a pas de remise, au deuxième tirage il reste 2 boules rouges sur 7 boules. La probabilité de tirer deux rouges est donc : P(R₁ ∩ R₂) = 3/8 × 2/7 = 6/56 = 3/28. Le distracteur 9/64 correspond à un calcul avec remise (3/8 × 3/8). Le distracteur 1/8 correspond à 3/8 × 1/3, un calcul erroné.',
  'Calculer comme s''il y avait remise (3/8 × 3/8 = 9/64) au lieu de tenir compte de la modification de la composition du sac après le premier tirage.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Lancer de pièce (3 fois, exactement 2 faces)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000004', 'Mathematiques', 'organisation_donnees', 'math_probabilites_composees',
  'Probabilités — Situations composées', 'Avance', 'reponse_courte',
  'On lance une pièce équilibrée 3 fois de suite. Quelle est la probabilité d''obtenir exactement 2 fois « face » ? Donnez votre réponse sous forme de fraction irréductible.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3/8"]}'::jsonb,
  'L''espace des possibles contient 2³ = 8 issues équiprobables. On liste toutes les issues comportant exactement 2 « face » (F) et 1 « pile » (P) : FFP, FPF, PFF. Il y a donc 3 issues favorables sur 8 possibles. La probabilité est 3/8. On peut aussi utiliser le coefficient binomial : C(3,2) = 3, et chaque issue a une probabilité de (1/2)³ = 1/8, d''où P = 3 × 1/8 = 3/8.',
  'Ne pas recenser toutes les configurations possibles et oublier certains arrangements, par exemple ne compter que FFP et FPF (2/8 = 1/4).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — QCM — Inclusion-exclusion (deux ensembles)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000005', 'Mathematiques', 'organisation_donnees', 'math_probabilites_composees',
  'Probabilités — Situations composées', 'Avance', 'qcm',
  'Dans une classe de 30 élèves, 18 aiment les mathématiques, 12 aiment le français, et 6 aiment les deux matières. Si on choisit un élève au hasard, quelle est la probabilité qu''il n''aime ni les mathématiques ni le français ?', NULL,
  '[{"id":"a","label":"1/5"},{"id":"b","label":"1/6"},{"id":"c","label":"4/30"},{"id":"d","label":"1/3"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'On applique la formule d''inclusion-exclusion : le nombre d''élèves qui aiment au moins une des deux matières est |M ∪ F| = |M| + |F| − |M ∩ F| = 18 + 12 − 6 = 24. Le nombre d''élèves qui n''aiment ni l''une ni l''autre est donc 30 − 24 = 6. La probabilité est 6/30 = 1/5. On peut aussi représenter la situation à l''aide d''un diagramme de Venn : M seul = 12, F seul = 6, M ∩ F = 6, extérieur = 6.',
  'Oublier de soustraire l''intersection et calculer 18 + 12 = 30, concluant à tort que tous les élèves aiment au moins une matière.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Théorème de Bayes (test médical)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000006', 'Mathematiques', 'organisation_donnees', 'math_probabilites_composees',
  'Probabilités — Situations composées', 'Avance', 'reponse_courte',
  'Un test médical a une sensibilité de 95 % (il détecte correctement 95 % des malades) et une spécificité de 90 % (10 % de faux positifs chez les personnes saines). Dans une population où 2 % des individus sont malades, quelle est la probabilité qu''une personne testée positive soit réellement malade ? Donnez votre réponse sous forme de fraction irréductible.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["19/117"]}'::jsonb,
  'On utilise le théorème de Bayes avec un arbre de probabilités à deux niveaux. Niveau 1 : Malade (M) avec P(M) = 0,02 et Sain (S) avec P(S) = 0,98. Niveau 2 : Test positif (+) sachant M → P(+|M) = 0,95 ; Test positif sachant S → P(+|S) = 0,10. On calcule P(+) par la formule des probabilités totales : P(+) = P(+|M) × P(M) + P(+|S) × P(S) = 0,95 × 0,02 + 0,10 × 0,98 = 0,019 + 0,098 = 0,117. Puis, par le théorème de Bayes : P(M|+) = P(+|M) × P(M) / P(+) = 0,019 / 0,117 = 19/117 ≈ 16,2 %. Ce résultat, contre-intuitif, montre que même avec un test performant, la valeur prédictive positive reste faible quand la maladie est rare.',
  'Confondre la sensibilité du test (95 %) avec la probabilité d''être malade sachant un test positif, en négligeant la prévalence de la maladie dans la population.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Au moins un gagnant (loterie sans remise)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000007', 'Mathematiques', 'organisation_donnees', 'math_probabilites_composees',
  'Probabilités — Situations composées', 'Avance', 'qcm',
  'Un jeu de loterie propose 3 billets gagnants sur 10 billets au total. Trois amis achètent chacun un billet successivement (sans remise). Quelle est la probabilité qu''au moins l''un d''entre eux gagne ?', NULL,
  '[{"id":"a","label":"17/24"},{"id":"b","label":"3/10"},{"id":"c","label":"7/24"},{"id":"d","label":"27/1000"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'On utilise l''événement complémentaire : P(au moins un gagnant) = 1 − P(aucun ne gagne). On construit un arbre de probabilités pour les tirages successifs sans remise. Le 1ᵉʳ ami ne gagne pas : 7 billets perdants sur 10, P₁ = 7/10. Le 2ᵉ ami ne gagne pas : 6 billets perdants sur 9, P₂ = 6/9. Le 3ᵉ ami ne gagne pas : 5 billets perdants sur 8, P₃ = 5/8. P(aucun ne gagne) = 7/10 × 6/9 × 5/8 = 210/720 = 7/24. Donc P(au moins un gagne) = 1 − 7/24 = 17/24. Le distracteur 27/1000 correspond à un calcul erroné avec remise : (3/10)³. Le distracteur 3/10 correspond à la probabilité pour un seul ami.',
  'Calculer P(au moins un) comme 3 × (3/10) = 9/10, en additionnant les probabilités individuelles sans tenir compte du fait que les tirages sont sans remise et non indépendants.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
