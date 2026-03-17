-- CRPE Français — Lot 1 : Grammaire (10 séries × 10 questions)
-- topic_key unique par série garantit le regroupement en session de 10 questions
-- Appliquer APRÈS les migrations 20260311–20260314 et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 01 — Classes grammaticales — Facile — free
-- ================================================================

-- Q1 correct=b (adverbe) — keep at b
('01000000-0000-0000-0000-000000000001','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "lentement" dans "Il marche lentement" ?',null,
'[{"id":"a","label":"Un adjectif qualificatif"},{"id":"b","label":"Un adverbe"},{"id":"c","label":"Un nom commun"},{"id":"d","label":"Un verbe"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Lentement" dit COMMENT il marche — il modifie le verbe, c''est donc un adverbe de manière. Formé sur l''adjectif "lent" avec le suffixe "-ment", c''est le procédé de formation le plus courant pour les adverbes de manière. Retiens : adjectif au féminin + -ment = adverbe. Ici "lente" + "-ment" = "lentement". Simple et fiable !',
'valide','CRPE Français V2','free',true),

-- Q2 correct=c (adjectif qualificatif) — move to d
('01000000-0000-0000-0000-000000000002','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "grand" dans "Un grand arbre pousse devant la maison" ?',null,
'[{"id":"a","label":"Un adverbe"},{"id":"b","label":"Un nom commun"},{"id":"c","label":"Un pronom"},{"id":"d","label":"Un adjectif qualificatif"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Grand" qualifie le nom "arbre" en lui attribuant une propriété — c''est un adjectif qualificatif épithète, placé AVANT le nom. Bien vu si tu l''as repéré directement ! Les adjectifs courts et courants comme "grand", "petit", "beau", "vieux" se placent généralement avant le nom en français — c''est une particularité à mémoriser.',
'valide','CRPE Français V2','free',true),

-- Q3 correct=b (nom propre) — keep at b
('01000000-0000-0000-0000-000000000003','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "France" dans "Nous visitons la France cet été" ?',null,
'[{"id":"a","label":"Un nom commun"},{"id":"b","label":"Un nom propre"},{"id":"c","label":"Un adjectif"},{"id":"d","label":"Un déterminant"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"France" désigne un lieu géographique unique et prend une majuscule — c''est un nom propre ! Il se distingue du nom commun qui désigne une catégorie d''êtres ou d''objets ("un pays", "une ville"). Signal infaillible : la majuscule. Noms de personnes, de villes, de pays, de fleuves — tous des noms propres.',
'valide','CRPE Français V2','free',true),

-- Q4 correct=b (déterminant article indéfini) — move to a
('01000000-0000-0000-0000-000000000004','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "une" dans "Une écolière lève la main" ?',null,
'[{"id":"a","label":"Un déterminant article indéfini"},{"id":"b","label":"Un pronom personnel"},{"id":"c","label":"Un adjectif numéral"},{"id":"d","label":"Un déterminant article défini"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Une" introduit le nom "écolière" sans le définir précisément — c''est un déterminant article indéfini. Il s''oppose à "la" (défini, qui pointe vers quelqu''un de connu) et se distingue du numéral "un" utilisé pour compter. Retiens : indéfini = on présente pour la première fois ou de façon générale. Défini = on connaît déjà de quoi on parle.',
'valide','CRPE Français V2','free',true),

-- Q5 correct=b (conjonction de coordination) — move to c
('01000000-0000-0000-0000-000000000005','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "et" dans "Marie et Paul travaillent ensemble" ?',null,
'[{"id":"a","label":"Une préposition"},{"id":"b","label":"Un adverbe"},{"id":"c","label":"Une conjonction de coordination"},{"id":"d","label":"Un pronom relatif"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Et" relie deux groupes nominaux de même fonction syntaxique — ce sont deux sujets coordonnés. C''est une conjonction de coordination. Et le moyen mnémotechnique pour les sept conjonctions de coordination : "mais, ou, et, donc, or, ni, car". À apprendre par cœur, elles tombent régulièrement au CRPE !',
'valide','CRPE Français V2','free',true),

-- Q6 correct=c (préposition) — move to d
('01000000-0000-0000-0000-000000000006','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "dans" dans "Il range ses affaires dans son sac" ?',null,
'[{"id":"a","label":"Un adverbe"},{"id":"b","label":"Une conjonction de coordination"},{"id":"c","label":"Un déterminant"},{"id":"d","label":"Une préposition"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Dans" établit un rapport de lieu entre le verbe "range" et son complément "son sac" — c''est une préposition ! Elle introduit un groupe prépositionnel (ici un CC de lieu). Les prépositions les plus courantes : à, de, dans, pour, avec, sur, sous, entre, vers… Elles sont invariables et toujours suivies d''un groupe nominal ou d''un infinitif.',
'valide','CRPE Français V2','free',true),

-- Q7 correct=c (pronom personnel) — keep at c
('01000000-0000-0000-0000-000000000007','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "elle" dans "Elle répond à la question avec assurance" ?',null,
'[{"id":"a","label":"Un nom propre"},{"id":"b","label":"Un déterminant"},{"id":"c","label":"Un pronom personnel"},{"id":"d","label":"Un adverbe"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Elle" remplace un groupe nominal féminin déjà mentionné — c''est un pronom personnel sujet de 3e personne du singulier. Il assure la reprise anaphorique dans le discours : on évite de répéter le nom. Retiens : les pronoms remplacent un nom ou un GN. "Elle" = quelqu''un de féminin dont on a déjà parlé.',
'valide','CRPE Français V2','free',true),

