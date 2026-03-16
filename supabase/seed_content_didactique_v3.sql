-- CRPE Français — Didactique V3 (3 séries × 10 questions)
-- subdomain : didactique_francais
-- Séries 61, 62, 63
-- Appliquer APRÈS seed_content_didactique.sql

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 61 — Production d'écrits à l'école primaire — Intermédiaire — free
-- topic_key : did_production_ecrits
-- ================================================================

('61000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Selon la didactique de l''écriture, quelle est la distinction essentielle entre « écriture de travail » et « écriture aboutie » ?',null,
'[{"id":"a","label":"L''écriture de travail est réservée au cycle 2, l''écriture aboutie au cycle 3"},{"id":"b","label":"L''écriture de travail sert à élaborer la pensée (brouillon, notes) sans visée communicative ; l''écriture aboutie vise un lecteur et suppose une révision"},{"id":"c","label":"L''écriture aboutie désigne uniquement les textes narratifs, l''écriture de travail tous les autres types"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La distinction, popularisée par Goody et reprise dans la didactique française, oppose l''écriture comme outil de construction de la pensée (brouillon, journal, notes — sans destinataire immédiat) à l''écriture comme communication (texte adressé, révisé, mis en forme). À l''école, travailler les deux registres est essentiel : le brouillon ne doit pas être perçu comme une « première copie » mais comme une phase de pensée.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Quelle conception sous-tend la notion de « geste de révision » en production d''écrits ?',null,
'[{"id":"a","label":"La révision est un retour sur le texte pour corriger uniquement les fautes d''orthographe"},{"id":"b","label":"La révision est une réécriture globale du texte en partant d''un nouveau brouillon"},{"id":"c","label":"La révision est une activité récursive de relecture-transformation portant sur le contenu, l''organisation et la langue"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La révision est définie par Hayes & Flower (1980), puis reprise en didactique (Reuter, Plane), comme un processus récursif qui intervient à tout moment de l''écriture — pas seulement en fin de texte. Elle porte sur trois niveaux : le contenu (que dire ?), l''organisation (comment structurer ?) et la mise en mots (comment formuler ?). Réduire la révision à la correction orthographique est une erreur fréquente chez les enseignants débutants.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Dans le modèle de Hayes & Flower (1980), quelles sont les trois grandes composantes du processus d''écriture ?',null,
'[{"id":"a","label":"Planification, mise en texte, révision"},{"id":"b","label":"Rédaction, correction, publication"},{"id":"c","label":"Intention, brouillon, mise au net"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le modèle cognitif de Hayes & Flower distingue : (1) la planification (fixer les buts, générer et organiser les idées) ; (2) la mise en texte (traduire les idées en phrases, gérer simultanément syntaxe, orthographe et cohérence) ; (3) la révision (évaluer et modifier le texte). Ces trois processus ne sont pas linéaires : un scripteur expert bascule constamment de l''un à l''autre. À l''école, il faut aider les élèves à alléger la charge cognitive en dissociant ces étapes.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','vrai_faux',
'Vrai ou faux : le fait d''écrire fréquemment des textes longs est la principale variable qui explique les progrès des élèves en production d''écrits, indépendamment des interactions didactiques.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La recherche (notamment Graham & Perin, 2007, méta-analyse sur l''écriture) montre que la quantité d''écriture seule ne suffit pas à produire des progrès. Ce qui compte, c''est la qualité des interactions didactiques : modélisation explicite des stratégies, rétroaction ciblée sur le contenu avant la forme, écriture collaborative, révision guidée. Écrire beaucoup sans étayage peut même renforcer des erreurs.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Qu''est-ce qu''une « contrainte d''écriture » dans une séquence de production de texte ?',null,
'[{"id":"a","label":"Une règle grammaticale que l''élève doit respecter sous peine de pénalité"},{"id":"b","label":"Un obstacle cognitif que l''enseignant cherche à éliminer pour libérer la créativité"},{"id":"c","label":"Un paramètre fixé par la tâche (type de texte, destinataire, longueur, procédé stylistique) qui oriente et structure l''écriture sans la bloquer"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La contrainte d''écriture est un outil didactique : elle délimite la tâche et, paradoxalement, facilite la créativité en réduisant l''angoisse de la page blanche. L''OuLiPo (Queneau, Perec) a montré que les contraintes formelles (lipogramme, S+7, etc.) stimulent l''inventivité. En classe, contraindre le type de texte, le destinataire ou un procédé stylistique guide l''élève sans lui imposer le contenu.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Quelle pratique d''enseignement est associée à la notion d''« atelier d''écriture » dans le sens didactique du terme ?',null,
'[{"id":"a","label":"Une séance libre où les élèves écrivent ce qu''ils veulent sans contrainte"},{"id":"b","label":"Un dispositif structuré combinant écriture individuelle, partage des textes, rétroactions des pairs et reformulation, dans un temps dédié régulier"},{"id":"c","label":"Une activité réservée aux élèves en avance sur le programme"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''atelier d''écriture, dans sa conception didactique (Calkins, Graves ; adapté en France par Tauveron, Reuter), est un dispositif récurrent qui combine : écriture individuelle sous contrainte, lecture à voix haute des productions, rétroactions bienveillantes des pairs sur le fond, puis retravail. Il se distingue de la copie et de la rédaction classique par la régularité, la communauté de lecteurs et la valeur donnée à la révision.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Selon les programmes de l''école primaire, à quel cycle les élèves doivent-ils commencer à produire des textes organisés, en lien avec des types d''écrits variés ?',null,
'[{"id":"a","label":"Dès le cycle 1, oralement puis avec dictée à l''adulte"},{"id":"b","label":"À partir du cycle 2, avec une production autonome progressive"},{"id":"c","label":"Uniquement au cycle 3, une fois que la lecture est fluide"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Les programmes 2015-2024 placent la production de textes dès le cycle 1, principalement sous forme de dictée à l''adulte : l''élève compose oralement, l''enseignant transcrit, ce qui permet de travailler la dimension compositionnelle de l''écriture avant la maîtrise du geste graphique et de l''encodage. Au cycle 2, la production autonome s''amorce. Cette continuité est fondamentale pour ne pas réduire l''écriture au seul encodage.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Qu''est-ce que la « charge cognitive » dans le contexte de la production d''écrits, et comment l''enseignant peut-il l''alléger ?',null,
'[{"id":"a","label":"Le poids physique du cartable ; on l''allège en réduisant les cahiers"},{"id":"b","label":"La surcharge mentale liée à la gestion simultanée de l''orthographe, de la syntaxe, du contenu et de la mise en forme ; on l''allège en automatisant certaines tâches ou en les différant"},{"id":"c","label":"La difficulté du thème ; on l''allège en choisissant des sujets proches de la vie des élèves"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La théorie de la charge cognitive (Sweller) explique pourquoi écrire est difficile : le scripteur doit gérer simultanément des ressources limitées (mémoire de travail) pour l''orthographe, la syntaxe, la cohérence textuelle et le contenu. Stratégies d''allègement : dictée à l''adulte, scribe, traitement de texte, séparation des étapes (planifier d''abord, puis rédiger, puis réviser), automatisation orthographique.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','vrai_faux',
'Vrai ou faux : la rétroaction de l''enseignant doit prioritairement porter sur l''orthographe et la grammaire pour être efficace en production d''écrits.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La recherche (notamment Hattie & Timperley, 2007) montre que les rétroactions les plus efficaces en écriture portent d''abord sur le contenu et la structure (ce que l''élève veut dire, comment il organise ses idées), avant de traiter la forme. Commencer par corriger l''orthographe peut bloquer la prise de risque rédactionnelle et détourner l''attention de l''essentiel. La forme doit être travaillée, mais en second temps.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Qu''est-ce que l''« écriture collaborative » et quel est son intérêt en didactique de l''écriture ?',null,
'[{"id":"a","label":"Un exercice où deux élèves se partagent physiquement la rédaction d''une même phrase"},{"id":"b","label":"Un dispositif où des élèves co-construisent un texte, ce qui externalise le processus d''écriture et favorise la discussion métalinguistique"},{"id":"c","label":"Une activité réservée aux classes bilingues pour produire des textes en deux langues"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''écriture collaborative (ou coécriture) permet aux élèves de rendre visibles et négociables les décisions d''écriture habituellement silencieuses (choix de mots, cohérence, organisation). Les débats entre pairs activent une réflexion métalinguistique que l''écriture individuelle ne génère pas spontanément. C''est aussi un levier de différenciation : les élèves moins avancés bénéficient de la modélisation implicite de leurs pairs.',
'valide','CRPE Français V3 — Didactique','free',true),

