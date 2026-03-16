-- CRPE Français — Grammaire V3 (3 séries × 10 questions)
-- subdomain : grammaire
-- Séries 64, 65, 66
-- Appliquer APRÈS seed_content_grammaire_v2.sql

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 64 — Compléments circonstanciels — Intermédiaire — free
-- topic_key : grm_complementscirco
-- ================================================================

('64000000-0000-0000-0000-000000000001','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quelle est la caractéristique syntaxique principale des compléments circonstanciels (CC) qui les distingue des compléments essentiels ?',null,
'[{"id":"a","label":"Les CC sont toujours placés en début de phrase"},{"id":"b","label":"Les CC sont généralement supprimables et déplaçables sans que la phrase perde son sens de base"},{"id":"c","label":"Les CC sont toujours introduits par une préposition"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les compléments circonstanciels se distinguent des compléments essentiels (COD, COI, attribut) par leur mobilité syntaxique : on peut les supprimer (la phrase reste grammaticale) et les déplacer (ils peuvent se trouver en tête, en milieu ou en fin de phrase). Ex : « Hier, il est parti à l''aube » → on peut supprimer « hier » et « à l''aube » sans détruire la phrase. Certains CC sont cependant non supprimables avec des verbes de lieu comme « aller », « venir ».',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000002','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Dans la phrase « Il travaille pour réussir son examen », quel est le CC souligné et quelle est sa nature grammaticale ?',null,
'[{"id":"a","label":"CC de but — groupe prépositionnel (infinitif introduit par pour)"},{"id":"b","label":"CC de cause — groupe nominal"},{"id":"c","label":"CC de conséquence — proposition subordonnée conjonctive"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Pour réussir son examen » répond à la question « dans quel but ? » → c''est un CC de but. Sa nature grammaticale est un groupe infinitif (ou proposition infinitive) introduit par la préposition « pour ». On le distingue du CC de cause (introduit par « parce que », « car ») et du CC de conséquence (introduit par « donc », « si bien que »).',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000003','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Identifiez le type de CC dans la phrase : « Malgré la pluie, les enfants jouaient dehors. »',null,
'[{"id":"a","label":"CC de temps"},{"id":"b","label":"CC de cause"},{"id":"c","label":"CC de concession (ou d''opposition)"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Malgré la pluie » exprime une concession : le fait qu''il pleuve ne s''oppose pas à ce que les enfants jouent — l''action se produit contrairement à ce qu''on pourrait attendre. La concession se distingue de la cause (qui explique) et du temps (qui situe). Elle est souvent introduite par « malgré » (+ GN), « bien que » (+ subjonctif), « quoique » ou « même si ».',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000004','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quelle est la nature grammaticale du CC dans : « Elle chante avec beaucoup de talent. » ?',null,
'[{"id":"a","label":"Adverbe"},{"id":"b","label":"Proposition subordonnée circonstancielle"},{"id":"c","label":"Groupe prépositionnel"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Avec beaucoup de talent » est un groupe prépositionnel (préposition « avec » + GN « beaucoup de talent »). C''est la nature la plus courante des CC. Un adverbe serait un mot unique (rapidement, bien). Une proposition subordonnée circonstancielle serait introduite par une conjonction de subordination (parce que, quand, si…) et comporterait un verbe conjugué.',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000005','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Dans la phrase « Si tu travailles, tu réussiras », quelle est la valeur de la proposition subordonnée circonstancielle ?',null,
'[{"id":"a","label":"CC de temps"},{"id":"b","label":"CC de condition (ou hypothèse)"},{"id":"c","label":"CC de but"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Si tu travailles » est une proposition subordonnée circonstancielle de condition (ou hypothèse), introduite par la conjonction de subordination « si ». Elle exprime la condition nécessaire à la réalisation du fait exprimé dans la principale. Les propositions conditionnelles avec « si » suivent des règles de concordance des temps strictes : si + présent → futur dans la principale ; si + imparfait → conditionnel présent.',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000006','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quel est le CC de manière dans la phrase suivante ? « Elle a répondu franchement, sans hésiter, d''une voix ferme. »',null,
'[{"id":"a","label":"Uniquement « franchement »"},{"id":"b","label":"Uniquement « d''une voix ferme »"},{"id":"c","label":"« franchement », « sans hésiter » et « d''une voix ferme » sont tous trois des CC de manière"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Les trois groupes répondent à la question « comment ? » et peuvent être supprimés/déplacés : ce sont tous des CC de manière. Ils illustrent la diversité des formes possibles : adverbe (franchement), groupe infinitif négatif (sans hésiter), groupe prépositionnel (d''une voix ferme). La multiplicité des CC de manière dans une phrase est stylistiquement notable et peut signaler une intention d''insistance.',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000007','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quelle manipulation syntaxique permet de distinguer un CC de temps d''un complément du nom ayant la même forme ?',null,
'[{"id":"a","label":"Le remplacement par un pronom personnel"},{"id":"b","label":"Le déplacement en tête de phrase ou la suppression"},{"id":"c","label":"La mise au passif de la phrase"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le complément du nom est non déplaçable et non supprimable (il appartient au GN). Comparer : « Le livre de l''été » (de l''été = CN, non déplaçable) vs « Je lis l''été » (l''été = CC de temps, déplaçable → « L''été, je lis »). La mise au passif ne porte que sur les COD. Le remplacement pronominal s''applique aux compléments essentiels du verbe.',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000008','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Dans la phrase « Il a tellement crié qu''il a perdu la voix », quelle est la valeur de la proposition soulignée ?',null,
'[{"id":"a","label":"CC de cause"},{"id":"b","label":"CC de conséquence"},{"id":"c","label":"CC de comparaison"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Qu''il a perdu la voix » est une proposition subordonnée de conséquence (ou consécutive), corrélée à l''intensif « tellement ». La structure tellement… que / si… que / assez… pour introduit une conséquence. Elle se distingue de la cause (qui explique l''antécédent) et de la comparaison (qui établit une équivalence ou une différence de degré).',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000009','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','vrai_faux',
'Vrai ou faux : un CC peut être réalisé par une proposition subordonnée participiale (ex : « La tempête étant passée, ils sortirent »).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. La proposition participiale absolue (sujet propre + participe) fonctionne comme un CC : elle est supprimable et déplaçable. « La tempête étant passée » exprime une valeur temporelle ou causale. C''est une construction littéraire fréquente dans les textes du CRPE. On la distingue des propositions participiales détachées sans sujet propre (« Arrivé tôt, il attendit »), où le participe se rapporte au sujet de la principale.',
'valide','CRPE Français V3 — Grammaire','free',true),

