-- CRPE Français — Lot 4 : Didactique du français (5 séries × 10 questions)
-- subdomain : didactique_francais
-- Domaine d'affichage : Analyse & Didactique (/francais/analyse-de-la-langue)
-- Appliquer APRÈS les migrations et les seed content précédents

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 01 — Apprentissage de la lecture — Intermédiaire — free
-- topic_key : did_lecture_cp
-- QCMs: Q1(b), Q2(b), Q4(b), Q5(b), Q7(a), Q8(b), Q10(b) — 7 QCMs
-- Cible ~a×2, b×2, c×2, d×1 → Q2→d, Q4→c, Q5→d, Q8→c
-- ================================================================
('21000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','qcm',
'Qu''est-ce que la conscience phonologique ?',null,
'[{"id":"a","label":"La capacité à identifier la signification des mots à l''oral"},{"id":"b","label":"La capacité à identifier et manipuler les unités sonores de la langue (syllabes, phonèmes) indépendamment du sens"},{"id":"c","label":"La connaissance de l''alphabet et des lettres de l''écrit"},{"id":"d","label":"La capacité à lire un texte à voix haute avec fluidité"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La conscience phonologique désigne la capacité à prendre les sons de la langue comme objets de réflexion, indépendamment du sens. Elle inclut la conscience syllabique (découper "ma-ri-on") et la conscience phonémique (identifier les phonèmes /m/ /a/ /ʁ/ /j/ /ɔ̃/). C''est un prédicteur fort de la réussite dans l''apprentissage de la lecture.',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','qcm',
'Qu''est-ce que le principe alphabétique ?',null,
'[{"id":"a","label":"Le fait que les lettres de l''alphabet ont un ordre fixe"},{"id":"b","label":"La règle selon laquelle toutes les langues utilisent les mêmes lettres"},{"id":"c","label":"La propriété du français d''écrire les mots comme ils se prononcent"},{"id":"d","label":"La correspondance systématique entre graphèmes (lettres ou groupes de lettres) et phonèmes (sons)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le principe alphabétique est la relation de correspondance entre les unités de l''écrit (graphèmes) et les unités du son (phonèmes). Comprendre ce principe est une étape fondamentale de l''apprentissage de la lecture : l''élève doit saisir que les lettres transcrivent des sons, pas des sens. Sans cette compréhension, le décodage reste impossible.',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','vrai_faux',
'Vrai ou faux : un élève qui lit un texte à voix haute de façon fluide a nécessairement bien compris ce qu''il a lu.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La fluence de lecture (vitesse et précision de la lecture orale) et la compréhension sont deux compétences distinctes. Un élève peut avoir automatisé le décodage — lire vite et sans erreur — sans construire de représentation mentale du texte. C''est ce qu''on appelle le "décrochage" entre décodage et compréhension, fréquent en fin de CP ou au CE1.',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','qcm',
'Qu''est-ce qu''un phonème ?',null,
'[{"id":"a","label":"La plus petite unité de sens d''un mot (ex : préfixe, suffixe)"},{"id":"b","label":"Un groupe de lettres correspondant à un son long"},{"id":"c","label":"La plus petite unité sonore distinctive de la langue orale"},{"id":"d","label":"Une unité de l''écriture pouvant regrouper plusieurs lettres"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Un phonème est la plus petite unité sonore de la langue orale permettant de distinguer deux mots (ex : /p/ et /b/ distinguent "pain" et "bain"). Le français compte environ 36 phonèmes. À ne pas confondre avec le graphème (unité de l''écrit) ni avec le morphème (unité de sens). La conscience phonémique — capacité à manipuler les phonèmes — se développe vers 5-6 ans et est indispensable à l''apprentissage du décodage.',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','qcm',
'Parmi ces activités, laquelle développe spécifiquement la conscience phonémique ?',null,
'[{"id":"a","label":"Copier des mots au tableau"},{"id":"b","label":"Réciter l''alphabet de A à Z"},{"id":"c","label":"Tracer les lettres en cursive dans un exercice de graphisme"},{"id":"d","label":"Identifier combien de sons on entend dans le mot « chat »"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Identifier le nombre de phonèmes dans un mot (ici /ʃ/ + /a/ = 2 phonèmes dans "chat") est une activité de segmentation phonémique, qui développe directement la conscience phonémique. Copier des mots travaille la motricité et le graphisme. Réciter l''alphabet est une tâche de mémorisation nominale, sans lien direct avec la conscience phonémique.',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','vrai_faux',
'Vrai ou faux : les méthodes d''enseignement de la lecture qui partent du phonème vers le mot (méthodes synthétiques) sont plus efficaces que les méthodes qui partent du texte entier vers le phonème (méthodes globales), selon les données scientifiques actuelles.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Les recherches en sciences cognitives et les méta-analyses (notamment le rapport Dehaene 2024) montrent que l''enseignement explicite et systématique des correspondances graphèmes-phonèmes est plus efficace pour le décodage que les approches globales. Cela ne signifie pas que la compréhension et la culture littéraire sont négligeables — elles doivent être travaillées en parallèle.',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','qcm',
'Qu''est-ce que la fluence de lecture ?',null,
'[{"id":"a","label":"La capacité à lire un texte à voix haute avec exactitude, vitesse et prosodie appropriée"},{"id":"b","label":"La capacité à comprendre les inférences d''un texte"},{"id":"c","label":"La vitesse à laquelle un élève mémorise le vocabulaire nouveau"},{"id":"d","label":"La capacité à lire silencieusement sans bouger les lèvres"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La fluence de lecture regroupe trois dimensions : l''exactitude (lire sans erreurs), la rapidité (vitesse de lecture) et la prosodie (intonation, respiration, groupes syntaxiques respectés). Elle témoigne de l''automatisation du décodage. Un élève fluent n''a plus besoin de consacrer de ressources cognitives au décodage et peut les affecter à la compréhension. Elle se mesure en mots lus correctement par minute (MLCM).',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','qcm',
'Quelle est la différence entre un graphème et une lettre ?',null,
'[{"id":"a","label":"Il n''y a aucune différence : un graphème est toujours une seule lettre"},{"id":"b","label":"Un graphème est une lettre majuscule, une lettre est une minuscule"},{"id":"c","label":"Un graphème peut être composé d''une ou plusieurs lettres correspondant à un phonème (ex : « ou », « eau », « ch »)"},{"id":"d","label":"Un graphème désigne uniquement les lettres muettes en fin de mot"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Un graphème est l''unité de l''écriture qui correspond à un phonème. Il peut être une seule lettre ("a", "b") ou un groupe de lettres ("ou", "eau", "ch", "gn"). En français, la relation graphème-phonème est complexe car un même phonème peut s''écrire de plusieurs façons (le son /o/ peut s''écrire "o", "au", "eau") et une même lettre peut correspondre à des phonèmes différents selon le contexte.',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','vrai_faux',
'Vrai ou faux : la compréhension orale d''un enfant de 6 ans est un bon prédicteur de sa compréhension en lecture future.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Le modèle "simple view of reading" (Gough & Tunmer, 1986) formule que la compréhension en lecture = décodage × compréhension orale. Un enfant qui comprend bien à l''oral dispose des ressources linguistiques (vocabulaire, structures syntaxiques, connaissances sur le monde) nécessaires à la compréhension écrite. Dès lors que le décodage est automatisé, c''est la compréhension orale qui est le facteur limitant.',
'valide','CRPE Français V2 — Didactique','free',true),

