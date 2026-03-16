-- Migration: Mise à jour des explanations dans la voix de Mocca
-- Date: 2026-03-16
-- Source: extraction depuis tous les fichiers seed (218 exercices)

UPDATE public.exercises SET
  detailed_explanation = '"Attentivement" précise la manière dont les élèves écoutent — il modifie le verbe "écoutent". C''est donc un adverbe ! Retiens : les adverbes modifient un verbe, un adjectif ou un autre adverbe. Ici, la terminaison en -ment est un bon indice.'
WHERE id = '11111111-1111-1111-1111-111111111111';

UPDATE public.exercises SET
  detailed_explanation = 'Le groupe nominal complète directement le verbe "préparent" sans préposition — pose-toi la question : "préparer quoi ?" → "les évaluations". Sans préposition = COD. C''est la manipulation de référence pour identifier cette fonction !'
WHERE id = '11111111-1111-1111-1111-111111111112';

UPDATE public.exercises SET
  detailed_explanation = 'Faux ! Avec le verbe pronominal "se parler", le complément est indirect — "parler à quelqu''un". Pas de COD placé avant l''auxiliaire, donc pas d''accord. Le participe passé "parlé" reste invariable. Attention au piège : l''auxiliaire être ne suffit pas à déclencher l''accord !'
WHERE id = '11111111-1111-1111-1111-111111111113';

UPDATE public.exercises SET
  detailed_explanation = 'Le nom "enfant" doit être accordé au pluriel : "enfants". C''est le déterminant "Les" qui te le signale — pluriel appelle pluriel dans le groupe nominal. Le reste de la phrase est correct.'
WHERE id = '11111111-1111-1111-1111-111111111114';

UPDATE public.exercises SET
  detailed_explanation = 'Le futur simple de "voir" avec "nous" est "nous verrons" — un futur irrégulier avec le radical "verr-". "Nous voyons" c''est le présent, "nous verrions" c''est le conditionnel. Retiens le radical "verr-" comme pour "vouloir" → "voudr-" : les irréguliers du futur ont souvent un double r !'
WHERE id = '11111111-1111-1111-1111-111111111115';

UPDATE public.exercises SET
  detailed_explanation = 'Après "il faut que", on emploie le subjonctif présent — sans exception ! Pour "prendre" à la 2e personne du pluriel, le subjonctif donne "vous preniez". Astuce : pense à "ils prennent" pour trouver le radical du subjonctif des verbes irréguliers.'
WHERE id = '11111111-1111-1111-1111-111111111116';

UPDATE public.exercises SET
  detailed_explanation = 'Dans un contexte d''étude, "rigoureux" renvoie à une attitude sérieuse et ordonnée — "méthodique" partage exactement ce sens. "Bruyant" et "timide" n''ont aucun rapport avec la rigueur intellectuelle. Les synonymes partiels partagent un sens dans un contexte donné, même s''ils ne sont pas toujours interchangeables.'
WHERE id = '11111111-1111-1111-1111-111111111117';

UPDATE public.exercises SET
  detailed_explanation = 'L''antonyme courant de "explicite" est "implicite" — ce qui est dit ouvertement vs ce qui est sous-entendu. En didactique de la lecture, la distinction explicite/implicite est fondamentale : les inférences portent précisément sur l''implicite du texte !'
WHERE id = '11111111-1111-1111-1111-111111111118';

UPDATE public.exercises SET
  detailed_explanation = 'Le texte insiste sur le calme retrouvé, le silence et la détente progressive. "Apaisement" est même nommé explicitement — et renforcé par les indices implicites : les voix qui se taisent, les regards qui se posent. Le sentiment dominant saute aux yeux !'
WHERE id = '11111111-1111-1111-1111-111111111119';

UPDATE public.exercises SET
  detailed_explanation = 'L''amélioration est perceptible dans les détails : le bruit diminue ("les voix se taisaient") et le calme devient envisageable ("le silence semblait enfin possible"). Ces formulations montrent une progression — la situation n''est pas encore parfaite, mais elle évolue dans le bon sens. Apprendre à repérer ces indices d''évolution, c''est développer la lecture fine.'
WHERE id = '11111111-1111-1111-1111-111111111120';

UPDATE public.exercises SET
  detailed_explanation = '"Quand il pleut" introduit une circonstance temporelle et contient un verbe conjugué — c''est donc une proposition subordonnée circonstancielle de temps. Le mot subordonnant "quand" est un connecteur temporel. Tu peux vérifier en la remplaçant par "lorsqu''il pleut" — même sens, même nature.'
WHERE id = '11111111-1111-1111-1111-111111111121';

UPDATE public.exercises SET
  detailed_explanation = 'L''auteur construit une progression graduelle : d''abord le bruit diminue ("se taisaient"), puis le silence devient envisageable ("semblait enfin possible"). L''adverbe "enfin" est clé — il suggère une attente, un soulagement. L''effet produit est celui d''un retour graduel au calme, pas d''un basculement brutal.'
WHERE id = '11111111-1111-1111-1111-111111111122';

UPDATE public.exercises SET
  detailed_explanation = 'Faux ! La pratique régulière de lecture ne suffit pas — c''est une idée reçue bien ancrée mais invalidée par la recherche. Les stratégies de compréhension doivent être enseignées explicitement : faire des inférences, identifier l''implicite, repérer la structure du texte… Lire beaucoup sans enseignement stratégique, c''est comme nager sans jamais apprendre les techniques. L''enseignement explicite est indispensable !'
WHERE id = '11111111-1111-1111-1111-111111111123';

UPDATE public.exercises SET
  detailed_explanation = 'Demander aux élèves de s''appuyer sur le texte développe une compréhension argumentée, fondée sur des indices explicites. Ce n''est pas juste "donner la bonne réponse" — c''est apprendre à la justifier par des preuves textuelles. C''est exactement ce qu''évalue le CRPE dans les questions d''analyse littéraire !'
WHERE id = '11111111-1111-1111-1111-111111111124';

UPDATE public.exercises SET
  detailed_explanation = '"Petit" qualifie le nom "chat" en indiquant une de ses caractéristiques — c''est un adjectif qualificatif épithète. Retiens : épithète = l''adjectif est directement placé à côté du nom (avant ou après), sans verbe entre les deux.'
WHERE id = '11111111-1111-1111-1111-111111111125';

UPDATE public.exercises SET
  detailed_explanation = '"Dans" introduit un complément de lieu et établit une relation entre "joue" et "la cour" — c''est une préposition. Les prépositions sont des mots invariables qui relient deux éléments : de, à, par, pour, en, dans, sur, sous… À ne pas confondre avec les adverbes, qui ne construisent pas de groupe prépositionnel.'
WHERE id = '11111111-1111-1111-1111-111111111126';

UPDATE public.exercises SET
  detailed_explanation = '"Et" relie deux groupes nominaux de même fonction — c''est une conjonction de coordination. Retiens les 7 conjonctions de coordination : mais, ou, et, donc, or, ni, car. Un moyen mnémotechnique classique : "Mais ou est donc Ornicar ?"'
WHERE id = '11111111-1111-1111-1111-111111111127';

UPDATE public.exercises SET
  detailed_explanation = '"Nous" désigne les locuteurs et remplace un groupe nominal — c''est un pronom personnel sujet. Sa fonction ici est sujet du verbe "partons". Les pronoms personnels sujets : je, tu, il/elle, nous, vous, ils/elles. À distinguer des pronoms personnels compléments (me, te, le, lui, nous, vous, les, leur…).'
WHERE id = '11111111-1111-1111-1111-111111111128';

UPDATE public.exercises SET
  detailed_explanation = '"À Marie" complète le verbe "offrir" par l''intermédiaire de la préposition "à" — c''est un complément d''objet indirect. La règle : avec préposition = COI (à qui ? de quoi ?). Sans préposition = COD (qui ? quoi ?). La préposition est le signal distinctif !'
WHERE id = '11111111-1111-1111-1111-111111111129';

UPDATE public.exercises SET
  detailed_explanation = '"Intelligent" est relié au sujet "il" par le verbe d''état "sembler" — c''est un attribut du sujet. Les verbes d''état qui introduisent un attribut : être, paraître, sembler, devenir, rester, avoir l''air… L''attribut dit quelque chose du sujet à travers le verbe.'
WHERE id = '11111111-1111-1111-1111-111111111130';

UPDATE public.exercises SET
  detailed_explanation = '"Les élèves" commande l''accord du verbe "travaillent" — c''est le sujet du verbe. Astuce : pour trouver le sujet, pose la question "qui est-ce qui + verbe ?" → "Qui est-ce qui travaille ?" → "Les élèves". La manipulation de la pronominalisation (ils travaillent) confirme.'
WHERE id = '11111111-1111-1111-1111-111111111131';

UPDATE public.exercises SET
  detailed_explanation = '"La leçon" répond à la question "expliquer quoi ?" — sans préposition. C''est un complément d''objet direct. La manipulation de pronominalisation confirme : "Il l''explique" — le pronom COD "l''" remplace "la leçon".'
WHERE id = '11111111-1111-1111-1111-111111111132';

UPDATE public.exercises SET
  detailed_explanation = 'Le futur simple de "aller" est irrégulier avec le radical "ir-" : j''irai, tu iras, il ira, nous irons… "Je vais" c''est le présent, "j''allais" c''est l''imparfait. Parmi les futurs irréguliers à retenir absolument : aller → ir-, être → ser-, avoir → aur-, faire → fer-.'
WHERE id = '11111111-1111-1111-1111-111111111133';

UPDATE public.exercises SET
  detailed_explanation = 'L''imparfait de "être" donne : j''étais, tu étais, il était, nous étions, vous étiez, ils étaient. "Nous sommes" c''est le présent, "nous serons" c''est le futur. L''imparfait se reconnaît aux terminaisons : -ais, -ais, -ait, -ions, -iez, -aient — invariables pour tous les verbes !'
WHERE id = '11111111-1111-1111-1111-111111111134';

UPDATE public.exercises SET
  detailed_explanation = 'Le présent de "avoir" à la 3e personne du pluriel est "ils ont" — un verbe irrégulier à mémoriser absolument. "Ils avaient" c''est l''imparfait, "ils auront" le futur. "Avoir" au présent : j''ai, tu as, il a, nous avons, vous avez, ils ont. Irrégulier mais incontournable !'
WHERE id = '11111111-1111-1111-1111-111111111135';

UPDATE public.exercises SET
  detailed_explanation = 'Le futur simple de "faire" est irrégulier avec le radical "fer-" : je ferai, tu feras, il fera… "Tu faisais" c''est l''imparfait, "tu faites" c''est le présent. Retiens la famille des futurs en "r double" : faire → fer-, voir → verr-, vouloir → voudr-. Ces irréguliers reviennent souvent au concours !'
WHERE id = '11111111-1111-1111-1111-111111111136';

UPDATE public.exercises SET
  detailed_explanation = '"Lentement" dit COMMENT il marche — il modifie le verbe, c''est donc un adverbe de manière. Formé sur l''adjectif "lent" avec le suffixe "-ment", c''est le procédé de formation le plus courant pour les adverbes de manière. Retiens : adjectif au féminin + -ment = adverbe. Ici "lente" + "-ment" = "lentement". Simple et fiable !'
