-- Migration: 10 exercices — Nombres premiers et décomposition en facteurs premiers
-- Série : math_nombres_premiers_decomposition (Mathématiques, nombres_calcul)
-- Crible d'Ératosthène, test de primalité, décomposition, applications PGCD/PPCM
-- UUID prefix: e9340000

-- Q1 — QCM — Définition nombre premier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'qcm',
  'Parmi les nombres suivants, lequel est un nombre premier ?',
  NULL,
  '[{"id":"a","label":"51"},{"id":"b","label":"67"},{"id":"c","label":"91"},{"id":"d","label":"87"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '67 est premier : il n''est divisible que par 1 et par lui-même. Pour le vérifier, on teste la divisibilité par tous les nombres premiers inférieurs ou égaux à √67 ≈ 8,2, soit 2, 3, 5 et 7. 67 est impair (pas divisible par 2), 6+7 = 13 (pas divisible par 3), ne se termine pas par 0 ou 5 (pas divisible par 5), 67 ÷ 7 ≈ 9,57 (pas divisible par 7). Donc 67 est premier. Les autres : 51 = 3 × 17, 91 = 7 × 13 (piège classique !), 87 = 3 × 29.',
  'Croire que 91 est premier. C''est un piège très fréquent au CRPE : 91 = 7 × 13. Il faut systématiquement tester la divisibilité par les premiers ≤ √n.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — 1 n'est pas premier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : 1 est un nombre premier.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Par convention, 1 n''est PAS un nombre premier. Un nombre premier est un entier naturel qui possède exactement DEUX diviseurs distincts : 1 et lui-même. Or, 1 n''a qu''un seul diviseur (lui-même). Cette convention n''est pas arbitraire : si 1 était premier, la décomposition en facteurs premiers ne serait plus unique (on pourrait toujours multiplier par des 1). Le théorème fondamental de l''arithmétique garantit l''unicité de la décomposition, ce qui exige que 1 soit exclu des nombres premiers.',
  'Croire que 1 est premier parce qu''il n''est divisible que par 1 et par lui-même. Le critère est d''avoir EXACTEMENT DEUX diviseurs DISTINCTS. 1 n''en a qu''un.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Réponse courte — Plus petit nombre premier pair
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'reponse_courte',
  'Quel est le seul nombre premier pair ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2"]}'::jsonb,
  '2 est le seul nombre premier pair. Tout autre nombre pair est divisible par 2, donc il possède au moins trois diviseurs (1, 2 et lui-même) et ne peut pas être premier. 2 est aussi le plus petit nombre premier. La liste des premiers nombres premiers est : 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31… On remarque que 2 est le seul pair ; tous les autres sont impairs (mais tous les impairs ne sont pas premiers : 9, 15, 21…).',
  'Oublier 2 et penser que tous les nombres premiers sont impairs. 2 est l''exception : le seul premier pair.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Crible d'Ératosthène
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'qcm',
  'Pour trouver tous les nombres premiers inférieurs à 100 par le crible d''Ératosthène, il suffit de rayer les multiples des nombres premiers inférieurs ou égaux à :',
  NULL,
  '[{"id":"a","label":"10"},{"id":"b","label":"7"},{"id":"c","label":"50"},{"id":"d","label":"11"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il suffit de rayer les multiples des premiers ≤ √100 = 10. Les nombres premiers ≤ 10 sont 2, 3, 5, 7. Donc on raye les multiples de 2, 3, 5 et 7, et les nombres restants (non rayés, sauf 1) sont les nombres premiers inférieurs à 100. Pourquoi √100 ? Si un nombre n < 100 est composé (non premier), il s''écrit n = a × b avec a ≤ b. Alors a² ≤ a × b = n < 100, donc a < 10. Le plus petit facteur est donc ≤ 9, et s''il est composé lui-même, il a un facteur premier encore plus petit. D''où : tester jusqu''à 7 (le plus grand premier ≤ 9) suffit.',
  'Croire qu''il faut rayer les multiples de TOUS les nombres jusqu''à 50 ou 99. Le crible n''exige que les premiers ≤ √n, ce qui est beaucoup plus efficace.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Réponse courte — Décomposition en facteurs premiers
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'reponse_courte',
  'Donnez la décomposition en facteurs premiers de 180. Écrivez votre réponse sous la forme a × b × c × … (facteurs dans l''ordre croissant, avec les puissances).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2² × 3² × 5","2^2 × 3^2 × 5","2² x 3² x 5","4 × 9 × 5","2 × 2 × 3 × 3 × 5","2x2x3x3x5","2 × 2 × 3 × 3 × 5"]}'::jsonb,
  '180 = 2² × 3² × 5. Méthode : on divise successivement par les nombres premiers. 180 ÷ 2 = 90 → 90 ÷ 2 = 45 → 45 ÷ 3 = 15 → 15 ÷ 3 = 5 → 5 est premier. Donc 180 = 2 × 2 × 3 × 3 × 5 = 2² × 3² × 5. Le théorème fondamental de l''arithmétique garantit que cette décomposition est UNIQUE (à l''ordre des facteurs près). Cette décomposition est la clé pour calculer le PGCD et le PPCM : PGCD = produit des facteurs communs avec les plus petits exposants, PPCM = produit de tous les facteurs avec les plus grands exposants.',
  'S''arrêter à 180 = 4 × 45 ou 180 = 9 × 20 sans aller jusqu''aux facteurs PREMIERS. La décomposition doit ne contenir que des nombres premiers.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Nombre de diviseurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'qcm',
  'Sachant que 72 = 2³ × 3², combien 72 a-t-il de diviseurs positifs ?',
  NULL,
  '[{"id":"a","label":"6"},{"id":"b","label":"10"},{"id":"c","label":"12"},{"id":"d","label":"8"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '72 = 2³ × 3² a (3+1) × (2+1) = 4 × 3 = 12 diviseurs. Formule : si n = p₁^a₁ × p₂^a₂ × … × pₖ^aₖ, alors le nombre de diviseurs de n est (a₁+1)(a₂+1)…(aₖ+1). Ici : exposant de 2 = 3, exposant de 3 = 2, donc (3+1)(2+1) = 12. Les 12 diviseurs de 72 sont : 1, 2, 3, 4, 6, 8, 9, 12, 18, 24, 36, 72. Cette formule est une application directe de la décomposition en facteurs premiers et revient régulièrement au CRPE.',
  'Confondre le nombre de facteurs premiers (2 : le 2 et le 3) avec le nombre total de diviseurs. La formule (a₁+1)(a₂+1)… compte toutes les combinaisons possibles de facteurs.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Infinité des nombres premiers
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : il existe une infinité de nombres premiers.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Euclide a démontré vers 300 av. J.-C. qu''il existe une infinité de nombres premiers. La preuve par l''absurde est élégante : supposons qu''il n''y ait qu''un nombre fini de premiers p₁, p₂, …, pₙ. Considérons N = p₁ × p₂ × … × pₙ + 1. N n''est divisible par aucun des pᵢ (il laisse toujours un reste de 1). Donc soit N est lui-même premier, soit N a un facteur premier qui n''est dans la liste. Dans les deux cas, il existe un premier qui n''est pas dans la liste. Contradiction. Donc il y a une infinité de nombres premiers.',
  'Croire qu''on peut « lister tous les nombres premiers ». Même si les nombres premiers se raréfient (ils deviennent de plus en plus espacés), il y en a toujours de nouveaux.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Application PGCD via décomposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'qcm',
  'Sachant que 120 = 2³ × 3 × 5 et 90 = 2 × 3² × 5, quel est le PGCD(120, 90) ?',
  NULL,
  '[{"id":"a","label":"30"},{"id":"b","label":"15"},{"id":"c","label":"60"},{"id":"d","label":"360"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'PGCD(120, 90) = 30. Méthode : on prend chaque facteur premier COMMUN avec le PLUS PETIT exposant. Facteurs communs : 2 (exposants 3 et 1 → min = 1), 3 (exposants 1 et 2 → min = 1), 5 (exposants 1 et 1 → min = 1). Donc PGCD = 2¹ × 3¹ × 5¹ = 2 × 3 × 5 = 30. Vérification : 120 = 30 × 4 et 90 = 30 × 3. Et PGCD(4, 3) = 1 (ils sont premiers entre eux), ce qui confirme que 30 est bien le plus grand diviseur commun. Le PPCM serait : 2³ × 3² × 5 = 360.',
  'Confondre PGCD et PPCM. PGCD = facteurs communs, plus petits exposants. PPCM = TOUS les facteurs, plus grands exposants.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Test de primalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'qcm',
  'Pour vérifier si 197 est premier, jusqu''à quel nombre premier faut-il tester la divisibilité ?',
  NULL,
  '[{"id":"a","label":"13"},{"id":"b","label":"14"},{"id":"c","label":"97"},{"id":"d","label":"19"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Il faut tester jusqu''à 13. On cherche les premiers ≤ √197. √197 ≈ 14,03. Les nombres premiers ≤ 14 sont : 2, 3, 5, 7, 11, 13. On teste : 197 est impair (pas ÷ 2), 1+9+7 = 17 (pas ÷ 3), ne finit pas par 0/5 (pas ÷ 5), 197 ÷ 7 ≈ 28,14 (pas ÷ 7), 197 ÷ 11 ≈ 17,9 (pas ÷ 11), 197 ÷ 13 ≈ 15,15 (pas ÷ 13). Aucun ne divise 197, donc 197 est premier. On s''arrête à 13 (pas 14, car 14 n''est pas premier et ses facteurs 2 et 7 ont déjà été testés).',
  'Tester jusqu''à 197/2 = 98 ou jusqu''à 197 lui-même. C''est inutilement long. Le critère √n est suffisant et beaucoup plus efficace.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Fraction irréductible via décomposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9340000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_nombres_premiers_decomposition',
  'Nombres premiers et décomposition en facteurs premiers',
  'Standard',
  'reponse_courte',
  'Rendez irréductible la fraction 84/126 en utilisant la décomposition en facteurs premiers.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2/3"]}'::jsonb,
  '84 = 2² × 3 × 7 et 126 = 2 × 3² × 7. PGCD(84, 126) = 2¹ × 3¹ × 7¹ = 42. Donc 84/126 = (84 ÷ 42) / (126 ÷ 42) = 2/3. Vérification : PGCD(2, 3) = 1, la fraction est bien irréductible. La décomposition en facteurs premiers est la méthode la plus sûre pour simplifier une fraction : elle garantit qu''on divise par le PGCD (le plus grand diviseur commun possible), donc qu''on obtient directement la fraction irréductible en une seule étape.',
  'Simplifier par étapes (÷2, puis ÷3, puis ÷7) sans être sûr d''avoir trouvé le PGCD. La décomposition en facteurs premiers donne directement le PGCD et évite les oublis.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