('21000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_lecture_cp','Apprentissage de la lecture','Intermediaire','qcm',
'Selon les programmes de l''Éducation nationale, à quel cycle l''apprentissage systématique du code alphabétique (décodage) est-il prioritaire ?',null,
'[{"id":"a","label":"Cycle 1 (maternelle), dès la petite section"},{"id":"b","label":"Cycle 2 (CP-CE1-CE2), particulièrement au CP"},{"id":"c","label":"Cycle 3 (CM1-CM2-6ème), une fois la lecture autonome acquise"},{"id":"d","label":"Cycle 4 (collège), lors des cours de linguistique"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est au cycle 2, et plus précisément au CP, que l''enseignement explicite et systématique des correspondances graphèmes-phonèmes est prioritaire selon les programmes. La maternelle prépare le terrain (conscience phonologique, découverte de l''écrit) sans viser le décodage automatisé. Au cycle 3, les enjeux portent sur la compréhension fine, la production écrite et l''enrichissement culturel.',
'valide','CRPE Français V2 — Didactique','free',true),

-- ================================================================
-- SÉRIE 02 — Erreurs orthographiques des élèves — Intermédiaire — free
-- topic_key : did_erreurs_ortho
-- QCMs: Q1(b), Q2(b), Q4(a), Q5(b), Q7(b), Q8(b), Q10(b) — 7 QCMs
-- Cible a×1, b×2, c×2, d×2 → Q2→c, Q5→c, Q7→d, Q10→d
-- ================================================================
('22000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','qcm',
'Quelle est la distinction entre orthographe lexicale et orthographe grammaticale ?',null,
'[{"id":"a","label":"L''orthographe lexicale concerne les noms, l''orthographe grammaticale concerne les verbes"},{"id":"b","label":"L''orthographe lexicale porte sur la graphie propre de chaque mot (ex : « château »), l''orthographe grammaticale porte sur les marques de genre, nombre et accord"},{"id":"c","label":"L''orthographe lexicale est celle du dictionnaire, l''orthographe grammaticale est celle de la grammaire descriptive"},{"id":"d","label":"L''orthographe lexicale s''apprend au cycle 2, l''orthographe grammaticale s''apprend au cycle 3"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''orthographe lexicale (ou d''usage) concerne la façon d''écrire chaque mot tel qu''il est fixé dans le dictionnaire (ex : "gymnase", "femme", "faon"). L''orthographe grammaticale concerne les marques morphologiques liées au genre, au nombre et aux accords (ex : "les chats noirs", "elle est venue"). Cette distinction est essentielle pour analyser et catégoriser les erreurs des élèves.',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','qcm',
'Un élève écrit : "Il a jouer au foot". De quel type d''erreur s''agit-il ?',null,
'[{"id":"a","label":"Erreur lexicale : il ne connaît pas la graphie du verbe « jouer »"},{"id":"b","label":"Erreur phonétique : le son /e/ final peut s''écrire de plusieurs façons"},{"id":"c","label":"Erreur de morphologie verbale : confusion entre l''infinitif (-er) et le participe passé (-é) après l''auxiliaire"},{"id":"d","label":"Erreur de conjugaison : le verbe est conjugué au mauvais temps"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Après l''auxiliaire "avoir", on emploie le participe passé : "a joué". L''élève a utilisé l''infinitif "jouer" à la place. C''est une erreur de morphologie verbale grammaticale : l''élève confond les deux formes, phonétiquement identiques (/ʒue/). La piste phonétique (réponse b) est une explication partielle de la confusion, mais l''erreur relève bien de la morphologie verbale.',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','vrai_faux',
'Vrai ou faux : une erreur orthographique phonétiquement plausible (ex : « fentètre » pour « fenêtre ») révèle que l''élève n''a pas compris le principe alphabétique.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Une erreur phonétiquement plausible montre au contraire que l''élève maîtrise le principe alphabétique : il encode des sons avec des lettres. C''est une erreur de mémorisation de la forme lexicale du mot, pas d''incompréhension du système. Ce type d''erreur est positif dans le parcours d''acquisition : l''élève applique ce qu''il sait, même si la forme correcte n''est pas encore mémorisée.',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','qcm',
'Un élève écrit : "Les garçons joue au ballon". Quelle est la nature de l''erreur ?',null,
'[{"id":"a","label":"Erreur d''accord sujet-verbe : le verbe n''est pas accordé avec le sujet pluriel « les garçons »"},{"id":"b","label":"Erreur lexicale : le verbe « jouer » est mal orthographié"},{"id":"c","label":"Erreur de conjugaison : le temps verbal est incorrect"},{"id":"d","label":"Erreur de ponctuation : il manque une virgule après « garçons »"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Les garçons" est un sujet au pluriel ; le verbe doit être accordé : "jouent". C''est une erreur d''accord sujet-verbe, qui relève de l''orthographe grammaticale. L''élève a probablement accordé avec le pronom ou omis la vérification de l''accord. La forme verbale "joue" est correctement orthographiée en elle-même (pas d''erreur lexicale), et le temps (présent) est approprié.',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','qcm',
'Quel outil pédagogique est reconnu comme efficace pour aider les élèves à mémoriser l''orthographe lexicale de mots fréquents ?',null,
'[{"id":"a","label":"La copie répétée du mot correct (écrire 10 fois le mot)"},{"id":"b","label":"Souligner en rouge les mots mal orthographiés dans les copies"},{"id":"c","label":"Afficher les mots au tableau pendant plusieurs semaines"},{"id":"d","label":"L''encodage actif : regarder le mot, le cacher, l''écrire de mémoire, puis vérifier (méthode « voir-cacher-écrire-vérifier »)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La méthode "voir-cacher-écrire-vérifier" (VCÉEV) repose sur la récupération active en mémoire, qui est beaucoup plus efficace pour la mémorisation que la copie passive. La copie répétée est peu efficace car elle peut être réalisée sans véritablement encoder la forme du mot. Souligner les erreurs en rouge est une pratique de signalement, non un dispositif d''aide à la mémorisation.',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','vrai_faux',
'Vrai ou faux : catégoriser les erreurs orthographiques d''un élève (lexicales, grammaticales, phonétiques) n''a pas d''intérêt pratique pour l''enseignant.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La catégorisation des erreurs est un outil diagnostique essentiel. Une erreur lexicale appelle un travail de mémorisation des formes. Une erreur grammaticale appelle un travail sur les règles et les automatismes d''accord. Une erreur phonétique peut révéler un trouble du langage ou une méconnaissance des correspondances grapho-phonémiques. Sans catégorisation, l''enseignant ne peut pas adapter ses interventions.',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','qcm',
'Comment appelle-t-on la tendance des jeunes élèves à écrire les mots exactement comme ils les entendent (ex : « lézoto » pour « les autos ») ?',null,
'[{"id":"a","label":"L''hypercorrection"},{"id":"b","label":"La surgénéralisation morphologique"},{"id":"c","label":"La dysorthographie développementale"},{"id":"d","label":"L''écriture phonétique ou phonétisation"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''écriture phonétique (ou phonétisation) désigne la stratégie consistant à transcrire les sons entendus, sans tenir compte des conventions orthographiques (liaisons, e muets, consonnes finales muettes, mots grammaticaux…). C''est une étape normale du développement orthographique. L''hypercorrection désigne l''application abusive d''une règle (ex : "des crapauds" écrit "des crapaux"). La surgénéralisation morphologique s''applique à la morphologie verbale ("il allas" au lieu de "il alla").',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','qcm',
'Quelle est la démarche recommandée pour aider un élève qui confond systématiquement « a » (verbe avoir) et « à » (préposition) ?',null,
'[{"id":"a","label":"Lui faire recopier 20 fois la règle d''utilisation de « à »"},{"id":"b","label":"Lui apprendre à substituer « avait » : si la substitution est possible, c''est le verbe « a » ; sinon, c''est la préposition « à »"},{"id":"c","label":"Lui interdire d''utiliser le mot « à » dans ses rédactions jusqu''à ce qu''il maîtrise la règle"},{"id":"d","label":"Lui demander de consulter le dictionnaire chaque fois qu''il hésite"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La procédure de substitution est une manipulation syntaxique efficace : remplacer "à" par "avait" permet de distinguer le verbe ("Il a mangé" → "Il avait mangé" : possible → verbe) de la préposition ("Il va à Paris" → "Il va avait Paris" : impossible → préposition). C''est une stratégie active et mémorisable que l''élève peut appliquer de façon autonome en situation d''écriture.',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','vrai_faux',
'Vrai ou faux : dans une approche pédagogique par résolution de problème, on peut demander aux élèves de discuter collectivement de la graphie correcte d''un mot avant de valider.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. La résolution de problème orthographique collectif (débat ortho, négociation graphique) est une démarche reconnue pédagogiquement. Elle permet aux élèves de confronter leurs hypothèses, de mobiliser les règles connues et de développer une posture réflexive face à l''écriture. Cette pratique s''inscrit dans les démarches de l''étude de la langue par observation et manipulation, recommandées dans les programmes.',
'valide','CRPE Français V2 — Didactique','free',true),

