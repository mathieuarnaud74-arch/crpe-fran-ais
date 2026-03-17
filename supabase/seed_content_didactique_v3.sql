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
-- Correct answer distribution: Q1=b, Q2=c, Q3=a, Q5=c, Q6=b, Q7=a, Q8=d, Q10=d
-- ================================================================

('61000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Selon la didactique de l''écriture, quelle est la distinction essentielle entre « écriture de travail » et « écriture aboutie » ?',null,
'[{"id":"a","label":"L''écriture de travail est réservée au cycle 2, l''écriture aboutie au cycle 3"},{"id":"b","label":"L''écriture de travail sert à élaborer la pensée (brouillon, notes) sans visée communicative ; l''écriture aboutie vise un lecteur et suppose une révision"},{"id":"c","label":"L''écriture aboutie désigne uniquement les textes narratifs, l''écriture de travail tous les autres types"},{"id":"d","label":"L''écriture de travail est toujours manuscrite, tandis que l''écriture aboutie est obligatoirement tapée au traitement de texte"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est une distinction fondamentale popularisée par Goody et reprise dans la didactique française. L''écriture de travail, c''est le brouillon, le journal, les notes — écrire pour penser, sans destinataire immédiat. L''écriture aboutie, c''est le texte adressé, révisé, mis en forme pour un lecteur. À l''école, travailler les deux est essentiel ! Et attention : le brouillon ne doit pas être perçu comme une « première copie » à recopier proprement — c''est une phase de pensée à part entière.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Quelle conception sous-tend la notion de « geste de révision » en production d''écrits ?',null,
'[{"id":"a","label":"La révision est un retour sur le texte pour corriger uniquement les fautes d''orthographe"},{"id":"b","label":"La révision est une réécriture globale du texte en partant d''un nouveau brouillon"},{"id":"c","label":"La révision est une activité récursive de relecture-transformation portant sur le contenu, l''organisation et la langue"},{"id":"d","label":"La révision est une étape facultative réservée aux élèves les plus avancés, en fin de cycle 3"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Attention à l''idée reçue la plus répandue ! La révision définie par Hayes & Flower (1980), reprise par Reuter et Plane, c''est un processus récursif qui intervient à tout moment de l''écriture — pas seulement à la fin. Elle porte sur trois niveaux : le contenu (que dire ?), l''organisation (comment structurer ?) et la mise en mots (comment formuler ?). Réduire la révision à la correction orthographique, c''est une erreur fréquente chez les enseignants débutants — et au CRPE, cette nuance est attendue !',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Dans le modèle de Hayes & Flower (1980), quelles sont les trois grandes composantes du processus d''écriture ?',null,
'[{"id":"a","label":"Planification, mise en texte, révision"},{"id":"b","label":"Rédaction, correction, publication"},{"id":"c","label":"Intention, brouillon, mise au net"},{"id":"d","label":"Observation, narration, relecture"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Retiens absolument ce modèle incontournable ! Hayes & Flower distinguent : (1) la planification — fixer les buts, générer et organiser les idées ; (2) la mise en texte — traduire les idées en phrases, gérer simultanément syntaxe, orthographe et cohérence ; (3) la révision — évaluer et modifier. Et surtout : ces trois processus ne sont pas linéaires ! Un scripteur expert bascule constamment de l''un à l''autre. À l''école, on aide les élèves en dissociant ces étapes pour alléger la charge cognitive.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','vrai_faux',
'Vrai ou faux : le fait d''écrire fréquemment des textes longs est la principale variable qui explique les progrès des élèves en production d''écrits, indépendamment des interactions didactiques.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Écrire beaucoup ne suffit pas — c''est même un mythe dangereux. La méta-analyse de Graham & Perin (2007) est très claire sur ce point : c''est la qualité des interactions didactiques qui compte. Modélisation explicite des stratégies, rétroaction ciblée sur le contenu avant la forme, écriture collaborative, révision guidée — voilà ce qui fait progresser les élèves. Écrire beaucoup sans étayage peut même renforcer des erreurs ! La quantité ne remplace jamais la qualité de l''accompagnement.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Qu''est-ce qu''une « contrainte d''écriture » dans une séquence de production de texte ?',null,
'[{"id":"a","label":"Une règle grammaticale que l''élève doit respecter sous peine de pénalité"},{"id":"b","label":"Un obstacle cognitif que l''enseignant cherche à éliminer pour libérer la créativité"},{"id":"c","label":"Un paramètre fixé par la tâche (type de texte, destinataire, longueur, procédé stylistique) qui oriente et structure l''écriture sans la bloquer"},{"id":"d","label":"Une consigne imposée par l''institution scolaire pour uniformiser les productions des élèves d''une même classe"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La contrainte d''écriture, c''est un outil didactique — et paradoxalement, elle libère ! L''OuLiPo (Queneau, Perec) l''a démontré : les contraintes formelles comme le lipogramme ou le S+7 stimulent l''inventivité. En classe, fixer le type de texte, le destinataire ou un procédé stylistique réduit l''angoisse de la page blanche et guide l''élève sans lui imposer le contenu. La contrainte n''est pas un obstacle à la créativité — c''est un tremplin !',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Quelle pratique d''enseignement est associée à la notion d''« atelier d''écriture » dans le sens didactique du terme ?',null,
'[{"id":"a","label":"Une séance libre où les élèves écrivent ce qu''ils veulent sans contrainte"},{"id":"b","label":"Un dispositif structuré combinant écriture individuelle, partage des textes, rétroactions des pairs et reformulation, dans un temps dédié régulier"},{"id":"c","label":"Une activité réservée aux élèves en avance sur le programme"},{"id":"d","label":"Une séance hebdomadaire de calligraphie visant la maîtrise du geste graphique et de la mise en page"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''atelier d''écriture, ce n''est pas une séance libre où l''on écrit n''importe quoi — c''est un dispositif structuré et récurrent ! Dans sa conception didactique (Calkins, Graves ; adapté en France par Tauveron et Reuter), il combine : écriture individuelle sous contrainte, lecture à voix haute des productions, rétroactions bienveillantes des pairs sur le fond, puis retravail. Ce qui le distingue de la rédaction classique ? La régularité, la communauté de lecteurs et la valeur donnée à la révision.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Selon les programmes de l''école primaire, à quel cycle les élèves doivent-ils commencer à produire des textes organisés, en lien avec des types d''écrits variés ?',null,
'[{"id":"a","label":"Dès le cycle 1, oralement puis avec dictée à l''adulte"},{"id":"b","label":"À partir du cycle 2, avec une production autonome progressive"},{"id":"c","label":"Uniquement au cycle 3, une fois que la lecture est fluide"},{"id":"d","label":"Dès le CP, mais uniquement sous forme de phrases simples copiées sans production originale"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Dès le cycle 1 — et c''est l''une des grandes idées des programmes 2015-2024 ! La dictée à l''adulte permet à l''élève de composer oralement pendant que l''enseignant transcrit. Résultat : on travaille la dimension compositionnelle de l''écriture avant même que l''enfant maîtrise le geste graphique ou l''encodage. C''est une continuité fondamentale : ne jamais réduire l''écriture au seul encodage. Au cycle 2, la production autonome s''amorce progressivement sur cette base solide.',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Qu''est-ce que la « charge cognitive » dans le contexte de la production d''écrits, et comment l''enseignant peut-il l''alléger ?',null,
'[{"id":"a","label":"Le poids physique du cartable ; on l''allège en réduisant les cahiers"},{"id":"b","label":"La fatigue visuelle liée à la longueur des textes ; on l''allège en limitant les productions à quelques lignes"},{"id":"c","label":"La difficulté du thème ; on l''allège en choisissant des sujets proches de la vie des élèves"},{"id":"d","label":"La surcharge mentale liée à la gestion simultanée de l''orthographe, de la syntaxe, du contenu et de la mise en forme ; on l''allège en automatisant certaines tâches ou en les différant"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La charge cognitive (Sweller), c''est la clé pour comprendre pourquoi écrire est si difficile ! La mémoire de travail est limitée, et le scripteur doit gérer simultanément l''orthographe, la syntaxe, la cohérence textuelle et le contenu. C''est trop pour un seul cerveau en apprentissage ! Les stratégies d''allègement ? La dictée à l''adulte, le scribe, le traitement de texte, la séparation des étapes (planifier d''abord, rédiger ensuite, réviser après) et l''automatisation orthographique. Concrètement applicable dès demain en classe !',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','vrai_faux',
'Vrai ou faux : la rétroaction de l''enseignant doit prioritairement porter sur l''orthographe et la grammaire pour être efficace en production d''écrits.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et c''est contre-intuitif, alors retiens-le bien ! La recherche (Hattie & Timperley, 2007) est formelle : les rétroactions les plus efficaces en écriture portent d''abord sur le contenu et la structure — ce que l''élève veut dire, comment il organise ses idées. Commencer par la chasse aux fautes d''orthographe peut bloquer la prise de risque rédactionnelle et détourner l''attention de l''essentiel. La forme doit être travaillée, oui — mais en second temps. Le fond d''abord, la forme ensuite !',
'valide','CRPE Français V3 — Didactique','free',true),

