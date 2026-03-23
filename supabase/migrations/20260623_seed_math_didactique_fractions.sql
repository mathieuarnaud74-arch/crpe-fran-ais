-- Seed: Didactique des fractions — Erreurs et remédiations (7 exercices, Intermédiaire, premium)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000001', 'Mathematiques', 'didactique_maths', 'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations', 'Intermediaire', 'qcm',
  'Un élève de CM1 écrit : 1/3 + 1/4 = 2/7. Quelle est la nature de l''erreur commise ?',
  NULL,
  '[{"id": "a", "label": "Il additionne séparément les numérateurs et les dénominateurs"}, {"id": "b", "label": "Il confond addition et multiplication de fractions"}, {"id": "c", "label": "Il ne connaît pas les tables d''addition"}, {"id": "d", "label": "Il a inversé numérateur et dénominateur"}]',
  '{"mode": "single", "value": "a"}',
  'L''erreur la plus fréquente dans l''addition de fractions est l''application abusive de la règle « additionner les numérateurs entre eux et les dénominateurs entre eux » : 1/3 + 1/4 = (1+1)/(3+4) = 2/7. Cette erreur révèle que l''élève traite le numérateur et le dénominateur comme deux nombres indépendants, sans comprendre que la fraction représente un seul nombre. Selon Vergnaud, cette difficulté relève du champ conceptuel des structures multiplicatives : la fraction est une relation entre deux grandeurs, non une juxtaposition de deux entiers. La réponse correcte est 1/3 + 1/4 = 4/12 + 3/12 = 7/12, ce qui nécessite la recherche d''un dénominateur commun.',
  'Penser que l''élève ne connaît pas les tables d''addition, alors que l''erreur porte sur la nature même de la fraction comme nombre et non sur le calcul entier.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000002', 'Mathematiques', 'didactique_maths', 'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations', 'Intermediaire', 'vrai_faux',
  'Un élève affirme que 3/5 est plus grand que 3/4 « parce que 5 est plus grand que 4 ». Cette erreur est liée à une conception erronée du rôle du dénominateur dans une fraction.',
  NULL,
  NULL,
  '{"mode": "single", "value": "vrai"}',
  'Cette affirmation est vraie : l''erreur de l''élève provient d''une conception erronée du rôle du dénominateur. L''élève applique aux fractions un raisonnement valide pour les entiers naturels (« plus le nombre est grand, plus la quantité est grande »). Or, dans une fraction, plus le dénominateur est grand, plus les parts sont petites : 1/5 < 1/4. Ainsi, 3/5 = 3 × (1/5) < 3 × (1/4) = 3/4. Cet obstacle, identifié par les recherches en didactique (Brousseau, 1983), est appelé « obstacle du nombre naturel » : l''élève transfère abusivement les propriétés des entiers aux fractions. La remédiation passe par la manipulation concrète (partage de galettes, bandes de papier) pour faire percevoir que diviser en plus de parts donne des parts plus petites.',
  'Penser que l''élève a simplement fait une erreur d''inattention, alors qu''il s''agit d''un obstacle conceptuel profond lié au transfert des propriétés des entiers naturels.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000003', 'Mathematiques', 'didactique_maths', 'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations', 'Intermediaire', 'qcm',
  'Dans le cadre conceptuel de Vergnaud, la fraction 3/4 peut être interprétée de plusieurs manières. Laquelle de ces interprétations correspond à la fraction comme « mesure » ?',
  NULL,
  '[{"id": "a", "label": "3/4 représente le résultat de la division de 3 par 4"}, {"id": "b", "label": "3/4 représente 3 parts sur un tout découpé en 4 parts égales"}, {"id": "c", "label": "3/4 représente le rapport entre 3 garçons et 4 filles"}, {"id": "d", "label": "3/4 représente l''opérateur qui transforme 4 en 3"}]',
  '{"mode": "single", "value": "b"}',
  'Selon Vergnaud et Kieren, la fraction admet plusieurs interprétations dans le champ conceptuel des structures multiplicatives : (a) quotient (résultat d''un partage : 3 gâteaux partagés entre 4), (b) mesure ou partie d''un tout (3 parts sur 4), (c) ratio (comparaison de deux quantités), (d) opérateur (qui agit sur une grandeur). L''interprétation comme « mesure » ou « partie d''un tout » (part-whole) correspond à la situation où l''on considère 3 parts d''un tout divisé en 4 parts égales. C''est l''interprétation la plus couramment travaillée au cycle 3, mais elle est insuffisante à elle seule pour construire le concept complet de fraction.',
  'Confondre l''interprétation « mesure » (partie d''un tout) avec l''interprétation « quotient » (résultat d''une division). La différence est subtile mais didactiquement fondamentale : la mesure implique un tout de référence, le quotient implique un partage.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000004', 'Mathematiques', 'didactique_maths', 'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations', 'Intermediaire', 'reponse_courte',
  'Un élève de CM2 doit simplifier la fraction 12/18. Il écrit : 12/18 = 12/18. Il dit « on ne peut pas simplifier car 12 et 18 n''ont pas de rapport ». Quel est le plus grand diviseur commun de 12 et 18 qui permet de simplifier cette fraction ?',
  NULL,
  NULL,
  '{"mode": "text", "acceptableAnswers": ["6", "PGCD = 6"]}',
  'Le PGCD de 12 et 18 est 6. En effet, 12 = 2² × 3 et 18 = 2 × 3², donc PGCD(12, 18) = 2 × 3 = 6. Ainsi, 12/18 = (12÷6)/(18÷6) = 2/3. L''erreur de l''élève révèle qu''il n''a pas acquis la notion de diviseur commun et ne dispose pas de procédures pour chercher les facteurs communs. Une remédiation efficace consiste à travailler la décomposition en facteurs premiers à l''aide d''arbres de facteurs, puis à repérer visuellement les facteurs communs. On peut aussi proposer des manipulations avec des cubes Multilink pour rendre concrète la notion de « groupement commun ».',
  'Ne pas identifier le PGCD comme outil de simplification, ou simplifier partiellement (diviser par 2 puis par 3 en deux étapes au lieu de diviser directement par 6).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000005', 'Mathematiques', 'didactique_maths', 'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations', 'Intermediaire', 'qcm',
  'Une élève de CM2 affirme que 2/6 et 1/3 ne sont pas la même chose car « les dessins sont différents : dans un cas on colorie 2 parts sur 6, dans l''autre 1 part sur 3 ». Quelle variable didactique pourrait-on modifier pour l''aider à dépasser cet obstacle ?',
  NULL,
  '[{"id": "a", "label": "Augmenter le nombre de parts dans les représentations"}, {"id": "b", "label": "Proposer des représentations sur la droite numérique où les deux fractions occupent le même point"}, {"id": "c", "label": "Donner davantage d''exercices de coloriage de parts"}, {"id": "d", "label": "Travailler uniquement avec des fractions décimales"}]',
  '{"mode": "single", "value": "b"}',
  'L''obstacle ici est que l''élève reste attachée à la représentation aire (coloriage de parts) qui visuellement distingue 2/6 et 1/3. La droite numérique est un outil didactique fondamental pour faire émerger la notion de fractions équivalentes : sur la droite, 2/6 et 1/3 correspondent exactement au même point, ce qui rend perceptible leur égalité. Brousseau parle de « variable didactique » : le type de représentation (aire, longueur, droite numérique, ensemble discret) est une variable que l''enseignant peut modifier pour provoquer un changement de conception chez l''élève. Le passage de la représentation partie-tout (aire) à la représentation mesure (droite numérique) est un levier essentiel pour construire la notion d''équivalence.',
  'Proposer davantage d''exercices de coloriage, ce qui renforcerait justement la conception erronée que deux fractions représentées différemment sont forcément différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000006', 'Mathematiques', 'didactique_maths', 'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations', 'Intermediaire', 'vrai_faux',
  'Un élève place 5/3 sur la droite numérique entre 0 et 1 en expliquant « 5/3 est une fraction, donc elle est forcément entre 0 et 1 ». Cette erreur révèle une conception exclusivement « partie d''un tout » de la fraction.',
  NULL,
  NULL,
  '{"mode": "single", "value": "vrai"}',
  'Cette affirmation est vraie. L''élève qui considère que toute fraction est inférieure à 1 a construit une conception exclusivement « partie d''un tout » (part-whole) : pour lui, une fraction représente toujours une partie d''un unique tout, ce qui rend impossible qu''elle dépasse 1. Or 5/3 est une fraction impropre qui vaut environ 1,67. Cette erreur est un indicateur classique d''un concept en cours de construction. La remédiation doit proposer des situations où la fraction dépasse 1 de manière concrète : partager 5 pizzas entre 3 personnes (chacun reçoit 5/3 de pizza, soit plus d''une pizza entière), ou placer des fractions sur une droite numérique graduée au-delà de 1. Le passage de la conception « partie d''un tout » à la conception « nombre » (mesure sur la droite) est un enjeu majeur de l''enseignement des fractions au cycle 3.',
  'Ne pas identifier la cause conceptuelle et attribuer l''erreur à un manque d''attention, alors qu''elle témoigne d''une représentation limitée du concept de fraction.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000007', 'Mathematiques', 'didactique_maths', 'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations', 'Intermediaire', 'reponse_courte',
  'Vous concevez une séquence de remédiation pour des élèves de CM2 qui ne parviennent pas à comparer des fractions de dénominateurs différents (par exemple 3/5 et 2/3). Selon le cadre de Vergnaud, quelle procédure mathématique fondamentale doivent-ils mobiliser pour comparer ces fractions ?',
  NULL,
  NULL,
  '{"mode": "text", "acceptableAnswers": ["mise au même dénominateur", "dénominateur commun", "réduction au même dénominateur", "mise au meme denominateur"]}',
  'Pour comparer 3/5 et 2/3, la procédure fondamentale est la mise au même dénominateur : 3/5 = 9/15 et 2/3 = 10/15, donc 3/5 < 2/3. Cette procédure repose sur la compréhension des fractions équivalentes et nécessite la maîtrise du concept de multiple commun. Vergnaud souligne que cette capacité relève du champ conceptuel multiplicatif et suppose que l''élève ait construit la notion d''équivalence de fractions (a/b = ka/kb). D''autres procédures existent (comparaison au benchmark 1/2, produits en croix), mais la réduction au même dénominateur est la procédure canonique enseignée au cycle 3 car elle donne du sens à l''opération de comparaison en ramenant les fractions à des parts de même taille.',
  'Proposer la comparaison des numérateurs sans avoir réduit au même dénominateur, ou utiliser les produits en croix de manière mécanique sans compréhension du sens.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
