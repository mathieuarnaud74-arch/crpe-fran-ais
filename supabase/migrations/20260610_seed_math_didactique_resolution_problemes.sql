-- Seed: Didactique — Résolution de problèmes (7 exercices, Avancé, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0250000-0000-0000-0000-000000000001', 'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance', 'qcm',
  'Selon Polya, la première étape de la résolution d''un problème est :',
  NULL,
  '[{"id": "a", "label": "Faire un calcul"}, {"id": "b", "label": "Comprendre le problème"}, {"id": "c", "label": "Vérifier le résultat"}, {"id": "d", "label": "Choisir une opération"}]',
  '{"mode": "single", "value": "b"}',
  'George Polya, dans son ouvrage « How to Solve It » (1945), identifie quatre étapes fondamentales de la résolution de problème : 1) Comprendre le problème, 2) Concevoir un plan, 3) Mettre le plan à exécution, 4) Vérifier le résultat. La compréhension du problème est donc la première étape indispensable avant toute tentative de résolution. Sans cette compréhension, l''élève risque de se lancer dans des calculs inadaptés.',
  'Confondre la première étape avec « choisir une opération » ou « faire un calcul », ce qui correspond en réalité aux étapes 2 et 3 du modèle de Polya.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0250000-0000-0000-0000-000000000002', 'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance', 'vrai_faux',
  'Un « problème ouvert » au sens de l''IREM est un problème dont l''énoncé est court, ne contient pas d''indication sur la méthode à utiliser, et admet plusieurs stratégies de résolution.',
  NULL,
  NULL,
  '{"mode": "single", "value": "vrai"}',
  'La définition du « problème ouvert » selon l''IREM de Lyon repose sur trois critères essentiels : l''énoncé est court et n''induit pas la méthode de résolution ; la situation est facilement compréhensible par les élèves ; et le problème se prête à plusieurs procédures de résolution possibles. L''objectif didactique est de développer la démarche de recherche, l''initiative et la créativité mathématique des élèves, sans les enfermer dans une procédure unique.',
  'Confondre « problème ouvert » avec « problème à plusieurs solutions » : un problème ouvert admet plusieurs stratégies de résolution, mais peut n''avoir qu''une seule réponse.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0250000-0000-0000-0000-000000000003', 'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance', 'qcm',
  'Un élève de CE2 lit le problème « Pierre a 12 billes. Il en perd 5. Combien lui en reste-t-il ? » et fait immédiatement 12 + 5 = 17. Quel obstacle rencontre-t-il principalement ?',
  NULL,
  '[{"id": "a", "label": "Il ne sait pas effectuer une soustraction"}, {"id": "b", "label": "Il ne comprend pas le sens du mot « perdre » comme une diminution"}, {"id": "c", "label": "Il a un trouble du calcul"}, {"id": "d", "label": "Il ne sait pas lire l''énoncé"}]',
  '{"mode": "single", "value": "b"}',
  'L''obstacle principal ici est d''ordre sémantique : l''élève ne parvient pas à associer le verbe « perdre » à l''opération de soustraction. Dans la classification de Vergnaud (champ conceptuel des structures additives), ce problème relève d''une « transformation négative » sur un état initial. L''élève, en additionnant, montre qu''il ne donne pas à l''action « perdre » le sens d''une diminution. Ce type d''erreur est fréquent et révèle une difficulté de compréhension du contexte sémantique, et non un déficit de technique opératoire.',
  'Attribuer l''erreur à un manque de maîtrise technique de la soustraction, alors que l''obstacle est la compréhension du sens de la situation (transformation négative au sens de Vergnaud).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0250000-0000-0000-0000-000000000004', 'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance', 'reponse_courte',
  'Expliquez la différence entre un « problème d''application » et un « problème de recherche » dans le cadre scolaire.',
  NULL,
  NULL,
  '{"mode": "flexible", "acceptableAnswers": ["procédure connue", "stratégie à construire", "entraînement", "recherche"]}',
  'Un « problème d''application » vise à réinvestir une procédure ou une technique déjà enseignée : l''élève sait quelle méthode utiliser et s''entraîne à l''appliquer. Un « problème de recherche », en revanche, ne fait appel à aucune procédure connue a priori : l''élève doit élaborer sa propre stratégie de résolution, tâtonner, émettre des hypothèses et les vérifier. La distinction fondamentale réside donc entre « procédure connue à appliquer » et « stratégie à construire par l''élève ».',
  'Réduire la différence à une question de difficulté (« le problème de recherche est plus difficile ») sans mentionner le critère essentiel : la disponibilité ou non d''une procédure de résolution connue.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0250000-0000-0000-0000-000000000005', 'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance', 'qcm',
  'Un problème dit « à données inutiles » est un problème qui contient des informations superflues. Quel est l''intérêt didactique de ce type de problème ?',
  NULL,
  '[{"id": "a", "label": "Piéger les élèves pour les mettre en difficulté"}, {"id": "b", "label": "Développer le tri d''informations et la compréhension de l''énoncé"}, {"id": "c", "label": "Rendre l''exercice plus long et plus complexe"}, {"id": "d", "label": "Tester la mémoire des élèves"}]',
  '{"mode": "single", "value": "b"}',
  'Les problèmes à données inutiles ont un intérêt didactique majeur : ils obligent l''élève à lire attentivement l''énoncé, à identifier les informations pertinentes et à écarter celles qui ne le sont pas. Cette compétence de tri d''informations est essentielle dans la résolution de problèmes. Loin de chercher à « piéger » les élèves, ces problèmes visent à développer une lecture critique de l''énoncé et à lutter contre le réflexe de « prendre tous les nombres et faire une opération ».',
  'Penser que l''objectif est de piéger les élèves, alors que la finalité est de les entraîner à la compréhension fine de l''énoncé et au tri des données pertinentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0250000-0000-0000-0000-000000000006', 'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance', 'reponse_courte',
  'Selon la classification de Vergnaud, dans quel champ conceptuel se situe le problème suivant : « Julie a 8 ans. Son père a 35 ans. Quelle est la différence d''âge ? Dans 10 ans, quelle sera la différence d''âge ? »',
  NULL,
  NULL,
  '{"mode": "flexible", "acceptableAnswers": ["structures additives", "champ additif", "champ conceptuel additif", "champ conceptuel des structures additives"]}',
  'Ce problème relève du champ conceptuel des structures additives selon la classification de Gérard Vergnaud. Il met en jeu une comparaison (« quelle est la différence d''âge ? ») qui relève de la relation additive entre deux états. La deuxième question (« dans 10 ans ») introduit une transformation temporelle qui montre que la différence d''âge reste invariante, ce qui constitue un raisonnement additif de type état-transformation-état. Les structures additives regroupent l''ensemble des situations dont le traitement implique une ou plusieurs additions ou soustractions.',
  'Classer ce problème dans les structures multiplicatives parce qu''il fait intervenir des âges ou des transformations temporelles, alors que les opérations en jeu sont exclusivement additives (comparaison et transformation).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0250000-0000-0000-0000-000000000007', 'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance', 'qcm',
  'Les programmes du cycle 3 recommandent que les élèves soient régulièrement confrontés à des problèmes pour chercher. Quel rôle joue l''enseignant pendant la phase de recherche ?',
  NULL,
  '[{"id": "a", "label": "Il donne des indices dès que l''élève bloque"}, {"id": "b", "label": "Il observe, relance par des questions sans donner la solution, et organise les échanges entre élèves"}, {"id": "c", "label": "Il corrige immédiatement les erreurs"}, {"id": "d", "label": "Il laisse les élèves sans aucune intervention"}]',
  '{"mode": "single", "value": "b"}',
  'Selon le concept de dévolution de Guy Brousseau (théorie des situations didactiques), l''enseignant doit transférer à l''élève la responsabilité de la résolution du problème. Pendant la phase de recherche, le rôle de l''enseignant est d''observer les démarches des élèves, de relancer la réflexion par des questions ouvertes sans donner la solution, et d''organiser les échanges entre pairs pour confronter les stratégies. Il ne s''agit ni de laisser les élèves totalement sans aide (ce qui serait un abandon pédagogique), ni de leur donner la réponse (ce qui annulerait le processus de dévolution).',
  'Confondre dévolution et abandon : penser que l''enseignant doit soit tout donner (indices immédiats), soit ne rien faire du tout. La posture juste est celle du médiateur qui relance sans résoudre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