('22000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_erreurs_ortho','Erreurs orthographiques des élèves','Intermediaire','qcm',
'Un élève écrit systématiquement les terminaisons verbales en -er à la place de -é (ex : « il a chanter »). Quel est le moyen mnémotechnique classique enseigné à l''école pour éviter cette confusion ?',null,
'[{"id":"a","label":"Remplacer le verbe par un verbe du 3e groupe : si on peut dire « il a mordre », c''est -er ; sinon c''est -é"},{"id":"b","label":"Compter les syllabes du verbe : les verbes de plus de deux syllabes prennent toujours -er"},{"id":"c","label":"Vérifier si le sujet est singulier ou pluriel pour choisir la terminaison"},{"id":"d","label":"Remplacer le verbe par « vendre » ou « prendre » : si on peut dire « il a vendu/pris », alors c''est un participe passé en -é"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La procédure consiste à remplacer le verbe en -er/-é par un verbe du 3e groupe dont le participe passé est clairement différent de l''infinitif (ex : "vendu", "pris", "fait"). Si la phrase reste correcte avec "vendu/pris", alors il faut le participe passé (-é). Ex : "il a chanter/chanté" → "il a vendu" est correct → "il a chanté". Cette substitution est fiable car elle évite l''ambiguïté phonétique des verbes en -er.',
'valide','CRPE Français V2 — Didactique','free',true),

