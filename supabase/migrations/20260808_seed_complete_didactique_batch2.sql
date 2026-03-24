-- =============================================================================
-- Batch 2 : Complétion des 18 séries didactique_maths (Q8, Q9, Q10 par série)
-- Total : 54 exercices | Niveaux : Intermediaire / Avance | Access : free
-- =============================================================================

-- ============================================================
-- SÉRIE 1 : math_didactique_jeux_mathematiques (prefix fc0c0000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0c0000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Intermediaire',
  'qcm',
  'Un enseignant de CM1 propose le jeu de Nim : deux joueurs retirent à tour de rôle 1, 2 ou 3 jetons d''un tas de 20 jetons. Celui qui prend le dernier jeton a gagné. Quel est l''intérêt didactique principal de ce type de jeu en mathématiques ?',
  NULL,
  '[{"id":"a","label":"Il entraîne exclusivement la mémorisation des tables de multiplication"},{"id":"b","label":"Il développe le raisonnement stratégique par anticipation : l''élève doit raisonner à rebours (« pour gagner, je dois laisser 4 jetons, donc je dois laisser 8, donc 12… ») et découvrir un invariant mathématique"},{"id":"c","label":"Il ne sert qu''à remplir les fins de séances sans objectif d''apprentissage"},{"id":"d","label":"Il évalue la vitesse de calcul mental des élèves"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le jeu de Nim est un classique de la théorie des jeux utilisé en didactique des mathématiques. Son intérêt principal réside dans le développement du raisonnement régressif (raisonner à rebours) : pour gagner, il faut laisser à l''adversaire un multiple de 4 jetons (4, 8, 12, 16, 20). L''élève découvre progressivement cette stratégie gagnante par essais-erreurs, puis par réflexion. Ce jeu mobilise des compétences de raisonnement logique, d''anticipation et de recherche de régularités — compétences transversales en mathématiques. Brousseau utilise ce type de jeu comme exemple de situation adidactique : le milieu (les règles du jeu et les rétroactions de l''adversaire) fournit à l''élève les informations nécessaires pour construire sa stratégie. Éduscol recommande les jeux de stratégie combinatoire pour développer la compétence « Chercher » des programmes.',
  'Croire que les jeux de stratégie comme le Nim ne sont que des divertissements. Ils développent des compétences mathématiques profondes : raisonnement logique, recherche d''invariants, preuve de l''optimalité d''une stratégie.',
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
  'fc0c0000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Intermediaire',
  'reponse_courte',
  'Lors de l''exploitation didactique d''un jeu mathématique en classe, l''enseignant organise une phase collective après le jeu où les élèves explicitent leurs stratégies, les comparent et formalisent les savoirs mathématiques mobilisés. Comment appelle-t-on cette phase dans la théorie des situations didactiques de Brousseau ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["institutionnalisation","l''institutionnalisation","Institutionnalisation","L''institutionnalisation","phase d''institutionnalisation"]}'::jsonb,
  'La phase d''institutionnalisation est le moment où l''enseignant reprend la main après la phase adidactique (le jeu) pour officialiser les savoirs construits par les élèves. Pendant le jeu, les élèves ont construit des stratégies et des connaissances de manière informelle. L''institutionnalisation permet de passer du savoir personnel (construit dans l''action) au savoir partagé et reconnu (formalisé et nommé). Par exemple, après un jeu de Nim, l''institutionnalisation portera sur la stratégie gagnante et la notion de multiple. Brousseau insiste sur le fait que cette phase est indispensable : sans elle, le jeu reste un moment ludique sans trace d''apprentissage identifiable. Éduscol recommande systématiquement un temps de retour réflexif après chaque activité de jeu mathématique.',
  'Omettre la phase d''institutionnalisation après un jeu mathématique. Le jeu produit des connaissances en acte, mais celles-ci doivent être explicitement formalisées pour devenir des savoirs transférables.',
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
  'fc0c0000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_jeux_mathematiques',
  'Jeux mathématiques — Intérêt didactique et mise en œuvre', 'Avance',
  'vrai_faux',
  'Un enseignant qui utilise un jeu mathématique en classe doit nécessairement laisser les élèves découvrir seuls les règles du jeu par tâtonnement, sans aucune explication préalable, afin de respecter le principe de la situation adidactique de Brousseau.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Il faut distinguer deux niveaux dans l''utilisation didactique d''un jeu : (1) les règles du jeu elles-mêmes (comment jouer, quand a-t-on gagné) et (2) la stratégie optimale (comment bien jouer pour gagner). Les règles du jeu doivent être clairement expliquées et comprises par tous avant de commencer — c''est la phase de dévolution au sens de Brousseau : l''enseignant présente la situation et s''assure que les élèves comprennent la tâche. En revanche, la stratégie mathématique optimale (la connaissance visée) doit être construite par l''élève en interagissant avec le milieu (le jeu) — c''est la phase adidactique. Confondre les deux conduirait à une situation chaotique où les élèves ne comprennent même pas à quoi ils jouent, ce qui n''a rien à voir avec la dévolution. Brousseau est très clair : la dévolution consiste à transférer la responsabilité du PROBLÈME mathématique, pas celle de la compréhension des consignes.',
  'Confondre la dévolution du problème mathématique (l''élève doit chercher la stratégie) avec l''absence totale d''explication (l''élève doit aussi deviner les règles). La situation adidactique concerne le savoir visé, pas les consignes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : math_didactique_manipulation_materiel (prefix fc130000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Intermediaire',
  'qcm',
  'Les réglettes de Cuisenaire sont un matériel de manipulation composé de barres de couleurs et de longueurs différentes (de 1 cm à 10 cm). Quelle est la spécificité didactique de ce matériel par rapport aux jetons ou cubes classiques ?',
  NULL,
  '[{"id":"a","label":"Les réglettes représentent les nombres par leur longueur (mesure continue), ce qui permet de travailler les relations numériques (double, moitié, compléments) de façon perceptive et de favoriser le passage des quantités discrètes aux grandeurs continues"},{"id":"b","label":"Les réglettes sont uniquement décoratives et servent à rendre les cours plus attrayants"},{"id":"c","label":"Les réglettes remplacent avantageusement la calculatrice pour les opérations complexes"},{"id":"d","label":"Les réglettes ne sont utiles qu''en maternelle pour le tri de couleurs"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les réglettes de Cuisenaire (inventées par le Belge Georges Cuisenaire dans les années 1950, diffusées par Caleb Gattegno) ont une spécificité fondamentale : elles représentent les nombres par des longueurs continues, et non par des collections discrètes d''objets. La réglette orange (10 cm) est dix fois plus longue que la blanche (1 cm). Cela permet de travailler les relations numériques de manière perceptive : comparer des longueurs (5 est plus grand que 3), trouver des compléments (quelle réglette faut-il ajouter à la verte pour obtenir la même longueur que l''orange ?), explorer les fractions (la réglette rouge est la moitié de la violette). Vergnaud montre que le passage du discret au continu est un saut conceptuel important, et les réglettes de Cuisenaire facilitent cette transition. Brousseau souligne que ce matériel constitue un milieu riche pour des situations adidactiques. Éduscol recommande la diversité des matériels de manipulation pour construire des représentations multiples du nombre.',
  'Réduire les réglettes de Cuisenaire à un simple matériel de comptage. Leur force réside dans la représentation continue des nombres et la visualisation des relations entre nombres.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Intermediaire',
  'vrai_faux',
  'Selon Bruner, le passage du mode enactif (manipulation) au mode symbolique (écriture abstraite) se fait en une seule étape directe : une fois que l''élève a manipulé, il peut immédiatement passer à l''écriture mathématique formelle.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Bruner identifie un stade intermédiaire essentiel : le mode iconique (représentation imagée). La progression complète est : enactif (manipulation d''objets concrets) → iconique (dessins, schémas, représentations graphiques) → symbolique (écriture mathématique formelle). Le mode iconique joue un rôle de transition indispensable : l''élève apprend à représenter sur papier ce qu''il a manipulé (dessiner les groupements de cubes, schématiser la situation), ce qui constitue un premier niveau d''abstraction. Sauter le mode iconique — passer directement de la manipulation à l''écriture symbolique — est une erreur pédagogique fréquente qui peut laisser des élèves en difficulté. Vergnaud montre que chaque mode mobilise des schèmes différents et que la construction progressive est nécessaire pour que les concepts soient robustes. Éduscol recommande explicitement de multiplier les représentations intermédiaires (schémas, dessins, diagrammes) entre manipulation et formalisation.',
  'Croire que la manipulation suffit à préparer l''écriture formelle. Le passage par le dessin et le schéma (mode iconique) est une étape intermédiaire indispensable.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Avance',
  'reponse_courte',
  'Un enseignant de CE2 utilise du matériel de numération en base 10 pour travailler l''addition avec retenue. Les élèves doivent additionner 47 + 36 en manipulant des cubes-unités et des barres-dizaines. Au moment où ils ont 13 cubes-unités, ils doivent en échanger 10 contre une barre-dizaine. Comment appelle-t-on ce processus d''échange dans la terminologie didactique de la numération ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["groupement-échange","groupement échange","le groupement-échange","échange","groupement","groupements-échanges","regroupement","le regroupement"]}'::jsonb,
  'Ce processus s''appelle le groupement-échange (ou regroupement) : quand on a 10 unités d''un ordre, on les échange contre 1 unité de l''ordre supérieur (10 cubes-unités = 1 barre-dizaine, 10 barres-dizaines = 1 plaque-centaine). C''est le fondement concret de la retenue dans les opérations posées. Avec le matériel en base 10, l''élève vit physiquement l''échange : il regroupe 10 cubes, les pose sur le côté et prend une barre en échange. Ce geste concret donne sens à la retenue abstraite (le petit « 1 » qu''on écrit en haut de la colonne suivante). Vergnaud montre que le concept de groupement-échange est un invariant opératoire fondamental du champ conceptuel de la numération. Brousseau insiste sur le fait que le matériel doit permettre la validation autonome de l''échange. Éduscol recommande de travailler explicitement les groupements-échanges au cycle 2 avant de formaliser les algorithmes posés.',
  'Présenter la retenue comme une simple règle procédurale (« on écrit le chiffre des unités et on retient le chiffre des dizaines ») sans la relier au processus concret de groupement-échange.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 3 : math_didactique_manuels_sequences (prefix b01a0000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01a0000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance',
  'vrai_faux',
  'Un bon manuel de mathématiques pour l''école primaire doit systématiquement présenter la règle ou la propriété mathématique en début de leçon, suivie d''exercices d''application, afin que les élèves sachent quoi faire avant de se lancer.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Les recherches en didactique des mathématiques montrent qu''une approche par situation-problème (Brousseau) est plus efficace pour la construction du sens. Un manuel de qualité propose d''abord une situation de recherche ou un problème qui fait émerger le besoin de la notion, avant de formaliser la règle. La séquence recommandée est : (1) situation de recherche / problème, (2) mise en commun et confrontation des stratégies, (3) institutionnalisation (formalisation de la règle), (4) exercices d''application et de transfert. Donner la règle en premier transforme les mathématiques en application mécanique de recettes, sans construction du sens. Éduscol recommande explicitement cette démarche en soulignant que « l''activité de résolution de problèmes est au cœur de l''enseignement des mathématiques ».',
  'Croire que la clarté pédagogique exige de donner la règle d''abord. C''est confondre clarté et transmission directe. La clarté didactique consiste à concevoir une situation où la règle apparaît comme une nécessité.',
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
  'b01a0000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance',
  'qcm',
  'En analysant un manuel de CM2, vous constatez que tous les triangles dessinés sont isocèles avec la pointe en haut. Quel risque didactique cette présentation fait-elle courir aux élèves ?',
  NULL,
  '[{"id":"a","label":"Aucun risque — les triangles isocèles sont les plus courants dans la vie quotidienne"},{"id":"b","label":"Les élèves construisent un prototype de triangle qui les empêche de reconnaître comme triangles les figures qui ne correspondent pas à ce modèle (triangle scalène, triangle « pointe en bas », triangle très aplati)"},{"id":"c","label":"Les élèves vont croire que tous les triangles ont un axe de symétrie"},{"id":"d","label":"Les élèves vont confondre triangle et rectangle"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Ce risque est un exemple classique d''obstacle didactique au sens de Brousseau : un obstacle créé par les choix d''enseignement (ici, le choix des illustrations dans le manuel). Quand les élèves ne voient que des triangles isocèles « pointe en haut », ils construisent un prototype (au sens de la psychologie cognitive de Rosch) qui devient leur représentation mentale du triangle. Ils rejettent alors comme « non-triangles » les figures qui s''en éloignent trop : un triangle très allongé, un triangle renversé, un triangle scalène quelconque. Vergnaud montre que les invariants opératoires (ici, « un triangle, c''est une figure avec une pointe en haut et deux côtés égaux ») se construisent à partir des exemples rencontrés. Si ces exemples sont trop uniformes, les invariants seront trop restrictifs. Éduscol recommande explicitement de varier les configurations des figures géométriques présentées aux élèves pour éviter ce type d''obstacle.',
  'Ne pas percevoir le problème dans des illustrations uniformes. La variété des exemples et des non-exemples est une condition nécessaire à la construction correcte des concepts géométriques.',
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
  'b01a0000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance',
  'reponse_courte',
  'Un manuel propose exclusivement des problèmes de soustraction où l''on cherche l''état final (« Paul avait 15 billes, il en perd 6, combien lui en reste-t-il ? »). Or, Vergnaud identifie aussi des problèmes de soustraction où l''on cherche la transformation ou l''état initial. Comment appelle-t-on la catégorie générale de ces problèmes dans la théorie des champs conceptuels de Vergnaud ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["structures additives","les structures additives","champ conceptuel des structures additives","champ additif","le champ additif"]}'::jsonb,
  'Ces problèmes relèvent du champ conceptuel des structures additives selon Vergnaud. Ce champ englobe toutes les situations dont le traitement implique une addition ou une soustraction. Vergnaud identifie plusieurs catégories de problèmes additifs : (1) transformation d''un état (état initial → transformation → état final, avec recherche possible de chacun des trois éléments), (2) composition de deux mesures (partie-partie-tout), (3) comparaison (recherche de l''écart, de la plus grande ou de la plus petite quantité). Un manuel qui ne présente qu''un seul type (ici, la recherche de l''état final) appauvrit le champ conceptuel et empêche les élèves de construire un concept complet de la soustraction. Éduscol recommande de varier systématiquement les types de problèmes additifs et la position de l''inconnue pour que les élèves développent une compréhension riche et flexible.',
  'Se limiter à un seul type de problème soustractif (recherche de l''état final). La maîtrise de la soustraction exige de savoir résoudre les six cas de la transformation et les trois cas de la comparaison.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 4 : math_didactique_mesures (prefix fc0a0000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0a0000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Intermediaire',
  'qcm',
  'Un enseignant de CE1 demande à ses élèves de mesurer la longueur de leur table avec des crayons identiques. Un élève trouve « 6 crayons » et un autre « 5 crayons et un bout ». Quelle notion fondamentale de la mesure cette situation permet-elle d''aborder ?',
  NULL,
  '[{"id":"a","label":"La nécessité d''une unité de mesure conventionnelle et le problème de la précision : quand l''objet ne mesure pas un nombre entier d''unités, il faut soit accepter une approximation, soit subdiviser l''unité"},{"id":"b","label":"Le fait que les crayons sont un mauvais outil de mesure qui doit être remplacé par une règle"},{"id":"c","label":"L''importance de calculer mentalement la longueur de la table"},{"id":"d","label":"La nécessité de toujours arrondir les mesures au nombre entier le plus proche"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Cette situation est riche didactiquement car elle fait émerger deux concepts fondamentaux. (1) La nécessité de l''unité conventionnelle : si deux élèves utilisent des crayons de tailles différentes, ils obtiendront des résultats différents, ce qui pose la question de la reproductibilité de la mesure. (2) Le problème de l''étalon non contenu un nombre entier de fois : quand « il reste un bout », l''élève est confronté au besoin de subdiviser l''unité, ce qui prépare l''introduction des fractions et des décimaux dans le contexte de la mesure. Vergnaud montre que ce type de situation est particulièrement riche car elle fait vivre à l''élève le besoin mathématique (la nécessité de subdiviser l''unité) avant de lui fournir l''outil (les fractions, les décimaux). Brousseau parlerait d''une situation fondamentale pour la notion de mesure. Éduscol recommande ce type d''activité de mesurage avec des étalons arbitraires comme étape préparatoire aux unités conventionnelles.',
  'Voir dans « 5 crayons et un bout » une simple imprécision à corriger. C''est au contraire une opportunité didactique pour aborder la notion de subdivision de l''unité.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud / Brousseau',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0a0000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Avance',
  'vrai_faux',
  'Le tableau de conversion des unités de longueur (km, hm, dam, m, dm, cm, mm) est un outil suffisant pour que les élèves comprennent les conversions d''unités. Il n''est pas nécessaire de passer par la manipulation concrète si les élèves maîtrisent le tableau.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Le tableau de conversion est un outil procédural qui permet d''effectuer mécaniquement des conversions, mais il ne garantit pas la compréhension du sens des unités ni des relations entre elles. Un élève peut convertir correctement « 3,5 m = 350 cm » avec le tableau sans comprendre que 1 mètre contient physiquement 100 centimètres. La manipulation concrète (mesurer avec une règle en cm, puis en dm, puis en m le même objet ; comparer visuellement 1 m et 100 cm) est indispensable pour construire le sens des conversions. Vergnaud montre que les conversions d''unités relèvent du champ conceptuel des structures multiplicatives (rapport de 10, 100, 1000 entre unités) et que ce sens multiplicatif doit être construit avant d''être automatisé. Brousseau souligne le risque de « dégénérescence du sens » quand un outil procédural (le tableau) se substitue à la compréhension. Éduscol recommande de toujours articuler manipulation, estimation et utilisation du tableau.',
  'Croire que la maîtrise procédurale (savoir utiliser le tableau) suffit. Sans compréhension du sens des unités, les élèves appliquent la procédure sans savoir si leur résultat est plausible.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud / Brousseau',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0a0000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Avance',
  'reponse_courte',
  'Un élève de CM1 écrit : « La classe mesure 50 m de long. » L''enseignant veut travailler l''estimation des grandeurs. Quelle compétence transversale, recommandée par Éduscol comme essentielle dans le domaine des grandeurs et mesures, cet exercice permet-il de développer ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["l''estimation","estimation","estimer","ordre de grandeur","sens des grandeurs","l''ordre de grandeur","estimation des grandeurs"]}'::jsonb,
  'L''estimation (ou le sens de l''ordre de grandeur) est une compétence transversale fondamentale dans le domaine des grandeurs et mesures. L''élève qui écrit « 50 m » pour la longueur d''une classe (qui fait environ 8 à 10 m) n''a pas développé de repères de grandeur : il ne sait pas « à quoi ressemble » un mètre, dix mètres, cinquante mètres. La construction de ces repères passe par des activités régulières d''estimation : « Estime la longueur de la cour avant de la mesurer », « Range ces objets du plus léger au plus lourd avant de les peser ». Vergnaud montre que les invariants opératoires liés aux grandeurs (« une classe, c''est environ 10 m ») se construisent par l''expérience répétée. Éduscol insiste sur l''importance de développer le « sens des grandeurs » à travers des activités d''estimation régulières à tous les cycles, avant et après les mesures effectives.',
  'Considérer l''estimation comme un exercice secondaire. C''est au contraire un indicateur clé de la compréhension des grandeurs : un élève qui estime correctement a intériorisé des repères de grandeur signifiants.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 5 : math_didactique_multiplication (prefix fc040000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc040000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Intermediaire',
  'reponse_courte',
  'Un élève de CE2 écrit : « 6 × 4 = 6 + 6 + 6 + 6 ». Cette écriture réduit la multiplication à une seule de ses significations. Comment appelle-t-on cette conception de la multiplication, qui constitue l''entrée la plus fréquente dans le champ multiplicatif au cycle 2 ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["addition itérée","l''addition itérée","addition répétée","l''addition répétée","addition réitérée"]}'::jsonb,
  'L''addition itérée (ou addition répétée) est la première conception de la multiplication que les élèves rencontrent : « 6 × 4 signifie 4 fois le nombre 6, donc 6 + 6 + 6 + 6 ». Cette entrée est légitime au cycle 2 car elle s''appuie sur les compétences additives déjà construites. Cependant, Vergnaud montre que le champ conceptuel multiplicatif ne se réduit pas à l''addition itérée : il inclut aussi le produit cartésien (3 pantalons × 4 chemises = 12 combinaisons), le calcul d''aire (longueur × largeur), la proportionnalité. Si l''enseignant se limite à l''addition itérée, les élèves auront des difficultés quand ils rencontreront des situations multiplicatives qui ne se prêtent pas à cette interprétation (par exemple, 0,5 × 3 : que signifie « 3 fois 0,5 » ou « 0,5 fois 3 » ?). Éduscol recommande de diversifier les situations multiplicatives dès le cycle 2 pour enrichir progressivement le champ conceptuel.',
  'S''en tenir exclusivement à la conception « addition itérée » sans jamais la dépasser. Cette conception, utile comme point d''entrée, devient un obstacle quand elle est la seule disponible.',
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
  'fc040000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Avance',
  'qcm',
  'Un élève de CM1 résout le problème : « Un rectangle a 5 rangées de 7 carreaux. Combien de carreaux y a-t-il en tout ? ». Selon Vergnaud, ce problème relève d''un type de structure multiplicative différent de l''isomorphisme de mesures. Lequel ?',
  NULL,
  '[{"id":"a","label":"Le produit de mesures : la multiplication de deux grandeurs (nombre de rangées × nombre de colonnes) produit une grandeur de nature différente (nombre total de carreaux, assimilable à une aire)"},{"id":"b","label":"La comparaison multiplicative (N fois plus)"},{"id":"c","label":"La proportionnalité simple entre deux grandeurs"},{"id":"d","label":"La composition de transformations"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le dénombrement d''un rectangle de carreaux par la multiplication (5 rangées × 7 colonnes = 35 carreaux) relève du produit de mesures dans la classification de Vergnaud. Contrairement à l''isomorphisme de mesures (proportionnalité simple entre deux grandeurs liées), le produit de mesures combine deux grandeurs pour en produire une troisième de nature différente. Ici, « nombre de rangées » et « nombre de colonnes » sont des dénombrements, et leur produit donne un nombre total (assimilable à une aire). L''exemple canonique du produit de mesures est le calcul d''aire : longueur (m) × largeur (m) = aire (m²). Le produit cartésien (3 chemises × 4 pantalons = 12 combinaisons) relève de la même catégorie. Ces situations sont plus abstraites que l''isomorphisme de mesures et apparaissent plus tardivement dans les programmes. Éduscol recommande de travailler les configurations rectangulaires (quadrillages, rangées-colonnes) dès le cycle 2 pour préparer la compréhension du produit de mesures.',
  'Confondre toutes les situations multiplicatives. Le produit de mesures se distingue de l''isomorphisme de mesures par le fait que le résultat est d''une nature différente des opérandes.',
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
  'fc040000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_multiplication',
  'Didactique de la multiplication — Sens et algorithmes', 'Avance',
  'vrai_faux',
  'La mémorisation des tables de multiplication doit être achevée avant de commencer à travailler le sens de la multiplication. Un élève ne peut pas résoudre de problèmes multiplicatifs tant qu''il ne connaît pas ses tables par cœur.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Les recherches en didactique montrent que la construction du sens de la multiplication et la mémorisation des tables doivent être menées en parallèle, et non séquentiellement. Un élève peut résoudre des problèmes multiplicatifs (groupements, configurations rectangulaires) en utilisant des procédures variées (addition itérée, comptage par bonds, dessin) sans connaître les tables par cœur. La mémorisation des tables vient ensuite automatiser des résultats dont l''élève a déjà compris le sens. Vergnaud montre que les schèmes multiplicatifs se construisent d''abord dans l''action (résolution de problèmes), puis se formalisent. Imposer la mémorisation avant la compréhension produit des élèves qui récitent des tables sans savoir quand les utiliser. Éduscol insiste sur le fait que la mémorisation doit être progressive et s''appuyer sur des stratégies (doubles, commutativité, quasi-doubles) plutôt que sur la répétition mécanique.',
  'Croire qu''il faut d''abord mémoriser pour ensuite comprendre. L''inverse est vrai : la compréhension du sens facilite et ancre la mémorisation.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 6 : math_didactique_numeration (prefix b0090000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0090000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Avance',
  'qcm',
  'Un élève de CE1 écrit le nombre « soixante-douze » sous la forme « 6012 ». Un autre élève écrit « 612 ». Quel est le point commun de ces deux erreurs et quel concept de numération est en jeu ?',
  NULL,
  '[{"id":"a","label":"Les deux élèves font des erreurs de calligraphie"},{"id":"b","label":"Les deux élèves transcrivent le nombre oral segment par segment (« soixante » → 60, « douze » → 12) sans maîtriser le principe de la numération de position : la valeur d''un chiffre dépend de sa place dans l''écriture"},{"id":"c","label":"Les deux élèves ne savent pas compter au-delà de 60"},{"id":"d","label":"Les deux élèves confondent les dizaines et les centaines"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Ces deux erreurs, bien que différentes en apparence, relèvent du même obstacle : la transcription littérale de la chaîne orale en écriture chiffrée par juxtaposition. L''élève qui écrit « 6012 » juxtapose « 60 » + « 12 ». L''élève qui écrit « 612 » fait de même mais de façon plus compacte. Ni l''un ni l''autre ne maîtrise le principe fondamental de la numération positionnelle : dans l''écriture « 72 », le « 7 » vaut 7 dizaines (70) et le « 2 » vaut 2 unités, la valeur étant déterminée par la position. Brissiaud et Fayol ont largement documenté cet obstacle, particulièrement fréquent avec les irrégularités de la numération orale française (soixante-douze au lieu de « septante-deux »). La remédiation passe par un travail sur la décomposition additive et multiplicative (72 = 7 × 10 + 2) avec du matériel de numération.',
  'Traiter ces erreurs comme de simples étourderies. Ce sont des erreurs conceptuelles qui révèlent une incompréhension du système positionnel.',
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
  'b0090000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Avance',
  'reponse_courte',
  'Les programmes Éduscol recommandent de travailler la numération à travers des activités de décomposition des nombres. Par exemple, 345 = 3 × 100 + 4 × 10 + 5 × 1, mais aussi 345 = 34 × 10 + 5, ou encore 345 = 300 + 45. Comment appelle-t-on cette compétence de numération qui consiste à décomposer et recomposer un nombre en utilisant les unités de numération ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["décomposition","la décomposition","décomposition canonique","décomposition additive et multiplicative","décomposition en unités de numération","recomposition"]}'::jsonb,
  'La décomposition (et recomposition) en unités de numération est une compétence fondamentale de la numération positionnelle. Elle consiste à exprimer un nombre comme une somme de produits des chiffres par les puissances de 10 : la décomposition canonique (345 = 3 × 100 + 4 × 10 + 5 × 1) et les décompositions non canoniques (345 = 2 × 100 + 14 × 10 + 5, ou 345 = 34 dizaines et 5 unités). Les décompositions non canoniques sont particulièrement importantes car elles révèlent la flexibilité de la compréhension du système positionnel et préparent les algorithmes de calcul (retenues, emprunts). Vergnaud montre que les schèmes de décomposition/recomposition sont des invariants opératoires centraux du champ conceptuel de la numération. Éduscol recommande de travailler régulièrement la décomposition sous différentes formes au cycle 2 et au cycle 3.',
  'Se limiter à la décomposition canonique. Les décompositions non canoniques sont tout aussi importantes et révèlent une compréhension plus profonde de la numération.',
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
  'b0090000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration',
  'Analyse de productions d''élèves — Numération', 'Avance',
  'vrai_faux',
  'Les irrégularités de la numération orale française (« onze, douze, treize… » au lieu de « dix-un, dix-deux, dix-trois » ; « soixante-dix » au lieu de « septante ») constituent un obstacle didactique pour l''apprentissage de la numération positionnelle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La numération orale française présente de nombreuses irrégularités qui constituent un obstacle didactique (lié aux choix du système linguistique, pas au savoir mathématique lui-même). Les nombres de 11 à 16 ne suivent pas la logique « dizaine + unité » (on dit « onze » au lieu de « dix-un »). À partir de 70, la structure redevient vigesimale (soixante-dix = 60 + 10, quatre-vingts = 4 × 20, quatre-vingt-dix = 4 × 20 + 10). Ces irrégularités font que la numération orale française ne reflète pas directement la structure de la numération écrite de position. Les élèves francophones ont donc un obstacle supplémentaire par rapport aux élèves germanophones ou sinophones dont la numération orale est plus régulière. Brissiaud a particulièrement étudié cet obstacle et recommande un travail explicite sur le lien oral-écrit. Éduscol préconise des activités de passage entre les différentes représentations des nombres (orale, écrite, matérielle).',
  'Minimiser l''impact de la numération orale sur l''apprentissage. Les recherches montrent que les irrégularités de la langue française sont une source majeure de difficultés en numération.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 7 : math_didactique_numeration_decimale (prefix fc100000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Avance',
  'qcm',
  'Un élève de CM2 affirme qu''il n''existe aucun nombre entre 3,4 et 3,5. Quel obstacle épistémologique cette affirmation révèle-t-elle ?',
  NULL,
  '[{"id":"a","label":"L''élève transfère aux décimaux la propriété de succession des entiers naturels (entre deux entiers consécutifs, il n''y a pas d''entier), sans comprendre la densité de l''ensemble des nombres décimaux"},{"id":"b","label":"L''élève n''a jamais travaillé avec des nombres décimaux"},{"id":"c","label":"L''élève a un problème de compréhension du vocabulaire mathématique"},{"id":"d","label":"L''élève fait preuve de paresse intellectuelle en ne cherchant pas de nombre intermédiaire"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Cette erreur révèle l''obstacle de la « succession » transféré des entiers aux décimaux. Dans les entiers naturels, entre deux nombres consécutifs (3 et 4), il n''y a effectivement aucun entier. L''élève transfère cette propriété aux décimaux : « 3,4 et 3,5 sont consécutifs, donc il n''y a rien entre les deux. » Or, l''ensemble des nombres décimaux est dense : entre deux décimaux quelconques, on peut toujours en trouver un troisième (3,41 ; 3,42 ; 3,413...). Cet obstacle, identifié par Brousseau et Douady, est particulièrement résistant car la propriété de succession est profondément ancrée par des années de travail avec les entiers. La remédiation consiste à faire zoomer sur la droite graduée entre 3,4 et 3,5 et à découvrir les centièmes (3,41, 3,42...), puis à zoomer encore (3,411, 3,412...). Éduscol recommande de travailler explicitement la densité des décimaux par des activités d''intercalation sur la droite numérique.',
  'Considérer cette erreur comme anecdotique. L''obstacle de la non-densité est fondamental et a des conséquences sur toute la compréhension ultérieure des nombres réels.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Intermediaire',
  'vrai_faux',
  'Un enseignant de CM1 introduit les nombres décimaux en commençant par l''écriture à virgule (« 0,7 signifie zéro virgule sept ») avant de travailler les fractions décimales. Cette approche est conforme aux recommandations Éduscol.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Les programmes Éduscol du cycle 3 recommandent explicitement d''introduire d''abord les fractions décimales (1/10, 1/100, 7/10) avant de passer à l''écriture à virgule. La raison didactique est fondamentale : l''écriture à virgule (0,7) est une notation conventionnelle qui ne porte pas en elle-même son sens. En revanche, l''écriture fractionnaire (7/10) explicite la signification positionnelle : « 7 dixièmes ». Ce passage par les fractions décimales permet de donner du sens à chaque chiffre après la virgule et de prévenir l''obstacle « deux entiers » (l''élève qui traite séparément la partie entière et la partie décimale). Vergnaud montre que le lien entre fractions décimales et écriture à virgule est un pont conceptuel essentiel. Brousseau insiste sur le fait que l''introduction directe de la virgule, sans ce fondement fractionnaire, est un « raccourci didactique dangereux ».',
  'Commencer par l''écriture à virgule sans passer par les fractions décimales. Ce raccourci favorise l''obstacle de la conception « deux entiers ».',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc100000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_numeration_decimale',
  'Didactique de la numération décimale — Obstacles et progression', 'Avance',
  'reponse_courte',
  'Un élève de CM2 calcule 0,3 + 0,8 et écrit « 0,11 ». Identifiez en une phrase le type d''obstacle sous-jacent à cette erreur, en utilisant le vocabulaire didactique approprié.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["obstacle du nombre entier","règle du nombre entier","conception entière des décimaux","traitement entier de la partie décimale","obstacle des nombres entiers","whole number bias"]}'::jsonb,
  'Cette erreur relève de l''obstacle du nombre entier (whole number bias) : l''élève additionne les parties décimales comme des entiers indépendants (3 + 8 = 11) et écrit 0,11 au lieu de 1,1. Il traite le « 3 » et le « 8 » comme des entiers à additionner, sans comprendre que 0,3 = 3 dixièmes et 0,8 = 8 dixièmes, donc 3 dixièmes + 8 dixièmes = 11 dixièmes = 1,1. L''erreur révèle que l''élève n''a pas construit le sens positionnel des chiffres décimaux. La remédiation doit passer par le contexte monétaire (0,30 € + 0,80 € = 1,10 € — l''élève sait d''expérience que 30 centimes + 80 centimes ne font pas 11 centimes), les fractions décimales (3/10 + 8/10 = 11/10 = 1 + 1/10) ou la droite graduée. Brousseau montre que seule une situation créant un conflit cognitif peut ébranler cette conception solidement ancrée.',
  'Corriger simplement le résultat sans identifier l''obstacle. L''erreur est systématique et nécessite un travail de fond sur le sens des décimaux, pas une simple correction ponctuelle.',
  'valide',
  'Génération Claude — Terminologie Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 8 : math_didactique_obstacles_epistemologiques (prefix fc080000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc080000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Avance',
  'reponse_courte',
  'Brousseau distingue trois types d''obstacles : épistémologique, ontogénique et didactique. Parmi ceux-ci, lequel est considéré comme ÉVITABLE par l''enseignant, car il résulte de choix pédagogiques (progression, exemples, représentations) et non de la nature du savoir ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["l''obstacle didactique","obstacle didactique","le didactique","didactique"]}'::jsonb,
  'L''obstacle didactique est le seul des trois types qui soit évitable, car il résulte des choix d''enseignement. Par exemple, si un enseignant n''utilise que des triangles équilatéraux « pointe en haut » pour illustrer le triangle, il crée un obstacle didactique : les élèves ne reconnaîtront pas un triangle obtus ou un triangle « pointe en bas ». Cet obstacle n''est pas inhérent au concept de triangle (obstacle épistémologique) ni au développement de l''enfant (obstacle ontogénique) : il est causé par le choix des exemples. Un autre enseignant, qui varierait les exemples et les non-exemples, ne créerait pas cet obstacle. Brousseau insiste sur la responsabilité de l''enseignant dans l''analyse a priori des situations didactiques : anticiper les obstacles didactiques potentiels fait partie du métier. L''obstacle épistémologique, lui, est inévitable (il est lié à la nature du savoir) et l''obstacle ontogénique dépend de la maturation cognitive de l''enfant.',
  'Confondre obstacle didactique et obstacle épistémologique. L''obstacle épistémologique est inévitable (inhérent au savoir), tandis que l''obstacle didactique est évitable (lié aux choix d''enseignement).',
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
  'fc080000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Avance',
  'qcm',
  'Un élève de CE2 affirme : « Diviser, c''est toujours obtenir un nombre plus petit. » Cette affirmation fonctionne avec les entiers naturels (hors division par 1). En quoi constitue-t-elle un obstacle épistémologique pour la suite de la scolarité ?',
  NULL,
  '[{"id":"a","label":"Elle ne pose aucun problème car la division produit toujours un nombre plus petit"},{"id":"b","label":"Elle deviendra un obstacle quand l''élève rencontrera la division par un nombre inférieur à 1 (par exemple 6 ÷ 0,5 = 12, où le quotient est supérieur au dividende) ou la division de fractions"},{"id":"c","label":"Elle sera corrigée automatiquement par l''apprentissage de la calculatrice"},{"id":"d","label":"Elle ne concerne que les mathématiques universitaires, pas l''école primaire"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Cette croyance est un obstacle épistémologique symétrique de « multiplier rend toujours plus grand ». Dans les entiers naturels (hors cas triviaux), 12 ÷ 3 = 4 < 12 : le quotient est bien inférieur au dividende. Mais quand l''élève rencontrera la division par un décimal inférieur à 1 (6 ÷ 0,5 = 12), le quotient sera supérieur au dividende, ce qui contredira sa croyance. Cet obstacle se manifeste typiquement au cycle 3 et au début du collège. Vergnaud montre que les théorèmes-en-acte (« la division réduit ») construits dans un domaine de validité (les entiers naturels) résistent fortement à l''extension du domaine. Brousseau insiste sur le fait que ces obstacles ne se résolvent pas par une simple information (« attention, ça ne marche pas toujours ») mais par des situations créant un conflit cognitif. Éduscol recommande de proposer dès le cycle 3 des situations où les opérations produisent des résultats « surprenants » pour déstabiliser les conceptions erronées.',
  'Penser que cet obstacle se corrigera de lui-même avec l''avancée dans le programme. Les obstacles épistémologiques résistent à l''enseignement direct et nécessitent un traitement didactique explicite.',
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
  'fc080000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Avance',
  'vrai_faux',
  'Un obstacle épistémologique, une fois identifié et surmonté par un élève grâce à une situation de conflit cognitif, ne reviendra jamais. L''élève a définitivement « dépassé » l''obstacle.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Brousseau montre qu''un obstacle épistémologique, même après avoir été traité didactiquement, peut resurgir dans des contextes nouveaux ou sous pression (évaluation, fatigue, complexité accrue). L''obstacle n''est pas « effacé » : la connaissance antérieure (qui fonctionnait dans un domaine restreint) continue d''exister dans la mémoire de l''élève. En situation de stress ou de surcharge cognitive, l''élève peut « régresser » vers sa conception initiale. Par exemple, un élève qui a compris que 0,5 × 4 = 2 (résultat plus petit que 4) peut néanmoins prédire que 0,8 × 6 donnera un résultat supérieur à 6, retombant dans l''obstacle « multiplier rend plus grand ». C''est pourquoi Éduscol recommande un travail spiralaire sur les obstacles : les situations de déstabilisation doivent être proposées régulièrement, dans des contextes variés, pour consolider la nouvelle compréhension. Vergnaud parle de la nécessité de « robustifier » les schèmes en les confrontant à des situations diversifiées.',
  'Croire qu''un obstacle est définitivement surmonté après une séance de remédiation. Les obstacles épistémologiques nécessitent un travail récurrent et dans des contextes variés.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 9 : math_didactique_problemes_ouverts (prefix fc0b0000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Avance',
  'reponse_courte',
  'Dans une situation-problème au sens de Brousseau, l''enseignant conçoit la situation de telle sorte que la connaissance mathématique visée soit la stratégie optimale de résolution. Comment Brousseau nomme-t-il ce type de situation qui est spécifiquement associé à un savoir mathématique donné ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["situation fondamentale","la situation fondamentale","Situation fondamentale","La situation fondamentale"]}'::jsonb,
  'La situation fondamentale est un concept clé de la théorie des situations didactiques de Brousseau. Pour chaque savoir mathématique, il existe (en théorie) une situation dans laquelle ce savoir est la stratégie optimale de résolution. Par exemple, la situation fondamentale pour l''ordre des nombres est le jeu de comparaison (celui qui a le plus grand nombre gagne) ; la situation fondamentale pour la multiplication est le dénombrement d''un rectangle (compter les carreaux sans compter un par un). La situation fondamentale est le modèle théorique à partir duquel l''enseignant conçoit ses situations d''enseignement. Vergnaud complète cette idée en montrant que chaque savoir s''inscrit dans un champ conceptuel plus large et que les situations fondamentales doivent couvrir la variété du champ. Éduscol recommande aux enseignants de concevoir des situations d''apprentissage qui font sens — c''est-à-dire des situations où le savoir visé est un outil nécessaire pour résoudre le problème.',
  'Confondre situation fondamentale et simple exercice d''application. La situation fondamentale est conçue pour faire CONSTRUIRE le savoir, pas pour l''appliquer après enseignement.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Avance',
  'qcm',
  'Les programmes Éduscol identifient six compétences mathématiques transversales. Laquelle est la plus spécifiquement travaillée lors d''une séance de problème ouvert ?',
  NULL,
  '[{"id":"a","label":"Calculer — automatiser les procédures de calcul"},{"id":"b","label":"Chercher — s''engager dans une démarche de recherche, tester, conjecturer"},{"id":"c","label":"Mémoriser — retenir les définitions et propriétés"},{"id":"d","label":"Modéliser — traduire une situation réelle en langage mathématique"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La compétence « Chercher » est la compétence principale travaillée lors d''un problème ouvert. Selon les programmes Éduscol, « Chercher » consiste à s''engager dans une démarche de recherche, faire des essais, conjecturer, tester, vérifier, raisonner par tâtonnement. Le problème ouvert est par essence un espace de recherche : l''élève ne dispose pas d''une procédure connue et doit inventer sa propre stratégie. Les six compétences des programmes sont : Chercher, Modéliser, Représenter, Raisonner, Calculer, Communiquer. Si un problème ouvert mobilise aussi « Raisonner » (argumenter, prouver) et « Communiquer » (expliquer sa démarche lors de la mise en commun), c''est « Chercher » qui est au cœur de la démarche. Vergnaud montre que la compétence de recherche mobilise des schèmes métacognitifs (planifier, évaluer, réguler). Brousseau insiste sur le fait que cette compétence ne se développe que si l''élève est régulièrement confronté à des situations où il n''a pas de solution immédiate.',
  'Confondre « Chercher » et « Calculer ». Calculer relève de la technique ; Chercher relève de la stratégie et de l''initiative. Un problème ouvert vise d''abord le Chercher.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Intermediaire',
  'vrai_faux',
  'Un problème ouvert doit toujours être résolu individuellement. Le travail en groupes est incompatible avec le caractère « ouvert » du problème car les élèves risquent de copier les uns sur les autres.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Le travail en groupes est non seulement compatible avec le problème ouvert, mais il en enrichit considérablement l''exploitation didactique. La modalité classique est : (1) un temps de recherche individuelle (chaque élève s''engage personnellement dans la réflexion), (2) un temps de recherche en petit groupe (confrontation des idées, argumentation, enrichissement mutuel), (3) une mise en commun collective (présentation et comparaison des stratégies). Le travail en groupe développe des compétences spécifiques identifiées par Éduscol : « Communiquer » (expliquer sa démarche), « Raisonner » (argumenter, convaincre). Brousseau montre que la phase de formulation (l''élève doit communiquer sa stratégie à autrui) est une étape essentielle de la construction du savoir, et elle nécessite un interlocuteur. Les rallyes mathématiques (IREM, APMEP) sont d''ailleurs conçus pour être résolus collectivement.',
  'Croire que la recherche collective empêche la réflexion individuelle. En réalité, l''alternance individuel-groupe-collectif est la modalité la plus riche pour un problème ouvert.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / IREM / APMEP',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 10 : math_didactique_programmes_cycles (prefix fc060000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc060000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Intermediaire',
  'reponse_courte',
  'Les programmes Éduscol du cycle 3 organisent les mathématiques en quatre grands domaines. Citez le domaine qui inclut la résolution de problèmes comme compétence transversale et qui est considéré comme le « fil rouge » de l''enseignement des mathématiques.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Nombres et calculs","nombres et calculs","Nombres et Calculs"]}'::jsonb,
  'Le domaine « Nombres et calculs » est le domaine central des programmes de mathématiques du cycle 3. Les quatre domaines sont : (1) Nombres et calculs, (2) Grandeurs et mesures, (3) Espace et géométrie, (4) Organisation et gestion de données (qui inclut la proportionnalité). La résolution de problèmes n''est pas un domaine à part mais une compétence transversale qui irrigue les quatre domaines. Cependant, c''est dans « Nombres et calculs » qu''elle est la plus explicitement travaillée, car ce domaine concentre les compétences de calcul, d''opérations et de raisonnement numérique. Éduscol précise que « la résolution de problèmes est au cœur de l''activité mathématique » et qu''elle doit être présente dans chaque séance. Vergnaud montre que les champs conceptuels des structures additives et multiplicatives — qui forment l''essentiel de « Nombres et calculs » — sont les terrains principaux de la résolution de problèmes à l''école primaire.',
  'Croire que la résolution de problèmes est un domaine séparé des quatre autres. C''est une compétence transversale qui s''exerce dans tous les domaines.',
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
  'fc060000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Intermediaire',
  'qcm',
  'Le calcul mental fait l''objet de recommandations spécifiques dans les programmes Éduscol. Quelle est la place du calcul mental dans la progression du cycle 2 au cycle 3 ?',
  NULL,
  '[{"id":"a","label":"Le calcul mental n''est travaillé qu''au cycle 2 ; au cycle 3, il est remplacé par la calculatrice"},{"id":"b","label":"Le calcul mental est une activité quotidienne aux cycles 2 et 3 : au cycle 2, il porte sur les faits additifs et les premières tables ; au cycle 3, il s''étend aux multiplications, divisions, décimaux et à des stratégies de calcul réfléchi de plus en plus élaborées"},{"id":"c","label":"Le calcul mental est optionnel et laissé à l''appréciation de chaque enseignant"},{"id":"d","label":"Le calcul mental est réservé aux élèves en difficulté comme activité de remédiation"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Éduscol accorde une place centrale au calcul mental et en fait une pratique quotidienne du CP à la 6e. Au cycle 2, les objectifs portent sur : l''automatisation des compléments à 10, les doubles et moitiés, les tables d''addition, les premières tables de multiplication (2, 3, 4, 5). Au cycle 3, le calcul mental s''enrichit : toutes les tables de multiplication, les stratégies de calcul réfléchi (distributivité, décomposition, compensation), le calcul avec des décimaux, l''estimation et l''ordre de grandeur. Le calcul mental n''est pas seulement du calcul « automatisé » (résultats mémorisés) mais aussi du calcul « réfléchi » (l''élève choisit et adapte une stratégie). Vergnaud montre que les stratégies de calcul mental mobilisent des schèmes qui enrichissent la compréhension des opérations. Éduscol recommande 15 minutes quotidiennes de calcul mental sous des formes variées (écrit, oral, jeux, défis).',
  'Réduire le calcul mental à la simple récitation des tables. Le calcul mental réfléchi développe la flexibilité numérique et la compréhension des propriétés des opérations.',
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
  'fc060000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Avance',
  'vrai_faux',
  'Selon les programmes Éduscol, la division posée (algorithme de la division euclidienne) est un attendu de fin de cycle 2 : les élèves doivent savoir diviser un nombre à deux chiffres par un nombre à un chiffre en posant l''opération dès la fin du CE2.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. La division posée n''est PAS un attendu de fin de cycle 2. Au cycle 2, les programmes prévoient un travail sur le sens de la division (situations de partage et de groupement) et sur des procédures de calcul non expertes (distribution, soustractions successives, multiplication à trou). L''algorithme de la division posée est un objectif du cycle 3, principalement en CM1 et CM2. La progression est : CE1-CE2 — sens de la division par des situations concrètes et des procédures personnelles ; CM1 — algorithme de la division par un nombre à un chiffre ; CM2 — extension à la division par un nombre à deux chiffres. Cette progression respecte le principe fondamental « sens avant technique ». Éduscol insiste sur le fait que l''introduction prématurée de l''algorithme posé conduit les élèves à appliquer mécaniquement une procédure sans comprendre ce qu''ils calculent.',
  'Anticiper la division posée au CE2. Les programmes sont clairs : le cycle 2 construit le SENS de la division, le cycle 3 introduit l''ALGORITHME.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 11 : math_didactique_proportionnalite (prefix f7020000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7020000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Avance',
  'qcm',
  'Les programmes du cycle 3 recommandent plusieurs procédures de résolution des problèmes de proportionnalité. Laquelle n''est PAS recommandée comme procédure de référence au cycle 3 (école primaire) et ne devrait être introduite que plus tard ?',
  NULL,
  '[{"id":"a","label":"Le passage à l''unité (calculer la valeur pour 1 unité puis multiplier)"},{"id":"b","label":"La linéarité additive (si 3 → 6 et 2 → 4, alors 5 → 10)"},{"id":"c","label":"Le produit en croix (quatrième proportionnelle par calcul direct a×d/b)"},{"id":"d","label":"La linéarité multiplicative (si 3 → 6, alors 9 → 18 car 9 = 3 × 3)"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Le produit en croix (ou règle de trois formelle) n''est PAS recommandé comme procédure de référence au cycle 3. Les programmes Éduscol privilégient trois procédures porteuses de sens : (1) le passage à l''unité (qui construit la notion de coefficient unitaire), (2) la linéarité additive (f(a + b) = f(a) + f(b)), (3) la linéarité multiplicative (f(k × a) = k × f(a)). Ces procédures sont reliées à la compréhension conceptuelle de la proportionnalité. Le produit en croix, bien qu''efficace, est une procédure algorithmique qui peut être appliquée mécaniquement sans comprendre pourquoi elle fonctionne, ni même si la situation est réellement proportionnelle. Son introduction prématurée court-circuite la construction du sens. Vergnaud montre que le produit en croix ne mobilise pas les mêmes invariants opératoires que les procédures de linéarité. Éduscol recommande de le réserver au cycle 4 (collège) une fois la compréhension solidement établie.',
  'Enseigner le produit en croix dès le CM1 comme procédure universelle. C''est un raccourci qui empêche les élèves de construire le sens de la proportionnalité.',
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
  'f7020000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Avance',
  'vrai_faux',
  'L''« illusion de linéarité » est un obstacle didactique qui consiste à appliquer un raisonnement proportionnel à des situations qui ne sont pas proportionnelles. Par exemple, un élève qui affirme « si un côté d''un carré double, alors son aire double aussi » est victime de cette illusion.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''illusion de linéarité (ou surextension du modèle proportionnel) est un obstacle abondamment documenté par les recherches de De Bock et Verschaffel. L''élève qui pense que « si le côté double, l''aire double » applique un raisonnement proportionnel (relation linéaire) à une situation qui est quadratique : si le côté passe de 3 à 6 (× 2), l''aire passe de 9 à 36 (× 4, soit × 2²). Cet obstacle est très résistant car le raisonnement proportionnel est tellement pratiqué et valorisé à l''école que les élèves l''appliquent par défaut à toute situation impliquant une variation. Vergnaud montre que la distinction entre situations proportionnelles et non proportionnelles est une compétence clé du champ conceptuel des structures multiplicatives. Éduscol recommande de proposer régulièrement aux élèves des situations de non-proportionnalité (comme l''aire ou le volume) pour développer leur esprit critique face au modèle proportionnel.',
  'Ne pas travailler les situations de non-proportionnalité. Sans contre-exemples, les élèves appliquent aveuglément la proportionnalité à toute situation de variation.',
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
  'f7020000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_proportionnalite',
  'Didactique de la proportionnalité — Situations et obstacles', 'Avance',
  'reponse_courte',
  'Un enseignant propose le problème : « 5 ouvriers construisent un mur en 10 jours. Combien de temps mettront 10 ouvriers ? » Un élève répond « 20 jours ». Quel type de proportionnalité l''élève a-t-il confondu avec la proportionnalité directe ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["proportionnalité inverse","la proportionnalité inverse","Proportionnalité inverse","La proportionnalité inverse","inversement proportionnel","relation inversement proportionnelle"]}'::jsonb,
  'L''élève a confondu proportionnalité directe et proportionnalité inverse. Dans cette situation, plus il y a d''ouvriers, moins il faut de temps (le produit « nombre d''ouvriers × temps » reste constant = 50). La bonne réponse est 5 jours (10 ouvriers = 2 × 5 ouvriers, donc le temps est divisé par 2 : 10 ÷ 2 = 5 jours). L''élève qui répond « 20 jours » applique une proportionnalité directe (2 × plus d''ouvriers = 2 × plus de temps) au lieu de reconnaître une proportionnalité inverse (2 × plus d''ouvriers = 2 × moins de temps). Vergnaud montre que la proportionnalité inverse mobilise un schème plus complexe que la proportionnalité directe car elle implique la notion de produit constant. Éduscol recommande de travailler la proportionnalité inverse au cycle 3 en proposant des situations contrastées avec la proportionnalité directe.',
  'Appliquer systématiquement un raisonnement de proportionnalité directe (« 2 fois plus → 2 fois plus ») sans analyser le sens de la relation entre les grandeurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 12 : math_didactique_representations (prefix fc0f0000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Avance',
  'qcm',
  'Un enseignant de CM2 demande aux élèves de représenter la fraction 3/4 de quatre manières différentes. Laquelle de ces productions NE constitue PAS un changement de registre de représentation au sens de Duval, mais un simple traitement dans le même registre ?',
  NULL,
  '[{"id":"a","label":"Dessiner un rectangle découpé en 4 parts égales dont 3 sont coloriées (registre figuratif)"},{"id":"b","label":"Écrire « trois quarts » en toutes lettres (registre de la langue naturelle)"},{"id":"c","label":"Simplifier 6/8 en 3/4 (traitement dans le registre symbolique — on reste dans l''écriture fractionnaire)"},{"id":"d","label":"Placer le point 3/4 sur une droite graduée (registre graphique)"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Simplifier 6/8 en 3/4 est un traitement au sein du registre symbolique : on transforme une écriture fractionnaire en une autre écriture fractionnaire, sans changer de registre. Les trois autres productions constituent des conversions entre registres : de symbolique vers figuratif (dessin), de symbolique vers verbal (écriture en mots), de symbolique vers graphique (droite graduée). Duval insiste sur cette distinction fondamentale : le traitement opère à l''intérieur d''un registre (simplifier, développer, factoriser dans le registre symbolique), tandis que la conversion change de registre. La distinction est cruciale car les difficultés des élèves proviennent majoritairement des conversions, pas des traitements. Vergnaud montre que la coordination de plusieurs registres pour un même concept (ici, la fraction) est un indicateur de compréhension profonde. Éduscol recommande de travailler explicitement les passages entre registres.',
  'Confondre traitement et conversion. Toute transformation n''est pas un changement de registre : rester dans l''écriture fractionnaire tout en simplifiant est un traitement, pas une conversion.',
  'valide',
  'Génération Claude — Terminologie Duval / Vergnaud / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Intermediaire',
  'vrai_faux',
  'Selon Duval, un élève qui maîtrise parfaitement les calculs avec les fractions dans le registre symbolique (par exemple, 2/3 + 1/6 = 5/6) a nécessairement compris le concept de fraction.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux, et c''est précisément le « paradoxe cognitif » identifié par Duval : un élève peut parfaitement maîtriser les traitements dans un seul registre (le registre symbolique) sans avoir construit la compréhension du concept. Il applique des règles de calcul (trouver le dénominateur commun, additionner les numérateurs) de manière mécanique, sans comprendre ce que ces fractions représentent. La preuve de compréhension, selon Duval, est la capacité de conversion : l''élève peut-il représenter 2/3 sur un schéma ? Peut-il placer 5/6 sur une droite graduée ? Peut-il expliquer en mots ce que signifie « 2/3 + 1/6 » ? Si ces conversions échouent, la maîtrise procédurale est une « illusion de compréhension ». Vergnaud complète en montrant que les fractions constituent un champ conceptuel riche où la compréhension implique de coordonner plusieurs significations (partie-tout, quotient, opérateur, mesure). Éduscol recommande de vérifier la compréhension en demandant des représentations variées.',
  'Se fier à la réussite aux calculs comme seul indicateur de compréhension. La compréhension se vérifie par la capacité de conversion entre registres.',
  'valide',
  'Génération Claude — Terminologie Duval / Vergnaud / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Avance',
  'reponse_courte',
  'Selon Duval, il existe une opération cognitive fondamentale qui consiste à passer d''un registre de représentation à un autre tout en conservant le même objet mathématique (par exemple, passer d''une équation à son graphique). Comment Duval nomme-t-il cette opération ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["conversion","la conversion","Conversion","La conversion","une conversion"]}'::jsonb,
  'Duval nomme « conversion » l''opération cognitive qui consiste à passer d''un registre de représentation sémiotique à un autre tout en préservant la référence au même objet mathématique. Par exemple : passer de y = 2x (registre symbolique) à une droite passant par l''origine (registre graphique) ; passer de « la moitié de 6 » (registre verbal) à 6/2 ou 3 (registre symbolique). La conversion est l''opération la plus coûteuse cognitivement car elle exige de reconnaître les éléments signifiants dans le registre de départ et de les recoder dans le registre d''arrivée. Duval montre que la conversion est le véritable indicateur de compréhension mathématique : un élève qui ne peut pas convertir entre registres n''a pas véritablement accès à l''objet mathématique. Brousseau complète en montrant que les situations didactiques doivent explicitement exiger des conversions pour développer cette compétence. Vergnaud ajoute que la conversion mobilise des schèmes spécifiques à chaque paire de registres.',
  'Confondre conversion et traitement. Le traitement reste dans un même registre ; la conversion change de registre. Les deux sont nécessaires mais la conversion est plus exigeante.',
  'valide',
  'Génération Claude — Terminologie Duval / Brousseau / Vergnaud',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 13 : math_didactique_resolution_pb_polya (prefix fc110000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc110000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Intermediaire',
  'qcm',
  'Un élève de CM2 résout un problème et obtient « le jardin mesure 350 m² ». Selon la démarche de Pólya, quelle vérification devrait-il effectuer dans l''étape 4 (« looking back ») ?',
  NULL,
  '[{"id":"a","label":"Vérifier que le résultat est cohérent avec le contexte : 350 m² est-il plausible pour un jardin ? Vérifier en reprenant le calcul ou en utilisant une autre méthode. Se demander s''il a bien répondu à la question posée"},{"id":"b","label":"Recopier le résultat au propre sans vérification"},{"id":"c","label":"Demander au professeur si la réponse est correcte"},{"id":"d","label":"Encadrer le résultat et passer au problème suivant"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''étape 4 de Pólya (« Looking back ») comprend plusieurs vérifications : (1) la plausibilité du résultat (350 m² pour un jardin est-il raisonnable ? Un terrain de basket fait environ 420 m², donc c''est plausible pour un grand jardin), (2) la vérification par un autre moyen (refaire le calcul par une méthode différente, estimer l''ordre de grandeur), (3) la vérification de l''adéquation à la question (ai-je bien calculé l''aire et non le périmètre ?), (4) la généralisation éventuelle (cette méthode fonctionne-t-elle pour d''autres rectangles ?). Vergnaud montre que les schèmes de contrôle (vérification, anticipation) sont des composantes essentielles de la compétence mathématique. Brousseau souligne que la validation par le milieu (et non par l''enseignant) développe l''autonomie intellectuelle de l''élève. Éduscol recommande d''enseigner explicitement l''étape de vérification, trop souvent négligée dans la pratique scolaire.',
  'Passer systématiquement de la réponse à l''exercice suivant sans vérification. L''étape de retour réflexif est la plus formatrice de la démarche de Pólya.',
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
  'fc110000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Avance',
  'reponse_courte',
  'Pólya recommande, dans l''étape 2 (concevoir un plan), de « chercher un problème apparenté déjà résolu ». Quel est le terme didactique général qui désigne la capacité à réutiliser une stratégie apprise dans un contexte pour l''appliquer à un nouveau contexte ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["transfert","le transfert","Transfert","Le transfert","transfert de connaissances","transfert d''apprentissage"]}'::jsonb,
  'Le transfert est la capacité à mobiliser des connaissances ou des stratégies acquises dans un contexte pour résoudre un problème dans un contexte nouveau. C''est l''un des objectifs fondamentaux de l''enseignement. Pólya le formule ainsi : « Connaissez-vous un problème apparenté ? Pouvez-vous réutiliser son résultat ou sa méthode ? ». Vergnaud montre que le transfert dépend de la robustesse des schèmes : un schème bien construit (par la confrontation à des situations variées) se transfère plus facilement qu''un schème fragile (construit sur un seul type de situation). Brousseau souligne que le transfert nécessite une phase de décontextualisation : le savoir construit dans une situation particulière doit être abstrait et généralisé (c''est le rôle de l''institutionnalisation). Éduscol recommande de varier les contextes et les habillages des problèmes pour favoriser le transfert et éviter que les élèves n''associent une procédure à un seul type d''énoncé.',
  'Croire que le transfert se fait automatiquement. Sans travail explicite de décontextualisation et de mise en réseau, les élèves appliquent les connaissances uniquement dans le contexte où elles ont été apprises.',
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
  'fc110000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_pb_polya',
  'Résolution de problèmes — Démarche de Pólya', 'Avance',
  'vrai_faux',
  'Selon Pólya, la stratégie heuristique « faire un schéma ou un dessin » est uniquement pertinente pour les problèmes de géométrie. Elle n''a pas d''utilité pour les problèmes de numération ou de calcul.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. La stratégie « faire un schéma » est transversale et s''applique à tous les domaines mathématiques. En numération, un schéma en barres (bar model, méthode de Singapour) aide à visualiser les relations entre quantités. En calcul, un arbre de décomposition aide à organiser les étapes. En résolution de problèmes additifs, un schéma « état-transformation-état » aide à comprendre la structure du problème. Pólya recommande le schéma comme heuristique universelle car il permet de passer du registre verbal (l''énoncé) au registre figuratif (le dessin), ce qui constitue une conversion au sens de Duval et favorise la compréhension. Vergnaud montre que le schéma est un outil de représentation qui aide l''élève à identifier les relations entre les données et à choisir l''opération appropriée. Éduscol recommande l''utilisation de schémas (en barres, en lignes, en arbres) comme support de résolution de problèmes dans tous les domaines mathématiques.',
  'Réserver le dessin à la géométrie. Le schéma est un outil heuristique universel qui aide à comprendre la structure d''un problème, quel que soit le domaine.',
  'valide',
  'Génération Claude — Terminologie Pólya / Duval / Vergnaud / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 14 : math_didactique_resolution_problemes (prefix b0250000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0250000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance',
  'qcm',
  'Vergnaud distingue, dans le champ conceptuel des structures additives, trois grandes catégories de problèmes. Parmi les problèmes suivants, lequel relève de la « composition de mesures » (ou réunion de parties) ?',
  NULL,
  '[{"id":"a","label":"« Pierre avait 35 billes. Il en a gagné 12 à la récréation. Combien en a-t-il maintenant ? » (transformation)"},{"id":"b","label":"« Dans la classe, il y a 14 filles et 11 garçons. Combien d''élèves y a-t-il en tout ? » (composition)"},{"id":"c","label":"« Marie a 8 billes de plus que Lucas. Lucas a 15 billes. Combien Marie en a-t-elle ? » (comparaison)"},{"id":"d","label":"« Un train roule à 120 km/h. Quelle distance parcourt-il en 3 heures ? » (proportionnalité)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le problème « 14 filles + 11 garçons = ? élèves » relève de la composition de mesures (ou réunion de parties) : on réunit deux sous-ensembles (les filles et les garçons) pour former un ensemble total (la classe). C''est la structure « partie + partie = tout ». La transformation (a) met en jeu un état initial et un changement ; la comparaison (c) met en relation deux quantités par un écart ; la proportionnalité (d) relève des structures multiplicatives, pas additives. Vergnaud montre que la composition est le type de problème additif le plus simple car il ne fait pas intervenir de dimension temporelle (contrairement à la transformation) ni de relation orientée entre deux collections (contrairement à la comparaison). C''est souvent la première structure additionnelle travaillée au CP. Éduscol recommande de travailler les trois types (composition, transformation, comparaison) et de varier la position de l''inconnue (chercher le tout, chercher une partie).',
  'Confondre composition et transformation. La composition est statique (réunion de parties) ; la transformation est dynamique (changement dans le temps).',
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
  'b0250000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance',
  'vrai_faux',
  'Un « problème à étapes » (problème nécessitant plusieurs calculs intermédiaires) est toujours plus difficile qu''un « problème à une étape » du même domaine mathématique.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. La difficulté d''un problème ne dépend pas uniquement du nombre d''étapes. Un problème à une étape peut être très difficile si la structure sémantique est complexe (par exemple, un problème de comparaison avec recherche du référent : « Marie a 7 billes de moins que Paul. Marie a 15 billes. Combien Paul en a-t-il ? »). À l''inverse, un problème à deux étapes simples (composition puis transformation) peut être accessible si chaque étape est de structure élémentaire. Les facteurs de difficulté identifiés par la recherche incluent : la structure sémantique (composition, transformation, comparaison), la position de l''inconnue, la taille des nombres, la présence de données inutiles, et la transparence du vocabulaire. Vergnaud montre que c''est la complexité des schèmes mobilisés qui détermine la difficulté, pas le nombre de calculs. Éduscol recommande de varier tous ces facteurs indépendamment pour construire une progression fine.',
  'Croire que la difficulté se réduit au nombre de calculs. La structure sémantique et la position de l''inconnue sont des facteurs de difficulté souvent plus déterminants.',
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
  'b0250000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_resolution_problemes',
  'Didactique — Résolution de problèmes', 'Avance',
  'reponse_courte',
  'Brousseau décrit un effet de contrat didactique où l''enseignant simplifie tellement la tâche (en donnant des indices de plus en plus transparents) que l''élève n''a plus rien à chercher et obtient la réponse sans mobiliser le savoir visé. Quel est le nom de cet effet ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["effet Topaze","l''effet Topaze","Effet Topaze","Topaze","topaze","effet topaze","l''effet topaze"]}'::jsonb,
  'L''effet Topaze, nommé d''après la pièce de Marcel Pagnol, est un des effets de contrat didactique les plus connus. Dans la pièce, le maître Topaze fait une dictée et, face aux erreurs de l''élève, donne des indices de plus en plus gros (« des moutonSSS, des moutonSSS ») jusqu''à ce que l''élève écrive le « s » du pluriel sans avoir compris la règle. En mathématiques, l''effet Topaze se manifeste quand l''enseignant pose des questions de plus en plus fermées (« Et si tu essayais de diviser ? », « Par quel nombre pourrais-tu diviser 48 ? », « Essaie de diviser par 4 »), jusqu''à vider le problème de tout contenu mathématique. L''élève « réussit » mais n''a rien appris. Brousseau montre que cet effet est souvent motivé par le souci de ne pas mettre l''élève en échec, mais qu''il est contre-productif car il empêche la construction du savoir. Éduscol recommande un étayage progressif (relances, questions ouvertes) plutôt que la simplification excessive.',
  'Confondre aide légitime (relances ouvertes) et effet Topaze (simplification qui vide la tâche de son contenu). La différence est que la relance maintient la responsabilité chez l''élève.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 15 : math_didactique_situations_brousseau (prefix fc020000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc020000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Avance',
  'qcm',
  'Brousseau décrit un « effet Jourdain » dans le contrat didactique. De quoi s''agit-il ?',
  NULL,
  '[{"id":"a","label":"L''enseignant attribue une valeur savante à une production banale de l''élève : il « reconnaît » dans la réponse triviale de l''élève un savoir mathématique élaboré que l''élève n''a pas réellement mobilisé"},{"id":"b","label":"L''enseignant simplifie progressivement la tâche jusqu''à donner la réponse"},{"id":"c","label":"L''élève refuse de s''engager dans le problème et attend que l''enseignant donne la solution"},{"id":"d","label":"L''enseignant punit un élève qui se trompe pour le motiver à mieux apprendre"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''effet Jourdain (du nom du Bourgeois gentilhomme de Molière, à qui le maître de philosophie fait croire qu''il fait de la prose sans le savoir) se produit quand l''enseignant surinterprete la production de l''élève en lui attribuant une portée savante qu''elle n''a pas. Par exemple, un élève qui trouve la bonne réponse par hasard ou par une procédure primitive (essais-erreurs) se voit dire par l''enseignant : « Tu as fait un raisonnement par exhaustion ! » L''effet Jourdain est le symétrique de l''effet Topaze : au lieu de simplifier la tâche (Topaze), l''enseignant surestime la production (Jourdain). Dans les deux cas, l''apprentissage réel est escamoté. Brousseau montre que cet effet est particulièrement pernicieux car il donne l''illusion de la réussite : l''enseignant est satisfait, l''élève est validé, mais le savoir n''a pas été construit. Éduscol recommande une analyse rigoureuse des productions d''élèves pour distinguer compréhension véritable et réponse correcte accidentelle.',
  'Confondre effet Jourdain et effet Topaze. L''effet Topaze simplifie la tâche ; l''effet Jourdain surestime la production. Les deux empêchent l''apprentissage réel.',
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
  'fc020000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Avance',
  'reponse_courte',
  'Dans la théorie de Brousseau, lors de la phase de validation, les élèves doivent convaincre leurs pairs que leur solution est correcte. Quel type d''activité cognitive cette phase développe-t-elle principalement chez les élèves ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["argumentation","l''argumentation","Argumentation","L''argumentation","raisonnement","preuve","la preuve","argumentation mathématique"]}'::jsonb,
  'La phase de validation développe principalement l''argumentation mathématique (ou la preuve). L''élève ne peut plus se contenter de dire « j''ai trouvé 42 » : il doit expliquer pourquoi 42 est la bonne réponse, convaincre ses pairs par un raisonnement et réfuter les propositions incorrectes. C''est un saut qualitatif par rapport à la phase de formulation (où l''élève communique sa stratégie) : dans la validation, il ne suffit pas de dire ce qu''on a fait, il faut prouver que c''est correct. Brousseau distingue trois niveaux de validation : (1) la vérification empirique (essayer et constater), (2) l''argumentation (expliquer pourquoi ça marche), (3) la démonstration formelle (prouver rigoureusement). À l''école primaire, on travaille principalement les deux premiers niveaux. Vergnaud montre que la capacité d''argumentation est un schème de contrôle qui se construit progressivement. Éduscol inscrit cette compétence dans « Raisonner » : justifier, prouver, argumenter.',
  'Réduire la validation à la simple vérification numérique (recalculer). La validation au sens de Brousseau implique l''argumentation rationnelle, pas le simple recalcul.',
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
  'fc020000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_situations_brousseau',
  'Situations didactiques de Brousseau — Concepts clés', 'Avance',
  'vrai_faux',
  'Selon Brousseau, la phase d''institutionnalisation doit toujours être conduite par l''enseignant et ne peut pas être déléguée aux élèves, car c''est le moment où le savoir personnel devient un savoir partagé et officiel de la classe.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''institutionnalisation est la phase où l''enseignant reprend explicitement la main pour officialiser le savoir construit pendant les phases adidactiques. C''est lui qui : (1) identifie et nomme le savoir mathématique qui a émergé (« Ce que vous avez découvert s''appelle la distributivité »), (2) relie ce savoir au programme et au savoir de référence, (3) fixe la formulation officielle qui sera retenue par la classe, (4) situe ce savoir dans la progression (ce qu''on savait avant, ce qu''on sait maintenant, ce qu''on apprendra ensuite). Brousseau insiste sur le fait que l''institutionnalisation est un acte spécifiquement enseignant qui ne peut pas être délégué : c''est le rôle de l''enseignant de faire le lien entre les productions des élèves (savoir contextualisé) et le savoir savant (savoir décontextualisé). Sans institutionnalisation, les élèves risquent de ne pas identifier ce qu''ils ont appris. Vergnaud complète en montrant que l''institutionnalisation permet la décontextualisation des schèmes, condition nécessaire au transfert.',
  'Omettre la phase d''institutionnalisation en pensant que la mise en commun suffit. Sans formalisation explicite par l''enseignant, le savoir reste implicite et non transférable.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 16 : math_didactique_soustraction (prefix fc010000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc010000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Avance',
  'qcm',
  'Un élève de CE2 calcule 62 − 45 en écrivant : « 45 + ? = 62. 45 + 5 = 50, 50 + 12 = 62, donc 5 + 12 = 17. » Quelle procédure de calcul utilise-t-il ?',
  NULL,
  '[{"id":"a","label":"La soustraction par complément (ou par ajout) : l''élève cherche ce qu''il faut ajouter au nombre retranché pour atteindre le nombre de départ"},{"id":"b","label":"La soustraction posée traditionnelle avec retenue"},{"id":"c","label":"La soustraction par cassage (décomposition du nombre retranché)"},{"id":"d","label":"La soustraction par compensation (ajout aux deux termes)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''élève utilise la soustraction par complément (ou calcul par ajout). Au lieu de retrancher, il cherche ce qu''il faut ajouter à 45 pour atteindre 62, en s''appuyant sur des paliers (passage par la dizaine suivante : 50, puis 62). Cette procédure est très efficace en calcul mental et s''appuie sur la relation fondamentale entre addition et soustraction : a − b = c équivaut à b + c = a. Elle est particulièrement recommandée dans les situations de monnaie (« rendre la monnaie ») où le commerçant compte de la somme à payer jusqu''à la somme donnée. Vergnaud montre que la procédure par complément relève de la même structure additive que la soustraction, mais avec une perspective différente (ascendante au lieu de descendante). Éduscol recommande de travailler cette procédure comme stratégie de calcul mental alternative à la soustraction classique, car elle s''appuie sur l''addition (mieux maîtrisée par les élèves).',
  'Ne pas reconnaître le calcul par complément comme une procédure soustractive. C''est une stratégie légitime et efficace qui s''appuie sur la compétence additive.',
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
  'fc010000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Intermediaire',
  'vrai_faux',
  'Dans la classification de Vergnaud, le problème « Combien faut-il ajouter à 23 pour obtenir 51 ? » est un problème de soustraction, même si le mot « ajouter » suggère une addition.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Ce problème relève bien de la soustraction (51 − 23 = 28), même si sa formulation utilise le verbe « ajouter ». Dans la classification de Vergnaud, il s''agit d''un problème de transformation avec recherche de la transformation : état initial (23) → transformation inconnue → état final (51). Le calcul 51 − 23 = 28 donne la transformation. Ce type de problème est fondamental en didactique car il montre que la soustraction ne se réduit pas au sens « enlever » ou « retirer ». La soustraction a plusieurs sens : retirer une quantité, chercher un complément, calculer un écart, défaire une transformation. Vergnaud insiste sur la nécessité de travailler tous ces sens pour que les élèves construisent un concept complet de la soustraction. Éduscol recommande de varier les formulations et les positions de l''inconnue dans les problèmes soustractifs.',
  'Croire que « ajouter » implique toujours une addition. En mathématiques, c''est la structure du problème (et non le vocabulaire) qui détermine l''opération.',
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
  'fc010000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_soustraction',
  'Didactique de la soustraction — Erreurs et procédures', 'Avance',
  'reponse_courte',
  'Un enseignant de CE1 veut introduire la soustraction avec retenue. Selon les recommandations didactiques, quel matériel concret permet le mieux de donner sens au processus de retenue en reliant la manipulation à la numération positionnelle ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["matériel de numération en base 10","matériel base 10","matériel en base 10","cubes et barres","barres et cubes","matériel de numération","matériel Montessori","matériel multibase"]}'::jsonb,
  'Le matériel de numération en base 10 (cubes-unités, barres-dizaines, plaques-centaines) est le matériel le plus adapté pour donner sens à la retenue. Pour calculer 43 − 17, l''élève représente 43 (4 barres et 3 cubes). Il ne peut pas retirer 7 cubes-unités de 3 cubes-unités : il doit « casser » une barre-dizaine en 10 cubes-unités (il a alors 3 barres et 13 cubes). Il retire 7 cubes (reste 6 cubes) et 1 barre (reste 2 barres) : 43 − 17 = 26. Ce geste physique de « cassage » donne sens à la retenue abstraite (le petit « 1 » qu''on barre). Vergnaud montre que le schème de la retenue se construit d''abord dans l''action manipulatoire. Brousseau insiste sur le fait que le matériel doit permettre la validation autonome : l''élève vérifie lui-même que 10 cubes = 1 barre. Éduscol recommande explicitement le passage par la manipulation avant la formalisation de l''algorithme posé.',
  'Introduire l''algorithme posé avec retenue sans passer par la manipulation. La retenue reste alors une règle mystérieuse que les élèves appliquent sans comprendre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 17 : math_didactique_variables (prefix b0110000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0110000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance',
  'qcm',
  'Un enseignant propose un problème de partage : « Distribue 24 bonbons à 4 enfants. » Il modifie ensuite l''énoncé en : « Distribue 25 bonbons à 4 enfants. » En quoi cette modification de la variable numérique transforme-t-elle fondamentalement la nature de la tâche ?',
  NULL,
  '[{"id":"a","label":"Elle ne change rien — les deux problèmes sont équivalents"},{"id":"b","label":"Elle introduit la question du reste dans la division euclidienne : avec 25, le partage n''est plus exact et l''élève doit gérer un reste, ce qui mobilise une compétence nouvelle"},{"id":"c","label":"Elle rend simplement le calcul plus difficile car 25 est plus grand que 24"},{"id":"d","label":"Elle oblige l''élève à utiliser une calculatrice"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le passage de 24 à 25 est un exemple classique de modification de variable didactique au sens de Brousseau. Avec 24 ÷ 4 = 6, le partage est exact et ne pose pas de difficulté conceptuelle particulière. Avec 25 ÷ 4 = 6 reste 1, l''élève est confronté à une question nouvelle : que faire du bonbon restant ? Le couper ? Le donner à quelqu''un ? Le garder ? Ce « problème du reste » est un obstacle épistémologique fondamental de la division. Il oblige l''élève à penser la division comme une opération qui peut ne pas « tomber juste » et à donner un sens au reste. Ce changement de nombre — un simple +1 — modifie radicalement la nature mathématique de la tâche. Vergnaud montre que le passage de la division exacte à la division avec reste est un saut conceptuel au sein du champ multiplicatif. Éduscol recommande de travailler explicitement la gestion du reste dans les situations de division.',
  'Penser que changer un nombre dans un énoncé ne modifie que la difficulté calculatoire. Ici, le passage de 24 à 25 change la nature même du problème mathématique.',
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
  'b0110000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance',
  'reponse_courte',
  'Un enseignant modifie un problème de géométrie en remplaçant le papier blanc par du papier quadrillé. Ce changement de support modifie les stratégies possibles des élèves (repérage par coordonnées, comptage de carreaux). Dans la terminologie de Brousseau, comment qualifie-t-on ce type de paramètre que l''enseignant peut modifier pour influencer les stratégies des élèves ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["variable didactique","une variable didactique","Variable didactique","la variable didactique"]}'::jsonb,
  'Ce paramètre est une variable didactique au sens de Brousseau. Le passage du papier blanc au papier quadrillé change les stratégies disponibles : sur papier blanc, l''élève doit utiliser la règle graduée et le rapporteur ; sur papier quadrillé, il peut repérer des points par des coordonnées, compter des carreaux pour mesurer des longueurs, et vérifier des angles droits par le quadrillage. Ce changement modifie le rapport de l''élève au savoir géométrique : les procédures optimales ne sont plus les mêmes. Brousseau distingue bien les variables didactiques (qui changent la nature de la tâche mathématique) des variables pédagogiques (qui changent l''organisation de la classe sans modifier la tâche). Le choix du support (papier blanc, papier quadrillé, papier pointé, logiciel de géométrie dynamique) est une variable didactique classique en géométrie. Éduscol recommande de faire varier les supports pour développer la flexibilité des procédures géométriques.',
  'Confondre la variable « support » avec une variable pédagogique. Le support géométrique est bien une variable didactique car il modifie les stratégies de résolution.',
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
  'b0110000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_didactique_variables',
  'Didactique — Variables didactiques', 'Avance',
  'vrai_faux',
  'Selon Brousseau, l''analyse a priori d''une situation didactique consiste à anticiper, avant la séance, les stratégies possibles des élèves, les erreurs probables, les variables didactiques en jeu et leurs effets. Cette analyse est un outil fondamental de la préparation de l''enseignement.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''analyse a priori est un concept fondamental de l''ingénierie didactique (Artigue, 1988) et de la théorie des situations de Brousseau. Elle consiste, avant la mise en œuvre d''une séance, à : (1) identifier le savoir visé et les obstacles potentiels (épistémologiques, didactiques, ontogéniques), (2) recenser les variables didactiques de la situation et anticiper l''effet de leurs valeurs sur les stratégies des élèves, (3) prévoir les différentes procédures que les élèves pourront mobiliser (correctes et erronées), (4) préparer les relances et la phase d''institutionnalisation. L''analyse a priori s''oppose à l''improvisation et permet à l''enseignant de piloter la séance de manière éclairée. Vergnaud insiste sur le fait que l''analyse a priori doit s''appuyer sur la connaissance des champs conceptuels en jeu. Éduscol recommande cette démarche d''anticipation pour la préparation des séances de résolution de problèmes.',
  'Sous-estimer l''importance de l''analyse a priori. Sans anticipation des stratégies et des obstacles, l''enseignant risque d''être surpris par les productions des élèves et de réagir de manière inadaptée.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 18 : math_histoire_mathematiques (prefix fd010000)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000008',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Intermediaire',
  'reponse_courte',
  'Le concept de « zéro » comme nombre (et non simple absence de quantité) a mis des siècles à être accepté par les mathématiciens. Quelle civilisation ancienne est créditée d''avoir utilisé le zéro positionnel dans un système de numération dès le VIIe siècle de notre ère, avant sa transmission au monde arabe puis européen ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["les Indiens","l''Inde","Inde","indienne","civilisation indienne","mathématiciens indiens","Brahmagupta","la civilisation indienne"]}'::jsonb,
  'La civilisation indienne (notamment le mathématicien Brahmagupta, vers 628 ap. J.-C.) est créditée d''avoir conceptualisé le zéro comme un nombre à part entière, avec des règles opératoires (a + 0 = a, a × 0 = 0). Les Babyloniens utilisaient un espace vide (puis un symbole) comme marqueur de position, et les Mayas avaient un symbole de zéro, mais c''est en Inde que le zéro est devenu un nombre avec lequel on calcule. Le zéro a ensuite été transmis au monde arabe (Al-Khwarizmi, IXe siècle) puis à l''Europe (via Fibonacci, XIIIe siècle). L''histoire du zéro illustre un obstacle épistémologique majeur : accepter qu''il existe un nombre qui représente « rien ». Cet obstacle se retrouve chez les élèves aujourd''hui (difficulté à comprendre que 0 est un nombre, que 3 × 0 = 0, ou que 5 + 0 = 5). Éduscol recommande d''utiliser l''histoire du zéro pour contextualiser cet apprentissage.',
  'Attribuer l''invention du zéro aux Arabes ou aux Grecs. Les Arabes ont transmis le zéro indien, mais ne l''ont pas inventé. Les Grecs n''avaient pas de zéro dans leur système de numération.',
  'valide',
  'Génération Claude — Histoire des mathématiques / Brahmagupta / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000009',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Avance',
  'qcm',
  'L''introduction des chiffres arabes (d''origine indienne) en Europe est principalement attribuée à un mathématicien italien du XIIIe siècle qui a publié le « Liber Abaci » en 1202. Qui est ce mathématicien ?',
  NULL,
  '[{"id":"a","label":"Leonardo de Pise, dit Fibonacci"},{"id":"b","label":"Galilée"},{"id":"c","label":"Archimède"},{"id":"d","label":"Léonard de Vinci"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Leonardo de Pise, plus connu sous le nom de Fibonacci (v. 1170–1250), a introduit en Europe le système de numération décimal de position utilisant les chiffres « arabes » (d''origine indienne : 0, 1, 2, 3, 4, 5, 6, 7, 8, 9) dans son ouvrage « Liber Abaci » (1202). Ayant voyagé dans le monde arabe, il avait constaté la supériorité du système positionnel indo-arabe sur les chiffres romains pour le calcul. Le « Liber Abaci » démontre l''efficacité de ce système pour le commerce, les conversions de monnaies et les calculs pratiques. Fibonacci est également célèbre pour la suite qui porte son nom (1, 1, 2, 3, 5, 8, 13...), issue d''un problème de reproduction de lapins posé dans ce même ouvrage. Cette introduction a révolutionné le calcul en Europe et constitue un moment clé de l''histoire de la numération. Éduscol cite Fibonacci comme repère culturel en mathématiques.',
  'Confondre Fibonacci et Galilée (astronome du XVIIe siècle) ou Léonard de Vinci (artiste-ingénieur du XVe siècle). Fibonacci est un mathématicien du XIIIe siècle.',
  'valide',
  'Génération Claude — Histoire des mathématiques / Fibonacci / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd010000-0000-0000-0000-000000000010',
  'Mathematiques', 'didactique_maths', 'math_histoire_mathematiques',
  'Histoire des mathématiques', 'Avance',
  'vrai_faux',
  'VRAI ou FAUX : Blaise Pascal (1623–1662) a inventé la première machine à calculer mécanique, la Pascaline, capable d''effectuer des additions et des soustractions. Cette invention est considérée comme un ancêtre de la calculatrice et de l''ordinateur.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Blaise Pascal a inventé la Pascaline en 1642, à l''âge de 19 ans, pour aider son père (intendant en Normandie) dans ses calculs fiscaux. Cette machine mécanique, à base de roues dentées, est capable d''effectuer automatiquement des additions et des soustractions (les multiplications et divisions nécessitant des additions/soustractions répétées). La Pascaline est considérée comme la première calculatrice mécanique fonctionnelle, ancêtre des calculatrices et des ordinateurs. Pascal est également connu pour le « triangle de Pascal » (triangle arithmétique des coefficients binomiaux, en fait connu des Chinois et des Arabes avant lui) et pour ses travaux sur les probabilités (correspondance avec Fermat, 1654). En didactique, l''histoire de la Pascaline peut servir à montrer que les mathématiques répondent à des besoins pratiques et que les outils de calcul ont une histoire longue, du boulier à l''ordinateur.',
  'Croire que la calculatrice est une invention moderne. L''histoire des machines à calculer remonte au XVIIe siècle avec Pascal et Leibniz.',
  'valide',
  'Génération Claude — Histoire des mathématiques / Pascal / Pascaline',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