('61000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_production_ecrits','Production d''écrits à l''école primaire','Intermediaire','qcm',
'Qu''est-ce que l''« écriture collaborative » et quel est son intérêt en didactique de l''écriture ?',null,
'[{"id":"a","label":"Un exercice où deux élèves se partagent physiquement la rédaction d''une même phrase"},{"id":"b","label":"Une activité réservée aux classes bilingues pour produire des textes en deux langues"},{"id":"c","label":"Un programme numérique de co-rédaction en ligne permettant une écriture simultanée à distance"},{"id":"d","label":"Un dispositif où des élèves co-construisent un texte, ce qui externalise le processus d''écriture et favorise la discussion métalinguistique"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''écriture collaborative (ou coécriture), c''est bien plus que deux élèves qui se partagent le stylo ! Elle rend visibles et négociables les décisions d''écriture habituellement silencieuses : choix de mots, cohérence, organisation. Ces débats entre pairs activent une réflexion métalinguistique que l''écriture individuelle ne génère pas spontanément. C''est aussi un levier de différenciation efficace : les élèves moins avancés bénéficient de la modélisation implicite de leurs pairs. Doublement gagnant !',
'valide','CRPE Français V3 — Didactique','free',true),

-- ================================================================
-- SÉRIE 62 — Différenciation pédagogique — Difficile — premium
-- topic_key : did_differentiation
-- Correct answer distribution: Q1=b, Q2=d, Q4=c, Q5=a, Q6=d, Q7=a, Q8=c, Q10=b
-- ================================================================

