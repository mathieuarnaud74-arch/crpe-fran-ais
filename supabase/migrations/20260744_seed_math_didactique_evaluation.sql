-- Seed: Évaluation en mathématiques — Types et outils (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc090000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils', 'Intermediaire',
  'qcm',
  'En début d''année de CM1, vous souhaitez identifier les acquis et les lacunes de vos élèves en numération avant de commencer la séquence sur les grands nombres. Quel type d''évaluation mettez-vous en place ?',
  NULL,
  '[{"id":"a","label":"Une évaluation diagnostique pour repérer les conceptions initiales et adapter votre enseignement"},{"id":"b","label":"Une évaluation sommative pour noter le niveau de départ des élèves"},{"id":"c","label":"Une évaluation formative pour réguler l''apprentissage en cours"},{"id":"d","label":"Une évaluation certificative pour valider les compétences du cycle 2"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''évaluation diagnostique se situe en amont de l''apprentissage. Son objectif est d''identifier les conceptions initiales des élèves, leurs acquis et leurs obstacles potentiels, afin d''adapter l''enseignement. Elle ne donne pas lieu à une note et ne sanctionne pas. Dans le cas de la numération en CM1, elle permet de repérer, par exemple, si certains élèves manifestent encore l''obstacle de la « concaténation » (écrire « 10012 » pour « mille douze »), ou s''ils maîtrisent la valeur positionnelle des chiffres. L''évaluation sommative intervient en fin de séquence pour dresser un bilan. L''évaluation formative, elle, accompagne l''apprentissage en cours. Éduscol distingue clairement ces trois fonctions de l''évaluation et recommande la mise en œuvre régulière d''évaluations diagnostiques pour différencier dès le départ.',
  'Confondre évaluation diagnostique et évaluation sommative. La diagnostique n''a pas vocation à noter — elle sert à connaître les élèves pour enseigner mieux.',
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
  'fc090000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils', 'Intermediaire',
  'vrai_faux',
  'L''évaluation formative a pour objectif principal de noter les élèves et de classer leurs performances les unes par rapport aux autres.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'L''évaluation formative n''a pas pour objectif de noter ni de classer les élèves. Sa fonction est de réguler l''apprentissage en cours : elle fournit des informations à l''enseignant (pour adapter son enseignement) et à l''élève (pour qu''il identifie ses erreurs et progresse). Elle se situe pendant la séquence d''apprentissage, pas à la fin. Les outils de l''évaluation formative incluent l''observation directe, les brouillons, les exercices d''entraînement avec feedback, les entretiens individuels, les tickets de sortie. Éduscol insiste sur le fait que l''évaluation formative est le levier le plus puissant de la différenciation pédagogique : elle permet d''identifier les besoins en temps réel et d''y répondre immédiatement (remédiation, approfondissement, changement de représentation). C''est l''évaluation normative qui classe les élèves les uns par rapport aux autres.',
  'Confondre évaluation formative et sommative. La formative est au service de l''apprentissage (pas de note, pas de classement), tandis que la sommative dresse un bilan en fin de séquence.',
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
  'fc090000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils', 'Intermediaire',
  'qcm',
  'Après une évaluation sommative sur les fractions en CM1, vous constatez que 12 élèves sur 25 font la même erreur : ils additionnent numérateurs et dénominateurs (1/3 + 1/4 = 2/7). Quelle analyse des erreurs est la plus pertinente ?',
  NULL,
  '[{"id":"a","label":"Ces élèves n''ont pas révisé — il faut leur redonner le contrôle"},{"id":"b","label":"Cette erreur récurrente et systématique révèle un obstacle conceptuel : les élèves traitent numérateur et dénominateur comme deux nombres indépendants, sans comprendre que la fraction est un seul nombre. Il faut concevoir une remédiation ciblée"},{"id":"c","label":"Les élèves ont copié les uns sur les autres puisque l''erreur est identique"},{"id":"d","label":"C''est une erreur d''étourderie qui se corrigera d''elle-même avec le temps"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Quand une erreur est récurrente (12 élèves sur 25) et systématique (même type d''erreur : addition des numérateurs ET des dénominateurs), elle ne relève pas de l''inattention mais d''un obstacle conceptuel. Les élèves appliquent aux fractions les règles de calcul des entiers : ils traitent numérateur et dénominateur comme deux nombres séparés qu''on additionne indépendamment. Cela révèle une conception erronée de la fraction : elle n''est pas perçue comme un nombre unique sur la droite numérique, mais comme un couple de nombres. C''est un obstacle épistémologique classique (Brousseau) lié à l''extension du champ numérique. L''analyse des erreurs en évaluation sommative doit distinguer les erreurs ponctuelles (inattention) des erreurs systématiques (obstacle). Éduscol recommande de concevoir une remédiation ciblée : revenir au sens de la fraction (part d''un tout, position sur la droite numérique) avant de retravailler les opérations.',
  'Attribuer une erreur systématique et récurrente à l''inattention ou au manque de travail. Une erreur commise par la moitié de la classe signale un problème d''apprentissage, pas un problème de motivation.',
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
  'fc090000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils', 'Intermediaire',
  'reponse_courte',
  'En évaluation, on distingue deux approches pour interpréter les résultats. L''évaluation normative compare les élèves entre eux (classement). Comment appelle-t-on l''approche qui évalue l''élève par rapport à des critères de réussite prédéfinis, indépendamment du niveau des autres élèves ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["évaluation critériée","l''évaluation critériée","Évaluation critériée","L''évaluation critériée","critériée","evaluation criteriee","Evaluation criteriee"]}'::jsonb,
  'Il s''agit de l''évaluation critériée. Contrairement à l''évaluation normative (qui positionne chaque élève par rapport au groupe — courbe de Gauss, rang, percentile), l''évaluation critériée mesure la maîtrise de chaque élève par rapport à des critères de réussite explicites et prédéfinis. Par exemple : « L''élève sait comparer deux fractions de dénominateurs différents » est un critère ; l''élève le satisfait ou non, quel que soit le niveau des autres. Les programmes Éduscol et le socle commun de compétences s''inscrivent dans une logique critériée : on évalue la maîtrise de compétences identifiées, pas le rang dans la classe. L''évaluation critériée favorise la différenciation (chaque élève sait précisément ce qu''il maîtrise et ce qu''il doit travailler) et réduit les effets délétères de la compétition scolaire.',
  'Confondre évaluation critériée et évaluation normative. La critériée dit « tu sais/ne sais pas faire ceci » ; la normative dit « tu es meilleur/moins bon que les autres ».',
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
  'fc090000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils', 'Intermediaire',
  'qcm',
  'Les « grilles de réussite » (ou « ceintures de compétences ») sont des outils d''auto-évaluation utilisés en classe. Quel est leur principal intérêt didactique en mathématiques ?',
  NULL,
  '[{"id":"a","label":"Elles permettent à l''enseignant de noter plus rapidement les élèves"},{"id":"b","label":"Elles développent la métacognition de l''élève : il identifie lui-même ce qu''il sait faire, ce qu''il doit travailler, et suit sa progression dans le temps"},{"id":"c","label":"Elles remplacent toutes les autres formes d''évaluation"},{"id":"d","label":"Elles classent les élèves par niveau de façon visible dans la classe"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les grilles de réussite sont des outils d''auto-évaluation qui favorisent la métacognition — la capacité de l''élève à réfléchir sur son propre apprentissage. En mathématiques, une grille de réussite peut lister des compétences précises (« Je sais poser une addition avec retenue », « Je sais comparer deux fractions simples ») que l''élève coche ou colorie au fur et à mesure de sa progression. L''intérêt est triple : (1) l''élève devient acteur de son évaluation et développe son autonomie ; (2) il identifie précisément ses points forts et ses lacunes, ce qui oriente son travail ; (3) il visualise sa progression dans le temps, ce qui soutient la motivation. Les ceintures de compétences (inspirées de la pédagogie Freinet) ajoutent une dimension de progression graduée. Éduscol recommande ces outils dans le cadre de l''évaluation formative et de la différenciation. Ils ne remplacent pas les autres formes d''évaluation mais les complètent.',
  'Croire que l''auto-évaluation n''est pas fiable chez les jeunes élèves. La recherche montre que, guidés par des critères clairs, même les élèves de cycle 2 peuvent s''auto-évaluer de façon pertinente.',
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
  'fc090000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils', 'Intermediaire',
  'vrai_faux',
  'Le référentiel de compétences mathématiques d''Éduscol pour le cycle 3 identifie six compétences majeures : chercher, modéliser, représenter, raisonner, calculer et communiquer.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Les programmes de mathématiques du cycle 3 (et du cycle 4) s''articulent autour de six compétences majeures transversales : Chercher (s''engager dans une démarche, tester, conjecturer), Modéliser (traduire un problème en langage mathématique), Représenter (utiliser des schémas, tableaux, graphiques), Raisonner (justifier, démontrer, argumenter), Calculer (maîtriser les procédures de calcul — mental, posé, instrumenté), et Communiquer (exprimer sa démarche, utiliser le vocabulaire mathématique). Ces six compétences structurent l''évaluation en mathématiques : une évaluation complète ne doit pas se limiter à « calculer » mais doit aussi évaluer la capacité à chercher, modéliser ou raisonner. Par exemple, un problème ouvert évalue principalement « chercher » et « raisonner », tandis qu''un exercice de calcul posé évalue « calculer ». Éduscol fournit des repères de progression pour chaque compétence à chaque niveau du cycle.',
  'Réduire l''évaluation en mathématiques à la seule compétence « calculer ». Les six compétences ont la même importance dans les programmes et doivent toutes être évaluées régulièrement.',
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
  'fc090000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils', 'Intermediaire',
  'qcm',
  'Vous devez concevoir une grille d''évaluation critériée pour une séquence de géométrie en CM2 portant sur les triangles (classification, construction, propriétés). Quelle démarche est la plus pertinente pour construire cette grille ?',
  NULL,
  '[{"id":"a","label":"Lister les exercices du manuel et attribuer un nombre de points à chacun"},{"id":"b","label":"Identifier les compétences visées dans les programmes (ex : reconnaître et nommer les triangles particuliers, construire un triangle aux instruments, justifier une propriété), définir des critères de réussite observables pour chacune, et prévoir des indicateurs de niveaux de maîtrise"},{"id":"c","label":"Reprendre la grille d''évaluation d''un collègue sans l''adapter à votre séquence"},{"id":"d","label":"Faire une seule évaluation finale avec une note sur 20 et une appréciation globale"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La construction d''une grille d''évaluation critériée suit une démarche rigoureuse en trois étapes. (1) Identifier les compétences visées dans les programmes Éduscol et le socle commun : pour les triangles en CM2, cela inclut « reconnaître et nommer les triangles particuliers (équilatéral, isocèle, rectangle) », « construire un triangle connaissant la longueur de ses côtés », « utiliser les propriétés des triangles pour résoudre des problèmes ». (2) Définir des critères de réussite observables et mesurables pour chaque compétence : par exemple, « L''élève identifie correctement le type de triangle à partir de ses propriétés (côtés, angles) ». (3) Prévoir des niveaux de maîtrise (insuffisant, fragile, satisfaisant, très bonne maîtrise) avec des indicateurs concrets. Cette grille sert à la fois d''outil d''évaluation pour l''enseignant et d''outil de communication avec l''élève et sa famille. Elle s''inscrit dans la logique du livret scolaire unique (LSU) et de l''évaluation par compétences recommandée par Éduscol.',
  'Confondre évaluation critériée et notation chiffrée. La grille critériée évalue des compétences identifiées avec des niveaux de maîtrise — elle est plus informative qu''une note globale sur 20.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
