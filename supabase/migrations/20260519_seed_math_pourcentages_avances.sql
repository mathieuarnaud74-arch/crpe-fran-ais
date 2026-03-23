-- Migration: seed exercices Mathématiques — Pourcentages successifs (avancé, premium)
-- 7 exercices, progression amorce → consolidation → approfondissement

-- Q1 (QCM) — Amorce : augmentation puis baisse du même pourcentage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs', 'Avance', 'qcm',
  'Un article coûte 80 €. Son prix augmente de 25 %, puis baisse de 25 %. Quel est le prix final ?', NULL,
  '[{"id":"a","label":"80 €"},{"id":"b","label":"75 €"},{"id":"c","label":"85 €"},{"id":"d","label":"70 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Après une augmentation de 25 %, le prix devient 80 × 1,25 = 100 €. Après une baisse de 25 %, le prix devient 100 × 0,75 = 75 €. Le coefficient multiplicateur global est 1,25 × 0,75 = 0,9375, soit une baisse de 6,25 %. Augmenter puis diminuer du même pourcentage ne ramène jamais au prix initial.',
  'Croire qu''une augmentation de 25 % suivie d''une baisse de 25 % ramène au prix de départ (80 €). La baisse s''applique sur le prix majoré, pas sur le prix initial.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (Vrai/Faux) — Amorce : augmentation et diminution de 50 %
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs', 'Avance', 'vrai_faux',
  'Augmenter une quantité de 50 % puis la diminuer de 50 % revient à ne rien changer.', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Augmenter de 50 % revient à multiplier par 1,5. Diminuer de 50 % revient à multiplier par 0,5. Le coefficient global est 1,5 × 0,5 = 0,75, soit une diminution de 25 %. Par exemple, 100 € → 150 € → 75 €. On perd 25 % du montant initial.',
  'Penser que les deux variations s''annulent car elles portent sur le même pourcentage, en oubliant que la base de calcul change après la première opération.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (Réponse courte) — Consolidation : croissance annuelle composée sur 4 ans
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs', 'Avance', 'reponse_courte',
  'Le PIB d''un pays augmente de 3 % par an pendant 4 ans. Quelle est l''augmentation totale en pourcentage ? Arrondir au dixième.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12,6%","12,6 %","12.6%","12.6 %","12,6","12.6","12,55%","12,55 %","12,55"]}'::jsonb,
  'Le coefficient multiplicateur annuel est 1,03. Sur 4 ans, le coefficient global est 1,03⁴ = 1,12550881. L''augmentation totale est donc d''environ 12,6 %. On n''additionne pas les pourcentages (ce qui donnerait 12 %) car chaque année la hausse s''applique sur une base qui a déjà augmenté : c''est le principe des intérêts composés.',
  'Additionner les pourcentages : 3 % × 4 = 12 %. Cette méthode ignore l''effet de composition (les intérêts composés).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (QCM) — Consolidation : trois remises successives
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs', 'Avance', 'qcm',
  'Un commerçant applique trois remises successives : −10 %, −15 %, −5 %. Quel pourcentage unique de remise est équivalent à ces trois remises successives ?', NULL,
  '[{"id":"a","label":"30 %"},{"id":"b","label":"28 %"},{"id":"c","label":"27,325 %"},{"id":"d","label":"25 %"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Les coefficients multiplicateurs sont 0,90 ; 0,85 et 0,95. Le coefficient global est 0,90 × 0,85 × 0,95 = 0,72675. La remise globale est 1 − 0,72675 = 0,27325, soit 27,325 %. On ne peut pas additionner les remises directement.',
  'Additionner les remises : 10 + 15 + 5 = 30 %. Cette erreur surestime la remise car chaque réduction s''applique sur un prix déjà réduit.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (QCM) — Consolidation : placement avec hausse puis baisse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs', 'Avance', 'qcm',
  'Un placement rapporte 2 % la première année puis perd 3 % la deuxième année. Le capital initial était de 10 000 €. Quel est le capital après 2 ans ?', NULL,
  '[{"id":"a","label":"9 900 €"},{"id":"b","label":"9 894 €"},{"id":"c","label":"9 906 €"},{"id":"d","label":"10 000 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Après la 1re année : 10 000 × 1,02 = 10 200 €. Après la 2e année : 10 200 × 0,97 = 9 894 €. Le coefficient global est 1,02 × 0,97 = 0,9894, soit une perte de 1,06 %.',
  'Additionner les pourcentages (+2 % − 3 % = −1 %) et calculer 10 000 × 0,99 = 9 900 €. Cette méthode ignore que la baisse de 3 % s''applique sur 10 200 €, pas sur 10 000 €.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (Réponse courte) — Approfondissement : retrouver le prix initial après réduction de 20 %
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs', 'Avance', 'reponse_courte',
  'Un prix a été réduit de 20 %. De combien de pourcent faut-il augmenter le prix réduit pour retrouver le prix initial ?', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25%","25 %","25","25,0%","25,0 %","25,0"]}'::jsonb,
  'Si le prix initial est P, après une réduction de 20 %, le prix réduit est P × 0,8. Pour retrouver P, il faut multiplier par 1/0,8 = 1,25, soit une augmentation de 25 %. En effet : P × 0,8 × 1,25 = P. L''augmentation nécessaire est toujours supérieure à la baisse initiale.',
  'Répondre 20 %, en pensant qu''il suffit d''augmenter du même pourcentage. Or la hausse s''applique sur une base plus petite (le prix réduit), donc le pourcentage doit être plus grand.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (QCM) — Approfondissement : taux de croissance annuel constant (règle de 70)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0100000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_pourcentages_avances',
  'Proportionnalité avancée — Pourcentages successifs', 'Avance', 'qcm',
  'La population d''une ville double en 20 ans avec un taux de croissance annuel constant. Quel est approximativement ce taux annuel ?', NULL,
  '[{"id":"a","label":"5 %"},{"id":"b","label":"10 %"},{"id":"c","label":"3,5 %"},{"id":"d","label":"2 %"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'On cherche t tel que (1 + t)²⁰ = 2. La valeur exacte est t = 2^(1/20) − 1 ≈ 0,03526, soit environ 3,5 %. On peut aussi utiliser la « règle de 70 » : le temps de doublement est approximativement 70/t, donc t ≈ 70/20 = 3,5 %.',
  'Diviser 100 % par 20 ans = 5 % par an. Cette erreur revient à raisonner en croissance linéaire (additive) au lieu de croissance exponentielle (multiplicative).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
