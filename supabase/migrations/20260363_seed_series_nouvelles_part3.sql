-- Seed : 5 séries de 10 exercices (50 total) — CRPE Français
-- Série 11 : Phonologie et correspondances graphèmes-phonèmes (analyse_langue)
-- Série 12 : Registres de langue en pratique (lexique)
-- Série 13 : Surlignage — Fonctions essentielles (grammaire)
-- Série 14 : Production d'écrits au cycle 3 (didactique_francais)
-- Série 15 : Préfixes et suffixes — sens et formation (lexique, tri_categories)

-- ============================================================
-- SÉRIE 11 : Phonologie et correspondances graphèmes-phonèmes
-- subdomain: analyse_langue | topic_key: phonologie_graphemes
-- UUID prefix: b4110000 | Mix: 5 QCM + 3 réponse_courte + 2 vrai_faux
-- ============================================================

-- Q1 — QCM — Nombre de phonèmes (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Facile',
  'qcm',
  'Combien de phonèmes comporte le mot « chapeau » ?',
  NULL,
  '[{"id":"a","label":"4 phonèmes"},{"id":"b","label":"5 phonèmes"},{"id":"c","label":"6 phonèmes"},{"id":"d","label":"7 phonèmes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le mot « chapeau » se décompose en 5 phonèmes : /ʃ/ - /a/ - /p/ - /o/ (le digramme « eau » correspond à un seul phonème). Il ne faut pas confondre le nombre de lettres (7) avec le nombre de phonèmes (5). La conscience phonologique exige de dépasser la représentation graphique pour accéder à la réalité sonore du mot.',
  'Compter les lettres au lieu des phonèmes. Le trigramme « eau » ne correspond qu''à un seul phonème /o/, et « ch » à un seul phonème /ʃ/.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q2 — QCM — Graphème correspondant à un phonème (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Facile',
  'qcm',
  'Dans le mot « plein », quel graphème correspond au phonème /ɛ̃/ ?',
  NULL,
  '[{"id":"a","label":"l"},{"id":"b","label":"ei"},{"id":"c","label":"ein"},{"id":"d","label":"in"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans « plein », le phonème /ɛ̃/ (voyelle nasale) est transcrit par le graphème « ein ». Le français compte environ 36 phonèmes, mais plus de 130 graphèmes possibles pour les transcrire. Le graphème est la plus petite unité de l''écrit correspondant à un phonème : ici, les trois lettres « e-i-n » forment un seul graphème car elles transcrivent ensemble un seul phonème.',
  'Répondre « in » en oubliant le « e » qui fait partie intégrante du graphème dans ce mot. La correspondance graphème-phonème doit être analysée en contexte.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q3 — QCM — Paires minimales (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Intermediaire',
  'qcm',
  'Laquelle de ces paires de mots constitue une paire minimale ?',
  'Une paire minimale est constituée de deux mots qui ne diffèrent que par un seul phonème et qui ont des sens différents.',
  '[{"id":"a","label":"pain / bain"},{"id":"b","label":"chat / chien"},{"id":"c","label":"porte / porter"},{"id":"d","label":"maison / raison"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La paire « pain / bain » est une paire minimale : les deux mots ne diffèrent que par un seul phonème (/p/ vs /b/) en position initiale et ont des sens complètement différents. Cette substitution permet de prouver que /p/ et /b/ sont bien deux phonèmes distincts en français (test de commutation). « Maison / raison » diffèrent aussi par un seul phonème (/m/ vs /ʁ/), mais « pain / bain » est la paire minimale la plus canonique car /p/ et /b/ ne diffèrent que par le trait de voisement.',
  'Choisir « maison / raison » : c''est aussi une paire minimale valide ! Mais « chat / chien » n''en est pas une car plusieurs phonèmes diffèrent (/ʃa/ vs /ʃjɛ̃/).',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q4 — QCM — Syllabe orale vs syllabe écrite (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Intermediaire',
  'qcm',
  'Combien de syllabes orales et de syllabes écrites comporte le mot « boulangerie » ?',
  NULL,
  '[{"id":"a","label":"4 syllabes orales, 5 syllabes écrites"},{"id":"b","label":"4 syllabes orales, 4 syllabes écrites"},{"id":"c","label":"5 syllabes orales, 5 syllabes écrites"},{"id":"d","label":"3 syllabes orales, 5 syllabes écrites"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Syllabes orales : /bu/ - /lɑ̃/ - /ʒʁi/ = on compte généralement 4 syllabes orales : /bu.lɑ̃.ʒə.ʁi/ (le « e » de « ge » étant souvent prononcé). Syllabes écrites : bou-lan-ge-ri-e = 5 syllabes écrites. La distinction entre syllabe orale et syllabe écrite est fondamentale en conscience phonologique : le « e » final muet crée une syllabe écrite supplémentaire non prononcée.',
  'Ne pas distinguer syllabe orale et syllabe écrite. Le « e » muet final crée une syllabe graphique (écrite) qui n''est pas prononcée à l''oral.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q5 — QCM — Segmentation phonémique (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Facile',
  'qcm',
  'Quel est le phonème commun aux mots « pharmacie », « photo » et « éléphant » ?',
  NULL,
  '[{"id":"a","label":"/p/"},{"id":"b","label":"/f/"},{"id":"c","label":"/v/"},{"id":"d","label":"/ɑ̃/"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le phonème commun est /f/. Dans ces trois mots, le digramme « ph » transcrit le phonème /f/ (origine grecque). C''est un cas typique de polygraphie : un même phonème peut être transcrit par des graphèmes différents (« f » dans « fête », « ph » dans « photo », « ff » dans « affiche »). Le français possède environ 36 phonèmes mais plus de 130 graphèmes.',
  'Répondre /p/ en se fiant à la lettre « p » visible dans les trois mots. Il faut raisonner sur les sons, pas sur les lettres : « ph » se prononce /f/, pas /p/.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q6 — Réponse courte — Mot contenant un phonème (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Facile',
  'reponse_courte',
  'Donnez un mot de la langue française contenant le phonème /wa/ (comme dans « roi »).',
  'Le phonème /wa/ est transcrit par le digramme « oi » en français standard.',
  NULL,
  '{"mode":"text","acceptableAnswers":["bois","doigt","fois","froid","joie","loi","moi","noix","pois","poisson","soi","soie","soir","toi","toit","trois","voie","voir","voix","croire","devoir","espoir","histoire","mémoire","oiseau","poivre","noir","poisson","boire","armoire","miroir","poire","baignoire"]}'::jsonb,
  'Le phonème /wa/ est l''un des plus caractéristiques du français. Il est systématiquement transcrit par le digramme « oi » (exemples : roi, bois, froid, toit, voix, joie, noir...). On le retrouve aussi dans des mots plus longs comme « histoire », « mémoire », « armoire ». Ce digramme est intéressant car deux lettres (o + i) transcrivent un seul phonème constitué de deux sons enchaînés (semi-consonne + voyelle).',
  'Proposer un mot avec « oua » ou « wa » (graphies non standard en français courant). Le graphème « oi » est la transcription quasi exclusive du phonème /wa/.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q7 — Réponse courte — Structure attaque-rime (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Intermediaire',
  'reponse_courte',
  'Dans la syllabe « cri » (/kʁi/), quelle est l''attaque ?',
  'En phonologie, chaque syllabe se décompose en deux constituants : l''attaque (consonne(s) initiale(s)) et la rime (voyelle + éventuelle(s) consonne(s) finale(s)).',
  NULL,
  '{"mode":"text","acceptableAnswers":["kr","cr","/kʁ/","kʁ","cr-"]}'::jsonb,
  'L''attaque de la syllabe /kʁi/ est /kʁ/ (transcrit « cr »). La rime est /i/. La décomposition attaque-rime est un niveau intermédiaire de conscience phonologique, entre la conscience syllabique et la conscience phonémique. Ici, l''attaque est un groupe consonantique (deux consonnes), ce qui la rend plus complexe qu''une attaque simple (une seule consonne).',
  'Répondre seulement « c » ou /k/ en oubliant la seconde consonne du groupe. L''attaque comprend toutes les consonnes précédant le noyau vocalique de la syllabe.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q8 — Réponse courte — Nombre de phonèmes (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Intermediaire',
  'reponse_courte',
  'Combien de graphèmes comporte le mot « oignon » ? Répondez par un chiffre.',
  'Un graphème est la plus petite unité graphique correspondant à un phonème. Le mot « oignon » est célèbre pour son orthographe atypique.',
  NULL,
  '{"mode":"text","acceptableAnswers":["3","trois"]}'::jsonb,
  'Le mot « oignon » /ɔ.ɲɔ̃/ comporte 3 phonèmes et donc 3 graphèmes : « oi » → /ɔ/, « gn » → /ɲ/, « on » → /ɔ̃/. C''est un cas remarquable où 6 lettres ne forment que 3 graphèmes. Ce mot illustre parfaitement l''opacité de l''orthographe française et la nécessité de distinguer lettre, graphème et phonème — une compétence fondamentale pour l''enseignement de la lecture au cycle 2.',
  'Compter les lettres (6) ou les phonèmes individuellement sans identifier les digrammes. Les lettres « oi », « gn » et « on » fonctionnent chacune comme un seul graphème.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q9 — Vrai/Faux — Conscience phonologique (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Le français standard comporte exactement 26 phonèmes, soit un par lettre de l''alphabet.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'FAUX. Le français standard comporte environ 36 phonèmes (16 voyelles dont les nasales, 17 consonnes et 3 semi-consonnes), alors que l''alphabet n''a que 26 lettres. C''est précisément ce décalage entre le nombre de phonèmes et le nombre de lettres qui explique l''existence des digrammes (ch, ou, an, on…) et trigrammes (eau, ain…). Cette asymétrie est au cœur des difficultés d''apprentissage de la lecture.',
  'Croire à une correspondance biunivoque lettre-son. Le français est un système orthographique opaque où la relation graphème-phonème est complexe et plurivoque.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q10 — Vrai/Faux — Discrimination auditive (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4110000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'phonologie_graphemes',
  'Phonologie et correspondances graphèmes-phonèmes',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Les mots « poisson » et « poison » constituent une paire minimale.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'VRAI. « Poisson » /pwasɔ̃/ et « poison » /pwazɔ̃/ ne diffèrent que par un seul phonème : /s/ dans « poisson » vs /z/ dans « poison ». Ce sont donc bien une paire minimale, qui prouve que /s/ et /z/ sont deux phonèmes distincts en français. Ce duo est un classique de la discrimination auditive en classe : la confusion entre /s/ et /z/ (sourde vs sonore) est fréquente chez les jeunes apprenants.',
  'Penser que ce n''est pas une paire minimale parce que les deux mots s''écrivent différemment (« ss » vs « s »). La paire minimale est un concept phonologique (les sons), pas orthographique (les lettres).',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- ============================================================
-- SÉRIE 12 : Registres de langue en pratique
-- subdomain: lexique | topic_key: registres_langue_pratique
-- UUID prefix: b4120000 | Mix: 5 QCM + 3 réponse_courte + 2 vrai_faux
-- ============================================================

-- Q1 — QCM — Identifier le registre (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'qcm',
  'À quel registre de langue appartient la phrase suivante ?',
  '« J''ai vachement kiffé le film, il était trop stylé ! »',
  '[{"id":"a","label":"Registre soutenu"},{"id":"b","label":"Registre courant"},{"id":"c","label":"Registre familier"},{"id":"d","label":"Registre littéraire"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Cette phrase relève du registre familier, reconnaissable à plusieurs indices : l''adverbe intensif « vachement » (familier pour « beaucoup/très »), le verbe « kiffer » (argot pour « aimer »), l''adverbe « trop » employé comme intensif mélioratif, et l''adjectif « stylé » (néologisme familier). Le registre familier se caractérise par un vocabulaire relâché, des tournures orales et parfois des emprunts à l''argot.',
  'Confondre registre familier et registre courant. Le registre courant est neutre et correct sans être recherché (« J''ai beaucoup aimé ce film, il était vraiment bien »).',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q2 — QCM — Synonyme dans un autre registre (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'qcm',
  'Quel est l''équivalent en registre soutenu du mot familier « se gourer » ?',
  NULL,
  '[{"id":"a","label":"Se tromper"},{"id":"b","label":"Se méprendre"},{"id":"c","label":"Se planter"},{"id":"d","label":"Faire erreur"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Se méprendre » est le synonyme en registre soutenu de « se gourer » (familier). « Se tromper » relève du registre courant. « Se planter » reste familier (comme « se gourer »). « Faire erreur » est courant à légèrement soutenu. La maîtrise des registres de langue implique de pouvoir naviguer entre ces trois niveaux pour un même concept : se gourer (familier) → se tromper (courant) → se méprendre (soutenu).',
  'Choisir « se tromper » qui est du registre courant, pas soutenu. Il faut bien identifier le registre cible demandé.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q3 — QCM — Identifier le registre d'un extrait (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'qcm',
  'À quel registre de langue appartient cet extrait ?',
  '« Je vous saurais gré de bien vouloir considérer ma requête avec la diligence qu''elle mérite. »',
  '[{"id":"a","label":"Registre familier"},{"id":"b","label":"Registre courant"},{"id":"c","label":"Registre soutenu"},{"id":"d","label":"Registre argotique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Cet extrait relève du registre soutenu (ou formel). Les indices sont multiples : la locution verbale « savoir gré » (très formelle), le conditionnel de politesse (« saurais »), le vocabulaire recherché (« requête », « diligence »), la structure syntaxique complexe avec subordonnée relative. Ce type de formulation se rencontre dans la correspondance administrative ou diplomatique.',
  'Confondre registre soutenu et registre courant. Le registre courant dirait simplement : « Je vous serais reconnaissant de traiter ma demande rapidement. »',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q4 — QCM — Indices de registre (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'qcm',
  'Parmi ces phrases, laquelle appartient au registre courant ?',
  NULL,
  '[{"id":"a","label":"Il a paumé ses clés, quel boulet !"},{"id":"b","label":"Il a perdu ses clés, c''est ennuyeux."},{"id":"c","label":"Il a égaré ses clés, quelle contrariété !"},{"id":"d","label":"Il a pommé ses clefs, la galère !"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase B est en registre courant : vocabulaire standard (« perdu », « ennuyeux »), syntaxe simple et correcte, ton neutre. La phrase A est familière (« paumé », « boulet »). La phrase C est soutenue (« égaré », « contrariété »). La phrase D est familière voire argotique (« pommé », « la galère »). Le registre courant est celui de la communication quotidienne correcte, à l''oral comme à l''écrit.',
  'Confondre le registre courant avec le soutenu. « Égaré » et « contrariété » sont des termes plus recherchés que ce qu''on emploie dans la conversation courante.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q5 — QCM — Situation de communication (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'qcm',
  'Un élève de CM2 écrit dans un texto à un ami : « Jsui dég, la prof a dit kon avai un contrôle 2m1. » Quel travail pédagogique sur les registres cette situation permet-elle d''engager ?',
  NULL,
  '[{"id":"a","label":"Corriger l''élève et interdire le langage SMS"},{"id":"b","label":"Montrer que ce registre est adapté à un texto entre amis, puis faire reformuler dans un registre courant ou soutenu"},{"id":"c","label":"Ignorer cette production car elle n''est pas scolaire"},{"id":"d","label":"Demander à l''élève de réécrire en registre soutenu uniquement"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La bonne approche pédagogique (B) consiste à valoriser la conscience sociolinguistique de l''élève : il adapte son registre à la situation (texto amical). L''enseignant peut ensuite faire reformuler ce message en registre courant (« Je suis dégoûté, la professeure a annoncé un contrôle demain ») puis soutenu, pour travailler la variation linguistique. Les programmes du cycle 3 insistent sur la capacité à adapter son langage à la situation de communication.',
  'Interdire le langage SMS (A) est contre-productif : il s''agit plutôt de développer la compétence de variation. Le registre familier n''est pas « faux », il est inadapté à certains contextes.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q6 — Réponse courte — Reformulation en registre courant (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'reponse_courte',
  'Reformulez le mot familier « bouquin » en registre courant.',
  'Trouvez un synonyme de « bouquin » appartenant au registre courant (ni familier, ni soutenu).',
  NULL,
  '{"mode":"text","acceptableAnswers":["livre","un livre","le livre"]}'::jsonb,
  'Le mot « livre » est l''équivalent en registre courant de « bouquin » (familier). En registre soutenu, on pourrait dire « ouvrage » ou « volume ». La triade bouquin → livre → ouvrage illustre parfaitement les trois registres pour un même référent. Au cycle 3, les élèves doivent apprendre à identifier et utiliser les différents registres de langue.',
  'Proposer « ouvrage » qui relève du registre soutenu, ou « bouquinage » qui est un dérivé mais pas un synonyme en registre courant.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q7 — Réponse courte — Reformulation en registre soutenu (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'reponse_courte',
  'Donnez un équivalent en registre soutenu du verbe courant « habiter ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["résider","demeurer"]}'::jsonb,
  '« Résider » ou « demeurer » sont les équivalents en registre soutenu de « habiter » (courant). En registre familier, on dirait « crécher » ou « pioncer chez ». La série crécher → habiter → résider/demeurer montre la gradation entre les trois registres. Le travail sur les registres développe la richesse lexicale des élèves et leur capacité d''adaptation communicationnelle.',
  'Proposer « vivre » qui est du registre courant (synonyme partiel d''habiter), ou « loger » qui est également courant.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q8 — Réponse courte — Mot familier pour un mot courant (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'reponse_courte',
  'Donnez un synonyme en registre familier du mot courant « voiture ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["bagnole","caisse","tire","une bagnole","une caisse","une tire"]}'::jsonb,
  '« Bagnole », « caisse » ou « tire » sont des synonymes familiers de « voiture ». En registre soutenu, on dirait « automobile » ou « véhicule ». La série bagnole → voiture → automobile illustre la triade familier/courant/soutenu. Savoir naviguer dans les registres est une compétence lexicale essentielle au cycle 3.',
  'Proposer « auto » qui est une simple abréviation, acceptée en registre courant, plutôt que du vrai registre familier.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q9 — Vrai/Faux — Registre et correction (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le registre familier est un registre « incorrect » qu''il faut proscrire à l''école.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'FAUX. Le registre familier n''est pas « incorrect » : il est adapté à certaines situations de communication (conversations entre proches, écrits informels). À l''école, l''objectif n''est pas de l''interdire mais d''apprendre aux élèves à adapter leur registre à la situation. Les programmes insistent sur la variation linguistique : savoir quand utiliser quel registre est une compétence sociolinguistique fondamentale.',
  'Croire que seul le registre soutenu est « correct ». La notion de correction dépend de l''adéquation entre le registre choisi et la situation de communication, pas d''une hiérarchie absolue.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q10 — Vrai/Faux — Registres à l'écrit (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4120000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'registres_langue_pratique',
  'Registres de langue en pratique',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La phrase « Ne… point » au lieu de « ne… pas » est un indice de registre soutenu (ou littéraire).',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'VRAI. La forme de négation « ne… point » est aujourd''hui un marqueur de registre soutenu ou littéraire. En français contemporain, « ne… pas » est la forme courante, tandis que « ne… point » est perçu comme archaïsant et recherché. Par ailleurs, en registre familier oral, le « ne » disparaît souvent (« je sais pas » au lieu de « je ne sais pas »). La négation est donc un excellent indicateur de registre.',
  'Penser que « ne… point » est une forme incorrecte. C''est une forme parfaitement grammaticale, simplement vieillie et associée au registre littéraire.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 13 : Surlignage — Fonctions essentielles
-- subdomain: grammaire | topic_key: surlignage_fonctions_essentielles
-- UUID prefix: b4130000 | Type: surlignage_propositions (10 questions)
-- ============================================================

-- Q1 — Phrase simple avec sujet, COD (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet et le complément d''objet direct (COD) dans cette phrase en attribuant chaque segment à la bonne fonction.',
  NULL,
  '[{"id":"s1","label":"Les élèves"},{"id":"s2","label":"préparent"},{"id":"s3","label":"leur exposé"},{"id":"s4","label":"avec soin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s1":"suj","s3":"cod"}}'::jsonb,
  'Le sujet est « Les élèves » : c''est le groupe nominal qui commande l''accord du verbe « préparent » (on peut le remplacer par « ils »). Le COD est « leur exposé » : c''est le complément essentiel du verbe, construit sans préposition (on peut le remplacer par « le » : « Les élèves le préparent »). « Avec soin » est un complément circonstanciel de manière (non demandé ici).',
  'Inclure « avec soin » comme COD. Le COD est construit directement (sans préposition) et répond à la question « quoi ? ». « Avec soin » répond à « comment ? » — c''est un complément circonstanciel.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q2 — Phrase avec sujet, COI (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet et le complément d''objet indirect (COI) dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Marie"},{"id":"s2","label":"téléphone"},{"id":"s3","label":"à sa grand-mère"},{"id":"s4","label":"chaque dimanche"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s1":"suj","s3":"coi"}}'::jsonb,
  'Le sujet est « Marie » : c''est le nom propre qui commande l''accord du verbe « téléphone ». Le COI est « à sa grand-mère » : c''est un complément essentiel du verbe, construit avec la préposition « à ». On peut le remplacer par le pronom « lui » : « Marie lui téléphone ». « Chaque dimanche » est un complément circonstanciel de temps (non demandé ici).',
  'Confondre COI et complément circonstanciel. Le COI est un complément essentiel du verbe (on ne peut pas le supprimer sans altérer le sens : *« Marie téléphone » est incomplet). Il est introduit par une préposition (à, de).',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q3 — Phrase avec attribut du sujet (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet et l''attribut du sujet dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Ce gâteau"},{"id":"s2","label":"semble"},{"id":"s3","label":"délicieux"},{"id":"s4","label":"après cuisson"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s1":"suj","s3":"attr"}}'::jsonb,
  'Le sujet est « Ce gâteau ». L''attribut du sujet est « délicieux » : il exprime une qualité attribuée au sujet par l''intermédiaire du verbe d''état « sembler ». L''attribut du sujet s''accorde avec le sujet (masculin singulier ici) et ne peut pas être supprimé (*« Ce gâteau semble » est agrammatical). Les verbes d''état (être, sembler, paraître, devenir, rester, demeurer) introduisent un attribut, pas un COD.',
  'Confondre attribut du sujet et COD. Le test : on ne peut pas pronominaliser l''attribut par « le/la/les » de la même façon qu''un COD. L''attribut qualifie le sujet via un verbe d''état.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q4 — Phrase avec sujet inversé (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Difficile',
  'surlignage_propositions',
  'Identifiez le sujet (attention à sa position !) et le COD dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Dans la forêt"},{"id":"s2","label":"chantent"},{"id":"s3","label":"les oiseaux"},{"id":"s4","label":"leur mélodie"},{"id":"s5","label":"du matin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s3":"suj","s4":"cod"}}'::jsonb,
  'Le sujet est « les oiseaux » — il est inversé (placé après le verbe). C''est un cas de sujet postposé, fréquent quand la phrase commence par un complément circonstanciel de lieu. Le COD est « leur mélodie » : c''est ce que chantent les oiseaux (on peut dire « les oiseaux la chantent »). L''inversion du sujet est un piège classique au CRPE : le sujet n''est pas toujours avant le verbe !',
  'Identifier « Dans la forêt » comme sujet parce qu''il est en tête de phrase. Le sujet n''est pas toujours en position initiale. Il faut se demander : qui chante ? → les oiseaux.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q5 — Phrase avec pronom COD (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Difficile',
  'surlignage_propositions',
  'Identifiez le sujet, le COD et le COI dans cette phrase. Attention : certains compléments sont des pronoms.',
  NULL,
  '[{"id":"s1","label":"Pierre"},{"id":"s2","label":"le"},{"id":"s3","label":"lui"},{"id":"s4","label":"a offert"},{"id":"s5","label":"hier"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s1":"suj","s2":"cod","s3":"coi"}}'::jsonb,
  'Le sujet est « Pierre ». Le COD est le pronom « le » (il remplace un nom masculin singulier : le cadeau, le livre…). Le COI est le pronom « lui » (il remplace « à quelqu''un »). En français, les pronoms personnels compléments se placent avant le verbe, ce qui peut rendre l''analyse plus difficile. La phrase développée serait : « Pierre a offert le cadeau à son ami. »',
  'Ne pas identifier les pronoms « le » et « lui » comme des compléments d''objet. Les pronoms personnels compléments antéposés sont bien COD (me, te, le, la, les, nous, vous) et COI (me, te, lui, leur, nous, vous).',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q6 — Phrase complexe avec COD et attribut (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Difficile',
  'surlignage_propositions',
  'Identifiez le sujet et l''attribut du sujet dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Les résultats"},{"id":"s2","label":"de l''enquête"},{"id":"s3","label":"demeurent"},{"id":"s4","label":"confidentiels"},{"id":"s5","label":"pour le moment"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s1":"suj","s4":"attr"}}'::jsonb,
  'Le sujet est « Les résultats » (noyau du groupe nominal sujet « Les résultats de l''enquête »). L''attribut du sujet est « confidentiels » : il est introduit par le verbe d''état « demeurer » et qualifie le sujet. « De l''enquête » est un complément du nom « résultats ». « Pour le moment » est un complément circonstanciel de temps. Le verbe « demeurer » fait partie des verbes d''état (ou verbes attributifs).',
  'Identifier « de l''enquête » comme COI. C''est un complément du nom (il complète « résultats », pas le verbe). Le test : « Les résultats demeurent confidentiels » reste grammatical sans « de l''enquête ».',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q7 — Phrase avec COD et COI simultanés (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet, le COD et le COI dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"L''enseignante"},{"id":"s2","label":"distribue"},{"id":"s3","label":"les cahiers"},{"id":"s4","label":"aux élèves"},{"id":"s5","label":"en silence"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s1":"suj","s3":"cod","s4":"coi"}}'::jsonb,
  'Le sujet est « L''enseignante » (elle distribue). Le COD est « les cahiers » : complément construit directement, sans préposition (elle distribue quoi ?). Le COI est « aux élèves » : complément construit avec la préposition « à » (elle distribue à qui ?). « En silence » est un complément circonstanciel de manière. Le verbe « distribuer » est un verbe à double complémentation (ditransitif) : il appelle un COD et un COI.',
  'Confondre le COI « aux élèves » avec un complément circonstanciel. Le COI est essentiel au verbe : « distribuer quelque chose à quelqu''un ».',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q8 — Sujet complexe (groupe nominal étendu) (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Difficile',
  'surlignage_propositions',
  'Identifiez le sujet et le COD dans cette phrase. Le sujet est un groupe nominal étendu.',
  NULL,
  '[{"id":"s1","label":"Le petit chat"},{"id":"s2","label":"de la voisine"},{"id":"s3","label":"a attrapé"},{"id":"s4","label":"une souris"},{"id":"s5","label":"ce matin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s1":"suj","s4":"cod"}}'::jsonb,
  'Le sujet est « Le petit chat » (noyau du groupe nominal sujet). Le complément du nom « de la voisine » fait partie du groupe nominal sujet étendu mais n''est pas lui-même sujet. Le COD est « une souris » : c''est ce que le chat a attrapé (construction directe). « Ce matin » est un complément circonstanciel de temps.',
  'Identifier « Le petit chat de la voisine » entier comme sujet. En analyse grammaticale rigoureuse, on distingue le sujet (noyau) et ses expansions (complément du nom). Le sujet au sens strict est le groupe « Le petit chat ».',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q9 — Phrase avec attribut adjectif et sujet pronom (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le sujet et l''attribut du sujet dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Elles"},{"id":"s2","label":"paraissent"},{"id":"s3","label":"vraiment"},{"id":"s4","label":"fatiguées"},{"id":"s5","label":"ce soir"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s1":"suj","s4":"attr"}}'::jsonb,
  'Le sujet est le pronom personnel « Elles ». L''attribut du sujet est « fatiguées » : il est introduit par le verbe d''état « paraître » et s''accorde avec le sujet (féminin pluriel → « fatiguées » avec -ées). « Vraiment » est un adverbe qui modifie l''adjectif attribut. L''accord de l''attribut avec le sujet est un point d''orthographe grammaticale important au cycle 3.',
  'Considérer « vraiment fatiguées » comme un seul bloc attribut. L''adverbe « vraiment » modifie l''adjectif mais n''est pas lui-même attribut.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q10 — Phrase avec COI pronom et sujet inversé (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4130000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'surlignage_fonctions_essentielles',
  'Surlignage : fonctions essentielles',
  'Difficile',
  'surlignage_propositions',
  'Identifiez le sujet, le COD et le COI dans cette phrase. Attention aux pronoms compléments et à la position du sujet.',
  NULL,
  '[{"id":"s1","label":"À ses parents"},{"id":"s2","label":"l''enfant"},{"id":"s3","label":"a montré"},{"id":"s4","label":"fièrement"},{"id":"s5","label":"son dessin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"cod","label":"COD","color":"amber"},{"id":"coi","label":"COI","color":"green"},{"id":"attr","label":"Attribut du sujet","color":"purple"}],"mapping":{"s2":"suj","s5":"cod","s1":"coi"}}'::jsonb,
  'Le sujet est « l''enfant » (c''est lui qui a montré). Le COD est « son dessin » (construction directe : montrer quoi ?). Le COI est « À ses parents » (construction indirecte avec « à » : montrer à qui ?). Le COI est ici antéposé (placé en tête de phrase pour un effet de mise en relief). « Fièrement » est un adverbe de manière, complément circonstanciel.',
  'Confondre le COI antéposé « À ses parents » avec un complément circonstanciel de lieu. Le test : « montrer à quelqu''un » → le complément est essentiel au verbe, c''est bien un COI.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- ============================================================
-- SÉRIE 14 : Production d'écrits au cycle 3
-- subdomain: didactique_francais | topic_key: didactique_production_ecrits
-- UUID prefix: b4140000 | Mix: 6 QCM + 4 vrai_faux
-- ============================================================

-- Q1 — QCM — Modèle de Hayes & Flower (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Intermediaire',
  'qcm',
  'Dans le modèle du processus rédactionnel de Hayes et Flower, quels sont les trois grands processus cognitifs impliqués dans l''écriture ?',
  NULL,
  '[{"id":"a","label":"Planification, mise en texte, révision"},{"id":"b","label":"Lecture, écriture, relecture"},{"id":"c","label":"Brouillon, copie, correction"},{"id":"d","label":"Imagination, rédaction, illustration"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le modèle de Hayes et Flower (1980) identifie trois processus cognitifs principaux : la planification (génération d''idées, organisation, définition d''objectifs), la mise en texte (textualisation, linéarisation des idées en énoncés) et la révision (relecture, détection de problèmes, correction). Ces processus ne sont pas linéaires mais récursifs : le scripteur navigue constamment entre eux. Ce modèle est fondamental en didactique de l''écriture.',
  'Confondre les processus cognitifs (planification, mise en texte, révision) avec les étapes matérielles (brouillon, copie, correction). Le modèle de Hayes et Flower décrit des opérations mentales, pas des supports physiques.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q2 — QCM — Genres d'écrits au cycle 3 (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Intermediaire',
  'qcm',
  'Selon les programmes du cycle 3, les élèves doivent pratiquer l''écriture dans des genres variés. Lequel de ces genres n''est PAS explicitement mentionné dans les programmes ?',
  NULL,
  '[{"id":"a","label":"Le récit de fiction"},{"id":"b","label":"Le compte rendu"},{"id":"c","label":"La dissertation philosophique"},{"id":"d","label":"La lettre"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La dissertation philosophique (C) n''est pas un genre attendu au cycle 3. Les programmes mentionnent explicitement : les écrits de fiction (récits, contes, poèmes), les écrits fonctionnels (lettres, comptes rendus, résumés), les écrits de travail (prises de notes, brouillons organisés) et les écrits réflexifs. La variété des genres est un principe clé : elle permet aux élèves de découvrir les contraintes spécifiques à chaque type d''écrit.',
  'Penser que le cycle 3 ne travaille que les écrits narratifs. Les programmes insistent sur la diversité des genres : narratif, explicatif, argumentatif (à un niveau adapté), poétique, fonctionnel.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q3 — QCM — Le brouillon comme outil (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Difficile',
  'qcm',
  'Un enseignant de CM1 demande aux élèves de « faire un brouillon » avant de recopier. Quelle critique didactique peut-on formuler sur cette pratique ?',
  NULL,
  '[{"id":"a","label":"Le brouillon est inutile, les élèves devraient écrire directement au propre"},{"id":"b","label":"Le brouillon réduit à une « copie préalable à recopier » ne développe pas les compétences de planification et révision"},{"id":"c","label":"Le brouillon devrait être noté pour motiver les élèves"},{"id":"d","label":"Le brouillon ne convient qu''aux élèves en difficulté"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La critique principale (B) est que le brouillon réduit à un « premier jet à recopier proprement » perd sa fonction didactique. Un brouillon formateur devrait être un espace de travail où l''on planifie (listes d''idées, schémas, plans), où l''on tâtonne (ratures, ajouts, flèches de déplacement) et où l''on révise (annotations, reformulations). C''est un outil de pensée, pas un devoir « en double ». La recherche en didactique de l''écriture (Bucheton, Chabanne) insiste sur cette distinction.',
  'Considérer que « faire un brouillon » se résume à écrire une première version. Le brouillon a une fonction cognitive : il rend visible le processus de pensée et d''écriture.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q4 — QCM — Grille de relecture (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Intermediaire',
  'qcm',
  'Quel est l''intérêt principal d''une grille de relecture co-construite avec les élèves pour la production d''écrits ?',
  NULL,
  '[{"id":"a","label":"Elle permet à l''enseignant de corriger plus rapidement"},{"id":"b","label":"Elle rend explicites les critères de réussite et favorise l''autorégulation"},{"id":"c","label":"Elle uniformise les productions des élèves"},{"id":"d","label":"Elle remplace la correction de l''enseignant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''intérêt principal (B) est de rendre les critères de réussite explicites et de favoriser l''autorégulation. Quand les élèves co-construisent la grille, ils s''approprient les attendus du genre écrit travaillé. La grille devient un outil de révision autonome : l''élève apprend à relire son texte de façon ciblée (cohérence, respect du genre, orthographe, ponctuation). C''est un levier majeur pour développer la posture d''auteur et la métacognition.',
  'Penser que la grille sert principalement à l''enseignant. Son objectif premier est de donner aux élèves des outils d''autoévaluation pour qu''ils développent progressivement une posture réflexive sur leurs écrits.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q5 — QCM — Écriture collaborative (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Difficile',
  'qcm',
  'Lors d''une séance d''écriture collaborative en CM2, quel dispositif est le plus pertinent pour travailler la révision entre pairs ?',
  NULL,
  '[{"id":"a","label":"Chaque élève corrige l''orthographe du texte de son voisin"},{"id":"b","label":"Les élèves échangent leurs textes et rédigent des remarques constructives à l''aide de la grille de critères"},{"id":"c","label":"L''enseignant lit les textes à voix haute et les élèves votent pour le meilleur"},{"id":"d","label":"Les élèves recopient le texte du voisin pour l''améliorer"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le dispositif B est le plus pertinent : l''échange de textes avec des remarques constructives guidées par une grille de critères développe à la fois la compétence de révision et la posture de lecteur critique. Ce dispositif favorise le conflit sociocognitif (confrontation des points de vue) et l''explicitation des critères de réussite. La correction orthographique seule (A) est trop restreinte ; le vote (C) n''est pas formatif ; la recopie (D) ne développe aucune compétence rédactionnelle.',
  'Réduire la révision entre pairs à la correction orthographique. La révision porte sur tous les niveaux du texte : cohérence, structure, choix lexicaux, syntaxe et, en dernier lieu, orthographe.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q6 — QCM — Contraintes d'écriture (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Intermediaire',
  'qcm',
  'Un enseignant propose d''écrire un texte sans utiliser la lettre « e » (lipogramme, inspiré de l''OuLiPo). Quel est l''intérêt didactique principal de cette contrainte ?',
  NULL,
  '[{"id":"a","label":"Rendre l''exercice plus difficile pour les bons élèves"},{"id":"b","label":"Stimuler la créativité lexicale et syntaxique en obligeant à chercher des alternatives"},{"id":"c","label":"Apprendre aux élèves que le « e » est une lettre dispensable"},{"id":"d","label":"Préparer les élèves au concours d''écriture"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''intérêt principal (B) est de stimuler la créativité lexicale et syntaxique. La contrainte formelle, loin de brider l''écriture, oblige à explorer le vocabulaire (chercher des synonymes sans « e »), à reformuler syntaxiquement et à faire des choix linguistiques conscients. Les jeux d''écriture à contraintes (inspirés de l''OuLiPo : lipogrammes, tautogrammes, acrostiches) sont des leviers puissants pour dédramatiser l''acte d''écrire et développer la conscience métalinguistique.',
  'Penser que les contraintes formelles nuisent à la créativité. Au contraire, la contrainte libère en fournissant un cadre stimulant qui élimine l''angoisse de la page blanche.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q7 — Vrai/Faux — Processus récursif (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Selon le modèle de Hayes et Flower, les processus de planification, mise en texte et révision se déroulent toujours dans cet ordre, de façon linéaire.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'FAUX. Le modèle de Hayes et Flower insiste sur le caractère récursif des processus rédactionnels. Le scripteur ne passe pas mécaniquement de la planification à la mise en texte puis à la révision : il navigue constamment entre ces trois processus. Par exemple, en cours de mise en texte, il peut revenir à la planification pour réorganiser ses idées, ou anticiper la révision. C''est précisément cette récursivité qui distingue le scripteur expert du scripteur novice.',
  'Croire que l''écriture est un processus linéaire « plan → rédaction → relecture ». Les bons scripteurs révisent en cours d''écriture et replanifient régulièrement.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q8 — Vrai/Faux — Étayage de l'écriture (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? La dictée à l''adulte est un dispositif d''étayage réservé exclusivement au cycle 1 et inadapté au cycle 3.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'FAUX. Si la dictée à l''adulte est effectivement très utilisée au cycle 1, elle peut être adaptée au cycle 3 pour des élèves en grande difficulté avec le geste graphique ou l''encodage, afin de ne pas bloquer la production d''idées. Au cycle 3, on parle plutôt d''« écriture accompagnée » ou de « scribe » : l''adulte (ou un pair) prend en charge la mise en mots pour permettre à l''élève de se concentrer sur la planification et la textualisation orale. C''est un étayage différencié pertinent.',
  'Penser que chaque outil pédagogique est strictement réservé à un cycle. L''adaptation des dispositifs d''étayage aux besoins des élèves est un principe fondamental de différenciation pédagogique.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q9 — Vrai/Faux — Écriture quotidienne (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Les programmes du cycle 3 recommandent une pratique quotidienne de l''écriture sous des formes variées.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'VRAI. Les programmes insistent sur la nécessité d''une pratique régulière et quotidienne de l''écriture. Cette pratique ne se limite pas aux « rédactions » hebdomadaires : elle inclut les écrits de travail (prise de notes, réponses à des questions, synthèses), les écrits créatifs courts (jogging d''écriture, écriture flash), les écrits fonctionnels (messages, consignes) et les projets d''écriture longue. La régularité est essentielle pour automatiser les compétences rédactionnelles.',
  'Penser que « écriture » signifie uniquement « rédaction ». L''écriture au cycle 3 englobe toutes les situations où l''élève produit de l''écrit, y compris les écrits intermédiaires et les écrits de travail.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- Q10 — Vrai/Faux — Première écriture (Difficile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4140000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'didactique_production_ecrits',
  'Production d''écrits au cycle 3',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? En production d''écrits au cycle 3, il est préférable de corriger toutes les erreurs d''orthographe du premier jet avant de travailler la cohérence textuelle.',
  NULL,
  NULL,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'FAUX. La didactique de l''écriture recommande de travailler d''abord sur les niveaux « hauts » du texte (cohérence, structure, adéquation au genre, progression thématique) avant de s''attaquer aux niveaux « bas » (orthographe, ponctuation). Si l''on corrige l''orthographe d''un passage qui sera ensuite supprimé ou réécrit lors de la révision de la cohérence, le travail est perdu. La révision doit procéder du global vers le local : texte → paragraphe → phrase → mot → orthographe.',
  'Croire que la correction orthographique est prioritaire. Elle est importante, mais elle intervient en fin de processus, une fois que le texte est stabilisé dans sa structure et son contenu.',
  'valide',
  'CRPE Français V4',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 15 : Préfixes et suffixes — sens et formation
-- subdomain: lexique | topic_key: prefixes_suffixes_sens
-- UUID prefix: b4150000 | Type: tri_categories (10 questions)
-- ============================================================

-- Q1 — Tri par sens du préfixe (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon le sens de son préfixe : négatif, répétition ou excès.',
  NULL,
  '[{"id":"w1","label":"impossible"},{"id":"w2","label":"refaire"},{"id":"w3","label":"surcharge"},{"id":"w4","label":"invisible"},{"id":"w5","label":"rejouer"},{"id":"w6","label":"hyperactif"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neg","label":"Préfixe négatif (in-, im-, dé-)"},{"id":"rep","label":"Préfixe de répétition (re-, ré-)"},{"id":"exc","label":"Préfixe d''excès (sur-, super-, hyper-)"}],"mapping":{"w1":"neg","w2":"rep","w3":"exc","w4":"neg","w5":"rep","w6":"exc"}}'::jsonb,
  'Préfixes négatifs : « impossible » (im- = négation de possible) et « invisible » (in- = négation de visible). Préfixes de répétition : « refaire » (re- = faire à nouveau) et « rejouer » (re- = jouer à nouveau). Préfixes d''excès : « surcharge » (sur- = excès de charge) et « hyperactif » (hyper- = excès d''activité). Le sens du préfixe modifie le sens du radical de façon prévisible, ce qui est un levier puissant pour le vocabulaire.',
  'Confondre le préfixe négatif « in- » avec un simple début de mot. Dans « invisible », « in- » est bien un préfixe (visible → invisible), mais dans « inviter », « in- » ne signifie pas « non ».',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q2 — Tri par sens du préfixe (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon le sens de son préfixe.',
  NULL,
  '[{"id":"w1","label":"défaire"},{"id":"w2","label":"relire"},{"id":"w3","label":"surnaturel"},{"id":"w4","label":"impoli"},{"id":"w5","label":"reconstruire"},{"id":"w6","label":"superhéros"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neg","label":"Préfixe négatif (in-, im-, dé-)"},{"id":"rep","label":"Préfixe de répétition (re-, ré-)"},{"id":"exc","label":"Préfixe d''excès (sur-, super-, hyper-)"}],"mapping":{"w1":"neg","w2":"rep","w3":"exc","w4":"neg","w5":"rep","w6":"exc"}}'::jsonb,
  'Préfixes négatifs : « défaire » (dé- = annulation, contraire de faire) et « impoli » (im- = non poli). Préfixes de répétition : « relire » (re- = lire à nouveau) et « reconstruire » (re- = construire à nouveau). Préfixes d''excès/supériorité : « surnaturel » (sur- = au-delà du naturel) et « superhéros » (super- = au-dessus, héros supérieur). Le préfixe « dé-/dés- » a un sens privatif ou réversif.',
  'Ne pas reconnaître « dé- » comme préfixe négatif. Le préfixe « dé-/dés- » exprime la négation ou l''inversion de l''action (défaire = annuler ce qui a été fait).',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q3 — Tri par sens du préfixe (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon le sens de son préfixe. Attention aux cas moins évidents !',
  NULL,
  '[{"id":"w1","label":"irréel"},{"id":"w2","label":"réorganiser"},{"id":"w3","label":"surpopulation"},{"id":"w4","label":"désordre"},{"id":"w5","label":"réapparaître"},{"id":"w6","label":"hypersensible"},{"id":"w7","label":"illégal"},{"id":"w8","label":"surestimer"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neg","label":"Préfixe négatif (in-, im-, dé-, ir-, il-)"},{"id":"rep","label":"Préfixe de répétition (re-, ré-)"},{"id":"exc","label":"Préfixe d''excès (sur-, super-, hyper-)"}],"mapping":{"w1":"neg","w2":"rep","w3":"exc","w4":"neg","w5":"rep","w6":"exc","w7":"neg","w8":"exc"}}'::jsonb,
  'Préfixes négatifs : « irréel » (ir- devant r, variante de in-), « désordre » (dés- = absence d''ordre), « illégal » (il- devant l, variante de in-). Préfixes de répétition : « réorganiser » (ré- = organiser à nouveau), « réapparaître » (ré- = apparaître de nouveau). Préfixes d''excès : « surpopulation » (sur-), « hypersensible » (hyper-), « surestimer » (sur- = estimer au-delà). Les variantes ir-, il- sont des allomorphes du préfixe in- par assimilation phonétique.',
  'Ne pas reconnaître « ir- » et « il- » comme des variantes de « in- ». Devant « r », « in- » devient « ir- » (irréel, irrégulier) ; devant « l », il devient « il- » (illégal, illisible). C''est un phénomène d''assimilation.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q4 — Tri par sens du préfixe (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon le sens de son préfixe.',
  NULL,
  '[{"id":"w1","label":"démonter"},{"id":"w2","label":"recoller"},{"id":"w3","label":"surproduction"},{"id":"w4","label":"impatient"},{"id":"w5","label":"renaître"},{"id":"w6","label":"superpuissance"},{"id":"w7","label":"incapable"},{"id":"w8","label":"hypermarché"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neg","label":"Préfixe négatif (in-, im-, dé-)"},{"id":"rep","label":"Préfixe de répétition (re-, ré-)"},{"id":"exc","label":"Préfixe d''excès (sur-, super-, hyper-)"}],"mapping":{"w1":"neg","w2":"rep","w3":"exc","w4":"neg","w5":"rep","w6":"exc","w7":"neg","w8":"exc"}}'::jsonb,
  'Préfixes négatifs : « démonter » (dé- = défaire le montage), « impatient » (im- devant p, = non patient), « incapable » (in- = non capable). Préfixes de répétition : « recoller » (re- = coller à nouveau), « renaître » (re- = naître de nouveau, au figuré). Préfixes d''excès : « surproduction » (sur-), « superpuissance » (super-), « hypermarché » (hyper- = marché de très grande taille).',
  'Hésiter sur « renaître » : c''est bien un préfixe de répétition (naître à nouveau, recommencer), même si le sens est souvent figuré.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q5 — Tri par type de suffixe (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon que son suffixe forme un nom, un adjectif ou un verbe.',
  NULL,
  '[{"id":"w1","label":"moderniser"},{"id":"w2","label":"habitation"},{"id":"w3","label":"courageux"},{"id":"w4","label":"arrosage"},{"id":"w5","label":"lisible"},{"id":"w6","label":"solidifier"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Suffixe nominal (-tion, -ment, -age)"},{"id":"adj","label":"Suffixe adjectival (-eux, -able, -ible)"},{"id":"verb","label":"Suffixe verbal (-iser, -ifier)"}],"mapping":{"w1":"verb","w2":"nom","w3":"adj","w4":"nom","w5":"adj","w6":"verb"}}'::jsonb,
  'Suffixes nominaux : « habitation » (-tion → forme un nom à partir du verbe habiter), « arrosage » (-age → forme un nom d''action). Suffixes adjectivaux : « courageux » (-eux → forme un adjectif à partir du nom courage), « lisible » (-ible → forme un adjectif exprimant la possibilité). Suffixes verbaux : « moderniser » (-iser → forme un verbe à partir de l''adjectif moderne), « solidifier » (-ifier → forme un verbe à partir de l''adjectif solide).',
  'Confondre le suffixe et la terminaison verbale. Dans « moderniser », le suffixe est « -iser » (qui transforme un adjectif en verbe), pas la terminaison « -er » de l''infinitif.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q6 — Tri par type de suffixe (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon que son suffixe forme un nom, un adjectif ou un verbe.',
  NULL,
  '[{"id":"w1","label":"changement"},{"id":"w2","label":"remarquable"},{"id":"w3","label":"harmoniser"},{"id":"w4","label":"plantation"},{"id":"w5","label":"peureux"},{"id":"w6","label":"glorifier"},{"id":"w7","label":"bavardage"},{"id":"w8","label":"flexible"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Suffixe nominal (-tion, -ment, -age)"},{"id":"adj","label":"Suffixe adjectival (-eux, -able, -ible)"},{"id":"verb","label":"Suffixe verbal (-iser, -ifier)"}],"mapping":{"w1":"nom","w2":"adj","w3":"verb","w4":"nom","w5":"adj","w6":"verb","w7":"nom","w8":"adj"}}'::jsonb,
  'Suffixes nominaux : « changement » (-ment → nom d''action), « plantation » (-tion → nom d''action/résultat), « bavardage » (-age → nom d''action). Suffixes adjectivaux : « remarquable » (-able → qualité, possibilité), « peureux » (-eux → caractérisé par), « flexible » (-ible → qui peut être fléchi). Suffixes verbaux : « harmoniser » (-iser → rendre harmonieux), « glorifier » (-ifier → rendre glorieux). Le suffixe change la classe grammaticale du mot.',
  'Confondre les suffixes « -able » et « -ible » comme ayant des sens différents. Ils expriment tous deux la possibilité (qui peut être…), seule leur distribution change selon l''origine du mot.',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q7 — Tri par type de suffixe (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon que son suffixe forme un nom, un adjectif ou un verbe.',
  NULL,
  '[{"id":"w1","label":"enseignement"},{"id":"w2","label":"dangereux"},{"id":"w3","label":"mécaniser"},{"id":"w4","label":"navigation"},{"id":"w5","label":"lavable"},{"id":"w6","label":"exemplifier"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Suffixe nominal (-tion, -ment, -age)"},{"id":"adj","label":"Suffixe adjectival (-eux, -able, -ible)"},{"id":"verb","label":"Suffixe verbal (-iser, -ifier)"}],"mapping":{"w1":"nom","w2":"adj","w3":"verb","w4":"nom","w5":"adj","w6":"verb"}}'::jsonb,
  'Suffixes nominaux : « enseignement » (-ment → nom d''action dérivé de enseigner), « navigation » (-tion → nom d''action dérivé de naviguer). Suffixes adjectivaux : « dangereux » (-eux → qui présente du danger), « lavable » (-able → qui peut être lavé). Suffixes verbaux : « mécaniser » (-iser → rendre mécanique), « exemplifier » (-ifier → rendre exemplaire, donner un exemple de). La suffixation est un procédé de dérivation fondamental en morphologie lexicale.',
  'Ne pas reconnaître « exemplifier » comme un verbe en -ifier. C''est un verbe formé sur « exemple » avec le suffixe verbal « -ifier » (même famille que « simplifier », « modifier », « justifier »).',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q8 — Tri par rôle dans la dérivation : radical / préfixe / suffixe (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Intermediaire',
  'tri_categories',
  'Décomposez le mot « INCROYABLE » en classant chaque morphème dans la bonne catégorie.',
  'Le mot « incroyable » est formé de trois morphèmes. Identifiez le rôle de chacun.',
  '[{"id":"w1","label":"in-"},{"id":"w2","label":"-croy-"},{"id":"w3","label":"-able"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"rad","label":"Radical"},{"id":"pref","label":"Préfixe"},{"id":"suf","label":"Suffixe"}],"mapping":{"w1":"pref","w2":"rad","w3":"suf"}}'::jsonb,
  'Le mot « incroyable » se décompose en trois morphèmes : le préfixe « in- » (sens négatif : non), le radical « -croy- » (du verbe croire, forme altérée) et le suffixe « -able » (qui peut être). Le mot signifie donc littéralement « qui ne peut pas être cru ». L''analyse morphémique (décomposition en unités de sens minimales) est une compétence lexicale fondamentale au cycle 3 pour accéder au sens des mots inconnus.',
  'Identifier « -croyable » comme un seul bloc. Il faut distinguer le radical (porteur du sens lexical) du suffixe (qui modifie la classe grammaticale ou le sens).',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q9 — Tri par rôle : radical / préfixe / suffixe (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Intermediaire',
  'tri_categories',
  'Décomposez le mot « DÉSAGRÉABLEMENT » en classant chaque morphème dans la bonne catégorie.',
  'Ce mot est construit par dérivation successive. Identifiez les quatre morphèmes et leur rôle.',
  '[{"id":"w1","label":"dés-"},{"id":"w2","label":"-agré-"},{"id":"w3","label":"-able-"},{"id":"w4","label":"-ment"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"rad","label":"Radical"},{"id":"pref","label":"Préfixe"},{"id":"suf","label":"Suffixe"}],"mapping":{"w1":"pref","w2":"rad","w3":"suf","w4":"suf"}}'::jsonb,
  'Le mot « désagréablement » se décompose en : le préfixe « dés- » (sens négatif/privatif), le radical « -agré- » (du verbe agréer, base lexicale), le suffixe « -able » (adjectival : qui peut être agréé → agréable) et le suffixe « -ment » (adverbial : de manière). La chaîne de dérivation est : agréer → agréable → agréablement → désagréablement. Ce mot possède deux suffixes successifs, ce qui montre que la dérivation peut se faire en plusieurs étapes.',
  'Considérer qu''un mot ne peut avoir qu''un seul suffixe. La dérivation est un processus itératif : on peut ajouter un suffixe à un mot déjà suffixé (agréer → agré-able → agréable-ment).',
  'valide',
  'CRPE Français V4',
  'free',
  true
);

-- Q10 — Tri par rôle : radical / préfixe / suffixe (Intermediaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b4150000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'prefixes_suffixes_sens',
  'Préfixes et suffixes : sens et formation',
  'Intermediaire',
  'tri_categories',
  'Décomposez le mot « IRRESPONSABLE » en classant chaque morphème dans la bonne catégorie.',
  'Ce mot est construit par préfixation et suffixation simultanées (parasynthèse). Identifiez les trois morphèmes.',
  '[{"id":"w1","label":"ir-"},{"id":"w2","label":"-respons-"},{"id":"w3","label":"-able"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"rad","label":"Radical"},{"id":"pref","label":"Préfixe"},{"id":"suf","label":"Suffixe"}],"mapping":{"w1":"pref","w2":"rad","w3":"suf"}}'::jsonb,
  'Le mot « irresponsable » se décompose en : le préfixe « ir- » (variante de in- devant r, sens négatif), le radical « -respons- » (du latin responsus, base de « répondre de ») et le suffixe « -able » (qui peut être). Le mot signifie « qui ne peut être tenu pour responsable » ou « qui n''assume pas ses responsabilités ». Notez que « ir- » est un allomorphe de « in- » : devant r, le n s''assimile en r (même phénomène dans « irrégulier », « irréel »).',
  'Analyser « irr- » comme un seul préfixe au lieu de « ir- » + doublement de la consonne par assimilation. Le « rr » s''explique par le contact entre le préfixe « in- » (devenu « ir- ») et le radical commençant par « r ».',
  'valide',
  'CRPE Français V4',
  'free',
  true
);