-- ================================================================
-- SÉRIE 62 — Différenciation pédagogique — Difficile — premium
-- topic_key : did_differentiation
-- ================================================================

('62000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Selon Perrenoud (1997), sur quoi porte principalement la différenciation pédagogique ?',null,
'[{"id":"a","label":"Sur les objectifs : chaque élève a un programme différent adapté à son niveau"},{"id":"b","label":"Sur les dispositifs, les démarches et les situations d''apprentissage, pour permettre à tous d''atteindre les mêmes compétences"},{"id":"c","label":"Sur les évaluations : chaque élève est noté selon un barème personnalisé"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Pour Perrenoud, différencier ne signifie pas avoir des objectifs différents pour chaque élève (ce serait de la discrimination), mais varier les chemins pour atteindre les mêmes compétences. Il distingue différenciation des structures (groupes de niveaux, RASED) et différenciation des pratiques à l''intérieur de la classe (travail de groupe, tutorat, étayage individualisé). C''est cette dernière qui relève de la responsabilité directe de l''enseignant.',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Quelle est la différence entre « différenciation successive » et « différenciation simultanée » ?',null,
'[{"id":"a","label":"La différenciation successive concerne le cycle 2, la simultanée le cycle 3"},{"id":"b","label":"La différenciation successive alterne différents modes de travail pour toute la classe au fil du temps ; la différenciation simultanée propose en même temps des activités différentes à des groupes différents"},{"id":"c","label":"La différenciation successive porte sur la forme des exercices, la simultanée sur le contenu"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La distinction est de Meirieu (1989). La différenciation successive (ou indirecte) consiste à varier les supports, les rythmes et les modalités pour toute la classe dans le temps — chaque élève finit par trouver un mode qui lui convient. La différenciation simultanée (ou directe) organise en temps réel des activités différentes pour différents groupes. La seconde est plus complexe à gérer mais plus ciblée pour les élèves aux besoins spécifiques.',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','vrai_faux',
'Vrai ou faux : regrouper les élèves par niveau homogène de façon permanente est la forme de différenciation la plus efficace pour réduire les inégalités scolaires.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Les méta-analyses (Slavin, 1990 ; Hattie, 2009) montrent que les groupes de niveaux fixes tendent à creuser les inégalités : les élèves des groupes faibles bénéficient d''un enseignement moins ambitieux et de moins bonnes interactions. Les groupes homogènes peuvent être utiles sur une courte durée et pour un objectif précis, mais la classe hétérogène avec étayage différencié reste le dispositif de référence pour l''équité.',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Qu''est-ce qu''une « aide » efficace en différenciation, selon la recherche en didactique ?',null,
'[{"id":"a","label":"Donner la réponse à l''élève pour qu''il puisse avancer rapidement"},{"id":"b","label":"Simplifier systématiquement la tâche pour que l''élève réussisse sans effort"},{"id":"c","label":"Apporter un étayage ciblé qui maintient l''élève dans la zone proximale de développement, sans se substituer à son activité cognitive"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Une aide efficace s''appuie sur la ZPD (Vygotski) : elle doit permettre à l''élève de réaliser ce qu''il ne pouvait pas faire seul, tout en préservant son activité cognitive. Donner la réponse ou simplifier excessivement supprime le travail cognitif. Les formes d''aide efficaces : reformuler la consigne, fournir un exemple, décomposer la tâche, signaler l''erreur sans la corriger. L''aide doit être temporaire et viser l''autonomisation.',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'En quoi consiste la « différenciation par les processus » par opposition à la « différenciation par les productions » ?',null,
'[{"id":"a","label":"La différenciation par les processus modifie la démarche d''apprentissage (comment apprendre) ; la différenciation par les productions modifie le type de rendu attendu (comment montrer ce qu''on a appris)"},{"id":"b","label":"La différenciation par les processus concerne uniquement les élèves à besoins éducatifs particuliers (BEP)"},{"id":"c","label":"La différenciation par les productions ne concerne que les disciplines artistiques"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Tomlinson (1999) distingue quatre leviers de différenciation : contenu, processus, production et environnement. Différencier le processus, c''est varier les activités, les supports et les étapes pour que chaque élève construise sa compréhension par un chemin adapté. Différencier la production, c''est accepter des rendus variés (oral, écrit, dessin légendé) pour évaluer la même compétence. Ces deux leviers sont complémentaires.',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Qu''est-ce que le « Plan d''Accompagnement Personnalisé » (PAP) et à quels élèves est-il destiné ?',null,
'[{"id":"a","label":"Un plan pour les élèves précoces intellectuellement afin de les enrichir"},{"id":"b","label":"Un dispositif d''aménagements pédagogiques pour les élèves ayant des troubles des apprentissages (dyslexie, dyspraxie…) sans reconnaissance MDPH"},{"id":"c","label":"Un document administratif pour les élèves redoublants précisant les objectifs à atteindre"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le PAP (circulaire 2015) est destiné aux élèves présentant des troubles des apprentissages reconnus médicalement (dyslexie, dyscalculie, TDA/H, dyspraxie…) mais sans nécessiter une notification MDPH. Il précise les aménagements pédagogiques (temps majoré, police adaptée, reformulation des consignes…). Il se distingue du PPS (Plan Personnalisé de Scolarisation), qui lui nécessite une reconnaissance MDPH et peut prévoir une aide humaine (AESH).',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Quelle est la différence entre « remédiation » et « consolidation » dans une approche différenciée ?',null,
'[{"id":"a","label":"La remédiation vise à corriger un obstacle identifié ; la consolidation vise à stabiliser et approfondir un apprentissage fragile mais présent"},{"id":"b","label":"La remédiation est réservée au soutien scolaire hors classe ; la consolidation n''existe pas en pédagogie"},{"id":"c","label":"La remédiation et la consolidation sont synonymes"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La remédiation intervient quand un apprentissage n''est pas construit : elle cherche à lever un obstacle spécifique (souvent en modifiant la situation d''apprentissage, pas seulement en répétant). La consolidation intervient quand l''apprentissage est partiellement acquis mais fragile : elle vise l''automatisation et la généralisation. Confondre les deux conduit à proposer davantage d''exercices à des élèves dont le problème est d''ordre conceptuel, pas procédural.',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Que désigne le « tutorat entre pairs » comme dispositif de différenciation ?',null,
'[{"id":"a","label":"Un dispositif où l''enseignant aide individuellement chaque élève à tour de rôle"},{"id":"b","label":"Un dispositif où un élève plus avancé aide un élève moins avancé, bénéficiant les deux de l''interaction"},{"id":"c","label":"Un programme de soutien assuré par un intervenant extérieur spécialisé"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le tutorat entre pairs est bénéfique pour les deux protagonistes : le tuteur consolide ses connaissances en les reformulant (effet de l''enseignement sur celui qui enseigne — Annis, 1983) ; le tutoré bénéficie d''un étayage dans un langage proche du sien. C''est un dispositif validé par la recherche (effet taille Hattie : 0,55). Il doit être structuré : rôles définis, tâche précise, durée limitée, rotation des rôles.',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','vrai_faux',
'Vrai ou faux : différencier la pédagogie implique nécessairement de préparer des séances entièrement différentes pour chaque élève.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La différenciation efficace repose sur des aménagements ciblés dans une séance commune, pas sur la multiplication des préparations. Des leviers accessibles : varier les supports, adapter la longueur des textes, proposer des aides (glossaire, grille d''aide), prévoir des tâches ouvertes permettant des niveaux d''entrée différents, utiliser des groupes flexibles. Une préparation différente pour chaque élève est inaccessible et contre-productive.',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Qu''appelle-t-on « obstacle didactique » dans le cadre de la différenciation ?',null,
'[{"id":"a","label":"Une difficulté comportementale d''un élève perturbant la classe"},{"id":"b","label":"Une conception erronée ou une résistance cognitive construite par l''élève, qui bloque l''accès à un nouveau savoir"},{"id":"c","label":"Un programme scolaire trop ambitieux pour le niveau de la classe"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La notion d''obstacle didactique (Bachelard, reprise par Brousseau) désigne une conception qui a été utile dans un contexte antérieur mais qui devient un frein dans un contexte nouveau. Ex : croire que multiplier donne toujours un résultat plus grand (vrai pour les entiers, faux pour les décimaux). En français : croire que le sujet est toujours avant le verbe. La remédiation doit cibler l''obstacle, pas seulement proposer plus d''exercices.',
'valide','CRPE Français V3 — Didactique','premium',true),

