-- Migration: 10 exercices — Enseignement de la lecture au cycle 2
-- Série : did_apprentissage_lecture_cycle2 (Français, didactique_francais)
-- Méthodes, CGP, décodage, fluence, compréhension — enseignement au CP/CE1
-- UUID prefix: b9200000

-- Q1 — QCM — Conscience phonologique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'qcm',
  'Quelle définition correspond le mieux à la conscience phonologique telle qu''elle est utilisée dans les programmes et les ressources Éduscol pour le cycle 2 ?',
  NULL,
  '[{"id":"a","label":"La capacité à prononcer correctement les sons de la langue française (accent, articulation)"},{"id":"b","label":"La compétence métalinguistique permettant d''identifier et de manipuler les unités sonores de la langue (phonèmes, syllabes, rimes), indépendamment du sens"},{"id":"c","label":"La connaissance de l''alphabet et des lettres de l''écrit"},{"id":"d","label":"La capacité à lire des syllabes simples de type consonne-voyelle"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La conscience phonologique est une compétence métalinguistique : elle porte sur la forme sonore de la langue, et non sur le sens. Elle inclut la conscience syllabique (segmenter « ma-ma-n »), la conscience des rimes (« chat » et « rat » riment) et la conscience phonémique (identifier le phonème /p/ dans « papa »). Les programmes de cycle 2 (2016, ajustés en 2018) et les ressources Éduscol insistent sur son enseignement explicite dès la grande section de maternelle et son renforcement au CP, car elle est un prédicteur fort de la réussite en lecture. Elle se distingue de la phonétique articulatoire (production des sons) et de la connaissance des lettres (code graphique).',
  'Les candidats confondent souvent conscience phonologique et connaissance des lettres (ou "correspondances graphème-phonème"). La conscience phonologique est une compétence orale et auditive qui peut être travaillée avant même l''introduction de l''écrit.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Méthode syllabique et CGP
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans une approche syllabique de l''enseignement de la lecture, les correspondances graphème-phonème (CGP) sont enseignées avant d''être combinées en syllabes, puis en mots.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La méthode syllabique (ou phonémique-graphémique) suit une progression explicite : on enseigne d''abord les correspondances graphème-phonème (par exemple : la lettre « a » correspond au phonème /a/), puis on apprend à combiner ces correspondances pour former des syllabes (« m » + « a » = /ma/), et enfin à assembler les syllabes pour lire des mots entiers. Les programmes de cycle 2 (2016/2018) et le rapport Longuet (2022, Sénat) préconisent cette approche systématique et explicite, qui s''appuie sur les données de la recherche en sciences cognitives. Cette démarche descendante du phonème vers le mot s''oppose à la méthode globale qui part du mot ou du texte entier.',
  'Certains candidats inversent la logique et pensent que la méthode syllabique part des mots pour remonter aux sons. C''est l''inverse : elle part des unités minimales (CGP) pour construire progressivement des mots.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Le décodage en lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'qcm',
  'Qu''est-ce que le décodage en lecture, tel que défini dans les ressources officielles pour le cycle 2 ?',
  NULL,
  '[{"id":"a","label":"La reconnaissance visuelle globale d''un mot mémorisé comme une image"},{"id":"b","label":"Le processus d''assemblage des correspondances graphème-phonème pour identifier des mots écrits nouveaux, y compris des pseudo-mots"},{"id":"c","label":"La compréhension du sens d''un texte à partir d''indices contextuels"},{"id":"d","label":"La lecture silencieuse d''un texte avec aide du dictionnaire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le décodage désigne la mise en correspondance des graphèmes (unités graphiques) avec leurs phonèmes respectifs et leur assemblage pour produire la forme orale d''un mot. C''est un processus dit "alphabétique" ou "phonologique" qui permet au lecteur débutant d''identifier des mots qu''il n''a jamais vus — y compris des pseudo-mots comme "valtou" ou "chabifer". Les programmes de cycle 2 et les travaux de Liliane Sprenger-Charolles insistent sur son enseignement systématique au CP. Le décodage s''oppose à la reconnaissance orthographique (voie directe), qui n''est efficace qu''après une exposition répétée au mot. Un bon lecteur débutant doit d''abord maîtriser la voie indirecte (décodage) avant que la voie directe s''automatise.',
  'La confusion la plus fréquente est d''assimiler le décodage à la "lecture par coeur" ou à la reconnaissance visuelle globale (méthode globale). Or le décodage implique précisément de traiter les correspondances lettre-son, non de mémoriser la forme visuelle du mot.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Terme officiel Éduscol pour "correspondances entre lettres et sons"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'reponse_courte',
  'Quel est le terme officiel utilisé par Éduscol et dans les programmes de cycle 2 pour désigner les "correspondances entre lettres (ou groupes de lettres) et sons" ?',
  NULL,
  NULL,
  '{"mode":"exact_match","acceptableAnswers":["CGP","correspondances graphophonémiques","correspondances graphèmes-phonèmes","correspondances grapheme-phoneme","correspondances graphèmes phonèmes"]}'::jsonb,
  'Le terme officiel est CGP (correspondances graphophonémiques) ou, dans sa forme développée, « correspondances graphèmes-phonèmes ». Ce sigle est systématiquement utilisé dans les ressources Éduscol, les programmes de cycle 2 (2016/2018) et les documents d''accompagnement. Un graphème est la plus petite unité graphique correspondant à un phonème : il peut s''agir d''une lettre simple (« a », « b »), d''un digramme (« ch », « ou ») ou d''un trigramme (« eau »). L''enseignement des CGP est au cœur de toute approche systématique de la lecture au CP : les programmes préconisent une progression explicite et rigoureuse de leur acquisition, du plus simple au plus complexe.',
  'Beaucoup de candidats utilisent l''expression "correspondances lettres-sons" qui est courante mais non officielle. Le terme Éduscol est CGP ou "correspondances graphèmes-phonèmes", qui est plus précis car il inclut les groupes de lettres (digrammes, trigrammes), pas seulement les lettres isolées.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — La fluence de lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'qcm',
  'Quelle définition correspond le mieux à la fluence de lecture telle qu''elle est définie dans les ressources Éduscol et les protocoles d''évaluation officiels (CP, CE1) ?',
  NULL,
  '[{"id":"a","label":"La capacité à lire en silence sans aide de l''enseignant"},{"id":"b","label":"La vitesse brute de lecture mesurée en mots par minute, sans tenir compte des erreurs"},{"id":"c","label":"La capacité à lire un texte de manière précise, rapide et expressive (avec prosodie adaptée)"},{"id":"d","label":"La compréhension implicite d''un texte lu à haute voix par l''enseignant"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La fluence de lecture est définie officiellement comme la capacité à lire un texte de façon précise (sans erreurs de décodage), rapide (avec automatisation des traitements) et expressive, c''est-à-dire avec une prosodie adaptée (groupes de souffle, intonation, respect de la ponctuation). Ces trois dimensions — précision, vitesse, expressivité — sont indissociables. Les évaluations nationales de CP et CE1 (depuis 2018) incluent un item de fluence. Les travaux de l''Observatoire national de la lecture et les ressources Éduscol insistent sur le fait que la fluence est un pont entre le décodage et la compréhension : un lecteur fluent libère de la mémoire de travail pour se consacrer à la compréhension.',
  'Les candidats réduisent souvent la fluence à la vitesse de lecture (nombre de mots à la minute). C''est une erreur : la vitesse sans précision ni expressivité ne constitue pas la fluence. Les trois composantes sont nécessaires.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Enseignement de la compréhension dès le CP (voie orale)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : selon les programmes de cycle 2, la compréhension en lecture peut être enseignée dès le CP, y compris sur des textes que les élèves ne décodent pas encore eux-mêmes, notamment par la lecture à voix haute de l''enseignant.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Les programmes de cycle 2 distinguent explicitement deux modalités complémentaires : la compréhension de textes lus par l''enseignant (qui permet de travailler sur des textes plus complexes que ce que les élèves décodent) et la compréhension de textes lus en autonomie. Dès le CP, l''enseignant lit des œuvres littéraires, des albums, des textes documentaires à voix haute et guide les élèves dans la construction du sens (reformulation, questionnement, inférences, lexique). Cette modalité est essentielle car le décodage monopolise des ressources cognitives au début du CP : si l''on attend que l''élève sache tout décoder pour travailler la compréhension, on retarde inutilement son développement de lecteur.',
  'Certains candidats pensent que la compréhension ne peut se travailler qu''une fois le décodage automatisé. C''est une erreur : les programmes prévoient explicitement un travail de compréhension à l''oral et sur textes lus par l''enseignant tout au long du cycle 2.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Modèle "simple view of reading" (Gough & Tunmer)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'reponse_courte',
  'Citez les deux composantes fondamentales de la lecture selon le modèle de Gough et Tunmer (1986), dit "simple view of reading" (SVR), régulièrement cité dans les ressources Éduscol et le rapport Longuet.',
  NULL,
  NULL,
  '{"mode":"exact_match","acceptableAnswers":["décodage et compréhension du langage","décodage et compréhension","décodage et langage oral","reconnaissance des mots et compréhension du langage","identification des mots et compréhension du langage"]}'::jsonb,
  'Le modèle de la "simple view of reading" (SVR) de Gough et Tunmer (1986) formule la lecture comme le produit de deux composantes : L = D × C, où L est la compréhension en lecture, D est le décodage (identification/reconnaissance des mots écrits) et C est la compréhension du langage (capacité à comprendre un message oral ou écrit, liée au vocabulaire, aux inférences et aux connaissances sur le monde). Si l''une des deux composantes est nulle, la lecture est impossible. Ce modèle, largement validé empiriquement, est cité dans le rapport Longuet (2022) et les ressources Éduscol pour justifier un enseignement équilibré qui ne néglige ni le décodage ni la compréhension du langage.',
  'Les candidats citent souvent "lecture et écriture" ou "décodage et encodage". Ce sont des confusions : les deux composantes du modèle SVR portent toutes deux sur la compréhension — l''une par le décodage, l''autre par la maîtrise du langage oral/lexical.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Progression des CGP au CP
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'qcm',
  'Dans la progression des correspondances graphèmes-phonèmes (CGP) au CP, quel principe guide généralement l''ordre d''introduction des graphèmes, selon les recommandations officielles et les manuels validés ?',
  NULL,
  '[{"id":"a","label":"On commence par les graphèmes complexes (eau, oin, tion) pour mobiliser l''attention des élèves"},{"id":"b","label":"On commence par les voyelles simples et les consonnes fréquentes, puis on introduit progressivement les graphèmes complexes (digrammes, trigrammes)"},{"id":"c","label":"L''ordre d''introduction des CGP est laissé entièrement au libre choix de l''enseignant sans recommandation officielle"},{"id":"d","label":"On introduit simultanément toutes les voyelles et toutes les consonnes dès la première semaine de CP"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les ressources Éduscol et les manuels de lecture validés préconisent une progression explicite et structurée : on commence par les voyelles simples (a, i, o, u, e) et les consonnes fréquentes à phonème régulier (l, r, m, n, p, t...), car elles permettent rapidement de former des syllabes et des mots simples. On introduit ensuite les digrammes (ou, on, an, in, ch, ou...) puis les graphèmes complexes ou ambigus (tion, oin, gn, x...). Ce principe de "du simple au complexe" est fondé sur la fréquence des graphèmes dans la langue et sur la logique cognitive d''apprentissage. Le rapport de l''Inspection générale et les évaluations nationales confirment que les élèves bénéficiant d''une progression explicite progressent plus vite.',
  'Certains candidats pensent qu''il n''y a pas de recommandation officielle sur l''ordre des CGP. C''est inexact : Éduscol publie des ressources d''accompagnement et des "repères de progressivité" qui balisent l''introduction des graphèmes au CP.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Méthode globale et programmes officiels
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : la méthode globale, fondée sur la reconnaissance visuelle de mots entiers sans enseignement des correspondances graphème-phonème, est recommandée par les programmes officiels du cycle 2 (2016/2018) comme approche principale de l''enseignement de la lecture.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Les programmes de cycle 2 (2016, ajustés en 2018) prennent explicitement position contre la méthode globale pure : ils préconisent un enseignement systématique et explicite des correspondances graphème-phonème, conformément aux données de la recherche en psychologie cognitive et neurologie de la lecture (travaux de Stanislas Dehaene, "Les neurones de la lecture", 2007). La circulaire de rentrée 2018 et les ressources Éduscol enfoncent le clou : l''approche syllabique (ou phonémique) est la seule approche validée scientifiquement pour l''enseignement initial de la lecture. Le rapport Longuet (2022) déplore que des pratiques inspirées de la méthode globale persistent dans certaines classes et recommande une formation renforcée des enseignants.',
  'Beaucoup de candidats pensent que les programmes restent neutres sur la méthode ou autorisent la méthode globale. C''est inexact depuis 2016/2018 : les programmes prennent clairement position en faveur de l''approche phonémique/syllabique.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Définition du graphème
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'b9200000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture_cycle2',
  'Enseignement de la lecture au cycle 2',
  'Standard',
  'reponse_courte',
  'Donnez la définition précise d''un graphème, telle qu''elle est utilisée dans les ressources Éduscol et les programmes de cycle 2.',
  NULL,
  NULL,
  '{"mode":"exact_match","acceptableAnswers":["la plus petite unité graphique correspondant à un phonème","unité graphique correspondant à un phonème","lettre ou groupe de lettres correspondant à un phonème","la plus petite unité de l''écrit qui correspond à un phonème"]}'::jsonb,
  'Un graphème est la plus petite unité graphique (ou unité de l''écrit) qui correspond à un phonème. Il peut s''agir d''une lettre simple (« a » → /a/, « b » → /b/), d''un digramme — groupe de deux lettres (« ch » → /ʃ/, « ou » → /u/, « an » → /ã/) — ou d''un trigramme — groupe de trois lettres (« eau » → /o/, « oin » → /wɛ̃/). Cette définition est fondamentale pour comprendre les CGP (correspondances graphophonémiques) : un enseignant qui maîtrise la notion de graphème peut expliquer à ses élèves pourquoi "chat" s''analyse en trois graphèmes (ch-a-t) et non en quatre lettres. Les ressources Éduscol "Pour enseigner la lecture et l''écriture au CP" (2018) s''appuient sur cette définition pour structurer les progressions.',
  'La confusion la plus fréquente est d''identifier graphème et lettre. Or un graphème peut être constitué de plusieurs lettres (digramme ou trigramme). "Ch" est un graphème unique, pas deux graphèmes distincts.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
