-- Seed: Résolution de problèmes — Démarche de Pólya (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc110000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Intermediaire',
  'qcm',
  'George Pólya a formalisé une démarche de résolution de problèmes en quatre étapes. Quelle est la séquence correcte de ces étapes ?',
  NULL,
  '[{"id":"a","label":"Comprendre le problème — Concevoir un plan — Exécuter le plan — Revenir sur la solution (examiner)"},{"id":"b","label":"Lire l''énoncé — Calculer — Vérifier — Recopier au propre"},{"id":"c","label":"Identifier les données — Appliquer une formule — Obtenir le résultat — Encadrer la réponse"},{"id":"d","label":"Deviner la réponse — Essayer — Recommencer si échec — Demander au professeur"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Dans son ouvrage fondateur « How to Solve It » (1945), Pólya propose quatre étapes pour résoudre un problème mathématique : (1) Comprendre le problème : identifier ce qui est donné, ce qui est demandé, les conditions, reformuler l''énoncé dans ses propres mots. (2) Concevoir un plan : choisir une stratégie (faire un schéma, chercher un problème analogue, décomposer en sous-problèmes, raisonner à rebours, essayer un cas particulier). (3) Exécuter le plan : mettre en œuvre la stratégie choisie avec rigueur, en vérifiant chaque étape. (4) Revenir sur la solution : vérifier le résultat, examiner si une autre méthode était possible, généraliser. Vergnaud complète cette approche en montrant que la résolution de problèmes mobilise des schèmes — des organisations invariantes de l''activité — qui se développent au sein de champs conceptuels spécifiques. Brousseau montre que le problème mathématique, dans une situation a-didactique, doit résister suffisamment pour que l''élève développe ses propres stratégies. Éduscol intègre explicitement la démarche de Pólya dans les recommandations pour l''enseignement de la résolution de problèmes aux cycles 2 et 3.',
  'Réduire la résolution de problèmes à « lire-calculer-répondre ». La démarche de Pólya insiste sur les phases de compréhension et de retour réflexif, souvent négligées.',
  'valide',
  'Génération Claude — Terminologie Pólya / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc110000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Intermediaire',
  'vrai_faux',
  'Un élève de CE2 lit un problème, souligne les nombres, effectue immédiatement une addition et écrit une réponse. Selon la démarche de Pólya, cet élève a sauté l''étape essentielle de « comprendre le problème » et s''est directement lancé dans l''exécution sans concevoir de plan.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Ce comportement, très fréquent chez les élèves, illustre le « réflexe opératoire » : l''élève cherche immédiatement « quelle opération faire » sans prendre le temps de comprendre la situation décrite par le problème. Selon Pólya, l''étape 1 (comprendre le problème) est cruciale : elle consiste à identifier les données pertinentes, la question posée, reformuler l''énoncé, éventuellement faire un schéma. L''élève décrit ici a sauté les étapes 1 et 2 pour passer directement à l''étape 3 (exécuter), sans même avoir conçu de plan (étape 2). Vergnaud montre que ce réflexe opératoire est souvent le résultat d''un contrat didactique implicite : les élèves apprennent que « faire des maths = calculer », et que tout problème se résout par une opération immédiate sur les nombres de l''énoncé. Brousseau parle d''un « effet de contrat » : l''élève répond à ce qu''il croit être l''attente de l''enseignant plutôt qu''au problème lui-même. Éduscol recommande d''enseigner explicitement les stratégies de compréhension de l''énoncé : reformulation orale, schématisation, identification des données utiles et inutiles.',
  'Croire que la rapidité de calcul est un signe de compétence en résolution de problèmes. La capacité à s''arrêter pour comprendre est bien plus déterminante.',
  'valide',
  'Génération Claude — Terminologie Pólya / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc110000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Intermediaire',
  'qcm',
  'Parmi les stratégies heuristiques suivantes, laquelle correspond à la recommandation de Pólya de « chercher un problème apparenté plus simple » ?',
  'Un élève de CM1 doit résoudre : « Un jardin rectangulaire de 12,5 m de long et 8,3 m de large est entouré d''une clôture. Quelle est la longueur totale de clôture nécessaire ? »',
  '[{"id":"a","label":"L''élève remplace d''abord les décimaux par des entiers proches (13 m et 8 m) pour estimer le résultat, puis calcule avec les valeurs exactes"},{"id":"b","label":"L''élève apprend par cœur la formule du périmètre et l''applique mécaniquement"},{"id":"c","label":"L''élève demande à son voisin comment faire"},{"id":"d","label":"L''élève essaie toutes les opérations possibles (addition, soustraction, multiplication, division) et choisit le résultat qui « semble correct »"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La stratégie de simplification est une heuristique fondamentale dans la démarche de Pólya. Elle consiste à remplacer le problème donné par un problème plus simple de même structure, à le résoudre, puis à transférer la méthode au problème original. Ici, remplacer 12,5 par 13 et 8,3 par 8 permet à l''élève de travailler d''abord avec des entiers (périmètre ≈ 2 × (13 + 8) = 42 m), de comprendre la structure du problème (il s''agit d''un périmètre), puis de reprendre le calcul avec les valeurs décimales exactes (2 × (12,5 + 8,3) = 41,6 m). L''estimation sert aussi de contrôle : si le calcul exact donne un résultat très éloigné de 42, l''élève sait qu''il a probablement fait une erreur. Vergnaud montre que cette stratégie de simplification mobilise un schème de contrôle qui permet de valider le résultat obtenu. Brousseau souligne que la capacité d''estimation est un indicateur de compréhension conceptuelle. Éduscol recommande explicitement de développer les compétences d''estimation et d''ordre de grandeur dès le cycle 2.',
  'Confondre « simplifier le problème » avec « sauter des étapes ». Simplifier consiste à travailler sur un cas plus accessible tout en préservant la structure mathématique du problème.',
  'valide',
  'Génération Claude — Terminologie Pólya / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc110000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Intermediaire',
  'reponse_courte',
  'Dans la démarche de Pólya, la quatrième et dernière étape consiste à revenir sur la solution obtenue. Quel est le terme utilisé par Pólya en anglais pour désigner cette phase réflexive ? (Répondez en un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["looking back","Looking back","Look back","look back"]}'::jsonb,
  'Pólya nomme cette quatrième étape « Looking back » (revenir en arrière, examiner la solution). Cette phase est souvent la plus négligée dans l''enseignement, alors qu''elle est cruciale pour le développement des compétences mathématiques. Elle consiste à : vérifier que le résultat est cohérent avec l''énoncé, chercher une autre méthode de résolution, se demander si le résultat peut être généralisé, identifier ce qui a été appris. Vergnaud montre que cette phase de retour réflexif permet la décontextualisation des schèmes : l''élève passe d''une solution particulière à une stratégie transférable. C''est un moment clé de la métacognition — la capacité de l''élève à réfléchir sur ses propres processus de pensée. Brousseau insiste sur l''importance de l''institutionnalisation qui suit cette phase : l''enseignant aide les élèves à formuler explicitement ce qu''ils ont appris. Éduscol recommande de consacrer du temps en classe à cette phase de retour, notamment par des échanges entre élèves sur leurs différentes stratégies de résolution.',
  'Sauter systématiquement l''étape de vérification et de retour réflexif. Cette étape développe la métacognition et la capacité de transfert.',
  'valide',
  'Génération Claude — Terminologie Pólya / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc110000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Intermediaire',
  'qcm',
  'Quel rôle la métacognition joue-t-elle dans la résolution de problèmes selon la perspective de Pólya et des recherches en didactique ?',
  NULL,
  '[{"id":"a","label":"La métacognition est secondaire : seule la maîtrise des techniques de calcul compte en résolution de problèmes"},{"id":"b","label":"La métacognition permet à l''élève de piloter sa démarche : savoir où il en est, évaluer l''efficacité de sa stratégie, décider de changer d''approche si nécessaire"},{"id":"c","label":"La métacognition est une compétence innée qui ne peut pas être enseignée"},{"id":"d","label":"La métacognition ne concerne que les élèves en difficulté, les bons élèves n''en ont pas besoin"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La métacognition — la capacité de réfléchir sur ses propres processus de pensée — est au cœur de la démarche de Pólya. À chaque étape, l''élève doit se poser des questions sur sa propre activité : « Ai-je bien compris le problème ? » (étape 1), « Ma stratégie est-elle pertinente ? » (étape 2), « Mon calcul est-il correct ? » (étape 3), « Mon résultat est-il plausible ? » (étape 4). Les questions heuristiques de Pólya sont essentiellement des outils métacognitifs. Les recherches montrent que les élèves experts en résolution de problèmes se distinguent des novices non par leur rapidité de calcul mais par leur capacité de pilotage métacognitif : ils s''arrêtent régulièrement pour évaluer leur progression. Vergnaud montre que les schèmes de contrôle (vérification, anticipation) sont des composantes essentielles de la compétence mathématique. Brousseau souligne que le contrat didactique traditionnel (l''enseignant valide, l''élève exécute) freine le développement de la métacognition. Éduscol recommande d''enseigner explicitement des stratégies métacognitives : se relire, vérifier, expliquer sa démarche à un pair.',
  'Réduire la compétence en résolution de problèmes à la maîtrise du calcul. La métacognition est un facteur déterminant de réussite, et elle peut être enseignée.',
  'valide',
  'Génération Claude — Terminologie Pólya / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc110000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Intermediaire',
  'qcm',
  'Un enseignant observe qu''un élève de CM2 est bloqué devant un problème. Conformément aux principes de Pólya et de la didactique, quelle posture l''enseignant doit-il adopter pour aider l''élève sans lui donner la réponse ?',
  'Problème : « Marie a 3 fois plus de billes que Paul. Ensemble, ils ont 48 billes. Combien de billes a chacun ? »',
  '[{"id":"a","label":"Poser des questions orientantes : « Peux-tu dessiner la situation ? Si Paul a un certain nombre de billes, combien Marie en a-t-elle en fonction de celui de Paul ? »"},{"id":"b","label":"Montrer directement la solution au tableau et demander à l''élève de la recopier"},{"id":"c","label":"Dire à l''élève qu''il doit diviser 48 par 4"},{"id":"d","label":"Passer à un autre exercice plus facile pour ne pas décourager l''élève"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La posture de l''enseignant recommandée par Pólya est celle du « questionnement socratique » : poser des questions qui guident l''élève vers la solution sans la lui révéler. Les questions « Peux-tu dessiner la situation ? » et « Combien Marie en a-t-elle en fonction de Paul ? » correspondent aux heuristiques de Pólya : faire un schéma (étape 2) et reformuler les relations (étape 1). Le schéma (par exemple, des paquets de billes : un paquet pour Paul, trois paquets pour Marie) permet de visualiser que 48 billes se répartissent en 4 parts égales. Vergnaud montre que le rôle de l''enseignant est d''aider l''élève à mobiliser ses schèmes existants, pas de se substituer à son activité cognitive. Brousseau distingue la « dévolution » (l''élève accepte la responsabilité du problème) de l''« effet Topaze » (l''enseignant simplifie tellement la tâche que l''élève n''a plus rien à chercher). Donner directement « divise par 4 » serait un effet Topaze typique. Éduscol insiste sur l''étayage progressif : l''aide doit être la plus légère possible pour maintenir l''activité de recherche de l''élève.',
  'Donner trop rapidement la procédure de résolution. L''effet Topaze (Brousseau) prive l''élève de l''activité de recherche qui est au cœur de l''apprentissage.',
  'valide',
  'Génération Claude — Terminologie Pólya / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc110000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Intermediaire',
  'vrai_faux',
  'Un enseignant conçoit un problème à étapes pour ses élèves de CM1 : il découpe le problème en trois sous-questions guidées (« Calcule d''abord... puis... puis... »). Selon la démarche de Pólya, ce découpage en sous-questions correspond à la stratégie heuristique de « décomposer le problème en sous-problèmes », mais il prive l''élève de l''étape 2 (concevoir un plan) si c''est l''enseignant qui effectue le découpage.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Cette affirmation met en lumière une tension didactique importante. La décomposition en sous-problèmes est bien une stratégie heuristique de Pólya (étape 2 : concevoir un plan). Cependant, quand c''est l''enseignant qui effectue le découpage en fournissant les sous-questions, il réalise le travail intellectuel de planification à la place de l''élève. L''élève n''a plus qu''à exécuter des calculs isolés (étape 3) sans avoir eu à comprendre la structure globale du problème (étape 1) ni à élaborer sa propre stratégie (étape 2). Vergnaud montre que la compétence de décomposition est elle-même un schème qui doit être construit par l''élève à travers la résolution de nombreux problèmes. Brousseau alerte sur ce qu''il appelle le « glissement métacognitif » : à force d''enseigner la méthode (le découpage), l''enseignant finit par faire l''essentiel du travail cognitif. L''enjeu pédagogique est de progressivement retirer l''étayage : d''abord des problèmes guidés, puis des problèmes avec des aides partielles, enfin des problèmes ouverts où l''élève conçoit seul son plan. Éduscol recommande cette progression explicite vers l''autonomie en résolution de problèmes.',
  'Croire que le découpage en sous-questions par l''enseignant est toujours bénéfique. Il est utile pour l''apprentissage initial mais doit être progressivement retiré.',
  'valide',
  'Génération Claude — Terminologie Pólya / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;