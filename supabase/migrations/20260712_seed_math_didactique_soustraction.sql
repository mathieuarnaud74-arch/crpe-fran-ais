-- Seed: Didactique de la soustraction — Erreurs et procédures (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc010000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Intermediaire',
  'qcm',
  'Un élève de CE2 calcule 543 − 278 et obtient 335. Il a soustrait chiffre à chiffre en prenant systématiquement le plus petit au plus grand (8−3=5, 7−4=3, 5−2=3). Quel type d''erreur s''agit-il ?',
  NULL,
  '[{"id":"a","label":"Erreur de calcul ponctuelle sans logique identifiable"},{"id":"b","label":"Erreur systématique liée à une conception erronée de la soustraction posée : l''élève soustrait toujours le plus petit chiffre du plus grand"},{"id":"c","label":"Erreur liée à une mauvaise connaissance des tables de soustraction"},{"id":"d","label":"Erreur due à un problème de lecture de l''énoncé"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il s''agit d''une erreur systématique dite « du plus petit au plus grand » (ou « bug de soustraction »). L''élève applique une règle erronée mais cohérente : à chaque colonne, il soustrait le chiffre le plus petit du plus grand, quel que soit leur position (haut ou bas). Ce n''est pas une erreur ponctuelle : elle révèle une conception erronée de l''algorithme de soustraction. L''élève n''a pas construit le sens de la retenue et traite chaque colonne indépendamment. Cette erreur, identifiée dans les travaux de recherche en didactique (notamment Brown et Burton, 1978), est l''un des « bugs » les plus fréquents de la soustraction posée.',
  'Confondre cette erreur systématique avec une simple erreur de calcul. L''aspect systématique et reproductible de l''erreur est la clé : l''élève applique une procédure cohérente mais incorrecte.',
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
  'fc010000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Intermediaire',
  'vrai_faux',
  'Selon la classification de Vergnaud (champ conceptuel des structures additives), le problème « Léo avait 47 billes. Il en perd 19 à la récréation. Combien lui en reste-t-il ? » relève d''une situation de comparaison.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Ce problème relève d''une situation de transformation et non de comparaison. Dans la typologie de Vergnaud, une transformation décrit un état initial qui subit un changement (perte ou gain) pour aboutir à un état final. Ici : état initial (47 billes) → transformation négative (perte de 19) → état final (recherché). Une situation de comparaison mettrait en jeu deux collections distinctes que l''on compare (« Léo a 47 billes, Mia en a 19. Combien Léo en a-t-il de plus ? »). La distinction est fondamentale car ces deux types de problèmes ne mobilisent pas les mêmes schèmes chez l''élève.',
  'Confondre transformation et comparaison. La transformation implique un changement dans le temps (avant/après), tandis que la comparaison met en relation deux quantités simultanées.',
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
  'fc010000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Intermediaire',
  'qcm',
  'Un élève de CE1 écrit pour calculer 62 − 45 : « 62 − 40 = 22, puis 22 − 5 = 17 ». Quelle procédure de calcul utilise-t-il ?',
  NULL,
  '[{"id":"a","label":"Soustraction par cassage (décomposition du nombre retranché en dizaines et unités, soustractions successives)"},{"id":"b","label":"Soustraction par compensation (ajout de la même quantité aux deux termes)"},{"id":"c","label":"Calcul en ligne par complément (recherche de ce qu''il faut ajouter à 45 pour obtenir 62)"},{"id":"d","label":"Algorithme posé traditionnel avec retenue"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''élève utilise la procédure de soustraction par cassage (ou décomposition séquentielle). Il décompose le nombre à retrancher (45 = 40 + 5) et effectue deux soustractions successives : d''abord les dizaines (62 − 40 = 22), puis les unités (22 − 5 = 17). Cette stratégie s''appuie sur la décomposition additive et la propriété d''associativité : 62 − 45 = 62 − (40 + 5) = (62 − 40) − 5. Elle est recommandée par Éduscol comme étape intermédiaire avant l''algorithme posé, car elle maintient le sens des nombres (contrairement à l''algorithme qui travaille chiffre par chiffre).',
  'Confondre la soustraction par cassage avec la compensation. La compensation consisterait à transformer le calcul, par exemple en calculant 63 − 46 (ajout de 1 aux deux termes) pour simplifier.',
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
  'fc010000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Intermediaire',
  'reponse_courte',
  'Dans la classification de Vergnaud des structures additives, quel est le nom du type de problème soustractif qui met en relation deux quantités simultanées (exemple : « Pierre a 34 images et Julie en a 21. Combien Pierre en a-t-il de plus que Julie ? ») ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["comparaison","la comparaison","Comparaison","La comparaison"]}'::jsonb,
  'Il s''agit du type « comparaison » dans la classification de Vergnaud. Les trois grands types de problèmes relevant des structures additives sont : (1) la composition (réunion de deux parties en un tout), (2) la transformation (un état initial subit un changement) et (3) la comparaison (mise en relation de deux quantités simultanées par un écart). Dans un problème de comparaison, on cherche soit l''écart entre deux quantités, soit l''une des deux quantités connaissant l''autre et l''écart. Les programmes Éduscol insistent sur la nécessité de travailler les trois types dès le cycle 2.',
  'Confondre comparaison et composition. La composition réunit deux parties pour former un tout (« Pierre a 34 images de foot et 21 de basket. Combien en a-t-il en tout ? »), tandis que la comparaison met en relation deux collections distinctes.',
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
  'fc010000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Intermediaire',
  'qcm',
  'Un enseignant souhaite concevoir une activité de remédiation pour des élèves de CE2 qui commettent systématiquement l''erreur de soustraire le plus petit chiffre du plus grand à chaque colonne. Quelle approche est la plus pertinente didactiquement ?',
  NULL,
  '[{"id":"a","label":"Multiplier les exercices de soustraction posée pour automatiser la procédure correcte par répétition"},{"id":"b","label":"Revenir à la manipulation avec du matériel de numération (barres dizaines / cubes unités) pour reconstruire le sens de l''échange"},{"id":"c","label":"Donner directement la règle de la retenue et faire appliquer mécaniquement l''algorithme"},{"id":"d","label":"Passer immédiatement à la soustraction par complément sans revenir sur l''erreur"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La remédiation la plus efficace consiste à revenir au matériel de numération (cubes unités, barres dizaines, plaques centaines — type matériel Montessori ou multibase) pour reconstruire le sens de l''échange/retenue. L''erreur « petit du grand » révèle que l''élève n''a pas compris que la retenue correspond à un échange : 1 dizaine = 10 unités. En manipulant, l''élève voit concrètement qu''on ne peut pas retirer 8 cubes-unités de 3 cubes-unités, et qu''il faut casser une barre-dizaine en 10 cubes-unités. Cette approche s''inscrit dans la progression manipulation → schématisation → abstraction recommandée par Éduscol et les travaux de Bruner.',
  'Penser que la répétition mécanique de l''algorithme suffira. Si l''élève n''a pas construit le sens de l''échange, répéter l''exercice ne fera que renforcer sa procédure erronée.',
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
  'fc010000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Intermediaire',
  'vrai_faux',
  'L''algorithme de soustraction « par emprunt » (ou « par cassage ») et l''algorithme « par compensation » (dit « à la française ») produisent des résultats différents et l''un est plus exact que l''autre.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Les deux algorithmes produisent exactement le même résultat. L''algorithme par emprunt (cassage) consiste à échanger 1 dizaine du nombre du haut contre 10 unités quand les unités du haut sont insuffisantes. L''algorithme par compensation (dit « à la française ») consiste à ajouter 10 unités en haut et 1 dizaine en bas, en s''appuyant sur la propriété : a − b = (a + 10) − (b + 10). Les deux sont mathématiquement corrects. Le choix entre les deux est une question de tradition pédagogique et de cohérence avec la compréhension de la numération. Les programmes français n''imposent pas un algorithme plutôt qu''un autre, mais Éduscol recommande de travailler d''abord sur le sens (avec manipulation) avant d''introduire l''algorithme choisi.',
  'Croire qu''un algorithme est « meilleur » ou « plus juste » que l''autre. Les deux sont mathématiquement équivalents. Le choix pédagogique doit tenir compte de la cohérence avec l''enseignement de la numération dans la classe.',
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
  'fc010000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Intermediaire',
  'qcm',
  'Un enseignant veut construire une séquence progressive sur la soustraction en CE1. Quel ordonnancement des compétences prérequises est le plus pertinent avant d''introduire l''algorithme posé ?',
  NULL,
  '[{"id":"a","label":"1. Algorithme posé → 2. Calcul mental → 3. Manipulation → 4. Problèmes"},{"id":"b","label":"1. Calcul mental avec nombres à deux chiffres → 2. Manipulation du matériel de numération → 3. Écriture en ligne avec décomposition → 4. Algorithme posé"},{"id":"c","label":"1. Manipulation du matériel de numération (sens de l''échange) → 2. Soustraction en ligne par décomposition → 3. Calcul mental (stratégies variées) → 4. Algorithme posé avec sens"},{"id":"d","label":"1. Tables de soustraction par cœur → 2. Algorithme posé → 3. Problèmes d''application"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La progression la plus pertinente suit le schéma : manipulation → calcul en ligne → calcul mental → algorithme posé. (1) La manipulation avec du matériel de numération permet de construire le sens des échanges (1 dizaine = 10 unités), prérequis indispensable. (2) La soustraction en ligne par décomposition (ex : 62 − 45 = 62 − 40 − 5) maintient le sens des nombres et prépare le calcul réfléchi. (3) Le calcul mental développe la flexibilité et les stratégies variées (cassage, complément, compensation). (4) L''algorithme posé arrive en dernier car il est le plus abstrait et le plus éloigné du sens. Cette progression respecte le modèle enactif → iconique → symbolique de Bruner et les recommandations Éduscol pour le cycle 2.',
  'Commencer directement par l''algorithme posé sans avoir construit le sens de l''échange. C''est la source principale des erreurs systématiques (comme le « bug du petit au grand »).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
