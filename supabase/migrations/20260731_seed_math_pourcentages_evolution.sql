-- Seed: Pourcentages d'évolution — Hausse, baisse et taux global (7 exercices)
-- Subdomain: nombres_calcul | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8080000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global', 'Difficile',
  'qcm',
  'Un article coûtait 80 €. Son prix augmente de 15 %. Quel est le nouveau prix ?',
  NULL,
  '[{"id":"a","label":"92 €"},{"id":"b","label":"95 €"},{"id":"c","label":"93 €"},{"id":"d","label":"12 €"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour calculer un prix après une augmentation de 15 %, on peut procéder de deux manières. Méthode additive : on calcule le montant de l''augmentation (15 % de 80 = 0,15 × 80 = 12 €), puis on l''ajoute au prix initial (80 + 12 = 92 €). Méthode multiplicative (plus efficace) : on multiplie le prix initial par le coefficient multiplicateur 1 + 15/100 = 1,15. Ainsi : 80 × 1,15 = 92 €. Le coefficient multiplicateur associé à une hausse de t % est toujours 1 + t/100. Cette méthode est préférable car elle se généralise facilement aux évolutions successives.',
  'Calculer uniquement le montant de l''augmentation (12 €) sans l''ajouter au prix initial, ou se tromper dans le calcul de 15 % de 80.',
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
  'f8080000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global', 'Difficile',
  'reponse_courte',
  'Un produit valait 250 €. Après une baisse de 20 %, quel est son nouveau prix ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["200 €","200€","200"]}'::jsonb,
  'Une baisse de 20 % correspond à un coefficient multiplicateur de 1 − 20/100 = 1 − 0,20 = 0,80. Le nouveau prix est donc : 250 × 0,80 = 200 €. On peut vérifier : 20 % de 250 = 0,20 × 250 = 50 €, et 250 − 50 = 200 €. Attention : le coefficient multiplicateur d''une baisse de t % est toujours 1 − t/100, jamais t/100. Baisser de 20 % revient à conserver 80 % du prix initial.',
  'Calculer 250 × 0,20 = 50 et donner 50 € comme réponse (c''est le montant de la réduction, pas le nouveau prix).',
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
  'f8080000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global', 'Difficile',
  'qcm',
  'Après une augmentation de 25 %, un article coûte désormais 150 €. Quel était son prix initial ?',
  NULL,
  '[{"id":"a","label":"112,50 €"},{"id":"b","label":"120 €"},{"id":"c","label":"125 €"},{"id":"d","label":"187,50 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour retrouver la valeur initiale avant une hausse de 25 %, on utilise le coefficient multiplicateur inverse. La hausse de 25 % correspond au coefficient 1,25. Le prix final est : prix initial × 1,25 = 150 €. Donc : prix initial = 150 ÷ 1,25 = 120 €. Vérification : 120 × 1,25 = 150 €. Il ne faut surtout pas calculer 150 − 25 % de 150 = 150 − 37,50 = 112,50 €. Cette erreur classique vient du fait que 25 % du prix final n''est pas égal à 25 % du prix initial. Le raisonnement correct consiste à diviser par le coefficient multiplicateur, pas à soustraire le pourcentage du prix final.',
  'Calculer 150 − 25 % de 150 = 112,50 €, en appliquant la réduction sur le prix final au lieu de diviser par le coefficient multiplicateur.',
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
  'f8080000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global', 'Difficile',
  'vrai_faux',
  'Un prix augmente de 10 % puis diminue de 10 %. Le prix final est égal au prix initial.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Les pourcentages d''évolution successifs ne sont PAS additifs. Prenons un exemple : un article à 100 €. Après une hausse de 10 %, il coûte 100 × 1,10 = 110 €. Après une baisse de 10 %, il coûte 110 × 0,90 = 99 €. Le prix final (99 €) est inférieur au prix initial (100 €). Le coefficient multiplicateur global est 1,10 × 0,90 = 0,99, soit une baisse globale de 1 %. Ce phénomène s''explique par le fait que la baisse de 10 % s''applique à un montant plus élevé (110 €) que celui sur lequel la hausse s''était appliquée (100 €). La non-additivité des pourcentages successifs est un point fondamental du programme de mathématiques.',
  'Croire que +10 % puis −10 % s''annulent. C''est l''erreur la plus fréquente sur les pourcentages : les évolutions successives se composent par multiplication des coefficients, pas par addition des taux.',
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
  'f8080000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global', 'Difficile',
  'qcm',
  'Un prix subit une hausse de 20 % suivie d''une baisse de 30 %. Quel est le taux d''évolution global ?',
  NULL,
  '[{"id":"a","label":"Baisse de 10 %"},{"id":"b","label":"Baisse de 16 %"},{"id":"c","label":"Hausse de 10 %"},{"id":"d","label":"Baisse de 50 %"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour calculer le taux d''évolution global de deux évolutions successives, on multiplie les coefficients multiplicateurs. Le coefficient de la hausse de 20 % est 1,20. Le coefficient de la baisse de 30 % est 0,70. Le coefficient multiplicateur global est : 1,20 × 0,70 = 0,84. Un coefficient de 0,84 correspond à une baisse de 1 − 0,84 = 0,16, soit 16 %. Vérification avec un prix de 100 € : après +20 %, on obtient 120 € ; après −30 %, on obtient 120 × 0,70 = 84 €. L''évolution globale est bien de 100 à 84, soit −16 %. L''erreur classique est d''additionner les taux : +20 % − 30 % = −10 %, ce qui est incorrect.',
  'Additionner les pourcentages (+20 − 30 = −10 %) au lieu de multiplier les coefficients multiplicateurs. Les pourcentages successifs ne s''additionnent jamais.',
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
  'f8080000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global', 'Difficile',
  'reponse_courte',
  'Quel est le coefficient multiplicateur associé à une hausse de 35 % ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1,35","1.35"]}'::jsonb,
  'Le coefficient multiplicateur associé à une hausse de t % est donné par la formule : CM = 1 + t/100. Pour une hausse de 35 % : CM = 1 + 35/100 = 1 + 0,35 = 1,35. Ce coefficient permet de calculer directement la valeur finale : valeur finale = valeur initiale × 1,35. Par exemple, si un produit coûte 200 €, après une hausse de 35 %, il coûtera 200 × 1,35 = 270 €. Le coefficient multiplicateur est l''outil central pour traiter les problèmes de pourcentages d''évolution, car il permet de composer facilement des évolutions successives par simple multiplication.',
  'Écrire 0,35 au lieu de 1,35. Le coefficient 0,35 représente 35 % de la valeur, pas la valeur après une hausse de 35 %.',
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
  'f8080000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_pourcentages_evolution',
  'Pourcentages d''évolution — Hausse, baisse et taux global', 'Difficile',
  'qcm',
  'Lors des soldes, un magasin applique une première démarque de 30 %, puis une deuxième démarque de 20 % sur le prix déjà soldé. Un client affirme qu''il a bénéficié d''une réduction totale de 50 %. A-t-il raison ?',
  NULL,
  '[{"id":"a","label":"Oui, 30 % + 20 % = 50 % de réduction au total"},{"id":"b","label":"Non, la réduction totale est de 44 %"},{"id":"c","label":"Non, la réduction totale est de 56 %"},{"id":"d","label":"Non, la réduction totale est de 38 %"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le client a tort. Les pourcentages de réduction successifs ne s''additionnent pas. Le coefficient multiplicateur de la première démarque (−30 %) est 0,70. Le coefficient de la deuxième démarque (−20 %) est 0,80. Le coefficient global est : 0,70 × 0,80 = 0,56. Un coefficient de 0,56 signifie que le client paie 56 % du prix initial, soit une réduction globale de 1 − 0,56 = 0,44 = 44 %. Exemple concret : un article à 100 € passe à 70 € après la première démarque, puis à 70 × 0,80 = 56 € après la deuxième. La réduction totale est de 44 €, soit 44 % — et non 50 %. Ce problème de soldes successives est un classique du CRPE.',
  'Additionner les deux pourcentages de réduction (30 % + 20 % = 50 %). C''est le piège classique : la deuxième réduction s''applique au prix déjà réduit, pas au prix initial.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
