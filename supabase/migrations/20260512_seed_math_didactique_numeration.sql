-- Seed: Didactique des mathématiques — Analyse de productions d'élèves (Numération)
-- Series: math_didactique_numeration (7 exercices)
-- Progression: Q1-Q2 Amorce · Q3-Q5 Consolidation · Q6-Q7 Approfondissement

-- ============================================================
-- Q1 — AMORCE — QCM — Erreur de numération positionnelle
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0090000-0000-0000-0000-000000000001', 'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Intermediaire', 'qcm',
  'Un élève de CE1 écrit « 10012 » pour « mille douze » (1012). Quel type d''erreur cette production révèle-t-elle ?',
  NULL,
  '[{"id":"a","label":"Erreur de numération positionnelle : l''élève juxtapose les segments oraux (« mille » → 1000, « douze » → 12) sans maîtriser le principe de position"},{"id":"b","label":"Erreur de calcul : l''élève a additionné 1000 et 12 incorrectement"},{"id":"c","label":"Erreur de lecture : l''élève a mal déchiffré l''énoncé écrit"},{"id":"d","label":"Erreur motrice : l''élève a simplement ajouté un chiffre de trop par maladresse"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Cette erreur est caractéristique de la **numération positionnelle** : l''élève traduit directement la chaîne orale en écriture chiffrée par juxtaposition. « Mille » devient 1000, « douze » devient 12, et il les met bout à bout → 10012. C''est un obstacle bien identifié en didactique des mathématiques (Brissiaud, Fayol). L''élève n''a pas encore compris que dans notre système de numération **décimal positionnel**, la valeur d''un chiffre dépend de sa position. La remédiation passe par un travail sur les groupements-échanges (matériel de numération) et la décomposition additive/multiplicative : 1012 = 1×1000 + 0×100 + 1×10 + 2×1.',
  'Confondre cette erreur avec une simple erreur de calcul ou une erreur motrice. Il s''agit d''un obstacle conceptuel lié à la compréhension du système de numération, pas d''une erreur superficielle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q2 — AMORCE — Vrai/Faux — Matériel de numération et compréhension
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0090000-0000-0000-0000-000000000002', 'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Intermediaire', 'vrai_faux',
  'L''utilisation du matériel base 10 (cubes-unités, barres-dizaines, plaques-centaines) suffit à elle seule pour que les élèves comprennent le principe de la numération positionnelle.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est **faux**. Selon la théorie des situations didactiques de **Brousseau**, la manipulation seule ne garantit pas la construction du savoir. Le matériel base 10 est un outil précieux, mais il doit s''inscrire dans une **situation-problème** qui donne du sens au principe de position. Sans activité réflexive (verbalisation, confrontation de procédures, institutionnalisation), l''élève peut manipuler correctement le matériel sans pour autant transférer cette compréhension à l''écriture chiffrée. C''est la distinction fondamentale entre **manipulation** et **conceptualisation**. Le rôle de l''enseignant est d''organiser le milieu didactique pour que l''élève passe de l''action à la formulation puis à la validation (les trois dialectiques de Brousseau).',
  'Penser que la manipulation physique entraîne automatiquement la compréhension conceptuelle. C''est un raccourci fréquent : le matériel est un support, pas une fin en soi.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q3 — CONSOLIDATION — QCM — Comparaison de décimaux
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0090000-0000-0000-0000-000000000003', 'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Intermediaire', 'qcm',
  'Un élève de CM1 compare 2,45 et 2,8. Il affirme : « 2,45 > 2,8 parce que 45 > 8 ». Identifiez l''obstacle didactique et la stratégie de remédiation la plus pertinente.',
  NULL,
  '[{"id":"a","label":"Obstacle épistémologique : l''élève applique la règle de comparaison des entiers naturels à la partie décimale. Remédiation : travailler sur la droite graduée et l''équivalence 2,8 = 2,80"},{"id":"b","label":"Obstacle didactique : l''élève n''a pas appris la règle de comparaison. Remédiation : lui redonner la règle et la faire appliquer sur des exercices d''entraînement"},{"id":"c","label":"Erreur d''inattention ponctuelle. Remédiation : demander à l''élève de relire sa réponse"},{"id":"d","label":"Obstacle lié à la lecture : l''élève confond la virgule avec un séparateur de deux nombres entiers. Remédiation : travailler uniquement la lecture à voix haute des nombres décimaux"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Il s''agit d''un **obstacle épistémologique** majeur dans l''apprentissage des décimaux, identifié notamment par **Brousseau** et **Douady** : l''élève transfère abusivement les règles de comparaison des entiers naturels aux nombres décimaux. Il traite « 45 » et « 8 » comme deux entiers indépendants, sans comprendre que 2,8 = 2,80, et donc que 2,80 > 2,45. La remédiation doit s''appuyer sur des **situations-problèmes** utilisant la droite graduée, les conversions d''unités (€, m/cm) et l''écriture avec même nombre de décimales. La réponse (b) est insuffisante car « redonner la règle » relève du contrat didactique classique mais ne traite pas l''obstacle. La réponse (d) n''est que partiellement correcte : la lecture est un levier, mais pas le seul.',
  'Choisir la réponse (b) en pensant qu''il suffit de rappeler la règle. Un obstacle épistémologique ne se résout pas par la simple répétition d''une procédure : il nécessite une situation de rupture qui déstabilise la conception erronée.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q4 — CONSOLIDATION — Réponse courte — Soustraction avec retenue
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0090000-0000-0000-0000-000000000004', 'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Intermediaire', 'reponse_courte',
  'Un élève de CE2 effectue la soustraction 742 − 168 et obtient 426. On observe qu''à chaque colonne où le chiffre du bas est plus grand, il soustrait le plus petit du plus grand (8−2=6, 6−4=2, 7−1=6) au lieu d''effectuer une retenue. Quel terme didactique désigne précisément ce type d''erreur systématique liée à une conception erronée de la soustraction ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["bug","bug algorithmique","bug dans l''algorithme","erreur systématique","erreur algorithmique"]}'::jsonb,
  'Cette erreur est qualifiée de **« bug » algorithmique** dans la littérature didactique (Brown & VanLehn, 1980). L''élève applique une **procédure systématique mais erronée** : à chaque colonne, il soustrait le plus petit chiffre du plus grand, quelle que soit sa position (haut ou bas). Ce n''est pas une erreur aléatoire mais un **algorithme incorrect** construit par l''élève, révélant une incompréhension du principe de la retenue (échange d''une dizaine contre dix unités). En termes de **contrat didactique**, l''élève cherche à « toujours trouver une réponse » et construit une règle qui lui permet d''aboutir à un résultat dans tous les cas. La remédiation doit reprendre le sens de la soustraction avec du matériel de groupements-échanges pour donner du sens à la retenue.',
  'Parler d''une simple « erreur de calcul » ou d''un « manque d''attention ». Ce type d''erreur est systématique et révèle une conception erronée de l''algorithme, pas un manque de vigilance.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q5 — CONSOLIDATION — QCM — Variable didactique et droite graduée
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0090000-0000-0000-0000-000000000005', 'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Intermediaire', 'qcm',
  'Un enseignant utilise une droite graduée pour travailler le placement de nombres décimaux en CM2. Il passe d''une droite graduée au dixième à une droite graduée au centième. Quelle variable didactique modifie-t-il principalement ?',
  NULL,
  '[{"id":"a","label":"La variable didactique « granularité de la graduation » : en affinant le pas de graduation, l''enseignant rend visibles les centièmes et force les élèves à reconsidérer la densité des décimaux"},{"id":"b","label":"La variable didactique « taille des nombres » : les nombres deviennent plus grands avec des centièmes"},{"id":"c","label":"La variable didactique « modalité de représentation » : on passe d''un support concret à un support abstrait"},{"id":"d","label":"La variable didactique « contexte numérique » : on change de domaine numérique (des entiers aux décimaux)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La **variable didactique** modifiée est la **granularité (ou pas) de la graduation**. Selon la théorie des situations de **Brousseau**, une variable didactique est un paramètre de la situation que l''enseignant peut modifier pour changer la nature des stratégies attendues. En passant du dixième au centième, l''enseignant modifie le « grain » de la droite : les élèves doivent alors concevoir qu''entre 2,4 et 2,5 existent dix positions (2,41, 2,42…), ce qui travaille la **densité de l''ensemble des décimaux** et combat l''obstacle de « nombre suivant » hérité des entiers. La réponse (b) est incorrecte : les nombres ne sont pas plus grands, ils sont plus précis. La réponse (c) est fausse car on reste sur le même type de support (droite graduée). La réponse (d) est hors sujet : on reste dans les décimaux.',
  'Confondre « variable didactique » avec « changement de support pédagogique ». Modifier la graduation d''une même droite est bien un changement de variable didactique au sens de Brousseau, car cela modifie les procédures de résolution des élèves.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q6 — APPROFONDISSEMENT — Réponse courte — Obstacle commun et remédiation
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0090000-0000-0000-0000-000000000006', 'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Intermediaire', 'reponse_courte',
  'Un élève de CM1 produit les erreurs suivantes : il affirme que 3,7 > 3,14 « parce que 7 > 14, non, 14 > 7, donc 3,14 > 3,7 », il écrit 0,6 + 0,7 = 0,13, et il place 2,35 après 2,4 sur la droite graduée car « 35 > 4 ». Identifiez l''obstacle commun sous-jacent à ces trois erreurs en utilisant le vocabulaire didactique approprié.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["obstacle des nombres entiers","obstacle du nombre entier","règle du nombre entier","conception entière des décimaux","application des règles des entiers aux décimaux","obstacle entier"]}'::jsonb,
  'Ces trois erreurs relèvent du même **obstacle épistémologique** identifié par Brousseau et largement étudié par **Douady** et **Perrin-Glorian** : l''**obstacle des nombres entiers** (ou « whole number bias »). L''élève applique systématiquement les propriétés des entiers naturels aux décimaux :\n\n1. **Comparaison** : il compare les parties décimales comme des entiers (35 > 4, donc 2,35 > 2,4)\n2. **Addition** : il additionne les parties décimales comme des entiers (6 + 7 = 13, donc 0,6 + 0,7 = 0,13)\n3. **Placement** : il ordonne en comparant les « nombres après la virgule »\n\nLa **remédiation** doit proposer des **situations-problèmes** qui créent un **conflit cognitif** : par exemple, utiliser des contextes monétaires (0,6 € = 60 centimes, 0,7 € = 70 centimes → 1,30 € et non 0,13 €), ou des mesures de longueur. Le travail sur l''équivalence des écritures (0,6 = 0,60) est un levier essentiel pour dépasser cet obstacle.',
  'Identifier trois obstacles différents au lieu de reconnaître un obstacle unique sous-jacent. La capacité à repérer un obstacle commun à travers des manifestations variées est une compétence clé du CRPE.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Q7 — APPROFONDISSEMENT — Réponse courte — Fractions et cadre de Vergnaud
