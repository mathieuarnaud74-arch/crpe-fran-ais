-- Migration: 10 exercices — Priorité des opérations et conventions de calcul
-- Série : math_priorite_operations (Mathématiques, nombres_calcul)
-- Parenthèses, multiplication/division avant addition/soustraction, gauche à droite
-- UUID prefix: 8c390000

-- Q1 — QCM — Calculer 2 + 3 × 4
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'qcm',
  'Quelle est la valeur de l''expression 2 + 3 × 4 ?',
  NULL,
  '[{"id":"a","label":"20"},{"id":"b","label":"14"},{"id":"c","label":"24"},{"id":"d","label":"9"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les règles de priorité des opérations imposent de multiplier avant d''additionner : 3 × 4 = 12, puis 2 + 12 = 14. Si l''on voulait additionner en premier, il faudrait écrire (2 + 3) × 4 = 5 × 4 = 20. Sans parenthèses, la multiplication prime sur l''addition. Cette convention est universelle en mathématiques.',
  'Calculer de gauche à droite sans tenir compte des priorités : (2 + 3) × 4 = 20. L''erreur de calcul de gauche à droite est la plus fréquente chez les élèves. Retenir : × et ÷ avant + et −, sauf si des parenthèses imposent un autre ordre.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Les parenthèses modifient l'ordre de calcul
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans l''expression 5 × (3 + 2), les parenthèses obligent à effectuer l''addition avant la multiplication.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Les parenthèses indiquent toujours la priorité absolue : on calcule d''abord ce qui est à l''intérieur des parenthèses, puis on effectue les opérations restantes selon l''ordre habituel. Ici : 3 + 2 = 5, puis 5 × 5 = 25. Sans parenthèses, 5 × 3 + 2 = 15 + 2 = 17. Les parenthèses ont donc changé le résultat.',
  'Croire que la multiplication est toujours effectuée en premier, même avec des parenthèses. Les parenthèses constituent la priorité absolue : tout ce qui est entre parenthèses est calculé en premier.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Calculer 20 - 4 × 3 + 1
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'qcm',
  'Quelle est la valeur de l''expression 20 − 4 × 3 + 1 ?',
  NULL,
  '[{"id":"a","label":"49"},{"id":"b","label":"9"},{"id":"c","label":"53"},{"id":"d","label":"5"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'On effectue d''abord la multiplication : 4 × 3 = 12. Puis on traite les additions et soustractions de gauche à droite : 20 − 12 + 1 = 8 + 1 = 9. Il ne faut pas calculer 20 − 4 = 16, puis 16 × 3 = 48, puis 48 + 1 = 49 (erreur de gauche à droite), ni traiter la soustraction et l''addition de droite à gauche.',
  'Calculer de gauche à droite en ignorant la priorité de ×. (20 − 4) × 3 + 1 = 16 × 3 + 1 = 48 + 1 = 49 est le résultat de l''erreur la plus fréquente. La multiplication doit être effectuée en premier.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Calculer (2 + 3) × (6 - 2)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'qcm',
  'Quelle est la valeur de l''expression (2 + 3) × (6 − 2) ?',
  NULL,
  '[{"id":"a","label":"14"},{"id":"b","label":"24"},{"id":"c","label":"20"},{"id":"d","label":"16"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On calcule d''abord chaque parenthèse : (2 + 3) = 5 et (6 − 2) = 4, puis on multiplie : 5 × 4 = 20. Les deux paires de parenthèses ont la même priorité ; on peut les calculer dans l''ordre que l''on veut avant d''effectuer la multiplication.',
  'Confondre 2 + 3 × 6 − 2 (sans parenthèses = 2 + 18 − 2 = 18) avec l''expression entre parenthèses. Les parenthèses changent fondamentalement la valeur de l''expression.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Vrai/Faux — Division et multiplication : même priorité, gauche à droite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans l''expression 12 ÷ 4 × 3, la division et la multiplication ont la même priorité ; on les effectue de gauche à droite.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Multiplication et division ont la même priorité. Quand deux opérations de même niveau se succèdent, on les effectue de gauche à droite : 12 ÷ 4 = 3, puis 3 × 3 = 9. Si on calculait de droite à gauche (4 × 3 = 12, puis 12 ÷ 12 = 1), on obtiendrait un résultat différent. La règle « de gauche à droite » s''applique lorsque les opérations ont la même priorité.',
  'Effectuer la multiplication avant la division parce qu''on croit que la multiplication prime systématiquement. × et ÷ ont la même priorité : seul l''ordre gauche → droite départage.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Calculer 12 ÷ 4 × 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'qcm',
  'Quelle est la valeur de l''expression 12 ÷ 4 × 3 ?',
  NULL,
  '[{"id":"a","label":"1"},{"id":"b","label":"9"},{"id":"c","label":"36"},{"id":"d","label":"16"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Même priorité pour ÷ et × ; on calcule de gauche à droite : 12 ÷ 4 = 3, puis 3 × 3 = 9. L''erreur classique consiste à calculer d''abord la multiplication (4 × 3 = 12) puis la division (12 ÷ 12 = 1), ce qui donne le résultat (a). Le résultat correct est bien 9.',
  'Effectuer 4 × 3 en premier : 12 ÷ (4 × 3) = 12 ÷ 12 = 1. Sans parenthèses, × et ÷ ont la même priorité et on applique la règle gauche → droite.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — 8 - (3 - 1) ≠ 8 - 3 - 1
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? L''expression 8 − (3 − 1) a la même valeur que 8 − 3 − 1.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. 8 − (3 − 1) = 8 − 2 = 6. Mais 8 − 3 − 1 = 5 − 1 = 4. Les parenthèses jouent un rôle crucial : en les supprimant, la soustraction de 1 s''applique à un terme différent. Algébriquement : 8 − (3 − 1) = 8 − 3 + 1 = 6, car on distribue le signe moins devant la parenthèse.',
  'Croire que les parenthèses sont neutres et peuvent être supprimées librement. Devant une parenthèse précédée d''un signe −, supprimer la parenthèse exige d''inverser les signes à l''intérieur.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Calculer 3 + 2² × 4
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'qcm',
  'Quelle est la valeur de l''expression 3 + 2² × 4 (en appliquant les priorités opératoires habituelles : puissance, puis × et ÷, puis + et −) ?',
  NULL,
  '[{"id":"a","label":"100"},{"id":"b","label":"19"},{"id":"c","label":"44"},{"id":"d","label":"7"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ordre de priorité : 1) puissance, 2) × et ÷, 3) + et −. On calcule d''abord 2² = 4, puis 4 × 4 = 16, puis 3 + 16 = 19. La puissance (ou exposant) est l''opération de plus haute priorité après les parenthèses.',
  'Calculer (3 + 2)² × 4 = 25 × 4 = 100 (en regroupant 3 + 2 avant la puissance). Sans parenthèses, la puissance ne s''applique qu''à 2 (la base immédiate), pas à l''expression entière.',
  'valide',
  'CRPE Mathématiques',
  'premium',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Calculer 100 - 4 × (5 + 3) × 2
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'reponse_courte',
  'Calcule la valeur de l''expression 100 − 4 × (5 + 3) × 2.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["36"]}'::jsonb,
  'On calcule la parenthèse en premier : (5 + 3) = 8. Puis les multiplications de gauche à droite : 4 × 8 = 32, puis 32 × 2 = 64. Enfin la soustraction : 100 − 64 = 36.',
  'Oublier de calculer la parenthèse en premier, ou traiter les multiplications dans le mauvais ordre. Résumé : parenthèses d''abord, puis × et ÷ de gauche à droite, enfin + et − de gauche à droite.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Identifier l'erreur d'un élève
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '8c390000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_priorite_operations',
  'Priorité des opérations et conventions de calcul',
  'Standard',
  'qcm',
  'Un élève calcule 6 + 4 ÷ 2 et obtient 5. Quelle erreur a-t-il commise ?',
  NULL,
  '[{"id":"a","label":"Il a calculé (6 + 4) ÷ 2 = 10 ÷ 2 = 5, en effectuant l''addition avant la division (de gauche à droite sans respecter les priorités)"},{"id":"b","label":"Il a effectué la multiplication avant la division"},{"id":"c","label":"Il a oublié d''ajouter les parenthèses imposées par la règle"},{"id":"d","label":"Il a correctement calculé : 6 + 4 ÷ 2 = 5"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''expression correcte est : 6 + (4 ÷ 2) = 6 + 2 = 8. La division prime sur l''addition, donc on divise d''abord 4 ÷ 2 = 2, puis 6 + 2 = 8. L''élève a calculé de gauche à droite sans respecter la priorité : (6 + 4) ÷ 2 = 10 ÷ 2 = 5. C''est l''erreur la plus fréquente des élèves face aux priorités opératoires.',
  'Accepter la réponse 5 comme correcte (proposition d). Le résultat correct est 8. L''erreur vient de l''addition avant la division — ce qui aurait nécessité des parenthèses : (6 + 4) ÷ 2 = 5 serait correct avec parenthèses, mais l''expression écrite sans parenthèses vaut 8.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
