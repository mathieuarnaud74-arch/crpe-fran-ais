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

('71000000-0000-0000-0000-000000000001','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Dans le poème de Verlaine « Il pleure dans mon cœur / Comme il pleut sur la ville », quel procédé stylistique caractérise le premier vers ?',null,
'[{"id":"a","label":"Une métaphore filée"},{"id":"b","label":"Une comparaison implicite fondée sur une correspondance entre état intérieur et phénomène naturel (analogie lyrique)"},{"id":"c","label":"Une hyperbole exprimant une douleur extrême"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Il pleure dans mon cœur » établit une analogie entre la pluie extérieure (phénomène naturel) et une tristesse intérieure : c''est une correspondance symboliste entre le monde physique et l''état émotionnel du locuteur. Ce n''est pas une métaphore filée (qui se développerait sur plusieurs vers de façon systématique). Ce n''est pas une hyperbole car il n''y a pas d''exagération quantitative. C''est une analogie intime caractéristique du lyrisme verlainien.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000002','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Qu''est-ce qu''un enjambement dans la poésie versifiée ?',null,
'[{"id":"a","label":"La répétition d''un mot en début de vers"},{"id":"b","label":"Le débordement de la phrase ou du sens d''un vers sur le vers suivant, sans coïncidence entre pause syntaxique et fin de vers"},{"id":"c","label":"Une rime croisée entre deux strophes non contiguës"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''enjambement se produit quand la phrase ne s''arrête pas à la fin du vers mais continue sur le vers suivant, créant une tension entre le rythme métrique et le rythme syntaxique. Ex (Hugo) : « Demain, dès l''aube, à l''heure où blanchit la campagne, / Je partirai. » La césure syntaxique tombe au milieu du vers suivant. L''enjambement peut créer un effet de suspension, d''accélération ou de mise en valeur.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000003','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Dans l''alexandrin classique, où se situe habituellement la césure et comment la nomme-t-on ?',null,
'[{"id":"a","label":"Après la 4e syllabe — on l''appelle la coupe"},{"id":"b","label":"Après la 6e syllabe — on l''appelle l''hémistiche"},{"id":"c","label":"Après la 8e syllabe — on l''appelle la pause"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''alexandrin est un vers de 12 syllabes divisé en deux hémistiches de 6 syllabes par une césure principale. Ex : « Souvent sur la montagne // à l''ombre du vieux chêne » (Lamartine). La césure principale de l''alexandrin classique tombe obligatoirement après la 6e syllabe (hémistiche). Au XIXe siècle, les Romantiques ont introduit le « trimètre romantique » (4/4/4) qui brise cette règle.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000004','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Qu''est-ce que la « versification libre » (vers libre) et comment la reconnaître ?',null,
'[{"id":"a","label":"Des vers qui ne respectent ni la métrique régulière, ni la rime obligatoire, mais peuvent conserver d''autres effets rythmiques (répétitions, coupes, allitérations)"},{"id":"b","label":"Des vers sans aucune contrainte formelle ni stylistique — une écriture spontanée"},{"id":"c","label":"Des vers avec rimes mais sans mètre fixe"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le vers libre (apparu en France avec Gustave Kahn et les symbolistes, puis Apollinaire) s''affranchit de la métrique syllabique fixe et de la rime obligatoire, sans pour autant être de la prose. Il conserve la disposition en lignes (vers), des effets de rythme internes, des répétitions et des figures sonores. Le vers libre ne signifie pas absence de travail formel : Cendrars, Michaux, Prévert ont des rythmes très construits.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000005','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Quelle est la différence entre une allitération et une assonance ?',null,
'[{"id":"a","label":"L''allitération est la répétition de voyelles ; l''assonance est la répétition de consonnes"},{"id":"b","label":"L''allitération est la répétition de consonnes initiales ou dominantes ; l''assonance est la répétition de sons vocaliques"},{"id":"c","label":"Il n''y a aucune différence : ce sont des synonymes"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''allitération est la répétition de consonnes (ou groupes consonantiques) dans une suite de mots proches : « Pour qui sont ces serpents qui sifflent sur vos têtes » (Racine) — répétition du son /s/. L''assonance est la répétition d''un son vocalique : « Les sanglots longs des violons de l''automne » (Verlaine) — répétition du son /ɔ̃/. Les deux sont des figures sonores qui créent des effets musicaux et expressifs.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000006','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Dans le poème « Le Dormeur du val » de Rimbaud, la chute « Il a deux trous rouges au côté droit » crée quel effet ?',null,
'[{"id":"a","label":"Un effet de surprise tragique (la mort violente est révélée après une description paisible)"},{"id":"b","label":"Une hyperbole soulignant la beauté du personnage"},{"id":"c","label":"Une comparaison entre le soldat et la nature"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Rimbaud construit le poème comme un tableau pastoral et serein (la nature, l''eau, la lumière, le jeune homme endormi) avant de révéler brutalement la mort par blessure de guerre dans le dernier vers. Cet effet de chute (ou clausule) crée un contraste violent entre la douceur de la description et la réalité tragique : le dormeur est mort au combat. La sobriété du langage (« deux trous rouges ») renforce le choc par la déshumanisation de la guerre.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000007','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Qu''appelle-t-on le « sujet lyrique » dans un poème ?',null,
'[{"id":"a","label":"L''auteur du poème, toujours identifiable par ses données biographiques"},{"id":"b","label":"La voix qui dit « je » dans le poème — une instance fictive distincte de l''auteur réel, qui exprime des émotions ou une vision du monde"},{"id":"c","label":"Le thème principal du poème (amour, mort, nature…)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le sujet lyrique (ou énonciateur lyrique) est la voix poétique qui parle dans le poème : ce peut être un « je » explicite ou implicite. C''est une instance fictive — pas nécessairement identifiable à l''auteur réel (même si les deux peuvent être proches). La distinction auteur / énonciateur est fondamentale pour l''analyse littéraire au CRPE : on parle du « poète » ou du « sujet lyrique », pas de « Rimbaud dit que ».',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000008','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Comment comptabilise-t-on les syllabes dans la versification classique française (règle du « e muet ») ?',null,
'[{"id":"a","label":"Le « e » caduc (ou muet) en fin de mot se prononce toujours, ajoutant une syllabe"},{"id":"b","label":"Le « e » caduc se prononce (compte comme syllabe) quand il est suivi d''une consonne ; il est élidé (ne compte pas) devant une voyelle ou en fin de vers"},{"id":"c","label":"Le « e » caduc ne compte jamais comme syllabe dans la poésie classique"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La règle de l''e muet (ou e caduc) dans la versification classique : le e final d''un mot compte comme syllabe quand il est suivi d''une consonne dans le vers ; il est élidé (ne compte pas) devant une voyelle ou h muet (élision), et en fin de vers. Ex : « Elle chante » → É-lle-chan-te (4 syllabes si « chante » est suivi d''une consonne). Cette règle détermine le compte des syllabes dans les alexandrins et les octosyllabes.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000009','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','vrai_faux',
'Vrai ou faux : le sonnet est une forme poétique fixe composée de deux quatrains et deux tercets, soit 14 vers au total.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Le sonnet (forme venue d''Italie, introduite en France au XVIe siècle par Du Bellay et Ronsard) est composé de 14 vers : 2 quatrains (strophes de 4 vers) + 2 tercets (strophes de 3 vers). La disposition des rimes dans le sonnet français classique est généralement : ABBA ABBA CCD EDE (ou variantes). Le « volta » (tournant) du sonnet se situe habituellement à la transition entre les quatrains et les tercets.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

('71000000-0000-0000-0000-000000000010','Francais','comprehension_texte','cpt_texte_poetique','Compréhension de texte poétique','Difficile','qcm',
'Quelle est la spécificité du « calligramme » comme forme poétique, illustrée par Apollinaire ?',null,
'[{"id":"a","label":"Un poème dont chaque vers commence par la même lettre"},{"id":"b","label":"Un poème dont la disposition typographique sur la page dessine une figure en rapport avec le thème"},{"id":"c","label":"Un poème sans ponctuation"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le calligramme (terme inventé par Apollinaire pour son recueil de 1918) est un poème dont la disposition graphique des mots et vers sur la page forme une image visuelle en rapport avec le contenu : une tour Eiffel, une colombe, un cheval… Il unit le texte et l''image, exploitant la dimension visuelle de l''écriture. C''est une forme intermédiaire entre poésie et arts visuels, précurseur de la poésie concrète.',
'valide','CRPE Français V3 — Compréhension texte','premium',true),

-- ================================================================
-- SÉRIE 72 — Compréhension de texte narratif — Intermédiaire — free
-- topic_key : cpt_texte_narratif
-- ================================================================

('72000000-0000-0000-0000-000000000001','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Quelle est la différence entre le narrateur et l''auteur dans un texte narratif ?',null,
'[{"id":"a","label":"Le narrateur et l''auteur sont toujours la même personne"},{"id":"b","label":"Le narrateur est une instance fictive interne au texte qui raconte l''histoire ; l''auteur est la personne réelle qui a écrit le texte"},{"id":"c","label":"L''auteur raconte à la première personne, le narrateur à la troisième"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La distinction narrateur / auteur est fondamentale en narratologie (Genette, 1972). Le narrateur est une instance fictive construite par le texte : il peut être interne à l''histoire (narrateur-personnage, « je ») ou externe (narrateur omniscient, « il »). L''auteur est la personne réelle. Même quand un roman est écrit à la 1re personne, le narrateur n''est pas l''auteur (ex : Meursault n''est pas Camus). Cette distinction est attendue dans les analyses au CRPE.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000002','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Qu''est-ce que la « focalisation interne » dans un récit ?',null,
'[{"id":"a","label":"Le narrateur sait et dit tout sur tous les personnages (il est omniscient)"},{"id":"b","label":"Le lecteur ne sait que ce qu''un personnage particulier perçoit, ressent et pense — le récit est filtré par sa perspective"},{"id":"c","label":"Le narrateur est absent du récit et laisse les personnages parler seuls"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La focalisation interne (Genette) : le narrateur ne dit que ce que sait et perçoit un personnage focal. Le lecteur est ainsi limité au point de vue subjectif de ce personnage : ses perceptions sensorielles, ses émotions, ses pensées. À distinguer de la focalisation zéro (narrateur omniscient) et de la focalisation externe (le narrateur observe de l''extérieur sans accès aux pensées). La focalisation interne est fréquente dans le roman moderne.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000003','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Dans un récit, quelle est la différence entre le schéma narratif et le schéma actantiel ?',null,
'[{"id":"a","label":"Le schéma narratif décrit la progression chronologique (situation initiale → perturbation → actions → résolution → finale) ; le schéma actantiel décrit les rôles des personnages (sujet, objet, adjuvant, opposant…)"},{"id":"b","label":"Le schéma narratif est réservé aux contes ; le schéma actantiel aux romans"},{"id":"c","label":"Ce sont deux termes synonymes désignant la même chose"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le schéma narratif (Larivaille, Propp) décrit la structure temporelle du récit : situation initiale → élément perturbateur → péripéties → résolution → situation finale. Le schéma actantiel (Greimas) décrit les forces en présence : sujet (qui cherche quoi ?), objet (la quête), destinateur (qui mandate ?), destinataire (qui bénéficie ?), adjuvant (aide), opposant (obstacle). Les deux sont complémentaires pour l''analyse des textes narratifs à l''école.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000004','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Qu''est-ce que le « discours indirect libre » dans un texte narratif ?',null,
'[{"id":"a","label":"Un dialogue où les tirets sont remplacés par des guillemets"},{"id":"b","label":"Une fusion du discours du narrateur et de la parole ou pensée du personnage, sans verbe introducteur ni guillemets, mais avec les marques de subjectivité du personnage"},{"id":"c","label":"Un récit raconté par un personnage secondaire à la place du narrateur principal"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le discours indirect libre (DIL) mêle la voix du narrateur et la voix/pensée du personnage sans marqueurs explicites (pas de guillemets, pas de « il pensa que »). Ex : « Il rentra chez lui. À quoi bon continuer ? Personne ne l''attendait. » — les deux dernières phrases fusionnent la narration et la pensée du personnage. Le DIL est caractéristique du roman moderne (Flaubert en est un maître) et attendu dans l''analyse textuelle au CRPE.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000005','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Dans la structure du texte narratif, qu''est-ce que l''analepse ?',null,
'[{"id":"a","label":"Un retour en arrière dans le temps du récit (flash-back)"},{"id":"b","label":"Une anticipation sur des événements futurs (flash-forward)"},{"id":"c","label":"Un résumé des événements précédents inséré dans le récit"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''analepse (Genette) est un retour en arrière dans le temps du récit : le narrateur raconte un événement antérieur à la position chronologique actuelle du récit. C''est le « flash-back » au sens large. Son contraire est la prolepse (ou anticipation, « flash-forward »). L''analepse peut être interne (revenir sur un événement déjà dans le récit) ou externe (raconter un événement antérieur au début du récit). Ces procédés temporels structurent le récit.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000006','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Quelle est la différence entre « récit au passé composé » et « récit au passé simple » dans un texte narratif ?',null,
'[{"id":"a","label":"Le passé composé est oral, le passé simple est écrit — ils sont interchangeables"},{"id":"b","label":"Le passé simple marque une action achevée, délimitée, dans un récit littéraire ; le passé composé relie l''action passée au moment de la narration et est caractéristique du récit oral ou épistolaire"},{"id":"c","label":"Le passé simple est utilisé pour les actions longues, le passé composé pour les actions courtes"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans la tradition littéraire française, le passé simple est le « temps du récit » écrit : il présente les actions comme closes, sans lien avec le moment de l''énonciation. Le passé composé relie le passé au présent et est associé à l''oral et aux écrits de type lettre ou journal intime. Ce n''est pas seulement une question de registre : le choix du temps narratif signale le type de récit et la posture énonciative du narrateur.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000007','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Qu''est-ce que la « vitesse narrative » et comment se manifeste-t-elle dans un texte ?',null,
'[{"id":"a","label":"La rapidité de lecture recommandée par l''enseignant"},{"id":"b","label":"Le rapport entre la durée des événements racontés et la longueur du texte qui les raconte (accélération, ralentissement, ellipse, scène, pause)"},{"id":"c","label":"Le nombre de mots par minute dans un texte de lecture courante"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La vitesse narrative (Genette) concerne le rapport entre le temps de l''histoire (durée réelle des événements) et le temps du récit (espace textuel consacré). Les effets de vitesse : l''ellipse (saute des années en quelques mots), le sommaire (résume), la scène (temps du récit ≈ temps de l''histoire, ex : les dialogues), la pause (le temps s''arrête — description). Analyser la vitesse narrative révèle les priorités du narrateur.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000008','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Qu''est-ce qu''un « narrateur non fiable » (unreliable narrator) dans un récit ?',null,
'[{"id":"a","label":"Un narrateur qui fait des erreurs grammaticales dans ses descriptions"},{"id":"b","label":"Un narrateur dont les informations ou interprétations sont biaisées, limitées ou délibérément fausses, ce que le lecteur peut percevoir en recoupant les indices du texte"},{"id":"c","label":"Un narrateur externe qui ne connaît pas tous les personnages"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le narrateur non fiable (Booth, 1961) est un narrateur dont le récit est teinté de subjectivité, d''aveuglement ou de mensonge délibéré. Le lecteur doit lire « entre les lignes » pour construire une version plus juste des événements. Ex classique : Humbert Humbert dans « Lolita » de Nabokov. À l''école primaire, cette notion est accessible de manière simplifiée : un personnage-narrateur peut se tromper sur ce qu''il voit ou pense.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000009','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','vrai_faux',
'Vrai ou faux : dans un récit à la troisième personne, le narrateur est nécessairement omniscient (il sait tout sur tous les personnages).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La personne grammaticale (je/il) et la focalisation sont deux dimensions indépendantes. Un récit à la 3e personne peut être : en focalisation zéro (omnisciente), en focalisation interne (centrée sur un personnage sans accès aux autres), ou en focalisation externe (observateur extérieur). Ex : les nouvelles de Kafka ou Hemingway sont souvent en focalisation externe malgré la 3e personne. La confusion personne / focalisation est une erreur d''analyse fréquente.',
'valide','CRPE Français V3 — Compréhension texte','free',true),

('72000000-0000-0000-0000-000000000010','Francais','comprehension_texte','cpt_texte_narratif','Compréhension de texte narratif','Intermediaire','qcm',
'Comment appelle-t-on la technique narrative consistant à ouvrir plusieurs fils narratifs (plusieurs intrigues ou personnages) qui se rejoignent progressivement ?',null,
'[{"id":"a","label":"L''intrigue enchâssée"},{"id":"b","label":"La polyphonie narrative ou structure à intrigues multiples convergentes"},{"id":"c","label":"La mise en abyme"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La structure à intrigues multiples convergentes (appelée aussi récit choral ou polyphonie narrative) suit plusieurs fils narratifs ou points de vue simultanés qui finissent par se rejoindre. À distinguer : l''intrigue enchâssée (un récit à l''intérieur d''un autre — Mille et une Nuits) et la mise en abyme (un texte qui se reproduit à l''intérieur de lui-même, comme un miroir). Ces structures sont fréquentes dans le roman contemporain et dans certains albums de jeunesse.',
'valide','CRPE Français V3 — Compréhension texte','free',true)

;
