-- Seed: Nombres entiers naturels — Numération positionnelle (7 exercices)
-- Subdomain: nombres_calcul | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle', 'Facile',
  'qcm',
  'Dans le nombre 47 253, quel est le chiffre des centaines ?',
  NULL,
  '[{"id":"a","label":"4"},{"id":"b","label":"7"},{"id":"c","label":"2"},{"id":"d","label":"5"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Dans notre système de numération décimale positionnelle, chaque chiffre occupe une position qui détermine sa valeur. En partant de la droite : 3 est le chiffre des unités, 5 est le chiffre des dizaines, 2 est le chiffre des centaines, 7 est le chiffre des milliers et 4 est le chiffre des dizaines de milliers. Le chiffre des centaines est donc 2. Il ne faut pas confondre « chiffre des centaines » (ici 2) et « nombre de centaines » (ici 472, car 47 253 = 472 × 100 + 53).',
  'Confondre le chiffre des centaines avec le chiffre des milliers en comptant les positions depuis la gauche au lieu de la droite.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle', 'Facile',
  'reponse_courte',
  'Écrivez en lettres le nombre 3 045.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["trois mille quarante-cinq","trois-mille-quarante-cinq","trois mille quarante cinq"]}'::jsonb,
  'Le nombre 3 045 s''écrit « trois mille quarante-cinq ». Selon les recommandations de l''Éduscol et les rectifications orthographiques de 1990, on peut lier tous les mots par des traits d''union : « trois-mille-quarante-cinq ». Attention : il n''y a pas de « et » entre quarante et cinq (le « et » ne s''emploie que dans « vingt et un », « trente et un », « quarante et un », « cinquante et un », « soixante et un »). Le zéro en position des centaines signifie qu''il n''y a pas de centaines à nommer : on passe directement de « mille » à « quarante-cinq ».',
  'Écrire « trois mille et quarante-cinq » en ajoutant un « et » incorrect, ou oublier le trait d''union entre quarante et cinq.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle', 'Facile',
  'qcm',
  'Quelle est la décomposition en puissances de 10 du nombre 6 207 ?',
  NULL,
  '[{"id":"a","label":"6 × 10³ + 2 × 10² + 0 × 10¹ + 7 × 10⁰"},{"id":"b","label":"6 × 10⁴ + 2 × 10³ + 0 × 10² + 7 × 10¹"},{"id":"c","label":"6 × 10³ + 2 × 10² + 7 × 10⁰"},{"id":"d","label":"6 × 1000 + 20 + 7"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La décomposition en puissances de 10 consiste à exprimer chaque chiffre multiplié par la puissance de 10 correspondant à sa position. Pour 6 207 : 6 est en position des milliers (10³ = 1 000), 2 en position des centaines (10² = 100), 0 en position des dizaines (10¹ = 10) et 7 en position des unités (10⁰ = 1). On obtient donc : 6 × 10³ + 2 × 10² + 0 × 10¹ + 7 × 10⁰. La réponse (c) est une écriture simplifiée correcte mais elle omet le terme 0 × 10¹, ce qui n''est pas une décomposition complète. La réponse (d) est un développement numérique, pas une décomposition en puissances de 10.',
  'Confondre les exposants des puissances de 10, notamment écrire 10⁴ au lieu de 10³ pour les milliers, ou oublier que 10⁰ = 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle', 'Facile',
  'qcm',
  'Quel signe de comparaison faut-il placer entre 98 712 et 98 721 ?',
  NULL,
  '[{"id":"a","label":"98 712 > 98 721"},{"id":"b","label":"98 712 < 98 721"},{"id":"c","label":"98 712 = 98 721"},{"id":"d","label":"On ne peut pas comparer ces deux nombres"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour comparer deux nombres entiers ayant le même nombre de chiffres, on compare chiffre par chiffre en partant de la gauche. Ici, les deux nombres ont 5 chiffres. Le chiffre des dizaines de milliers est identique (9), celui des milliers est identique (8), celui des centaines est identique (7). On compare alors le chiffre des dizaines : 1 pour 98 712 et 2 pour 98 721. Comme 1 < 2, on en déduit que 98 712 < 98 721. Il est inutile de comparer les unités puisque la différence a déjà été trouvée au rang des dizaines.',
  'Se précipiter en comparant uniquement les derniers chiffres (2 et 1), ce qui conduirait à conclure à tort que 98 712 > 98 721.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle', 'Facile',
  'reponse_courte',
  'Arrondissez le nombre 48 672 au millier le plus proche.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["49 000","49000","49 000"]}'::jsonb,
  'Pour arrondir au millier le plus proche, on regarde le chiffre des centaines. Dans 48 672, le chiffre des centaines est 6. Comme 6 ≥ 5, on arrondit au millier supérieur. Le millier inférieur est 48 000, le millier supérieur est 49 000. L''arrondi de 48 672 au millier le plus proche est donc 49 000. Règle générale : si le chiffre immédiatement à droite de la position d''arrondi est 0, 1, 2, 3 ou 4, on conserve le chiffre de la position d''arrondi (arrondi par défaut). S''il est 5, 6, 7, 8 ou 9, on augmente le chiffre de la position d''arrondi de 1 (arrondi par excès).',
  'Arrondir à 48 000 en oubliant que le chiffre des centaines (6) impose un arrondi au millier supérieur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle', 'Facile',
  'vrai_faux',
  'Le nombre qui s''écrit 5 × 10 000 + 3 × 100 + 8 × 10 + 4 est égal à 50 384.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. On calcule chaque terme séparément : 5 × 10 000 = 50 000 ; 3 × 100 = 300 ; 8 × 10 = 80 ; 4 = 4 (il s''agit de 4 × 1). La somme donne : 50 000 + 300 + 80 + 4 = 50 384. On remarque que la décomposition ne comporte pas de terme en milliers : le chiffre des milliers est donc 0, ce qui est cohérent avec le résultat 50 384 (le 0 entre le 5 et le 3). Ce type de décomposition additive où chaque terme est un chiffre multiplié par une puissance de 10 est appelé « écriture en numération de position développée ».',
  'Oublier le 0 en position des milliers et écrire 5 384 au lieu de 50 384, en ne tenant pas compte de la valeur positionnelle de chaque terme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f8070000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_nombres_entiers_naturels',
  'Nombres entiers naturels — Numération positionnelle', 'Facile',
  'qcm',
  'Trois villes ont les populations suivantes : Alphaville : 124 580 habitants ; Bêtaville : 142 085 habitants ; Gammaville : 124 850 habitants. Rangez ces populations dans l''ordre croissant.',
  NULL,
  '[{"id":"a","label":"Alphaville < Gammaville < Bêtaville"},{"id":"b","label":"Gammaville < Alphaville < Bêtaville"},{"id":"c","label":"Alphaville < Bêtaville < Gammaville"},{"id":"d","label":"Bêtaville < Alphaville < Gammaville"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Pour ranger ces nombres dans l''ordre croissant, on les compare deux à deux. Les trois nombres ont 6 chiffres. En comparant 124 580 et 142 085 : le premier chiffre est identique (1), le deuxième diffère (2 < 4), donc 124 580 < 142 085. En comparant 124 580 et 124 850 : les trois premiers chiffres sont identiques (1, 2, 4), le quatrième diffère (5 < 8), donc 124 580 < 124 850. En comparant 124 850 et 142 085 : les premiers chiffres sont identiques (1), le deuxième diffère (2 < 4), donc 124 850 < 142 085. L''ordre croissant est donc : 124 580 (Alphaville) < 124 850 (Gammaville) < 142 085 (Bêtaville).',
  'Confondre 124 850 et 142 085 en ne lisant pas attentivement l''ordre des chiffres, ou inverser l''ordre croissant et décroissant.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
