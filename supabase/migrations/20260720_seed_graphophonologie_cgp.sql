-- Seed: Graphophonologie et CGP — Correspondances graphèmes-phonèmes (10 exercices)
-- Subdomain: didactique_francais | Level: Intermediaire | Access: free/premium
-- topic_key: graphophonologie_cgp

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc020000-0000-0000-0000-000000000001',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Intermediaire',
  'vrai_faux',
  'La conscience phonologique et les correspondances graphèmes-phonèmes (CGP) désignent la même compétence : la capacité à identifier et manipuler les sons de la langue.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. Ce sont deux compétences distinctes et complémentaires. La conscience phonologique est une compétence ORALE : l''élève manipule les unités sonores (syllabes, phonèmes, rimes) sans support écrit — ex. « Compte les syllabes dans 'chapeau' ». Les CGP (Correspondances Graphèmes-Phonèmes) établissent le LIEN écrit-oral : elles associent des unités graphiques (graphèmes) à des unités sonores (phonèmes) — ex. « Le graphème 'ch' se prononce /ʃ/ ». Un élève peut avoir une bonne conscience phonologique mais de mauvaises CGP (reconnaît les sons à l''oral mais ne sait pas les écrire), et inversement. L''enseignement du code au CP articule les deux : conscience phonologique → phonème → graphème(s) correspondant(s).',
  'Confondre les deux compétences. La distinction est systématiquement évaluée au CRPE car elle sous-tend des choix pédagogiques différents.',
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
  'fc020000-0000-0000-0000-000000000002',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Intermediaire',
  'qcm',
  'Dans le mot « château », combien de phonèmes peut-on identifier ?',
  NULL,
  '[{"id":"a","label":"3 phonèmes : /ʃ/, /a/, /to/"},{"id":"b","label":"4 phonèmes : /ʃ/, /a/, /t/, /o/"},{"id":"c","label":"7 phonèmes, un par lettre"},{"id":"d","label":"2 phonèmes : /ʃa/ et /to/"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le mot « château » comporte 4 phonèmes : /ʃ/ (son « ch »), /a/ (son « â »), /t/ (son « t »), /o/ (son « eau »). Un PHONÈME est la plus petite unité SONORE de la langue. Le mot « château » s''écrit avec 7 lettres (c-h-â-t-e-a-u) mais certaines lettres se combinent pour former un seul phonème (digramme « ch » = /ʃ/, trigramme « eau » = /o/). La distinction nombre de lettres / nombre de phonèmes est fondamentale pour enseigner le code et analyser les erreurs d''encodage des élèves au CP.',
  'Compter les lettres au lieu des sons. C''est l''erreur la plus fréquente : « château » a 7 lettres mais seulement 4 phonèmes. L''opacité de l''orthographe française (1 graphème peut représenter plusieurs lettres) est précisément ce qui rend le code difficile à apprendre.',
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
  'fc020000-0000-0000-0000-000000000003',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Intermediaire',
  'qcm',
  'Un élève de CP écrit « sato » pour « château ». Quelle analyse didactique est la plus pertinente ?',
  NULL,
  '[{"id":"a","label":"L''élève ne sait pas lire et doit recommencer depuis le début de l''apprentissage"},{"id":"b","label":"L''élève encode phonétiquement le mot : il transcrit les phonèmes qu''il entend, mais n''a pas encore mémorisé les graphèmes « ch » et « eau »"},{"id":"c","label":"L''élève a un trouble dyslexique car il inverse les sons"},{"id":"d","label":"L''élève n''écoute pas correctement la prononciation"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''analyse b est la plus pertinente. L''élève manifeste une stratégie d''encodage PHONÉTIQUE cohérente : il transcrit les phonèmes qu''il perçoit avec les graphèmes qu''il connaît (/s/ → s, /a/ → a, /t/ → t, /o/ → o). Il n''a pas encore mémorisé que le phonème /ʃ/ s''écrit « ch » et que le phonème /o/ peut s''écrire « eau ». C''est une erreur attendue à ce stade d''apprentissage, révélatrice d''une bonne maîtrise phonologique mais d''une connaissance partielle des CGP complexes. La remédiation cible l''enseignement des graphèmes digrammes et trigrammes, pas un retour à zéro.',
  'Diagnostiquer immédiatement un trouble dyslexique à partir d''une seule production d''élève. Les erreurs phonétiques de ce type sont NORMALES et ATTENDUES au CP. Un diagnostic de dyslexie nécessite une évaluation multidimensionnelle, plurielle dans le temps, réalisée par des spécialistes (orthophoniste, psychologue scolaire).',
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
  'fc020000-0000-0000-0000-000000000004',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Intermediaire',
  'qcm',
  'Parmi les propositions suivantes, laquelle illustre correctement un graphème POLYVALENT du français ?',
  NULL,
  '[{"id":"a","label":"Le graphème « a » correspond toujours et uniquement au phonème /a/"},{"id":"b","label":"Le graphème « s » peut correspondre au phonème /s/ (« sac ») ou au phonème /z/ (« maison »)"},{"id":"c","label":"Le graphème « ch » correspond toujours au phonème /ʃ/"},{"id":"d","label":"Le graphème « ou » correspond toujours au phonème /u/"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le graphème « s » est polyvalent : il correspond à /s/ en début de mot ou après une consonne (sac, penser), mais à /z/ entre deux voyelles (maison, rose, poison). Il est également muet dans certains mots (bras, gros, pas). Un graphème POLYVALENT est un graphème qui correspond à plusieurs phonèmes selon son contexte. C''est l''une des difficultés majeures du code français : l''élève doit apprendre non seulement les CGP de base, mais aussi les règles contextuelles qui déterminent la valeur d''un graphème polyvalent (s, c, g, x… sont tous polyvalents).',
  'Croire que tous les graphèmes du français sont univoques (1 graphème = 1 phonème). C''est le cas pour peu de graphèmes. La polyvalence des graphèmes est précisément ce qui rend le français une langue à orthographe « opaque » (comparée à des langues plus régulières comme l''espagnol ou le finnois).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc020000-0000-0000-0000-000000000005',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Intermediaire',
  'vrai_faux',
  'L''enseignement explicite et systématique des CGP (méthode phonique/syllabique) est recommandé par Éduscol pour l''apprentissage de la lecture au CP.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Les textes officiels Éduscol (guide de lecture 2018, guide CP 2019) et les travaux en sciences cognitives (Dehaene, « Apprendre à lire », 2007) convergent vers l''enseignement explicite, systématique et progressif du code phonème-graphème. Cet enseignement part des phonèmes les plus fréquents et les plus réguliers, progresse vers les graphèmes complexes, et articule décodage (lire) et encodage (écrire) simultanément. La méthode globale (mémorisation de mots entiers sans apprentissage du code) a été abandonnée par les programmes depuis les années 2000.',
  'Penser que les méthodes syllabiques sont une innovation récente. En réalité, l''enseignement du code a toujours existé. Ce qui a évolué, c''est la formalisation des recommandations officielles et l''intégration des apports des neurosciences de la lecture.',
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
  'fc020000-0000-0000-0000-000000000006',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Avance',
  'qcm',
  'Dans le modèle à deux voies de la lecture (modèle de Coltheart), la voie phonologique (ou voie d''assemblage) est sollicitée principalement pour :',
  NULL,
  '[{"id":"a","label":"Lire des mots déjà connus, mémorisés dans le lexique mental"},{"id":"b","label":"Lire des mots nouveaux ou des pseudo-mots (non-mots), en convertissant les graphèmes en phonèmes"},{"id":"c","label":"Comprendre le sens global d''un texte"},{"id":"d","label":"Reconnaître les mots irréguliers comme 'monsieur' ou 'femme'"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La voie phonologique (assemblage) est la voie ANALYTIQUE : l''élève décompose le mot en graphèmes, convertit chaque graphème en phonème, puis assemble les phonèmes pour obtenir la prononciation. Elle est indispensable pour lire des mots jamais rencontrés ou des pseudo-mots (ex. « trulipon »). La voie orthographique (adressage) est la voie DIRECTE : le mot entier est reconnu globalement, comme une image, après mémorisation dans le lexique mental. Les bons lecteurs utilisent les deux voies selon le contexte ; les dyslexiques ont souvent un déficit de la voie phonologique. L''enseignement du code développe prioritairement la voie phonologique au début du CP.',
  'Confondre voie phonologique et voie directe. Un piège classique : croire que les mots irréguliers (« femme », « monsieur ») se lisent par voie phonologique. Non : ces mots doivent être mémorisés globalement par voie directe, précisément parce que leur prononciation ne peut pas être déduite des CGP habituelles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc020000-0000-0000-0000-000000000007',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Intermediaire',
  'reponse_courte',
  'Quel est le terme technique qui désigne le processus par lequel un lecteur transcrit des phonèmes en graphèmes pour écrire un mot ? (Opposé au décodage)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["encodage","l''encodage","l''encodage","encodage graphémique","transcription phonème-graphème"]}'::jsonb,
  'L''ENCODAGE (ou transcription graphémique) désigne la conversion des phonèmes en graphèmes lors de la production écrite. C''est la compétence mobilisée quand l''élève écrit sous la dictée ou produit un texte. Le décodage (ou déchiffrage) est l''opération inverse : convertir des graphèmes en phonèmes pour lire. L''enseignement du code au CP travaille toujours les deux opérations conjointement : à chaque nouvelle CGP apprise, l''élève s''entraîne à décoder (lire des syllabes et des mots) ET à encoder (écrire ces syllabes et mots sous la dictée).',
  'Confondre encodage et décodage. L''encodage = écrire (phonème → graphème). Le décodage = lire (graphème → phonème). Cette distinction est importante pour l''analyse des erreurs d''élèves.',
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
  'fc020000-0000-0000-0000-000000000008',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Avance',
  'qcm',
  'Dans une progression CGP au CP, parmi les graphèmes suivants, lequel devrait généralement être enseigné EN DERNIER ?',
  NULL,
  '[{"id":"a","label":"Le graphème « a » (comme dans « papa »)"},{"id":"b","label":"Le graphème « i » (comme dans « ami »)"},{"id":"c","label":"Le graphème « oi » (comme dans « roi »)"},{"id":"d","label":"Le graphème « gn » (comme dans « agneau »)"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'Le graphème « gn » (phonème /ɲ/) est l''un des graphèmes les moins fréquents du français et le plus difficile à identifier et prononcer pour des débutants. Les progressions CGP efficaces commencent par les graphèmes les plus fréquents et les plus réguliers (a, i, o, u, l, m, r, s…) avant d''aborder les graphèmes rares ou complexes (gn, ill, oin, ail…). « a » et « i » sont parmi les premiers enseignés car ils sont fréquents et univoques. « oi » est un digramme courant (/wa/) qui vient dans la deuxième partie du CP. « gn » figure généralement dans les dernières semaines du programme CGP du CP.',
  'Classer les graphèmes par complexité visuelle plutôt que par fréquence et régularité. Ce qui compte pédagogiquement, c''est la fréquence (le graphème apparaît souvent dans les textes → permet de lire plus de mots rapidement) et la régularité (sa valeur phonique est constante → évite les confusions).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc020000-0000-0000-0000-000000000009',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Avance',
  'vrai_faux',
  'Les mots irréguliers (comme « monsieur », « femme », « faon ») doivent être mémorisés globalement car ils ne peuvent pas être décodés par les règles CGP habituelles.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Les mots irréguliers (ou « mots outils » à orthographe exceptionnelle) ne peuvent pas être décodés de façon fiable par les règles CGP : « femme » se prononce /fam/ et non /fɛm/, « monsieur » se prononce /məsjø/ et non /mɔ̃sjœʁ/. Ces mots doivent être mémorisés globalement, par voie orthographique directe (adressage). Les méthodes de lecture modernes les désignent comme « mots-outils » ou « mots photographiés » et recommandent de les enseigner explicitement en les faisant mémoriser par des activités répétées (étiquettes, jeux de reconnaissance, écriture). Ils constituent une liste limitée mais indispensable à maîtriser au CP-CE1.',
  'Penser que tous les mots peuvent être lus uniquement par décodage phonémique. Si la voie phonologique est fondamentale, le français comporte des irrégularités qui nécessitent une mémorisation directe. Un enseignement exclusivement « phonique » sans travail sur les mots irréguliers est incomplet.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc020000-0000-0000-0000-000000000010',
  'Francais', 'didactique_francais', 'graphophonologie_cgp',
  'Graphophonologie et CGP', 'Avance',
  'qcm',
  'Un enseignant de CP constate qu''un élève lit « la maison » en prononçant /la mɛzɔ̃/ (maison avec /ɛ/ et nasalisation incorrecte). Quelle CGP l''élève n''a pas encore maîtrisée ?',
  NULL,
  '[{"id":"a","label":"La CGP du graphème « m » → /m/"},{"id":"b","label":"La CGP du graphème « ai » → /ɛ/ (correct) et la nasalisation du « on » → /ɔ̃/ (incorrect — c''est un problème de liaison)"},{"id":"c","label":"La CGP du graphème « on » → /ɔ̃/ qu''il lit /ɔ̃/ au lieu de /ɔ̃/"},{"id":"d","label":"La CGP du graphème « ai » → /ɛ/ et la règle contextuelle du « s » intervocalique → /z/ dans « maison »"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'L''analyse d est la plus complète et pertinente. L''élève prononce /mɛzɔ̃/ ce qui suggère : (1) il maîtrise « ai » → /ɛ/ (correct), (2) il maîtrise « on » → /ɔ̃/ (correct), mais (3) il prononce /mɛzɔ̃/ alors que « maison » se prononce /mɛzɔ̃/ — en réalité la question est sur la graphie. En lisant « la maison », si l''erreur porte sur le « s » intervocalique (prononcé /s/ au lieu de /z/), l''élève n''a pas encore intégré la règle contextuelle : le graphème « s » entre deux voyelles correspond à /z/ et non à /s/. Cette règle contextuelle est enseignée plus tardivement que les CGP de base.',
  'Négliger les règles CONTEXTUELLES des CGP, qui ne sont pas des correspondances fixes mais dépendent de l''environnement du graphème dans le mot. Le « s » intervocalique /z/ est l''exemple le plus classique, mais d''autres règles contextuelles existent (c/ç, g/ge, etc.).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
