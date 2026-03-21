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

-- Q1 correct=b (inchangé)
('64000000-0000-0000-0000-000000000001','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quelle est la caractéristique syntaxique principale des compléments circonstanciels (CC) qui les distingue des compléments essentiels ?',null,
'[{"id":"a","label":"Les CC sont toujours placés en début de phrase"},{"id":"b","label":"Les CC sont généralement supprimables et déplaçables sans que la phrase perde son sens de base"},{"id":"c","label":"Les CC sont toujours introduits par une préposition"},{"id":"d","label":"Les CC remplacent toujours le sujet grammatical de la phrase"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Retiens ce duo magique pour les CC : tu peux les SUPPRIMER et les DÉPLACER ! « Hier, il est parti à l''aube » → enlève « hier » et « à l''aube », la phrase tient encore. C''est ça qui les distingue des compléments essentiels comme le COD ou l''attribut. Petite nuance à connaître : avec des verbes de lieu comme « aller » ou « venir », le CC de lieu peut devenir non supprimable — mais c''est l''exception, pas la règle.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q2 correct=a (inchangé)
('64000000-0000-0000-0000-000000000002','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Dans la phrase « Il travaille pour réussir son examen », quel est le CC souligné et quelle est sa nature grammaticale ?',null,
'[{"id":"a","label":"CC de but — groupe prépositionnel (infinitif introduit par pour)"},{"id":"b","label":"CC de cause — groupe nominal"},{"id":"c","label":"CC de conséquence — proposition subordonnée conjonctive"},{"id":"d","label":"CC de manière — adverbe de degré"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Pour réussir son examen » répond à « dans quel but ? » → CC de but, classé ! Sa nature grammaticale : groupe infinitif introduit par « pour ». Attention à ne pas le confondre avec la cause (« parce que », « car ») ni la conséquence (« donc », « si bien que »). Le truc : la cause regarde en arrière (ce qui a provoqué), le but regarde en avant (ce qu''on vise). Ici on vise la réussite → but.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q3 correct=c (inchangé)
('64000000-0000-0000-0000-000000000003','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Identifiez le type de CC dans la phrase : « Malgré la pluie, les enfants jouaient dehors. »',null,
'[{"id":"a","label":"CC de temps"},{"id":"b","label":"CC de cause"},{"id":"c","label":"CC de concession (ou d''opposition)"},{"id":"d","label":"CC de condition"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Malgré la pluie » — voilà un CC de concession ! Le signal ? Il pleut, mais les enfants jouent quand même. L''action se produit CONTRAIREMENT à ce qu''on attendrait. La concession dit : « obstacle présent, action quand même ». On la distingue de la cause (qui explique pourquoi) et du temps (qui situe quand). Ses marqueurs favoris : « malgré » + GN, « bien que » + subjonctif, « même si » + indicatif.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q4 correct=c (inchangé)
('64000000-0000-0000-0000-000000000004','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quelle est la nature grammaticale du CC dans : « Elle chante avec beaucoup de talent. » ?',null,
'[{"id":"a","label":"Adverbe"},{"id":"b","label":"Proposition subordonnée circonstancielle"},{"id":"c","label":"Groupe prépositionnel"},{"id":"d","label":"Groupe adjectival épithète"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Avec beaucoup de talent » — c''est un groupe prépositionnel : préposition « avec » + GN « beaucoup de talent ». C''est la forme la plus courante des CC, retiens-le bien ! Un adverbe, ça serait un mot unique comme « rapidement » ou « bien ». Une proposition subordonnée circonstancielle, ça aurait un verbe conjugué (« parce qu''elle a du talent »). Ici, pas de verbe conjugué → groupe prépositionnel.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q5 correct=b (inchangé)
('64000000-0000-0000-0000-000000000005','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Dans la phrase « Si tu travailles, tu réussiras », quelle est la valeur de la proposition subordonnée circonstancielle ?',null,
'[{"id":"a","label":"CC de temps"},{"id":"b","label":"CC de condition (ou hypothèse)"},{"id":"c","label":"CC de but"},{"id":"d","label":"CC de concession"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Si tu travailles » — CC de condition, c''est une certitude ! « Si » + une condition, c''est LE marqueur de l''hypothèse. Et retiens bien les règles de concordance des temps avec « si » : si + présent → futur dans la principale (comme ici !), si + imparfait → conditionnel présent. Ces règles tombent souvent au CRPE. Ne mets JAMAIS le conditionnel après « si » conditionnel — erreur classique à éviter absolument.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q6 correct=c (inchangé)
('64000000-0000-0000-0000-000000000006','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quel est le CC de manière dans la phrase suivante ? « Elle a répondu franchement, sans hésiter, d''une voix ferme. »',null,
'[{"id":"a","label":"Uniquement « franchement »"},{"id":"b","label":"Uniquement « d''une voix ferme »"},{"id":"c","label":"« franchement », « sans hésiter » et « d''une voix ferme » sont tous trois des CC de manière"},{"id":"d","label":"« sans hésiter » uniquement, car les autres sont des CC de temps"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Exactement ! Les trois répondent à « comment ? » et peuvent tous être supprimés ou déplacés — ce sont bien trois CC de manière. Et regarde la variété des formes : un adverbe (franchement), un groupe infinitif négatif (sans hésiter), un groupe prépositionnel (d''une voix ferme). Cette accumulation dans la phrase n''est pas anodine : c''est un choix stylistique fort, une insistance sur la façon dont elle a répondu.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q7 correct=d (was b — swapped: "déplacement/suppression" moves to d, old d slot gets new wrong answer)
('64000000-0000-0000-0000-000000000007','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quelle manipulation syntaxique permet de distinguer un CC de temps d''un complément du nom ayant la même forme ?',null,
'[{"id":"a","label":"Le remplacement par un pronom personnel"},{"id":"b","label":"La mise au passif de la phrase"},{"id":"c","label":"La nominalisation du verbe principal"},{"id":"d","label":"Le déplacement en tête de phrase ou la suppression"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le test magique : déplace ou supprime le groupe ! Le complément du nom, lui, est prisonnier de son GN — il ne peut pas bouger. Compare : « Le livre de l''été » (de l''été = complément du nom, non déplaçable) vs « Je lis l''été » (l''été = CC de temps, déplaçable → « L''été, je lis »). La mise au passif, ça concerne uniquement les COD. Le remplacement pronominal, c''est pour les compléments essentiels du verbe.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q8 correct=d (was b — swapped: "CC de conséquence" moves to d, old d slot gets new wrong answer)
('64000000-0000-0000-0000-000000000008','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Dans la phrase « Il a tellement crié qu''il a perdu la voix », quelle est la valeur de la proposition soulignée ?',null,
'[{"id":"a","label":"CC de cause"},{"id":"b","label":"CC de comparaison"},{"id":"c","label":"CC de but"},{"id":"d","label":"CC de conséquence"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'CC de conséquence — bien joué si tu l''as vu ! Le signal ici, c''est la structure « tellement… que » : l''intensité du cri a ENTRAÎNÉ la perte de la voix. La conséquence décrit un résultat réel qui découle de l''action. Retiens les structures consécutives : tellement… que / si… que / assez… pour. La cause, elle, explique l''ORIGINE de l''action. La comparaison établit une équivalence ou une différence de degré — rien à voir ici.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q9 vrai_faux — inchangé
('64000000-0000-0000-0000-000000000009','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','vrai_faux',
'Vrai ou faux : un CC peut être réalisé par une proposition subordonnée participiale (ex : « La tempête étant passée, ils sortirent »).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai, et c''est un point qu''on voit souvent dans les textes du CRPE ! La proposition participiale absolue (sujet propre + participe) fonctionne comme un CC : supprimable, déplaçable. « La tempête étant passée » exprime une valeur temporelle ou causale selon le contexte. Attention à bien distinguer cette construction de la participiale sans sujet propre comme « Arrivé tôt, il attendit » — là, le participe se rapporte directement au sujet de la principale.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q10 correct=a (inchangé)
('64000000-0000-0000-0000-000000000010','Francais','grammaire','grm_complementscirco','Compléments circonstanciels','Intermediaire','qcm',
'Quel est le CC dans la phrase « Il parle comme s''il savait tout » et quelle en est la valeur ?',null,
'[{"id":"a","label":"CC de comparaison avec une nuance de supposition"},{"id":"b","label":"CC de cause"},{"id":"c","label":"CC de temps"},{"id":"d","label":"CC de concession introduit par « comme si »"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Comme s''il savait tout » — CC de comparaison avec une nuance de supposition, bravo ! La structure « comme si » est précieuse : elle exprime une comparaison avec une hypothèse IRRÉELLE (il ne sait pas tout, mais il parle comme si c''était le cas). C''est donc une double valeur : comparaison + supposition. Et question de langue : cette construction exige l''imparfait dans la langue soutenue, ou le subjonctif présent dans la langue courante.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- ================================================================
-- SÉRIE 65 — Subordonnées relatives et complétives — Difficile — premium
-- topic_key : grm_subordonnees
-- Distribution cible : a(Q3,Q6) b(Q1,Q4) c(Q5,Q10) d(Q2,Q7,Q8)
-- ================================================================

-- Q1 correct=b (inchangé)
('65000000-0000-0000-0000-000000000001','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Quelle est la différence syntaxique fondamentale entre une subordonnée relative déterminative et une subordonnée relative appositive (explicative) ?',null,
'[{"id":"a","label":"La relative déterminative est supprimable et apporte une information accessoire ; la relative appositive est non supprimable et restreint le sens de l''antécédent"},{"id":"b","label":"La relative déterminative restreint le sens de l''antécédent et est non supprimable ; la relative appositive est supprimable et ajoute une information accessoire"},{"id":"c","label":"Il n''y a aucune différence syntaxique, seulement une différence de ponctuation"},{"id":"d","label":"La relative déterminative s''emploie uniquement avec « qui » ; la relative appositive s''emploie uniquement avec « que »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Ce point est incontournable au CRPE, alors accroche-toi ! La déterminative RESTREINT : « Les élèves qui ont fini peuvent partir » — seulement ceux-là, pas tous. Elle est non supprimable sans perte de sens. L''appositive, elle, est entre virgules et AJOUTE une info sur un référent déjà connu : « Les élèves, qui avaient tous fini, purent partir » — ici on parle de TOUS les élèves. Tu peux la supprimer, la phrase reste sensée. Virgules = appositive, pas de virgules = déterminative.',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q2 correct=d (was b — "COI de se souvenir" moves to d; b becomes new wrong answer)
('65000000-0000-0000-0000-000000000002','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Quelle est la fonction du pronom relatif « dont » dans la phrase « C''est un sujet dont il se souvient » ?',null,
'[{"id":"a","label":"Complément d''objet direct du verbe « se souvenir »"},{"id":"b","label":"Sujet de la proposition subordonnée relative"},{"id":"c","label":"Attribut du sujet dans la proposition subordonnée"},{"id":"d","label":"Complément d''objet indirect (COI) du verbe « se souvenir », car ce verbe est construit avec « de »"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Astuce imparable : pour trouver la fonction de « dont », reconstruit la phrase sans la relative ! « Il se souvient de ce sujet » → « de quelque chose » = COI. « Dont » représente toujours le complément introduit par « de ». Attention au piège classique : ne pas confondre « dont » (COI, complément du nom ou complément d''adjectif avec « de ») avec « que » (COD) ou « qui » (sujet). « Dont » peut aussi être complément du nom (« le livre dont j''ai lu les premières pages ») ou complément d''adjectif (« fier dont »).',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q3 correct=a (was b — "complétive COD de savoir" moves to a; b becomes new wrong answer)
('65000000-0000-0000-0000-000000000003','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans la phrase « Je sais qu''il viendra », quelle est la nature et la fonction de la proposition subordonnée ?',null,
'[{"id":"a","label":"Proposition subordonnée complétive introduite par « que », complément d''objet direct du verbe « savoir »"},{"id":"b","label":"Proposition subordonnée relative, complément du nom « sais »"},{"id":"c","label":"Proposition subordonnée circonstancielle de cause"},{"id":"d","label":"Proposition subordonnée complétive sujet du verbe « savoir »"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'C''est ça ! Subordonnée complétive, COD du verbe « savoir ». Le test infaillible : remplace-la par un pronom → « Je le sais ». Ça marche ? C''est un COD. Et retiens la différence fondamentale : la complétive est introduite par la CONJONCTION de subordination « que » (sans antécédent), la relative par un PRONOM RELATIF « que/qui/dont » (avec antécédent). Ici, « qu''il viendra » n''a pas d''antécédent nominal → complétive, pas relative.',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q4 correct=b (inchangé)
('65000000-0000-0000-0000-000000000004','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Pourquoi emploie-t-on le subjonctif dans la proposition complétive suivante : « Il faut qu''il vienne » ?',null,
'[{"id":"a","label":"Parce que « il faut » est une expression de doute"},{"id":"b","label":"Parce que la complétive dépend d''une expression de nécessité ou d''obligation, qui exige le subjonctif"},{"id":"c","label":"Par simple convention stylistique sans règle grammaticale"},{"id":"d","label":"Parce que le verbe « venir » est irrégulier et se conjugue obligatoirement au subjonctif dans toute complétive"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Voilà une règle à graver dans ta mémoire — elle tombe au CRPE ! Le mode dans la complétive dépend du verbe principal. Subjonctif obligatoire après : les verbes de volonté (vouloir, souhaiter), les expressions de nécessité (il faut, il est nécessaire), les verbes d''émotion (regretter, craindre), les verbes de doute (douter, nier). L''indicatif, lui, s''emploie après les verbes d''opinion en phrase AFFIRMATIVE (penser, croire, savoir). Cette bascule affirmatif/négatif change tout pour le mode !',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q5 correct=c (was b — "pronom relatif composé" moves to c; b becomes new wrong answer)
('65000000-0000-0000-0000-000000000005','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Identifiez la nature du pronom relatif dans : « Le livre auquel je pensais n''est plus disponible. »',null,
'[{"id":"a","label":"Conjonction de subordination"},{"id":"b","label":"Pronom relatif simple (qui, que, dont, où) employé après une préposition"},{"id":"c","label":"Pronom relatif composé (lequel, laquelle…) précédé d''une préposition — ici « à + lequel » → auquel"},{"id":"d","label":"Pronom démonstratif à valeur relative"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Auquel » = « à + lequel » contracté. Retiens le principe : on utilise un pronom relatif composé quand le verbe de la relative se construit avec une préposition. « Penser à » → auquel. « S''intéresser à » → auquel. Et pour « de » → dont (pas « duquel » sauf avec une préposition complexe). Exemples : « la raison pour laquelle », « le projet auquel », « la personne à laquelle ». Ces formes composées font souvent trébucher — mais une fois le mécanisme compris, c''est logique !',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q6 correct=a (was b — "sujet réel de il est possible" moves to a; b becomes new wrong answer)
('65000000-0000-0000-0000-000000000006','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans la phrase « Il est possible qu''elle parte demain », la complétive est-elle sujet, COD ou attribut ?',null,
'[{"id":"a","label":"Sujet réel du verbe « est possible », le sujet apparent étant « il »"},{"id":"b","label":"COD du verbe « est »"},{"id":"c","label":"Attribut du sujet « il »"},{"id":"d","label":"Complément circonstanciel de temps de la phrase"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Bienvenue dans les constructions impersonnelles ! « Il » ici, c''est un sujet APPARENT — il est grammatical mais vide de sens. Le vrai sujet logique, c''est « qu''elle parte demain ». Le test : retourne la phrase → « Qu''elle parte demain est possible. » Tu vois ? La complétive prend la place de sujet. Cette postposition du sujet réel grâce à « il » impersonnel est très fréquente en français. Il faut bien distinguer ce « il » du pronom personnel qui renvoie à une personne réelle.',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q7 correct=d (was b — "relative sans antécédent fonctionne comme GN" moves to d; b becomes new wrong answer)
('65000000-0000-0000-0000-000000000007','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Quelle est la différence entre une relative avec antécédent et une relative sans antécédent (ou substantive) ?',null,
'[{"id":"a","label":"La relative sans antécédent n''existe pas en français moderne"},{"id":"b","label":"La relative sans antécédent ne peut s''employer qu''avec « dont »"},{"id":"c","label":"La relative avec antécédent fonctionne comme un GN ; la relative sans antécédent modifie un nom déjà présent dans la principale"},{"id":"d","label":"La relative avec antécédent modifie un nom (ou pronom) dans la principale ; la relative sans antécédent fonctionne comme un GN et joue une fonction nominale (sujet, COD…)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Les relatives sans antécédent — aussi appelées relatives substantives — c''est un point souvent oublié mais qui peut faire la différence au CRPE ! Elles fonctionnent comme un groupe nominal entier : « Qui dort dîne » (sujet = « qui dort ») ; « Fais ce que tu veux » (COD = « ce que tu veux »). Elles sont introduites par « qui », « ce qui », « ce que », « où »… Contrairement aux relatives classiques, elles ne modifient pas un nom déjà présent — elles SONT le nom.',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q8 correct=d (was b — "ne explétif" moves to d; b becomes new wrong answer)
('65000000-0000-0000-0000-000000000008','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Dans la phrase « Je crains qu''il ne parte », quelle est la valeur du « ne » ?',null,
'[{"id":"a","label":"Négation standard — la phrase signifie qu''il ne partira pas"},{"id":"b","label":"Ne pléonastique introduisant une double négation renforcée"},{"id":"c","label":"Négation partielle portant uniquement sur le sujet de la subordonnée"},{"id":"d","label":"Ne explétif — il n''a pas de valeur négative mais est exigé par certains verbes de crainte, avant un verbe au subjonctif"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Attention, piège classique ! Ce « ne » explétif trompe tout le monde au premier coup d''œil. « Je crains qu''il ne parte » — ça veut dire qu''on CRAINT qu''il parte. Le « ne » n''annule pas l''action, il est juste exigé par le verbe de crainte. On le trouve après : craindre, avoir peur, avant que, à moins que… C''est une construction soutenue, fréquente dans les textes littéraires du CRPE. Retiens : ne explétif = présent mais pas négatif.',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q9 vrai_faux — inchangé
('65000000-0000-0000-0000-000000000009','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','vrai_faux',
'Vrai ou faux : dans la phrase « Elle attend que tu arrives », le verbe de la complétive est à l''indicatif car « attendre » est un verbe de certitude.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Et c''est un piège redoutable. « Attendre que » exige le subjonctif — pas parce qu''attendre exprime un doute, mais parce qu''il exprime une attente, une volonté orientée vers le futur. La forme juste : « Elle attend que tu arrives. » Ne confonds pas les verbes d''attente avec les verbes de perception ou de certitude comme voir, savoir, croire en phrase affirmative — ceux-là admettent l''indicatif. C''est la nuance sémantique qui commande le mode, pas la simple "certitude".',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- Q10 correct=c (inchangé)
('65000000-0000-0000-0000-000000000010','Francais','grammaire','grm_subordonnees','Subordonnées relatives et complétives','Difficile','qcm',
'Laquelle des phrases suivantes contient une proposition subordonnée relative avec antécédent à valeur de complétive (relative périphrastique) ?',null,
'[{"id":"a","label":"« Je vois l''oiseau qui chante. »"},{"id":"b","label":"« J''entends dire qu''il est parti. »"},{"id":"c","label":"« Ce que tu dis m''étonne. »"},{"id":"d","label":"« Le garçon que tu connais est parti. »"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'C''est la phrase c) ! « Ce que tu dis » est une relative sans antécédent nominal explicite — l''antécédent neutre « ce » sert de pivot. Elle fonctionne comme un GN entier (ici sujet de « m''étonne »). C''est ce qu''on appelle une relative substantive. En a), « qui chante » est une relative déterminative ordinaire. En b), « qu''il est parti » est une complétive COD de « dire ». La phrase c) montre bien comment la relative peut prendre une valeur nominale avec « ce ».',
'valide','CRPE Français V3 — Grammaire','premium',true),

-- ================================================================
-- SÉRIE 66 — Structure du GN et du GV — Intermédiaire — free
-- topic_key : grm_gn_gv_structure
-- Distribution cible : a(Q5,Q8) b(Q1,Q4) c(Q2,Q3,Q6) d(Q7,Q10)
-- ================================================================

-- Q1 correct=b (inchangé)
('66000000-0000-0000-0000-000000000001','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quels sont les constituants obligatoires du groupe nominal (GN) minimal ?',null,
'[{"id":"a","label":"Déterminant + Nom + Adjectif"},{"id":"b","label":"Déterminant + Nom (le déterminant peut être absent dans certains cas)"},{"id":"c","label":"Nom + Adjectif obligatoirement"},{"id":"d","label":"Déterminant + Nom + Complément du nom obligatoirement"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le GN minimal, c''est déterminant + nom noyau — et c''est tout ! L''adjectif et toutes les expansions (relative, complément du nom) sont facultatifs. Maintenant, la nuance : le déterminant peut être absent dans certains cas spécifiques — noms propres (« Marie arrive »), noms en apposition (« Marine, directrice de l''école, parla »), constructions figées (« avoir faim »). Mais pour un nom commun ordinaire en position sujet ou objet, le déterminant est bien là.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q2 correct=c (was b — "4 types d''expansions" moves to c; b becomes new wrong answer)
('66000000-0000-0000-0000-000000000002','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quelles sont les expansions possibles du nom dans le GN ?',null,
'[{"id":"a","label":"Uniquement l''adjectif épithète"},{"id":"b","label":"L''adjectif épithète et la proposition subordonnée relative uniquement"},{"id":"c","label":"L''adjectif épithète, la proposition subordonnée relative, le complément du nom (groupe prépositionnel) et l''adjectif apposé"},{"id":"d","label":"Uniquement les propositions relatives et les compléments du nom prépositionnels"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Quatre types d''expansions pour le nom — et ça vaut le coup de toutes les connaître ! Adjectif épithète (« une belle maison »), complément du nom / GP (« la maison de mes parents »), proposition subordonnée relative (« la maison qui se trouve au bout du chemin »), adjectif ou GN en apposition (« la maison, ancienne bâtisse familiale »). Toutes ces expansions enrichissent le GN sans changer sa fonction dans la phrase. La richesse du GN en français, c''est vraiment impressionnant !',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q3 correct=c (inchangé)
('66000000-0000-0000-0000-000000000003','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quel est le noyau du groupe verbal (GV) dans la phrase « Les élèves semblent fatigués. » ?',null,
'[{"id":"a","label":"« semblent » uniquement"},{"id":"b","label":"« fatigués » uniquement"},{"id":"c","label":"Le verbe attributif « semblent » est le noyau du GV, dont l''attribut « fatigués » est un constituant obligatoire"},{"id":"d","label":"Les deux mots « semblent fatigués » forment ensemble un verbe composé à deux noyaux"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Avec les verbes attributifs comme sembler, paraître, devenir, rester — le noyau du GV c''est bien le verbe, mais l''attribut devient un constituant OBLIGATOIRE. Sans « fatigués », la phrase est incomplète : « Les élèves semblent... » — et alors ? L''attribut est non supprimable ici. Le terme officiel (Éduscol 2021) est « verbe attributif » (et non « verbe d''état » ou « verbe copule »). C''est différent du verbe transitif (où le COD est essentiel mais de nature différente) et du verbe intransitif (sans complément essentiel).',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q4 correct=b (inchangé)
('66000000-0000-0000-0000-000000000004','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Dans la phrase « Elle offre des fleurs à sa mère », quels sont les constituants du GV et leurs fonctions ?',null,
'[{"id":"a","label":"Verbe (offre) + COD (des fleurs) + CC de lieu (à sa mère)"},{"id":"b","label":"Verbe (offre) + COD (des fleurs) + COI (à sa mère)"},{"id":"c","label":"Verbe (offre) + attribut (des fleurs) + CC de but (à sa mère)"},{"id":"d","label":"Verbe (offre) + COI (des fleurs) + COD (à sa mère)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Offrir » est di-transitif : il veut un COD (ce qu''on offre) ET un COI (à qui on l''offre). Vérifie par pronominalisation : COD → « Elle les offre » (les fleurs), COI → « Elle lui offre des fleurs » (à sa mère). C''est ça ! Et attention à l''erreur classique : « à sa mère » n''est PAS un CC de lieu, c''est un COI essentiel — on ne peut pas vraiment l''enlever sans changer le sens. Même si la phrase reste grammaticale sans lui, le verbe « offrir » implique un destinataire.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q5 correct=a (inchangé)
('66000000-0000-0000-0000-000000000005','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quelle est la différence entre un attribut du sujet et un attribut de l''objet ?',null,
'[{"id":"a","label":"L''attribut du sujet qualifie le sujet via un verbe attributif ; l''attribut de l''objet qualifie le COD via un verbe transitif"},{"id":"b","label":"L''attribut du sujet est toujours un adjectif ; l''attribut de l''objet est toujours un nom"},{"id":"c","label":"Il n''y a pas de différence : les deux désignent la même fonction"},{"id":"d","label":"L''attribut du sujet est obligatoire ; l''attribut de l''objet est toujours facultatif et supprimable"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Exactement ! L''attribut du sujet : verbe attributif + adjectif/nom qui qualifie le sujet. « Il est médecin. » L''attribut de l''objet : verbe transitif spécifique + adjectif/nom qui qualifie le COD. « Je le trouve fatigué » — « fatigué » qualifie le COD « le ». Les verbes qui admettent un attribut de l''objet : trouver, juger, nommer, élire, rendre, croire… L''attribut de l''objet est moins enseigné en classe mais il EST au programme du CRPE — ne le néglige pas !',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q6 correct=c (was b — "CC de lieu" moves to c; b becomes new wrong answer)
('66000000-0000-0000-0000-000000000006','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Identifiez le constituant en italique dans : « Un vieux chêne noueux se dressait au bord du chemin. » Le groupe souligné est « au bord du chemin ».',null,
'[{"id":"a","label":"Complément du nom du sujet"},{"id":"b","label":"COI du verbe « se dresser »"},{"id":"c","label":"Complément circonstanciel de lieu, déplaçable et supprimable"},{"id":"d","label":"Attribut du sujet introduit par la préposition « au »"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'CC de lieu — deux tests pour en être sûr ! Tu peux le déplacer : « Au bord du chemin, un vieux chêne se dressait » ✓. Tu peux le supprimer : « Un vieux chêne se dressait » ✓. C''est donc bien un CC. Ce n''est pas un complément du nom car il ne dépend pas du GN sujet, mais du verbe. Ce n''est pas un COI car « se dresser » ne se construit pas avec « à ». Nuance importante : avec des verbes comme « aller » ou « habiter », le CC de lieu devient essentiel — mais ici « se dresser » fonctionne sans lui.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q7 correct=d (was b — "3 constituants: verbe + CC manière + CC temps" moves to d; b becomes new wrong answer)
('66000000-0000-0000-0000-000000000007','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Dans « Les enfants jouaient bruyamment depuis deux heures », combien y a-t-il de constituants dans le GV et de quelle nature sont-ils ?',null,
'[{"id":"a","label":"1 constituant : le verbe seul"},{"id":"b","label":"2 constituants : le verbe + un COD"},{"id":"c","label":"2 constituants : le verbe + un CC de manière uniquement"},{"id":"d","label":"3 constituants : le verbe + un CC de manière + un CC de temps"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Trois constituants dans le GV : le verbe « jouaient », le CC de manière « bruyamment » (adverbe → « comment ? »), le CC de temps « depuis deux heures » (groupe prépositionnel → « depuis quand ? »). Pas de COD ici, car « jouer » est employé intransitivement. Et ces deux CC sont bien accessoires : « Les enfants jouaient » reste une phrase complète. Retiens que le GV peut contenir plusieurs CC de natures différentes — c''est le cas le plus courant dans les textes.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q8 correct=a (inchangé)
('66000000-0000-0000-0000-000000000008','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quelle est la structure du GN « la décision courageuse de ce juge intègre » ?',null,
'[{"id":"a","label":"Dét + N + Adj épithète + CN (groupe prépositionnel contenant lui-même un GN expandu par adjectif)"},{"id":"b","label":"Dét + N + Adj épithète + proposition relative"},{"id":"c","label":"Dét + N + Adj apposé + CC de manière"},{"id":"d","label":"Dét + N + CN (groupe prépositionnel) sans adjectif épithète"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Voilà un beau GN enchâssé à analyser ! « la » (dét) + « décision » (nom noyau) + « courageuse » (adj épithète) + « de ce juge intègre » (complément du nom = GP). Et ce complément du nom contient lui-même un GN : « ce juge intègre » = dét (ce) + N (juge) + adj épithète (intègre). C''est ça, la récursivité du GN : un GN peut en contenir un autre. Cette structure emboîtée est très courante dans les textes littéraires et en analyse grammaticale au CRPE.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q9 vrai_faux — inchangé
('66000000-0000-0000-0000-000000000009','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','vrai_faux',
'Vrai ou faux : dans la phrase « Elle mange rapidement », le groupe verbal est formé du seul verbe « mange », car « rapidement » est un CC extérieur au GV.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! « Rapidement » modifie directement le verbe — il est inclus dans le GV. Le GV est donc bien « mange rapidement ». C''est vrai qu''il y a un débat dans les grammaires : certaines analyses intègrent l''adverbe au GV, d''autres le traitent comme un élément périphérique. Mais pour le CRPE, la position dominante est claire : les adverbes de manière font partie du GV. Retiens cette convention et applique-la dans tes analyses.',
'valide','CRPE Français V3 — Grammaire','free',true),

-- Q10 correct=d (was b — "pronominalisation" moves to d; b becomes new wrong answer)
('66000000-0000-0000-0000-000000000010','Francais','grammaire','grm_gn_gv_structure','Structure du GN et du GV','Intermediaire','qcm',
'Quelle manipulation syntaxique permet de vérifier qu''un groupe est bien un GN (et non un autre type de groupe) ?',null,
'[{"id":"a","label":"Le déplacer en tête de phrase"},{"id":"b","label":"Le mettre au pluriel"},{"id":"c","label":"Le transformer en phrase négative"},{"id":"d","label":"Le remplacer par un pronom (il, elle, le, lui, en, y…)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La pronominalisation — c''est LE test pour identifier un GN ! Si tu peux remplacer le groupe par un pronom (il, elle, le, la, lui, en, y…), c''est un GN. Exemple : « Je vois la maison rouge » → « Je la vois » → GN COD confirmé. Ce test permet aussi de distinguer COD (le/la) de COI (lui/y/en). Le déplacement en tête, lui, identifie plutôt les CC. La mise au pluriel vérifie les accords mais pas la nature du groupe. La pronominalisation est vraiment ton meilleur outil d''analyse !',
'valide','CRPE Français V3 — Grammaire','free',true)

;
