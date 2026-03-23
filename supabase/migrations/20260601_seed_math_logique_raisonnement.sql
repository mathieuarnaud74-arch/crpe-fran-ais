-- Série : Logique et raisonnement — Contre-exemples et démonstrations
-- Niveau : Avancé | Accès : premium | Sous-domaine : nombres_calcul
-- 7 exercices (Q1-Q2 amorce, Q3-Q5 consolidation, Q6-Q7 approfondissement)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01c0000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_logique_raisonnement',
  'Logique et raisonnement — Contre-exemples et démonstrations', 'Avance', 'vrai_faux',
  'Pour prouver qu''une affirmation est fausse, un seul contre-exemple suffit.', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est un principe fondamental de la logique mathématique. Une affirmation universelle (« pour tout… ») est réfutée dès qu''on exhibe un seul cas qui ne la vérifie pas. En revanche, pour prouver qu''une affirmation est vraie pour tous les cas, il faut une démonstration générale : tester des exemples, même très nombreux, ne constitue jamais une preuve.',
  'Confondre la démarche de preuve et la démarche de réfutation : certains élèves pensent qu''il faut « beaucoup » de contre-exemples pour invalider une affirmation, alors qu''un seul suffit.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01c0000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_logique_raisonnement',
  'Logique et raisonnement — Contre-exemples et démonstrations', 'Avance', 'qcm',
  'L''affirmation « Tout nombre pair est divisible par 4 » est fausse. Quel contre-exemple le prouve ?', NULL,
  '[{"id":"a","label":"8"},{"id":"b","label":"6"},{"id":"c","label":"12"},{"id":"d","label":"16"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le nombre 6 est pair (divisible par 2) mais n''est pas divisible par 4 (6 ÷ 4 = 1,5). C''est donc un contre-exemple valide à l''affirmation « tout nombre pair est divisible par 4 ». Les autres propositions (8, 12 et 16) sont toutes divisibles par 4, elles ne contredisent donc pas l''affirmation. Pour invalider une proposition universelle, il faut trouver un élément qui satisfait l''hypothèse (être pair) mais pas la conclusion (être divisible par 4).',
  'Choisir un nombre qui est à la fois pair ET divisible par 4 (comme 8 ou 16), ce qui confirme l''affirmation au lieu de la réfuter. L''élève confond exemple et contre-exemple.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01c0000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_logique_raisonnement',
  'Logique et raisonnement — Contre-exemples et démonstrations', 'Avance', 'qcm',
  '« Si un quadrilatère a ses diagonales perpendiculaires, alors c''est un losange. » Cette affirmation est :', NULL,
  '[{"id":"a","label":"Toujours vraie"},{"id":"b","label":"Fausse — un cerf-volant a aussi des diagonales perpendiculaires"},{"id":"c","label":"Vraie seulement pour les carrés"},{"id":"d","label":"Indécidable"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un losange possède bien des diagonales perpendiculaires, mais cette propriété n''est pas suffisante pour caractériser un losange. Un cerf-volant (quadrilatère ayant un axe de symétrie passant par deux sommets opposés) possède également des diagonales perpendiculaires sans être un losange. Pour qu''un quadrilatère à diagonales perpendiculaires soit un losange, il faut en plus que les diagonales se coupent en leur milieu (propriété de parallélogramme). Cette distinction entre condition nécessaire et condition suffisante est essentielle en raisonnement mathématique.',
  'Croire que la propriété « diagonales perpendiculaires » est exclusive au losange, en oubliant d''autres quadrilatères comme le cerf-volant qui vérifient aussi cette propriété.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01c0000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_logique_raisonnement',
  'Logique et raisonnement — Contre-exemples et démonstrations', 'Avance', 'reponse_courte',
  'Démontrez que la somme de deux nombres impairs est toujours paire. Rédigez votre preuve en utilisant l''écriture algébrique.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2p+1","2(p+q+1)","nombre pair","somme paire","2k"]}'::jsonb,
  'Soit deux nombres impairs. Par définition, tout nombre impair s''écrit sous la forme 2p + 1, où p est un entier naturel. Notons nos deux nombres impairs : 2p + 1 et 2q + 1 (avec p et q entiers). Leur somme vaut : (2p + 1) + (2q + 1) = 2p + 2q + 2 = 2(p + q + 1). Or p + q + 1 est un entier, donc 2(p + q + 1) est un nombre pair. Conclusion : la somme de deux nombres impairs est toujours un nombre pair. Cette démonstration est complète car elle couvre tous les cas possibles grâce à l''écriture algébrique générale, contrairement à la vérification sur quelques exemples.',
  'Se contenter de vérifier sur des exemples numériques (3 + 5 = 8, 7 + 9 = 16…) sans produire de preuve algébrique générale. Tester des cas particuliers ne constitue pas une démonstration.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01c0000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_logique_raisonnement',
  'Logique et raisonnement — Contre-exemples et démonstrations', 'Avance', 'qcm',
  'Parmi ces raisonnements, lequel est une démonstration valide que √2 est irrationnel ?', NULL,
  '[{"id":"a","label":"On a calculé beaucoup de décimales et on n''a pas trouvé de période"},{"id":"b","label":"On suppose que √2 = p/q avec p, q entiers premiers entre eux et on aboutit à une contradiction"},{"id":"c","label":"√2 ≈ 1,414 et ce n''est pas une fraction"},{"id":"d","label":"Mon professeur me l''a dit"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La démonstration par l''absurde (ou raisonnement par contradiction) est la méthode valide. On suppose que √2 est rationnel, c''est-à-dire qu''il existe deux entiers p et q, premiers entre eux, tels que √2 = p/q. En élevant au carré : 2 = p²/q², soit p² = 2q². Donc p² est pair, ce qui implique que p est pair (p = 2k). En substituant : 4k² = 2q², soit q² = 2k², donc q est aussi pair. Contradiction : p et q seraient tous deux pairs, donc pas premiers entre eux. Les autres propositions ne sont pas des démonstrations : (a) est une observation empirique, (c) est une approximation, et (d) est un argument d''autorité.',
  'Confondre une observation empirique (« on n''a pas trouvé de période ») avec une preuve mathématique rigoureuse. En mathématiques, seul un raisonnement logique déductif constitue une démonstration.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01c0000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_logique_raisonnement',
  'Logique et raisonnement — Contre-exemples et démonstrations', 'Avance', 'reponse_courte',
  'Trouvez un contre-exemple à l''affirmation : « Si n² est pair, alors n est pair. » Si vous n''en trouvez pas, expliquez pourquoi.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["vrai","vraie","pas de contre-exemple","aucun contre-exemple","il n''y en a pas","impossible","l''affirmation est vraie","cette affirmation est vraie"]}'::jsonb,
  'Il n''existe pas de contre-exemple car l''affirmation est vraie ! Démonstration par contraposée : si n est impair, alors n = 2k + 1 pour un certain entier k, donc n² = (2k + 1)² = 4k² + 4k + 1 = 2(2k² + 2k) + 1, qui est impair. Par contraposée : si n² est pair, alors n est nécessairement pair. Cette question piège évalue la capacité à reconnaître qu''une affirmation vraie ne peut pas avoir de contre-exemple, et qu''il faut savoir le justifier au lieu de chercher indéfiniment.',
  'Chercher obstinément un contre-exemple sans se demander si l''affirmation pourrait être vraie. En mathématiques, il est aussi important de savoir reconnaître et prouver qu''une affirmation est vraie que de savoir la réfuter.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01c0000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_logique_raisonnement',
  'Logique et raisonnement — Contre-exemples et démonstrations', 'Avance', 'qcm',
  'Un élève teste que 41, 43, 47 sont premiers et conclut « tous les nombres impairs supérieurs à 40 sont premiers ». Quelle erreur de raisonnement commet-il ?', NULL,
  '[{"id":"a","label":"Généralisation abusive à partir de cas particuliers"},{"id":"b","label":"Erreur de calcul"},{"id":"c","label":"Confusion entre pair et impair"},{"id":"d","label":"Il a raison"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''élève commet une généralisation abusive (ou raisonnement inductif invalide). Il a vérifié l''affirmation sur trois cas particuliers (41, 43, 47) et en tire une conclusion universelle (« tous les nombres impairs supérieurs à 40 »). Or, 45 = 9 × 5 est impair, supérieur à 40, et n''est pas premier. De même, 49 = 7 × 7, 51 = 3 × 17, etc. En mathématiques, vérifier quelques cas ne constitue jamais une preuve. Ce type d''erreur est fréquent chez les élèves du primaire et constitue un point de vigilance didactique important pour l''enseignant.',
  'Ne pas identifier l''erreur logique et se concentrer uniquement sur la vérification numérique, sans comprendre que le problème fondamental est méthodologique : aucun nombre fini d''exemples ne peut prouver une affirmation universelle.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
