-- Seed: Monnaie et budget — Calculs pratiques (7 exercices)
-- Subdomain: grandeurs_mesures | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Facile',
  'qcm',
  'Un client achète un article à 17,35 € et paie avec un billet de 20 €. Combien le caissier doit-il lui rendre ?',
  NULL,
  '[{"id":"a","label":"2,65 €"},{"id":"b","label":"3,65 €"},{"id":"c","label":"2,75 €"},{"id":"d","label":"3,35 €"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour calculer la monnaie à rendre, on effectue la soustraction : 20,00 − 17,35 = 2,65 €. On peut vérifier par addition : 17,35 + 2,65 = 20,00 €. Cette technique de « complément à » est fondamentale dans l''apprentissage du calcul et de la manipulation de la monnaie au cycle 2. Les programmes Éduscol insistent sur l''importance de travailler la monnaie comme support concret pour la compréhension des nombres décimaux.',
  'Erreur de retenue dans la soustraction des centimes : 100 − 35 = 65 centimes, puis 19 − 17 = 2, donc 2,65 € et non 3,65 €.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 2/3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Facile',
  'reponse_courte',
  'Un panier de courses contient : 1 baguette à 1,10 €, 1 litre de lait à 1,25 €, 6 œufs à 2,40 € et 1 kg de pommes à 3,15 €. Quel est le montant total de ces courses ? (Répondez en euros, ex : 7,90)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7,90","7.90","7,90 €","7.90 €"]}'::jsonb,
  'On additionne les prix : 1,10 + 1,25 + 2,40 + 3,15 = 7,90 €. Il est conseillé d''additionner d''abord les parties entières (1 + 1 + 2 + 3 = 7), puis les parties décimales (10 + 25 + 40 + 15 = 90 centimes), ce qui donne 7,90 €. Ce type de calcul entraîne l''élève à manipuler les nombres décimaux en contexte réel, conformément aux attendus Éduscol du cycle 3.',
  'Oublier d''aligner les virgules lors de l''addition, ce qui conduit à des erreurs sur les centimes.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 2/3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Facile',
  'qcm',
  'Dans un magasin, un même cahier coûte 2,50 € à l''unité. En supermarché, un lot de 4 cahiers identiques est vendu 8,80 €. Quelle affirmation est correcte ?',
  NULL,
  '[{"id":"a","label":"Le cahier est moins cher en supermarché (2,20 € l''unité)"},{"id":"b","label":"Le cahier est au même prix dans les deux magasins"},{"id":"c","label":"Le cahier est moins cher à l''unité dans le premier magasin"},{"id":"d","label":"On ne peut pas comparer sans connaître la qualité"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour comparer, on calcule le prix unitaire du lot : 8,80 ÷ 4 = 2,20 €. Le cahier à l''unité coûte 2,50 €. Donc 2,20 < 2,50 : le cahier est moins cher en supermarché. Comparer des prix unitaires est une compétence de proportionnalité du cycle 3 (Éduscol). Cette situation concrète permet de travailler la division d''un décimal par un entier et le raisonnement sur les grandeurs quotient (prix par unité).',
  'Ne pas penser à calculer le prix unitaire du lot et comparer directement 8,80 € avec 2,50 €, ce qui n''a pas de sens.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Facile',
  'vrai_faux',
  'Un article affiché à 80 € bénéficie d''une réduction de 15 %. Le prix après réduction est de 68 €.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'On calcule 15 % de 80 € : 80 × 15 / 100 = 12 €. Le prix réduit est : 80 − 12 = 68 €. L''affirmation est donc vraie. On peut aussi calculer directement : 80 × 0,85 = 68 €. Le calcul de pourcentages appliqué à des situations de remise commerciale est un attendu du cycle 3 et du CRPE. Les élèves doivent comprendre que « retirer 15 % » revient à multiplier par 0,85 (coefficient multiplicateur).',
  'Calculer 80 × 0,15 = 12 mais oublier de soustraire, ou confondre 15 % de 80 avec 80 − 15 = 65.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Facile',
  'qcm',
  'Une famille dispose d''un budget mensuel de 2 400 €. Elle consacre 35 % au loyer, 20 % à l''alimentation et 10 % aux transports. Quel montant reste-t-il pour les autres dépenses ?',
  NULL,
  '[{"id":"a","label":"720 €"},{"id":"b","label":"840 €"},{"id":"c","label":"960 €"},{"id":"d","label":"1 200 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les postes identifiés représentent : 35 + 20 + 10 = 65 % du budget. Il reste donc 100 − 65 = 35 % pour les autres dépenses. On calcule : 2 400 × 35 / 100 = 840 €. On peut vérifier : loyer = 840 €, alimentation = 480 €, transports = 240 €, reste = 840 €. Total : 840 + 480 + 240 + 840 = 2 400 €. Ce type de problème mobilise la proportionnalité et le calcul de pourcentages dans un contexte de gestion budgétaire, conformément aux programmes Éduscol.',
  'Calculer séparément chaque poste et oublier de soustraire du total, ou additionner les pourcentages de manière incorrecte.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Facile',
  'reponse_courte',
  'Un touriste français voyage aux États-Unis. Le taux de change est : 1 € = 1,08 $. Il souhaite acheter un objet à 27 $. Combien cela lui coûte-t-il en euros ? (Arrondissez au centime, ex : 25,00)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25","25,00","25.00","25,00 €","25.00 €"]}'::jsonb,
  'On cherche combien d''euros correspondent à 27 $ : on divise par le taux de change. 27 ÷ 1,08 = 25 €. Vérification : 25 × 1,08 = 27 $. La conversion de devises est une application directe de la proportionnalité. L''élève doit identifier s''il faut multiplier ou diviser selon le sens de la conversion. Éduscol recommande de travailler ces situations en lien avec des problèmes de proportionnalité au cycle 3.',
  'Multiplier au lieu de diviser : 27 × 1,08 = 29,16 au lieu de 27 ÷ 1,08 = 25. Confusion sur le sens de la conversion.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Facile',
  'qcm',
  'Léa dispose de 50 € pour acheter des fournitures scolaires. Elle veut acheter 3 cahiers à 4,50 € pièce, 2 stylos à 2,75 € pièce et 1 trousse à 15,50 €. Quelle affirmation est correcte ?',
  NULL,
  '[{"id":"a","label":"Elle peut tout acheter et il lui reste 15,50 €"},{"id":"b","label":"Elle peut tout acheter et il lui reste 8,50 €"},{"id":"c","label":"Elle peut tout acheter et il lui reste 21,00 €"},{"id":"d","label":"Il lui manque 1,50 € pour tout acheter"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Calculons le coût total étape par étape. Cahiers : 3 × 4,50 = 13,50 €. Stylos : 2 × 2,75 = 5,50 €. Trousse : 15,50 €. Total : 13,50 + 5,50 = 19,00, puis 19,00 + 15,50 = 34,50 €. Il reste donc : 50,00 − 34,50 = 15,50 €. Ce problème à plusieurs étapes combine multiplication et addition de nombres décimaux. Il mobilise la capacité à planifier un calcul et à vérifier la faisabilité d''un achat sous contrainte budgétaire, compétence clé en résolution de problèmes au cycle 3 (Éduscol). L''élève doit d''abord calculer chaque sous-total, puis additionner, puis comparer au budget.',
  'Se tromper dans la multiplication décimale (ex : 3 × 4,50 = 12,50 au lieu de 13,50) ou oublier l''un des articles dans le calcul total.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