-- ================================================================
-- SÉRIE 03 — Enseigner la grammaire à l''école — Intermédiaire — premium
-- topic_key : did_grammaire_ecole
-- QCMs: Q1(a), Q2(b), Q4(b), Q5(b), Q7(b), Q8(c), Q10(b) — 7 QCMs
-- Cible a×1, b×2, c×1, d×3 → Q2→d, Q4→d, Q5→d, Q10→c
-- ================================================================
('23000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','qcm',
'Quelle est la différence entre une démarche déductive et une démarche inductive dans l''enseignement de la grammaire ?',null,
'[{"id":"a","label":"La démarche déductive part de la règle vers les exemples ; la démarche inductive part des exemples vers la règle"},{"id":"b","label":"La démarche déductive est réservée au cycle 3 ; la démarche inductive est réservée au cycle 2"},{"id":"c","label":"La démarche déductive utilise des textes littéraires ; la démarche inductive utilise des exercices systématiques"},{"id":"d","label":"La démarche déductive est plus rapide ; la démarche inductive est plus ludique"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'En démarche déductive, l''enseignant énonce d''abord la règle (ex : "le verbe s''accorde avec son sujet") puis propose des applications. En démarche inductive, les élèves observent un corpus d''exemples, identifient des régularités et formulent eux-mêmes la règle. Les programmes actuels privilégient une démarche inductive (observation, manipulation, verbalisation de la règle), qui favorise la compréhension en profondeur plutôt que la mémorisation mécanique.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','qcm',
'Qu''est-ce qu''une manipulation syntaxique en grammaire scolaire ?',null,
'[{"id":"a","label":"Une activité manuelle où les élèves déplacent des étiquettes de mots"},{"id":"b","label":"Une technique de mémorisation des terminaisons verbales par gestes associés"},{"id":"c","label":"Un exercice de dictée où l''élève doit identifier les erreurs lui-même"},{"id":"d","label":"Une opération effectuée sur un énoncé (déplacement, suppression, substitution, addition) pour en révéler les propriétés grammaticales"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Les manipulations syntaxiques (aussi appelées opérations sur la langue) sont des transformations appliquées à un énoncé pour mettre en évidence ses propriétés grammaticales. Exemples : déplacement ("Lentement, il marche" / "Il marche lentement" → preuve que c''est un circonstanciel), suppression (supprimer un groupe et voir si la phrase reste correcte), substitution (remplacer par un pronom pour identifier la fonction). Ce sont des outils d''analyse, pas des exercices de mémoire.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','vrai_faux',
'Vrai ou faux : la grammaire scolaire telle qu''elle est définie dans les programmes du cycle 3 vise principalement à faire mémoriser des définitions et des règles.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Les programmes de 2016 (réajustés en 2018 et 2023) insistent sur une grammaire au service de la production d''écrits et de la compréhension. L''objectif est que les élèves comprennent le fonctionnement de la langue pour mieux l''utiliser. La mémorisation de définitions est secondaire par rapport à la capacité à observer, analyser et utiliser les structures linguistiques dans des situations réelles.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','qcm',
'Quel est l''intérêt principal des activités de classement en grammaire ?',null,
'[{"id":"a","label":"Vérifier que les élèves ont appris les définitions par cœur"},{"id":"b","label":"Gagner du temps en évitant les explications orales"},{"id":"c","label":"Classer les mots selon leur fréquence d''utilisation dans les textes"},{"id":"d","label":"Permettre aux élèves de construire des catégories grammaticales par observation de régularités et de différences"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Les activités de classement (trier des mots selon leur nature, des phrases selon leur structure, des groupes selon leur fonction) permettent aux élèves de construire activement des catégories grammaticales. En identifiant ce que des mots ou des groupes ont en commun — et ce qui les distingue — les élèves conceptualisent les notions plutôt que de les mémoriser mécaniquement. C''est une démarche inductive fondamentale en enseignement de la grammaire.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','qcm',
'Parmi ces opérations syntaxiques, laquelle permet de vérifier qu''un groupe nominal est bien le sujet du verbe ?',null,
'[{"id":"a","label":"Le déplacement en tête de phrase"},{"id":"b","label":"La suppression : enlever le groupe et vérifier que la phrase reste grammaticalement correcte"},{"id":"c","label":"L''expansion : ajouter des mots pour enrichir le groupe"},{"id":"d","label":"La pronominalisation : remplacer le groupe par un pronom sujet (il, elle, ils, elles, on)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La pronominalisation par un pronom sujet est la manipulation la plus fiable pour identifier le sujet grammatical. Si on peut remplacer le groupe par "il", "elle", "ils" ou "elles" sans que la phrase devienne agrammaticale, c''est le sujet. Ex : "Les enfants jouent" → "Ils jouent" : le groupe "les enfants" est bien sujet. Le déplacement en tête de phrase identifie plutôt les compléments circonstanciels. La suppression identifie les éléments facultatifs.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','vrai_faux',
'Vrai ou faux : la notion de « groupe nominal » s''enseigne avant celle de « nature des mots » dans les programmes du cycle 2.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Au cycle 2, les programmes commencent par les notions de base : phrase, mot, et les premières natures (nom, déterminant, verbe, adjectif). La notion de groupe nominal (GN) comme unité syntaxique fonctionnelle est travaillée au cycle 3. La progression suit une logique du mot vers le groupe, puis vers la phrase complexe.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','qcm',
'Qu''est-ce que la « grammaire implicite » d''un élève ?',null,
'[{"id":"a","label":"La grammaire que l''élève a apprise mais qu''il a oubliée"},{"id":"b","label":"La connaissance intuitive de la langue que l''élève possède du fait de son usage quotidien, sans en avoir conscience"},{"id":"c","label":"La grammaire normative non enseignée dans les programmes officiels"},{"id":"d","label":"Les règles grammaticales présentes dans le manuel scolaire mais non encore étudiées"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La grammaire implicite (ou grammaire intériorisée) désigne la connaissance inconsciente de la langue acquise par l''exposition à la langue orale et écrite. Tout locuteur natif sait, sans le formuler, qu''on dit "le beau chat" et non "le chat beau" dans la plupart des cas. L''enseignement de la grammaire explicite vise à rendre conscience de ces savoirs implicites, à les systématiser et à les étendre à des situations nouvelles.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','qcm',
'À quel cycle les élèves commencent-ils à étudier la notion de phrase complexe (coordination, subordination) selon les programmes en vigueur ?',null,
'[{"id":"a","label":"Cycle 1 (grande section de maternelle)"},{"id":"b","label":"Cycle 2 (CP-CE1-CE2)"},{"id":"c","label":"Cycle 3 (CM1-CM2-6ème)"},{"id":"d","label":"Uniquement au collège, à partir de la 5ème"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La phrase complexe (avec ses propositions coordonnées, juxtaposées et subordonnées) est au programme du cycle 3. Au cycle 2, le travail porte sur la phrase simple : identifier ses constituants (sujet, groupe verbal), reconnaître les types et formes de phrases. C''est au cycle 3 que la subordination (relatives, complétives, circonstancielles) fait l''objet d''un enseignement explicite.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','vrai_faux',
'Vrai ou faux : les programmes actuels recommandent de partir des textes lus et produits par les élèves pour nourrir les séances de grammaire.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Les programmes de 2016 et leurs ajustements insistent sur le lien entre étude de la langue et activités de lecture/écriture. Il est recommandé d''observer la langue dans des textes fonctionnels (textes lus en classe, textes produits par les élèves) plutôt que de travailler uniquement sur des phrases artificielles décontextualisées. Cette approche donne du sens aux notions grammaticales.',
'valide','CRPE Français V2 — Didactique','premium',true),