-- ============================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0090000-0000-0000-0000-000000000007', 'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Intermediaire', 'reponse_courte',
  'Une classe de CM2 travaille sur les fractions. Plusieurs élèves écrivent 1/4 + 1/4 = 2/8. En vous appuyant sur le cadre théorique de Vergnaud (champs conceptuels), identifiez le théorème-en-acte erroné mobilisé par ces élèves et proposez le type de situation didactique permettant de dépasser cette erreur.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["théorème-en-acte","theoreme-en-acte","théorème en acte","theoreme en acte","schème erroné","scheme errone"]}'::jsonb,
  'Dans le cadre des **champs conceptuels de Vergnaud**, les élèves mobilisent ici un **théorème-en-acte** erroné : « pour additionner deux fractions, on additionne les numérateurs entre eux ET les dénominateurs entre eux » (1+1=2 et 4+4=8, donc 2/8). Ce théorème-en-acte est un **schème** construit par analogie avec l''addition des entiers naturels et révèle que les élèves n''ont pas construit le concept de fraction comme **mesure d''une quantité par rapport à une unité**.\n\nSelon Vergnaud, un **schème** est une organisation invariante de l''activité pour une classe de situations. Ici, le schème d''addition des entiers est transféré abusivement aux fractions.\n\nLa **situation didactique** de remédiation doit :\n1. Créer un **conflit cognitif** : montrer avec du matériel (bandes de papier, pizzas) que 1/4 + 1/4 = 2/4 = 1/2, et que 2/8 = 1/4 ≠ 1/2\n2. S''appuyer sur le **sens** de la fraction : revenir à la fraction comme partage d''une unité (situation de **Brousseau** type « partage du gâteau »)\n3. Varier les représentations : aire, longueur, droite graduée pour enrichir le **champ conceptuel** des fractions\n\nL''institutionnalisation doit expliciter que le dénominateur représente « en combien de parts égales on a coupé » et ne change pas quand on ajoute des parts de même taille.',
  'Ne pas identifier le théorème-en-acte sous-jacent et se contenter de dire que « l''élève ne connaît pas la règle ». Le cadre de Vergnaud demande d''analyser les conceptions implicites (schèmes) qui guident l''action de l''élève.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