('62000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Selon Perrenoud (1997), sur quoi porte principalement la différenciation pédagogique ?',null,
'[{"id":"a","label":"Sur les objectifs : chaque élève a un programme différent adapté à son niveau"},{"id":"b","label":"Sur les dispositifs, les démarches et les situations d''apprentissage, pour permettre à tous d''atteindre les mêmes compétences"},{"id":"c","label":"Sur les évaluations : chaque élève est noté selon un barème personnalisé"},{"id":"d","label":"Sur le matériel pédagogique : chaque élève dispose de manuels différents correspondant à son profil d''apprentissage"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Point crucial à retenir pour le CRPE ! Pour Perrenoud, différencier ne signifie pas avoir des objectifs différents pour chaque élève — ce serait de la discrimination. Il s''agit de varier les chemins pour atteindre les mêmes compétences. Il distingue différenciation des structures (groupes de niveaux, RASED) et différenciation des pratiques à l''intérieur de la classe (travail de groupe, tutorat, étayage individualisé). C''est cette dernière qui relève directement de ta responsabilité en tant qu''enseignant(e).',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Quelle est la différence entre « différenciation successive » et « différenciation simultanée » ?',null,
'[{"id":"a","label":"La différenciation successive concerne le cycle 2, la simultanée le cycle 3"},{"id":"b","label":"La différenciation successive porte sur la forme des exercices, la simultanée sur le contenu"},{"id":"c","label":"La différenciation successive et la simultanée sont deux noms pour le même dispositif, selon les auteurs"},{"id":"d","label":"La différenciation successive alterne différents modes de travail pour toute la classe au fil du temps ; la différenciation simultanée propose en même temps des activités différentes à des groupes différents"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La distinction est de Meirieu (1989) — à retenir ! La différenciation successive (ou indirecte) : on varie les supports, les rythmes, les modalités pour toute la classe dans le temps — chaque élève finit par trouver un mode qui lui convient. La différenciation simultanée (ou directe) : en temps réel, des activités différentes pour des groupes différents. La seconde est plus complexe à gérer mais plus ciblée pour les élèves aux besoins spécifiques. Les deux sont complémentaires, pas opposées !',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','vrai_faux',
'Vrai ou faux : regrouper les élèves par niveau homogène de façon permanente est la forme de différenciation la plus efficace pour réduire les inégalités scolaires.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et les méta-analyses sont sans appel là-dessus ! Slavin (1990) et Hattie (2009) montrent que les groupes de niveaux fixes tendent à creuser les inégalités : les élèves des groupes faibles reçoivent un enseignement moins ambitieux et bénéficient de moins bonnes interactions. Les groupes homogènes peuvent être utiles sur une courte durée et pour un objectif précis — mais la classe hétérogène avec étayage différencié reste le dispositif de référence pour l''équité. La recherche est claire : l''hétérogénéité est une ressource, pas un problème !',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Qu''est-ce qu''une « aide » efficace en différenciation, selon la recherche en didactique ?',null,
'[{"id":"a","label":"Donner la réponse à l''élève pour qu''il puisse avancer rapidement"},{"id":"b","label":"Simplifier systématiquement la tâche pour que l''élève réussisse sans effort"},{"id":"c","label":"Apporter un étayage ciblé qui maintient l''élève dans la zone proximale de développement, sans se substituer à son activité cognitive"},{"id":"d","label":"Allonger le temps accordé à l''élève pour réaliser la tâche sans modifier ni la consigne ni le niveau de difficulté"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'C''est ça ! L''aide efficace s''appuie sur la ZPD de Vygotski : elle doit permettre à l''élève de faire ce qu''il ne pouvait pas faire seul, tout en préservant son activité cognitive. Donner la réponse ou simplifier à l''excès supprime le travail cognitif — ce n''est plus de l''aide, c''est du contournement. Les formes d''aide vraiment efficaces : reformuler la consigne, fournir un exemple, décomposer la tâche, signaler l''erreur sans la corriger. Et l''aide doit toujours être temporaire — elle vise l''autonomisation !',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'En quoi consiste la « différenciation par les processus » par opposition à la « différenciation par les productions » ?',null,
'[{"id":"a","label":"La différenciation par les processus modifie la démarche d''apprentissage (comment apprendre) ; la différenciation par les productions modifie le type de rendu attendu (comment montrer ce qu''on a appris)"},{"id":"b","label":"La différenciation par les processus concerne uniquement les élèves à besoins éducatifs particuliers (BEP)"},{"id":"c","label":"La différenciation par les productions ne concerne que les disciplines artistiques"},{"id":"d","label":"La différenciation par les processus désigne uniquement le recours aux outils numériques pour personnaliser le parcours de chaque élève"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Tomlinson (1999) distingue quatre leviers de différenciation : contenu, processus, production et environnement. Différencier le processus, c''est varier les activités et les étapes pour que chaque élève construise sa compréhension par un chemin adapté. Différencier la production, c''est accepter des rendus variés — oral, écrit, dessin légendé — pour évaluer la même compétence. Ces deux leviers sont complémentaires et s''adressent à tous les élèves, pas seulement à ceux qui ont des besoins particuliers !',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Qu''est-ce que le « Plan d''Accompagnement Personnalisé » (PAP) et à quels élèves est-il destiné ?',null,
'[{"id":"a","label":"Un plan pour les élèves précoces intellectuellement afin de les enrichir"},{"id":"b","label":"Un document administratif pour les élèves redoublants précisant les objectifs à atteindre"},{"id":"c","label":"Un plan d''action élaboré conjointement par l''enseignant et les parents pour tout élève en difficulté passagère, sans condition médicale"},{"id":"d","label":"Un dispositif d''aménagements pédagogiques pour les élèves ayant des troubles des apprentissages (dyslexie, dyspraxie…) sans reconnaissance MDPH"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Retiens bien la distinction PAP / PPS — elle est fréquente au CRPE ! Le PAP (circulaire 2015) concerne les élèves avec des troubles des apprentissages reconnus médicalement (dyslexie, dyscalculie, TDA/H, dyspraxie…) mais sans notification MDPH. Il précise des aménagements pédagogiques : temps majoré, police adaptée, reformulation des consignes… Le PPS (Plan Personnalisé de Scolarisation), lui, nécessite une reconnaissance MDPH et peut prévoir une aide humaine (AESH). Deux dispositifs, deux situations différentes !',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Quelle est la différence entre « remédiation » et « consolidation » dans une approche différenciée ?',null,
'[{"id":"a","label":"La remédiation vise à corriger un obstacle identifié ; la consolidation vise à stabiliser et approfondir un apprentissage fragile mais présent"},{"id":"b","label":"La remédiation est réservée au soutien scolaire hors classe ; la consolidation n''existe pas en pédagogie"},{"id":"c","label":"La remédiation et la consolidation sont synonymes"},{"id":"d","label":"La remédiation concerne uniquement les apprentissages liés à la lecture, la consolidation les apprentissages liés à l''écriture"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Attention, ce ne sont pas des synonymes — et confondre les deux est une erreur pratique courante ! La remédiation intervient quand un apprentissage n''est pas construit : elle cherche à lever un obstacle spécifique, souvent en modifiant la situation d''apprentissage — pas simplement en répétant. La consolidation intervient quand l''apprentissage est partiellement acquis mais fragile : elle vise l''automatisation et la généralisation. Proposer des exercices supplémentaires à un élève dont le problème est conceptuel, ça ne remédie pas — ça consolide ce qui n''est pas encore construit !',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Que désigne le « tutorat entre pairs » comme dispositif de différenciation ?',null,
'[{"id":"a","label":"Un dispositif où l''enseignant aide individuellement chaque élève à tour de rôle"},{"id":"b","label":"Un programme de soutien assuré par un intervenant extérieur spécialisé"},{"id":"c","label":"Un dispositif où un élève plus avancé aide un élève moins avancé, bénéficiant les deux de l''interaction"},{"id":"d","label":"Un système d''entraide spontanée entre élèves de même niveau, sans encadrement de l''enseignant"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le tutorat entre pairs, c''est doublement gagnant ! Le tuteur consolide ses connaissances en les reformulant — c''est l''effet de l''enseignement sur celui qui enseigne (Annis, 1983) — et le tutoré bénéficie d''un étayage dans un langage proche du sien. La recherche (effet taille Hattie : 0,55) valide ce dispositif. Mais attention : il doit être structuré ! Rôles définis, tâche précise, durée limitée, rotation des rôles. Sans structure, le tutorat peut se transformer en copie passive — et ça, c''est l''opposé de l''objectif !',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','vrai_faux',
'Vrai ou faux : différencier la pédagogie implique nécessairement de préparer des séances entièrement différentes pour chaque élève.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et cette idée décourage beaucoup d''enseignants débutants ! La différenciation efficace repose sur des aménagements ciblés dans une séance commune. Des leviers accessibles : varier les supports, adapter la longueur des textes, proposer des aides (glossaire, grille d''aide), concevoir des tâches ouvertes avec plusieurs niveaux d''entrée, utiliser des groupes flexibles. Préparer une séance entièrement différente pour chaque élève ? Inaccessible et contre-productif. La différenciation, c''est de la finesse, pas de la démultiplication du travail !',
'valide','CRPE Français V3 — Didactique','premium',true),

