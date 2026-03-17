-- CRPE Français — Compréhension de texte V3 (2 séries × 10 questions)
-- subdomain : comprehension_texte
-- Séries 71, 72
-- Appliquer APRÈS seed_content_comprehension_texte_v2.sql

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 71 — Compréhension de texte poétique — Difficile — premium
-- topic_key : cpt_texte_poetique
-- ================================================================

-- Q1 — correct = b
('71000000-0000-0000-0000-000000000001','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Dans le poème de Verlaine « Il pleure dans mon cœur / Comme il pleut sur la ville », quel procédé stylistique caractérise le premier vers ?',null,
'[{"id":"a","label":"Une métaphore filée"},{"id":"b","label":"Une comparaison implicite fondée sur une correspondance entre état intérieur et phénomène naturel (analogie lyrique)"},{"id":"c","label":"Une hyperbole exprimant une douleur extrême"},{"id":"d","label":"Une personnification de la pluie dotée de sentiments humains"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Attention, ce n''est pas une métaphore filée ! Une métaphore filée se développerait de façon systématique sur plusieurs vers. Ici, Verlaine établit une correspondance entre la pluie extérieure et une tristesse intérieure — c''est l''analogie lyrique symboliste par excellence, entre le monde physique et l''état émotionnel du locuteur. Et ce n''est pas davantage une hyperbole : il n''y a aucune exagération quantitative. C''est l''intimité entre dedans et dehors qui fait toute la beauté verlainienne.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q2 — correct = d (correct text moved from b to d ; old d label is new wrong answer at b)
('71000000-0000-0000-0000-000000000002','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Qu''est-ce qu''un enjambement dans la poésie versifiée ?',null,
'[{"id":"a","label":"La répétition d''un mot en début de vers"},{"id":"b","label":"Une rime croisée entre deux strophes non contiguës"},{"id":"c","label":"Une pause syntaxique coïncidant exactement avec la fin du vers"},{"id":"d","label":"Le débordement de la phrase ou du sens d''un vers sur le vers suivant, sans coïncidence entre pause syntaxique et fin de vers"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Exactement ! L''enjambement, c''est quand la phrase refuse de s''arrêter à la fin du vers — elle déborde sur le vers suivant, créant une tension entre le rythme métrique et le rythme syntaxique. Pense à Hugo : « Demain, dès l''aube, à l''heure où blanchit la campagne, / Je partirai. » La coupure syntaxique tombe au milieu du vers suivant. Cet effet de suspension ou d''accélération est un outil expressif puissant — à ne pas confondre avec l''anaphore (répétition en début de vers) !',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q3 — correct = c (correct text moved from b to c ; old c becomes b ; new wrong at d)
('71000000-0000-0000-0000-000000000003','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Dans l''alexandrin classique, où se situe habituellement la césure et comment la nomme-t-on ?',null,
'[{"id":"a","label":"Après la 4e syllabe — on l''appelle la coupe"},{"id":"b","label":"Après la 8e syllabe — on l''appelle la pause"},{"id":"c","label":"Après la 6e syllabe — on l''appelle l''hémistiche"},{"id":"d","label":"Après la 5e syllabe — on l''appelle le pivot"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Retiens bien : l''alexandrin, c''est 12 syllabes, et la césure principale tombe obligatoirement après la 6e — ce qui donne deux hémistiches de 6 syllabes. Par exemple chez Lamartine : « Souvent sur la montagne // à l''ombre du vieux chêne ». C''est la règle classique. Au XIXe siècle, les Romantiques ont osé la briser avec le trimètre romantique (4/4/4) — une vraie révolution poétique ! Mais au concours, on part toujours de la règle avant de connaître les exceptions.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q4 — correct = a (kept) ; new wrong at d
('71000000-0000-0000-0000-000000000004','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Qu''est-ce que la « versification libre » (vers libre) et comment la reconnaître ?',null,
'[{"id":"a","label":"Des vers qui ne respectent ni la métrique régulière, ni la rime obligatoire, mais peuvent conserver d''autres effets rythmiques (répétitions, coupes, allitérations)"},{"id":"b","label":"Des vers sans aucune contrainte formelle ni stylistique — une écriture spontanée"},{"id":"c","label":"Des vers avec rimes mais sans mètre fixe"},{"id":"d","label":"Des vers isométriques dont la longueur varie librement d''une strophe à l''autre mais reste fixe au sein de chaque strophe"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Attention à l''idée reçue : le vers libre n''est pas de l''écriture spontanée sans travail ! Il s''affranchit de la métrique syllabique fixe et de la rime obligatoire — mais pas du rythme. Cendrars, Michaux, Prévert ont des rythmes très construits. Le vers libre, apparu avec les symbolistes (Gustave Kahn) puis Apollinaire, garde la disposition en lignes, les répétitions, les figures sonores. C''est de la liberté choisie, pas du relâchement. Nuance capitale pour le CRPE !',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q5 — correct = c (correct text moved from b to c ; old c becomes b ; new wrong at d)
('71000000-0000-0000-0000-000000000005','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Quelle est la différence entre une allitération et une assonance ?',null,
'[{"id":"a","label":"L''allitération est la répétition de voyelles ; l''assonance est la répétition de consonnes"},{"id":"b","label":"Il n''y a aucune différence : ce sont des synonymes"},{"id":"c","label":"L''allitération est la répétition de consonnes initiales ou dominantes ; l''assonance est la répétition de sons vocaliques"},{"id":"d","label":"L''allitération concerne uniquement les sons en début de vers ; l''assonance concerne uniquement les sons en fin de vers"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Ne les confonds pas — c''est un piège classique ! L''allitération, ce sont les consonnes : « Pour qui sont ces serpents qui sifflent sur vos têtes » (Racine) — entends le /s/ qui siffle ! L''assonance, ce sont les voyelles : « Les sanglots longs des violons de l''automne » (Verlaine) — le son /ɔ̃/ résonne tout du long. Les deux sont des figures sonores qui créent des effets musicaux et expressifs. Retiens : Allitération = consonnes (comme Allitération/consonne, les deux commencent par une consonne !)',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q6 — correct = d (correct text moved from a to d ; old a slot now wrong ; new wrong at a)
('71000000-0000-0000-0000-000000000006','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Dans le poème « Le Dormeur du val » de Rimbaud, la chute « Il a deux trous rouges au côté droit » crée quel effet ?',null,
'[{"id":"a","label":"Une métonymie soulignant la gloire du soldat tombé au combat"},{"id":"b","label":"Une hyperbole soulignant la beauté du personnage"},{"id":"c","label":"Une comparaison entre le soldat et la nature"},{"id":"d","label":"Un effet de surprise tragique (la mort violente est révélée après une description paisible)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'C''est ça ! Rimbaud construit un tableau pastoral serein — la nature, l''eau, la lumière, un jeune homme endormi — puis, dans le dernier vers, la vérité éclate : il est mort au combat. C''est la clausule, l''effet de chute. Et remarque la sobriété du langage : « deux trous rouges ». Pas de pathos, pas d''exagération — juste la brutalité nue de la guerre. La déshumanisation par la précision chirurgicale du détail. Ce contraste est ce qui rend le poème inoubliable.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q7 — correct = c (correct text moved from b to c ; old c becomes b ; new wrong at d)
('71000000-0000-0000-0000-000000000007','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Qu''appelle-t-on le « sujet lyrique » dans un poème ?',null,
'[{"id":"a","label":"L''auteur du poème, toujours identifiable par ses données biographiques"},{"id":"b","label":"Le thème principal du poème (amour, mort, nature…)"},{"id":"c","label":"La voix qui dit « je » dans le poème — une instance fictive distincte de l''auteur réel, qui exprime des émotions ou une vision du monde"},{"id":"d","label":"Le personnage principal du poème lorsqu''il est nommé explicitement dans le texte"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Attention, c''est un point crucial pour le CRPE : le sujet lyrique — ou énonciateur lyrique — ce n''est pas l''auteur réel ! C''est une instance fictive construite par le texte. On peut dire « le poète » ou « le sujet lyrique », mais jamais « Rimbaud dit que… » comme si le poème était une confession directe. La distinction auteur / énonciateur est fondamentale en analyse littéraire. Même quand le « je » semble autobiographique, il reste une construction textuelle.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q8 — correct = a (correct text moved from b to a ; old a becomes b ; new wrong at d)
('71000000-0000-0000-0000-000000000008','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Comment comptabilise-t-on les syllabes dans la versification classique française (règle du « e muet ») ?',null,
'[{"id":"a","label":"Le « e » caduc se prononce (compte comme syllabe) quand il est suivi d''une consonne ; il est élidé (ne compte pas) devant une voyelle ou en fin de vers"},{"id":"b","label":"Le « e » caduc (ou muet) en fin de mot se prononce toujours, ajoutant une syllabe"},{"id":"c","label":"Le « e » caduc ne compte jamais comme syllabe dans la poésie classique"},{"id":"d","label":"Le « e » caduc est toujours muet à l''écrit mais peut se prononcer ou non à l''oral selon le locuteur, sans règle fixe"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La règle du e muet, c''est celle qui fait trébucher beaucoup de candidats ! Voici comment la retenir : le e caduc compte comme syllabe quand il est suivi d''une consonne dans le vers — sinon il s''efface devant une voyelle ou h muet (élision), et en fin de vers. Exemple : « Elle chante » → É-lle-chan-te si suivi d''une consonne. Cette règle est indispensable pour compter les syllabes des alexandrins et des octosyllabes. Entraîne-toi sur des vers concrets !',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q9 — vrai_faux, inchangé
('71000000-0000-0000-0000-000000000009','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','vrai_faux',
'Vrai ou faux : le sonnet est une forme poétique fixe composée de deux quatrains et deux tercets, soit 14 vers au total.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai, et c''est à retenir absolument ! Le sonnet — forme venue d''Italie, introduite en France au XVIe siècle par Du Bellay et Ronsard — c''est 2 quatrains + 2 tercets = 14 vers. La disposition classique des rimes : ABBA ABBA CCD EDE (avec variantes). Et le « volta », ce tournant dramatique entre les quatrains et les tercets — le moment où le poème bascule. Une forme fixe, mais d''une richesse infinie. Les sonnets de Shakespeare, de Ronsard, de Baudelaire… tous 14 vers !',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- Q10 — correct = b (kept) ; new wrong at d
('71000000-0000-0000-0000-000000000010','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Quelle est la spécificité du « calligramme » comme forme poétique, illustrée par Apollinaire ?',null,
'[{"id":"a","label":"Un poème dont chaque vers commence par la même lettre"},{"id":"b","label":"Un poème dont la disposition typographique sur la page dessine une figure en rapport avec le thème"},{"id":"c","label":"Un poème sans ponctuation"},{"id":"d","label":"Un poème composé exclusivement de mots tirés d''une langue étrangère transposés phonétiquement en français"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le calligramme, c''est la fusion du texte et de l''image — une idée géniale d''Apollinaire, qui a donné son nom à son recueil de 1918. La disposition graphique des mots sur la page dessine une tour Eiffel, une colombe, un cheval… Le poème se voit autant qu''il se lit ! C''est une forme intermédiaire entre poésie et arts visuels, précurseur de la poésie concrète. Ne le confonds pas avec l''acrostiche (chaque vers commence par une lettre formant un mot) — deux formes contraintes très différentes.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- ================================================================
-- SÉRIE 72 — Compréhension de texte narratif — Intermédiaire — free
-- topic_key : cpt_texte_narratif
-- ================================================================

-- Q1 — correct = b (kept) ; new wrong at d
('72000000-0000-0000-0000-000000000001','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Quelle est la différence entre le narrateur et l''auteur dans un texte narratif ?',null,
'[{"id":"a","label":"Le narrateur et l''auteur sont toujours la même personne"},{"id":"b","label":"Le narrateur est une instance fictive interne au texte qui raconte l''histoire ; l''auteur est la personne réelle qui a écrit le texte"},{"id":"c","label":"L''auteur raconte à la première personne, le narrateur à la troisième"},{"id":"d","label":"Le narrateur est un personnage secondaire chargé de résumer l''intrigue pour le lecteur"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est l''une des distinctions fondamentales de la narratologie — et l''une des plus fréquemment confondues au CRPE ! Le narrateur est une construction fictive du texte : il peut être personnage (récit à la 1re personne) ou extérieur (narrateur omniscient). L''auteur, lui, est la personne réelle qui a tenu la plume. Meursault n''est pas Camus, même si L''Étranger est à la première personne. On dit toujours « le narrateur dit » — jamais « Camus dit que » en parlant d''une œuvre de fiction.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q2 — correct = d (correct text moved from b to d ; old d slot gets new wrong)
('72000000-0000-0000-0000-000000000002','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Qu''est-ce que la « focalisation interne » dans un récit ?',null,
'[{"id":"a","label":"Le narrateur sait et dit tout sur tous les personnages (il est omniscient)"},{"id":"b","label":"Le narrateur est absent du récit et laisse les personnages parler seuls"},{"id":"c","label":"Le narrateur observe les personnages de l''extérieur sans accéder à leurs pensées"},{"id":"d","label":"Le lecteur ne sait que ce qu''un personnage particulier perçoit, ressent et pense — le récit est filtré par sa perspective"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La focalisation interne (Genette), c''est le point de vue le plus intime : le narrateur ne dit que ce que perçoit et ressent un personnage focal. Le lecteur est enfermé dans sa subjectivité — ses sensations, ses émotions, ses pensées. À distinguer nettement de la focalisation zéro (le narrateur omniscient sait tout sur tout le monde) et de la focalisation externe (l''observateur qui voit sans accéder aux pensées). Ces trois types sont incontournables pour l''analyse narrative au CRPE !',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q3 — correct = a (kept) ; new wrong at d
('72000000-0000-0000-0000-000000000003','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Dans un récit, quelle est la différence entre le schéma narratif et le schéma actantiel ?',null,
'[{"id":"a","label":"Le schéma narratif décrit la progression chronologique (situation initiale → perturbation → actions → résolution → finale) ; le schéma actantiel décrit les rôles des personnages (sujet, objet, adjuvant, opposant…)"},{"id":"b","label":"Le schéma narratif est réservé aux contes ; le schéma actantiel aux romans"},{"id":"c","label":"Ce sont deux termes synonymes désignant la même chose"},{"id":"d","label":"Le schéma narratif analyse les émotions des personnages ; le schéma actantiel analyse uniquement la chronologie des événements"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Excellent point à maîtriser ! Le schéma narratif (Larivaille, Propp), c''est la structure temporelle du récit en 5 étapes : situation initiale → élément perturbateur → péripéties → résolution → situation finale. Le schéma actantiel (Greimas), c''est les forces en présence : sujet (qui cherche quoi ?), objet (la quête), destinateur, destinataire, adjuvant, opposant. Ce ne sont pas des synonymes ! Les deux s''utilisent ensemble et se complètent pour une analyse narrative complète.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q4 — correct = c (correct text moved from b to c ; old c becomes b ; new wrong at d)
('72000000-0000-0000-0000-000000000004','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Qu''est-ce que le « discours indirect libre » dans un texte narratif ?',null,
'[{"id":"a","label":"Un dialogue où les tirets sont remplacés par des guillemets"},{"id":"b","label":"Un récit raconté par un personnage secondaire à la place du narrateur principal"},{"id":"c","label":"Une fusion du discours du narrateur et de la parole ou pensée du personnage, sans verbe introducteur ni guillemets, mais avec les marques de subjectivité du personnage"},{"id":"d","label":"Un passage en italique signalant que le narrateur cite mot pour mot les pensées d''un personnage"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le discours indirect libre (DIL), c''est l''une des grandes inventions du roman moderne — et Flaubert en est le maître absolu ! Les voix du narrateur et du personnage se mêlent sans marqueurs : pas de guillemets, pas de « il pensa que ». Exemple : « Il rentra chez lui. À quoi bon continuer ? Personne ne l''attendait. » Les deux dernières phrases sont-elles du narrateur ou du personnage ? Les deux à la fois — c''est tout l''art du DIL. Au CRPE, savoir le reconnaître et l''analyser est attendu.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q5 — correct = d (correct text moved from a to d ; old a slot gets new wrong)
('72000000-0000-0000-0000-000000000005','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Dans la structure du texte narratif, qu''est-ce que l''analepse ?',null,
'[{"id":"a","label":"Une ellipse temporelle qui supprime un passage du récit jugé sans intérêt narratif"},{"id":"b","label":"Une anticipation sur des événements futurs (flash-forward)"},{"id":"c","label":"Un résumé des événements précédents inséré dans le récit"},{"id":"d","label":"Un retour en arrière dans le temps du récit (flash-back)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''analepse (Genette), c''est le retour en arrière — le flash-back. Le narrateur raconte un événement antérieur à la position chronologique actuelle. Son contraire, c''est la prolepse : le flash-forward, l''anticipation. Retiens les deux ensemble ! L''analepse peut être interne (revenir sur un événement déjà dans le récit) ou externe (raconter un événement d''avant le début du récit). Ces procédés temporels structurent le récit et créent des effets de suspense ou d''explication.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q6 — correct = b (kept) ; new wrong at d
('72000000-0000-0000-0000-000000000006','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Quelle est la différence entre « récit au passé composé » et « récit au passé simple » dans un texte narratif ?',null,
'[{"id":"a","label":"Le passé composé est oral, le passé simple est écrit — ils sont interchangeables"},{"id":"b","label":"Le passé simple marque une action achevée, délimitée, dans un récit littéraire ; le passé composé relie l''action passée au moment de la narration et est caractéristique du récit oral ou épistolaire"},{"id":"c","label":"Le passé simple est utilisé pour les actions longues, le passé composé pour les actions courtes"},{"id":"d","label":"Le passé composé s''emploie uniquement dans les dialogues enchâssés dans un récit au passé simple"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Attention, ils ne sont pas interchangeables — c''est un piège fréquent ! Le passé simple est le temps du récit littéraire écrit : il présente les actions comme closes, coupées du moment de l''énonciation. Le passé composé, lui, relie le passé au présent — c''est le temps du récit oral, des lettres, des journaux intimes. Ce n''est pas une simple question de registre : le choix du temps narratif révèle la posture énonciative du narrateur et le type de texte. Un détail qui fait toute la différence en analyse !',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q7 — correct = a (correct text moved from b to a ; old a becomes b ; new wrong at d)
('72000000-0000-0000-0000-000000000007','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Qu''est-ce que la « vitesse narrative » et comment se manifeste-t-elle dans un texte ?',null,
'[{"id":"a","label":"Le rapport entre la durée des événements racontés et la longueur du texte qui les raconte (accélération, ralentissement, ellipse, scène, pause)"},{"id":"b","label":"La rapidité de lecture recommandée par l''enseignant"},{"id":"c","label":"Le nombre de mots par minute dans un texte de lecture courante"},{"id":"d","label":"Le rythme imposé par la ponctuation et les alinéas pour guider la lecture à voix haute"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La vitesse narrative (Genette), c''est le rapport entre le temps de l''histoire (la durée réelle des événements) et le temps du récit (l''espace textuel consacré). Voici les effets à retenir : l''ellipse (on saute des années en quelques mots), le sommaire (on résume), la scène (temps du récit ≈ temps réel — comme les dialogues), la pause (le temps s''arrête pour une description). Analyser la vitesse narrative te révèle ce que le narrateur choisit de montrer — et surtout ce qu''il choisit de taire !',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q8 — correct = c (correct text moved from b to c ; old c becomes b ; new wrong at d)
('72000000-0000-0000-0000-000000000008','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Qu''est-ce qu''un « narrateur non fiable » (unreliable narrator) dans un récit ?',null,
'[{"id":"a","label":"Un narrateur qui fait des erreurs grammaticales dans ses descriptions"},{"id":"b","label":"Un narrateur externe qui ne connaît pas tous les personnages"},{"id":"c","label":"Un narrateur dont les informations ou interprétations sont biaisées, limitées ou délibérément fausses, ce que le lecteur peut percevoir en recoupant les indices du texte"},{"id":"d","label":"Un narrateur qui change de point de vue à chaque chapitre, rendant le récit incohérent"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le narrateur non fiable (Booth, 1961), c''est l''un des procédés narratifs les plus fascinants ! Son récit est teinté de subjectivité, d''aveuglement ou de mensonge délibéré — et le lecteur attentif doit lire entre les lignes pour reconstruire la vérité. L''exemple classique : Humbert Humbert dans Lolita de Nabokov. À l''école primaire, on peut introduire la notion de façon accessible : un personnage-narrateur peut se tromper sur ce qu''il voit ou pense. Ça développe l''esprit critique des élèves !',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q9 — vrai_faux, inchangé
('72000000-0000-0000-0000-000000000009','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','vrai_faux',
'Vrai ou faux : dans un récit à la troisième personne, le narrateur est nécessairement omniscient (il sait tout sur tous les personnages).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Et c''est une confusion très fréquente — sois vigilant(e) ! La personne grammaticale (je/il) et la focalisation sont deux dimensions totalement indépendantes. Un récit à la 3e personne peut être en focalisation zéro (omniscient), en focalisation interne (centré sur un seul personnage) ou en focalisation externe (observateur qui ne pénètre dans aucune conscience). Les nouvelles de Kafka ou d''Hemingway le montrent bien : 3e personne mais focalisation externe. Ne jamais confondre les deux axes d''analyse !',
'valide','CRPE Français V3 — Compréhension texte','free',true),

-- Q10 — correct = b (kept) ; new wrong at d
('72000000-0000-0000-0000-000000000010','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Comment appelle-t-on la technique narrative consistant à ouvrir plusieurs fils narratifs (plusieurs intrigues ou personnages) qui se rejoignent progressivement ?',null,
'[{"id":"a","label":"L''intrigue enchâssée"},{"id":"b","label":"La polyphonie narrative ou structure à intrigues multiples convergentes"},{"id":"c","label":"La mise en abyme"},{"id":"d","label":"Le monologue intérieur généralisé à plusieurs voix narratives"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Trois notions proches à bien distinguer ! La structure à intrigues multiples convergentes (récit choral ou polyphonie narrative) : plusieurs fils narratifs qui se rejoignent. L''intrigue enchâssée : un récit à l''intérieur d''un autre — comme dans les Mille et une Nuits où Schéhérazade raconte des histoires dans l''histoire. La mise en abyme : un texte qui se reproduit à l''intérieur de lui-même, comme un miroir. Ces structures se retrouvent dans le roman contemporain et dans certains albums de jeunesse très bien construits !',
'valide','CRPE Français V3 — Compréhension texte','free',true)

;