-- Q8 correct=b (verbe à l'infinitif) — move to a
('01000000-0000-0000-0000-000000000008','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "chanter" dans "Il aime chanter le soir" ?',null,
'[{"id":"a","label":"Un verbe à l''infinitif"},{"id":"b","label":"Un nom commun"},{"id":"c","label":"Un adjectif verbal"},{"id":"d","label":"Un participe présent"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Chanter" est à la forme non conjuguée de l''infinitif — et il fonctionne ici comme COD du verbe "aime" (il aime quoi ? → chanter). Ne confonds pas avec le nom verbal "le chant" (nom) ou le participe présent "chantant". L''infinitif se reconnaît à sa terminaison (-er, -ir, -re, -oir) et à l''absence de marque de personne ou de temps.',
'valide','CRPE Français V2','free',true),

-- Q9 correct=c (adverbe) — move to d
('01000000-0000-0000-0000-000000000009','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "très" dans "Il est très attentif pendant le cours" ?',null,
'[{"id":"a","label":"Un adjectif qualificatif"},{"id":"b","label":"Un déterminant"},{"id":"c","label":"Une préposition"},{"id":"d","label":"Un adverbe"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Très" modifie l''adjectif "attentif" en indiquant l''intensité — c''est un adverbe d''intensité. C''est ça qui est fascinant avec les adverbes : ils peuvent modifier un verbe, un adjectif ou même un autre adverbe ! Ici il modifie un adjectif. Et "très" est invariable — aucun accord, jamais. Adverbes d''intensité courants à connaître : très, fort, trop, peu, assez, bien.',
'valide','CRPE Français V2','free',true),

-- Q10 correct=c (conjonction de coordination) — keep at c
('01000000-0000-0000-0000-000000000010','Francais','grammaire','grm_classes_facile','Classes grammaticales','Facile','qcm',
'Quelle est la nature du mot "car" dans "Il reste à la maison car il est fatigué" ?',null,
'[{"id":"a","label":"Une conjonction de subordination"},{"id":"b","label":"Une préposition"},{"id":"c","label":"Une conjonction de coordination"},{"id":"d","label":"Un adverbe de cause"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Car" relie deux propositions indépendantes en exprimant la cause — c''est une conjonction de coordination. Attention au piège classique : ne confonds pas "car" (coordination) avec "parce que" (subordination). "Car" coordonne deux propositions de même niveau ; "parce que" en subordonne une à l''autre. Test simple : peut-on déplacer la proposition ? Si oui, c''est une subordonnée circonstancielle. Avec "car", non.',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 02 — Classes grammaticales — Intermédiaire — free
-- ================================================================

-- Q1 correct=c (pronom relatif) — keep at c
('02000000-0000-0000-0000-000000000001','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','qcm',
'Quelle est la nature du mot "dont" dans "Le livre dont je parle est remarquable" ?',null,
'[{"id":"a","label":"Une conjonction de subordination"},{"id":"b","label":"Un pronom interrogatif"},{"id":"c","label":"Un pronom relatif"},{"id":"d","label":"Un adverbe relatif"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Dont" introduit une proposition subordonnée relative et reprend l''antécédent "livre" — c''est un pronom relatif, équivalent à "de lequel". Sa fonction dans la relative : COI de "parle" (parler de quelque chose). Astuce : pour identifier la fonction de "dont", reconstruit la phrase sans la relative → "je parle de ce livre" → "de quelque chose" = COI. "Dont" = toujours complément introduit par "de".',
'valide','CRPE Français V2','free',true),

-- Q2 correct=b (pronom personnel COI) — move to d
('02000000-0000-0000-0000-000000000002','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','qcm',
'Quelle est la nature du mot "leur" dans "Je leur explique la règle" ?',null,
'[{"id":"a","label":"Un déterminant possessif"},{"id":"b","label":"Un adjectif indéfini"},{"id":"c","label":"Un pronom démonstratif"},{"id":"d","label":"Un pronom personnel COI"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Leur" remplace un GN pluriel animé et est COI du verbe "expliquer" (expliquer à eux) — c''est un pronom personnel. Attention au piège ! Distingue bien le pronom "leur" (invariable, COI : je leur parle) du déterminant possessif "leur/leurs" (variable, devant un nom : leur livre / leurs livres). Le test : si "leur" peut être remplacé par "lui" au singulier → c''est un pronom COI.',
'valide','CRPE Français V2','free',true),

-- Q3 correct=c (pronom adverbial) — keep at c
('02000000-0000-0000-0000-000000000003','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','qcm',
'Quelle est la nature du mot "y" dans "Il y pense souvent" ?',null,
'[{"id":"a","label":"Une préposition"},{"id":"b","label":"Un adverbe de lieu"},{"id":"c","label":"Un pronom adverbial"},{"id":"d","label":"Un pronom personnel COD"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Y" reprend un complément introduit par "à" désignant une chose ou un lieu — c''est un pronom adverbial. Il ne peut pas remplacer une personne dans ce contexte : on dit "je pense à lui" (pas "j''y pense" pour une personne). Retiens : "y" = chose ou lieu introduit par "à". Et "en" = chose introduite par "de". Ces deux pronoms adverbiaux font souvent trébucher, mais une fois le principe compris, c''est logique.',
'valide','CRPE Français V2','free',true),

-- Q4 correct=c (pronom adverbial) — move to a
('02000000-0000-0000-0000-000000000004','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','qcm',
'Quelle est la nature du mot "en" dans "Il en parle à ses élèves" ?',null,
'[{"id":"a","label":"Un pronom adverbial"},{"id":"b","label":"Une préposition"},{"id":"c","label":"Un déterminant partitif"},{"id":"d","label":"Un pronom personnel COD"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"En" reprend un complément introduit par "de" (parler de quelque chose) — c''est un pronom adverbial. Erreur fréquente : le confondre avec la préposition "en" (il est en retard) ou le déterminant partitif "du/de la". Le test : peut-on le remplacer par "de cela" ? Si oui, c''est le pronom adverbial "en". Ici : "il parle de cela à ses élèves" → "il en parle à ses élèves". Parfait.',
'valide','CRPE Français V2','free',true),

-- Q5 correct=c (déterminant indéfini) — move to b
('02000000-0000-0000-0000-000000000005','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','qcm',
'Quelle est la nature de "aucun" dans "Aucun élève n''est absent aujourd''hui" ?',null,
'[{"id":"a","label":"Un adjectif qualificatif"},{"id":"b","label":"Un déterminant indéfini"},{"id":"c","label":"Un pronom indéfini"},{"id":"d","label":"Un adverbe de négation"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Aucun" est placé DEVANT le nom "élève" qu''il détermine — c''est donc un déterminant indéfini à valeur négative. Il requiert "ne" dans la proposition. La règle pour distinguer : si le mot précède directement un nom, c''est un déterminant ; s''il est seul à la place du nom, c''est un pronom. Exemple : "Aucun élève" → déterminant. "Aucun n''est absent" → pronom. Même forme, classes différentes selon l''emploi !',
'valide','CRPE Français V2','free',true),

('02000000-0000-0000-0000-000000000006','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','identification_grammaticale',
'Donnez la nature du mot "lequel" dans la phrase : "L''outil avec lequel il travaille est très précis."',null,null,
'{"mode":"text","acceptableAnswers":["pronom relatif","un pronom relatif"]}'::jsonb,
'"Lequel" reprend l''antécédent "outil" et introduit une proposition subordonnée relative — c''est un pronom relatif composé. Il est précédé de la préposition "avec", ce qui impose la forme composée. Règle : quand le verbe de la relative se construit avec une préposition autre que "de" (qui → dont), on utilise les formes composées : avec lequel, pour laquelle, auquel (à + lequel), duquel (de + lequel dans un GP complexe).',
'valide','CRPE Français V2','free',true),

-- Q7 correct=c (déterminant indéfini) — move to b (already used b for Q5, use d)
('02000000-0000-0000-0000-000000000007','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','qcm',
'Quelle est la nature de "tout" dans "Tout le monde a bien compris" ?',null,
'[{"id":"a","label":"Un pronom indéfini"},{"id":"b","label":"Un adverbe"},{"id":"c","label":"Un adjectif qualificatif"},{"id":"d","label":"Un déterminant indéfini"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Tout" est suivi de "le" et du nom "monde" — il précède un nom → déterminant indéfini ! Quand il est seul à la place du nom, c''est un pronom : "Tout est prêt". Quand il modifie un adjectif, c''est un adverbe : "il est tout content" (invariable au masculin mais variable au féminin : "toute contente"). Ces trois rôles de "tout" sont un grand classique des exercices de classe grammaticale au CRPE.',
'valide','CRPE Français V2','free',true),

('02000000-0000-0000-0000-000000000008','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','identification_grammaticale',
'Donnez la nature de "quoique" dans : "Quoiqu''il soit tard, il continue de corriger ses copies."',null,null,
'{"mode":"text","acceptableAnswers":["conjonction de subordination","une conjonction de subordination"]}'::jsonb,
'"Quoique" (en un seul mot) introduit une proposition subordonnée circonstancielle de concession et impose le subjonctif — c''est une conjonction de subordination. Attention au piège orthographique : "quoique" (conjonction, un mot) vs "quoi que" (pronom relatif indéfini, deux mots = "quelle que soit la chose que"). Test : si tu peux remplacer par "bien que", c''est "quoique" en un mot. Ça tombe parfois au CRPE !',
'valide','CRPE Français V2','free',true),

-- Q9 correct=b (adjectif indéfini renforcatif) — keep at b
('02000000-0000-0000-0000-000000000009','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','qcm',
'Quelle est la nature de "même" dans "Les élèves eux-mêmes ont proposé cette solution" ?',null,
'[{"id":"a","label":"Un adverbe d''intensité"},{"id":"b","label":"Un adjectif indéfini renforcatif"},{"id":"c","label":"Une conjonction de coordination"},{"id":"d","label":"Un pronom démonstratif"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Même" renforce le pronom "eux" en soulignant la participation personnelle des élèves — c''est un adjectif indéfini à valeur renforcative, soudé au pronom. Dans "même fatigué, il travaille", "même" serait adverbe (invariable). Dans "les mêmes élèves", ce serait un adjectif indéfini épithète. Et dans "je pense même que…", adverbe de renforcement. Le contexte est tout pour "même" — analyse toujours sa position et son rôle.',
'valide','CRPE Français V2','free',true),

('02000000-0000-0000-0000-000000000010','Francais','grammaire','grm_classes_inter','Classes grammaticales','Intermediaire','identification_grammaticale',
'Donnez la nature du mot "si" dans : "Je ne sais pas si elle viendra demain."',null,null,
'{"mode":"text","acceptableAnswers":["conjonction de subordination","une conjonction de subordination"]}'::jsonb,
'"Si" introduit une proposition subordonnée interrogative indirecte, COD de "sais" — c''est une conjonction de subordination. À distinguer du "si" conditionnel ("si elle vient...") et de l''adverbe "si" d''intensité ("il est si grand"). Ici c''est une question indirecte totale rapportée (la question d''origine : "viendra-t-elle demain ?"). Le "si" de l''interrogative indirecte ne se confond pas avec le "si" conditionnel car dans ce dernier cas on peut le remplacer par "à condition que".',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 03 — Fonctions syntaxiques — Intermédiaire — premium
-- ================================================================
('03000000-0000-0000-0000-000000000001','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du groupe nominal souligné : "Les élèves écoutent attentivement."  → [Les élèves]',null,null,
'{"mode":"text","acceptableAnswers":["sujet","sujet du verbe","sujet du verbe écoutent"]}'::jsonb,
'"Les élèves" commande l''accord du verbe "écoutent" — 3e personne du pluriel. C''est bien le sujet ! Le test infaillible : "Qui est-ce qui écoute ?" → les élèves. Le sujet est l''élément qui fait l''accord du verbe et qui répond à la question "qui/qu''est-ce qui + verbe ?" C''est la fonction syntaxique la plus importante à identifier.',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000002','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du groupe nominal souligné : "Le professeur explique [la leçon] avec clarté."',null,null,
'{"mode":"text","acceptableAnswers":["COD","complément d''objet direct","complément d''objet direct du verbe explique"]}'::jsonb,
'"La leçon" complète directement le verbe "explique" sans préposition — c''est un COD. Double vérification : "Le professeur explique quoi ?" → la leçon. Et tu peux pronominaliser : "Il l''explique" → le pronom "l''" confirme le COD. Ces deux tests (question quoi/qui et pronominalisation) sont tes meilleurs outils pour identifier un COD.',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000003','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du groupe souligné : "Il téléphone [à ses parents] chaque soir."',null,null,
'{"mode":"text","acceptableAnswers":["COI","complément d''objet indirect","complément d''objet indirect du verbe téléphone"]}'::jsonb,
'"À ses parents" complète le verbe "téléphone" via la préposition "à" — c''est un COI. Test : "Il téléphone à qui ?" → à ses parents. Et pronominalisation : "Il leur téléphone" → "leur" est le pronom COI. Retiens la différence COD / COI : COD sans préposition (répondre à "quoi ?"), COI avec préposition (répondre à "à qui ?", "de quoi ?").',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000004','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du groupe souligné : "Les enfants jouent [dans la cour] depuis ce matin."',null,null,
'{"mode":"text","acceptableAnswers":["CC de lieu","complément circonstanciel de lieu","complément circonstanciel de lieu du verbe jouent"]}'::jsonb,
'"Dans la cour" indique le lieu — CC de lieu ! Et les deux tests des CC sont positifs : tu peux le supprimer ("les enfants jouent depuis ce matin" ✓) et le déplacer ("Dans la cour, les enfants jouent…" ✓). Ces deux manipulations — suppression et déplacement — sont les outils canoniques pour identifier un CC. Si ça bouge et que ça peut disparaître, c''est un CC.',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000005','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du mot souligné : "Cet élève paraît [intelligent]."',null,null,
'{"mode":"text","acceptableAnswers":["attribut du sujet","attribut du sujet du verbe paraît"]}'::jsonb,
'"Intelligent" est relié au sujet "cet élève" par le verbe d''état "paraître" — c''est un attribut du sujet ! Les verbes d''état courants : être, paraître, sembler, devenir, rester, demeurer, avoir l''air. Avec ces verbes, l''adjectif qui suit qualifie le SUJET (pas le verbe) et s''accorde avec lui. Test : le verbe d''état peut être remplacé par "être" sans trop changer le sens → attribut du sujet.',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000006','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du mot souligné : "Elle parle [rapidement] devant la classe."',null,null,
'{"mode":"text","acceptableAnswers":["CC de manière","complément circonstanciel de manière","complément circonstanciel de manière du verbe parle"]}'::jsonb,
'"Rapidement" dit COMMENT elle parle — CC de manière ! Test : "Comment parle-t-elle ?" → rapidement. Et comme c''est un adverbe, il est non pronominalisable. Les CC de manière sont souvent des adverbes en -ment, ou des groupes prépositionnels comme "avec enthousiasme". Déplaçable : "Rapidement, elle parle devant la classe" ✓. Supprimable : "Elle parle devant la classe" ✓.',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000007','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du groupe souligné : "Il attend [depuis ce matin] sans nouvelles."',null,null,
'{"mode":"text","acceptableAnswers":["CC de temps","complément circonstanciel de temps","complément circonstanciel de temps du verbe attend"]}'::jsonb,
'"Depuis ce matin" situe l''action dans le temps (début de l''action) — CC de temps ! Il répond à "depuis quand ?" et est déplaçable : "Depuis ce matin, il attend sans nouvelles." ✓ Les CC de temps peuvent exprimer différentes valeurs : moment, durée, fréquence, antériorité, postériorité. Ici c''est le point de départ d''une durée. Retiens que "depuis" exprime l''origine d''une durée qui continue dans le présent.',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000008','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du groupe souligné : "Il est certain [de sa réponse]."',null,null,
'{"mode":"text","acceptableAnswers":["complément de l''adjectif","complément de l''adjectif certain"]}'::jsonb,
'"De sa réponse" complète l''ADJECTIF "certain" par la préposition "de" — c''est un complément de l''adjectif ! Ne confonds pas avec le COI qui complète un VERBE. Ici, c''est l''adjectif "certain" qui est complété, pas le verbe "est". Autres adjectifs qui admettent un complément : fier de, content de, capable de, avide de… Cette fonction est souvent confondue avec le COI au CRPE — sois attentif à ce qui est complété : verbe ou adjectif.',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000009','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du mot souligné : "Les enfants rentrent [épuisés] après la récréation."',null,null,
'{"mode":"text","acceptableAnswers":["attribut du sujet","attribut du sujet du verbe rentrent"]}'::jsonb,
'"Épuisés" qualifie le sujet "les enfants" via le verbe "rentrer" employé de façon semi-copulative — c''est un attribut du sujet ! Attention, piège classique : ne l''analyse pas comme épithète (ce serait "les enfants épuisés" dans le GN) ni comme CC de manière (il qualifie le sujet, pas l''action). Il s''accorde avec "les enfants" (masculin pluriel) — c''est la preuve qu''il qualifie le sujet.',
'valide','CRPE Français V2','premium',true),

('03000000-0000-0000-0000-000000000010','Francais','grammaire','grm_fonctions_inter','Fonctions syntaxiques','Intermediaire','identification_grammaticale',
'Identifiez la fonction du groupe souligné : "Il ressemble [à sa mère] en tous points."',null,null,
'{"mode":"text","acceptableAnswers":["COI","complément d''objet indirect","complément d''objet indirect du verbe ressemble"]}'::jsonb,
'"À sa mère" complète le verbe "ressembler" par la préposition "à" — c''est un COI. Et retiens bien : "ressembler" est TOUJOURS transitif indirect. Son complément est toujours un COI, jamais un COD. Erreur fréquente : certains le traitent comme un CC en pensant que "à sa mère" répond à "où ?" — non ! Ici "à" introduit un COI, pas un CC. Pronominalisation : "Il lui ressemble" → "lui" confirme le COI.',
'valide','CRPE Français V2','premium',true),

-- ================================================================
-- SÉRIE 04 — Fonctions syntaxiques avancées — Avancé — premium
-- ================================================================
('04000000-0000-0000-0000-000000000001','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','identification_grammaticale',
'Identifiez la nature et la fonction de "que tu réussiras" dans : "Il espère que tu réussiras."',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée conjonctive COD","subordonnée conjonctive complétive COD","subordonnée complétive COD"]}'::jsonb,
'"Que tu réussiras" est introduite par "que" et est COD du verbe "espère" — c''est une proposition subordonnée conjonctive complétive. Double vérification : remplace-la par un GN ("Il espère ton succès") ou un pronom ("Il l''espère") → ça marche ? COD confirmé ! Les subordonnées complétives remplissent les fonctions du GN. Retiens : "que" conjonction de subordination + proposition = complétive. "que" pronom relatif + antécédent = relative.',
'valide','CRPE Français V2','premium',true),

('04000000-0000-0000-0000-000000000002','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','identification_grammaticale',
'Identifiez la nature et la fonction de "dont il est fier" dans : "C''est un résultat dont il est fier."',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée relative complément du nom résultat","subordonnée relative épithète de résultat"]}'::jsonb,
'"Dont il est fier" est une proposition subordonnée relative introduite par "dont" (= de lequel) — épithète du nom "résultat". Et "dont" est ici complément de l''adjectif "fier" (être fier DE quelque chose). Analyse en deux étapes : 1) nature de la proposition → relative ; 2) fonction → épithète de "résultat". Ces deux informations sont toujours attendues dans une analyse grammaticale complète.',
'valide','CRPE Français V2','premium',true),

('04000000-0000-0000-0000-000000000003','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','vrai_faux',
'Vrai ou faux : Dans "Il travaille pour réussir", "pour réussir" est un COD du verbe "travailler".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! "Pour réussir" exprime le BUT de l''action — c''est un CC de but (proposition infinitive circonstancielle de but). "Travailler" est intransitif dans cet emploi : il n''a pas de COD. Test : peut-on pronominaliser "pour réussir" en "le" ? "Il le travaille" — non, ça ne fonctionne pas. Et le groupe est déplaçable ("Pour réussir, il travaille") → CC. La préposition "pour" + infinitif est l''indicateur classique du but.',
'valide','CRPE Français V2','premium',true),

('04000000-0000-0000-0000-000000000004','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','identification_grammaticale',
'Identifiez la nature et la fonction de "qu''elle soit absente" dans : "Je suis étonné qu''elle soit absente."',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée conjonctive complément de l''adjectif étonné","subordonnée complétive complément de l''adjectif","complément de l''adjectif étonné"]}'::jsonb,
'"Qu''elle soit absente" complète l''ADJECTIF "étonné" — c''est une subordonnée conjonctive complétive, complément de l''adjectif. Le subjonctif est requis car l''adjectif exprime une réaction subjective. Attention : c''est le complément de l''ADJECTIF, pas du verbe "suis". Test : "étonné de quoi ?" → qu''elle soit absente. La fonction complément de l''adjectif est souvent négligée mais bien présente dans les analyses grammaticales avancées.',
'valide','CRPE Français V2','premium',true),

('04000000-0000-0000-0000-000000000005','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','vrai_faux',
'Vrai ou faux : Dans "Le livre que je lis est passionnant", "que" est pronom relatif COD du verbe "lis".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Que" reprend l''antécédent "livre" et est COD de "lis" — "je lis quoi ?" → que = le livre. La relative est épithète de "livre". Et cette construction a une conséquence importante : elle explique l''accord du participe passé avec "avoir" quand le COD précède. Si on avait dit "Le livre que j''ai lu" → "lu" s''accorde avec "que" (= le livre, masculin singulier). C''est directement lié à cette analyse grammaticale !',
'valide','CRPE Français V2','premium',true),

('04000000-0000-0000-0000-000000000006','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','identification_grammaticale',
'Identifiez la fonction de "malgré la pluie" dans : "Ils sortent malgré la pluie."',null,null,
'{"mode":"text","acceptableAnswers":["CC de concession","complément circonstanciel de concession","CC d''opposition"]}'::jsonb,
'"Malgré la pluie" exprime une opposition : il pleut, mais ils sortent quand même — c''est un CC de concession. La concession, c''est l''idée du "quand même" : l''obstacle existe mais ne suffit pas à empêcher l''action. C''est aussi appelé CC d''opposition. Signal : "malgré" + GN est l''expression la plus compacte de la concession. Déplaçable : "Malgré la pluie, ils sortent" ✓. Supprimable : "Ils sortent" ✓.',
'valide','CRPE Français V2','premium',true),

('04000000-0000-0000-0000-000000000007','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','vrai_faux',
'Vrai ou faux : Dans "Je lui ai donné ce livre", le pronom "lui" est COD.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et c''est une erreur très fréquente au CRPE ! "Lui" est COI (donner À quelqu''un). "Ce livre" est le COD (donner QUOI ?). Quand les deux compléments sont présents, ne confonds pas : COD répond à "quoi ?", COI répond à "à qui ?". Pronominalisation : "Je le lui ai donné" → "le" = COD (ce livre), "lui" = COI. Cette confusion COD / COI quand les deux sont présents est un classique des pièges grammaticaux.',
'valide','CRPE Français V2','premium',true),

('04000000-0000-0000-0000-000000000008','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','identification_grammaticale',
'Identifiez la nature et la fonction de "de partir" dans : "Il lui a conseillé de partir."',null,null,
'{"mode":"text","acceptableAnswers":["proposition infinitive COD","proposition infinitive complément d''objet direct","COD infinitif"]}'::jsonb,
'"De partir" est une proposition infinitive introduite par "de" — COD de "conseillé" (il a conseillé quoi ?). Elle équivaut à une complétive : "Il lui a conseillé qu''il parte". Le verbe à l''infinitif a son propre sujet implicite (lui). Retiens : quand deux propositions ont des sujets différents, on utilise la complétive ("je veux qu''il parte") ; quand même sujet, on utilise l''infinitif sans "de" ("je veux partir") ou avec "de" selon le verbe ("il lui a conseillé de partir").',
'valide','CRPE Français V2','premium',true),

-- Q9 correct=b (sujet du verbe rassure) — keep at b
('04000000-0000-0000-0000-000000000009','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','qcm',
'Dans "Que vous soyez présents me rassure", quelle est la fonction de la proposition "Que vous soyez présents" ?',null,
'[{"id":"a","label":"COD du verbe rassure"},{"id":"b","label":"Sujet du verbe rassure"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"CC de cause"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Que vous soyez présents" est sujet du verbe "rassure" — c''est ce qui rassure ! Les propositions subordonnées peuvent remplir TOUTES les fonctions du GN, y compris le sujet. Test : remplace par "cela" → "Cela me rassure" → "cela" = sujet ✓. C''est une subordonnée conjonctive complétive en position de sujet. Cette construction avec une subordonnée sujet en tête de phrase est stylistiquement marquée et fréquente dans les textes littéraires.',
'valide','CRPE Français V2','premium',true),

('04000000-0000-0000-0000-000000000010','Francais','grammaire','grm_fonctions_avance','Fonctions syntaxiques avancées','Avance','vrai_faux',
'Vrai ou faux : Dans "Ayant fini son travail, il est sorti", "Ayant fini son travail" est une proposition participiale à valeur de circonstancielle de temps ou de cause.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Ayant fini son travail" est une proposition participiale (participé passé composé). Elle peut exprimer le temps (après avoir fini) ou la cause (parce qu''il avait fini) selon le contexte — et c''est cette polysémie qui la rend si intéressante en analyse de texte. Règle à retenir : le sujet implicite de la participiale DOIT être identique au sujet de la principale ("il"). Si les sujets diffèrent, il faut une proposition participiale absolue avec sujet propre : "La cloche ayant sonné, il rendit sa copie."',
'valide','CRPE Français V2','premium',true),

-- ================================================================
-- SÉRIE 05 — Types et formes de phrases — Facile — free
-- ================================================================

-- Q1 correct=b (interrogatif) — move to d
('05000000-0000-0000-0000-000000000001','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','qcm',
'Quel est le type de la phrase "Quelle heure est-il ?" ?',null,
'[{"id":"a","label":"Déclaratif"},{"id":"b","label":"Impératif"},{"id":"c","label":"Exclamatif"},{"id":"d","label":"Interrogatif"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Une question directe avec un point d''interrogation — c''est une phrase de type interrogatif ! Les quatre types de phrases : déclaratif (énoncer), interrogatif (questionner), impératif (ordonner), exclamatif (exprimer). Le type correspond à l''INTENTION de communication. Ici : on pose une question → interrogatif. Toujours demander : qu''est-ce que l''auteur ou le locuteur veut faire avec cette phrase ?',
'valide','CRPE Français V2','free',true),

-- Q2 correct=c (impératif) — keep at c
('05000000-0000-0000-0000-000000000002','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','qcm',
'Quel est le type de la phrase "Rangez vos affaires maintenant !" ?',null,
'[{"id":"a","label":"Exclamatif"},{"id":"b","label":"Interrogatif"},{"id":"c","label":"Impératif"},{"id":"d","label":"Déclaratif"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Un ordre, pas de pronom sujet devant le verbe, verbe à l''impératif — c''est une phrase de type impératif ! Attention au piège : le point d''exclamation à la fin ne définit PAS le type. Il indique l''intensité, mais une phrase impérative peut finir par un point simple. Le vrai signal de l''impératif : verbe à l''impératif sans sujet exprimé. Exemple : "Rangez" (pas "vous rangez") = impératif.',
'valide','CRPE Français V2','free',true),

-- Q3 correct=b (forme négative) — keep at b
('05000000-0000-0000-0000-000000000003','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','qcm',
'Quelle est la forme de la phrase "Il ne travaille pas le soir" ?',null,
'[{"id":"a","label":"Forme affirmative"},{"id":"b","label":"Forme négative"},{"id":"c","label":"Forme passive"},{"id":"d","label":"Forme emphatique"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le "ne...pas" est là — forme négative, sans hésiter ! La forme (affirmative/négative, active/passive, personnelle/impersonnelle) est distincte du type (déclaratif, interrogatif…). Une phrase peut être en même temps déclarative et négative — ce sont deux analyses indépendantes. Signal de la forme négative : toujours la présence de "ne" + un autre élément (pas, plus, jamais, rien, guère…).',
'valide','CRPE Français V2','free',true),

-- Q4 correct=c (exclamatif) — move to a
('05000000-0000-0000-0000-000000000004','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','qcm',
'Quel est le type de la phrase "Comme il fait beau aujourd''hui !" ?',null,
'[{"id":"a","label":"Exclamatif"},{"id":"b","label":"Déclaratif"},{"id":"c","label":"Impératif"},{"id":"d","label":"Interrogatif"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Comme" + point d''exclamation = phrase exclamative ! Elle exprime une émotion — ici l''émerveillement devant le beau temps. Les marqueurs de l''exclamative : "comme", "que", "quel/quelle", et le point d''exclamation final. Retiens : l''exclamative EXPRIME une réaction émotionnelle, elle ne pose pas une question (même si "comme" peut parfois introduire une comparaison). Ici c''est bien une exclamation.',
'valide','CRPE Français V2','free',true),

('05000000-0000-0000-0000-000000000005','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','vrai_faux',
'Vrai ou faux : La phrase "Ne faites pas de bruit pendant l''exercice" est une phrase impérative.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! C''est une phrase impérative à la forme négative — les deux caractéristiques se combinent. Type (impératif) et forme (négative) sont deux dimensions INDÉPENDANTES. L''impératif exprime l''ordre ou la consigne. La négation "ne...pas" marque la forme négative. Une phrase peut avoir n''importe quelle combinaison de type et de forme. "Ne faites pas de bruit" = impératif + négatif. Toujours analyser les deux séparément.',
'valide','CRPE Français V2','free',true),

-- Q6 correct=b (forme passive) — move to d
('05000000-0000-0000-0000-000000000006','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','qcm',
'Quelle est la forme de la phrase "Les copies sont corrigées par le professeur" ?',null,
'[{"id":"a","label":"Forme active"},{"id":"b","label":"Forme emphatique"},{"id":"c","label":"Forme négative"},{"id":"d","label":"Forme passive"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Forme passive — le schéma est parfait : sujet ("les copies") + auxiliaire "être" ("sont") + participe passé ("corrigées") + complément d''agent ("par le professeur"). Le sujet subit l''action réalisée par l''agent. À la forme active, ce serait : "Le professeur corrige les copies." Le participe s''accorde avec le sujet passif : "copies" est féminin pluriel → "corrigées". Toujours vérifier cet accord !',
'valide','CRPE Français V2','free',true),

-- Q7 correct=b (forme emphatique) — keep at b
('05000000-0000-0000-0000-000000000007','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','qcm',
'Quelle est la forme de la phrase "C''est la règle qu''il faut appliquer" ?',null,
'[{"id":"a","label":"Forme passive"},{"id":"b","label":"Forme emphatique"},{"id":"c","label":"Forme négative"},{"id":"d","label":"Forme interrogative"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La construction "c''est...que" met en relief "la règle" — c''est la forme emphatique ou forme de mise en relief ! Elle permet d''insister sur un élément. Deux constructions à connaître : "c''est…qui" (pour mettre en relief le sujet : "C''est elle qui a trouvé") et "c''est…que" (pour le COD ou les CC : "C''est la règle qu''il faut appliquer"). Ces constructions expressives sont très fréquentes en français oral et littéraire.',
'valide','CRPE Français V2','free',true),

('05000000-0000-0000-0000-000000000008','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','vrai_faux',
'Vrai ou faux : La phrase "Il ne mange que des légumes" est à la forme négative.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Ne...que" est une tournure restrictive — elle constitue une forme de négation partielle. Grammaticalement, c''est une forme négative, même si son sens est proche de l''affirmation partielle ("seulement des légumes"). Retiens : "ne...que" = restriction = forme négative. À distinguer de "ne...pas" (négation totale). Cette nuance entre négation totale et restriction est importante dans l''analyse grammaticale et dans l''expression écrite.',
'valide','CRPE Français V2','free',true),

-- Q9 correct=a (passif correct) — keep at a
('05000000-0000-0000-0000-000000000009','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','qcm',
'Transformez à la forme passive : "Le directeur a signé les bulletins." Quelle est la forme correcte ?',null,
'[{"id":"a","label":"Les bulletins ont été signés par le directeur."},{"id":"b","label":"Les bulletins étaient signés du directeur."},{"id":"c","label":"Les bulletins se sont signés par le directeur."},{"id":"d","label":"Les bulletins ont signé par le directeur."}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La transformation passive en trois étapes : 1) le COD "les bulletins" devient sujet, 2) "a signé" devient "ont été signés" (passé composé passif = avoir auxiliaire → être + être + participe), 3) le sujet "le directeur" devient complément d''agent introduit par "par". Et le participe s''accorde avec le nouveau sujet : "bulletins" = masculin pluriel → "signés". La réponse b) utilise un temps incorrect (imparfait), la réponse c) utilise une construction pronominale incorrecte, la réponse d) perd l''auxiliaire "être".',
'valide','CRPE Français V2','free',true),

-- Q10 correct=b (c'est elle qui) — move to c
('05000000-0000-0000-0000-000000000010','Francais','grammaire','grm_types_phrases','Types et formes de phrases','Facile','qcm',
'Quelle est la forme emphatique (mise en relief par c''est...qui) de la phrase "Elle a trouvé la solution" ?',null,
'[{"id":"a","label":"C''est la solution qu''elle a trouvée."},{"id":"b","label":"C''est elle que la solution a été trouvée."},{"id":"c","label":"C''est elle qui a trouvé la solution."},{"id":"d","label":"C''est elle qu''a trouvé la solution."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Pour mettre en relief le SUJET, on utilise "c''est...qui" — c''est la réponse c) ! Pour mettre en relief un COD ou un CC, on utilise "c''est...que". Ici, on veut insister sur "elle" (le sujet) → "C''est elle qui a trouvé la solution." La réponse a) met en relief le COD "la solution" avec "c''est...que" (et note l''accord du participe). La réponse b) est agrammaticale. La réponse d) omet le pronom sujet. Mémorise : sujet → "qui", tout le reste → "que".',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 06 — Types et formes de phrases — Intermédiaire — free
-- ================================================================
('06000000-0000-0000-0000-000000000001','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','correction_orthographique',
'Transformez à la forme négative : "Tous les élèves ont compris la consigne." Quelle est la forme correcte ?',null,null,
'{"mode":"text","acceptableAnswers":["Tous les élèves n''ont pas compris la consigne.","Aucun élève n''a compris la consigne."]}'::jsonb,
'Deux réponses possibles ici ! La négation standard → "Tous les élèves n''ont pas compris la consigne" (négation partielle : pas tous). Ou bien "Aucun élève n''a compris la consigne" (négation totale : personne). Retiens la nuance : "tous...ne...pas" = négation partielle (certains ont compris, d''autres non) ; "aucun...ne" = négation totale (personne n''a compris). Deux degrés de négation différents à partir de la même phrase de départ.',
'valide','CRPE Français V2','free',true),

('06000000-0000-0000-0000-000000000002','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','correction_orthographique',
'Transformez en interrogation par inversion du sujet : "Tu viens à la réunion demain."',null,null,
'{"mode":"text","acceptableAnswers":["Viens-tu à la réunion demain ?","Viens-tu à la réunion demain"]}'::jsonb,
'L''inversion du sujet : place le pronom sujet APRÈS le verbe avec un trait d''union. "Tu viens" → "Viens-tu ?" Et retiens le cas particulier : si le verbe se termine par une voyelle devant "il/elle/on", on ajoute "-t-" euphonique pour éviter le hiatus : "Va-t-il ?", "Mange-t-elle ?". Ce "-t-" n''a aucune valeur grammaticale — c''est purement phonétique. Il est obligatoire à l''écrit dans ce cas.',
'valide','CRPE Français V2','free',true),

-- Q3 correct=c (exclamatif) — move to a
('06000000-0000-0000-0000-000000000003','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','qcm',
'Dans "Que de talent dans cette classe !", quel est le type de la phrase ?',null,
'[{"id":"a","label":"Exclamatif"},{"id":"b","label":"Déclaratif"},{"id":"c","label":"Interrogatif"},{"id":"d","label":"Impératif"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Que de" est un déterminant exclamatif — phrase exclamative ! Et remarque qu''elle est nominale (sans verbe conjugué), ce qui est tout à fait possible pour les exclamatives. L''exclamative n''a pas besoin d''un verbe conjugué pour exprimer une réaction émotionnelle forte. "Que de talent dans cette classe !" = admiration exprimée de façon compacte. C''est un style apprécié dans la dissertation et les textes littéraires.',
'valide','CRPE Français V2','free',true),

('06000000-0000-0000-0000-000000000004','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','vrai_faux',
'Vrai ou faux : La transformation passive est possible pour tous les verbes transitifs directs.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et c''est un piège classique ! Certains verbes transitifs directs ne se mettent PAS au passif. Ce sont principalement les verbes de mesure : peser, coûter, mesurer, valoir, durer… Exemple : "Il pèse 80 kg" → "80 kg sont pesés par lui" est impossible. Ces verbes expriment une propriété plutôt qu''une action, ce qui bloque la passivation. À retenir pour éviter une erreur de transformation au CRPE.',
'valide','CRPE Français V2','free',true),

('06000000-0000-0000-0000-000000000005','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','correction_orthographique',
'Mettez à la forme passive : "Un enseignant expérimenté anime cet atelier."',null,null,
'{"mode":"text","acceptableAnswers":["Cet atelier est animé par un enseignant expérimenté."]}'::jsonb,
'Transformation en trois étapes : 1) COD "cet atelier" → nouveau sujet ; 2) "anime" → "est animé" (présent passif : être + participe) ; 3) sujet "un enseignant expérimenté" → complément d''agent introduit par "par". Et l''accord du participe : "animé" s''accorde avec le nouveau sujet "cet atelier" = masculin singulier → "animé" (sans -e). Une seule forme attendue ici — pas de variante possible.',
'valide','CRPE Français V2','free',true),

-- Q6 correct=b (négative et emphatique) — move to d
('06000000-0000-0000-0000-000000000006','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','qcm',
'Dans "Ce n''est pas lui qui a répondu", quelles formes sont combinées ?',null,
'[{"id":"a","label":"Négative et impérative"},{"id":"b","label":"Passive et emphatique"},{"id":"c","label":"Active et interrogative"},{"id":"d","label":"Négative et emphatique"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Deux formes combinées : emphatique (mise en relief "c''est...qui") et négative ("ne...pas"). La forme emphatique isole et met en valeur "lui" ; la négation "ne...pas" inverse la polarité. Les formes ne s''excluent pas — une phrase peut cumuler plusieurs d''entre elles simultanément. Exemple ultime : une phrase peut être déclarative, négative, emphatique ET passive en même temps ! Toujours analyser chaque dimension séparément.',
'valide','CRPE Français V2','free',true),

('06000000-0000-0000-0000-000000000007','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','vrai_faux',
'Vrai ou faux : Une phrase impérative peut être à la forme négative.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai — et c''est un point fondamental à avoir bien en tête ! Type et forme sont INDÉPENDANTS. "Ne cours pas !" = impérative (ordre) + négative (ne...pas). Le type (impératif) indique l''intention (donner une consigne ou un ordre), la forme (négative) précise la polarité de l''énoncé. Ces deux dimensions coexistent librement. C''est une erreur de penser que l''impératif est toujours affirmatif ou toujours accompagné d''un point d''exclamation.',
'valide','CRPE Français V2','free',true),

('06000000-0000-0000-0000-000000000008','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','identification_grammaticale',
'Donnez le type et la forme de la phrase : "N''avez-vous pas fini cet exercice ?"',null,null,
'{"mode":"text","acceptableAnswers":["interrogatif, forme négative","type interrogatif, forme négative","interrogatif négatif"]}'::jsonb,
'Type interrogatif (question directe avec inversion du sujet "vous") + forme négative ("ne...pas"). L''inversion "avez-vous" confirme l''interrogation directe formelle. Et "ne...pas" encadre le verbe conjugué → forme négative. Retiens : pour une description grammaticale complète d''une phrase, donne toujours son type ET sa forme. Ces deux informations ensemble donnent l''analyse complète.',
'valide','CRPE Français V2','free',true),

-- Q9 correct=b (c'est ce rapport qu'elle a rédigé) — move to c
('06000000-0000-0000-0000-000000000009','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','qcm',
'Laquelle de ces transformations constitue une mise en relief correcte du COD dans "Elle a rédigé ce rapport" ?',null,
'[{"id":"a","label":"C''est elle qui a rédigé ce rapport."},{"id":"b","label":"C''est ce rapport qui elle a rédigé."},{"id":"c","label":"C''est ce rapport qu''elle a rédigé."},{"id":"d","label":"C''est elle qu''a rédigé ce rapport."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Pour mettre en relief un COD, c''est "c''est...que" — la réponse c) ! "Qui" est réservé à la mise en relief du SUJET. Ici "ce rapport" est COD → "c''est ce rapport QU''elle a rédigé". Et note l''accord du participe : "ce rapport" est le COD placé avant "rédigé" → accord → "rédigé" reste masculin singulier. La réponse a) met en relief le sujet "elle" avec "qui". La réponse b) est agrammaticale. La réponse d) omet le pronom sujet. Sujet → qui. Tout le reste → que.',
'valide','CRPE Français V2','free',true),

('06000000-0000-0000-0000-000000000010','Francais','grammaire','grm_types_phrases_inter','Types et formes de phrases','Intermediaire','vrai_faux',
'Vrai ou faux : "Il ne parle qu''à ses proches" est à la fois une forme négative et une forme emphatique.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! "Ne...que" est une forme RESTRICTIVE (négation partielle), mais ce n''est PAS une forme emphatique. L''emphase, c''est la mise en relief par extraction avec "c''est...qui/que". "Ne...que" restreint sans extraire d''élément — c''est une nuance importante. Retiens : restriction = "ne...que" = forme négative. Emphase = "c''est...qui/que" = forme emphatique. Deux outils différents, deux fonctions différentes.',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 07 — Propositions subordonnées — Intermédiaire — premium
-- ================================================================
('07000000-0000-0000-0000-000000000001','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','identification_grammaticale',
'Identifiez la nature et la fonction de "que tu viennes" dans : "Je veux que tu viennes demain."',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée conjonctive COD","subordonnée conjonctive complétive COD","subordonnée complétive COD"]}'::jsonb,
'"Que tu viennes" est introduite par "que" et est COD du verbe "veux" — subordonnée conjonctive complétive COD. Le subjonctif est requis car "vouloir" exprime une volonté. Test : remplace par un GN → "Je veux ta venue" ✓. La pronominalisation confirme : "Je le veux". Ces deux vérifications (substitution par GN et pronominalisation) sont les outils d''identification des complétives COD. Retiens : "que" + proposition = complétive si pas d''antécédent nominal.',
'valide','CRPE Français V2','premium',true),

('07000000-0000-0000-0000-000000000002','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','identification_grammaticale',
'Identifiez la nature et la fonction de "qui écoute" dans : "L''élève qui écoute progresse rapidement."',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée relative épithète de élève","subordonnée relative épithète","proposition relative complément du nom élève"]}'::jsonb,
'"Qui écoute" est introduite par le pronom relatif "qui" avec "l''élève" pour antécédent — subordonnée relative déterminative, épithète du nom "élève". Elle restreint l''ensemble désigné : parmi tous les élèves, seulement ceux qui écoutent progressent. Elle est non supprimable sans changer le sens. Rappel : déterminative = sans virgules, restreint ; appositive = avec virgules, peut être supprimée.',
'valide','CRPE Français V2','premium',true),

-- Q3 correct=b (cause) — move to d
('07000000-0000-0000-0000-000000000003','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','qcm',
'Dans "Il reste parce qu''il pleut", quelle est la nature de la subordonnée "parce qu''il pleut" ?',null,
'[{"id":"a","label":"Subordonnée circonstancielle de but"},{"id":"b","label":"Subordonnée circonstancielle de conséquence"},{"id":"c","label":"Subordonnée circonstancielle de condition"},{"id":"d","label":"Subordonnée circonstancielle de cause"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'"Parce qu''il pleut" indique la raison — subordonnée circonstancielle de cause ! Elle répond à "pourquoi ?". Attention à la confusion classique : cause ("parce que", "car") vs but ("pour que", "afin que"). La cause explique l''ORIGINE, le but vise un RÉSULTAT. La pluie ici est la raison pour laquelle il reste → cause. Si c''était "pour qu''il puisse rester au sec" → but. La direction temporelle est l''indice : cause regarde en arrière, but regarde en avant.',
'valide','CRPE Français V2','premium',true),

('07000000-0000-0000-0000-000000000004','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','identification_grammaticale',
'Identifiez la nature et la valeur de "quand il arrivera" dans : "Je serai prêt quand il arrivera."',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée circonstancielle de temps","subordonnée circonstancielle de temps","CC de temps"]}'::jsonb,
'"Quand il arrivera" situe le moment de l''action principale — subordonnée circonstancielle de temps. Et retiens cette règle importante sur le mode : après "quand" quand la principale est au futur, la subordonnée est aussi au FUTUR (pas au présent). "Je serai prêt quand il arrivera" (futur) — pas "quand il arrive" (présent). Cette règle est souvent mal appliquée, même par des natifs. C''est un point à connaître pour le CRPE.',
'valide','CRPE Français V2','premium',true),

-- Q5 correct=c (but) — keep at c
('07000000-0000-0000-0000-000000000005','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','qcm',
'Dans "J''explique lentement pour que vous compreniez", quelle est la valeur de la subordonnée ?',null,
'[{"id":"a","label":"Cause"},{"id":"b","label":"Conséquence"},{"id":"c","label":"But"},{"id":"d","label":"Condition"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Pour que vous compreniez" exprime l''OBJECTIF visé — subordonnée circonstancielle de but ! Elle est toujours au subjonctif. À distinguer de la conséquence ("si bien que", "de sorte que") qui décrit un résultat RÉEL déjà produit. Le but, lui, désigne ce qu''on VISE, ce qui n''est pas encore réalisé. Signal : but → subjonctif (hypothétique), conséquence → indicatif (réel). Cette opposition mode subjonctif/indicatif est un excellent outil de distinction.',
'valide','CRPE Français V2','premium',true),

('07000000-0000-0000-0000-000000000006','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','vrai_faux',
'Vrai ou faux : La subordonnée relative est toujours introduite par un pronom relatif.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai — c''est la définition même de la relative ! Les pronoms relatifs : qui, que, quoi, dont, où, lequel (avec ses formes composées : auquel, duquel, auxquels…). Chaque pronom relatif correspond à une fonction précise dans la subordonnée. "Qui" = sujet. "Que" = COD. "Dont" = complément avec "de". "Où" = lieu ou temps. "Lequel" + préposition = COI ou complément prépositionnel. Maîtriser quel pronom relatif utiliser, c''est maîtriser la syntaxe de la relative.',
'valide','CRPE Français V2','premium',true),

('07000000-0000-0000-0000-000000000007','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','identification_grammaticale',
'Identifiez la nature et la valeur de "bien qu''il soit fatigué" dans : "Bien qu''il soit fatigué, il continue."',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée circonstancielle de concession","subordonnée circonstancielle de concession","subordonnée de concession","subordonnée d''opposition"]}'::jsonb,
'"Bien qu''il soit fatigué" exprime un obstacle qui ne suffit pas à empêcher l''action principale — subordonnée de concession ! Elle requiert le subjonctif. "Malgré quoi ?" → "malgré sa fatigue". C''est l''idée du "quand même" : la fatigue est là, mais il continue quand même. Retiens : "bien que" + subjonctif = concession. Autres conjonctions de concession : quoique, encore que (toutes avec le subjonctif), même si (avec l''indicatif).',
'valide','CRPE Français V2','premium',true),

-- Q8 correct=c (subordonnée conjonctive complétive COD) — move to a
('07000000-0000-0000-0000-000000000008','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','qcm',
'Dans "Je doute qu''il vienne à la réunion", quelle est la nature de "qu''il vienne" ?',null,
'[{"id":"a","label":"Subordonnée conjonctive complétive COD"},{"id":"b","label":"Subordonnée relative"},{"id":"c","label":"Subordonnée circonstancielle de temps"},{"id":"d","label":"Subordonnée circonstancielle de cause"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Qu''il vienne" est COD du verbe "doute" — subordonnée conjonctive complétive COD. Le subjonctif est requis car "douter" exprime l''incertitude. Et retiens la règle de bascule : "je doute" (affirmatif) + subjonctif. "Je pense" (affirmatif) + indicatif. "Je ne pense pas" (négatif) + subjonctif possible. La nuance certitude / incertitude est ce qui commande le mode dans ces complétives.',
'valide','CRPE Français V2','premium',true),

('07000000-0000-0000-0000-000000000009','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','identification_grammaticale',
'Identifiez la nature et la valeur de "si tu travailles" dans : "Tu réussiras si tu travailles."',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée circonstancielle de condition","subordonnée circonstancielle de condition","subordonnée conditionnelle","subordonnée de condition"]}'::jsonb,
'"Si tu travailles" pose une condition pour que l''action principale se réalise — subordonnée circonstancielle de condition (ou hypothétique). Règle d''or : après "si" conditionnel, on emploie le PRÉSENT (jamais le futur ni le conditionnel dans la subordonnée). "Tu réussiras si tu travailles" (futur dans la principale, présent dans la subordonnée). Cette règle de concordance est une des plus importantes à maîtriser pour l''écrit soigné.',
'valide','CRPE Français V2','premium',true),

('07000000-0000-0000-0000-000000000010','Francais','grammaire','grm_propositions_inter','Propositions subordonnées','Intermediaire','vrai_faux',
'Vrai ou faux : Une subordonnée conjonctive complétive COD peut être remplacée par un pronom COD (le, la, les).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai — et c''est le test de vérification de la fonction COD ! "Je veux que tu viennes" → "Je le veux". "Il croit qu''elle a raison" → "Il le croit". La pronominalisation par "le" (neutre, reprenant la proposition entière) confirme la fonction COD. C''est un test très utile pour distinguer une complétive COD d''une complétive sujet ou d''une circonstancielle. Si ça se pronominalize en "le" → COD confirmé.',
'valide','CRPE Français V2','premium',true),

-- ================================================================
-- SÉRIE 08 — Subordination avancée — Avancé — premium
-- ================================================================

-- Q1 correct=b (restreint la référence) — move to d
('08000000-0000-0000-0000-000000000001','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','qcm',
'Dans "Les élèves qui travaillent réussissent", la relative est déterminative. Quelle en est la conséquence ?',null,
'[{"id":"a","label":"Elle peut être supprimée sans changer le sens fondamental."},{"id":"b","label":"Elle est équivalente à un adjectif épithète détaché."},{"id":"c","label":"Elle est toujours précédée d''une virgule."},{"id":"d","label":"Elle restreint la référence du nom et ne peut être supprimée sans changer le sens."}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La relative déterminative RESTREINT — c''est essentiel à comprendre ! Parmi TOUS les élèves, seuls ceux qui travaillent réussissent. Supprime-la : "Les élèves réussissent" → sens radicalement différent (tous les élèves ?). Elle est donc non supprimable sans perte de sens. Rappel : la relative explicative (entre virgules) peut être supprimée car elle ajoute une info accessoire sur un référent déjà identifié. Pas de virgules = déterminative = restrictive = non supprimable.',
'valide','CRPE Français V2','premium',true),

-- Q2 correct=c (complément de l'adjectif) — keep at c
('08000000-0000-0000-0000-000000000002','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','qcm',
'Dans "Je suis content qu''il soit là", quelle est la fonction de "qu''il soit là" ?',null,
'[{"id":"a","label":"Sujet du verbe suis"},{"id":"b","label":"COD du verbe suis"},{"id":"c","label":"Complément de l''adjectif content"},{"id":"d","label":"CC de cause"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Qu''il soit là" complète l''ADJECTIF "content" — complément de l''adjectif ! Le subjonctif est requis car l''adjectif exprime une réaction émotionnelle. Test : "content de quoi ?" → qu''il soit là. Ne fais pas l''erreur d''analyser cette proposition comme COD du verbe "suis" — "être" est un verbe copule, pas un verbe d''action qui prendrait un COD. Ici c''est bien l''adjectif "content" qui a besoin de ce complément.',
'valide','CRPE Français V2','premium',true),

-- Q3 correct=c (sujet du verbe réjouit) — move to b
('08000000-0000-0000-0000-000000000003','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','qcm',
'Dans "Que tu aies réussi me réjouit", quelle est la fonction de la proposition "Que tu aies réussi" ?',null,
'[{"id":"a","label":"COD du verbe réjouit"},{"id":"b","label":"Sujet du verbe réjouit"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"CC de cause"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Que tu aies réussi" est la proposition qui réjouit — elle est sujet du verbe "réjouit". Test : remplace par "cela" → "Cela me réjouit" → "cela" = sujet ✓. Les subordonnées peuvent remplir la fonction de sujet ! Le subjonctif passé exprime ici l''antériorité : la réussite est antérieure au réjouissement. Cette construction avec une complétive sujet en tête de phrase est littéraire et stylistiquement marquée.',
'valide','CRPE Français V2','premium',true),

('08000000-0000-0000-0000-000000000004','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','identification_grammaticale',
'Dans "Il ignore où elle est allée", identifiez la nature et la fonction de "où elle est allée".',null,null,
'{"mode":"text","acceptableAnswers":["subordonnée interrogative indirecte COD","proposition subordonnée interrogative indirecte COD de ignore"]}'::jsonb,
'"Où elle est allée" est une subordonnée interrogative indirecte — elle transpose la question directe "Où est-elle allée ?" en subordonnée. Et elle est COD du verbe "ignore". Elle se distingue de la relative par l''absence d''antécédent nominal : pas de nom avant "où" ici. Le verbe "ignorer" signifie "ne pas savoir" → il peut prendre une interrogative indirecte comme COD, tout comme "savoir", "demander", "dire"…',
'valide','CRPE Français V2','premium',true),

('08000000-0000-0000-0000-000000000005','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','vrai_faux',
'Vrai ou faux : Dans "Plus il travaille, plus il progresse", la construction est une corrélative comparative.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! La construction "plus...plus" (ou "moins...moins", "plus...moins") est une corrélative comparative exprimant la proportionnalité. C''est une structure caractéristique du français — les deux propositions sont liées par la corrélation, sans conjonction entre elles. Et retiens la règle typographique : pas de virgule entre les deux propositions corrélatives (contrairement à ce qu''on pourrait penser). C''est une structure fréquente dans les textes argumentatifs.',
'valide','CRPE Français V2','premium',true),

-- Q6 correct=b (proposition infinitive COD) — keep at b
('08000000-0000-0000-0000-000000000006','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','qcm',
'Dans "Il a dit avoir compris la règle", quelle est la nature de "avoir compris la règle" ?',null,
'[{"id":"a","label":"Un groupe nominal COD"},{"id":"b","label":"Une proposition infinitive COD"},{"id":"c","label":"Un attribut du sujet"},{"id":"d","label":"Un CC de manière"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Avoir compris la règle" est une proposition infinitive COD de "a dit" — avec le même sujet implicite "il". Elle équivaut à "qu''il avait compris la règle" (même sujet → infinitif au lieu de complétive). C''est la règle : même sujet dans les deux propositions → on peut utiliser l''infinitif, ce qui évite la répétition et allège la phrase. Sujet différent → complétive obligatoire ("Il a dit qu''elle avait compris").',
'valide','CRPE Français V2','premium',true),

('08000000-0000-0000-0000-000000000007','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','vrai_faux',
'Vrai ou faux : Dans "Il a travaillé tellement qu''il en est épuisé", la subordonnée exprime la conséquence.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! "Tellement que" introduit une subordonnée circonstancielle de conséquence : l''intensité du travail a pour résultat l''épuisement. Retiens les structures consécutives : si bien que, de sorte que, tellement que, au point que, assez pour que. La conséquence exprime un résultat RÉEL → indicatif. À distinguer du but (résultat visé, non encore réalisé → subjonctif). "Tellement" + "que" est le signal le plus courant de la consécutive en français courant.',
'valide','CRPE Français V2','premium',true),

('08000000-0000-0000-0000-000000000008','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','vrai_faux',
'Vrai ou faux : La proposition participiale "Ayant terminé l''exercice, il rendit sa copie" a un sujet différent de celui de la principale.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! En proposition participiale sans sujet propre exprimé, le sujet implicite DOIT être identique au sujet de la principale — ici "il". C''est la règle fondamentale de la participiale : si les sujets diffèrent, il faut une participiale ABSOLUE avec sujet propre exprimé : "La cloche ayant sonné, il rendit sa copie" (sujet "la cloche" ≠ "il"). Un sujet différent sans sujet propre exprimé = erreur de construction.',
'valide','CRPE Français V2','premium',true),

-- Q9 correct=b (croire affirmatif + indicatif) — move to a
('08000000-0000-0000-0000-000000000009','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','qcm',
'Dans "Il croit que la Terre est ronde", le verbe de la subordonnée est à l''indicatif. Pourquoi ?',null,
'[{"id":"a","label":"Parce que croire à l''affirmatif exprime une certitude et appelle l''indicatif."},{"id":"b","label":"Parce que la subordonnée est au style indirect."},{"id":"c","label":"Parce qu''il n''existe pas de subjonctif pour ce verbe."},{"id":"d","label":"Parce que la subordonnée est une interrogative indirecte."}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Croire" à la forme AFFIRMATIVE exprime une opinion présentée comme certaine → indicatif. Mais retourne la phrase : "Je ne crois pas qu''il vienne" (négatif) ou "Crois-tu qu''il vienne ?" (interrogatif) → subjonctif ! Le doute s''installe dès qu''on nie ou qu''on interroge. La bascule affirmatif/négatif-interrogatif est une règle clé. Même logique pour "penser", "dire", "savoir" : affirmatif → indicatif, négatif/interrogatif → subjonctif possible.',
'valide','CRPE Français V2','premium',true),

('08000000-0000-0000-0000-000000000010','Francais','grammaire','grm_propositions_avance','Subordination et syntaxe avancée','Avance','identification_grammaticale',
'Dans "À peine était-il entré qu''il aperçut la lumière", identifiez la construction syntaxique remarquable.',null,null,
'{"mode":"text","acceptableAnswers":["inversion du sujet après un adverbe en tête de phrase","inversion du sujet","construction avec inversion après à peine"]}'::jsonb,
'Inversion du sujet après un adverbe en tête de phrase ! "À peine", "aussi", "encore", "peut-être" en tête de proposition → inversion obligatoire du sujet. C''est une inversion stylistique qui donne un effet de relief narratif, très fréquente dans les textes littéraires classiques et contemporains. Reconnaître cette construction est important pour l''analyse stylistique au CRPE. Elle n''est pas incorrecte — elle est même élégante et attendue dans un certain registre.',
'valide','CRPE Français V2','premium',true),

-- ================================================================
-- SÉRIE 09 — Groupes fonctionnels — Intermédiaire — free
-- ================================================================
('09000000-0000-0000-0000-000000000001','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','identification_grammaticale',
'Délimitez le groupe nominal sujet dans : "Le jeune professeur de mathématiques arrive en retard."',null,null,
'{"mode":"text","acceptableAnswers":["Le jeune professeur de mathématiques","le jeune professeur de mathématiques"]}'::jsonb,
'"Le jeune professeur de mathématiques" — c''est le GN sujet complet ! Il est formé du déterminant "Le", du nom noyau "professeur", de l''épithète "jeune" et du complément du nom "de mathématiques". Retiens : le GN peut être étendu par des expansions sans que son noyau change. Pour délimiter le GN, cherche le nom noyau et tout ce qui en dépend à gauche (déterminant, épithète antéposée) et à droite (épithète postposée, complément du nom, relative).',
'valide','CRPE Français V2','free',true),

-- Q2 correct=b (un nom) — move to d
('09000000-0000-0000-0000-000000000002','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','qcm',
'Quel élément est obligatoirement le noyau d''un groupe nominal ?',null,
'[{"id":"a","label":"Un déterminant"},{"id":"b","label":"Un adjectif qualificatif"},{"id":"c","label":"Une préposition"},{"id":"d","label":"Un nom"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le noyau du GN est TOUJOURS un nom (ou un pronom). Le déterminant et les expansions (adjectifs, compléments du nom, relatives) sont des éléments facultatifs ou variables. Sans nom noyau, pas de GN au sens strict. Retiens : dans un GN, tout est organisé autour du nom. Peu importe le nombre d''expansions, le nom reste le centre — c''est lui qui commande les accords des adjectifs et du verbe (via la fonction sujet).',
'valide','CRPE Français V2','free',true),

('09000000-0000-0000-0000-000000000003','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','identification_grammaticale',
'Identifiez le noyau du GN dans : "la magnifique robe de soirée brodée".',null,null,
'{"mode":"text","acceptableAnswers":["robe"]}'::jsonb,
'Le noyau est "robe" — et tout le reste est organisé autour de lui ! "Magnifique" et "brodée" sont des épithètes (adjectifs qualificatifs), "de soirée" est un complément du nom (groupe prépositionnel). Pour trouver le noyau, pose la question : de quoi parle-t-on dans ce GN ? → d''une robe. C''est "robe" qui porte toute l''information essentielle — les expansions ne font que l''enrichir.',
'valide','CRPE Français V2','free',true),

('09000000-0000-0000-0000-000000000004','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','vrai_faux',
'Vrai ou faux : Un groupe prépositionnel commence obligatoirement par une préposition.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai — c''est même sa définition ! Le groupe prépositionnel (GP) est toujours introduit par une préposition (à, de, dans, pour, avec, sur, etc.) suivie d''un GN, d''un infinitif ou d''un adverbe. Exemples : "avec enthousiasme" (prép + GN), "de partir" (prép + infinitif), "pour demain" (prép + adverbe). La préposition est le noyau du GP, c''est elle qui donne sa nature au groupe. Sans préposition, ce n''est pas un GP.',
'valide','CRPE Français V2','free',true),

('09000000-0000-0000-0000-000000000005','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','identification_grammaticale',
'Délimitez le groupe verbal dans : "Les élèves révisent attentivement leurs leçons depuis ce matin."',null,null,
'{"mode":"text","acceptableAnswers":["révisent attentivement leurs leçons depuis ce matin"]}'::jsonb,
'Le GV commence après le GN sujet "Les élèves" et comprend tout le reste : le verbe noyau "révisent" + le COD "leurs leçons" + le CC de manière "attentivement" + le CC de temps "depuis ce matin". Le GV = verbe + tous ses compléments et modificateurs. Pour le délimiter : trouve d''abord le GN sujet, puis tout ce qui suit jusqu''à la fin de la proposition = GV.',
'valide','CRPE Français V2','free',true),

-- Q6 correct=b (GP CC de manière) — move to c
('09000000-0000-0000-0000-000000000006','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','qcm',
'Dans "Il parle avec enthousiasme", comment analyser "avec enthousiasme" ?',null,
'[{"id":"a","label":"Groupe adjectival CC de manière"},{"id":"b","label":"Groupe verbal"},{"id":"c","label":"Groupe prépositionnel CC de manière"},{"id":"d","label":"Groupe nominal COD"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Avec enthousiasme" est un groupe prépositionnel (préposition "avec" + GN "enthousiasme") qui indique la manière — GP à fonction de CC de manière. Un groupe adjectival serait formé autour d''un adjectif ("très animé"). Un groupe verbal a un verbe comme noyau. Ici c''est clairement une préposition + nom → GP. Et sa fonction : CC de manière (répond à "comment ?"). Nature et fonction = deux informations distinctes à toujours donner ensemble.',
'valide','CRPE Français V2','free',true),

('09000000-0000-0000-0000-000000000007','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','identification_grammaticale',
'Dans "une maison avec un grand jardin", identifiez le type d''expansion du nom "maison".',null,null,
'{"mode":"text","acceptableAnswers":["groupe prépositionnel complément du nom","complément du nom","GP complément du nom"]}'::jsonb,
'"Avec un grand jardin" est un groupe prépositionnel complément du nom "maison" — il apporte une information sur le référent du nom. C''est une expansion nominale. Autres types d''expansions possibles pour le nom : adjectif épithète, proposition relative, apposition. Toutes ces expansions enrichissent le GN sans modifier sa fonction dans la phrase. Le complément du nom est toujours introduit par une préposition.',
'valide','CRPE Français V2','free',true),

('09000000-0000-0000-0000-000000000008','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','vrai_faux',
'Vrai ou faux : Le noyau du groupe verbal est toujours le verbe conjugué.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! Dans la phrase verbale, le noyau du GV est toujours le verbe conjugué. Les compléments (COD, COI, CC, attribut) sont des expansions du GV — ils gravitent autour du verbe. Dans une phrase nominale (sans verbe conjugué), il n''y a pas de GV au sens strict. Retiens : le verbe conjugué est le cœur de la phrase verbale — tout en dépend syntaxiquement. C''est lui qui commande les expansions obligatoires (comme l''attribut avec les verbes copules) ou facultatives (les CC).',
'valide','CRPE Français V2','free',true),

-- Q9 correct=a (GN sujet + GV) — keep at a
('09000000-0000-0000-0000-000000000009','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','qcm',
'Quel est le constituant obligatoire d''une phrase verbale minimale ?',null,
'[{"id":"a","label":"Un GN sujet et un GV"},{"id":"b","label":"Un GN sujet, un GV et un CC"},{"id":"c","label":"Un GN sujet, un GV et un COD"},{"id":"d","label":"Un GN sujet, un GV et un attribut"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Une phrase verbale minimale = GN sujet + GV. C''est tout ! Les compléments (CC, COD) sont des expansions facultatives selon la valence du verbe. "Il dort" est une phrase verbale minimale et complète — pas besoin d''autre chose. Retiens : seuls le sujet et le verbe sont obligatoires dans la phrase verbale de base. Les compléments enrichissent, précisent, mais ne sont généralement pas obligatoires pour que la phrase soit grammaticale.',
'valide','CRPE Français V2','free',true),

-- Q10 correct=c (groupe adverbial) — move to b
('09000000-0000-0000-0000-000000000010','Francais','grammaire','grm_groupes_fonctionnels','Groupes fonctionnels','Intermediaire','qcm',
'"Très intelligemment" est un exemple de quel type de groupe ?',null,
'[{"id":"a","label":"Groupe nominal"},{"id":"b","label":"Groupe adverbial"},{"id":"c","label":"Groupe verbal"},{"id":"d","label":"Groupe prépositionnel"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Très intelligemment" est un groupe adverbial : adverbe noyau ("intelligemment") modifié par un autre adverbe ("très"). Les groupes adverbiaux fonctionnent comme CC ou comme modificateurs d''adjectifs. Ce n''est pas un GN (pas de nom noyau), pas un GV (pas de verbe conjugué). Retiens : les groupes syntaxiques portent le nom de leur NOYAU — GN autour d''un nom, GV autour d''un verbe, GP autour d''une préposition, GAdj autour d''un adjectif, GAdv autour d''un adverbe.',
'valide','CRPE Français V2','free',true),

-- ================================================================
-- SÉRIE 10 — Analyse syntaxique complète — Avancé — premium
-- ================================================================
('10000000-0000-0000-0000-000000000001','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','reponse_courte',
'Dans "Les enfants qui jouent dans la cour font beaucoup de bruit", combien y a-t-il de propositions ?',null,null,
'{"mode":"text","acceptableAnswers":["2","deux","2 propositions","deux propositions"]}'::jsonb,
'Deux propositions — et le truc c''est de COMPTER LES VERBES CONJUGUÉS ! "jouent" → proposition 1, "font" → proposition 2. Donc : proposition principale "Les enfants [...] font beaucoup de bruit" + proposition subordonnée relative "qui jouent dans la cour". Règle d''or : une proposition = un verbe conjugué. C''est le moyen le plus fiable pour compter les propositions dans une phrase complexe.',
'valide','CRPE Français V2','premium',true),

('10000000-0000-0000-0000-000000000002','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','identification_grammaticale',
'Dans "Bien qu''il soit compétent, il n''a pas été retenu", identifiez la nature et la valeur de la première proposition.',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée circonstancielle de concession","subordonnée de concession","subordonnée circonstancielle de concession"]}'::jsonb,
'"Bien qu''il soit compétent" — subordonnée circonstancielle de concession ! Sa compétence ne suffit pas à expliquer sa non-sélection : c''est l''idée du "quand même". Et la principale est à la forme négative passive : "il n''a pas été retenu" (passive → "a été retenu" + négative → "n''a pas"). Une phrase peut analyser deux choses en même temps — toujours examiner type + forme pour la principale, et nature + valeur pour la subordonnée.',
'valide','CRPE Français V2','premium',true),

('10000000-0000-0000-0000-000000000003','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','vrai_faux',
'Vrai ou faux : Dans "Je pense qu''il a raison et qu''il faut le dire", il y a deux subordonnées conjonctives coordonnées.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! Les deux subordonnées "qu''il a raison" et "qu''il faut le dire" sont coordonnées par "et" et partagent la même fonction : toutes deux sont COD de "pense". Cette coordination de subordonnées est économique et élégante — on n''a pas besoin de répéter le verbe principal. Retiens : on peut coordonner des subordonnées de même fonction et de même nature, comme on coordonne des GN ou des adjectifs. C''est un procédé syntaxique courant dans les textes élaborés.',
'valide','CRPE Français V2','premium',true),

-- Q4 correct=c (sujet du verbe est) — move to a
('10000000-0000-0000-0000-000000000004','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','qcm',
'Dans "Travailler régulièrement est la clé du succès", quelle est la fonction de "Travailler régulièrement" ?',null,
'[{"id":"a","label":"Sujet du verbe est"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"COD du verbe est"},{"id":"d","label":"CC de manière"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Travailler régulièrement" est une proposition infinitive SUJET du verbe "est" ! Test : remplace par un GN → "Le travail régulier est la clé du succès" → "le travail régulier" est sujet. La proposition infinitive peut remplir toutes les fonctions du GN, y compris le sujet. C''est moins courant que la complétive sujet ("Que tu travailles est bien"), mais c''est fréquent avec des infinitives généralisantes ou sentencieuses.',
'valide','CRPE Français V2','premium',true),

('10000000-0000-0000-0000-000000000005','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','identification_grammaticale',
'Dans "Il est parti avant que je n''arrive", identifiez la nature et la valeur de "avant que je n''arrive".',null,null,
'{"mode":"text","acceptableAnswers":["proposition subordonnée circonstancielle de temps","subordonnée circonstancielle de temps","subordonnée de temps exprimant l''antériorité"]}'::jsonb,
'"Avant que je n''arrive" exprime l''antériorité — subordonnée circonstancielle de temps ! Son départ précède mon arrivée. "Avant que" requiert le subjonctif. Et le "ne" dans "n''arrive" — c''est le fameux ne EXPLÉTIF, non négatif, facultatif avec "avant que". Sa présence ne signifie pas "ne pas arriver" — c''est purement stylistique. "Avant que je n''arrive" = avant que j''arrive. Ne confonds pas avec la vraie négation !',
'valide','CRPE Français V2','premium',true),

('10000000-0000-0000-0000-000000000006','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','reponse_courte',
'Quel mode verbal est obligatoire après la conjonction "avant que" ?',null,null,
'{"mode":"text","acceptableAnswers":["subjonctif","le subjonctif","mode subjonctif"]}'::jsonb,
'Le subjonctif — sans exception ! Et retiens la liste des conjonctions qui l''exigent : avant que, bien que, pour que, quoique, afin que, à moins que. Toutes expriment une nuance d''incertitude, de but ou de concession — qui justifie le subjonctif. Une bonne astuce : si la conjonction exprime quelque chose qui n''est pas encore réalisé ou qui est contré, elle prend le subjonctif. Ces conjonctions à subjonctif obligatoire tombent régulièrement au CRPE.',
'valide','CRPE Français V2','premium',true),

('10000000-0000-0000-0000-000000000007','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','vrai_faux',
'Vrai ou faux : Dans "Ayant fini son travail, il est sorti", la participiale exprime une valeur de temps ou de cause.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai — et c''est cette polysémie qui rend les participiales si intéressantes en analyse de texte ! "Ayant fini son travail" peut signifier "après avoir fini" (temps, antériorité) ou "parce qu''il avait fini" (cause). C''est le contexte qui précise la valeur. Et la règle de base toujours en vigueur : le sujet implicite de la participiale est "il" — il DOIT être identique au sujet de la principale. Sinon, erreur de construction (le fameux participe passé mal rattaché).',
'valide','CRPE Français V2','premium',true),

('10000000-0000-0000-0000-000000000008','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','reponse_courte',
'Dans "Il lui a conseillé de partir immédiatement", quelle est la nature et la fonction de "de partir immédiatement" ?',null,null,
'{"mode":"text","acceptableAnswers":["proposition infinitive COD","proposition infinitive complément d''objet direct","COD infinitif de conseiller"]}'::jsonb,
'"De partir immédiatement" est une proposition infinitive COD du verbe "conseillé" — il a conseillé quoi ? Le sujet implicite de l''infinitif est "lui" (la personne à qui on conseille), différent du sujet de la principale ("il"). Sujets différents → on ne peut pas fusionner en infinitif simple : il faut soit la complétive ("qu''il parte"), soit l''infinitif précédé de "de" avec sujet implicite clairement différent. Cette construction est typique des verbes comme conseiller, permettre, interdire, demander.',
'valide','CRPE Français V2','premium',true),

-- Q9 correct=c (5 propositions) — move to b
('10000000-0000-0000-0000-000000000009','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','qcm',
'Combien de propositions contient la phrase : "Je sais que tu travailles, mais je doute que tu réussisses si tu ne révises pas" ?',null,
'[{"id":"a","label":"3 propositions"},{"id":"b","label":"5 propositions"},{"id":"c","label":"4 propositions"},{"id":"d","label":"6 propositions"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Cinq propositions — compte les verbes conjugués ! "sais" (principale 1), "travailles" (complétive COD de sais), "doute" (principale 2, coordonnée par "mais"), "réussisses" (complétive COD de doute), "révises" (subordonnée conditionnelle). Voilà les 5 propositions. La méthode : chaque verbe conjugué = une proposition. Ne te laisse pas intimider par la longueur de la phrase — la méthode reste la même.',
'valide','CRPE Français V2','premium',true),

('10000000-0000-0000-0000-000000000010','Francais','grammaire','grm_analyse_complete','Analyse syntaxique complète','Avance','vrai_faux',
'Vrai ou faux : Dans "C''est parce qu''il a travaillé qu''il a réussi", il y a une mise en relief d''une subordonnée de cause.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai — et c''est une construction remarquable à connaître ! La structure "c''est...que" extrait et met en relief "parce qu''il a travaillé". C''est une emphase appliquée à un CIRCONSTANCIEL — pas seulement aux sujets et COD ! Cette phrase montre que même des subordonnées circonstancielles peuvent être focalisées. C''est une construction expressément et littérairement marquée. Retiens : "c''est...que" peut s''appliquer à n''importe quel groupe ou proposition extractible de la phrase.',
'valide','CRPE Français V2','premium',true);