WHERE id = '01000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '"Grand" qualifie le nom "arbre" en lui attribuant une propriété — c''est un adjectif qualificatif épithète, placé AVANT le nom. Bien vu si tu l''as repéré directement ! Les adjectifs courts et courants comme "grand", "petit", "beau", "vieux" se placent généralement avant le nom en français — c''est une particularité à mémoriser.'
WHERE id = '01000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = '"France" désigne un lieu géographique unique et prend une majuscule — c''est un nom propre ! Il se distingue du nom commun qui désigne une catégorie d''êtres ou d''objets ("un pays", "une ville"). Signal infaillible : la majuscule. Noms de personnes, de villes, de pays, de fleuves — tous des noms propres.'
WHERE id = '01000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = '"Une" introduit le nom "écolière" sans le définir précisément — c''est un déterminant article indéfini. Il s''oppose à "la" (défini, qui pointe vers quelqu''un de connu) et se distingue du numéral "un" utilisé pour compter. Retiens : indéfini = on présente pour la première fois ou de façon générale. Défini = on connaît déjà de quoi on parle.'
WHERE id = '01000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '"Et" relie deux groupes nominaux de même fonction syntaxique — ce sont deux sujets coordonnés. C''est une conjonction de coordination. Et le moyen mnémotechnique pour les sept conjonctions de coordination : "mais, ou, et, donc, or, ni, car". À apprendre par cœur, elles tombent régulièrement au CRPE !'
WHERE id = '01000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '"Dans" établit un rapport de lieu entre le verbe "range" et son complément "son sac" — c''est une préposition ! Elle introduit un groupe prépositionnel (ici un CC de lieu). Les prépositions les plus courantes : à, de, dans, pour, avec, sur, sous, entre, vers… Elles sont invariables et toujours suivies d''un groupe nominal ou d''un infinitif.'
WHERE id = '01000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = '"Elle" remplace un groupe nominal féminin déjà mentionné — c''est un pronom personnel sujet de 3e personne du singulier. Il assure la reprise anaphorique dans le discours : on évite de répéter le nom. Retiens : les pronoms remplacent un nom ou un GN. "Elle" = quelqu''un de féminin dont on a déjà parlé.'
WHERE id = '01000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = '"Chanter" est à la forme non conjuguée de l''infinitif — et il fonctionne ici comme COD du verbe "aime" (il aime quoi ? → chanter). Ne confonds pas avec le nom verbal "le chant" (nom) ou le participe présent "chantant". L''infinitif se reconnaît à sa terminaison (-er, -ir, -re, -oir) et à l''absence de marque de personne ou de temps.'
WHERE id = '01000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = '"Très" modifie l''adjectif "attentif" en indiquant l''intensité — c''est un adverbe d''intensité. C''est ça qui est fascinant avec les adverbes : ils peuvent modifier un verbe, un adjectif ou même un autre adverbe ! Ici il modifie un adjectif. Et "très" est invariable — aucun accord, jamais. Adverbes d''intensité courants à connaître : très, fort, trop, peu, assez, bien.'
WHERE id = '01000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = '« Le soleil brille sur la mer. » énonce un fait, c''est tout — c''est donc une phrase déclarative ! Elle se termine par un point simple, le signe le plus discret. La règle est simple : point simple = déclarative, point d''interrogation = interrogative, point d''exclamation = exclamative. Reconnaître le type d''une phrase, c''est avant tout observer la ponctuation et l''intention de communication. Commence toujours par là !'
WHERE id = '56000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Deux signaux clairs ici : la tournure « est-ce que » ET le point d''interrogation final — c''est une phrase interrogative ! Elle pose une question totale (on répond par oui ou non). La déclarative fait une affirmation, l''impérative donne un ordre. L''interrogative totale avec « est-ce que » est la forme la plus courante à l''écrit pour poser une question directe sans inversion du sujet. Facile à repérer !'
WHERE id = '56000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Admiration ou surprise — et un point d''exclamation à la fin : c''est une phrase exclamative ! « Quel beau tableau ! » se construit avec le mot exclamatif « quel », qui est l''un des trois marqueurs classiques de l''exclamative avec « que » et « comme ». Retiens-les : quel/quelle + nom, comme + verbe, que de + nom. La phrase déclarative énonce, l''interrogative questionne — l''exclamative, elle, exprime. C''est tout à fait autre chose !'
WHERE id = '56000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai, et c''est un exemple parfait de la phrase impérative ! Elle exprime un ordre ou une consigne, et son signe distinctif c''est l''impératif sans pronom sujet exprimé. « Ferme la porte » — pas de « tu » devant, verbe à l''impératif présent 2e pers. du singulier. Elle se termine par un point simple ou un point d''exclamation selon l''intensité. Méfie-toi : le point d''exclamation ne DÉFINIT pas le type — une exclamative ou une impérative peuvent toutes deux en avoir un !'
WHERE id = '56000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Faux ! Le « ne… pas » est là, bien visible — c''est la forme négative, pas affirmative. La forme affirmative, ça donnerait : « Il mange de la viande. » Retiens la distinction type / forme : le TYPE (déclaratif, interrogatif…) dit quelle est l''intention de communication, la FORME (affirmative/négative, active/passive) dit comment la phrase est construite. Les deux sont indépendants — une phrase interrogative peut très bien être à la forme négative !'
WHERE id = '56000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Forme passive — reconnaissable à coup sûr ! La structure : sujet + auxiliaire « être » conjugué + participe passé + complément d''agent introduit par « par » (ou « de »). Ici : « Ce roman » (sujet) + « a été écrit » (être + participe) + « par Victor Hugo » (agent). À la voix active, ça donnerait : « Victor Hugo a écrit ce roman. » La transformation passive INVERSE les rôles : le COD actif devient sujet, le sujet actif devient agent.'
WHERE id = '56000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai ! À la voix active, le sujet accomplit lui-même l''action. Ici, les enfants jouent — ils sont les acteurs, pas les patients de l''action. Pas d''auxiliaire « être » suivi d''un participe passé → voix active confirmée. La voix passive renverserait la situation : un autre sujet subirait l''action. Retiens le réflexe : cherche l''auxiliaire « être » + participe passé pour identifier le passif. Sans ça, tu es à l''actif.'
WHERE id = '56000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'La négation simple d''un présent, c''est « ne… pas » autour du verbe conjugué — et c''est la réponse a) ! La réponse b) change le temps (passé composé) : on ne te demandait pas ça. La réponse c) ajoute une nuance de fréquence avec « jamais » : c''est une négation, mais pas la transformation directe demandée. En langue parlée, le « ne » disparaît souvent, mais à l''écrit soigné — et au CRPE — il est OBLIGATOIRE. Ne l''oublie jamais !'
WHERE id = '56000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = '« Phrase subjective » — ça n''existe pas ! Les quatre types reconnus en grammaire française sont : déclarative, interrogative, exclamative et impérative. Le subjonctif est un MODE VERBAL, pas un type de phrase. Cette classification repose sur l''intention du locuteur : énoncer un fait, poser une question, exprimer une émotion, ou donner un ordre. Ces quatre types, tu dois les connaître sur le bout des doigts — ils reviennent régulièrement au CRPE.'
WHERE id = '56000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai — et c''est un point fondamental à retenir ! Le type et la forme d''une phrase sont deux dimensions INDÉPENDANTES. On peut donc cumuler : impérative (ordre) + négative (ne… pas). Exemple parfait : « Ne fais pas de bruit ! » Même chose pour interrogative + négative : « N''as-tu pas encore fini ? » Toujours analyser séparément le type ET la forme — ne les confonds jamais, ce sont deux questions différentes.'
WHERE id = '56000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = 'Discours direct — les signaux sont là : verbe de parole (« dit »), deux-points, guillemets. C''est la reproduction fidèle des paroles telles qu''elles ont été prononcées. Au discours indirect, ce serait une subordonnée : « Elle leur dit d''ouvrir leurs cahiers. » Au discours indirect libre, ni guillemets ni subordonnée — les paroles se fondent dans le récit. Ces trois procédés sont à connaître parfaitement, ils tombent dans les analyses de texte au CRPE.'
WHERE id = '57000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Trois changements à réaliser en une seule transformation — retiens-les bien ! 1) La personne : « je » → « il ». 2) Le temps : futur « viendrai » → conditionnel « viendrait » (concordance avec verbe introducteur au passé). 3) Le déictique temporel : « demain » → « le lendemain » (le repère temporel change avec le point de vue). La réponse b) rate la concordance des temps ET le déictique. La réponse c) reste au discours direct. Ces trois règles ensemble, c''est LE cœur du passage DD → DI.'
WHERE id = '57000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai — c''est LA règle de concordance des temps à connaître par cœur ! Verbe introducteur au passé → tout change dans la subordonnée : présent → imparfait (« Il fait beau » → il dit qu''il faisait beau), futur → conditionnel présent, passé composé → plus-que-parfait. C''est un tableau à visualiser et à mémoriser. Cette règle est fondamentale pour maîtriser la transformation discours direct → indirect, et elle est régulièrement testée au CRPE.'
WHERE id = '57000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Le verbe introducteur doit correspondre à l''ACTE DE PAROLE rapporté — et ici c''est une question ! On utilise donc « demander » (ou « s''interroger », « vouloir savoir »). « Affirmer » rapporte une assertion, « s''exclamer » exprime une exclamation. Ce choix est crucial pour restituer fidèlement l''intention du locuteur. Exemple en action : « Où vas-tu ? » → Il lui demanda où il allait. Le verbe introducteur n''est pas là par hasard : il porte tout le sens de l''acte de parole.'
WHERE id = '57000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Retiens ce duo magique pour les CC : tu peux les SUPPRIMER et les DÉPLACER ! « Hier, il est parti à l''aube » → enlève « hier » et « à l''aube », la phrase tient encore. C''est ça qui les distingue des compléments essentiels comme le COD ou l''attribut. Petite nuance à connaître : avec des verbes de lieu comme « aller » ou « venir », le CC de lieu peut devenir non supprimable — mais c''est l''exception, pas la règle.'
WHERE id = '64000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '« Pour réussir son examen » répond à « dans quel but ? » → CC de but, classé ! Sa nature grammaticale : groupe infinitif introduit par « pour ». Attention à ne pas le confondre avec la cause (« parce que », « car ») ni la conséquence (« donc », « si bien que »). Le truc : la cause regarde en arrière (ce qui a provoqué), le but regarde en avant (ce qu''on vise). Ici on vise la réussite → but.'
WHERE id = '64000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = '« Malgré la pluie » — voilà un CC de concession ! Le signal ? Il pleut, mais les enfants jouent quand même. L''action se produit CONTRAIREMENT à ce qu''on attendrait. La concession dit : « obstacle présent, action quand même ». On la distingue de la cause (qui explique pourquoi) et du temps (qui situe quand). Ses marqueurs favoris : « malgré » + GN, « bien que » + subjonctif, « même si » + indicatif.'
WHERE id = '64000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = '« Avec beaucoup de talent » — c''est un groupe prépositionnel : préposition « avec » + GN « beaucoup de talent ». C''est la forme la plus courante des CC, retiens-le bien ! Un adverbe, ça serait un mot unique comme « rapidement » ou « bien ». Une proposition subordonnée circonstancielle, ça aurait un verbe conjugué (« parce qu''elle a du talent »). Ici, pas de verbe conjugué → groupe prépositionnel.'
WHERE id = '64000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '« Si tu travailles » — CC de condition, c''est une certitude ! « Si » + une condition, c''est LE marqueur de l''hypothèse. Et retiens bien les règles de concordance des temps avec « si » : si + présent → futur dans la principale (comme ici !), si + imparfait → conditionnel présent. Ces règles tombent souvent au CRPE. Ne mets JAMAIS le conditionnel après « si » conditionnel — erreur classique à éviter absolument.'
WHERE id = '64000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! Les trois répondent à « comment ? » et peuvent tous être supprimés ou déplacés — ce sont bien trois CC de manière. Et regarde la variété des formes : un adverbe (franchement), un groupe infinitif négatif (sans hésiter), un groupe prépositionnel (d''une voix ferme). Cette accumulation dans la phrase n''est pas anodine : c''est un choix stylistique fort, une insistance sur la façon dont elle a répondu.'
WHERE id = '64000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = 'Le test magique : déplace ou supprime le groupe ! Le complément du nom, lui, est prisonnier de son GN — il ne peut pas bouger. Compare : « Le livre de l''été » (de l''été = complément du nom, non déplaçable) vs « Je lis l''été » (l''été = CC de temps, déplaçable → « L''été, je lis »). La mise au passif, ça concerne uniquement les COD. Le remplacement pronominal, c''est pour les compléments essentiels du verbe.'
WHERE id = '64000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'CC de conséquence — bien joué si tu l''as vu ! Le signal ici, c''est la structure « tellement… que » : l''intensité du cri a ENTRAÎNÉ la perte de la voix. La conséquence décrit un résultat réel qui découle de l''action. Retiens les structures consécutives : tellement… que / si… que / assez… pour. La cause, elle, explique l''ORIGINE de l''action. La comparaison établit une équivalence ou une différence de degré — rien à voir ici.'
WHERE id = '64000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai, et c''est un point qu''on voit souvent dans les textes du CRPE ! La proposition participiale absolue (sujet propre + participe) fonctionne comme un CC : supprimable, déplaçable. « La tempête étant passée » exprime une valeur temporelle ou causale selon le contexte. Attention à bien distinguer cette construction de la participiale sans sujet propre comme « Arrivé tôt, il attendit » — là, le participe se rapporte directement au sujet de la principale.'
WHERE id = '64000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = '« Comme s''il savait tout » — CC de comparaison avec une nuance de supposition, bravo ! La structure « comme si » est précieuse : elle exprime une comparaison avec une hypothèse IRRÉELLE (il ne sait pas tout, mais il parle comme si c''était le cas). C''est donc une double valeur : comparaison + supposition. Et question de langue : cette construction exige l''imparfait dans la langue soutenue, ou le subjonctif présent dans la langue courante.'
WHERE id = '64000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = 'La proposition « qu''il soit absent » est sujet du verbe « étonne » — et c''est une construction stylistiquement marquée ! Test de vérification : remplace-la par « cela » → « Cela m''étonne » ✓ (cela = sujet). Contrairement aux constructions impersonnelles (« il m''étonne qu''il soit absent ») où la complétive est sujet RÉEL d''un sujet apparent, ici elle est directement sujet sans intermédiaire. C''est plus rare, plus littéraire, et ça fait la différence au CRPE.'
WHERE id = '87000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Voilà un point subtil qui fait toute la beauté de la grammaire française ! Le subjonctif dans la relative dépend du degré de certitude sur l''existence de l''antécédent. Tu cherches quelqu''un → cette personne n''existe pas encore pour toi → subjonctif. Tu as trouvé quelqu''un → elle existe, elle est réelle → indicatif : « J''ai trouvé quelqu''un qui sait cuisiner. » Le mode change en fonction de la réalité ou de l''hypothèse. C''est une règle fine, mais elle est attendue au CRPE niveau difficile.'
WHERE id = '87000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! Certains noms abstraits acceptent une subordonnée complétive comme expansion — c''est le cas de « fait », mais aussi de « idée », « espoir », « crainte », « certitude »… Ici, « qu''il ait menti » est complément du nom « fait ». Le subjonctif s''explique par le contexte : « le fait que » en contexte d''indignation ou de constat impliqué appelle le subjonctif. Retiens ces noms abstraits qui admettent une complétive — c''est un point souvent négligé en classe mais présent dans les textes du CRPE.'
WHERE id = '87000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai — et c''est une des belles flexibilités du pronom « où » ! Il peut avoir pour antécédent un nom de lieu (« la ville où il habite ») ou un nom de temps (« le jour où il est né », « l''époque où les rois régnaient »). Dans les deux cas, il remplace un groupe prépositionnel circonstanciel. Attention à bien le distinguer de « où » adverbe interrogatif (« Où vas-tu ? »). En contexte de relative, pas de doute possible : c''est un pronom relatif.'
WHERE id = '87000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Retiens cette règle d''or : croire, penser, dire, savoir + phrase AFFIRMATIVE → indicatif ! Le locuteur présente le contenu de la complétive comme réel de son point de vue. Maintenant retourne la phrase : « Je ne crois pas qu''il soit là » (phrase négative) ou « Crois-tu qu''il soit là ? » (interrogative) → subjonctif, car le doute s''installe. La bascule affirmatif/négatif-interrogatif est une règle clé. Ici, phrase affirmative → indicatif, même si la croyance est objectivement fausse !'
WHERE id = '87000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '« Rapidement » — adverbe de manière, formé sur l''adjectif « rapide » avec le suffixe -ment. Retiens la règle de formation : adjectif au féminin + -ment → adverbe. Les adverbes sont INVARIABLES et modifient un verbe, un adjectif ou un autre adverbe. Ici il modifie le verbe « court ». L''adjectif, lui, s''accorde avec un nom (il est rapide). Et le nom désigne des êtres ou des choses. La terminaison -ment est ton signal le plus fiable pour repérer un adverbe de manière !'
WHERE id = '88000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '« Ah » — interjection ! C''est un mot invariable qui exprime une émotion ou une réaction (surprise, douleur, admiration…). La caractéristique des interjections : elles ne jouent AUCUNE fonction syntaxique dans la phrase — elles sont complètement détachées. Autres interjections courantes : oh, eh, hélas, zut, aïe, bravo. Les adverbes modifient un verbe ou un adjectif. Les conjonctions relient des propositions ou des mots de même nature. L''interjection, elle, est une sorte de cri grammatical — libre et expressif !'
WHERE id = '88000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = '« Dont » — pronom relatif ! Il représente son antécédent (le livre) et introduit la proposition subordonnée relative. Et il reprend un complément introduit par « de » (parler de quelque chose → parler de ce livre → dont). Les pronoms relatifs simples à retenir : qui, que, quoi, dont, où. Les conjonctions de subordination (que, si, quand…) n''ont pas d''antécédent nominal. Les déterminants possessifs (mon, ton, son…) précèdent un nom. « Dont » sans nom qui suit = pronom relatif, pas déterminant.'
WHERE id = '88000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = '« Et » — conjonction de coordination ! Elle relie deux éléments de même nature et de même fonction. Ici deux GN COD : « la danse » et « le chant ». Et le moyen mnémotechnique pour les retenir toutes ? « Mais ou et donc or ni car » — une phrase à apprendre par cœur ! Les conjonctions de subordination (que, si, quand, parce que…) introduisent une subordonnée avec une relation hiérarchique. Les prépositions (à, de, dans, pour…) introduisent un groupe prépositionnel. « Et » = même niveau, même nature → coordination.'
WHERE id = '88000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Regarde bien ton sujet : "les Ã©lÃ¨ves", c''est du pluriel â€" 3e personne ! Le verbe Ã©couter suit donc les Ã©lÃ¨ves, et Ã  la 3e personne du pluriel tu Ã©cris "Ã©coutent". Ce petit -ent final, c''est la marque du pluriel pour tous les verbes du 1er groupe. Retiens-le bien !'
WHERE id = '11000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, piÃ¨ge classique ! Quand "qui" a pour antÃ©cÃ©dent "toi", le verbe suit "toi" â€" donc 2e personne du singulier. On dit "c''est toi qui as" et jamais "c''est toi qui a". Le verbe s''accorde avec l''antÃ©cÃ©dent de "qui", pas avec ce qui prÃ©cÃ¨de directement.'
WHERE id = '11000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Avec "ni... ni...", regarde le deuxiÃ¨me sujet : "les enseignants" est au pluriel ! Du coup le verbe passe au pluriel : "n''ont pris". La rÃ¨gle est simple â€" si l''un des deux sujets rÃ©clame le pluriel, le verbe le suit. C''est ça qui commande ici.'
WHERE id = '11000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'C''est vrai ! Avec un nom collectif comme "foule", "groupe" ou "troupe" suivi d''un complÃ©ment, tu peux accorder avec le collectif (singulier) ou avec le complÃ©ment (pluriel). Ici "envahissait" â€" singulier â€" s''accorde avec "foule" : c''est tout Ã  fait correct et mÃªme courant !'
WHERE id = '11000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '"La plupart" est suivi de "des Ã©lÃ¨ves" â€" pluriel ! Et "la plupart de + pluriel", Ã§a tire toujours le verbe au pluriel : "ont rÃ©ussi". C''est la rÃ¨gle habituelle, retiens-la bien. Tu ne diras pas "la plupart a" quand il y a un complÃ©ment pluriel derriÃ¨re.'
WHERE id = '11000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '"Chacun" est un pronom indÃ©fini toujours singulier â€" mÃªme quand des candidats (pluriel) suivent ! Ne te laisse pas piÃ©ger par le complÃ©ment. "Chacun a prÃ©parÃ©" : c''est lui qui commande, c''est lui qui est singulier. Le verbe le suit sans hÃ©siter.'
WHERE id = '11000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = 'Deux sujets reliÃ©s par "et" â€" Ã§a fait un pluriel ! Le chat ET le chien, c''est deux sujets donc le verbe va au pluriel : "dorment". La formule Ã  retenir : sujet A + et + sujet B â†'
WHERE id = '11000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, exception Ã  surveiller ! "Tout le monde" dÃ©signe plein de gens mais grammaticalement c''est un groupe singulier. Donc le verbe est toujours au singulier : "tout le monde est". Ne te laisse pas avoir par l''idÃ©e de pluralitÃ© â€" c''est le singulier qui gagne ici.'
WHERE id = '11000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! Quand "qui" a pour antÃ©cÃ©dent un pronom personnel comme "nous", le verbe s''accorde avec ce pronom. "C''est nous qui partons" â†'
WHERE id = '11000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = 'Avec un sujet du type "pourcentage + de + pluriel", regarde ce qui suit "de" : "des Ã©lÃ¨ves" â€" pluriel ! C''est lui qui commande. Les grammairiens recommandent le pluriel : "vingt pour cent des Ã©lÃ¨ves sont absents". Le complÃ©ment pluriel aprÃ¨s "de" entraÃ®ne le pluriel du verbe.'
WHERE id = '11000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = 'Avec l''auxiliaire "Ãªtre", le participe passÃ© s''accorde avec le sujet â€" genre et nombre. Ton sujet ? "Les actrices" : fÃ©minin pluriel. Donc le participe prend -es : "montÃ©es". C''est la rÃ¨gle d''or avec Ãªtre : le participe suit le sujet comme son ombre !'
WHERE id = '12000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'La phrase est dÃ©jÃ  correcte, c''est ça ! Sujet mixte (Paul masculin + Marie fÃ©minin) â†'
WHERE id = '12000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Le contexte est clair : c''est une candidate qui parle. L''attribut du sujet avec "Ãªtre" s''accorde en genre et en nombre avec ce sujet. La candidate est fÃ©minine â†'
WHERE id = '12000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! Avec les verbes pronominaux, demande-toi : le COD est-il avant ou aprÃ¨s le verbe ? Ici "les mains" est aprÃ¨s "lavÃ©" â†'
WHERE id = '12000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '"Tomber" se conjugue avec Ãªtre. Ton sujet : "les feuilles" â€" fÃ©minin pluriel. RÃ¨gle d''or avec Ãªtre : le participe suit le sujet. Donc "tombÃ©es" avec -es pour le fÃ©minin pluriel. Simple et limpide : c''est l''accord classique avec l''auxiliaire Ãªtre !'
WHERE id = '12000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Demande-toi : elles regardent quoi ? â†'
WHERE id = '12000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = 'Avec avoir, le participe s''accorde avec le COD placÃ© avant le verbe. Ici "que" reprend "les lettres" â€" fÃ©minin pluriel â€" et il est bien avant l''auxiliaire. Donc "Ã©crites" : fÃ©minin pluriel. MÃ©thode : repÃ¨re le COD, dÃ©termine son genre et son nombre, vÃ©rifie sa position â€" et accorde !'
WHERE id = '12000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! "Se parler" â€" on parle À quelqu''un, donc "se" est COI et non COD. Avec un COI, pas d''accord : "parlÃ©" reste invariable. Ils ont parlÃ© l''un Ã  l''autre â€" c''est le sens indirect qui bloque l''accord. Retiens : COI â†'
WHERE id = '12000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = '"NaÃ®tre" se conjugue avec Ãªtre â€" accord obligatoire avec le sujet. "Elles" : fÃ©minin pluriel â†'
WHERE id = '12000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = 'C''est parfait, ne change rien ! "Venue" s''accorde avec "la directrice" (fÃ©minin singulier, avec Ãªtre). "PrÃ©sentÃ©" reste invariable car le COD "son Ã©quipe" est aprÃ¨s le verbe (avec avoir). Les deux rÃ¨gles sont respectÃ©es â€" bravo, c''est la maÃ®trise complÃ¨te !'
WHERE id = '12000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = 'Avec avoir, le participe s''accorde avec le COD placÃ© avant. "Que" reprend "les livres" â€" masculin pluriel â€" et il est avant l''auxiliaire. Donc "lus" : masculin pluriel. Tu aurais Ã©crit "lues" si les histoires Ã©taient au fÃ©minin. MÃ©thode : COD, genre/nombre, position â€" et tu ne te trompes plus !'
WHERE id = '13000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! Avec avoir, la rÃ¨gle c''est : pas de COD antÃ©posÃ©, pas d''accord. Ici "chanter" est employÃ© sans COD â€" le participe reste invariable. "ChantÃ©" sans -s ni -e, c''est la forme de base. Simple, non ?'
WHERE id = '13000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Regarde bien : "combien de pommes" c''est le COD, placÃ© avant par l''inversion interrogative. "Pommes" est fÃ©minin pluriel â†'
WHERE id = '13000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'C''est dÃ©jÃ  correct ! "Que" reprend "les films" (masculin pluriel), COD antÃ©posÃ© â†'
WHERE id = '13000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '"Que" reprend "les erreurs" â€" fÃ©minin pluriel â€" et ce COD est avant l''auxiliaire. Le participe de "commettre" est "commis". AccordÃ© au fÃ©minin pluriel : "commises". COD fÃ©minin pluriel antÃ©posÃ© â†'
WHERE id = '13000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Oui ! Selon la rÃ©forme orthographique de 1990 et la recommandation acadÃ©mique, "laisser" suivi d''un infinitif donne un participe invariable. "Je les ai laissÃ© partir" â€" pas d''accord. MÃªme logique pour "faire + infinitif" : "la robe qu''il a fait coudre". Les deux se comportent pareil devant un infinitif.'
WHERE id = '13000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = '"Que" reprend "la dÃ©cision" â€" fÃ©minin singulier â€" avant l''auxiliaire. Le participe de "prendre" c''est "pris" â€" accordÃ© au fÃ©minin singulier, Ã§a donne "prise". On ajoute un petit -e muet au masculin "pris" â†'
WHERE id = '13000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = '"Quelle belle robe" est le COD et il est avant le verbe â€" placÃ© en tÃªte de phrase. "Robe" : fÃ©minin singulier â†'
WHERE id = '13000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = '"Les" reprend "ces enfants" â€" masculin pluriel â€" COD avant l''auxiliaire. Avec un verbe de perception (voir, entendre...) suivi d''un infinitif, on accorde avec le COD si c''est lui le sujet de l''infinitif. Ici les enfants jouent â†'
WHERE id = '13000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = 'Oui ! CoÃ»ter, valoir, peser, courir, durer, mesurer â€" ces verbes expriment une mesure, pas un COD vÃ©ritable. Le complÃ©ment de mesure ne dÃ©clenche pas l''accord. "Les efforts que cela m''a coÃ»tÃ©" ou "les kilos qu''il a pesÃ©" â€" invariable dans les deux cas. C''est une exception Ã  bien garder en tÃªte !'
WHERE id = '13000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = '"Il faut que" rÃ©clame le subjonctif â€" c''est la rÃ¨gle absolue. "Tu" au subjonctif prÃ©sent de "Ãªtre" : "sois". Ã€ bien distinguer de "soit" (3e personne du singulier ou conjonction) et de "soie" (le tissu !). Pour "tu", c''est toujours "sois" au subjonctif.'
WHERE id = '14000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '"Ã‡a" c''est le pronom dÃ©monstratif â€" Ã§a = cela. "Sa" c''est un possessif fÃ©minin (sa maison, sa voiture). Teste : peut-on dire "c''est pour cela qu''il est venu" ? Oui â†'
WHERE id = '14000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = '"Ayant appris" forme un participe composÃ© qui exprime l''antÃ©rioritÃ© : d''abord il a appris, ensuite il a rÃ©ussi. C''est exactement ce sens-lÃ  que la structure veut. "Bien appris" ne marque pas cette relation temporelle. Le participe composÃ© "ayant + participe passÃ©" â€" Ã  retenir pour exprimer ce qui est arrivÃ© avant !'
WHERE id = '14000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = '"Ces" c''est le dÃ©terminant dÃ©monstratif pluriel â€" Ã§a dÃ©signe des enfants qu''on montre, ces enfants-lÃ . Test : peut-on dire "ces enfants-lÃ " ? Oui â†'
WHERE id = '14000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Faux ! AprÃ¨s l''auxiliaire "a", on attend le participe passÃ© de "Ãªtre" â€" et c''est "Ã©tÃ©". "Il a Ã©tÃ© malade" : voilÃ  la forme correcte. "Ã‰tait" c''est l''imparfait : "il Ã©tait malade". On ne mÃ©lange pas l''auxiliaire prÃ©sent avec l''imparfait â€" c''est une erreur Ã  Ã©viter absolument !'
WHERE id = '14000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '"Quoi" est le pronom interrogatif qui introduit une complÃ©tive infinitive : "je ne sais pas quoi rÃ©pondre" = je ne sais pas quoi dire. "Comment" changerait le sens â€" il donne la maniÃ¨re, pas l''objet. "Quoique" est une conjonction de concession. C''est "quoi" qui convient pour dÃ©signer ce qu''on ne sait pas faire !'
WHERE id = '14000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = '"Se" c''est le pronom rÃ©flÃ©chi du verbe "se lever". "Ce" c''est un dÃ©terminant ou un pronom dÃ©monstratif (ce livre, ce que je veux). Teste : peut-on remplacer par "le/la" ? Non â†'
WHERE id = '14000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = '"OÃ¹" avec accent grave introduit un repÃ¨re de lieu ou de contexte. "Ou" sans accent c''est "ou bien". Test : peut-on dire "je ne sais pas ou bien il court" ? Non â†'
WHERE id = '14000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = 'Faux ! "On" peut dÃ©signer n''importe qui â€" valeur gÃ©nÃ©rale : "on dit que..." â€" et lÃ  on ne peut pas le remplacer par "nous". Seul le "on" de registre oral avec valeur personnelle admet cette substitution : "on y va" = "nous y allons". C''est le contexte qui dÃ©cide !'
WHERE id = '14000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = '"Quand" = conjonction de temps (quand = lorsque). "Quant Ã " = locution prÃ©positionnelle (quant Ã  moi...). "Qu''en" = que + en (qu''en penses-tu ?). Test imparable : peut-on remplacer par "lorsque" ? Oui â†'
WHERE id = '14000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = '[{"id":"a","label":"bals"},{"id":"b","label":"baux"},{"id":"c","label":"balles"}]'
WHERE id = '15000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '"Å'
WHERE id = '15000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Les noms en -eu prennent normalement -x au pluriel (jeu â†'
WHERE id = '15000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'C''est vrai ! Les adjectifs en -eau font -eaux au pluriel : beau â†'
WHERE id = '15000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '[{"id":"a","label":"bijous"},{"id":"b","label":"bijoux"},{"id":"c","label":"bijoues"}]'
WHERE id = '15000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '"Festival" est une exception Ã  -al â†'
WHERE id = '15000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = '"Poids" s''Ã©crit dÃ©jÃ  avec un -s au singulier â€" c''est l''Ã©tymologie latine (pensum). Donc au pluriel, la graphie ne change pas. "Lourd" est un adjectif Ã©pithÃ¨te qui s''accorde avec "poids" (masculin pluriel) â†'
WHERE id = '15000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'C''est vrai ! Dans "garde-fou" (verbe + nom), le verbe "garde" est invariable et c''est "fou" qui prend le pluriel : garde-fous. La barriÃ¨re de sÃ©curitÃ© garde des fous â€" sens logique â€" donc "fou" s''accorde. Retiens : dans les composÃ©s verbe + nom, seul le nom (si le sens le permet) prend le pluriel.'
WHERE id = '15000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = 'L''adjectif qualificatif s''accorde toujours en genre et en nombre avec le nom. "Noms" est masculin pluriel â†'
WHERE id = '15000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = '"Des" est le pluriel indÃ©fini â€" il rÃ©clame un nom au pluriel ! Donc "des bagues" avec -s. Le groupe "en or" reste invariable â€" l''or est une matiÃ¨re, on ne le met pas au pluriel. Une seule correction Ã  faire : ajouter le -s Ã  "bague".'
WHERE id = '15000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = 'Dans « garde-malade », les deux éléments sont des noms : « garde » (nom, le soignant) + « malade » (nom, la personne soignée). Quand un composé réunit deux noms, les deux prennent le pluriel → « des gardes-malades ». C''est différent des composés Verbe + Nom où seul le nom s''accorde (si le sens le permet). Analyse la nature de chaque élément, et l''accord suit !'
WHERE id = '69000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '« Essuie-glace » = verbe (essuie) + nom (glace). Dans les composés Verbe + Nom, le verbe est invariable et le nom prend généralement le pluriel : « des essuie-glaces ». Les rectifications de 1990 permettent aussi « des essuie-glace » (nom au singulier) — les deux sont valides. Mais la forme avec -s sur « glaces » reste l''usage codifié le plus courant.'
WHERE id = '69000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = '« Abat-jour » = verbe (abat) + nom (jour). Attention ! « Jour » reste au singulier car un abat-jour « abat le jour » — le jour est un concept non nombrable dans ce contexte. L''usage traditionnel donne « des abat-jour » sans -s. C''est une des exceptions notables : certains composés V+N gardent le nom au singulier quand la logique sémantique l''impose. Réfléchis au sens !'
WHERE id = '69000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Dans les composés Adjectif + Nom, les deux s''accordent car tous deux sont variables : des beaux-frères, des belles-sœurs, des grands-pères, des coffres-forts. Exception notable : « grand-mère » → les grammairiens admettent « grands-mères » (avec accord) ou « grand-mères » (sans accord sur « grand », héritage de l''ancien français où grand était invariable). Les deux sont acceptées aujourd''hui !'
WHERE id = '69000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '« Porte-monnaie » = verbe (porte) + nom (monnaie). « Monnaie » reste au singulier car on porte « de la monnaie » — notion générique, non dénombrable dans ce contexte. La règle : le verbe est invariable, le nom prend le pluriel si le sens l''autorise, reste au singulier sinon. « Des porte-monnaie » est la graphie traditionnelle. Les rectifications 1990 admettent « porte-monnaies » — les deux passent !'
WHERE id = '69000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '« Chef-d''œuvre » = Nom (chef) + préposition (de) + Nom (œuvre). Dans les composés N + prép. + N, seul le premier nom — le noyau — prend le pluriel. « Œuvre » est complément et reste invariable. « Chef » est l''élément directeur, il prend le -s. Résultat : « des chefs-d''œuvre ». Seul le nom noyau s''accorde — retiens cette règle !'
WHERE id = '69000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = '« Arc-en-ciel » = N + prép. + N : seul le premier nom (arc) est le noyau et prend le pluriel. « Ciel » reste au singulier dans le composé — même si « ciels » existe pour les représentations picturales. La graphie correcte : « des arcs-en-ciel ». Ajouter un -s à « ciel » par analogie avec le pluriel ordinaire ? C''est la faute classique à éviter !'
WHERE id = '69000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'Le COD « que » représente « les photos » — féminin pluriel — et il est placé avant l''auxiliaire avoir. Méthode : repère le COD (les photos), détermine son genre et nombre (fém. plur.), vérifie qu''il est avant l''auxiliaire → accord ! Si le COD arrive après (« Nous avons pris des photos »), pas d''accord. Position, position, position — c''est la clé de tout !'
WHERE id = '80000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '« Combien de livres » est le COD — masculin pluriel — placé avant l''auxiliaire par l''inversion interrogative. L''inversion ne change rien à la règle ! Le COD reste bien avant l''auxiliaire → accord au masculin pluriel : « lus ». Identifie « combien de livres » comme COD (tu as lu quoi ?) et l''accord coule de source.'
WHERE id = '80000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! « Les » est le COD de « voir », placé avant l''auxiliaire → accord : « vus » (masculin pluriel). Avec les verbes de perception + infinitif (voir, entendre, regarder...), on accorde avec le COD si c''est lui le sujet logique de l''infinitif. Ici, « les » représente les personnes qui partent — elles font l''action → accord !'
WHERE id = '80000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Le COD « qu'' » représente « la décision » — féminin singulier — avant l''auxiliaire → accord au féminin singulier : « prise ». « Prises » ? Non, ce serait pour un féminin pluriel. « Pris » ? Non, ce serait sans accord. La relative en « que » est toujours un COD antéposé → accord systématique. Retiens ce réflexe !'
WHERE id = '80000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Le pronom relatif « qu'' » représente « les efforts » — masculin pluriel — COD placé avant l''auxiliaire → accord : « fournis ». Attention : le sujet « elle » ne commande jamais l''accord du participe passé avec avoir ! C''est une règle fondamentale. Seul le COD antéposé à l''auxiliaire avoir entraîne l''accord.'
WHERE id = '80000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Avec « la plupart de + complément », le verbe s''accorde avec le complément du nom : « des élèves » est pluriel → « étaient ». « La plupart » tout seul (sans complément) entraîne aussi le pluriel — sous-entendu « des gens ». C''est une exception à la règle du sujet grammatical et elle est bien connue des correcteurs du CRPE !'
WHERE id = '81000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Avec « ni... ni... », les deux sujets s''additionnent dans la négation → le verbe passe au pluriel : « Ni lui ni elle ne sont venus ». Le singulier est possible si les deux forment une alternative exclusive (l''un ou l''autre mais pas les deux), mais en pratique courante, le pluriel est préféré et attendu.'
WHERE id = '81000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'L''antécédent de « qui » c''est « vous » — 2e personne du pluriel. Le verbe de la relative s''accorde avec cet antécédent : « vous êtes ». La formule présentative « c''est vous qui » exige la 2e personne du pluriel — c''est ferme. Repère l''antécédent de « qui » et le reste suit !'
WHERE id = '81000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai ! « L''un et l''autre » accepte les deux : singulier si on insiste sur chaque individu (« L''un et l''autre hésite »), pluriel si on les traite comme un ensemble (« hésitent »). Les deux sont admis — mais le pluriel est plus courant et naturel. Au CRPE, les deux formes sont acceptées si tu sais les justifier !'
WHERE id = '81000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Avec un sujet de type « pourcentage + de + nom », le verbe s''accorde avec le nom complément : « des réponses » est féminin pluriel → « étaient ». Règle valable pour les fractions, pourcentages, expressions de quantité (la moitié de, un tiers de, 20 % de...) : c''est le nom qui suit « de » qui commande l''accord du verbe !'
WHERE id = '81000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Avec l''auxiliaire être, le participe passé s''accorde avec le sujet — toujours. Le sujet est « les filles » : féminin pluriel → « parties ». Règle de base, à ne jamais oublier : PP avec être = accord en genre et en nombre avec le sujet. Ne confonds pas avec avoir où c''est le COD antéposé qui commande !'
WHERE id = '82000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Pose-toi la bonne question : ils se sont lavé quoi ? → « les mains » (COD après le verbe). COD postposé → pas d''accord. Si le COD était avant (« les mains qu''ils se sont lavées »), là oui ! Le pronom « se » est ici COI (à eux-mêmes), pas COD. Règle complexe mais fréquente au CRPE — entraîne-toi bien !'
WHERE id = '82000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Faux ! « Se souvenir » est un verbe essentiellement pronominal — il ne s''emploie qu''à la forme pronominale. Pour ces verbes, le participe s''accorde avec le sujet, comme si c''était un verbe avec être : « elle s''est souvenue ». Ce n''est pas réciproque. Les pronominaux essentiels s''accordent toujours avec le sujet — retiens cette catégorie !'
WHERE id = '82000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Analyse : « que » représente « les erreurs » — féminin pluriel — et c''est le COD antéposé. Le pronom « nous » (se) est ici COI (à nous-mêmes). COD féminin pluriel avant → accord : « permises ». La forme correcte : « les erreurs que nous nous sommes permises ». Identifie bien le COD et sa position — c''est tout !'
WHERE id = '82000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '« Sourire à quelqu''un » — le pronom « se » représente un COI, pas un COD. Sans COD, le participe d''un verbe pronominal réciproque reste invariable. Même raisonnement pour : « elles se sont parlé » (parler à), « elles se sont téléphoné » (téléphoner à), « elles se sont nui » (nuire à). Ces verbes à COI sont toujours invariables au pronominal — mémorise-les !'
WHERE id = '82000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '« Se » est le pronom réfléchi du verbe pronominal : « il se rend compte », « il se lève ». Ici : « il se rendu » → pronom réfléchi → « se ». « Ce » est un déterminant ou pronom démonstratif (ce livre, c''est). Méthode : si on peut développer par un verbe pronominal (se rendre, se lever...) → c''est « se ». Simple !'
WHERE id = '83000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '« Ce » est le déterminant démonstratif qui introduit le nom « livre ». On peut le remplacer par « cet » (devant voyelle) ou « cette » (féminin). « Se » ne peut jamais précéder directement un nom — il vient toujours devant un verbe. Méthode : si on peut dire « cet » ou « cette » → c''est « ce » déterminant. Test infaillible !'
WHERE id = '83000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = '« Quand » est ici une conjonction de temps équivalente à « lorsque » : « Je viendrai lorsque tu sois là » — ça fonctionne ! « Qu''en » = que + en (pronom) : « Qu''en penses-tu ? ». Test express : peut-on remplacer par « lorsque » ? Oui → quand. Peut-on développer en « que + en » ? Non → pas qu''en. Un test suffit !'
WHERE id = '83000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = '« Chez » est une préposition qui indique la demeure ou la présence d''une personne : « chez ses parents » = au domicile de ses parents. « Et » est une conjonction de coordination qui relie deux éléments. Ici il s''agit d''un lieu, pas d''une liaison entre deux mots — c''est « chez » sans hésitation. L''analyse de la fonction dans la phrase, c''est la clé pour ne plus confondre !'
WHERE id = '83000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = '« Ce qu''il pouvait » : « ce » est un pronom démonstratif neutre — la chose, tout ce que. Teste : peut-on dire « il a fait cela » ? Oui → « ce » démonstratif. « Se » est un pronom réfléchi. « Ceux » est un démonstratif pluriel masculin (les personnes). Méthode de remplacement par « cela » : si ça marche → c''est « ce ». Ça ne rate jamais !'
WHERE id = '83000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '"Aller" est un verbe irrÃ©gulier du 3e groupe dont la conjugaison au prÃ©sent est entiÃ¨rement supplÃ©tive â€" c''est-Ã -dire que les formes viennent de racines diffÃ©rentes : vais, vas, va, allons, allez, vont. La 1re personne du singulier : "je vais". Pas de logique, juste la mÃ©moire â€" Ã  retenir par cÅ"ur !'
WHERE id = '16000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '"Finir" est un verbe du 2e groupe : il insÃ¨re l''infixe -iss- au pluriel. Nous finissons, vous finissez, ils finissent. "Vous finissez" â€" avec deux s â€" c''est la seule forme correcte. "Finissiez" c''est l''imparfait ou le subjonctif â€" pas le prÃ©sent. Le double -ss- est la marque du 2e groupe : ne l''oublie pas !'
WHERE id = '16000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = '"Faire" conserve le radical "fais-" Ã  toutes les personnes â€" sauf "vous faites" et "ils font" qui sont irrÃ©guliÃ¨res. L''imparfait : je faisais, tu faisais, il faisait... La graphie "fesait" est une erreur trÃ¨s frÃ©quente liÃ©e Ã  la prononciation. Retiens bien : "faisait" avec un "ai", comme dans toute la conjugaison de "faire" !'
WHERE id = '16000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = '"Appeler" double le -l- devant e muet : j''appelle, tu appelles, il appelle, ils appellent. Aux 1re et 2e personnes du pluriel, le -l- reste simple : nous appelons, vous appelez. C''est le modÃ¨le "appeler/jeter" â€" double consonne devant e muet. Si tu prononces la syllabe avec un [Ã¨] ouvert, c''est le signe que la consonne double !'
WHERE id = '16000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Faux ! Les verbes en -ger conservent le -e- devant -o- pour garder le son [Ê'
WHERE id = '16000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = '"Pouvoir" est irrÃ©gulier : je peux/puis, tu peux, il peut, nous pouvons, vous pouvez, ils peuvent. "Nous pouvons" est la 1re personne du pluriel â€" Ã  ne pas confondre avec "peuvent" (3e pers. pluriel). Retiens bien la diffÃ©rence : "nous pouvons" vs "ils peuvent". Ce sont les deux formes les plus souvent confondues !'
WHERE id = '16000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = '"Pouvoir" Ã  la 1re personne du singulier : "je peux". "Peut" c''est la 3e personne (il peut). L''erreur est frÃ©quente car les deux formes sonnent pareil Ã  l''oral â€" mais Ã  l''Ã©crit, la diffÃ©rence est claire. Avec "je", c''est toujours "peux" â€" retiens-le et ne te laisse plus avoir par l''homophonie !'
WHERE id = '16000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = '"ÃŠtre" au prÃ©sent : je suis, tu es, il est, nous sommes, vous Ãªtes, ils sont. "Tu es" â€" sans t final. "Tu est" est une erreur par confusion avec la 3e personne. "Tu ait" n''existe pas. Retiens bien la conjugaison entiÃ¨re d''Ãªtre par cÅ"ur â€" c''est un des verbes les plus utiles de la langue !'
WHERE id = '16000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! "Dire" est irrÃ©gulier Ã  la 2e personne du pluriel : "vous dites" et non "vous disez". MÃªme irrÃ©gularitÃ© pour "faire" â†'
WHERE id = '16000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = '"Prendre" au prÃ©sent : je prends, tu prends, il prend, nous prenons, vous prenez, ils prennent. La 3e pers. du pluriel double le -n- : "prennent". MÃªme modÃ¨le pour apprendre â†'
WHERE id = '16000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = 'C''est l''opposition fondamentale Ã  maÃ®triser ! L''imparfait exprime l''action en cours, le cadre â€" c''est le dÃ©cor. "Pendant qu''il dormait" = action de fond (imparfait). "A sonnÃ©" = action ponctuelle qui interrompt (passÃ© composÃ©). Imparfait = tapis de fond, passÃ© composÃ© = Ã©vÃ©nement qui surgit. Retiens cette image !'
WHERE id = '17000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '"Quand j''Ã©tais enfant" + "souvent" â€" deux indices qui crient "habitude rÃ©pÃ©tÃ©e dans le passÃ©" ! C''est exactement la valeur de l''imparfait itÃ©ratif : "jouais". Le passÃ© composÃ© aurait Ã©voquÃ© un fait ponctuel et datÃ© â€" ce n''est pas le sens ici. Les adverbes comme "souvent", "toujours", "chaque jour" sont les amis de l''imparfait !'
WHERE id = '17000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! L''imparfait se forme sur le radical de la 1re personne du pluriel au prÃ©sent + terminaisons -ais, -ais, -ait, -ions, -iez, -aient. "Avoir" : nous avons â†'
WHERE id = '17000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = '"Partir" se conjugue avec l''auxiliaire "Ãªtre" au passÃ© composÃ© â€" comme tous les verbes de mouvement intransitifs (aller, venir, partir, sortir, entrer, monter, descendre...). Donc "je suis parti(e)" et jamais "j''ai parti". MÃ©mo : ces verbes de dÃ©placement prennent Ãªtre â€" ils vont et viennent avec leur auxiliaire !'
WHERE id = '17000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'La phrase est correcte â€" ne touche Ã  rien ! "Je mangeais" (imparfait) = action en cours, cadre. "Est arrivÃ©" (passÃ© composÃ©) = Ã©vÃ©nement ponctuel qui interrompt. L''opposition imparfait / passÃ© composÃ© est parfaitement respectÃ©e. C''est exactement comme Ã§a qu''on l''enseigne Ã  l''Ã©cole !'
WHERE id = '17000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Retiens le tableau du 1er groupe au passé simple : -ai, -as, -a, -âmes, -âtes, -èrent. La 3e personne du singulier, c''est le -a : il chanta, elle parla, on dansa. Attention ! Le -it, c''est pour les verbes du 3e groupe comme tenir ou venir. Le -ut, c''est pour les verbes en -u comme savoir → sut ou vouloir → voulut. Trois groupes, trois familles de terminaisons — ne les mélange pas !'
WHERE id = '51000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Le 2e groupe au passé simple : -is, -is, -it, -îmes, -îtes, -irent. La 1re personne du pluriel donne donc "nous finîmes" — avec le î accent circonflexe obligatoire, c''est lui qui fait toute la différence ! "Nous finissions", c''est l''imparfait — erreur classique, Attention ! Sans accent sur le i, c''est une faute. Au CRPE, ce petit chapeau fait toute la différence, alors ne l''oublie pas.'
WHERE id = '51000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Retiens bien : l''impératif ne se conjugue qu''à 3 personnes — 2e pers. du singulier (tu → sans pronom), 1re pers. du pluriel (nous → sans pronom) et 2e pers. du pluriel (vous → sans pronom). Pas de 1re personne du singulier, pas de 3e personne ! Et c''est parfaitement logique : on ne se donne pas d''ordre à soi-même. L''absence de pronom sujet exprimé est la marque distinctive de ce mode — un détail fondamental pour le reconnaître dans un texte !'
WHERE id = '67000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, c''est un piège classique ! « Va » s''écrit sans « s » — les verbes du 1er groupe (et quelques autres : aller, offrir, cueillir) perdent le « s » final à la 2e personne du singulier : « mange », « entre », « va ». Mais voilà la petite exception à connaître absolument : le « s » est rétabli devant « y » et « en » pour des raisons euphoniques. On dit donc « Vas-y » et « Manges-en » ! Cette règle du « s » eupho­nique est une source d''erreur fréquente au CRPE — retiens-la !'
WHERE id = '67000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! « Mange » est à l''impératif présent (2e pers. sing.) : pas de pronom sujet, injonction directe. Et regarde la structure « Impératif + et + futur » — c''est une construction conditionnelle équivalente à « Si tu manges… tu auras » ! L''indicatif présent donnerait « tu manges » (avec pronom), et le subjonctif donnerait « que tu manges ». Cette construction impérative à valeur conditionnelle est très caractéristique de la langue familière et de l''oral — un beau sujet d''analyse au CRPE !'
WHERE id = '67000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Retiens la formation du 1er groupe : radical + -e (2e sing.), radical + -ons (1re plur.), radical + -ez (2e plur.). La 2e personne du singulier perd le « s » contrairement à l''indicatif — « tu manges » → « Mange ! ». Pour les verbes des 2e et 3e groupes, l''impératif est identique au présent de l''indicatif sans pronom. Verbes comme « offrir » et « cueillir » suivent le 1er groupe à l''impératif aussi — Attention, exception à mémoriser !'
WHERE id = '67000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, « savoir » est l''un des grands irréguliers du subjonctif — il faut le mémoriser ! Sa conjugaison complète : que je sache, que tu saches, qu''il sache, que nous sachions, que vous sachiez, qu''ils sachent. Ne le confonds pas avec l''indicatif présent (il sait) ! Retiens la liste des verbes irréguliers au subjonctif à connaître pour le CRPE : être → soit, avoir → ait, aller → aille, vouloir → veuille, pouvoir → puisse, savoir → sache, falloir → faille. Apprends-les comme une liste magique !'
WHERE id = '84000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! « Frugal » et « sobre » partagent tous les deux l''idée de modération et de retenue — ce sont bien des synonymes. Généreux et abondant, eux, vont dans le sens contraire : ce sont des quasi-antonymes de frugal. Retiens : un synonyme partage le sens, un antonyme s''y oppose. Et ici, « sobre » est le seul qui colle parfaitement !'
WHERE id = '40000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Loquace, c''est quelqu''un qui parle beaucoup et volontiers — donc son antonyme, c''est le contraire : taciturne, quelqu''un de peu communicatif et silencieux. Attention aux pièges : bavard est un synonyme de loquace (même sens !), et éloquent désigne la qualité de bien s''exprimer, pas la quantité. Retiens le couple loquace / taciturne comme une paire classique à connaître par cœur !'
WHERE id = '40000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, c''est le grand piège des paronymes ! Éminent et imminent se ressemblent à l''oreille — mais leurs sens n''ont rien à voir. Éminent = remarquable, qui se distingue (un éminent professeur). Imminent = qui va arriver très bientôt (un danger imminent). Le truc pour ne plus confondre : im-minent → im-médiat, ça arrive dans l''im-médiat ! Ces deux mots sont parmi les paronymes les plus fréquents au CRPE.'
WHERE id = '40000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Évoquer signifie « faire revenir à l''esprit » — et rappeler, c''est exactement ça ! C''est donc le synonyme parfait ici. Attention à invoquer : c''est un paronyme d''évoquer, pas un synonyme ! Invoquer, c''est faire appel à une autorité ou une puissance (invoquer la loi, invoquer Dieu). Quant à provoquer, ça n''a rien à voir. La confusion évoquer/invoquer est une faute typique — méfie-toi !'
WHERE id = '40000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! Conjecture et conjoncture, ça sonne pareil à l''oreille — mais les sens sont radicalement différents. Conjecture = une supposition, une hypothèse (« Ce n''est que conjecture »). Conjoncture = l''ensemble des circonstances économiques ou politiques du moment (« la conjoncture économique »). Astuce : conjonc-ture contient l''idée de la « jonction » des circonstances d''un moment. Ces deux mots sont des candidats privilégiés aux questions sur les paronymes au CRPE !'
WHERE id = '40000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Peur, c''est le terme générique. Mais quand la crainte est intense, persistante et irrationnelle — on parle de phobie. C''est la nuance la plus forte parmi les propositions. Inquiétude, c''est plus modéré et souvent rationnel. Méfiance, c''est de la prudence vis-à-vis d''une personne, sans forcément avoir peur. Retiens la gradation : inquiétude < peur < phobie. Choisir le synonyme le plus précis, c''est maîtriser les nuances sémantiques — une compétence clé au CRPE !'
WHERE id = '40000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! La polysémie, c''est la propriété d''un mot d''avoir plusieurs sens distincts. Prends « vague » : ça peut désigner un mouvement de la mer (sens concret) ou quelque chose d''imprécis (sens figuré). Attention à ne pas confondre polysémie et homonymie ! La polysémie, c''est le même mot avec plusieurs sens. L''homonymie, ce sont deux mots différents qui partagent la même forme (ex. : « ver », « verre », « vert »). Comprendre la polysémie, c''est essentiel pour enseigner la lecture dès le cycle 2 !'
WHERE id = '40000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'La phrase déclarative énonce un fait, une opinion ou une information — elle se termine par un point simple. La phrase b) est bien déclarative : elle affirme un fait sans exclamation, interrogation ni injonction. La phrase a) est exclamative (point d''exclamation, ton affectif renforcé) et la phrase c) est impérative (ordre donné). Retiens : type = intention de communication. Forme = affirmative/négative ou active/passive. Ne confonds jamais les deux !'
WHERE id = '35000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'La phrase interrogative pose une question et se termine par un point d''interrogation. La phrase c) est interrogative : elle utilise l''inversion sujet-verbe, procédé caractéristique de l''interrogation directe totale (réponse oui/non). La phrase a) est déclarative, la phrase b) est impérative. Et n''oublie pas la distinction interrogation totale (oui/non) vs interrogation partielle (introduite par un mot interrogatif : qui, quand, où, comment…) — deux sous-types à maîtriser !'
WHERE id = '35000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai ! La phrase exclamative exprime une émotion forte — admiration, surprise, joie, indignation. Elle peut être introduite par un mot exclamatif comme « que », « comme » ou « quel » et se termine toujours par un point d''exclamation. Ici, « Que tu chantes bien ! » exprime l''admiration et présente tous les marqueurs de la phrase exclamative. Attention : une phrase peut se terminer par un point d''exclamation sans être exclamative — par exemple une phrase impérative forte !'
WHERE id = '35000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'La phrase impérative (ou injonctive) exprime un ordre, un conseil, une interdiction ou une prière. Son trait formel principal : l''absence de sujet exprimé, avec le verbe à l''impératif. Ici, « N''oubliez pas vos affaires » est une injonction négative — le sujet « vous » est sous-entendu. Et attention : même si elle se termine par un point simple, il s''agit bien d''une phrase impérative et non déclarative. La ponctuation seule ne suffit pas à déterminer le type !'
WHERE id = '35000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai ! La grammaire scolaire française distingue exactement quatre types de phrases selon l''intention de communication : déclaratif (informer), interrogatif (questionner), exclamatif (exprimer une émotion) et impératif (ordonner/conseiller). Chaque type possède des marques formelles spécifiques : ponctuation, mode verbal, mots introducteurs. Et surtout — retiens-le bien — ne confonds jamais le « type » (intention) et la « forme » (affirmative/négative, active/passive, personnelle/impersonnelle) !'
WHERE id = '35000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'La forme négative se construit en encadrant le verbe avec une locution négative, le plus souvent « ne…pas ». La phrase a) transforme correctement la phrase en forme négative. Les phrases b) et c) changent le type de phrase (interrogatif et exclamatif) mais ne transforment pas la forme négative. Retiens : type et forme sont deux propriétés indépendantes qui se combinent librement. Une phrase peut être interrogative ET négative, impérative ET négative, etc.'
WHERE id = '35000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = 'La voix passive se construit avec l''auxiliaire « être » conjugué + participe passé du verbe, et le sujet de la phrase passive subit l''action. L''agent (ancien sujet actif) est introduit par « par » ou « de ». La phrase b) présente bien cette structure : « les rosiers » (sujet patient), « sont taillés » (être + participe passé), « par le jardinier » (complément d''agent). La phrase a) est active, la phrase c) est négative mais reste à la voix active — « ne sont pas » ce n''est pas la voix passive !'
WHERE id = '35000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai ! Un verbe est à la forme impersonnelle quand son sujet apparent est le pronom « il » qui ne représente aucun être réel — c''est un sujet grammatical vide de sens. « Falloir » est un verbe essentiellement impersonnel : il ne s''emploie qu''à la 3e personne du singulier avec ce « il » fantôme. D''autres verbes peuvent s''employer occasionnellement à la forme impersonnelle : « il neige », « il arrive que »… À distinguer du sujet « il » personnel, qui désigne un être réel !'
WHERE id = '35000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = 'Pour passer de la voix active à la voix passive, trois opérations : le COD actif (« le pont ») devient sujet passif, le sujet actif (« la tempête ») devient complément d''agent introduit par « par », et le verbe se construit avec « être » au même temps + participe passé : « a été détruit ». La phrase a) respecte toutes ces règles. La phrase b) est grammaticalement incorrecte, et la phrase c) est simplement la négation de la phrase de départ — la négation ne change pas la voix !'
WHERE id = '35000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = 'Vrai ! C''est ça, exactement ! Une phrase peut cumuler un type et plusieurs formes simultanément. Ici : type interrogatif (inversion sujet-verbe, point d''interrogation), forme négative (« n''…pas ») et forme passive (« a été lu par »). Type et forme sont deux axes d''analyse indépendants qui se combinent librement — et l''enseignant doit s''assurer que les élèves maîtrisent cette distinction fondamentale.'
WHERE id = '35000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = 'La proposition subordonnée relative est introduite par un pronom relatif (ici « que ») et complète un nom ou un pronom appelé antécédent. La relative « que j''ai adopté » se rapporte à l''antécédent « le chien » et remplit la fonction d''épithète (complément de l''antécédent). La proposition principale reste « Le chien est très doux » une fois la relative extraite. Test facile : identifie le pronom relatif, remonte à son antécédent — tu as trouvé ta relative !'
WHERE id = '36000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'L''antécédent, c''est le nom (ou pronom) que reprend le pronom relatif. Ici, « qui » reprend « les élèves » — donc l''antécédent est « élèves ». Simple, non ? Le pronom relatif s''accorde en genre et en nombre avec son antécédent, ce qui est particulièrement visible avec « lequel » et ses formes. Identifier l''antécédent, c''est toujours la première étape de l''analyse d''une proposition relative.'
WHERE id = '36000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Le texte documentaire appartient aux écrits informatifs non fictifs — son but premier, c''est de transmettre des connaissances sur la réalité à l''aide de faits vérifiables, de données et d''explications objectives. Il ne raconte pas (c''est le texte narratif) et ne cherche pas à convaincre (c''est le texte argumentatif). Retiens les trois grandes fonctions : informer / raconter / convaincre. C''est la base de la classification des types de textes à enseigner à l''école primaire !'
WHERE id = '30000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! Les textes documentaires utilisent abondamment le paratexte : titres, sous-titres, intertitres, légendes, encadrés, schémas annotés. Ces éléments facilitent la navigation dans le texte et aident le lecteur à anticiper le contenu avant même de lire. Apprendre aux élèves à exploiter le paratexte — avant même de lire le texte en entier — c''est une compétence clé de la compréhension documentaire à l''école primaire. Le paratexte, c''est la carte avant le voyage !'
WHERE id = '30000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Le recours à des faits vérifiables et à des données objectives, c''est la marque distinctive du texte documentaire. Le narrateur à la première personne et le suspense, ça c''est la fiction. Le point de vue subjectif, c''est le texte d''opinion. La vérifiabilité des informations est un critère essentiel que les futurs enseignants doivent savoir expliquer aux élèves — et c''est aussi la base de l''éducation aux médias : apprendre à distinguer fait et opinion dès le cycle 3 !'
WHERE id = '30000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Le texte documentaire explicatif s''organise généralement en trois parties : une introduction qui présente le sujet, un développement qui expose les informations de façon thématique ou chronologique, et une conclusion qui synthétise. Situation initiale / péripétie / situation finale, c''est le schéma narratif du récit de fiction. Thèse / antithèse / synthèse, c''est le plan dialectique. Reconnaître ces structures, c''est identifier le genre textuel — une compétence fondamentale au CRPE !'
WHERE id = '30000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! L''article encyclopédique est un genre documentaire par excellence : il traite d''un sujet de façon objective, s''appuie sur des informations vérifiables, utilise un lexique spécialisé et adopte une organisation thématique. C''est souvent le support privilégié cité dans les programmes pour travailler la compréhension du texte documentaire à l''école primaire. L''encyclopédie (papier ou numérique), c''est l''outil documentaire de référence — à mettre entre les mains de tes élèves dès le cycle 2 !'
WHERE id = '30000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Le lexique spécialisé (ou vocabulaire technique) sert à nommer avec précision les concepts propres au domaine abordé. Son but n''est pas de compliquer la lecture, mais d''assurer l''exactitude terminologique. À l''école, travailler ce lexique spécialisé pendant les lectures documentaires enrichit le vocabulaire disciplinaire des élèves et développe leur capacité à lire des écrits fonctionnels variés. C''est le vocabulaire de la précision — et c''est une compétence transversale à toutes les disciplines !'
WHERE id = '30000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, c''est faux — et c''est une nuance importante ! Bien que le texte documentaire tende vers l''objectivité, il n''est jamais totalement neutre : le choix des informations retenues, la sélection des sources et l''angle de traitement reflètent des choix éditoriaux. Sensibiliser les élèves à cette limite, c''est un objectif de l''éducation aux médias et à l''information (EMI), compétence transversale inscrite dans les programmes de l''école primaire. Tout document est construit par quelqu''un — toujours !'
WHERE id = '30000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'On désigne par iconotexte ou éléments iconographiques l''ensemble des images, schémas, graphiques et tableaux qui accompagnent un texte documentaire. Ces éléments ne sont pas là pour décorer — ils apportent une information complémentaire ou redondante qui facilite la compréhension. À l''école, apprendre à articuler le texte et l''image est une compétence de compréhension à part entière, travaillée dans les séquences de lecture documentaire. L''image n''est pas un bonus, c''est du texte visuel !'
WHERE id = '30000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = 'La distinction fondamentale, c''est le rapport au réel : le documentaire s''ancre dans des faits vérifiables, la fiction construit un univers imaginaire. Cette opposition n''est pas liée au sujet (on peut écrire un documentaire sur des animaux — et de la fiction aussi !) ni à la longueur. C''est l''une des premières catégorisations textuelles enseignées dès le cycle 2 — elle conditionne la posture de lecture. Ton élève doit savoir pourquoi il lit différemment un roman et une encyclopédie !'
WHERE id = '30000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = 'Cette phrase énonce un fait chiffré observable dans la réalité — c''est une information objective et vérifiable, la marque typique du texte documentaire. Ça n''exprime pas l''admiration de l''auteur (aucun jugement de valeur !), et ce n''est pas fictif (c''est biologiquement réel). Apprendre aux élèves à distinguer une information objective d''une opinion subjective, c''est une compétence de lecture critique essentielle dans les programmes du cycle 3 — et une base de l''esprit scientifique !'
WHERE id = '30000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = 'Une inférence, c''est une opération cognitive par laquelle le lecteur déduit des informations non explicitement formulées — en combinant des indices textuels et ses connaissances du monde. Dans le texte support, on comprend qu''il a plu sans que ce soit dit directement ! Cette compétence est centrale dans les programmes de lecture : de nombreux élèves en difficulté sont précisément ceux qui ne savent pas dépasser la lecture littérale. Lire, c''est aussi lire entre les lignes !'
WHERE id = '31000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça, et c''est une inférence logique parfaite ! Marie est trempée, elle a utilisé un parapluie, et des flaques d''eau sont visibles sur le trottoir. Aucun de ces indices pris isolément n''affirme qu''il a plu — mais leur combinaison le rend évident. Cette inférence de type causal est l''une des plus fréquentes dans les textes narratifs et documentaires. Les enseigner explicitement aux élèves améliore significativement leur compréhension en lecture — c''est prouvé par la recherche !'
WHERE id = '31000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'L''information explicite est directement formulée dans le texte — disponible en lecture littérale. L''information implicite n''est pas dite mais peut être reconstruite par inférence. Dans le texte support : « Marie rentra chez elle trempée » est explicite. « Il pleuvait » est implicite. Cette distinction est fondamentale dans l''enseignement : les questions sur l''implicite sont souvent celles qui départagent les bons lecteurs des lecteurs en difficulté. C''est là que se joue la vraie compréhension !'
WHERE id = '31000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'L''inférence pragmatique (ou encyclopédique) mobilise les connaissances du monde du lecteur pour combler les ellipses du texte. Savoir qu''un parapluie sert à se protéger de la pluie permet d''inférer qu''il pleuvait — cette connaissance vient de ton vécu, pas du texte ! L''inférence logique découle d''une déduction formelle. L''inférence anaphorique lie un pronom à son référent. Ces distinctions permettent à l''enseignant de cibler précisément l''obstacle de compréhension de chaque élève.'
WHERE id = '31000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! L''inférence anaphorique consiste à résoudre une anaphore — identifier le référent d''un pronom, d''un groupe nominal de reprise ou d''un synonyme. Dans le texte support, comprendre que « elle » désigne Marie, c''est une inférence anaphorique. C''est l''une des premières inférences travaillées à l''école — et son échec entraîne une rupture de la cohérence et une incompréhension totale du texte. Si l''élève ne sait pas à qui renvoie « elle », il est perdu !'
WHERE id = '31000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Être trempé, c''est généralement désagréable — et chercher une serviette indique une réaction pratique face à un inconfort. C''est une inférence pragmatique qui mobilise les connaissances du monde et l''empathie du lecteur. Travailler ces inférences émotionnelles à l''école, c''est développer à la fois la compréhension et les compétences psychosociales des élèves — ils apprennent à « se mettre à la place » d''un personnage, ce qui enrichit aussi leur vie relationnelle !'
WHERE id = '31000000-0000-0000-0000-000000000006';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, c''est l''inverse ! Les élèves en difficulté réussissent souvent la lecture littérale (retrouver une information explicitement écrite) mais échouent sur les inférences, qui requièrent de dépasser la surface du texte. Cet obstacle est bien documenté par les recherches en psycholinguistique et en didactique de la lecture. C''est pourquoi un enseignement explicite des stratégies inférentielles est indispensable dès le cycle 2 — ne laisse jamais les élèves se débrouiller seuls avec l''implicite !'
WHERE id = '31000000-0000-0000-0000-000000000007';

