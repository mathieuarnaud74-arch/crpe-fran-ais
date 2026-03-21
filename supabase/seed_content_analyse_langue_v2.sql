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

-- Q1 — type déclaratif (qcm) → correct: b
(
  '35000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Quelle est la phrase de type déclaratif ?',
  null,
  '[{"id":"a","label":"Comme ce paysage est magnifique !"},{"id":"b","label":"Le soleil se couche derrière les montagnes."},{"id":"c","label":"Ferme la fenêtre, s''il te plaît."},{"id":"d","label":"Est-ce que tu as vu ce paysage ?"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase déclarative énonce un fait, une opinion ou une information — elle se termine par un point simple. La phrase b) est bien déclarative : elle affirme un fait sans exclamation, interrogation ni injonction. La phrase a) est exclamative (point d''exclamation, ton affectif renforcé) et la phrase c) est impérative (ordre donné). La phrase d) est interrogative (« est-ce que »). Retiens : type = intention de communication. Forme = affirmative/négative ou active/passive. Ne confonds jamais les deux !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q2 — type interrogatif (qcm) → correct: d (was c, swapped c↔d)
(
  '35000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Laquelle de ces phrases est de type interrogatif ?',
  null,
  '[{"id":"a","label":"Tu viendras demain."},{"id":"b","label":"Viens demain !"},{"id":"c","label":"Tu devrais vraiment venir demain."},{"id":"d","label":"Viendras-tu demain ?"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La phrase interrogative pose une question et se termine par un point d''interrogation. La phrase d) est interrogative : elle utilise l''inversion sujet-verbe, procédé caractéristique de l''interrogation directe totale (réponse oui/non). La phrase a) est déclarative, la phrase b) est impérative, et la phrase c) est également déclarative (conseil formulé à l''indicatif). Et n''oublie pas la distinction interrogation totale (oui/non) vs interrogation partielle (introduite par un mot interrogatif : qui, quand, où, comment…) — deux sous-types à maîtriser !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q3 — type exclamatif (vrai_faux)
(
  '35000000-0000-0000-0000-000000000003',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Selon la terminologie officielle (Éduscol 2021), la phrase « Que tu chantes bien ! » est de type exclamatif.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Selon la terminologie officielle (Éduscol 2021), l''exclamation n''est pas un TYPE de phrase mais une FORME de phrase. Il n''existe que trois types : déclaratif, interrogatif et impératif. L''exclamation est une forme qui peut se combiner avec n''importe quel type, comme la forme négative ou passive. La phrase « Que tu chantes bien ! » est donc une phrase de forme exclamative, mais son type est déclaratif (elle énonce un jugement). Cette distinction type/forme est un point de vigilance majeur au CRPE.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q4 — type impératif (qcm) → correct: b
(
  '35000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Quel est le type de la phrase « N''oubliez pas vos affaires. » ?',
  null,
  '[{"id":"a","label":"Déclaratif"},{"id":"b","label":"Impératif"},{"id":"c","label":"Interrogatif"},{"id":"d","label":"Exclamatif"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase impérative (ou injonctive) exprime un ordre, un conseil, une interdiction ou une prière. Son trait formel principal : l''absence de sujet exprimé, avec le verbe à l''impératif. Ici, « N''oubliez pas vos affaires » est une injonction négative — le sujet « vous » est sous-entendu. Et attention : même si elle se termine par un point simple, il s''agit bien d''une phrase impérative et non déclarative. La ponctuation seule ne suffit pas à déterminer le type !',
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
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! La terminologie officielle (Éduscol 2021) distingue exactement TROIS types de phrases : déclaratif, interrogatif et impératif. L''exclamation n''est pas un quatrième type mais une FORME de phrase, au même titre que la forme négative, passive, emphatique ou impersonnelle. Une phrase déclarative peut être exclamative (« C''est magnifique ! »), tout comme une phrase impérative (« Tais-toi donc ! »). L''exclamation est une nuance expressive qui se superpose à l''un des trois types.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q6 — forme affirmative/négative (qcm) → correct: a
(
  '35000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Quelle est la forme négative de la phrase « Les enfants jouent dans le jardin » ?',
  null,
  '[{"id":"a","label":"Les enfants ne jouent pas dans le jardin."},{"id":"b","label":"Les enfants jouent-ils dans le jardin ?"},{"id":"c","label":"Que les enfants jouent dans le jardin !"},{"id":"d","label":"Les enfants jouent rarement dans le jardin."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La forme négative se construit en encadrant le verbe avec une locution négative, le plus souvent « ne…pas ». La phrase a) transforme correctement la phrase en forme négative. Les phrases b) et c) changent le type de phrase (interrogatif et exclamatif) mais ne transforment pas la forme négative. La phrase d) introduit un adverbe de fréquence mais reste à la forme affirmative. Retiens : type et forme sont deux propriétés indépendantes qui se combinent librement. Une phrase peut être interrogative ET négative, impérative ET négative, etc.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q7 — forme passive (qcm) → correct: d (was b, swapped b↔d)
(
  '35000000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Laquelle de ces phrases est à la forme passive ?',
  null,
  '[{"id":"a","label":"Le jardinier taille les rosiers."},{"id":"b","label":"Les rosiers ne sont pas taillés."},{"id":"c","label":"Les rosiers ont besoin d''être taillés."},{"id":"d","label":"Les rosiers sont taillés par le jardinier."}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La voix passive se construit avec l''auxiliaire « être » conjugué + participe passé du verbe, et le sujet de la phrase passive subit l''action. L''agent (ancien sujet actif) est introduit par « par » ou « de ». La phrase d) présente bien cette structure : « les rosiers » (sujet patient), « sont taillés » (être + participe passé), « par le jardinier » (complément d''agent). La phrase a) est active, la phrase b) est négative mais reste à la voix active — « ne sont pas » ce n''est pas la voix passive ! La phrase c) contient un infinitif passif mais la phrase principale est active.',
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
  'Vrai ! Un verbe est à la forme impersonnelle quand son sujet apparent est le pronom « il » qui ne représente aucun être réel — c''est un sujet grammatical vide de sens. « Falloir » est un verbe essentiellement impersonnel : il ne s''emploie qu''à la 3e personne du singulier avec ce « il » fantôme. D''autres verbes peuvent s''employer occasionnellement à la forme impersonnelle : « il neige », « il arrive que »… À distinguer du sujet « il » personnel, qui désigne un être réel !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q9 — forme active vs passive (qcm) → correct: c (was a, swapped a↔c)
(
  '35000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_types_phrases',
  'Types et formes de phrases', 'Intermediaire',
  'qcm',
  'Quelle transformation permet de passer de la voix active à la voix passive dans « La tempête a détruit le pont » ?',
  null,
  '[{"id":"a","label":"Le pont détruisait la tempête."},{"id":"b","label":"La tempête n''a pas détruit le pont."},{"id":"c","label":"Le pont a été détruit par la tempête."},{"id":"d","label":"La tempête a fait des dégâts sur le pont."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Pour passer de la voix active à la voix passive, trois opérations : le COD actif (« le pont ») devient sujet passif, le sujet actif (« la tempête ») devient complément d''agent introduit par « par », et le verbe se construit avec « être » au même temps + participe passé : « a été détruit ». La phrase c) respecte toutes ces règles. La phrase a) est grammaticalement incorrecte, la phrase b) est simplement la négation de la phrase de départ — la négation ne change pas la voix ! La phrase d) reformule l''idée mais ne constitue pas une vraie mise à la voix passive.',
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
  'Vrai ! C''est ça, exactement ! Une phrase peut cumuler un type et plusieurs formes simultanément. Ici : type interrogatif (inversion sujet-verbe, point d''interrogation), forme négative (« n''…pas ») et forme passive (« a été lu par »). Type et forme sont deux axes d''analyse indépendants qui se combinent librement — et l''enseignant doit s''assurer que les élèves maîtrisent cette distinction fondamentale.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- ============================================================
-- SÉRIE 36 — Propositions subordonnées relatives (Intermédiaire / free)
-- ============================================================

-- Q1 — identification de la relative (qcm) → correct: d (was b, swapped b↔d)
(
  '36000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans la phrase « Le chien que j''ai adopté est très doux », quelle est la proposition subordonnée relative ?',
  null,
  '[{"id":"a","label":"Le chien est très doux"},{"id":"b","label":"j''ai adopté est très doux"},{"id":"c","label":"Le chien que j''ai adopté"},{"id":"d","label":"que j''ai adopté"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La proposition subordonnée relative est introduite par un pronom relatif (ici « que ») et complète un nom ou un pronom appelé antécédent. La relative « que j''ai adopté » se rapporte à l''antécédent « le chien » et remplit la fonction d''épithète (complément de l''antécédent). La proposition principale reste « Le chien est très doux » une fois la relative extraite. Test facile : identifie le pronom relatif, remonte à son antécédent — tu as trouvé ta relative !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q2 — antécédent (qcm) → correct: a (was b, swapped a↔b)
(
  '36000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans « Les élèves qui ont fini peuvent sortir », quel est l''antécédent du pronom relatif « qui » ?',
  null,
  '[{"id":"a","label":"élèves"},{"id":"b","label":"qui"},{"id":"c","label":"fini"},{"id":"d","label":"sortir"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''antécédent, c''est le nom (ou pronom) que reprend le pronom relatif. Ici, « qui » reprend « les élèves » — donc l''antécédent est « élèves ». Simple, non ? Le pronom relatif s''accorde en genre et en nombre avec son antécédent, ce qui est particulièrement visible avec « lequel » et ses formes. Identifier l''antécédent, c''est toujours la première étape de l''analyse d''une proposition relative.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q3 — fonction du pronom relatif « qui » (qcm) → correct: b
(
  '36000000-0000-0000-0000-000000000003',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans « La fillette qui chante est ma cousine », quelle est la fonction du pronom relatif « qui » dans la subordonnée ?',
  null,
  '[{"id":"a","label":"Complément d''objet direct"},{"id":"b","label":"Sujet"},{"id":"c","label":"Complément circonstanciel de lieu"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le pronom relatif « qui » peut exercer différentes fonctions dans la relative. Ici, « qui » est sujet du verbe « chante » — vérifie en substituant l''antécédent : « la fillette chante ». Quand « qui » est COD, on utilise plutôt « que » ; pour un CC de lieu, c''est « où » ; « qui » n''est pas attribut mais peut introduire un attribut. Retiens les fonctions de chaque pronom relatif : qui = sujet ou COI après prép., que = COD, dont = compl. avec « de », où = lieu ou temps. Ce tableau te sauvera !',
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
  'Vrai ! Le pronom relatif « dont » reprend un complément introduit par la préposition « de ». Ici, il remplace « de ce film » — on parle de quelque chose, donc « parler de ». Donc « dont » est complément indirect du verbe « parler ». Mais attention : « dont » peut aussi être complément du nom (« le livre dont la couverture est abîmée ») ou complément de l''adjectif (« le sujet dont il est fier »). « Dont » = « de quoi / duquel / de qui » — dans tous les cas, il intègre la préposition « de ».',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q5 — pronom relatif « où » (qcm) → correct: c (was b, swapped b↔c)
(
  '36000000-0000-0000-0000-000000000005',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans « L''année où il est né, la guerre venait de finir », quelle est la fonction de « où » dans la relative ?',
  null,
  '[{"id":"a","label":"Complément circonstanciel de lieu"},{"id":"b","label":"Sujet"},{"id":"c","label":"Complément circonstanciel de temps"},{"id":"d","label":"Complément d''objet indirect"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Attention au piège classique : « où » ne désigne pas toujours un lieu ! Ici, l''antécédent est « l''année » — un nom de temps. Donc « où » est complément circonstanciel de temps du verbe « est né ». Cette valeur temporelle de « où » est très fréquente avec des antécédents comme « jour », « moment », « époque », « saison ». Ne te laisse pas piéger par la valeur spatiale habituelle de « où » — l''antécédent te dit tout !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q6 — relative déterminative vs explicative (qcm) → correct: b
(
  '36000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Dans « Les élèves, qui étaient fatigués, ont mal répondu », la relative est-elle déterminative ou explicative ?',
  null,
  '[{"id":"a","label":"Déterminative, car elle restreint le groupe nominal"},{"id":"b","label":"Explicative, car elle apporte une précision accessoire et est détachée par des virgules"},{"id":"c","label":"Complétive, car elle complète le verbe principal"},{"id":"d","label":"Déterminative, car elle est indispensable pour identifier les élèves concernés"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La relative explicative (ou appositive) est détachée par des virgules et apporte une information accessoire — on peut la supprimer sans changer le sens fondamental de la phrase. Ici, « qui étaient fatigués » est entre virgules et ne restreint pas la référence de « les élèves » : elle est explicative. La relative déterminative, sans virgules, restreint l''ensemble désigné par le nom. Le test de suppression est ta meilleure arme : si tu peux enlever la relative sans que la phrase perde son sens essentiel → explicative !',
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
  'Faux ! Le pronom relatif « lequel » (et ses formes composées : auquel, duquel, avec lequel…) s''emploie obligatoirement après une préposition. Ici, la préposition « avec » est indispensable — l''outil sert à travailler « avec » quelque chose. On ne peut pas dire « l''outil que il travaille » — ce serait incorrect. Il faudrait au moins « l''outil avec lequel » ou « l''outil dont il se sert ». Le pronom « que » est réservé à la fonction COD sans préposition. La préposition détermine le choix du pronom !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q8 — accord du participe passé avec « que » (qcm) → correct: d (was b, swapped b↔d)
(
  '36000000-0000-0000-0000-000000000008',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Quelle est la forme correctement accordée dans « Les lettres que j''ai __ » ?',
  null,
  '[{"id":"a","label":"écrit"},{"id":"b","label":"écrits"},{"id":"c","label":"écrivant"},{"id":"d","label":"écrites"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Règle d''or : quand le pronom relatif « que » est COD du verbe de la relative, il représente l''antécédent et le participe passé s''accorde avec cet antécédent en genre et en nombre. Ici, « que » reprend « les lettres » (féminin pluriel) → participe passé au féminin pluriel → « écrites ». C''est l''une des règles d''accord les plus importantes de l''orthographe grammaticale française — et l''une des plus régulièrement évaluées au CRPE. Entraîne-toi avec « que » comme signal d''accord !',
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
  'Vrai ! Dans certaines constructions, le pronom relatif « qui » n''a pas d''antécédent exprimé — il équivaut à « celui qui » et la proposition relative fonctionne alors comme un groupe nominal, exerçant une fonction dans la principale (ici, sujet de « verra »). On parle de relative substantive ou indépendante. C''est une structure figée dans les proverbes : « Qui veut voyager loin ménage sa monture », « Qui dort dîne »… Mais elle existe aussi dans la langue courante contemporaine !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- Q10 — fonction de la relative dans la phrase (qcm) → correct: a (was b, swapped a↔b)
(
  '36000000-0000-0000-0000-000000000010',
  'Francais', 'analyse_langue', 'al_subordonnees_relatives',
  'Propositions subordonnées relatives', 'Intermediaire',
  'qcm',
  'Quelle est la fonction de la proposition subordonnée relative dans « Je cherche un appartement qui soit lumineux » ?',
  null,
  '[{"id":"a","label":"Complément de l''antécédent (épithète de « appartement »)"},{"id":"b","label":"Complément circonstanciel de but"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"Complément d''objet direct de « cherche »"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La proposition subordonnée relative a généralement la fonction de complément de l''antécédent — épithète du nom qu''elle complète. Ici, « qui soit lumineux » complète « appartement » et précise quel type est recherché. Et remarque le mode : le subjonctif ! Pourquoi ? Parce que la relative suit un verbe exprimant une recherche ou un souhait sur un référent indéfini. Cette valeur modale distingue cette relative d''une relative à l''indicatif qui décrirait un appartement déjà connu. Mode verbal = signal de sens !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'free', true
),

-- ============================================================
-- SÉRIE 37 — Propositions subordonnées conjonctives (Avancé / premium)
-- ============================================================

-- Q1 — subordonnée de cause (qcm) → correct: d (was b, swapped b↔d)
(
  '37000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Dans « Il est resté chez lui parce qu''il était malade », la subordonnée circonstancielle exprime :',
  null,
  '[{"id":"a","label":"La conséquence"},{"id":"b","label":"Le but"},{"id":"c","label":"La concession"},{"id":"d","label":"La cause"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Parce que » introduit une subordonnée de cause qui répond à la question « pourquoi ? » — c''est la raison pour laquelle l''action de la principale s''est produite. La cause est réelle, présentée comme un fait avéré (indicatif). Ne confonds pas avec la conséquence (« si bien que », « de sorte que » — ce qui suit logiquement), ni avec le but (« pour que », « afin que » — intention future), ni avec la concession (« bien que », « quoique » — obstacle non concluant). Méthode simple : pose la question. « Pourquoi est-il resté ? » → parce que = cause !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q2 — subordonnée de conséquence (qcm) → correct: a
(
  '37000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Laquelle de ces phrases contient une subordonnée circonstancielle de conséquence ?',
  null,
  '[{"id":"a","label":"Il a tellement travaillé qu''il a réussi son examen."},{"id":"b","label":"Il a travaillé pour qu''il réussisse son examen."},{"id":"c","label":"Il a travaillé bien qu''il fût épuisé."},{"id":"d","label":"Il a travaillé dès qu''il est rentré chez lui."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La phrase a) utilise la locution corrélative « tellement… que » — intensité + résultat, caractéristique de la conséquence. Le verbe est à l''indicatif car la conséquence est présentée comme réelle et accomplie. La phrase b) contient une subordonnée de but (« pour que » + subjonctif) — c''est l''intention, pas le résultat. La phrase c) contient une subordonnée de concession (« bien que » + subjonctif). La phrase d) contient une subordonnée de temps (« dès que » + indicatif). Retiens : conséquence = résultat réel, indicatif. But = intention future, subjonctif.',
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
  'Vrai ! La subordonnée circonstancielle de but (ou finale) — introduite par « pour que », « afin que », « de peur que », « de crainte que » — requiert systématiquement le subjonctif. Pourquoi ? Parce que le but désigne une action envisagée, non encore accomplie : le subjonctif exprime cette virtualité. Exemple : « Il parle lentement pour que les enfants comprennent. » Et si les sujets sont identiques, on utilise l''infinitif : « Il parle lentement pour être compris. » — deux sujets = subjonctif, même sujet = infinitif !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q4 — subordonnée d'opposition vs concession (qcm) → correct: b (was a, swapped a↔b)
(
  '37000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Quelle distinction peut-on faire entre « alors que » exprimant l''opposition et « bien que » exprimant la concession ?',
  null,
  '[{"id":"a","label":"Les deux locutions sont interchangeables sans différence de sens."},{"id":"b","label":"« Alors que » met en parallèle deux faits contraires (indicatif) ; « bien que » présente un obstacle non concluant (subjonctif)."},{"id":"c","label":"« Alors que » indique le temps ; « bien que » indique la cause."},{"id":"d","label":"« Alors que » requiert le subjonctif ; « bien que » requiert l''indicatif."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''opposition (« alors que », « tandis que » + indicatif) met en contraste deux faits sans lien de causalité. La concession (« bien que », « quoique » + subjonctif) présente un fait qui aurait dû empêcher l''action principale — mais ne l''a pas empêchée. Exemple d''opposition : « Il est bavard alors que son frère est silencieux. » Exemple de concession : « Il est sorti bien qu''il fût malade. » Le mode verbal est le marqueur formel clé : indicatif pour l''opposition, subjonctif pour la concession !',
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
  'Faux — et c''est un piège classique ! La locution « dès que » exprime l''antériorité immédiate, pas la simultanéité : l''action de la subordonnée se produit juste avant celle de la principale, déclenchant la suivante. Ce sont « quand », « lorsque », « pendant que » et « tandis que » qui marquent la simultanéité. « Dès que » et « aussitôt que » indiquent que le deuxième événement suit immédiatement le premier. Séquence, pas simultanéité — la nuance est petite mais essentielle !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q6 — subordonnée de condition (qcm) → correct: c
(
  '37000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Dans « Si tu travailles sérieusement, tu réussiras », quel mode emploie-t-on dans la subordonnée conditionnelle introduite par « si » ?',
  null,
  '[{"id":"a","label":"Le subjonctif présent"},{"id":"b","label":"Le conditionnel présent"},{"id":"c","label":"L''indicatif présent"},{"id":"d","label":"L''impératif présent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Règle fondamentale — à graver dans ta mémoire : « si » n''est jamais suivi du conditionnel ni du subjonctif ! Pour le système hypothétique réalisable (type 1), c''est « si » + indicatif présent → principale au futur. Pour l''irréel du présent (type 2) : « si » + imparfait → conditionnel présent. Pour l''irréel du passé (type 3) : « si » + plus-que-parfait → conditionnel passé. Trois systèmes, trois combinaisons — mais jamais de conditionnel après « si » !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q7 — subordonnée complétive COD (qcm) → correct: d (was b, swapped b↔d)
(
  '37000000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Dans « Je pense que tu as raison », quelle est la fonction de la proposition « que tu as raison » ?',
  null,
  '[{"id":"a","label":"Sujet de « pense »"},{"id":"b","label":"Complément circonstanciel de cause"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"Complément d''objet direct de « pense »"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La complétive introduite par « que » répond ici à « je pense quoi ? » → COD du verbe « penser ». Le verbe est à l''indicatif car « penser » exprime une opinion présentée comme vraie. Si le verbe principal exprimait un doute ou un souhait, on aurait le subjonctif : « je doute que tu aies raison ». La complétive COD est la subordonnée conjonctive la plus fréquente — et la nuance indicatif/subjonctif selon le verbe introducteur est régulièrement évaluée au CRPE !',
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
  'Vrai ! La proposition subordonnée complétive peut être sujet du verbe de la principale. Ici, « qu''il fasse beau demain » répond à « qu''est-ce qui serait une bonne nouvelle ? » — c''est bien le sujet de « serait ». Le subjonctif s''explique par le fait que la proposition sujet exprime un souhait ou une hypothèse. Cette construction, plus formelle, se rencontre surtout avec les verbes « être », « paraître », « sembler » et dans les textes soutenus.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q9 — distinguer relative et conjonctive (qcm) → correct: a
(
  '37000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_subordonnees_conjonctives',
  'Propositions subordonnées conjonctives', 'Avance',
  'qcm',
  'Comment distinguer la proposition subordonnée conjonctive de la proposition subordonnée relative, toutes deux pouvant être introduites par « que » ?',
  null,
  '[{"id":"a","label":"La relative introduit par « que » a un antécédent et « que » est pronom relatif COD ; la conjonctive est introduite par « que » conjonction de subordination sans antécédent."},{"id":"b","label":"La relative est toujours au subjonctif ; la conjonctive est toujours à l''indicatif."},{"id":"c","label":"Il est impossible de les distinguer formellement."},{"id":"d","label":"La relative se supprime toujours sans perte de sens ; la conjonctive est indispensable à la phrase."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le critère de distinction est net ! Dans la relative, « que » est un pronom relatif : il reprend un antécédent et remplit une fonction dans la subordonnée (généralement COD). Dans la conjonctive, « que » est une conjonction de subordination : pas d''antécédent, pas de fonction propre. Exemple relatif : « Le livre que tu lis » — « que » reprend « livre ». Exemple conjonctif : « Je sais que tu lis » — pas d''antécédent. Cherche l''antécédent : s''il existe → relative ; s''il n''existe pas → conjonctive !',
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
  'Vrai ! « Bien que » impose systématiquement le subjonctif — sans exception. C''est le cas de toutes les locutions de concession et d''opposition construites avec « que » final : « quoique », « encore que », « pour peu que », « à moins que »… Le subjonctif signale que le fait est envisagé comme insuffisant à empêcher l''action principale. Retiens le groupe : bien que / quoique / encore que → toujours subjonctif. Une règle simple, absolue, et régulièrement testée !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- ============================================================
-- SÉRIE 38 — Analyse grammaticale de phrases (Avancé / premium)
-- ============================================================

-- Q1 — identifier le sujet (qcm) → correct: a
(
  '38000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quel est le sujet du verbe « semblent » ?',
  'Les résultats obtenus lors du dernier examen semblent encourageants.',
  '[{"id":"a","label":"Les résultats obtenus lors du dernier examen"},{"id":"b","label":"lors du dernier examen"},{"id":"c","label":"encourageants"},{"id":"d","label":"du dernier examen"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour trouver le sujet, pose « Qui est-ce qui semble encourageant ? » → « Les résultats obtenus lors du dernier examen. » C''est le groupe nominal complet — noyau « résultats », épithète « obtenus » et complément du nom « lors du dernier examen ». Ne prends pas juste le noyau ! « Encourageants » est l''attribut du sujet, « lors du dernier examen » est complément circonstanciel de temps, « du dernier examen » est complément du nom « résultats ». L''analyse grammaticale, c''est identifier le rôle de chaque élément — pas juste nommer les mots.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q2 — identifier le COD (qcm) → correct: b
(
  '38000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quel est le complément d''objet direct du verbe « a envoyé » ?',
  'La directrice a envoyé un courrier aux parents d''élèves dès le lundi matin.',
  '[{"id":"a","label":"aux parents d''élèves"},{"id":"b","label":"un courrier"},{"id":"c","label":"dès le lundi matin"},{"id":"d","label":"La directrice"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le COD se construit sans préposition et répond à « a envoyé quoi ? » → « un courrier ». Impeccable ! « Aux parents d''élèves » est introduit par la préposition « à » → COI. « Dès le lundi matin » indique le moment → CC de temps. « La directrice » est le sujet, pas le COD. Retiens : identifier le COD, c''est indispensable pour appliquer la règle d''accord du participe passé avec « avoir » — accord avec le COD placé avant. Ici : « le courrier qu''elle a envoyé » → « envoyé » s''accorderait !',
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
  'Vrai ! Le COI est construit avec une préposition (ici « à ») et répond à « téléphoner à qui ? ». Le verbe « téléphoner » est à construction indirecte : on téléphone toujours à quelqu''un. Donc « à son médecin » = COI. « Chaque semaine » = CC de temps. La distinction COD / COI est fondamentale car elle détermine l''accord (ou non) du participe passé avec les pronoms compléments. Avec un COI, pas d''accord !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q4 — identifier l'attribut du sujet (qcm) → correct: d (was b, swapped b↔d)
(
  '38000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quelle est la fonction de « passionnante » ?',
  'Cette conférence sur la linguistique s''est révélée passionnante.',
  '[{"id":"a","label":"Épithète du nom « conférence »"},{"id":"b","label":"Complément circonstanciel de manière"},{"id":"c","label":"Complément du nom « linguistique »"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'L''attribut du sujet qualifie le sujet par l''intermédiaire d''un verbe attributif. Ici, « passionnante » qualifie « cette conférence » via le verbe « s''est révélée » — c''est un attribut du sujet. Il s''accorde avec le sujet : féminin singulier → « passionnante ». L''épithète, elle, serait directement rattachée au nom sans verbe intermédiaire : « une conférence passionnante ». La différence ? Le verbe attributif qui sert de lien entre sujet et attribut. Verbes attributifs à retenir : être, paraître, sembler, devenir, rester, se révéler, avoir l''air…',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q5 — identifier le CC de lieu (qcm) → correct: c
(
  '38000000-0000-0000-0000-000000000005',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quel groupe est complément circonstanciel de lieu ?',
  'Chaque matin, les enfants courent joyeusement dans la cour de récréation.',
  '[{"id":"a","label":"Chaque matin"},{"id":"b","label":"joyeusement"},{"id":"c","label":"dans la cour de récréation"},{"id":"d","label":"les enfants"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'C''est ça ! « Dans la cour de récréation » répond à « où ? » → CC de lieu. « Chaque matin » répond à « quand ? » → CC de temps. « Joyeusement » répond à « comment ? » → CC de manière. « Les enfants » est le sujet. Les trois grandes questions pour les CC : où ? quand ? comment ? (+ pourquoi, dans quel but, dans quelle mesure…). Et rappelle-toi : les CC sont généralement mobiles et supprimables — contrairement aux compléments essentiels comme le COD et le COI.',
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
  'Vrai ! Le complément du nom est un groupe prépositionnel qui se rattache à un nom et le précise. Ici, « de ses élèves » complète le nom « copies » — les copies appartenant aux élèves : valeur possessive. Pour vérifier, pose la question en te rattachant au nom, pas au verbe : « les copies de qui ? → de ses élèves ». Si tu le poses par rapport au verbe (corriger de ses élèves ?), ça ne fonctionne pas — preuve que c''est complément du nom et non COI.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q7 — fonction de l'infinitif (qcm) → correct: a (was b, swapped a↔b)
(
  '38000000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quelle est la fonction du groupe infinitif « lire cet ouvrage » ?',
  'Il recommande de lire cet ouvrage avant la conférence.',
  '[{"id":"a","label":"Complément d''objet indirect de « recommande »"},{"id":"b","label":"Sujet du verbe « recommande »"},{"id":"c","label":"Complément circonstanciel de but"},{"id":"d","label":"Complément du nom « conférence »"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le groupe infinitif « de lire cet ouvrage » est introduit par la préposition « de » et complète le verbe « recommander » — on recommande de faire quelque chose. C''est donc un COI (construction indirecte en « de + infinitif »). Ce n''est pas un CC de but car il n''exprime pas l''intention ou la finalité de l''action principale — il en est l''objet. Ce n''est pas un sujet car le sujet est « il ». Et « avant la conférence » est déjà complément circonstanciel de temps. Retiens : le groupe infinitif peut exercer toutes les fonctions nominales !',
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
  'Faux — et c''est une confusion fréquente au CRPE ! Dans cette phrase, « médecin de campagne » est l''attribut du sujet « il » relié par le verbe copule « est ». L''apposition est un groupe nominal juxtaposé ou séparé par une virgule, sans verbe intermédiaire : « Louis, médecin de campagne, soigne ses patients. » L''attribut, lui, est nécessairement relié au sujet par un verbe attributif. La clé de la distinction : y a-t-il un verbe copule entre les deux ? Oui → attribut. Non → apposition.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q9 — complément d'agent (qcm) → correct: b
(
  '38000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_analyse_grammaticale',
  'Analyse grammaticale de phrases', 'Avance',
  'qcm',
  'Dans la phrase ci-dessous, quelle est la fonction de « par les pompiers » ?',
  'Le blessé a été secouru rapidement par les pompiers.',
  '[{"id":"a","label":"Complément circonstanciel de moyen"},{"id":"b","label":"Complément d''agent"},{"id":"c","label":"Complément d''objet indirect"},{"id":"d","label":"Complément circonstanciel de cause"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le complément d''agent est propre à la voix passive ! Il désigne l''être qui accomplit l''action subie par le sujet, introduit par « par » (parfois « de »). Ici, la phrase est à la voix passive (auxiliaire « être » + participe passé) : « les pompiers » sont les agents de l''action. À la voix active, ils deviendraient sujet : « Les pompiers ont secouru le blessé rapidement. » Le CC de moyen, en revanche, indique l''instrument utilisé — « à l''aide d''une échelle » par exemple. Différence d''angle : l''agent fait l''action, le moyen est l''outil.',
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
  'Vrai ! Le verbe « offrir » est un verbe bitransitif — il peut prendre deux compléments d''objet. Ici, « un livre » = COD (offrir quoi ?) et « à chaque élève » = COI (offrir à qui ?). « En fin d''année » = CC de temps. Les verbes de don, de communication et d''échange — donner, envoyer, dire, offrir, montrer — acceptent fréquemment cette double complémentation. Enjeu pratique crucial : COD avant l''auxiliaire → accord du participe ; COI avant → pas d''accord !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- ============================================================
-- SÉRIE 39 — Transposition de textes (Avancé / premium)
-- ============================================================

-- Q1 — changement de personne je→il (qcm) → correct: d (was a, swapped a↔d)
(
  '39000000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'On transpose le texte suivant en remplaçant « je » par « il ». Quelle forme verbale correcte remplace « je lisais » ?',
  null,
  '[{"id":"a","label":"il lisaient"},{"id":"b","label":"il lisais"},{"id":"c","label":"il lisera"},{"id":"d","label":"il lisait"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'À l''imparfait, 1re personne → « -ais », 3e personne du singulier → « -ait ». Donc « je lisais » → « il lisait ». « Il lisais » est impossible (terminaison de 1re/2e personne), « il lisaient » correspond à la 3e personne du pluriel, « il lisera » est au futur simple et non à l''imparfait. La transposition, c''est systématique : même temps, mais terminaison adaptée à la nouvelle personne. La distinction « -ait » vs « -ais » à l''imparfait est une faute classique — et régulièrement piégée au CRPE !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q2 — changement de nombre singulier→pluriel (qcm) → correct: b (was a, swapped a↔b)
(
  '39000000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'On transpose la phrase « Un enfant jouait seul dans la cour » au pluriel (« Des enfants… »). Quelle est la forme correcte du verbe transposé ?',
  null,
  '[{"id":"a","label":"Des enfants jouait seuls dans la cour."},{"id":"b","label":"Des enfants jouaient seuls dans la cour."},{"id":"c","label":"Des enfants jouais seul dans la cour."},{"id":"d","label":"Des enfants jouera seuls dans la cour."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La transposition singulier → pluriel entraîne plusieurs modifications en cascade : le déterminant (« un » → « des »), l''accord du verbe (« jouait » → « jouaient »), et l''accord de l''adjectif attribut (« seul » → « seuls »). La phrase b) réalise correctement toutes ces modifications. La phrase a) conserve la forme singulière du verbe — erreur ! La phrase c) a une terminaison impossible ici. La phrase d) change le temps à tort (futur au lieu d''imparfait). Retiens : une transposition, c''est une révision systématique de tous les accords — pas juste le déterminant !',
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
  'Vrai ! Les verbes en « -cer » conservent le son [s] devant les voyelles « a » et « o » grâce à la cédille : « nous avançions », « il avançait », « vous avanciez ». À l''imparfait, toutes les personnes sauf nous/vous prennent la cédille. Attention à ne pas l''oublier dans une transposition ! Ce détail orthographique est souvent négligé mais bien testé au CRPE. Autres verbes concernés : lancer → il lançait, menacer → il menaçait…',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q4 — repérer une erreur de transposition (qcm) → correct: c (was b, swapped b↔c)
(
  '39000000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'Texte d''origine : « Je me lève tôt et je prends mon petit-déjeuner. » On transpose au présent avec le sujet « il ». Quelle version contient une erreur ?',
  null,
  '[{"id":"a","label":"Il se lève tôt et il prend son petit-déjeuner."},{"id":"b","label":"Il se lève tôt et prend son petit-déjeuner."},{"id":"c","label":"Il se lève tôt et il prends son petit-déjeuner."},{"id":"d","label":"Il se lève tôt et il prend son déjeuner."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La phrase c) contient l''erreur : « il prends » est impossible — 3e personne du singulier de « prendre » au présent = « prend » (sans « s »). Le « s » appartient aux 1re et 2e personnes du singulier. La phrase a) est correcte avec les formes adaptées à la 3e personne. La phrase b) est également correcte : le sujet « il » peut ne pas être répété devant le deuxième verbe coordonné. La phrase d) est correcte grammaticalement (même si « déjeuner » remplace « petit-déjeuner »). La transposition, c''est une vérification méthodique verbe par verbe — aucun ne doit passer entre les mailles !',
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
  'Faux ! La transposition au féminin déclenche une cascade de modifications : le déterminant (« un » → « une »), le nom (« acteur » → « actrice »), l''adjectif (« reconnu » → « reconnue »), et le participe passé « devenu » → « devenue ». Une transposition de genre, ça touche tous les mots variables qui s''accordent avec le nouveau sujet — déterminants, noms, adjectifs, participes passés. Pas seulement le premier élément qu''on aperçoit !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q6 — transposition et pronoms possessifs (qcm) → correct: a
(
  '39000000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'On transpose « Je lis mon livre dans ma chambre » en remplaçant « je » par « ils ». Quelle transposition est correcte ?',
  null,
  '[{"id":"a","label":"Ils lisent leur livre dans leur chambre."},{"id":"b","label":"Ils lisent mon livre dans ma chambre."},{"id":"c","label":"Ils lisent leurs livres dans leurs chambres."},{"id":"d","label":"Ils lisent son livre dans sa chambre."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Lors de la transposition de « je » à « ils », les déterminants possessifs changent aussi : « mon » et « ma » (1re pers. sing.) → « leur » (3e pers. plur. devant un nom singulier). La phrase a) est correcte. La phrase b) conserve incorrectement les possessifs de la 1re personne — erreur classique ! La phrase c) change le nombre des noms possédés, ce qui n''est pas demandé ici. La phrase d) utilise « son/sa » qui correspondent à la 3e personne du singulier, non du pluriel. La règle : les possessifs changent toujours avec la personne. N''oublie jamais les déterminants dans une transposition !',
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
  'Faux ! « Aller » se conjugue au passé composé avec l''auxiliaire « être » : « il va » → « il est allé ». C''est l''une des règles les plus importantes — et les plus piégées ! Les verbes qui se conjuguent avec « être » : les verbes de mouvement ou de changement d''état intransitifs (aller, venir, partir, arriver, naître, mourir…) et tous les verbes pronominaux. Lors d''une transposition de temps, vérifie systématiquement l''auxiliaire pour chaque verbe. L''auxiliaire, c''est le premier piège de la transposition !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q8 — transposition et négation (qcm) → correct: d (was a, swapped a↔d)
(
  '39000000-0000-0000-0000-000000000008',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'On transpose « Je ne mange rien » en remplaçant « je » par « nous ». Quelle forme est correcte ?',
  null,
  '[{"id":"a","label":"Nous ne mangeons pas."},{"id":"b","label":"Nous ne mangons rien."},{"id":"c","label":"Nous ne mangez rien."},{"id":"d","label":"Nous ne mangeons rien."}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Manger » est un verbe en « -ger » : devant une terminaison commençant par « o », il prend un « e » de soutien pour conserver le son [ʒ] — « nous mangeons » et non « nous mangons ». La négation « ne… rien » se conserve telle quelle. La phrase a) remplace incorrectement « rien » par « pas » — ce qui change le sens ! La phrase b) omet le « e » de soutien. La phrase c) emploie la 2e personne du pluriel au lieu de la 1re. Retiens les verbes en -ger (manger, nager, voyager…) : ils prennent toujours un « e » de soutien devant -ons.',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
),

-- Q9 — identifier tous les changements (qcm) → correct: c
(
  '39000000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'al_transposition_textes',
  'Transposition de textes', 'Avance',
  'qcm',
  'En transposant « Tu étais un bon élève » → « Vous étiez de bons élèves », combien de changements grammaticaux a-t-on effectués ?',
  null,
  '[{"id":"a","label":"2 changements : pronom et verbe"},{"id":"b","label":"3 changements : pronom, verbe et déterminant"},{"id":"c","label":"4 changements : pronom, verbe, déterminant et nom + adjectif"},{"id":"d","label":"1 seul changement : le pronom"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Quatre types de changements en cascade ! (1) Pronom : « tu » → « vous ». (2) Verbe : « étais » → « étiez ». (3) Déterminant : « un » → « de » (règle de « de » devant adjectif au pluriel). (4) Nom + adjectif : « élève » → « élèves » et « bon » → « bons ». Une transposition complète, c''est une révision systématique de toutes les catégories grammaticales variables. Ne t''arrête jamais au pronom et au verbe — les déterminants, les adjectifs et les noms changent aussi !',
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
  'Vrai, tout est correct ! (1) Pronom : « il » → « ils ». (2) Verbe : « se souvient » → « se souviennent » (avec doublement du « n » pour ce verbe du 3e groupe). (3) Possessif : « ses » → « leurs ». Le nom « vacances » reste au pluriel dans les deux cas — pas de changement nécessaire. Toutes les catégories grammaticales variables ont été correctement modifiées. C''est ça, une transposition bien conduite : méthodique, exhaustive, sans rien oublier !',
  'valide', 'CRPE Français — Analyse de la langue V2', 'premium', true
)

;
