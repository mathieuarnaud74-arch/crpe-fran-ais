-- Sujet blanc CRPE — Épreuve de mathématiques n°5
-- 7 exercices, niveau Avancé, accès premium, sous-domaine nombres_calcul

-- Q1 — Calcul littéral (réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5', 'Avance', 'reponse_courte',
  'Développer et réduire l''expression suivante : (2x + 3)(x − 4).', NULL, NULL,
  '{"mode": "text", "acceptableAnswers": ["2x² - 5x - 12", "2x²-5x-12", "2x² − 5x − 12"]}',
  'On applique la double distributivité :\n(2x + 3)(x − 4) = 2x × x + 2x × (−4) + 3 × x + 3 × (−4)\n= 2x² − 8x + 3x − 12\n= 2x² − 5x − 12.',
  'Oublier le signe négatif lors de la distribution : 2x × (−4) = −8x et non 8x. Une autre erreur fréquente est d''oublier de réduire les termes semblables −8x + 3x.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Géométrie espace (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5', 'Avance', 'qcm',
  'Un cône de révolution a un rayon de base de 5 cm et une génératrice de 13 cm. Quelle est sa hauteur ?', NULL,
  '[{"id": "a", "label": "8 cm"}, {"id": "b", "label": "12 cm"}, {"id": "c", "label": "18 cm"}, {"id": "d", "label": "14 cm"}]',
  '{"mode": "single", "value": "b"}',
  'Dans un cône de révolution, la hauteur h, le rayon r et la génératrice g forment un triangle rectangle. On applique le théorème de Pythagore :\nh² + r² = g²\nh² + 5² = 13²\nh² + 25 = 169\nh² = 144\nh = 12 cm.',
  'Confondre la génératrice avec la hauteur, ou appliquer Pythagore de manière incorrecte en calculant h² = 13² + 5² au lieu de h² = 13² − 5².',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Probabilités (vrai/faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5', 'Avance', 'vrai_faux',
  'On lance un dé truqué. La probabilité d''obtenir le 6 est 1/3. La somme de toutes les probabilités est toujours égale à 1, donc les 5 autres faces se partagent une probabilité de 2/3.', NULL, NULL,
  '{"mode": "single", "value": "vrai"}',
  'Par définition, la somme des probabilités de tous les événements élémentaires d''une expérience aléatoire est toujours égale à 1. Si P(6) = 1/3, alors P(1) + P(2) + P(3) + P(4) + P(5) = 1 − 1/3 = 2/3. Cette propriété est vraie que le dé soit équilibré ou non.',
  'Penser que la somme des probabilités n''est égale à 1 que pour un dé équilibré, ou confondre « dé truqué » avec « les probabilités ne respectent plus les axiomes ».',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Proportionnalité (réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5', 'Avance', 'reponse_courte',
  'Une imprimante imprime 24 pages en 2 minutes. Combien de temps faudra-t-il pour imprimer un document de 156 pages ? Exprimer la réponse en minutes.', NULL, NULL,
  '{"mode": "text", "acceptableAnswers": ["13", "13 min", "13 minutes"]}',
  'On détermine le débit de l''imprimante :\n24 pages ÷ 2 minutes = 12 pages par minute.\nPour 156 pages : 156 ÷ 12 = 13 minutes.',
  'Erreur de calcul dans la division 156 ÷ 12, ou oublier de diviser 24 par 2 pour obtenir le débit unitaire et calculer directement 156 ÷ 24.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Grandeurs / Formule de Héron (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5', 'Avance', 'qcm',
  'Un terrain triangulaire a des côtés de 13 m, 14 m et 15 m. Calculez son aire en utilisant la formule de Héron.', NULL,
  '[{"id": "a", "label": "91 m²"}, {"id": "b", "label": "84 m²"}, {"id": "c", "label": "105 m²"}, {"id": "d", "label": "78 m²"}]',
  '{"mode": "single", "value": "b"}',
  'On calcule le demi-périmètre :\ns = (13 + 14 + 15) ÷ 2 = 42 ÷ 2 = 21\nOn applique la formule de Héron :\nA = √(s(s−a)(s−b)(s−c))\nA = √(21 × (21−13) × (21−14) × (21−15))\nA = √(21 × 8 × 7 × 6)\nA = √(7056)\nA = 84 m².',
  'Erreur dans le calcul du demi-périmètre, ou ne pas effectuer correctement le produit sous la racine : 21 × 8 × 7 × 6 = 7056.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Didactique (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5', 'Avance', 'qcm',
  'En cycle 2, les programmes Éduscol recommandent que les élèves apprennent à résoudre des problèmes en utilisant principalement :', NULL,
  '[{"id": "a", "label": "Des équations algébriques"}, {"id": "b", "label": "Des schémas, des manipulations et le calcul en ligne"}, {"id": "c", "label": "La calculatrice"}, {"id": "d", "label": "Des formules apprises par cœur"}]',
  '{"mode": "single", "value": "b"}',
  'En cycle 2, les programmes insistent sur la résolution de problèmes par des démarches de modélisation concrètes : schémas, manipulations de matériel, dessins et calcul en ligne. L''algèbre n''est pas au programme du cycle 2, et la calculatrice n''est qu''un outil complémentaire, pas la méthode principale.',
  'Choisir les équations algébriques, qui relèvent du cycle 4, ou la calculatrice, qui est un outil d''aide mais pas la méthode centrale recommandée en cycle 2.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Statistiques (réponse courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02d0000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_05',
  'Sujet blanc CRPE — Épreuve de mathématiques n°5', 'Avance', 'reponse_courte',
  'Les notes d''un groupe de 8 élèves sont : 8, 10, 12, 12, 13, 14, 15, 16. Calculez la moyenne, la médiane et l''étendue.', NULL, NULL,
  '{"mode": "text", "acceptableAnswers": ["12,5 ; 12,5 ; 8", "12.5 ; 12.5 ; 8", "moyenne 12,5", "moyenne 12.5", "moyenne = 12,5 ; médiane = 12,5 ; étendue = 8", "moyenne = 12.5 ; médiane = 12.5 ; étendue = 8"]}',
  'Moyenne : (8 + 10 + 12 + 12 + 13 + 14 + 15 + 16) ÷ 8 = 100 ÷ 8 = 12,5.\nMédiane : la série comporte 8 valeurs (nombre pair), la médiane est la moyenne des 4ᵉ et 5ᵉ valeurs ordonnées : (12 + 13) ÷ 2 = 12,5.\nÉtendue : valeur max − valeur min = 16 − 8 = 8.',
  'Pour la médiane, prendre seulement la 4ᵉ valeur (12) au lieu de faire la moyenne des 4ᵉ et 5ᵉ valeurs. Pour la moyenne, erreur de somme (oublier une valeur).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
