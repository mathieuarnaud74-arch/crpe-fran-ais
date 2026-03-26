-- Migration: 10 exercices — Pronoms relatifs et subordonnées relatives
-- Série : gram_pronoms_relatifs (Français, grammaire)
-- Qui, que, dont, où, lequel/laquelle/auquel/duquel — formes et fonctions
-- UUID prefix: f3640000

-- Q1 — QCM — Choisir le bon pronom relatif : "que" COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'qcm',
  'Choisissez le pronom relatif correct pour compléter la phrase : « Le livre ___ j''ai lu est passionnant. »',
  NULL,
  '[{"id":"a","label":"qui"},{"id":"b","label":"que"},{"id":"c","label":"dont"},{"id":"d","label":"où"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse correcte est « que ». Dans cette phrase, le pronom relatif reprend l''antécédent « le livre » et remplit la fonction de complément d''objet direct (COD) du verbe « lire » dans la subordonnée relative : « j''ai lu [quoi ?] → le livre ». On choisit « que » (ou « qu'' » devant voyelle) lorsque le pronom relatif est COD du verbe subordonné. « Qui » s''emploie lorsque le pronom est sujet de la subordonnée (« Le livre qui m''a plu »). « Dont » s''emploie lorsque la construction du verbe ou du nom requiert la préposition « de » (« Le livre dont je me souviens »). « Où » s''emploie pour un complément de lieu ou de temps. La distinction entre « qui » (sujet) et « que » (COD) est fondamentale et régulièrement évaluée au CRPE.',
  'Choisir « qui » au lieu de « que », en confondant la fonction sujet avec la fonction COD. Le test décisif est de vérifier si le verbe de la subordonnée a déjà son sujet exprimé : dans « j''ai lu », le sujet est « j'' » ; il manque le COD — c''est donc « que » qu''il faut employer.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — "Dont" peut remplacer "de qui" et "duquel"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : le pronom relatif « dont » peut remplacer « de qui » (pour une personne) et « duquel » (pour une chose) lorsque l''élément relié est un complément introduit par la préposition « de ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Dont » est le pronom relatif invariable qui reprend un complément introduit par « de », que l''antécédent soit une personne (« de qui » → « dont ») ou une chose (« duquel / de laquelle » → « dont »). Exemples : « L''auteur dont j''apprécie l''œuvre » (= de qui j''apprécie l''œuvre) ; « Le sujet dont il parle » (= duquel il parle). « Dont » peut introduire un complément du verbe (se souvenir de, parler de, avoir besoin de), un complément du nom (la maison dont la façade est blanche) ou un complément de l''adjectif (fier de → dont il est fier). Cette polyvalence en fait l''un des pronoms relatifs les plus importants — et les plus piégeux — de la grammaire française. Les programmes Éduscol placent son étude au cœur du cycle 3.',
  'Confondre « dont » avec « duquel » et croire qu''ils ne sont pas interchangeables dans tous les contextes. Si « dont » s''emploie lorsque le complément est directement introduit par « de », « duquel/de laquelle/desquels/desquelles » est obligatoire après une préposition composée (« à côté duquel », « au fond de laquelle »), où « dont » est impossible.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Fonction de "qui" sujet dans la subordonnée relative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'qcm',
  'Quelle est la fonction du pronom relatif « qui » dans la phrase : « L''élève qui travaille réussit. » ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet direct du verbe « réussit »"},{"id":"b","label":"Sujet du verbe « travaille » dans la proposition subordonnée relative"},{"id":"c","label":"Complément du nom « élève »"},{"id":"d","label":"Complément circonstanciel de manière"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans la phrase « L''élève qui travaille réussit », la proposition subordonnée relative est « qui travaille » ; elle est épithète de l''antécédent « l''élève ». Au sein de cette subordonnée, « qui » est sujet du verbe « travaille » : c''est lui qui accomplit l''action de travailler. Le pronom relatif « qui » s''emploie chaque fois qu''il remplit la fonction de sujet dans la proposition relative, que l''antécédent soit une personne ou une chose (ex. : « La règle qui s''applique »). On l''opposera à « que », COD, et à « dont », complément introduit par « de ». L''identification de la fonction du pronom relatif est une compétence explicitement évaluée dans les épreuves de grammaire du CRPE.',
  'Confondre la fonction du pronom relatif avec la fonction de la proposition relative entière. La proposition relative « qui travaille » est épithète de « l''élève », mais à l''intérieur de cette subordonnée, « qui » est sujet de « travaille ». Il faut distinguer la fonction de la proposition (dans la principale) et la fonction du pronom relatif (dans la subordonnée).',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Compléter avec "dont" (complément de provenance, "venir de")
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'reponse_courte',
  'Complétez la phrase avec le pronom relatif qui convient : « La ville ___ je viens s''appelle Lyon. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["dont","d''où","d''où (ou dont)","dont (d''où possible)"]}'::jsonb,
  'La réponse attendue est « dont ». Le verbe « venir » se construit avec la préposition « de » pour exprimer la provenance (« je viens de Lyon »). Lorsque ce complément est repris par un pronom relatif, on emploie « dont », qui est l''équivalent de « de + lequel/qui ». La phrase complète est : « La ville dont je viens s''appelle Lyon. » On peut également rencontrer « d''où » dans cet emploi de provenance (registre soutenu ou littéraire), mais « dont » est la forme standard enseignée en grammaire scolaire. Ce type de question teste la capacité à identifier que le verbe de la subordonnée appelle un complément en « de », ce qui impose le choix de « dont » plutôt que « qui » ou « que ».',
  'Choisir « où » au lieu de « dont », en raisonnant sur le sens de lieu (Lyon est une ville, un lieu). « Où » s''emploie pour les compléments de lieu ou de temps sans préposition particulière (« La ville où je vis »), mais ici la construction verbale « venir de » impose la préposition « de », ce qui rend « dont » obligatoire.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Pronom relatif "où" pour lieu et temps
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'qcm',
  'Quel pronom relatif s''utilise pour reprendre un antécédent de lieu ou de temps ?',
  NULL,
  '[{"id":"a","label":"que"},{"id":"b","label":"qui"},{"id":"c","label":"dont"},{"id":"d","label":"où"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Où » est le pronom relatif qui reprend des antécédents de lieu ou de temps. Exemples de lieu : « La maison où j''habite » (= dans laquelle j''habite) ; « Le pays où il est né ». Exemples de temps : « Le jour où il est arrivé » ; « L''époque où les choses étaient différentes ». « Où » permet d''éviter les tournures lourdes du type « dans lequel », « au moment duquel », etc. Son double emploi spatial et temporel est une caractéristique importante : un même pronom couvre deux catégories sémantiques d''antécédents. La grammaire Éduscol (Grammaire du français, 2020) classe « où » parmi les pronoms relatifs simples aux côtés de « qui », « que », « dont » et « quoi ».',
  'Utiliser « que » ou « qui » à la place de « où » pour un complément de lieu ou de temps, en oubliant l''existence de ce pronom spécialisé. On écrira *« La ville que j''habite » (incorrect pour un complément de lieu sans objet direct) au lieu de « La ville où j''habite ». « Que » est COD ; « où » est complément circonstanciel de lieu ou de temps.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — On ne peut pas remplacer "que" par "lequel" à la place de COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : on peut toujours remplacer le pronom relatif « que » (COD) par « lequel » dans une proposition relative.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « Lequel / laquelle / lesquels / lesquelles » est un pronom relatif composé qui s''emploie obligatoirement après une préposition (« avec lequel », « sur laquelle », « pour lesquels »), ou parfois pour lever une ambiguïté de référence. Il ne se substitue pas à « que » COD : on ne peut pas dire *« Le livre lequel j''ai lu » à la place de « Le livre que j''ai lu ». La distinction est nette : « que » est le pronom relatif COD sans préposition ; « lequel » est le pronom relatif utilisé après préposition ou dans des constructions spécifiques. Employer « lequel » à la place de « que » COD est une faute grammaticale. Cette confusion est fréquente chez les candidats qui cherchent à valoriser une forme perçue comme plus « soutenue ».',
  'Croire que « lequel » est une variante stylistique plus élégante de « que » COD. En réalité, « lequel » sans préposition en position de COD est agrammatical en français contemporain standard. La seule substitution correcte de « que » par des formes de « lequel » se fait après préposition : « à qui / auquel », « de qui / dont / duquel », « avec qui / avec lequel ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Fusionner deux phrases avec un pronom relatif (qui sujet)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'reponse_courte',
  'Transformez les deux phrases suivantes en une seule phrase à l''aide d''un pronom relatif : « J''ai rencontré une dame. Cette dame m''a aidé. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["J''ai rencontré une dame qui m''a aidé.","J''ai rencontré une dame qui m''a aidé","j''ai rencontré une dame qui m''a aidé","une dame qui m''a aidé","qui m''a aidé"]}'::jsonb,
  'La phrase attendue est : « J''ai rencontré une dame qui m''a aidé. » Pour fusionner les deux phrases, on repère l''élément commun (« une dame » / « cette dame »), on choisit la phrase qui deviendra la subordonnée relative, et on remplace le groupe nominal répété par le pronom relatif approprié. Ici, « cette dame » est le sujet du verbe « a aidé » dans la deuxième phrase : on utilise donc « qui », pronom relatif sujet. La proposition « qui m''a aidé » devient une subordonnée relative épithète de « une dame ». Cette opération de manipulation syntaxique — réduire deux phrases simples en une phrase complexe avec relative — est une compétence clé des programmes de cycle 3 et une technique souvent demandée dans les épreuves de rédaction et de grammaire du CRPE.',
  'Utiliser « que » au lieu de « qui » en pensant que le pronom reprend un COD. Il faut analyser la fonction du groupe nominal repris dans la deuxième phrase : « cette dame » est sujet de « a aidé » → pronom relatif sujet → « qui ». Si l''on avait dit « Cette dame, je l''ai vue », alors « que » (COD) aurait été correct dans la fusion.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Fonction de "avec lequel" (complément circonstanciel de moyen)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'qcm',
  'Dans la phrase « L''outil avec lequel il travaille est neuf », quelle est la fonction du groupe « avec lequel » dans la proposition subordonnée relative ?',
  NULL,
  '[{"id":"a","label":"Sujet du verbe « travaille »"},{"id":"b","label":"Complément d''objet direct du verbe « travaille »"},{"id":"c","label":"Complément circonstanciel de moyen du verbe « travaille »"},{"id":"d","label":"Attribut du sujet « outil »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans la subordonnée relative « avec lequel il travaille », le groupe « avec lequel » reprend l''antécédent « l''outil » et remplit la fonction de complément circonstanciel de moyen du verbe « travailler » : on travaille au moyen de cet outil (travailler avec quelque chose = employer quelque chose comme instrument). La préposition « avec » indique ici le moyen ou l''instrument. L''emploi de « lequel » (pronom relatif composé) est obligatoire après une préposition (ici « avec »). On ne pourrait pas dire *« l''outil que il travaille » ni *« l''outil qui travaille avec » : la préposition doit être antéposée au pronom relatif dans la proposition relative. Les pronoms relatifs composés (lequel, laquelle, auquel, duquel, etc.) s''accordent en genre et en nombre avec leur antécédent.',
  'Identifier « avec lequel » comme COD en oubliant que la préposition « avec » marque le moyen, non l''objet direct. Le COD se construit sans préposition ; tout complément prépositionnel est soit COI (avec « à » ou « de »), soit complément circonstanciel (avec d''autres prépositions comme « avec », « par », « pour »).',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — La relative n'est pas toujours épithète (peut être apposée ou attribut)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : la proposition subordonnée relative est toujours épithète de son antécédent.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Si la proposition subordonnée relative est le plus souvent épithète de son antécédent (« Le livre que je lis est passionnant » — « que je lis » est épithète de « le livre »), elle peut aussi occuper d''autres fonctions. Elle peut être apposée à l''antécédent lorsqu''elle apporte une précision accessoire, détachée par une virgule (relative appositive ou explicative : « Lyon, qui est une grande ville, accueille de nombreux étudiants »). Elle peut également être attribut du sujet dans des constructions du type « C''est lui qui l''a fait » ou « Ce que je veux, c''est partir ». La distinction entre relative déterminative (épithète, intégrée, non détachée) et relative explicative (apposée, détachée par virgules) est fondamentale et explicitement exigée dans les programmes de cycle 3 et dans les épreuves du CRPE.',
  'Assimiler toutes les propositions relatives à des épithètes. C''est vrai dans la majorité des cas, mais la relative explicative (apposée, entre virgules) ne restreint pas la référence de l''antécédent : elle ajoute une information. La distinction déterminative / explicative change le sens de la phrase et est essentielle en analyse grammaticale.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Identifier le pronom relatif "où" (valeur de "par lequel") et son antécédent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3640000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'gram_pronoms_relatifs',
  'Pronoms relatifs et subordonnées relatives',
  'Standard',
  'reponse_courte',
  'Dans la phrase « C''est le chemin par où nous sommes passés », identifiez le pronom relatif, sa valeur (par quel groupe il pourrait être remplacé) et son antécédent.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["pronom : où, valeur : par lequel, antécédent : le chemin","où — par lequel — le chemin","où (par lequel), antécédent : chemin","pronom relatif : où ; remplace : par lequel ; antécédent : le chemin","où, par lequel, le chemin"]}'::jsonb,
  'Dans cette phrase, le pronom relatif est « où », précédé de la préposition « par » : on obtient ainsi le groupe « par où ». L''antécédent est « le chemin ». « Par où » équivaut à « par lequel » : la préposition « par » indique le moyen ou le trajet, et « où » reprend un antécédent de lieu. C''est un emploi particulier de « où » après préposition, construction admise pour certaines prépositions de lieu ou de passage (« par où », « jusqu''où »). En langue courante, on pourrait dire : « C''est le chemin par lequel nous sommes passés » — les deux formulations sont correctes. Cet emploi illustre la polyvalence de « où » au-delà du seul complément de lieu sans préposition et montre que les pronoms relatifs peuvent s''associer à des prépositions pour exprimer des nuances de sens précises.',
  'Confondre l''antécédent et croire que « par où » reprend le pronom « c'' » (ce) dans « c''est ». L''antécédent d''un pronom relatif est le groupe nominal qu''il représente et auquel la proposition relative est rattachée : ici c''est bien « le chemin », pas le pronom démonstratif « c'' ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