('62000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_differentiation','Différenciation pédagogique','Difficile','qcm',
'Qu''appelle-t-on « obstacle didactique » dans le cadre de la différenciation ?',null,
'[{"id":"a","label":"Une difficulté comportementale d''un élève perturbant la classe"},{"id":"b","label":"Une conception erronée ou une résistance cognitive construite par l''élève, qui bloque l''accès à un nouveau savoir"},{"id":"c","label":"Un programme scolaire trop ambitieux pour le niveau de la classe"},{"id":"d","label":"Un manque de ressources matérielles (manuels, outils numériques) qui empêche l''enseignant de différencier efficacement"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''obstacle didactique (Bachelard, repris par Brousseau), c''est une idée fascinante : une conception qui a été utile dans un contexte antérieur mais qui devient un frein dans un contexte nouveau. Exemple en maths : croire que multiplier donne toujours un résultat plus grand — vrai pour les entiers, faux pour les décimaux. En français : croire que le sujet est toujours avant le verbe. L''obstacle n''est pas une ignorance — c''est un savoir mal généralisé. Et pour y remédier, il ne sert à rien d''empiler des exercices : il faut cibler et déconstruire l''obstacle.',
'valide','CRPE Français V3 — Didactique','premium',true),

-- ================================================================
-- SÉRIE 63 — Évaluation des compétences en français — Difficile — premium
-- topic_key : did_evaluation_competences
-- Correct answer distribution: Q1=b, Q2=a, Q4=d, Q5=b, Q6=c, Q7=a, Q8=b, Q10=d
-- ================================================================

