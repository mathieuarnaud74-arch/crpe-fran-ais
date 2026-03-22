-- Seed: Nombres décimaux — Opérations posées et pièges (7 exercices, Facile, free)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges', 'Facile',
  'qcm',
  'Calculer 3,5 + 2,41.',
  NULL,
  '[{"id":"a","label":"5,46"},{"id":"b","label":"5,91"},{"id":"c","label":"5,81"},{"id":"d","label":"2,76"}]',
  '{"mode":"single","value":"b"}',
  'Pour additionner des nombres décimaux, on aligne les virgules. On complète éventuellement par des zéros : 3,50 + 2,41. Unités : 0 + 1 = 1. Dixièmes : 5 + 4 = 9. Centièmes : 0 + 1 → on obtient donc 5,91. L''erreur 5,46 provient d''un mauvais alignement des chiffres (on additionne 5 et 4 dans la même colonne sans respecter la position de la virgule).',
  'Ne pas aligner les virgules et additionner les chiffres décimaux sans respecter leur rang (dixièmes avec centièmes).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges', 'Facile',
  'vrai_faux',
  '0,1 × 0,1 = 0,01.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}',
  'Pour multiplier deux nombres décimaux, on compte le nombre total de chiffres après la virgule dans les deux facteurs. 0,1 a 1 chiffre après la virgule, et 0,1 également. Le produit aura donc 1 + 1 = 2 chiffres après la virgule. On calcule 1 × 1 = 1, puis on place la virgule pour obtenir 2 décimales : 0,01. L''affirmation est donc vraie.',
  'Penser que 0,1 × 0,1 = 0,1 en oubliant de cumuler les décimales des deux facteurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges', 'Facile',
  'reponse_courte',
  'Calculer 7,2 × 0,3.',
  NULL,
  NULL,
  '{"mode":"exact","acceptableAnswers":["2,16"]}',
  'On effectue d''abord la multiplication sans tenir compte des virgules : 72 × 3 = 216. Ensuite, on compte le nombre total de chiffres après la virgule : 7,2 a 1 décimale et 0,3 a 1 décimale, soit 1 + 1 = 2 décimales au total. On place la virgule dans le résultat : 2,16.',
  'Oublier de compter les décimales des deux facteurs et écrire 21,6 au lieu de 2,16.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges', 'Facile',
  'qcm',
  'Un élève calcule 4,5 − 2,38 et trouve 2,17. A-t-il raison ?',
  NULL,
  '[{"id":"a","label":"Oui, 2,17 est correct"},{"id":"b","label":"Non, le résultat est 2,12"},{"id":"c","label":"Non, le résultat est 2,22"},{"id":"d","label":"Non, le résultat est 1,12"}]',
  '{"mode":"single","value":"b"}',
  'On écrit 4,5 sous la forme 4,50 pour aligner les décimales. 4,50 − 2,38 : centièmes : 0 − 8, on ne peut pas, on emprunte 1 dixième → 10 − 8 = 2. Dixièmes : 4 (après emprunt) − 3 = 1. Unités : 4 − 2 = 2. Résultat : 2,12. L''élève a trouvé 2,17 car il a soustrait 5 − 8 comme 8 − 5 = 3 aux centièmes sans effectuer la retenue.',
  'Soustraire le plus petit chiffre du plus grand sans respecter le sens de la soustraction (8 − 5 au lieu de 10 − 8 avec retenue).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges', 'Facile',
  'qcm',
  'Calculer 12,6 ÷ 0,3.',
  NULL,
  '[{"id":"a","label":"4,2"},{"id":"b","label":"42"},{"id":"c","label":"0,42"},{"id":"d","label":"420"}]',
  '{"mode":"single","value":"b"}',
  'Pour diviser par un nombre décimal, on multiplie le dividende et le diviseur par la même puissance de 10 afin de rendre le diviseur entier. Ici, on multiplie les deux par 10 : 12,6 ÷ 0,3 = 126 ÷ 3 = 42. L''erreur 4,2 vient d''un mauvais placement de la virgule, et 0,42 d''une double erreur de placement.',
  'Mal placer la virgule dans le quotient après avoir rendu le diviseur entier, ou oublier de multiplier aussi le dividende.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges', 'Facile',
  'reponse_courte',
  'Ranger dans l''ordre croissant : 2,8 — 2,15 — 2,305 — 2,09.',
  NULL,
  NULL,
  '{"mode":"exact","acceptableAnswers":["2,09 < 2,15 < 2,305 < 2,8"]}',
  'Pour comparer des nombres décimaux, on égalise le nombre de décimales : 2,800 — 2,150 — 2,305 — 2,090. On compare alors les parties décimales : 090 < 150 < 305 < 800. L''ordre croissant est donc : 2,09 < 2,15 < 2,305 < 2,8. Le piège classique est de croire que 2,305 > 2,8 parce que 305 > 8, en oubliant d''égaliser le nombre de décimales.',
  'Comparer les parties décimales sans égaliser le nombre de chiffres après la virgule (croire que 305 > 8 donc 2,305 > 2,8).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0290000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_decimaux_operations',
  'Nombres décimaux — Opérations posées et pièges', 'Facile',
  'qcm',
  'On multiplie 1,25 par 3,4. Combien de chiffres après la virgule le produit comporte-t-il ?',
  NULL,
  '[{"id":"a","label":"1"},{"id":"b","label":"2"},{"id":"c","label":"3"},{"id":"d","label":"4"}]',
  '{"mode":"single","value":"b"}',
  'La règle indique que le produit de deux décimaux a au maximum la somme des décimales des deux facteurs : 2 + 1 = 3 chiffres après la virgule. Cependant, si le résultat se termine par un ou plusieurs zéros après la virgule, on les supprime. 1,25 × 3,4 = 4,250 = 4,25, soit 2 chiffres après la virgule. La réponse est donc 2.',
  'Répondre 3 en appliquant mécaniquement la règle (somme des décimales) sans vérifier si des zéros terminaux se simplifient.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free', true
) ON CONFLICT (id) DO NOTHING;
