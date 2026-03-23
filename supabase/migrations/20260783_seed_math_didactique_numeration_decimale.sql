-- Seed: Didactique de la numération décimale — Obstacles et progression (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Intermediaire',
  'qcm',
  'Un élève de CM1 affirme que « 0,45 est plus grand que 0,5 parce que 45 est plus grand que 5 ». Quel obstacle didactique cette erreur révèle-t-elle principalement ?',
  NULL,
  '[{"id":"a","label":"L''élève applique aux décimaux les règles de comparaison des entiers naturels, traitant la partie décimale comme un entier indépendant"},{"id":"b","label":"L''élève ne connaît pas la table de multiplication et confond les chiffres"},{"id":"c","label":"L''élève a un problème de lecture et inverse les chiffres (dyslexie numérique)"},{"id":"d","label":"L''élève n''a jamais rencontré de nombres décimaux auparavant et devine au hasard"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Cette erreur, largement documentée par la recherche en didactique, est appelée « règle du nombre entier naturel » (whole number bias) : l''élève traite la partie décimale comme s''il s''agissait d''un entier indépendant. Ainsi, 0,45 serait « plus grand » que 0,5 parce que 45 > 5. Cet obstacle épistémologique provient du fait que le système décimal est perçu comme une simple extension du système entier, sans comprendre que la position des chiffres après la virgule détermine leur valeur (dixièmes, centièmes, etc.). Vergnaud, dans sa théorie des champs conceptuels, montre que le passage des entiers aux décimaux constitue un saut conceptuel majeur. Brousseau souligne que cet obstacle ne disparaît pas par simple répétition mais nécessite des situations didactiques spécifiques (comparaison sur la droite numérique, travail sur les fractions décimales). Éduscol recommande d''expliciter le lien entre écriture décimale et fractions dès le cycle 3.',
  'Réduire cette erreur à un simple manque d''attention. Il s''agit d''un obstacle conceptuel profond lié à la surextension des propriétés des entiers naturels aux nombres décimaux.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Intermediaire',
  'vrai_faux',
  'L''obstacle majeur dans l''apprentissage des nombres décimaux est que les élèves considèrent le nombre décimal comme deux entiers séparés par une virgule (un entier pour la partie entière, un entier pour la partie décimale), au lieu de comprendre le système positionnel décimal continu.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Cet obstacle, identifié par de nombreux chercheurs en didactique des mathématiques, est au cœur des difficultés des élèves avec les décimaux. Quand un élève écrit que 3,12 > 3,9 (« parce que 12 > 9 »), il révèle qu''il conçoit le nombre décimal comme la juxtaposition de deux entiers naturels : « 3 virgule 12 » et « 3 virgule 9 ». Cette conception erronée, appelée parfois « modèle des deux entiers », empêche la compréhension de la valeur positionnelle des chiffres après la virgule. Vergnaud montre que le champ conceptuel des décimaux ne peut pas être réduit à celui des entiers : il exige de nouvelles propriétés (entre deux décimaux, il existe toujours un autre décimal — propriété de densité). Brousseau insiste sur la nécessité de concevoir des situations a-didactiques où l''élève est confronté à l''insuffisance de sa conception « deux entiers » pour résoudre un problème. Les programmes Éduscol préconisent d''introduire les décimaux via les fractions décimales (1/10, 1/100) pour ancrer la compréhension positionnelle.',
  'Penser que cet obstacle se résout naturellement avec le temps. Sans intervention didactique ciblée, cette conception erronée peut persister jusqu''au collège.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Intermediaire',
  'qcm',
  'Quel outil didactique est particulièrement recommandé par Éduscol pour aider les élèves à comprendre l''ordre des nombres décimaux et à surmonter l''obstacle de la « règle du nombre entier » ?',
  NULL,
  '[{"id":"a","label":"La droite numérique graduée, qui permet de visualiser la position relative des décimaux et de constater que 0,5 est plus à droite que 0,45"},{"id":"b","label":"La calculatrice, qui donne directement le résultat de la comparaison sans que l''élève ait besoin de comprendre"},{"id":"c","label":"Les exercices répétitifs de classement par ordre croissant sans support visuel"},{"id":"d","label":"L''apprentissage par cœur de la règle « on compare d''abord les dixièmes, puis les centièmes »"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La droite numérique graduée est un outil fondamental pour l''enseignement des décimaux. Elle permet à l''élève de visualiser concrètement que 0,5 se situe plus à droite que 0,45, ce qui contredit directement l''intuition erronée « 45 > 5 donc 0,45 > 0,5 ». En plaçant des décimaux sur la droite, l''élève découvre que l''intervalle [0 ; 1] peut être subdivisé en dixièmes, puis en centièmes, et que 0,5 = 0,50 (équivalence par ajout de zéro). Vergnaud souligne que la droite numérique offre une représentation dans le registre graphique qui complète le registre symbolique (écriture décimale) et le registre de la langue naturelle. Brousseau montre que cette représentation peut servir de milieu dans une situation a-didactique : l''élève, en essayant de placer correctement des nombres sur la droite, est amené à remettre en question sa conception « deux entiers ». Éduscol recommande explicitement l''usage de la droite graduée dès le CM1, en lien avec les fractions décimales.',
  'Se limiter à énoncer la règle algorithmique de comparaison sans support visuel. L''élève peut appliquer la règle mécaniquement sans comprendre pourquoi elle fonctionne.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Intermediaire',
  'reponse_courte',
  'Dans la progression des programmes Éduscol, à quel cycle les nombres décimaux sont-ils introduits pour la première fois de manière formelle (écriture à virgule) ? Répondez par « cycle 2 », « cycle 3 » ou « cycle 4 ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["cycle 3","Cycle 3","C3"]}'::jsonb,
  'Les nombres décimaux sont introduits formellement au cycle 3, plus précisément en CM1. Au cycle 2, les élèves travaillent exclusivement avec les nombres entiers et découvrent les premières fractions simples (demi, quart) de manière concrète (partage de grandeurs). C''est au cycle 3 que les fractions décimales (1/10, 1/100) sont introduites, puis l''écriture à virgule comme notation conventionnelle de ces fractions. Vergnaud insiste sur l''importance de cette progressivité : le champ conceptuel des décimaux s''appuie sur celui des entiers et des fractions, et une introduction trop précoce de l''écriture à virgule — sans le fondement fractionnaire — risque de renforcer l''obstacle « deux entiers ». Brousseau montre que la situation fondamentale pour les décimaux doit inclure le passage explicite fraction décimale → écriture à virgule. Au cycle 4, les décimaux sont étendus aux relatifs décimaux et à la notation scientifique. Éduscol précise que la progression CM1-CM2-6e doit assurer la maîtrise progressive de la comparaison, de l''addition et de la soustraction des décimaux.',
  'Croire que les décimaux sont introduits dès le cycle 2. Au cycle 2, seules les fractions simples (demi, quart, tiers) sont abordées de manière concrète.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Intermediaire',
  'vrai_faux',
  'Un enseignant de CM2 propose l''exercice suivant : « Range dans l''ordre croissant : 2,7 — 2,15 — 2,345 — 2,8. » Parmi les productions d''élèves, Léa écrit : 2,7 < 2,8 < 2,15 < 2,345. L''analyse didactique de la production de Léa montre qu''elle utilise la « règle de la longueur » : plus la partie décimale comporte de chiffres, plus le nombre est grand.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La production de Léa est un cas typique de la « règle de la longueur » (longer-is-larger), une variante de l''obstacle « règle du nombre entier ». Léa classe correctement 2,7 < 2,8 (même nombre de décimales) mais considère ensuite que 2,15 < 2,345 parce que 15 a deux chiffres et 345 en a trois. Elle place 2,15 et 2,345 après 2,8 parce qu''ils ont « plus de chiffres après la virgule ». Ce type d''erreur révèle que l''élève n''a pas construit la signification positionnelle des chiffres décimaux : elle ne voit pas que 2,15 = 2 + 1/10 + 5/100 = 2,150, ce qui est inférieur à 2,345. Vergnaud explique que cette erreur provient d''un théorème-en-acte erroné : « plus il y a de chiffres, plus le nombre est grand », qui est vrai pour les entiers mais faux pour les décimaux. Brousseau préconise de confronter l''élève à une situation où cette règle échoue manifestement (par exemple, placer ces nombres sur une droite graduée). Éduscol recommande de travailler systématiquement l''équivalence des écritures (2,7 = 2,70 = 2,700) pour déconstruire cet obstacle.',
  'Ne pas identifier la stratégie spécifique de l''élève. Il ne s''agit pas d''une erreur aléatoire mais d''une stratégie cohérente fondée sur un théorème-en-acte erroné.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Intermediaire',
  'qcm',
  'Un enseignant souhaite concevoir une activité de remédiation pour des élèves de CM2 qui comparent mal les nombres décimaux (obstacle de la « règle du nombre entier »). Quelle démarche est la plus pertinente au regard de la didactique des mathématiques ?',
  NULL,
  '[{"id":"a","label":"Faire manipuler des bandes fractionnaires (dixièmes, centièmes) pour que les élèves constatent physiquement que 5 dixièmes > 45 centièmes, puis passer progressivement à la droite graduée et enfin à l''écriture symbolique"},{"id":"b","label":"Répéter la règle : on compare d''abord les dixièmes, puis les centièmes, et faire faire 50 exercices d''application directe"},{"id":"c","label":"Donner un contrôle noté pour motiver les élèves à apprendre la règle de comparaison"},{"id":"d","label":"Passer directement aux nombres décimaux négatifs pour que les élèves comprennent le système dans sa globalité"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La démarche la plus pertinente s''appuie sur le passage du concret à l''abstrait, conforme au modèle de Bruner (enactif → iconique → symbolique). Les bandes fractionnaires permettent une manipulation concrète : l''élève voit et touche que 5 bandes de dixièmes (= 0,5) représentent une plus grande surface que 45 bandes de centièmes (= 0,45). Ce constat sensoriel ébranle le théorème-en-acte erroné « 45 > 5 donc 0,45 > 0,5 ». Le passage ensuite à la droite graduée (registre graphique) consolide la compréhension en ajoutant la dimension de l''ordre. Enfin, l''écriture symbolique (0,45 < 0,50) prend sens car elle est ancrée dans l''expérience concrète. Vergnaud insiste sur le fait que les concepts ne se construisent pas par la seule répétition de règles mais par la confrontation à des situations variées. Brousseau montre que la remédiation doit créer un « conflit cognitif » : l''élève doit constater l''échec de sa stratégie actuelle. Éduscol recommande explicitement l''utilisation de matériel de manipulation et de la droite graduée pour surmonter les obstacles liés aux décimaux.',
  'Croire que la répétition mécanique d''une règle algorithmique suffit à surmonter un obstacle conceptuel. Sans compréhension du sens, l''élève appliquera la règle de manière superficielle.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Intermediaire',
  'reponse_courte',
  'Quel concept mathématique fondamental relie les fractions et les nombres décimaux dans l''enseignement au cycle 3, et constitue le pont entre ces deux écritures ? On attend le nom de ce type de fractions.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["fractions décimales","les fractions décimales","fraction décimale","Fractions décimales","Fraction décimale"]}'::jsonb,
  'Les fractions décimales (1/10, 1/100, 1/1000, et plus généralement toute fraction dont le dénominateur est une puissance de 10) constituent le pont fondamental entre les fractions et l''écriture décimale à virgule. Comprendre que 0,7 = 7/10 et que 0,45 = 45/100 = 4/10 + 5/100 est essentiel pour dépasser l''obstacle « deux entiers ». En passant par les fractions décimales, l''élève construit le sens de chaque chiffre après la virgule : le premier chiffre représente des dixièmes, le deuxième des centièmes, etc. Vergnaud montre que le champ conceptuel des décimaux inclut nécessairement les fractions décimales comme sous-ensemble structurant. Brousseau insiste sur le fait que l''introduction directe de l''écriture à virgule, sans passer par les fractions décimales, est un « raccourci didactique » dangereux qui favorise l''obstacle de la conception « deux entiers ». Les programmes Éduscol du cycle 3 prescrivent explicitement cette progression : d''abord les fractions décimales manipulées concrètement, puis l''écriture à virgule comme notation conventionnelle de ces fractions. Cette approche permet aussi de comprendre l''équivalence 0,5 = 0,50 (car 5/10 = 50/100).',
  'Introduire l''écriture décimale sans passer par les fractions décimales. Ce raccourci pédagogique prive l''élève du sens de l''écriture positionnelle.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;