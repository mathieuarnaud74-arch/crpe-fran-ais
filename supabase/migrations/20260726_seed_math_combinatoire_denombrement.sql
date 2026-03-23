-- Seed: Dénombrement et combinatoire — Principes fondamentaux (7 exercices)
-- Subdomain: organisation_donnees | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb060000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux', 'Difficile',
  'qcm',
  'Un élève possède 4 t-shirts différents et 3 pantalons différents. Combien de tenues différentes peut-il composer en choisissant un t-shirt et un pantalon ?',
  NULL,
  '[{"id":"a","label":"7 tenues"},{"id":"b","label":"12 tenues"},{"id":"c","label":"24 tenues"},{"id":"d","label":"4 tenues"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On applique le principe multiplicatif (ou principe de multiplication) du dénombrement : lorsqu''on doit faire deux choix successifs indépendants, le nombre total de possibilités est le produit du nombre de choix pour chaque étape. Ici, l''élève choisit d''abord un t-shirt parmi 4 (4 possibilités), puis un pantalon parmi 3 (3 possibilités). Le nombre total de tenues est donc 4 × 3 = 12. Ce principe se généralise : si l''on doit faire k choix successifs avec n₁, n₂, ..., nₖ options, le nombre total de possibilités est n₁ × n₂ × ... × nₖ. C''est le principe fondamental du dénombrement.',
  'Additionner au lieu de multiplier : 4 + 3 = 7. L''addition ne s''applique que lorsque les choix sont disjoints (principe additif), pas lorsqu''on combine des choix indépendants.',
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
  'fb060000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux', 'Difficile',
  'vrai_faux',
  'Un restaurant propose en dessert soit une glace (5 parfums au choix) soit un gâteau (3 variétés au choix). Le nombre total de desserts possibles est 5 × 3 = 15.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Ici, le client choisit soit une glace, soit un gâteau : les deux choix sont disjoints (mutuellement exclusifs). On applique donc le principe additif : le nombre total de desserts est 5 + 3 = 8. Le principe multiplicatif s''appliquerait si le client devait choisir une glace ET un gâteau (par exemple un menu avec les deux). La distinction entre « ou » (addition) et « et » (multiplication) est fondamentale en dénombrement. Principe additif : si deux événements A et B sont disjoints, |A ∪ B| = |A| + |B|. Principe multiplicatif : si deux choix sont indépendants, le nombre de couples est |A| × |B|.',
  'Appliquer systématiquement le principe multiplicatif sans analyser si les choix sont combinés (« et ») ou alternatifs (« ou »). Ici, « soit... soit... » indique des choix disjoints → addition.',
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
  'fb060000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux', 'Difficile',
  'reponse_courte',
  'De combien de façons peut-on ranger 5 livres différents sur une étagère ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120","5! = 120","5!=120"]}'::jsonb,
  'Il s''agit de compter le nombre de permutations de 5 éléments distincts. Pour la 1ʳᵉ position, on a 5 choix ; pour la 2ᵉ position, il reste 4 livres ; pour la 3ᵉ, 3 livres ; pour la 4ᵉ, 2 livres ; pour la dernière, 1 seul livre. Par le principe multiplicatif : 5 × 4 × 3 × 2 × 1 = 5! = 120 arrangements possibles. De manière générale, le nombre de permutations de n objets distincts est n! (n factorielle). La factorielle croît très rapidement : 10! = 3 628 800. Ce concept est fondamental en combinatoire et intervient dans les calculs de probabilités.',
  'Confondre avec une puissance : répondre 5⁵ = 3125 (ce serait le cas si on pouvait remettre chaque livre avant de choisir le suivant, c''est-à-dire un tirage avec remise).',
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
  'fb060000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux', 'Difficile',
  'qcm',
  'Un comité de 3 personnes doit être formé à partir d''un groupe de 7 personnes. Combien de comités différents peut-on former ?',
  NULL,
  '[{"id":"a","label":"21"},{"id":"b","label":"35"},{"id":"c","label":"210"},{"id":"d","label":"343"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''ordre dans lequel on choisit les membres du comité n''a pas d''importance : {Alice, Bob, Clara} est le même comité que {Bob, Clara, Alice}. Il s''agit donc d''une combinaison (et non d''un arrangement). Le nombre de combinaisons de 3 éléments parmi 7 est C(7,3) = 7! / (3! × 4!) = (7 × 6 × 5) / (3 × 2 × 1) = 210 / 6 = 35. La formule générale est C(n,k) = n! / (k! × (n−k)!). La clé pour distinguer combinaison et arrangement est de se demander : « L''ordre compte-t-il ? » Si oui → arrangement ; si non → combinaison. Former un comité = l''ordre ne compte pas → combinaison.',
  'Calculer un arrangement (7 × 6 × 5 = 210) au lieu d''une combinaison. L''arrangement compterait comme distincts les comités {A,B,C}, {A,C,B}, {B,A,C}, etc. Pour un comité, l''ordre ne compte pas, donc on divise par 3! = 6.',
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
  'fb060000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux', 'Difficile',
  'qcm',
  'Un glacier propose 4 parfums : vanille, chocolat, fraise, pistache. Un enfant veut choisir 2 boules de parfums différents. On utilise un arbre de dénombrement. Combien de branches terminales comporte l''arbre, et combien de choix distincts y a-t-il (l''ordre des boules ne comptant pas) ?',
  NULL,
  '[{"id":"a","label":"12 branches, 6 choix distincts"},{"id":"b","label":"8 branches, 4 choix distincts"},{"id":"c","label":"16 branches, 8 choix distincts"},{"id":"d","label":"12 branches, 12 choix distincts"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''arbre de dénombrement se construit en deux niveaux. Au premier niveau, on choisit le premier parfum (4 possibilités). Au second niveau, on choisit le second parfum parmi les 3 restants (parfums différents). L''arbre a donc 4 × 3 = 12 branches terminales. Mais comme l''ordre ne compte pas (une boule vanille-chocolat = une boule chocolat-vanille), chaque choix est compté deux fois dans l''arbre. Le nombre de choix distincts est 12 / 2 = 6. On retrouve C(4,2) = 4! / (2! × 2!) = 6. L''arbre de dénombrement est un outil visuel précieux en cycle 3 pour initier les élèves au dénombrement systématique.',
  'Oublier de diviser par 2 quand l''ordre ne compte pas, et répondre 12 choix distincts au lieu de 6.',
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
  'fb060000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux', 'Difficile',
  'reponse_courte',
  'Dans le triangle de Pascal, la 5ᵉ ligne (en commençant par la ligne 0) est : 1, 5, 10, 10, 5, 1. Que vaut C(5, 2) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10","C(5,2) = 10","C(5,2)=10"]}'::jsonb,
  'Dans le triangle de Pascal, la ligne n contient les coefficients binomiaux C(n, 0), C(n, 1), ..., C(n, n). La 5ᵉ ligne est : C(5,0) = 1, C(5,1) = 5, C(5,2) = 10, C(5,3) = 10, C(5,4) = 5, C(5,5) = 1. Donc C(5,2) = 10, qui est le 3ᵉ nombre de la ligne (en comptant à partir de la position 0). On vérifie par la formule : C(5,2) = 5! / (2! × 3!) = 120 / (2 × 6) = 10. Le triangle de Pascal possède de nombreuses propriétés : symétrie (C(n,k) = C(n, n−k)), relation de Pascal (C(n,k) = C(n−1, k−1) + C(n−1, k)), et la somme de chaque ligne vaut 2ⁿ.',
  'Se tromper dans l''indexation : confondre la 5ᵉ ligne (qui commence à la ligne 0) avec la ligne qui commence par 1, 4, 6, 4, 1 (qui est la ligne 4). Bien repérer que la ligne n commence par C(n,0) = 1 et contient n + 1 termes.',
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
  'fb060000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux', 'Difficile',
  'qcm',
  'Un jeu de loterie demande de choisir 5 numéros parmi 49 (l''ordre ne compte pas et il n''y a pas de répétition). Combien de grilles différentes sont possibles ?',
  NULL,
  '[{"id":"a","label":"254 251 200"},{"id":"b","label":"1 906 884"},{"id":"c","label":"1 906 884 ou moins selon les doublons"},{"id":"d","label":"5 × 49 = 245"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On choisit 5 numéros parmi 49 sans répétition et sans tenir compte de l''ordre : c''est une combinaison. Le nombre de grilles possibles est C(49,5) = 49! / (5! × 44!). Calculons étape par étape : C(49,5) = (49 × 48 × 47 × 46 × 45) / (5 × 4 × 3 × 2 × 1) = 228 826 080 / 120 = 1 906 884. Il y a donc 1 906 884 grilles possibles. Si l''on joue une seule grille, la probabilité de gagner le gros lot est de 1 / 1 906 884, soit environ 0,0000524 %. Ce type de calcul illustre concrètement l''utilité des combinaisons et permet de comprendre pourquoi les chances de gagner à la loterie sont si faibles.',
  'Calculer un arrangement (49 × 48 × 47 × 46 × 45 = 228 826 080) sans diviser par 5! = 120. L''arrangement compte l''ordre, mais dans une loterie, la grille {3, 12, 25, 38, 47} est la même que {47, 38, 25, 12, 3}.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