('63000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Quelle est la distinction entre évaluation formative et évaluation sommative ?',null,
'[{"id":"a","label":"L''évaluation formative est notée, la sommative ne l''est pas"},{"id":"b","label":"L''évaluation formative vise à réguler les apprentissages en cours ; l''évaluation sommative fait le bilan des acquis à un moment donné"},{"id":"c","label":"L''évaluation formative concerne uniquement la lecture, la sommative uniquement l''écriture"},{"id":"d","label":"L''évaluation formative est réalisée par les parents, l''évaluation sommative par l''enseignant"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La distinction de Scriven (1967) est incontournable au CRPE ! L''évaluation formative — ou évaluation pour l''apprentissage — intervient pendant la séquence et fournit des informations pour ajuster l''enseignement et guider l''élève. L''évaluation sommative — ou évaluation des apprentissages — intervient en fin de séquence pour constater les acquis. Les deux sont nécessaires et complémentaires. Et n''oublie pas la troisième : l''évaluation diagnostique, en amont, pour cerner les acquis préalables avant même de commencer à enseigner.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce qu''une « évaluation critériée » par opposition à une évaluation normative ?',null,
'[{"id":"a","label":"L''évaluation critériée juge la performance par rapport à des critères de réussite explicites ; l''évaluation normative classe les élèves par rapport au groupe"},{"id":"b","label":"L''évaluation critériée compare chaque élève à la moyenne de la classe ; l''évaluation normative compare à des critères prédéfinis"},{"id":"c","label":"L''évaluation critériée est réservée aux enseignants spécialisés, la normative à tous"},{"id":"d","label":"L''évaluation critériée s''applique uniquement aux compétences orales, la normative aux compétences écrites"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'C''est l''une des questions classiques du CRPE — retiens-la ! L''évaluation normative classe les élèves les uns par rapport aux autres : être dans le tiers supérieur. Peu informative pour l''élève lui-même. L''évaluation critériée (ou critérielle) définit à l''avance des critères de réussite transparents, communiqués aux élèves avant la tâche — une grille de relecture par exemple. L''élève sait où il en est et ce qu''il doit travailler. C''est la forme recommandée par les programmes, cohérente avec une logique de compétences.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','vrai_faux',
'Vrai ou faux : la note chiffrée est le seul outil d''évaluation pertinent à l''école primaire selon les programmes actuels.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Les programmes de 2015 et le socle commun de 2016 sont très clairs : l''évaluation à l''école primaire doit être formative, critériée, et ne pas se réduire à la notation chiffrée. Le livret scolaire unique (LSU) utilise des niveaux de maîtrise : insuffisant / fragile / satisfaisant / très bonne maîtrise. La note chiffrée peut exister, mais elle n''est pas l''outil central. C''est une évolution importante à connaître pour le CRPE : l''évaluation est au service des apprentissages, pas du classement.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce que l''« évaluation par compétences » implique concrètement dans l''enseignement du français ?',null,
'[{"id":"a","label":"Remplacer toutes les évaluations par des projets collectifs non notés"},{"id":"b","label":"Laisser les élèves s''auto-évaluer sans intervention de l''enseignant"},{"id":"c","label":"Tester uniquement les connaissances déclaratives (règles, définitions) pour s''assurer que les fondamentaux sont maîtrisés"},{"id":"d","label":"Observer et évaluer des capacités transversales en situation (lire pour comprendre, écrire pour communiquer, parler devant la classe) plutôt que de tester uniquement des connaissances isolées"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''évaluation par compétences (socle commun), c''est observer l''élève en situation complexe : lire un texte inconnu pour répondre à une question de compréhension, produire un texte pour un vrai destinataire, prendre la parole en débat. Elle complète les évaluations de connaissances ponctuelles — elle ne les remplace pas. Concrètement : grilles critériées, observation longitudinale, utilisation du LSU. L''objectif ? Évaluer ce que l''élève sait réellement faire, pas seulement ce qu''il peut restituer le jour du contrôle.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Que désigne l''« effet Pygmalion » (Rosenthal & Jacobson, 1968) dans le contexte de l''évaluation scolaire ?',null,
'[{"id":"a","label":"La tendance des élèves à imiter le comportement de leurs pairs les mieux évalués"},{"id":"b","label":"Le phénomène par lequel les attentes de l''enseignant influencent les performances réelles des élèves, qui finissent par y correspondre"},{"id":"c","label":"L''amélioration automatique des résultats quand on utilise des outils numériques d''évaluation"},{"id":"d","label":"La tendance des enseignants à surévaluer les élèves qu''ils connaissent personnellement en dehors de l''école"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''effet Pygmalion, c''est l''une des découvertes les plus puissantes — et les plus inquiétantes — de la psychologie de l''éducation. Rosenthal & Jacobson ont montré que des élèves présentés faussement comme « en forte progression » ont effectivement progressé davantage. La prophétie auto-réalisatrice fonctionne via l''attention de l''enseignant, la qualité des interactions, les sollicitations. Implication directe pour toi : un enseignant qui juge un élève « faible » risque de lui proposer des tâches moins ambitieuses — renforçant ainsi les inégalités. Tes attentes façonnent les résultats !',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce que l''« auto-évaluation » et quelles conditions sont nécessaires pour qu''elle soit formative ?',null,
'[{"id":"a","label":"Laisser l''élève se noter librement sans critères — c''est un droit"},{"id":"b","label":"Demander à l''élève de se corriger seul à la fin d''une évaluation, sans retour de l''enseignant"},{"id":"c","label":"Engager l''élève dans une réflexion sur ses propres apprentissages à partir de critères explicites, pour développer son autonomie et sa métacognition"},{"id":"d","label":"Confier à l''élève la responsabilité de choisir lui-même les compétences qu''il souhaite faire évaluer à chaque séance"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''auto-évaluation formative (Black & Wiliam, 1998 ; Hadji, 2012) repose sur trois conditions indispensables : des critères clairs communiqués avant la tâche, une confrontation entre sa production et ces critères, et un retour de l''enseignant qui valide ou corrige. Elle développe la métacognition — la capacité à réfléchir sur ses propres processus d''apprentissage. Sans critères explicites, l''auto-évaluation libre bascule vers la surestimation ou la sous-estimation selon le profil de l''élève. Les critères, c''est la clé !',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce que le « portfolio » comme outil d''évaluation en français ?',null,
'[{"id":"a","label":"Une collection sélective de travaux choisis par l''élève (et/ou l''enseignant) illustrant sa progression, accompagnée de réflexions sur ses apprentissages"},{"id":"b","label":"Un recueil chronologique de tout ce que l''élève a produit dans l''année, sans sélection"},{"id":"c","label":"Un dossier administratif complété par les parents pour justifier les absences"},{"id":"d","label":"Un outil numérique automatisé qui génère des bilans de compétences à partir des données saisies par l''enseignant"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le portfolio, c''est un outil d''évaluation authentique qui valorise la progression dans le temps, pas la performance ponctuelle. Sa caractéristique centrale ? La sélection réfléchie : l''élève choisit les travaux qui témoignent de ses progrès et explique ses choix — ce qui développe la métacognition. Ce n''est pas un simple classeur de toutes les productions ! C''est particulièrement adapté à l''évaluation de compétences complexes comme l''écriture ou la lecture littéraire. Un outil puissant et trop peu utilisé.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Quelle est la limite principale de la dictée notée comme outil d''évaluation de l''orthographe ?',null,
'[{"id":"a","label":"Elle est trop longue à corriger pour l''enseignant"},{"id":"b","label":"Elle évalue la capacité à orthographier en mode contrôlé (copie lente, attention pleine) et non l''orthographe mobilisée spontanément en production d''écrits"},{"id":"c","label":"Elle n''est pas autorisée par les programmes de l''école primaire"},{"id":"d","label":"Elle favorise les élèves auditifs au détriment des élèves visuels, créant une inégalité structurelle dans l''évaluation"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est un point subtil mais fondamental ! La dictée évalue l''orthographe dans une situation artificielle : toute l''attention est disponible pour la transcription. En production d''écrits, l''élève gère simultanément contenu, syntaxe et orthographe — et des erreurs apparaissent qui n''existent pas en dictée. La dictée reste utile comme entraînement et mesure ponctuelle, mais ne peut pas être le seul outil d''évaluation orthographique. Des compléments indispensables : analyse des erreurs en production, dictée négociée, copie différée.',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','vrai_faux',
'Vrai ou faux : une évaluation diagnostique réalisée en début de séquence permet à l''enseignant d''identifier les représentations initiales des élèves et d''ajuster son enseignement avant même de commencer.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai, et c''est un outil précieux souvent négligé ! L''évaluation diagnostique a pour mission de repérer les acquis préalables, les obstacles et les représentations erronées avant d''enseigner. Elle permet d''adapter le point de départ de la séquence, d''identifier les élèves qui ont déjà les prérequis (enrichissement possible) et ceux qui manquent de bases (remédiation préventive). Elle se distingue nettement de l''évaluation formative (pendant la séquence) et de l''évaluation sommative (après). Trois moments, trois fonctions différentes — à bien distinguer !',
'valide','CRPE Français V3 — Didactique','premium',true),