UPDATE public.exercises SET
  detailed_explanation = 'L''enseignement explicite des inférences passe par la verbalisation des raisonnements : l''enseignant modélise à voix haute comment il déduit une information (« je vois qu''elle est trempée, je sais qu''un parapluie sert à... donc je déduis que... »), puis les élèves verbalisent leur propre raisonnement. Cette approche métacognitive est bien plus efficace que la mémorisation de définitions. Elle permet aux élèves de transférer les stratégies à de nouveaux textes — c''est ça, apprendre à apprendre !'
WHERE id = '31000000-0000-0000-0000-000000000008';

UPDATE public.exercises SET
  detailed_explanation = 'Être trempée malgré un parapluie indique une exposition directe aux intempéries — ce qui n''aurait pas été le cas dans une voiture ! C''est une inférence logique qui combine la signification du parapluie (protection contre la pluie lors de déplacements à pied) et le fait d''être trempée. Elle mobilise à la fois des connaissances encyclopédiques et un raisonnement logique — c''est exactement ce qui illustre la complexité cognitive de la lecture. Rien n''est anodin dans un texte bien construit !'
WHERE id = '31000000-0000-0000-0000-000000000009';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, c''est faux — et c''est une réalité cruciale pour un enseignant ! L''implicite culturel repose sur des connaissances et des références partagées au sein d''une communauté. Un lecteur dont la culture d''origine est différente peut ne pas posséder ces références et ainsi échouer à produire l''inférence attendue. Ça implique de ne jamais supposer que tous tes élèves partagent les mêmes connaissances du monde, et d''expliciter les savoirs encyclopédiques nécessaires à la compréhension. L''équité passe par l''explicitation !'
WHERE id = '31000000-0000-0000-0000-000000000010';

