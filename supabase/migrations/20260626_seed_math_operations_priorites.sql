-- Seed: Priorités opératoires et expressions complexes (7 exercices, Difficile, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_operations_priorites',
  'Priorités opératoires et expressions complexes', 'Difficile', 'qcm',
  'Quel est le résultat de l''expression : 5 + 3 × 2 ?',
  NULL,
  '[{"id": "a", "label": "16"}, {"id": "b", "label": "11"}, {"id": "c", "label": "10"}, {"id": "d", "label": "13"}]',
  '{"mode": "single", "value": "b"}',
  'Le résultat est 11. En effet, la multiplication est prioritaire sur l''addition : on calcule d''abord 3 × 2 = 6, puis 5 + 6 = 11. Le distracteur 16 correspond à l''erreur de calculer de gauche à droite sans respecter les priorités : (5 + 3) × 2 = 16. Cette confusion est l''erreur la plus fréquente chez les élèves et constitue un obstacle majeur identifié en didactique des mathématiques. La convention de priorité des opérations stipule que la multiplication et la division sont effectuées avant l''addition et la soustraction, sauf si des parenthèses modifient cet ordre. Cette convention n''est pas arbitraire : elle garantit la cohérence de l''écriture mathématique, notamment pour la distributivité.',
  'Calculer de gauche à droite sans respecter la priorité de la multiplication sur l''addition : (5 + 3) × 2 = 16 au lieu de 5 + (3 × 2) = 11.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_operations_priorites',
  'Priorités opératoires et expressions complexes', 'Difficile', 'vrai_faux',
  'Dans l''expression 24 ÷ 6 ÷ 2, on peut d''abord calculer 6 ÷ 2 = 3, puis 24 ÷ 3 = 8.',
  NULL,
  NULL,
  '{"mode": "single", "value": "faux"}',
  'Cette affirmation est fausse. La division n''est pas associative : l''ordre des opérations de même priorité se fait de gauche à droite. Ainsi, 24 ÷ 6 ÷ 2 = (24 ÷ 6) ÷ 2 = 4 ÷ 2 = 2. Si on calcule 6 ÷ 2 d''abord, on obtient 24 ÷ 3 = 8, ce qui est incorrect. La non-associativité de la division (et de la soustraction) est une source d''erreurs fréquente. Pour les opérations de même niveau de priorité, la convention est de calculer de gauche à droite. On peut réécrire l''expression avec des fractions pour lever l''ambiguïté : 24 ÷ 6 ÷ 2 = (24/6)/2 = 4/2 = 2.',
  'Penser que l''on peut regrouper les divisions dans n''importe quel ordre parce que « ce sont des divisions ». La division n''est ni commutative ni associative.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_operations_priorites',
  'Priorités opératoires et expressions complexes', 'Difficile', 'reponse_courte',
  'Calculez : 4 × (7 − 3) + 2³',
  NULL,
  NULL,
  '{"mode": "text", "acceptableAnswers": ["24"]}',
  'On applique les priorités opératoires dans l''ordre : 1) Parenthèses : 7 − 3 = 4. 2) Exposant : 2³ = 8. 3) Multiplication : 4 × 4 = 16. 4) Addition : 16 + 8 = 24. Le résultat est 24. L''ordre des priorités est : parenthèses → exposants → multiplications et divisions (de gauche à droite) → additions et soustractions (de gauche à droite). Cet ordre est parfois résumé par l''acronyme PEMDAS (Parentheses, Exponents, Multiplication/Division, Addition/Subtraction) ou BODMAS dans les pays anglophones. Au CRPE, la maîtrise de cet ordre est indispensable pour les expressions numériques complexes.',
  'Oublier la puissance (calculer 4 × 4 + 2 = 18 sans élever 2 au cube) ou calculer (4 × 4 + 2)³ en englobant toute l''expression dans la puissance.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_operations_priorites',
  'Priorités opératoires et expressions complexes', 'Difficile', 'qcm',
  'Calculez : 3 + 5 × [4 − (2 + 1)]',
  NULL,
  '[{"id": "a", "label": "8"}, {"id": "b", "label": "24"}, {"id": "c", "label": "18"}, {"id": "d", "label": "6"}]',
  '{"mode": "single", "value": "a"}',
  'On calcule en commençant par les parenthèses les plus intérieures : 1) Parenthèses intérieures : 2 + 1 = 3. 2) Crochets : 4 − 3 = 1. 3) Multiplication : 5 × 1 = 5. 4) Addition : 3 + 5 = 8. Le résultat est 8. Le distracteur 24 pourrait provenir de l''erreur 3 + 5 × 4 + 1 = 3 + 20 + 1 = 24 en ignorant les parenthèses et crochets. Le distracteur 18 viendrait de 3 + 5 × (4 − 1) = 3 + 15 = 18, en simplifiant mal les crochets. Le distracteur 6 viendrait d''une erreur de calcul sur l''expression. La clé est de traiter les parenthèses emboîtées de l''intérieur vers l''extérieur.',
  'Ne pas traiter les parenthèses emboîtées de l''intérieur vers l''extérieur, ou ignorer les crochets en ne traitant que les parenthèses rondes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_operations_priorites',
  'Priorités opératoires et expressions complexes', 'Difficile', 'qcm',
  'Un élève calcule 8 − 3 + 2 et trouve 3. Quelle erreur a-t-il commise ?',
  NULL,
  '[{"id": "a", "label": "Il a oublié les priorités opératoires"}, {"id": "b", "label": "Il a calculé 3 + 2 = 5 d''abord, puis 8 − 5 = 3, traitant l''addition comme prioritaire sur la soustraction"}, {"id": "c", "label": "Il a confondu addition et soustraction"}, {"id": "d", "label": "Il ne maîtrise pas les tables d''addition"}]',
  '{"mode": "single", "value": "b"}',
  'L''élève a effectué 8 − (3 + 2) = 8 − 5 = 3, au lieu de (8 − 3) + 2 = 5 + 2 = 7. Son erreur est de considérer que l''addition est prioritaire sur la soustraction. Or, l''addition et la soustraction ont le même niveau de priorité et s''effectuent de gauche à droite. Cette erreur est très fréquente et provient d''une mauvaise interprétation de l''acronyme « PEMDAS » : certains élèves croient que M est prioritaire sur D, et A sur S, alors qu''en réalité M et D sont au même niveau, et A et S sont au même niveau. Le résultat correct est 7. Cette erreur d''analyse est un classique des épreuves didactiques du CRPE.',
  'Penser que l''addition a priorité sur la soustraction (ou la multiplication sur la division), alors que ces opérations sont au même niveau et se traitent de gauche à droite.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_operations_priorites',
  'Priorités opératoires et expressions complexes', 'Difficile', 'reponse_courte',
  'Utilisez la distributivité pour calculer mentalement : 17 × 99.',
  NULL,
  NULL,
  '{"mode": "text", "acceptableAnswers": ["1683"]}',
  'On utilise la distributivité de la multiplication par rapport à la soustraction : 17 × 99 = 17 × (100 − 1) = 17 × 100 − 17 × 1 = 1700 − 17 = 1683. La distributivité, propriété fondamentale des opérations, permet de décomposer un calcul complexe en opérations plus simples. Elle s''énonce : a × (b + c) = a × b + a × c et a × (b − c) = a × b − a × c. Au CRPE, la maîtrise de la distributivité est essentielle à la fois pour le calcul mental (astuce du « × 99 = × 100 − × 1 ») et pour la factorisation/développement d''expressions algébriques. En classe, cette propriété est introduite dès le cycle 3 à travers le calcul mental et la décomposition de rectangles en aires.',
  'Tenter de calculer 17 × 99 directement en posant la multiplication, ou utiliser la distributivité de manière incorrecte : 17 × 99 = 17 × 100 + 17 = 1717 (erreur de signe).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7040000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_operations_priorites',
  'Priorités opératoires et expressions complexes', 'Difficile', 'qcm',
  'Quelle expression mathématique traduit correctement l''énoncé suivant : « Le triple de la somme de 8 et de 5 » ?',
  NULL,
  '[{"id": "a", "label": "3 × 8 + 5"}, {"id": "b", "label": "3 + 8 × 5"}, {"id": "c", "label": "3 × (8 + 5)"}, {"id": "d", "label": "(3 × 8) + 5"}]',
  '{"mode": "single", "value": "c"}',
  'L''expression correcte est 3 × (8 + 5) = 3 × 13 = 39. L''énoncé dit « le triple DE la somme de 8 et 5 » : on calcule d''abord la somme (8 + 5 = 13), puis on prend son triple (3 × 13 = 39). Les parenthèses sont indispensables car sans elles, 3 × 8 + 5 = 24 + 5 = 29 (le triple de 8, auquel on ajoute 5). Le distracteur (a) correspond à « le triple de 8, augmenté de 5 ». Le distracteur (d) correspond au même calcul que (a) avec des parenthèses superflues. La traduction d''un énoncé en langage courant vers une expression mathématique est une compétence transversale fondamentale, qui mobilise la compréhension des priorités opératoires et du rôle des parenthèses.',
  'Écrire 3 × 8 + 5 = 29 en oubliant les parenthèses, ce qui revient à calculer « le triple de 8, plus 5 » au lieu du « triple de la somme de 8 et 5 ».',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
