-- Migration: 10 exercices — Pourcentages en contexte réel
-- Série : math_pourcentages_contexte_reel (Mathématiques, nombres_calcul)
-- Calcul de pourcentage, de la valeur totale, appliquer un taux — problèmes contextualisés
-- UUID prefix: e5f60000

-- Q1 : Calculer 15% de 240 (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'qcm',
  'Dans un magasin, une veste est soldée à −15%. Elle coûtait 240 €. Quel est le montant de la remise ?',
  NULL,
  '[{"id":"a","label":"24 €"},{"id":"b","label":"30 €"},{"id":"c","label":"36 €"},{"id":"d","label":"40 €"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Pour calculer 15% de 240, on multiplie 240 par 0,15 (ce qui correspond à 15/100). Étape 1 : 10% de 240 = 240 × 0,10 = 24. Étape 2 : 5% de 240 = la moitié de 10% = 24 ÷ 2 = 12. Étape 3 : 15% = 10% + 5% = 24 + 12 = 36 €. La remise est donc de 36 €, et le prix soldé sera 240 − 36 = 204 €.',
  'L''erreur fréquente est de calculer 15% en multipliant 240 par 15 sans diviser par 100, obtenant 3 600 au lieu de 36. Il faut toujours convertir le pourcentage en décimal : 15% = 15/100 = 0,15, puis multiplier : 240 × 0,15 = 36.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 : Remise de 20% puis 10% n''est pas équivalente à 30% (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'vrai_faux',
  'Un commerçant applique d''abord une remise de 20%, puis une remise supplémentaire de 10% sur le nouveau prix. Cette double remise est équivalente à une remise globale de 30%.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"false"}'::jsonb,
  'Cette affirmation est FAUSSE. Les pourcentages successifs ne s''additionnent pas. Étape 1 : après −20%, il reste 80% du prix initial, soit un coefficient de 0,80. Étape 2 : on applique ensuite −10% sur ce nouveau prix, soit un coefficient de 0,90. Coefficient global : 0,80 × 0,90 = 0,72. La remise globale est donc 1 − 0,72 = 0,28 = 28%, et non 30%. Exemple concret : sur 100 €, après −20% → 80 €, puis −10% → 72 €. La remise totale est 28 €, soit 28%.',
  'L''erreur classique est d''additionner les taux : 20% + 10% = 30%. Or les pourcentages successifs se multiplient (leur facteur), pas s''additionnent. La deuxième remise s''applique sur un prix déjà réduit, ce qui donne un résultat inférieur à la somme des deux taux.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 : Retrouver la valeur totale à partir d''un pourcentage connu (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'qcm',
  'Dans une école, 30 élèves représentent 75% de l''effectif total d''une classe. Combien y a-t-il d''élèves au total dans cette classe ?',
  NULL,
  '[{"id":"a","label":"35 élèves"},{"id":"b","label":"38 élèves"},{"id":"c","label":"40 élèves"},{"id":"d","label":"45 élèves"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On cherche le total quand on connaît une partie et son pourcentage. Si 30 élèves = 75% du total, on écrit : total × 0,75 = 30. On divise les deux membres par 0,75 : total = 30 ÷ 0,75 = 40 élèves. Vérification : 75% de 40 = 0,75 × 40 = 30 ✓. Une autre approche : 75% = 30 élèves, donc 1% = 30 ÷ 75 = 0,4 élève, et 100% = 0,4 × 100 = 40 élèves.',
  'L''erreur fréquente est de calculer 75% de 30 au lieu de diviser par 0,75. Certains élèves confondent la direction du calcul : ils multiplient 30 par 0,75 = 22,5, ce qui serait le pourcentage d''un sous-groupe de 30, pas la valeur totale à retrouver.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 : Retrouver le prix initial après une remise de 20% (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'reponse_courte',
  'Un article est affiché 80 € après une remise de 20%. Quel était le prix initial de cet article, en euros ?',
  NULL,
  NULL,
  '{"mode":"exact_value","acceptableAnswers":["100","100 €","100€","100 euros"]}'::jsonb,
  'Le prix soldé représente 100% − 20% = 80% du prix initial. On écrit donc : prix_initial × 0,80 = 80. On divise par 0,80 : prix_initial = 80 ÷ 0,80 = 100 €. Vérification : 20% de 100 € = 20 € de remise → 100 − 20 = 80 € ✓. Attention : il ne faut pas ajouter 20% à 80 €, ce qui donnerait 96 €, et non 100 €.',
  'L''erreur typique est d''ajouter 20% au prix soldé : 80 + 20% de 80 = 80 + 16 = 96 €, au lieu de diviser par 0,80. Or 20% de 80 ≠ 20% du prix initial. La remise de 20% s''applique sur le prix initial, pas sur le prix soldé.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 : Augmenter de 25% puis baisser de 25% ne redonne pas le prix initial (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'vrai_faux',
  'Un produit voit son prix augmenter de 25%, puis le nouveau prix baisse de 25%. On retrouve alors le prix initial.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"false"}'::jsonb,
  'Cette affirmation est FAUSSE. Coefficient après +25% : × 1,25. Coefficient après −25% : × 0,75. Coefficient global : 1,25 × 0,75 = 0,9375. Le prix final représente 93,75% du prix initial, soit une perte de 6,25%. Exemple : un article à 100 € → après +25% : 125 € → après −25% de 125 € : 125 × 0,75 = 93,75 €. On ne retrouve pas 100 €. La hausse et la baisse s''annulent si elles portent sur la même base, ce qui n''est pas le cas ici.',
  'L''erreur intuitive est de croire que +25% puis −25% s''annulent, comme une addition et soustraction du même nombre. Or la baisse de 25% s''applique sur un montant plus grand (après la hausse), donc elle enlève davantage en valeur absolue qu''elle n''avait été ajoutée par la hausse.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 : Calculer quel pourcentage représente 45 sur 180 (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'qcm',
  'Lors d''une élection dans une école, 45 élèves sur 180 ont voté pour la même candidate. Quel pourcentage des votes cette candidate a-t-elle obtenu ?',
  NULL,
  '[{"id":"a","label":"20%"},{"id":"b","label":"25%"},{"id":"c","label":"30%"},{"id":"d","label":"35%"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour trouver quel pourcentage représente une partie par rapport à un total, on divise la partie par le total, puis on multiplie par 100. Calcul : (45 ÷ 180) × 100. Étape 1 : 45 ÷ 180 = 0,25. Étape 2 : 0,25 × 100 = 25%. La candidate a obtenu 25% des votes. Vérification par simplification : 45/180 = 1/4 = 0,25 = 25% ✓.',
  'L''erreur fréquente est d''inverser la division : calculer 180 ÷ 45 = 4, puis confondre ce résultat avec un pourcentage. Il faut bien diviser la partie (45) par le total (180), et non l''inverse.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 : Calculer un effectif après application d''un pourcentage (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'reponse_courte',
  'Dans une classe de 25 élèves, 40% sont des filles. Combien y a-t-il de garçons dans cette classe ?',
  NULL,
  NULL,
  '{"mode":"exact_value","acceptableAnswers":["15","15 garçons"]}'::jsonb,
  'Étape 1 : calculer le nombre de filles. 40% de 25 = 0,40 × 25 = 10 filles. Étape 2 : calculer le nombre de garçons par soustraction. Garçons = total − filles = 25 − 10 = 15 garçons. On peut également raisonner directement : les garçons représentent 100% − 40% = 60% de la classe. 60% de 25 = 0,60 × 25 = 15 garçons ✓.',
  'Une erreur courante est de calculer 40% de 25 = 10, puis de donner 10 comme réponse finale (nombre de filles) sans effectuer la soustraction pour trouver les garçons. L''énoncé demande bien le nombre de garçons, pas de filles.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 : Deux augmentations successives de 10% donnent +21% au total (QCM)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'qcm',
  'Le prix d''un abonnement augmente de 10% cette année, puis de 10% encore l''année suivante. Quelle est l''augmentation totale par rapport au prix initial ?',
  NULL,
  '[{"id":"a","label":"20%"},{"id":"b","label":"21%"},{"id":"c","label":"22%"},{"id":"d","label":"25%"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Deux augmentations successives de 10% se calculent en multipliant les coefficients multiplicateurs. Coefficient après la 1re augmentation : 1,10. Coefficient après la 2e augmentation : 1,10. Coefficient global : 1,10 × 1,10 = 1,21. L''augmentation totale est 1,21 − 1 = 0,21 = 21%. Exemple : un abonnement à 100 € → après +10% : 110 € → après +10% de 110 € : 110 × 1,10 = 121 €. Augmentation totale : 121 − 100 = 21 €, soit 21%.',
  'L''erreur la plus fréquente est d''additionner les deux taux : 10% + 10% = 20%. Or la deuxième hausse de 10% s''applique sur un montant déjà augmenté de 10%, ce qui génère un effet de capitalisation. Le vrai taux global est 21%, et non 20%.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 : 0,35 = 35% (vrai_faux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'vrai_faux',
  'Sur une étiquette nutritionnelle, il est indiqué que les lipides représentent 0,35 g pour 1 g de produit. Cela signifie que le produit contient 35% de lipides.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"true"}'::jsonb,
  'Cette affirmation est VRAIE. Pour convertir un nombre décimal en pourcentage, on le multiplie par 100 : 0,35 × 100 = 35%. Inversement, pour convertir un pourcentage en décimal, on le divise par 100 : 35% = 35 ÷ 100 = 0,35. Ici, 0,35 g de lipides pour 1 g de produit signifie bien que 35% de la masse du produit est constituée de lipides. La conversion entre décimal et pourcentage est fondamentale : p% = p/100 sous forme décimale.',
  'Certains élèves confondent 0,35 avec 0,35% (soit 0,0035 en décimal). Il faut bien distinguer : 0,35 exprimé en pourcentage donne 35%, tandis que 0,35% correspond au décimal 0,0035.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 : Calculer le reste d''un budget après affectation de 35% au loyer (reponse_courte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e5f60000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_pourcentages_contexte_reel',
  'Pourcentages en contexte réel',
  'Standard',
  'reponse_courte',
  'Un ménage dispose d''un budget mensuel de 1 200 €. Il consacre 35% de ce budget au loyer. Combien lui reste-t-il pour couvrir ses autres dépenses, en euros ?',
  NULL,
  NULL,
  '{"mode":"exact_value","acceptableAnswers":["780","780 €","780€","780 euros"]}'::jsonb,
  'Étape 1 : calculer le montant du loyer. 35% de 1 200 € = 0,35 × 1 200 = 420 €. Étape 2 : soustraire le loyer du budget total. Reste = 1 200 − 420 = 780 €. On peut aussi raisonner directement : si 35% va au loyer, il reste 100% − 35% = 65% pour les autres dépenses. 65% de 1 200 € = 0,65 × 1 200 = 780 € ✓.',
  'Une erreur fréquente est de calculer 35% de 1 200 = 420, puis de donner 420 comme réponse (montant du loyer) au lieu de 780 (le reste). L''énoncé demande bien ce qui reste après le loyer, il faut donc effectuer la soustraction 1 200 − 420 = 780 €.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