('64000000-0000-0000-0000-000000000010','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quel est le CC dans la phrase « Il parle comme s''il savait tout » et quelle en est la valeur ?',null,
'[{"id":"a","label":"CC de comparaison avec une nuance de supposition"},{"id":"b","label":"CC de cause"},{"id":"c","label":"CC de temps"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Comme s''il savait tout » est une proposition subordonnée comparative introduite par « comme si », qui exprime une comparaison avec une hypothèse irréelle (il ne sait pas tout, mais il se comporte comme si c''était le cas). Cette construction requiert l''imparfait du subjonctif ou, dans la langue courante, le subjonctif présent. Elle cumule les valeurs de comparaison et de supposition.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- ================================================================
-- SÉRIE 65 — Subordonnées relatives et complétives — Difficile — premium
-- topic_key : grm_subordonnees
-- ================================================================

('65000000-0000-0000-0000-000000000001','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Quelle est la différence syntaxique fondamentale entre une subordonnée relative déterminative et une subordonnée relative appositive (explicative) ?',null,
'[{"id":"a","label":"La relative déterminative est supprimable et apporte une information accessoire ; la relative appositive est non supprimable et restreint le sens de l''antécédent"},{"id":"b","label":"La relative déterminative restreint le sens de l''antécédent et est non supprimable ; la relative appositive est supprimable et ajoute une information accessoire"},{"id":"c","label":"Il n''y a aucune différence syntaxique, seulement une différence de ponctuation"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La relative déterminative (restrictive) est intégrée au GN : elle identifie parmi un ensemble. Ex : « Les élèves qui ont fini peuvent partir » (= seulement ceux-là). Elle est non supprimable sans perte de sens. La relative appositive (explicative) est détachée par des virgules et apporte une information sur un référent déjà identifié : « Les élèves, qui avaient tous fini, purent partir » (= tous). Elle est supprimable.',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000002','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Quelle est la fonction du pronom relatif « dont » dans la phrase « C''est un sujet dont il se souvient » ?',null,
'[{"id":"a","label":"Complément d''objet direct du verbe « se souvenir »"},{"id":"b","label":"Complément d''objet indirect (COI) du verbe « se souvenir », car ce verbe est construit avec « de »"},{"id":"c","label":"Sujet de la proposition subordonnée relative"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le verbe « se souvenir » se construit avec la préposition « de » : « se souvenir de quelque chose ». Le pronom relatif « dont » représente le complément introduit par « de » — il a donc la fonction de COI (complément de objet indirect du verbe « se souvenir »). Ne pas confondre avec « que » (COD) ni « qui » (sujet ou COI avec préposition autre que « de »). « Dont » peut aussi être complément du nom ou complément d''un adjectif.',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000003','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans la phrase « Je sais qu''il viendra », quelle est la nature et la fonction de la proposition subordonnée ?',null,
'[{"id":"a","label":"Proposition subordonnée relative, complément du nom « sais »"},{"id":"b","label":"Proposition subordonnée complétive introduite par « que », complément d''objet direct du verbe « savoir »"},{"id":"c","label":"Proposition subordonnée circonstancielle de cause"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Qu''il viendra » est une proposition subordonnée complétive (ou conjonctive complétive), introduite par la conjonction de subordination « que ». Elle a la fonction de COD du verbe « savoir » : on peut le vérifier en la remplaçant par un pronom (« Je le sais »). Elle se distingue de la relative (introduite par un pronom relatif) et de la circonstancielle (qui exprime une circonstance : cause, temps, condition…).',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000004','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Pourquoi emploie-t-on le subjonctif dans la proposition complétive suivante : « Il faut qu''il vienne » ?',null,
'[{"id":"a","label":"Parce que « il faut » est une expression de doute"},{"id":"b","label":"Parce que la complétive dépend d''une expression de nécessité ou d''obligation, qui exige le subjonctif"},{"id":"c","label":"Par simple convention stylistique sans règle grammaticale"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le mode du verbe dans la complétive dépend du verbe ou de l''expression de la principale. Le subjonctif s''emploie après : les verbes de volonté (vouloir, souhaiter), les expressions de nécessité (il faut, il est nécessaire), les verbes d''émotion (regretter, craindre), les verbes de doute (douter, nier). L''indicatif s''emploie après les verbes d''opinion (penser, croire, savoir) en phrase affirmative. Cette règle est une des plus importantes pour le CRPE.',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000005','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Identifiez la nature du pronom relatif dans : « Le livre auquel je pensais n''est plus disponible. »',null,
'[{"id":"a","label":"Pronom relatif simple (qui, que, dont, où)"},{"id":"b","label":"Pronom relatif composé (lequel, laquelle…) précédé d''une préposition — ici « à + lequel » → auquel"},{"id":"c","label":"Conjonction de subordination"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Auquel » est la forme contractée de « à + lequel ». Les pronoms relatifs composés (lequel, laquelle, lesquels, lesquelles) s''emploient avec des prépositions autres que « de » (pour lequel → dont) et « à » (auquel, à laquelle). On les utilise quand le verbe de la relative est construit avec une préposition : « penser à » → auquel, « s''intéresser à » → auquel, « être destiné à » → auquel.',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000006','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans la phrase « Il est possible qu''elle parte demain », la complétive est-elle sujet, COD ou attribut ?',null,
'[{"id":"a","label":"COD du verbe « est »"},{"id":"b","label":"Sujet réel du verbe « est possible », le sujet apparent étant « il »"},{"id":"c","label":"Attribut du sujet « il »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans les constructions impersonnelles (il est possible, il faut, il semble…), « il » est un sujet apparent (grammatical) vide de sens. La complétive « qu''elle parte » est le sujet réel (logique) du verbe. On peut le vérifier en transformant : « Qu''elle parte demain est possible. » Le sujet réel est postposé au verbe grâce au sujet apparent « il », ce qui est une construction très fréquente en français.',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000007','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Quelle est la différence entre une relative avec antécédent et une relative sans antécédent (ou substantive) ?',null,
'[{"id":"a","label":"La relative sans antécédent n''existe pas en français moderne"},{"id":"b","label":"La relative avec antécédent modifie un nom (ou pronom) dans la principale ; la relative sans antécédent fonctionne comme un GN et joue une fonction nominale (sujet, COD…)"},{"id":"c","label":"La relative sans antécédent ne peut s''employer qu''avec « qui »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les relatives sans antécédent (ou relatives substantives) sont introduites par « qui », « quoi », « où », « ce qui », « ce que »… et jouent le rôle d''un GN : « Qui dort dîne » (sujet) ; « Fais ce que tu veux » (COD). Elles se distinguent des relatives avec antécédent qui modifient un nom déjà présent : « Le livre que tu lis ». Cette catégorie est souvent négligée en classe mais très présente dans les textes littéraires.',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000008','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans la phrase « Je crains qu''il ne parte », quelle est la valeur du « ne » ?',null,
'[{"id":"a","label":"Négation standard — la phrase signifie qu''il ne partira pas"},{"id":"b","label":"Ne explétif — il n''a pas de valeur négative mais est exigé par certains verbes de crainte, avant un verbe au subjonctif"},{"id":"c","label":"Ne pléonastique introduisant une double négation"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le « ne » explétif (ou ne pléonastique) s''emploie après certains verbes exprimant la crainte (craindre, avoir peur), le doute négatif (douter que… pas), les comparatifs d''inégalité, et les conjonctions « avant que », « à moins que ». Il n''a pas de valeur négative : « Je crains qu''il ne parte » signifie qu''on craint effectivement son départ. C''est une construction soutenue, fréquente dans les textes classiques et attendue au CRPE.',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000009','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','vrai_faux',
'Vrai ou faux : dans la phrase « Elle attend que tu arrives », le verbe de la complétive est à l''indicatif car « attendre » est un verbe de certitude.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. « Attendre que » se construit avec le subjonctif, non parce qu''« attendre » exprime une certitude, mais parce qu''il exprime une attente, une volonté orientée vers le futur. La phrase correcte est : « Elle attend que tu arrives. » On confond souvent les verbes d''attente avec les verbes de perception ou de certitude (voir, savoir, croire en phrase affirmative), qui eux admettent l''indicatif.',
'valide','CRPE Français V3 — Grammaire','premium',true),

('65000000-0000-0000-0000-000000000010','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Laquelle des phrases suivantes contient une proposition subordonnée relative avec antécédent à valeur de complétive (relative périphrastique) ?',null,
'[{"id":"a","label":"« Je vois l''oiseau qui chante. »"},{"id":"b","label":"« J''entends dire qu''il est parti. »"},{"id":"c","label":"« Ce que tu dis m''étonne. »"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Ce que tu dis » est une relative sans antécédent nominal explicite, avec l''antécédent neutre « ce » : elle fonctionne comme un GN (ici, sujet de « m''étonne »). Elle est parfois appelée relative substantive. En (a), « qui chante » est une relative déterminative ordinaire. En (b), « qu''il est parti » est une complétive COD de « dire ». La phrase (c) illustre la valeur nominale que peut prendre la relative avec « ce ».',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- ================================================================
-- SÉRIE 66 — Structure du GN et du GV — Intermédiaire — free
-- topic_key : grm_gn_gv_structure
-- ================================================================

('66000000-0000-0000-0000-000000000001','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quels sont les constituants obligatoires du groupe nominal (GN) minimal ?',null,
'[{"id":"a","label":"Déterminant + Nom + Adjectif"},{"id":"b","label":"Déterminant + Nom (le déterminant peut être absent dans certains cas)"},{"id":"c","label":"Nom + Adjectif obligatoirement"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le GN minimal est formé d''un nom noyau, généralement précédé d''un déterminant (article, adjectif possessif, démonstratif…). L''adjectif et les expansions du nom (relative, complément du nom) sont des éléments facultatifs. Le déterminant peut être absent dans des cas particuliers : noms propres (« Marie arrive »), noms en apposition (« Marine, directrice de l''école, parla »), certaines constructions figées (« avoir faim »).',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000002','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quelles sont les expansions possibles du nom dans le GN ?',null,
'[{"id":"a","label":"Uniquement l''adjectif qualificatif épithète"},{"id":"b","label":"L''adjectif épithète, la proposition subordonnée relative, le complément du nom (groupe prépositionnel) et l''adjectif apposé"},{"id":"c","label":"Uniquement les propositions relatives"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le nom peut être expandu de plusieurs façons : adjectif épithète (« une belle maison »), complément du nom / groupe prépositionnel (« la maison de mes parents »), proposition subordonnée relative (« la maison qui se trouve au bout du chemin »), adjectif ou GN en apposition (« la maison, ancienne bâtisse familiale »). Toutes ces expansions enrichissent le GN sans en modifier la fonction dans la phrase.',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000003','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quel est le noyau du groupe verbal (GV) dans la phrase « Les élèves semblent fatigués. » ?',null,
'[{"id":"a","label":"« semblent » uniquement"},{"id":"b","label":"« fatigués » uniquement"},{"id":"c","label":"Le verbe copule « semblent » est le noyau du GV, dont l''attribut « fatigués » est un constituant obligatoire"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Avec les verbes attributifs (être, paraître, sembler, devenir, rester…), le GV contient obligatoirement l''attribut du sujet : sans lui, la phrase est incomplète. Le verbe attributif est le noyau syntaxique du GV, mais l''attribut est son complément essentiel (non supprimable). On distingue ce GV attributif du GV avec verbe transitif (où le COD est essentiel mais de nature différente) et du GV avec verbe intransitif (sans complément essentiel).',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000004','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Dans la phrase « Elle offre des fleurs à sa mère », quels sont les constituants du GV et leurs fonctions ?',null,
'[{"id":"a","label":"Verbe (offre) + COD (des fleurs) + CC de lieu (à sa mère)"},{"id":"b","label":"Verbe (offre) + COD (des fleurs) + COI (à sa mère)"},{"id":"c","label":"Verbe (offre) + attribut (des fleurs) + CC de but (à sa mère)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le verbe « offrir » est di-transitif : il se construit avec un COD (la chose offerte : « des fleurs ») et un COI (le bénéficiaire introduit par « à » : « à sa mère »). On vérifie : COD → remplaçable par « les » (Elle les offre) ; COI → remplaçable par « lui » (Elle lui offre des fleurs). Ce n''est pas un CC car « à sa mère » est essentiel : *« Elle offre des fleurs » sans destinataire reste grammatical mais change le sens.',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000005','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quelle est la différence entre un attribut du sujet et un attribut de l''objet ?',null,
'[{"id":"a","label":"L''attribut du sujet qualifie le sujet via un verbe attributif ; l''attribut de l''objet qualifie le COD via un verbe transitif"},{"id":"b","label":"L''attribut du sujet est toujours un adjectif ; l''attribut de l''objet est toujours un nom"},{"id":"c","label":"Il n''y a pas de différence : les deux désignent la même fonction"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''attribut du sujet se construit avec un verbe attributif (être, paraître, devenir…) : « Il est médecin » — « médecin » qualifie le sujet « il ». L''attribut de l''objet qualifie le COD d''un verbe transitif spécifique (trouver, juger, nommer, élire, rendre…) : « Je le trouve fatigué » — « fatigué » qualifie le COD « le ». Les deux peuvent être adjectifs ou noms. L''attribut de l''objet est moins enseigné mais attendu au CRPE.',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000006','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Identifiez le constituant en italique dans : « Un vieux chêne noueux se dressait au bord du chemin. » Le groupe souligné est « au bord du chemin ».',null,
'[{"id":"a","label":"Complément du nom du sujet"},{"id":"b","label":"Complément circonstanciel de lieu, déplaçable et supprimable"},{"id":"c","label":"COI du verbe « se dresser »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Au bord du chemin » est un groupe prépositionnel CC de lieu : il peut être déplacé en tête de phrase (« Au bord du chemin, un vieux chêne se dressait ») et supprimé sans détruire la phrase (« Un vieux chêne se dressait »). Il n''est pas CN car il ne dépend pas du GN sujet mais du verbe. Il n''est pas COI car « se dresser » ne se construit pas avec « à ». Attention : avec des verbes comme « aller », « habiter », le CC de lieu devient essentiel.',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000007','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Dans « Les enfants jouaient bruyamment depuis deux heures », combien y a-t-il de constituants dans le GV et de quelle nature sont-ils ?',null,
'[{"id":"a","label":"1 constituant : le verbe seul"},{"id":"b","label":"3 constituants : le verbe + un CC de manière + un CC de temps"},{"id":"c","label":"2 constituants : le verbe + un COD"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le GV est « jouaient bruyamment depuis deux heures ». Il contient : le verbe noyau « jouaient » ; le CC de manière « bruyamment » (adverbe, supprimable, répond à « comment ? ») ; le CC de temps « depuis deux heures » (groupe prépositionnel, supprimable, répond à « depuis quand ? »). Il n''y a pas de COD car « jouer » est ici employé intransitivement. Les deux CC sont accessoires au sens strict (le verbe « jouer » peut exister seul).',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000008','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quelle est la structure du GN « la décision courageuse de ce juge intègre » ?',null,
'[{"id":"a","label":"Dét + N + Adj épithète + CN (groupe prépositionnel contenant lui-même un GN expandu par adjectif)"},{"id":"b","label":"Dét + N + Adj épithète + proposition relative"},{"id":"c","label":"Dét + N + Adj apposé + CC de manière"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Analyse : « la » (déterminant) + « décision » (nom noyau) + « courageuse » (adjectif épithète) + « de ce juge intègre » (complément du nom = groupe prépositionnel). Ce complément du nom contient lui-même un GN : « ce juge intègre » = dét. (ce) + N (juge) + adj. épithète (intègre). Cette structure enchâssée est courante et illustre la récursivité du GN : un GN peut contenir un autre GN via un complément du nom.',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000009','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','vrai_faux',
'Vrai ou faux : dans la phrase « Elle mange rapidement », le groupe verbal est formé du seul verbe « mange », car « rapidement » est un CC extérieur au GV.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Les adverbes de manière comme « rapidement » sont généralement inclus dans le GV car ils modifient directement le verbe. Le GV est « mange rapidement ». Cette question est un point de débat dans les grammaires : certaines analyses (grammaire générative) intègrent les adverbes au GV, d''autres les traitent comme des éléments périphériques. Pour le CRPE, l''usage dominant inclut les adverbes de manière dans le GV.',
'valide','CRPE Français V3 — Grammaire','free',true),

('66000000-0000-0000-0000-000000000010','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quelle manipulation syntaxique permet de vérifier qu''un groupe est bien un GN (et non un autre type de groupe) ?',null,
'[{"id":"a","label":"Le déplacer en tête de phrase"},{"id":"b","label":"Le remplacer par un pronom (il, elle, le, lui, en, y…)"},{"id":"c","label":"Le mettre au pluriel"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La pronominalisation est la manipulation canonique pour identifier un GN : si un groupe peut être remplacé par un pronom (il, elle, ils, le, la, lui, en, y…), c''est un GN. Ex : « Je vois la maison rouge » → « Je la vois » (GN COD confirmé). Le déplacement identifie plutôt les CC. La mise au pluriel vérifie les accords mais pas la nature du groupe. La pronominalisation permet aussi de distinguer COD (le/la) de COI (lui/y/en).',
'valide','CRPE Français V3 — Grammaire','free',true)

;