-- ================================================================
-- SÉRIE 63 — Évaluation des compétences en français — Difficile — premium
-- topic_key : did_evaluation_competences
-- ================================================================

('63000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Quelle est la distinction entre évaluation formative et évaluation sommative ?',null,
'[{"id":"a","label":"L''évaluation formative est notée, la sommative ne l''est pas"},{"id":"b","label":"L''évaluation formative vise à réguler les apprentissages en cours ; l''évaluation sommative fait le bilan des acquis à un moment donné"},{"id":"c","label":"L''évaluation formative concerne uniquement la lecture, la sommative uniquement l''écriture"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Scriven (1967) a proposé cette distinction fondamentale. L''évaluation formative (ou évaluation pour l''apprentissage) intervient pendant la séquence et fournit des informations pour ajuster l''enseignement et guider l''élève. L''évaluation sommative (ou évaluation des apprentissages) intervient en fin de séquence pour constater les acquis. Les deux sont nécessaires et complémentaires. L''évaluation diagnostique, en amont, permet de cerner les acquis préalables.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce qu''une « évaluation critériée » par opposition à une évaluation normative ?',null,
'[{"id":"a","label":"L''évaluation critériée compare chaque élève à la moyenne de la classe ; l''évaluation normative compare à des critères prédéfinis"},{"id":"b","label":"L''évaluation critériée juge la performance par rapport à des critères de réussite explicites ; l''évaluation normative classe les élèves par rapport au groupe"},{"id":"c","label":"L''évaluation critériée est réservée aux enseignants spécialisés, la normative à tous"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''évaluation normative (classement : être dans le tiers supérieur) est peu informative pour l''élève. L''évaluation critériée (ou critérielle) définit à l''avance des critères de réussite transparents et communiqués aux élèves (une grille de relecture, par exemple). Elle permet à l''élève de comprendre où il en est et ce qu''il doit travailler. C''est la forme recommandée dans les programmes et cohérente avec une logique de compétences.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','vrai_faux',
'Vrai ou faux : la note chiffrée est le seul outil d''évaluation pertinent à l''école primaire selon les programmes actuels.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Les programmes de 2015 et le socle commun 2016 ont réaffirmé que l''évaluation à l''école primaire doit être formative, critériée et ne pas se réduire à la notation chiffrée. Les bilans de fin de cycle (livret scolaire unique, LSU) utilisent des niveaux de maîtrise (insuffisant / fragile / satisfaisant / très bonne maîtrise) et non des notes. La note chiffrée peut exister mais elle n''est pas l''outil central de l''évaluation primaire.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce que l''« évaluation par compétences » implique concrètement dans l''enseignement du français ?',null,
'[{"id":"a","label":"Remplacer toutes les évaluations par des projets collectifs non notés"},{"id":"b","label":"Observer et évaluer des capacités transversales en situation (lire pour comprendre, écrire pour communiquer, parler devant la classe) plutôt que de tester uniquement des connaissances isolées"},{"id":"c","label":"Laisser les élèves s''auto-évaluer sans intervention de l''enseignant"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''évaluation par compétences (socle commun) demande d''observer l''élève en situation complexe : lire un texte inconnu pour répondre à une question de compréhension, produire un texte pour un vrai destinataire, prendre la parole en débat. Elle complète (mais ne remplace pas) les évaluations de connaissances ponctuelles. Concrètement, elle implique des grilles critériées, une observation longitudinale et l''utilisation du LSU.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Que désigne l''« effet Pygmalion » (Rosenthal & Jacobson, 1968) dans le contexte de l''évaluation scolaire ?',null,
'[{"id":"a","label":"La tendance des élèves à imiter le comportement de leurs pairs les mieux évalués"},{"id":"b","label":"Le phénomène par lequel les attentes de l''enseignant influencent les performances réelles des élèves, qui finissent par y correspondre"},{"id":"c","label":"L''amélioration automatique des résultats quand on utilise des outils numériques d''évaluation"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''étude de Rosenthal & Jacobson montre que des élèves présentés faussement comme « en forte progression » à leurs enseignants ont effectivement progressé davantage. Cet effet de prophétie auto-réalisatrice (via l''attention, la qualité des interactions, les sollicitations) a des implications directes pour l''évaluation : un enseignant qui juge un élève « faible » risque de lui proposer des tâches moins ambitieuses et de le solliciter moins, renforçant ainsi les inégalités.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce que l''« auto-évaluation » et quelles conditions sont nécessaires pour qu''elle soit formative ?',null,
'[{"id":"a","label":"Laisser l''élève se noter librement sans critères — c''est un droit"},{"id":"b","label":"Demander à l''élève de se corriger seul à la fin d''une évaluation, sans retour de l''enseignant"},{"id":"c","label":"Engager l''élève dans une réflexion sur ses propres apprentissages à partir de critères explicites, pour développer son autonomie et sa métacognition"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''auto-évaluation formative (Black & Wiliam, 1998 ; Hadji, 2012) repose sur : (1) des critères clairs communiqués avant la tâche ; (2) une confrontation entre production et critères ; (3) un retour de l''enseignant qui valide ou corrige. Elle développe la métacognition (capacité à réfléchir sur ses propres processus). Sans critères explicites, l''auto-évaluation libre tend à biaiser vers la surestimation ou la sous-estimation selon le profil de l''élève.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce que le « portfolio » comme outil d''évaluation en français ?',null,
'[{"id":"a","label":"Un recueil chronologique de tout ce que l''élève a produit dans l''année, sans sélection"},{"id":"b","label":"Une collection sélective de travaux choisis par l''élève (et/ou l''enseignant) illustrant sa progression, accompagnée de réflexions sur ses apprentissages"},{"id":"c","label":"Un dossier administratif complété par les parents pour justifier les absences"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le portfolio (ou dossier de compétences) est un outil d''évaluation authentique qui valorise la progression dans le temps plutôt que la performance ponctuelle. Sa caractéristique centrale est la sélection réfléchie : l''élève choisit les travaux qui témoignent de ses progrès et explique ses choix, ce qui développe la métacognition. Il est particulièrement adapté à l''évaluation de compétences complexes comme l''écriture ou la lecture littéraire.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Quelle est la limite principale de la dictée notée comme outil d''évaluation de l''orthographe ?',null,
'[{"id":"a","label":"Elle est trop longue à corriger pour l''enseignant"},{"id":"b","label":"Elle évalue la capacité à orthographier en mode contrôlé (copie lente, attention pleine) et non l''orthographe mobilisée spontanément en production d''écrits"},{"id":"c","label":"Elle n''est pas autorisée par les programmes de l''école primaire"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La dictée évalue l''orthographe en condition artificielle : l''attention est entièrement disponible pour la transcription. En production d''écrits, l''élève gère simultanément contenu, syntaxe et orthographe — et des erreurs apparaissent qui n''existent pas en dictée. La dictée reste utile comme entraînement et comme mesure ponctuelle, mais ne peut pas être le seul outil d''évaluation orthographique. Des outils complémentaires : analyse des erreurs en production, dictée négociée, copie différée.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','vrai_faux',
'Vrai ou faux : une évaluation diagnostique réalisée en début de séquence permet à l''enseignant d''identifier les représentations initiales des élèves et d''ajuster son enseignement avant même de commencer.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. L''évaluation diagnostique (ou évaluation-diagnostic) a pour fonction de repérer les acquis préalables, les obstacles et les représentations erronées avant d''enseigner. Elle permet d''adapter le point de départ de la séquence, d''identifier les élèves qui ont déjà les prérequis (enrichissement) et ceux qui manquent de bases (remédiation préventive). Elle se distingue de l''évaluation formative (pendant) et sommative (après).',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce que la « dictée négociée » (ou dictée dialoguée) comme outil d''évaluation et d''apprentissage ?',null,
'[{"id":"a","label":"Une dictée où l''enseignant lit le texte deux fois et les élèves négocient ensuite la note entre eux"},{"id":"b","label":"Un dispositif où les élèves, après avoir écrit individuellement, confrontent leurs graphies en groupe, argumentent leurs choix et construisent collectivement la version correcte"},{"id":"c","label":"Une dictée simplifiée réservée aux élèves ayant un PAP"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La dictée négociée (Angoujard, 1994) transforme la dictée en situation d''apprentissage métalinguistique : les élèves écrivent individuellement, puis confrontent leurs graphies par groupes en argumentant (« j''ai mis un -s parce que le sujet est pluriel »), avant une mise en commun collective. Ce dispositif développe le raisonnement orthographique, pas seulement la mémorisation de règles. Il est à la fois outil d''apprentissage (formative) et indicateur d''acquisition (sommative partielle).',
'valide','CRPE Français V3 — Didactique','premium',true)

;