UPDATE public.exercises SET
  detailed_explanation = '« Parce que » est un connecteur causal — il relie une conséquence à sa cause. « Cependant » exprime une opposition, et « ensuite » marque une succession temporelle. Retiens les grandes catégories : causalité (parce que, puisque, car), opposition (mais, cependant, pourtant), addition (et, de plus, en outre), conséquence (donc, ainsi, c''est pourquoi), condition (si), but (pour que, afin que). Maîtriser ces catégories est indispensable pour comprendre et produire des textes cohérents — un objectif explicite du cycle 3 !'
WHERE id = '32000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! « Donc » est un connecteur consécutif qui marque la conséquence — il relie une cause à son effet. Il appartient à la famille des connecteurs consécutifs avec « ainsi », « par conséquent », « c''est pourquoi ». Retiens la distinction cause / conséquence : la cause répond à « pourquoi ? », la conséquence répond à « qu''est-ce qui résulte de ça ? ». C''est une notion logique fondamentale que les élèves doivent maîtriser pour lire et produire des textes argumentatifs et explicatifs !'
WHERE id = '32000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, ce n''est pas une métaphore filée ! Une métaphore filée se développerait de façon systématique sur plusieurs vers. Ici, Verlaine établit une correspondance entre la pluie extérieure et une tristesse intérieure — c''est l''analogie lyrique symboliste par excellence, entre le monde physique et l''état émotionnel du locuteur. Et ce n''est pas davantage une hyperbole : il n''y a aucune exagération quantitative. C''est l''intimité entre dedans et dehors qui fait toute la beauté verlainienne.'
WHERE id = '71000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = 'Exactement ! L''enjambement, c''est quand la phrase refuse de s''arrêter à la fin du vers — elle déborde sur le vers suivant, créant une tension entre le rythme métrique et le rythme syntaxique. Pense à Hugo : « Demain, dès l''aube, à l''heure où blanchit la campagne, / Je partirai. » La coupure syntaxique tombe au milieu du vers suivant. Cet effet de suspension ou d''accélération est un outil expressif puissant — à ne pas confondre avec l''anaphore (répétition en début de vers) !'
WHERE id = '71000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'Retiens bien : l''alexandrin, c''est 12 syllabes, et la césure principale tombe obligatoirement après la 6e — ce qui donne deux hémistiches de 6 syllabes. Par exemple chez Lamartine : « Souvent sur la montagne // à l''ombre du vieux chêne ». C''est la règle classique. Au XIXe siècle, les Romantiques ont osé la briser avec le trimètre romantique (4/4/4) — une vraie révolution poétique ! Mais au concours, on part toujours de la règle avant de connaître les exceptions.'
WHERE id = '71000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Attention à l''idée reçue : le vers libre n''est pas de l''écriture spontanée sans travail ! Il s''affranchit de la métrique syllabique fixe et de la rime obligatoire — mais pas du rythme. Cendrars, Michaux, Prévert ont des rythmes très construits. Le vers libre, apparu avec les symbolistes (Gustave Kahn) puis Apollinaire, garde la disposition en lignes, les répétitions, les figures sonores. C''est de la liberté choisie, pas du relâchement. Nuance capitale pour le CRPE !'
WHERE id = '71000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'C''est une inférence ! Le texte ne dit pas directement que la vieille femme est triste — il faut lire entre les lignes. Regarde le faisceau d''indices : elle regarde par la fenêtre (attente, désir d''ailleurs), la pluie persiste depuis des heures (obstacle, grisaille), elle soupire (expression d''un sentiment négatif), et elle retourne s''asseoir près du feu (résignation). Tout ça ensemble construit une image de mélancolie. C''est ça, la compréhension en profondeur — pas juste décoder les mots, mais assembler les indices !'
WHERE id = '26000000-0000-0000-0000-000000000001';