('23000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_grammaire_ecole','Enseigner la grammaire à l''école','Intermediaire','qcm',
'Quel est le rôle du « corpus d''exemples » dans une séance de grammaire inductive ?',null,
'[{"id":"a","label":"Permettre aux élèves de mémoriser des phrases types à réutiliser"},{"id":"b","label":"Illustrer la règle que l''enseignant vient d''expliquer"},{"id":"c","label":"Servir de base d''observation pour que les élèves induisent eux-mêmes une règle ou une régularité grammaticale"},{"id":"d","label":"Évaluer les connaissances des élèves en début de séance"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Dans une démarche inductive, le corpus d''exemples est le point de départ de l''apprentissage. Les élèves l''observent, le manipulent, l''analysent et formulent une règle ou une généralisation. Le corpus doit être soigneusement construit par l''enseignant : suffisamment d''exemples pour voir une régularité, quelques contre-exemples pour préciser les limites de la règle. Cette démarche rend les élèves acteurs de la découverte de la langue.',
'valide','CRPE Français V2 — Didactique','premium',true),

-- ================================================================
-- SÉRIE 04 — Comprendre un texte : niveaux et stratégies — Intermédiaire — premium
-- topic_key : did_comprehension_texte
-- QCMs: Q1(a), Q2(b), Q4(b), Q5(b), Q7(b), Q8(a), Q10(c) — 7 QCMs
-- Cible a×2, b×2, c×1, d×2 → Q2→d, Q4→d, Q5→c, Q7→d
-- ================================================================
('24000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','qcm',
'Selon le modèle de la "simple view of reading" (Gough & Tunmer), la compréhension en lecture résulte de quoi ?',null,
'[{"id":"a","label":"Du décodage multiplié par la compréhension orale"},{"id":"b","label":"De la vitesse de lecture multipliée par la mémoire de travail"},{"id":"c","label":"De la richesse du vocabulaire multipliée par la motivation à lire"},{"id":"d","label":"De la culture littéraire multipliée par l''exposition aux textes"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le modèle "simple view of reading" formule que : Compréhension en lecture = Décodage × Compréhension orale. Si l''un des deux facteurs est nul, la compréhension en lecture est nulle. Un bon décodeur qui ne comprend pas ce qu''il entend ne comprendra pas ce qu''il lit. Un bon compréhenseur oral qui ne sait pas décoder ne peut pas non plus lire avec compréhension. Ce modèle souligne l''importance de travailler les deux composantes.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','qcm',
'Qu''est-ce qu''une inférence en compréhension de texte ?',null,
'[{"id":"a","label":"Une information explicitement formulée dans le texte que le lecteur doit retrouver"},{"id":"b","label":"Un résumé que le lecteur produit après avoir lu le texte"},{"id":"c","label":"Une question posée par l''enseignant pour guider la lecture"},{"id":"d","label":"Une information implicite que le lecteur doit construire en combinant des éléments du texte et ses connaissances"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Une inférence est une information non explicitement énoncée dans le texte que le lecteur doit déduire. Exemple : "Marie ouvrit son parapluie" → on infère qu''il pleut, bien que cela ne soit pas dit. Les inférences s''appuient sur des éléments du texte et sur les connaissances du lecteur sur le monde. Les élèves faibles en compréhension ont souvent du mal avec les inférences car ils s''en tiennent au sens littéral.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','vrai_faux',
'Vrai ou faux : la compréhension littérale d''un texte (comprendre ce qui est dit explicitement) est suffisante pour une lecture experte.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La lecture experte nécessite plusieurs niveaux de compréhension : le niveau littéral (ce qui est dit), le niveau inférentiel (ce qui est implicite mais peut être déduit) et le niveau critique ou interprétatif (évaluer, porter un jugement sur le texte). Se limiter au niveau littéral est insuffisant pour comprendre de nombreux textes, notamment littéraires, où le sens est souvent construit dans les implicites.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','qcm',
'Quelle stratégie de lecture est recommandée pour aider les élèves à construire une représentation mentale du texte ?',null,
'[{"id":"a","label":"Lire le texte en entier sans s''arrêter, puis répondre aux questions"},{"id":"b","label":"Surligner tous les mots de liaison du texte"},{"id":"c","label":"Compter le nombre de phrases dans chaque paragraphe"},{"id":"d","label":"Se poser des questions pendant la lecture (« Qu''est-ce que je comprends jusqu''ici ? »), faire des prédictions et vérifier"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La lecture active, qui implique de se questionner pendant la lecture, de faire des prédictions et de les vérifier, est une stratégie métacognitive efficace. Elle aide les élèves à construire une représentation mentale cohérente ("modèle de situation") du texte. Ces stratégies s''enseignent explicitement : résumer, questionner, clarifier, prédire (méthode Palincsar & Brown). Elles sont particulièrement bénéfiques pour les élèves faibles en compréhension.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','qcm',
'Qu''est-ce que la lecture oralisée par l''enseignant (lecture à voix haute pour les élèves) apporte spécifiquement en termes de compréhension ?',null,
'[{"id":"a","label":"Elle développe uniquement la fluence de lecture des élèves"},{"id":"b","label":"Elle remplace avantageusement toutes les autres pratiques de lecture"},{"id":"c","label":"Elle permet de travailler la compréhension de textes complexes sans que le décodage soit une barrière, en enrichissant le vocabulaire et les connaissances"},{"id":"d","label":"Elle améliore principalement l''orthographe des élèves par l''écoute"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La lecture à voix haute par l''enseignant (lecture offerte ou lecture magistrale) permet aux élèves d''accéder à des textes plus complexes que ceux qu''ils pourraient lire seuls. Elle développe le vocabulaire, les connaissances sur le monde et la familiarisation avec des structures syntaxiques élaborées. C''est particulièrement important pour les élèves dont le décodage est encore laborieux. Elle ne remplace pas les autres pratiques mais les complète.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','vrai_faux',
'Vrai ou faux : un élève qui relit un passage qu''il n''a pas compris utilise une stratégie de compréhension inefficace.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La relecture ciblée est une stratégie métacognitive efficace. Elle témoigne que l''élève a détecté un problème de compréhension et cherche à le résoudre. Le problème n''est pas de relire, mais de relire de façon passive et sans objectif. Un bon lecteur relit en cherchant à résoudre un problème précis : comprendre un mot, clarifier une relation entre personnages, vérifier une information.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','qcm',
'Pourquoi est-il important d''activer les connaissances antérieures des élèves avant de lire un texte ?',null,
'[{"id":"a","label":"Pour vérifier que les élèves ont bien fait leurs devoirs"},{"id":"b","label":"Pour éviter qu''ils lisent le texte trop vite"},{"id":"c","label":"Pour noter les élèves qui participent le plus en classe"},{"id":"d","label":"Pour orienter leur attention et faciliter la construction d''inférences pendant la lecture"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Activer les connaissances antérieures (sur le sujet, le genre de texte, le contexte) prépare les schémas mentaux nécessaires à la compréhension. Les lecteurs qui disposent de connaissances sur le sujet d''un texte comprennent mieux parce qu''ils peuvent relier les nouvelles informations à ce qu''ils savent déjà et faire des inférences pertinentes. C''est pourquoi les rituels de mise en situation avant la lecture (observation du titre, des illustrations, débat anticipateur) sont pédagogiquement fondés.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','qcm',
'Qu''est-ce que le "modèle de situation" dans la compréhension en lecture ?',null,
'[{"id":"a","label":"La représentation mentale de la situation décrite par le texte, construite par le lecteur à partir du texte et de ses connaissances"},{"id":"b","label":"Le schéma narratif du texte (situation initiale, péripétie, situation finale)"},{"id":"c","label":"Le plan de lecture que l''enseignant établit avant de présenter un texte aux élèves"},{"id":"d","label":"Le niveau de difficulté d''un texte évalué selon sa longueur et son vocabulaire"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le modèle de situation (Van Dijk & Kintsch) est la représentation mentale que le lecteur construit de ce dont parle le texte — les personnages, leurs actions, le lieu, le temps, les relations causales. C''est le niveau le plus profond de la compréhension. Un lecteur qui ne construit pas de modèle de situation peut répondre correctement aux questions de surface (qui? quoi?) mais échouera aux questions d''inférence ou d''interprétation.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','vrai_faux',
'Vrai ou faux : la compréhension d''un texte dépend uniquement de la richesse du vocabulaire du lecteur.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La compréhension de texte dépend de nombreux facteurs : le vocabulaire, certes, mais aussi les connaissances sur le monde, la maîtrise des structures syntaxiques, la capacité à faire des inférences, la connaissance des genres textuels, la mémoire de travail et les compétences métacognitives. Un lecteur avec un vocabulaire étendu mais sans connaissances sur le sujet d''un texte spécialisé peut tout de même échouer à le comprendre.',
'valide','CRPE Français V2 — Didactique','premium',true),