('63000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_evaluation_competences','Évaluation des compétences en français','Difficile','qcm',
'Qu''est-ce que la « dictée négociée » (ou dictée dialoguée) comme outil d''évaluation et d''apprentissage ?',null,
'[{"id":"a","label":"Une dictée où l''enseignant lit le texte deux fois et les élèves négocient ensuite la note entre eux"},{"id":"b","label":"Une dictée simplifiée réservée aux élèves ayant un PAP"},{"id":"c","label":"Une dictée individuelle corrigée immédiatement par l''enseignant à voix haute, sans phase de travail en groupe"},{"id":"d","label":"Un dispositif où les élèves, après avoir écrit individuellement, confrontent leurs graphies en groupe, argumentent leurs choix et construisent collectivement la version correcte"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La dictée négociée (Angoujard, 1994), c''est la transformation de la dictée en véritable situation d''apprentissage métalinguistique ! Les élèves écrivent individuellement, puis confrontent leurs graphies par groupes en argumentant : « j''ai mis un -s parce que le sujet est pluriel ». Ensuite, mise en commun collective. Ce dispositif développe le raisonnement orthographique — pas seulement la mémorisation de règles. C''est à la fois un outil d''apprentissage (formatif) et un indicateur d''acquisition (sommatif partiel). Doublement efficace !',
'valide','CRPE Français V3 — Didactique','premium',true)

;