UPDATE public.exercises SET
  detailed_explanation = '« Depuis des heures » est une hyperbole implicite : la durée n''est pas précisée mais est présentée comme longue et éprouvante, ce qui renforce l''atmosphère pesante. Il n''y a pas de terme comparatif (pas de « comme ») → pas de métaphore au sens strict. La pluie n''est pas présentée comme un être vivant doté d''intentions → pas de personnification. Retiens : l''hyperbole, c''est l''exagération au service de l''effet expressif. Et ici, ça marche parfaitement !'
WHERE id = '26000000-0000-0000-0000-000000000002';

UPDATE public.exercises SET
  detailed_explanation = 'C''est ça ! La focalisation interne (point de vue interne), c''est quand le lecteur accède uniquement à la conscience d''un seul personnage focal — le narrateur ne sait pas plus que lui. C''est à distinguer de la focalisation zéro (narrateur omniscient qui sait tout sur tous) et de la focalisation externe (le narrateur observe les personnages de l''extérieur, sans accès à leurs pensées). Retiens les trois : interne (un seul), zéro (tout), externe (de l''extérieur). C''est incontournable au CRPE !'
WHERE id = '26000000-0000-0000-0000-000000000003';

UPDATE public.exercises SET
  detailed_explanation = 'Le registre littéraire (ou tonalité), c''est le mode d''expression dominant d''un texte et l''effet qu''il cherche à produire sur le lecteur. Tragique, comique, lyrique, épique, ironique, fantastique, pathétique, polémique... Ne confonds pas le registre (le ton, l''effet visé) avec le genre (la forme : roman, poème, théâtre) ni avec le niveau de langue (registre linguistique : soutenu, courant, familier). Ce sont trois notions distinctes — et les confondre est une erreur classique au CRPE !'
