-- CRPE Français — Analyse de la langue V2 (5 séries × 10 questions)
insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ============================================================
-- SÉRIE 35 — Types et formes de phrases (Intermédiaire / free)
-- ============================================================

-- Q1 — type déclaratif (qcm)
(
  '35000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Quelle est la phrase de type déclaratif ?',
  null,
  '[{"id":"a","label":"Comme ce paysage est magnifique !"},{"id":"b","label":"Le soleil se couche derrière les montagnes."},{"id":"c","label":"Ferme la fenêtre, s''il te plaît."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Une phrase déclarative énonce un fait, une opinion ou une information. Elle se termine par un point simple. La phrase b) est bien déclarative : elle affirme un fait sans exclamation, interrogation ni injonction. La phrase a) est exclamative (ton affectif renforcé, point d''exclamation) et la phrase c) est impérative (ordre donné à l''interlocuteur).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q2 — type interrogatif (qcm)
(
  '35000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Laquelle de ces phrases est de type interrogatif ?',
  null,
  '[{"id":"a","label":"Tu viendras demain."},{"id":"b","label":"Viens demain !"},{"id":"c","label":"Viendras-tu demain ?"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La phrase interrogative pose une question et se termine par un point d''interrogation. La phrase c) est interrogative : elle utilise l''inversion sujet-verbe, procédé caractéristique de l''interrogation directe. La phrase a) est déclarative et la phrase b) est impérative. On distingue l''interrogation totale (réponse oui/non) de l''interrogation partielle (introduite par un mot interrogatif).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q3 — type exclamatif (vrai_faux)
(
  '35000000-0000-0000-0000-000000000003',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La phrase « Que tu chantes bien ! » est de type exclamatif.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. La phrase exclamative exprime une émotion forte (admiration, surprise, joie, indignation). Elle peut être introduite par un mot exclamatif comme « que », « comme », « quel » et se termine toujours par un point d''exclamation. Ici, « Que tu chantes bien ! » exprime l''admiration du locuteur et présente tous les marqueurs de la phrase exclamative.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q4 — type impératif (qcm)
(
  '35000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Quel est le type de la phrase « N''oubliez pas vos affaires. » ?',
  null,
  '[{"id":"a","label":"Déclaratif"},{"id":"b","label":"Impératif"},{"id":"c","label":"Interrogatif"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase impérative (ou injonctive) exprime un ordre, un conseil, une interdiction ou une prière. Son trait formel principal est l''absence de sujet exprimé : le verbe est à l''impératif. Ici, « N''oubliez pas vos affaires » donne une injonction négative ; le sujet « vous » est sous-entendu. Même si elle se termine par un point simple, il s''agit bien d''une phrase impérative et non déclarative.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q5 — récapitulatif des 4 types (vrai_faux)
(
  '35000000-0000-0000-0000-000000000005',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Il existe exactement quatre types de phrases en français : déclaratif, interrogatif, exclamatif et impératif.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. La grammaire scolaire française distingue quatre types de phrases selon l''intention de communication du locuteur : déclaratif (informer), interrogatif (questionner), exclamatif (exprimer une émotion) et impératif (ordonner/conseiller). Chaque type possède des marques formelles spécifiques (ponctuation, mode verbal, mots introducteurs). Il ne faut pas confondre « type » et « forme » de phrase.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q6 — forme affirmative/négative (qcm)
(
  '35000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Quelle est la forme négative de la phrase « Les enfants jouent dans le jardin » ?',
  null,
  '[{"id":"a","label":"Les enfants ne jouent pas dans le jardin."},{"id":"b","label":"Les enfants jouent-ils dans le jardin ?"},{"id":"c","label":"Que les enfants jouent dans le jardin !"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La forme négative s''oppose à la forme affirmative et se construit en encadrant le verbe avec une locution négative, le plus souvent « ne…pas ». La phrase a) transforme correctement la phrase en forme négative en ajoutant « ne…pas » autour du verbe « jouent ». Les phrases b) et c) changent le type de phrase (interrogatif et exclamatif) sans transformer la forme négative. Type et forme sont deux propriétés indépendantes.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q7 — forme passive (qcm)
(
  '35000000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Laquelle de ces phrases est à la forme passive ?',
  null,
  '[{"id":"a","label":"Le jardinier taille les rosiers."},{"id":"b","label":"Les rosiers sont taillés par le jardinier."},{"id":"c","label":"Les rosiers ne sont pas taillés."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La voix passive se construit avec l''auxiliaire « être » conjugué + le participe passé du verbe ; le sujet de la phrase passive subit l''action, et l''agent (ancien sujet actif) est introduit par « par » ou « de ». La phrase b) présente bien cette structure : « les rosiers » (sujet patient), « sont taillés » (être + participe passé), « par le jardinier » (complément d''agent). La phrase a) est active et la phrase c) est négative mais reste à la voix active.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q8 — forme impersonnelle (vrai_faux)
(
  '35000000-0000-0000-0000-000000000008',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Il faut travailler régulièrement », le verbe « faut » est employé à la forme impersonnelle.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Un verbe est à la forme impersonnelle lorsque son sujet apparent est le pronom « il » qui ne représente aucun être ni aucune chose réelle : il s''agit d''un sujet grammatical vide de sens. « Falloir » est un verbe essentiellement impersonnel : il ne s''emploie qu''à la 3e personne du singulier avec le sujet apparent « il ». D''autres verbes peuvent s''employer occasionnellement à la forme impersonnelle (il neige, il arrive que…).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q9 — forme active vs passive (qcm)
(
  '35000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Quelle transformation permet de passer de la voix active à la voix passive dans « La tempête a détruit le pont » ?',
  null,
  '[{"id":"a","label":"Le pont a été détruit par la tempête."},{"id":"b","label":"Le pont détruisait la tempête."},{"id":"c","label":"La tempête n''a pas détruit le pont."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour passer de la voix active à la voix passive, le COD du verbe actif (« le pont ») devient le sujet du verbe passif ; le sujet actif (« la tempête ») devient le complément d''agent introduit par « par » ; le verbe se construit avec « être » au même temps + participe passé : « a été détruit ». La phrase a) respecte toutes ces règles. La phrase b) est grammaticalement incorrecte et la phrase c) est simplement la négation de la phrase de départ.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q10 — cumul type + forme (vrai_faux)
(
  '35000000-0000-0000-0000-000000000010',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La phrase « Ce livre n''a-t-il pas été lu par tous les élèves ? » est à la fois de type interrogatif et de forme négative et passive.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Une phrase peut cumuler un type et plusieurs formes simultanément. Ici : le type est interrogatif (inversion sujet-verbe, point d''interrogation) ; la forme est négative (« n''…pas ») et passive (« a été lu par »). Type et forme sont deux axes d''analyse indépendants qui se combinent librement. Un enseignant doit veiller à ce que les élèves distinguent bien les deux notions.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- ============================================================
-- SÉRIE 36 — Propositions subordonnées relatives (Intermédiaire / free)
-- ============================================================

-- Q1 — identification de la relative (qcm)
(
  '36000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans la phrase « Le chien que j''ai adopté est très doux », quelle est la proposition subordonnée relative ?',
  null,
  '[{"id":"a","label":"Le chien est très doux"},{"id":"b","label":"que j''ai adopté"},{"id":"c","label":"j''ai adopté est très doux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La proposition subordonnée relative est introduite par un pronom relatif (ici « que ») et complète un nom ou un pronom appelé antécédent. La relative « que j''ai adopté » est enchâssée dans la proposition principale et se rapporte à l''antécédent « le chien ». Elle remplit la fonction de complément de l''antécédent (ou épithète). La proposition principale reste « Le chien est très doux » une fois la relative extraite.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q2 — antécédent (qcm)
(
  '36000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans « Les élèves qui ont fini peuvent sortir », quel est l''antécédent du pronom relatif « qui » ?',
  null,
  '[{"id":"a","label":"qui"},{"id":"b","label":"élèves"},{"id":"c","label":"fini"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''antécédent est le nom (ou pronom) auquel se rapporte le pronom relatif et qu''il reprend. Ici, « qui » reprend « les élèves » : c''est donc « élèves » qui est l''antécédent. Le pronom relatif s''accorde en genre et en nombre avec son antécédent, ce qui est particulièrement visible avec le pronom « lequel » et ses formes. Identifier l''antécédent est la première étape de l''analyse d''une proposition relative.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q3 — fonction du pronom relatif « qui » (qcm)
(
  '36000000-0000-0000-0000-000000000003',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans « La fillette qui chante est ma cousine », quelle est la fonction du pronom relatif « qui » dans la subordonnée ?',
  null,
  '[{"id":"a","label":"Complément d''objet direct"},{"id":"b","label":"Sujet"},{"id":"c","label":"Complément circonstanciel de lieu"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le pronom relatif « qui » peut exercer différentes fonctions dans la proposition subordonnée relative. Lorsqu''il est sujet du verbe de la relative, le verbe s''accorde avec l''antécédent. Ici, « qui » est sujet du verbe « chante » : on peut vérifier en substituant l''antécédent — « la fillette chante ». Quand « qui » est COD, on utilise plutôt « que » ; quand il est CC de lieu, on utilise « où ».',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q4 — pronom relatif « dont » (vrai_faux)
(
  '36000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « Le film dont je t''ai parlé est sorti hier », le pronom relatif « dont » est complément du verbe « parler ».',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Le pronom relatif « dont » reprend un complément introduit par la préposition « de ». Ici, il remplace « de ce film » : on parle de quelque chose — « parler de quelque chose ». Donc « dont » est complément indirect du verbe « parler » dans la relative. « Dont » peut aussi être complément du nom (« le livre dont la couverture est abîmée ») ou complément de l''adjectif (« le sujet dont il est fier »).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q5 — pronom relatif « où » (qcm)
(
  '36000000-0000-0000-0000-000000000005',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans « L''année où il est né, la guerre venait de finir », quelle est la fonction de « où » dans la relative ?',
  null,
  '[{"id":"a","label":"Complément circonstanciel de lieu"},{"id":"b","label":"Complément circonstanciel de temps"},{"id":"c","label":"Sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le pronom relatif « où » peut indiquer le lieu ou le temps. Ici, l''antécédent est « l''année », un nom de temps : « où » est donc complément circonstanciel de temps du verbe « est né ». Cette valeur temporelle de « où » est fréquente avec des antécédents comme « jour », « moment », « époque », « saison ». Il convient de ne pas se limiter à la valeur spatiale de « où » lors de l''analyse grammaticale.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q6 — relative déterminative vs explicative (qcm)
(
  '36000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans « Les élèves, qui étaient fatigués, ont mal répondu », la relative est-elle déterminative ou explicative ?',
  null,
  '[{"id":"a","label":"Déterminative, car elle restreint le groupe nominal"},{"id":"b","label":"Explicative, car elle apporte une précision accessoire et est détachée par des virgules"},{"id":"c","label":"Complétive, car elle complète le verbe principal"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La relative explicative (ou appositive) est détachée par des virgules et apporte une information accessoire qui n''est pas indispensable à l''identification de l''antécédent : on peut la supprimer sans changer le sens fondamental de la phrase. Ici, « qui étaient fatigués » est entre virgules et ne restreint pas la référence du groupe « les élèves » : elle est donc explicative. La relative déterminative, sans virgules, restreint l''ensemble désigné par le nom.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q7 — choix du pronom relatif (vrai_faux)
(
  '36000000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « C''est l''outil avec lequel il travaille », le pronom relatif « lequel » peut être remplacé par « que » sans changer le sens.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. Le pronom relatif « lequel » (et ses formes composées auquel, duquel, avec lequel…) s''emploie obligatoirement après une préposition. Ici, la préposition « avec » est indispensable : l''outil sert à travailler « avec » quelque chose. On ne peut pas dire *« l''outil que il travaille » ; il faudrait au moins « l''outil avec lequel » ou « l''outil dont il se sert pour travailler ». Le pronom « que » est réservé à la fonction COD sans préposition.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q8 — accord du participe passé avec « que » (qcm)
(
  '36000000-0000-0000-0000-000000000008',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Quelle est la forme correctement accordée dans « Les lettres que j''ai __ » ?',
  null,
  '[{"id":"a","label":"écrit"},{"id":"b","label":"écrites"},{"id":"c","label":"écrits"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Lorsque le pronom relatif « que » est COD du verbe de la relative, il représente l''antécédent et le participe passé s''accorde avec cet antécédent en genre et en nombre. Ici, « que » reprend « les lettres » (féminin pluriel) : le participe passé « écrit » s''accorde donc au féminin pluriel → « écrites ». Cette règle d''accord est l''une des plus importantes de l''orthographe grammaticale française et un point régulièrement évalué au CRPE.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q9 — relative sans antécédent (vrai_faux)
(
  '36000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « Qui vivra verra », la proposition « Qui vivra » est une proposition subordonnée relative sans antécédent exprimé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Dans certaines constructions, le pronom relatif « qui » n''a pas d''antécédent exprimé dans la phrase : il équivaut à « celui qui » et la proposition relative fonctionne alors comme un groupe nominal, exerçant une fonction dans la principale (ici, sujet de « verra »). On parle de relative « substantive » ou « indépendante ». C''est une structure figée dans des proverbes, mais elle existe aussi dans la langue courante (« Qui veut voyager loin ménage sa monture »).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q10 — fonction de la relative dans la phrase (qcm)
(
  '36000000-0000-0000-0000-000000000010',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Quelle est la fonction de la proposition subordonnée relative dans « Je cherche un appartement qui soit lumineux » ?',
  null,
  '[{"id":"a","label":"Complément circonstanciel de but"},{"id":"b","label":"Complément de l''antécédent (épithète de « appartement »)"},{"id":"c","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La proposition subordonnée relative a généralement la fonction de complément de l''antécédent, c''est-à-dire épithète du nom qu''elle complète. Ici, « qui soit lumineux » complète « appartement » et précise quel type d''appartement est recherché. On remarque que le verbe est au subjonctif car la relative suit un verbe exprimant une recherche ou un souhait sur un référent indéfini. Cette valeur modale distingue cette relative d''une relative à l''indicatif qui décrirait un appartement déjà connu.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- ============================================================
-- SÉRIE 37 — Propositions subordonnées conjonctives (Avancé / premium)
-- ============================================================

-- Q1 — subordonnée de cause (qcm)
(
  '37000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Dans « Il est resté chez lui parce qu''il était malade », la subordonnée circonstancielle exprime :',
  null,
  '[{"id":"a","label":"La conséquence"},{"id":"b","label":"La cause"},{"id":"c","label":"Le but"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La conjonction « parce que » introduit une subordonnée circonstancielle de cause qui répond à la question « pourquoi ? ». Elle exprime la raison pour laquelle l''action de la principale s''est produite. La cause est réelle et présentée comme un fait avéré (indicatif). À ne pas confondre avec la conséquence (« si bien que », « de sorte que »), qui suit logiquement l''action principale, ni avec le but (« pour que », « afin que »), qui exprime une intention future.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q2 — subordonnée de conséquence (qcm)
(
  '37000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Laquelle de ces phrases contient une subordonnée circonstancielle de conséquence ?',
  null,
  '[{"id":"a","label":"Il a tellement travaillé qu''il a réussi son examen."},{"id":"b","label":"Il a travaillé pour qu''il réussisse son examen."},{"id":"c","label":"Il a travaillé bien qu''il fût épuisé."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La subordonnée de conséquence indique le résultat de l''action de la principale. La phrase a) utilise la locution corrélative « tellement… que » (intensité + résultat), caractéristique de la conséquence. Le verbe est à l''indicatif car la conséquence est présentée comme réelle. La phrase b) contient une subordonnée de but (« pour que » + subjonctif). La phrase c) contient une subordonnée de concession (« bien que » + subjonctif imparfait ici au style soutenu).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q3 — subordonnée de but (vrai_faux)
(
  '37000000-0000-0000-0000-000000000003',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? La subordonnée de but se construit toujours avec un verbe au subjonctif.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. La subordonnée circonstancielle de but (ou finale) est introduite par des locutions conjonctives telles que « pour que », « afin que », « de peur que », « de crainte que », et elle requiert systématiquement le subjonctif. Cela s''explique par le fait que le but désigne une action envisagée, non encore accomplie : le subjonctif exprime cette virtualité. Exemple : « Il parle lentement pour que les enfants comprennent. » L''infinitif (« pour comprendre ») est possible si les sujets sont identiques.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q4 — subordonnée d'opposition vs concession (qcm)
(
  '37000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Quelle distinction peut-on faire entre « alors que » exprimant l''opposition et « bien que » exprimant la concession ?',
  null,
  '[{"id":"a","label":"« Alors que » met en parallèle deux faits contraires (indicatif) ; « bien que » présente un obstacle non concluant (subjonctif)."},{"id":"b","label":"« Alors que » indique le temps ; « bien que » indique la cause."},{"id":"c","label":"Les deux locutions sont interchangeables sans différence de sens."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''opposition (« alors que », « tandis que » + indicatif) met en contraste deux faits sans lien de causalité entre eux. La concession (« bien que », « quoique » + subjonctif) présente un fait qui aurait dû empêcher l''action principale mais ne l''a pas empêchée : le résultat attendu n''a pas eu lieu. Exemple d''opposition : « Il est bavard alors que son frère est silencieux. » Exemple de concession : « Il est sorti bien qu''il fût malade. » Le mode verbal (indicatif vs subjonctif) est un marqueur formel important.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q5 — subordonnée de temps (vrai_faux)
(
  '37000000-0000-0000-0000-000000000005',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans « Dès que la cloche sonne, les élèves sortent », la subordonnée est une circonstancielle de temps exprimant la simultanéité.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. La locution « dès que » exprime non pas la simultanéité stricte, mais l''antériorité immédiate : l''action de la subordonnée se produit juste avant celle de la principale, avec une relation de déclenchement. C''est la conjonction « quand » / « lorsque » (avec des verbes à l''imparfait ou au présent d''habitude) ou « pendant que » / « tandis que » qui marquent la simultanéité. « Dès que » (et « aussitôt que ») indiquent que le deuxième événement suit immédiatement le premier.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q6 — subordonnée de condition (qcm)
(
  '37000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Dans « Si tu travailles sérieusement, tu réussiras », quel mode emploie-t-on dans la subordonnée conditionnelle introduite par « si » ?',
  null,
  '[{"id":"a","label":"Le subjonctif présent"},{"id":"b","label":"Le conditionnel présent"},{"id":"c","label":"L''indicatif présent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'En français, la subordonnée conditionnelle introduite par « si » (système hypothétique de type 1 : condition réalisable) prend l''indicatif présent dans la subordonnée, tandis que la principale est au futur simple ou à l''impératif. Règle fondamentale : « si » n''est jamais suivi du conditionnel ni du subjonctif. Pour le système irréel du présent, on utilise « si » + imparfait → conditionnel présent ; pour l''irréel du passé, « si » + plus-que-parfait → conditionnel passé.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q7 — subordonnée complétive COD (qcm)
(
  '37000000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Dans « Je pense que tu as raison », quelle est la fonction de la proposition « que tu as raison » ?',
  null,
  '[{"id":"a","label":"Sujet de « pense »"},{"id":"b","label":"Complément d''objet direct de « pense »"},{"id":"c","label":"Complément circonstanciel de cause"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La proposition subordonnée complétive introduite par « que » peut exercer différentes fonctions. Ici, « que tu as raison » répond à la question « je pense quoi ? » : elle est complément d''objet direct du verbe « penser ». Le verbe est à l''indicatif car « penser » exprime une opinion présentée comme vraie. Si le verbe principal exprimait un doute, un souhait ou un sentiment, on aurait le subjonctif (« je doute que tu aies raison »). La complétive COD est la subordonnée conjonctive la plus fréquente.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q8 — subordonnée complétive sujet (vrai_faux)
(
  '37000000-0000-0000-0000-000000000008',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans « Qu''il fasse beau demain serait une bonne nouvelle », la proposition « Qu''il fasse beau demain » est sujet du verbe « serait ».',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. La proposition subordonnée complétive peut être sujet du verbe de la principale. Ici, « qu''il fasse beau demain » répond à la question « qu''est-ce qui serait une bonne nouvelle ? » : elle est bien sujet de « serait ». Le verbe est au subjonctif parce que la proposition sujet exprime un souhait ou une hypothèse. Cette construction, souvent rencontrée avec les verbes « être », « paraître », « sembler », est plus formelle que la construction avec un sujet nominal.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q9 — distinguer relative et conjonctive (qcm)
(
  '37000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Comment distinguer la proposition subordonnée conjonctive de la proposition subordonnée relative, toutes deux pouvant être introduites par « que » ?',
  null,
  '[{"id":"a","label":"La relative introduit par « que » a un antécédent et « que » est pronom relatif COD ; la conjonctive est introduite par « que » conjonction de subordination sans antécédent."},{"id":"b","label":"La relative est toujours au subjonctif ; la conjonctive est toujours à l''indicatif."},{"id":"c","label":"Il est impossible de les distinguer formellement."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le critère de distinction est la nature grammaticale de « que » et la présence ou l''absence d''un antécédent. Dans la relative, « que » est un pronom relatif qui reprend un antécédent (nom ou pronom) et remplit une fonction dans la subordonnée (généralement COD). Dans la conjonctive, « que » est une conjonction de subordination : il n''a pas de fonction propre et n''a pas d''antécédent. Exemple relatif : « Le livre que tu lis » (antécédent = « livre ») ; exemple conjonctif : « Je sais que tu lis » (pas d''antécédent).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q10 — mode dans la subordonnée de concession (vrai_faux)
(
  '37000000-0000-0000-0000-000000000010',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? La locution conjonctive « bien que » introduit toujours une subordonnée dont le verbe est au subjonctif.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. « Bien que » est une locution conjonctive de concession qui impose systématiquement le subjonctif dans la proposition subordonnée qu''elle introduit. Exemple : « Bien qu''il soit fatigué, il continue. » C''est le cas de toutes les locutions de concession et d''opposition construites avec « que » final : « quoique », « encore que », « pour peu que », « à moins que ». Le subjonctif signale que le fait est envisagé comme insuffisant à empêcher l''action principale.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- ============================================================
-- SÉRIE 38 — Analyse grammaticale de phrases (Avancé / premium)
-- ============================================================

-- Q1 — identifier le sujet (qcm)
(
  '38000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quel est le sujet du verbe « semblent » ?',
  'Les résultats obtenus lors du dernier examen semblent encourageants.',
  '[{"id":"a","label":"Les résultats obtenus lors du dernier examen"},{"id":"b","label":"lors du dernier examen"},{"id":"c","label":"encourageants"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le sujet est le groupe nominal qui commande l''accord du verbe. Pour le trouver, on pose la question « Qui est-ce qui + verbe ? » : « Qui est-ce qui semble encourageant ? → Les résultats obtenus lors du dernier examen. » La réponse est le groupe nominal complet, incluant le noyau (« résultats »), son épithète (participe passé « obtenus ») et son complément du nom (« lors du dernier examen »). « Encourageants » est l''attribut du sujet et « lors du dernier examen » est un complément circonstanciel de temps.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q2 — identifier le COD (qcm)
(
  '38000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quel est le complément d''objet direct du verbe « a envoyé » ?',
  'La directrice a envoyé un courrier aux parents d''élèves dès le lundi matin.',
  '[{"id":"a","label":"aux parents d''élèves"},{"id":"b","label":"un courrier"},{"id":"c","label":"dès le lundi matin"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le complément d''objet direct (COD) se construit sans préposition et répond à la question « verbe + quoi ? » ou « verbe + qui ? ». Ici : « a envoyé quoi ? → un courrier ». Le groupe « aux parents d''élèves » est introduit par la préposition « à » : c''est un COI. Le groupe « dès le lundi matin » indique le moment de l''action : c''est un complément circonstanciel de temps. Identifier le COD est fondamental pour appliquer la règle d''accord du participe passé avec « avoir ».',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q3 — identifier le COI (vrai_faux)
(
  '38000000-0000-0000-0000-000000000003',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Elle téléphone à son médecin chaque semaine », « à son médecin » est un complément d''objet indirect (COI).',
  'Elle téléphone à son médecin chaque semaine.',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Le complément d''objet indirect (COI) est construit avec une préposition (ici « à ») et répond à la question « verbe à qui ? / à quoi ? ». Le verbe « téléphoner » est un verbe à construction indirecte : on téléphone à quelqu''un. Donc « à son médecin » est bien le COI. « Chaque semaine » est un complément circonstanciel de temps. La distinction COD / COI est essentielle car elle détermine l''accord (ou non) du participe passé avec les pronoms compléments.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q4 — identifier l'attribut du sujet (qcm)
(
  '38000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quelle est la fonction de « passionnante » ?',
  'Cette conférence sur la linguistique s''est révélée passionnante.',
  '[{"id":"a","label":"Épithète du nom « conférence »"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Complément circonstanciel de manière"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''attribut du sujet qualifie le sujet par l''intermédiaire d''un verbe attributif (être, paraître, sembler, devenir, rester, se révéler…). Ici, « passionnante » qualifie « cette conférence » par le biais du verbe « s''est révélée » : c''est bien un attribut du sujet. Il s''accorde en genre et en nombre avec le sujet (féminin singulier). L''épithète serait directement rattachée au nom sans verbe intermédiaire (« une conférence passionnante »).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q5 — identifier le CC de lieu (qcm)
(
  '38000000-0000-0000-0000-000000000005',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quel groupe est complément circonstanciel de lieu ?',
  'Chaque matin, les enfants courent joyeusement dans la cour de récréation.',
  '[{"id":"a","label":"Chaque matin"},{"id":"b","label":"joyeusement"},{"id":"c","label":"dans la cour de récréation"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le complément circonstanciel de lieu répond à la question « où ? ». Ici, « dans la cour de récréation » indique l''endroit où se déroule l''action de courir. « Chaque matin » répond à la question « quand ? » : c''est un CC de temps. « Joyeusement » répond à la question « comment ? » : c''est un CC de manière. Les compléments circonstanciels sont généralement mobiles dans la phrase (on peut les déplacer ou les supprimer) contrairement aux compléments essentiels (COD, COI).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q6 — analyse complète (vrai_faux)
(
  '38000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase ci-dessous, « de ses élèves » est un complément du nom.',
  'Le professeur corrigeait patiemment les copies de ses élèves.',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Le complément du nom est un groupe prépositionnel qui se rattache à un nom et le précise. Ici, « de ses élèves » complète le nom « copies » : il s''agit des copies appartenant aux élèves. C''est donc un complément du nom avec valeur possessive. Il ne faut pas le confondre avec un COI (qui dépend du verbe) ni avec un CC. Pour vérifier, on peut poser la question « les copies de qui ? → de ses élèves » en se rattachant au nom et non au verbe.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q7 — fonction de l'infinitif (qcm)
(
  '38000000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quelle est la fonction du groupe infinitif « lire cet ouvrage » ?',
  'Il recommande de lire cet ouvrage avant la conférence.',
  '[{"id":"a","label":"Sujet du verbe « recommande »"},{"id":"b","label":"Complément d''objet indirect de « recommande »"},{"id":"c","label":"Complément circonstanciel de but"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le groupe infinitif peut exercer de nombreuses fonctions nominales. Ici, « de lire cet ouvrage » est introduit par la préposition « de » et complète le verbe « recommander » : on recommande de faire quelque chose. Il s''agit d''un COI (construction indirecte en « de + infinitif »). Ce n''est pas un CC de but car il n''exprime pas l''intention ou la finalité de l''action principale ; il en est l''objet. La construction « recommander de + infinitif » est une locution verbale à rection indirecte.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q8 — apposition (vrai_faux)
(
  '38000000-0000-0000-0000-000000000008',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase ci-dessous, « médecin de campagne » est une apposition au sujet « il ».',
  'Il est médecin de campagne depuis vingt ans.',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. Dans cette phrase, « médecin de campagne » est l''attribut du sujet « il » relié par le verbe copule « est ». L''apposition est un groupe nominal juxtaposé ou séparé par une virgule qui désigne le même être que le nom auquel il se rapporte, sans verbe intermédiaire (exemple : « Louis, médecin de campagne, soigne ses patients »). L''attribut, lui, est nécessairement relié au sujet par un verbe attributif. La confusion entre apposition et attribut est fréquente au CRPE.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q9 — complément d'agent (qcm)
(
  '38000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quelle est la fonction de « par les pompiers » ?',
  'Le blessé a été secouru rapidement par les pompiers.',
  '[{"id":"a","label":"Complément circonstanciel de moyen"},{"id":"b","label":"Complément d''agent"},{"id":"c","label":"Complément d''objet indirect"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le complément d''agent est propre à la voix passive : il désigne l''être ou la chose qui accomplit l''action subie par le sujet, et il est introduit par « par » (parfois « de »). Ici, la phrase est à la voix passive (auxiliaire « être » + participe passé « secouru ») : « les pompiers » sont les agents de l''action. À la voix active, ils seraient le sujet : « Les pompiers ont secouru le blessé rapidement. » Le CC de moyen, en revanche, indique l''instrument ou le procédé utilisé (ex. : « à l''aide d''une échelle »).',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q10 — analyse multi-fonctions (vrai_faux)
(
  '38000000-0000-0000-0000-000000000010',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase ci-dessous, le verbe « offrir » a à la fois un COD et un COI.',
  'La maîtresse offre un livre à chaque élève en fin d''année.',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Le verbe « offrir » est un verbe bitransitif : il peut se construire avec deux compléments d''objet. Ici, « un livre » est le COD (offrir quoi ?) et « à chaque élève » est le COI (offrir à qui ?). « En fin d''année » est un CC de temps. Les verbes de don, de communication et d''échange (donner, envoyer, dire, offrir, montrer…) acceptent fréquemment cette double complémentation. La distinction COD / COI est cruciale pour l''accord des participes passés avec les pronoms.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- ============================================================
-- SÉRIE 39 — Transposition de textes (Avancé / premium)
-- ============================================================

-- Q1 — changement de personne je→il (qcm)
(
  '39000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'On transpose le texte suivant en remplaçant « je » par « il ». Quelle forme verbale correcte remplace « je lisais » ?',
  null,
  '[{"id":"a","label":"il lisait"},{"id":"b","label":"il lisais"},{"id":"c","label":"il lisaient"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Lors d''une transposition de la 1re personne du singulier (je) à la 3e personne du singulier (il/elle), le verbe change de terminaison mais reste au même temps. À l''imparfait de l''indicatif, la 1re personne donne « -ais » et la 3e personne donne « -ait » : « je lisais » → « il lisait ». La forme « il lisais » est incorrecte (terminaison de 1re/2e personne), et « il lisaient » correspond à la 3e personne du pluriel. Cette distinction orthographique est fondamentale et régulièrement évaluée.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q2 — changement de nombre singulier→pluriel (qcm)
(
  '39000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'On transpose la phrase « Un enfant jouait seul dans la cour » au pluriel (« Des enfants… »). Quelle est la forme correcte du verbe transposé ?',
  null,
  '[{"id":"a","label":"Des enfants jouaient seuls dans la cour."},{"id":"b","label":"Des enfants jouait seuls dans la cour."},{"id":"c","label":"Des enfants jouais seul dans la cour."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La transposition du singulier au pluriel entraîne plusieurs modifications : le déterminant (« un » → « des »), l''accord du verbe (3e pers. sing. « jouait » → 3e pers. plur. « jouaient »), et l''accord de l''adjectif attribut (« seul » → « seuls »). La phrase a) réalise correctement toutes ces modifications. La phrase b) conserve à tort la forme singulière du verbe, et la phrase c) comporte une terminaison de 1re/2e personne impossible ici. La transposition exige une révision systématique de tous les accords.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q3 — changement de temps présent→imparfait (vrai_faux)
(
  '39000000-0000-0000-0000-000000000003',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Lors de la transposition du présent de l''indicatif à l''imparfait, les verbes en « -cer » (comme « avancer ») prennent une cédille devant les terminaisons en « -a » (par exemple : « nous avancions » → « nous avançions »).',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Les verbes dont l''infinitif se termine en « -cer » conservent le son [s] devant les voyelles « a » et « o » grâce à la cédille : « nous avançions », « il avançait », « vous avanciez ». À l''imparfait, toutes les personnes sauf nous/vous prennent la cédille (1re, 2e, 3e pers. sing. et 3e plur. : j''avançais…). Lors d''une transposition du présent vers l''imparfait, il faut veiller à appliquer cette règle orthographique pour les verbes concernés.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q4 — repérer une erreur de transposition (qcm)
(
  '39000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'Texte d''origine : « Je me lève tôt et je prends mon petit-déjeuner. » On transpose au présent avec le sujet « il ». Quelle version contient une erreur ?',
  null,
  '[{"id":"a","label":"Il se lève tôt et il prend son petit-déjeuner."},{"id":"b","label":"Il se lève tôt et il prends son petit-déjeuner."},{"id":"c","label":"Il se lève tôt et prend son petit-déjeuner."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase b) contient l''erreur : « il prends » est incorrect car la 3e personne du singulier de « prendre » au présent est « prend » (sans « s »). La terminaison « -ds » ou « -s » appartient aux 1re et 2e personnes du singulier. La phrase a) est correcte avec toutes les formes verbales adaptées à la 3e personne. La phrase c) est également correcte : le sujet « il » peut ne pas être répété devant le deuxième verbe coordonné. La transposition exige une vérification méthodique de chaque forme verbale.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q5 — changement de genre (vrai_faux)
(
  '39000000-0000-0000-0000-000000000005',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Lors de la transposition de « il est devenu un grand acteur reconnu » en remplaçant « il » par « elle », seul le déterminant « un » doit être modifié.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. La transposition au féminin entraîne plusieurs changements : le déterminant (« un » → « une »), le nom (« acteur » → « actrice »), et l''adjectif (« reconnu » → « reconnue »). Il faut également veiller à l''accord du participe passé « devenu » → « devenue ». Une transposition de genre requiert une révision systématique de tous les mots variables (déterminants, noms, adjectifs, participes passés) qui s''accordent en genre avec le nouveau sujet.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q6 — transposition et pronoms possessifs (qcm)
(
  '39000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'On transpose « Je lis mon livre dans ma chambre » en remplaçant « je » par « ils ». Quelle transposition est correcte ?',
  null,
  '[{"id":"a","label":"Ils lisent leur livre dans leur chambre."},{"id":"b","label":"Ils lisent mon livre dans ma chambre."},{"id":"c","label":"Ils lisent leurs livres dans leurs chambres."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Lors d''une transposition de la 1re personne (je) à la 3e personne du pluriel (ils), les déterminants possessifs se modifient également : « mon » et « ma » (1re pers. sing.) deviennent « leur » (3e pers. plur. devant un nom singulier). La phrase a) est correcte : « leur livre » et « leur chambre » renvoient au possesseur pluriel sans changer le nombre des noms possédés (on suppose qu''ils partagent ou qu''on généralise). La phrase b) conserve incorrectement les possessifs de la 1re personne. La phrase c) change aussi le nombre des noms, ce qui n''est pas demandé.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q7 — transposition présent→passé composé (vrai_faux)
(
  '39000000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Lors d''une transposition du présent au passé composé, le verbe « aller » prend l''auxiliaire « avoir » : « il va » → « il a allé ».',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. Le verbe « aller » se conjugue au passé composé avec l''auxiliaire « être » et non « avoir » : « il va » → « il est allé ». Les verbes qui se conjuguent avec « être » au passé composé sont principalement les verbes de mouvement ou de changement d''état intransitifs (aller, venir, partir, arriver, naître, mourir…) ainsi que tous les verbes pronominaux. Lors d''une transposition de temps, il est indispensable de vérifier le choix de l''auxiliaire pour chaque verbe.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q8 — transposition et négation (qcm)
(
  '39000000-0000-0000-0000-000000000008',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'On transpose « Je ne mange rien » en remplaçant « je » par « nous ». Quelle forme est correcte ?',
  null,
  '[{"id":"a","label":"Nous ne mangeons rien."},{"id":"b","label":"Nous ne mangons rien."},{"id":"c","label":"Nous ne mangeons pas."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La transposition de la 1re personne singulier à la 1re personne pluriel (je → nous) nécessite d''adapter la terminaison verbale. Le verbe « manger » est un verbe en « -ger » : devant les terminaisons commençant par « o », il prend un « e » de soutien pour conserver le son [ʒ] — « nous mangeons » et non *« nous mangons ». La négation « ne… rien » est conservée telle quelle car elle ne change pas avec la personne. La phrase c) remplace incorrectement « rien » par « pas », ce qui modifie le sens.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q9 — identifier tous les changements (qcm)
(
  '39000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'En transposant « Tu étais un bon élève » → « Vous étiez de bons élèves », combien de changements grammaticaux a-t-on effectués ?',
  null,
  '[{"id":"a","label":"2 changements : pronom et verbe"},{"id":"b","label":"3 changements : pronom, verbe et déterminant"},{"id":"c","label":"4 changements : pronom, verbe, déterminant et nom + adjectif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La transposition de « tu » (2e pers. sing.) à « vous » (2e pers. plur.) entraîne ici quatre types de changements : (1) le pronom sujet « tu » → « vous » ; (2) le verbe « étais » (2e pers. sing.) → « étiez » (2e pers. plur.) ; (3) le déterminant « un » → « de » (article partitif pluriel devant adjectif : règle de « de » devant adjectif au pluriel) ; (4) le nom « élève » → « élèves » et l''adjectif « bon » → « bons ». Une transposition complète implique donc une révision systématique de toutes les catégories grammaticales variables.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q10 — erreur de transposition (vrai_faux)
(
  '39000000-0000-0000-0000-000000000010',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans la transposition de « il se souvient de ses vacances » → « ils se souviennent de leurs vacances », toutes les modifications nécessaires ont bien été effectuées.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. La transposition du singulier (il) au pluriel (ils) a bien entraîné : (1) le pronom sujet « il » → « ils » ; (2) la forme verbale « se souvient » (3e pers. sing.) → « se souviennent » (3e pers. plur., avec doublement du « n » pour ce verbe du 3e groupe) ; (3) le déterminant possessif « ses » (3e pers. sing.) → « leurs » (3e pers. plur.). Le nom « vacances » reste au pluriel dans les deux cas. Toutes les catégories grammaticales variables ont été correctement modifiées.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
)
;