('24000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_comprehension_texte','Comprendre un texte : stratégies','Intermediaire','qcm',
'Quel type de question de compréhension développe le mieux les compétences inférentielles des élèves ?',null,
'[{"id":"a","label":"Les questions de localisation : « Souligne dans le texte la phrase qui dit que... »"},{"id":"b","label":"Les questions fermées avec réponse unique dans le texte"},{"id":"c","label":"Les questions qui exigent de combiner des informations du texte avec des connaissances personnelles : « Pourquoi le personnage réagit-il ainsi selon toi ? »"},{"id":"d","label":"Les questions sur la mise en page et l''organisation visuelle du texte"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Les questions inférentielles demandent aux élèves de dépasser le sens littéral du texte en combinant des éléments implicites du texte avec leurs connaissances. Elles développent la pensée critique et la capacité à construire du sens. Les questions de localisation (trouver la réponse dans le texte) travaillent le niveau littéral, utile mais insuffisant seul. Un questionnement de compréhension efficace combine les deux niveaux.',
'valide','CRPE Français V2 — Didactique','premium',true),

-- ================================================================
-- SÉRIE 05 — L''enseignement du vocabulaire à l''école — Facile — free
-- topic_key : did_vocabulaire_ecole
-- QCMs: Q1(b), Q2(b), Q4(b), Q6(a), Q7(b), Q9(b), Q10(b) — 7 QCMs
-- Cible a×1, b×2, c×2, d×2 → Q2→c, Q4→d, Q7→d, Q9→c
-- ================================================================
('25000000-0000-0000-0000-000000000001','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','qcm',
'Quelle est la différence entre vocabulaire passif et vocabulaire actif ?',null,
'[{"id":"a","label":"Le vocabulaire passif est le vocabulaire des textes écrits, le vocabulaire actif est le vocabulaire de l''oral"},{"id":"b","label":"Le vocabulaire passif est compris mais non utilisé spontanément ; le vocabulaire actif est maîtrisé et mobilisé en production"},{"id":"c","label":"Le vocabulaire passif est peu courant, le vocabulaire actif est fréquent dans la langue"},{"id":"d","label":"Le vocabulaire passif est appris en maternelle, le vocabulaire actif est appris au primaire"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le vocabulaire passif (ou réceptif) comprend les mots que l''on comprend en lecture ou en écoute mais que l''on n''emploie pas spontanément. Le vocabulaire actif (ou productif) est constitué des mots que l''on est capable d''utiliser correctement en production orale ou écrite. L''enseignement du vocabulaire vise à faire passer des mots du stock passif vers le stock actif, par des activités d''emploi répété en contextes variés.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000002','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','qcm',
'Qu''est-ce qu''un hyperonyme ?',null,
'[{"id":"a","label":"Un mot dont le sens est plus spécifique que celui d''un autre mot (ex : « caniche » par rapport à « chien »)"},{"id":"b","label":"Un mot de sens contraire à un autre mot (ex : « chaud » et « froid »)"},{"id":"c","label":"Un terme générique qui inclut dans son sens plusieurs termes plus spécifiques (ex : « animal » par rapport à « chien », « chat », « oiseau »)"},{"id":"d","label":"Un mot qui possède plusieurs sens différents selon le contexte"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''hyperonyme (ou terme générique) désigne une catégorie qui en inclut d''autres. "Animal" est hyperonyme de "chien", "chat", "oiseau". À l''inverse, "caniche" est un hyponyme (terme spécifique) de "chien", lui-même hyponyme d''"animal". Travailler les relations hyperonymie/hyponymie permet aux élèves d''organiser leur lexique en réseaux et d''enrichir leurs capacités de reformulation et de précision.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000003','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','vrai_faux',
'Vrai ou faux : pour mémoriser durablement un mot nouveau, il suffit de le rencontrer une fois dans un texte et d''en lire la définition.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Les recherches sur l''acquisition du vocabulaire montrent qu''un mot doit être rencontré et utilisé dans des contextes variés avant d''être mémorisé durablement. La mémorisation est renforcée par la répétition espacée, l''emploi actif du mot (l''utiliser en production) et la mise en réseau avec d''autres mots connus. Lire une définition une seule fois n''est pas suffisant pour une mémorisation à long terme.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000004','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','qcm',
'Qu''est-ce qu''un morphème ?',null,
'[{"id":"a","label":"Une syllabe d''un mot"},{"id":"b","label":"Un son distinct qui modifie le sens d''un mot"},{"id":"c","label":"Un mot appartenant à la famille d''un autre mot"},{"id":"d","label":"La plus petite unité de sens : racine, préfixe ou suffixe"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Un morphème est la plus petite unité porteuse de sens. "Imprévisible" contient trois morphèmes : "im-" (préfixe de négation), "prévis-" (racine liée au verbe "prévoir") et "-ible" (suffixe adjectival signifiant "qui peut être"). Enseigner la morphologie lexicale permet aux élèves de décoder le sens de mots inconnus à partir de leurs constituants, ce qui est particulièrement utile pour les mots savants ou techniques.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000005','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','vrai_faux',
'Vrai ou faux : enseigner les préfixes et suffixes courants aide les élèves à comprendre des mots qu''ils n''ont jamais rencontrés.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. La connaissance des préfixes (im-, in-, re-, anti-, pré-, sur-…) et des suffixes (-tion, -ité, -ible, -eur…) permet de déduire le sens probable de mots inconnus. Un élève qui connaît le sens de "bio-" (vie) et de "-logie" (étude de) peut inférer que "biologie" est l''étude de la vie. Cette compétence morphologique est particulièrement efficace pour le vocabulaire scientifique et technique, très présent dans les textes du cycle 3.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000006','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','qcm',
'Quelle est la différence entre un champ lexical et un champ sémantique ?',null,
'[{"id":"a","label":"Le champ lexical regroupe les mots liés à un même thème ou domaine ; le champ sémantique regroupe les différents sens d''un même mot"},{"id":"b","label":"Le champ lexical concerne l''écrit, le champ sémantique concerne l''oral"},{"id":"c","label":"Il n''y a pas de différence : les deux termes sont synonymes"},{"id":"d","label":"Le champ lexical regroupe des mots de même nature grammaticale ; le champ sémantique regroupe des synonymes"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le champ lexical est l''ensemble des mots d''un texte ou d''un corpus qui se rapportent à un même thème (ex : champ lexical de la mer : vague, marée, bateau, plongée, horizon…). Le champ sémantique désigne les différents sens qu''un mot peut prendre selon le contexte (ex : "feu" : source de chaleur, signal routier, tir d''arme, passion…). Ces deux notions permettent d''analyser le lexique d''un texte et de comprendre la richesse polysémique de la langue.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000007','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','qcm',
'Quelle pratique pédagogique est la plus efficace pour ancrer durablement un mot de vocabulaire nouveau en mémoire ?',null,
'[{"id":"a","label":"Faire copier la définition du mot dans le cahier de vocabulaire"},{"id":"b","label":"Afficher le mot au tableau pendant toute la semaine"},{"id":"c","label":"Présenter le mot dans un seul contexte de lecture en début de séquence"},{"id":"d","label":"Demander aux élèves d''utiliser le mot dans une phrase originale, dans un contexte différent de celui d''apprentissage"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''utilisation active du mot dans un contexte nouveau est le moyen le plus efficace pour le faire passer du vocabulaire passif au vocabulaire actif. Copier une définition est passif et peu mémorisable. Afficher le mot peut aider mais n''oblige pas à une utilisation. En revanche, devoir produire une phrase originale avec le mot force l''élève à en comprendre le sens, les conditions d''emploi et à l''intégrer dans son répertoire actif.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000008','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','vrai_faux',
'Vrai ou faux : les élèves de milieux défavorisés présentent en moyenne un écart de vocabulaire important par rapport à leurs pairs dès l''entrée à l''école, mais cet écart peut être réduit par un enseignement explicite et intensif du vocabulaire.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Les recherches montrent des écarts de vocabulaire significatifs liés au milieu socio-culturel dès la maternelle. Ces écarts ont un impact direct sur la compréhension de texte et la réussite scolaire ultérieure. Un enseignement explicite, systématique et intensif du vocabulaire (Beck et al., 2013 ; Biemiller, 2006) est particulièrement efficace pour réduire ces écarts. C''est un enjeu fort d''équité scolaire.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000009','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','qcm',
'Qu''est-ce que la polysémie ?',null,
'[{"id":"a","label":"Le fait qu''un mot ait plusieurs orthographes acceptées"},{"id":"b","label":"Le fait que deux mots différents aient le même sens (synonymie)"},{"id":"c","label":"Le fait qu''un même mot ait plusieurs sens différents selon les contextes"},{"id":"d","label":"Le fait qu''un mot appartienne à plusieurs champs lexicaux simultanément"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La polysémie désigne la propriété d''un mot à posséder plusieurs sens distincts selon le contexte. Ex : "vol" (acte de voler dans les airs / acte de dérober), "glace" (eau solidifiée / dessert / miroir). La polysémie est très répandue en français et est source de malentendus pour les lecteurs peu expérimentés. L''enseigner permet aux élèves de comprendre que le sens d''un mot se construit dans son contexte, pas en dehors.',
'valide','CRPE Français V2 — Didactique','free',true),

('25000000-0000-0000-0000-000000000010','Francais','didactique_francais','did_vocabulaire_ecole','Enseigner le vocabulaire à l''école','Facile','qcm',
'Parmi ces activités, laquelle illustre le mieux un enseignement du vocabulaire en réseau ?',null,
'[{"id":"a","label":"Faire chercher la définition de 10 mots dans le dictionnaire et les recopier"},{"id":"b","label":"Présenter un mot nouveau, puis explorer ses synonymes, ses antonymes, sa famille morphologique et des exemples d''emploi dans des contextes variés"},{"id":"c","label":"Faire réciter la liste des mots appris lors de la leçon précédente"},{"id":"d","label":"Faire apprendre par cœur les 100 mots les plus fréquents de la langue française"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''enseignement du vocabulaire en réseau consiste à construire autour d''un mot-cible un ensemble de relations lexicales : synonymes, antonymes, hyponymes, hyperonymes, famille morphologique, expressions idiomatiques. Cette approche favorise une mémorisation profonde et une flexibilité d''emploi, bien supérieures à la simple mémorisation de définitions isolées. Elle permet aussi aux élèves de percevoir la richesse et l''organisation systématique du lexique.',
'valide','CRPE Français V2 — Didactique','free',true);