WHERE id = '26000000-0000-0000-0000-000000000004';

UPDATE public.exercises SET
  detailed_explanation = 'En rhétorique, l''anaphore est une figure de répétition : le même mot ou groupe est répété en tête de plusieurs unités syntaxiques successives. Exemple célèbre : « Je suis venu, j''ai vu, j''ai vaincu » (Veni, vidi, vici). Attention à ne pas confondre avec l''anaphore grammaticale (reprise par un pronom), qui relève de la cohérence textuelle — c''est une autre notion ! La question précise bien « en rhétorique » : ici c''est la répétition rythmique en début de phrase ou de vers.'
WHERE id = '26000000-0000-0000-0000-000000000005';

UPDATE public.exercises SET
  detailed_explanation = 'Attention, c''est faux — et c''est le piège le plus classique ! Ce qui est introduit par « comme » ou « tel que », c''est la comparaison. La métaphore, elle, établit une équivalence sans outil de comparaison. Ex : « sa voix est douce comme le miel » → comparaison. « Sa voix de miel » ou « il est un lion au combat » → métaphore. La métaphore est plus condensée, plus frappante, plus implicite. Retiens : comparaison = avec outil. Métaphore = sans outil. Ne jamais les confondre !'
WHERE id = '26000000-0000-0000-0000-000000000006';

