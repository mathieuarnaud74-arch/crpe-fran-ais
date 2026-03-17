-- CRPE Français — Lot 5 : Compréhension de texte + Lexique avancé (4 séries × 10 questions)
-- Appliquer APRÈS les migrations et seed content précédents

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 01 — Compréhension de texte littéraire — Intermédiaire — free
-- topic_key : cpt_texte_litteraire
-- Distribution QCM : Q1=b, Q2=d, Q4=c, Q5=a, Q7=b, Q8=d, Q10=a
-- ================================================================
('26000000-0000-0000-0000-000000000001','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Lisez ce passage : « La vieille femme regardait par la fenêtre. La pluie tombait depuis des heures. Elle soupira, prit son châle et se rassit près du feu. » Qu''implique ce passage concernant l''état d''esprit de la vieille femme ?',
'La vieille femme regardait par la fenêtre. La pluie tombait depuis des heures. Elle soupira, prit son châle et se rassit près du feu.',
'[{"id":"a","label":"Elle est heureuse de rester chez elle au chaud"},{"id":"b","label":"Elle semble mélancolique ou résignée, incapable de sortir à cause de la pluie"},{"id":"c","label":"Elle a froid et cherche uniquement à se réchauffer"},{"id":"d","label":"Elle attend impatiemment quelqu''un qui ne vient pas"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est une inférence ! Le texte ne dit pas directement que la vieille femme est triste — il faut lire entre les lignes. Regarde le faisceau d''indices : elle regarde par la fenêtre (attente, désir d''ailleurs), la pluie persiste depuis des heures (obstacle, grisaille), elle soupire (expression d''un sentiment négatif), et elle retourne s''asseoir près du feu (résignation). Tout ça ensemble construit une image de mélancolie. C''est ça, la compréhension en profondeur — pas juste décoder les mots, mais assembler les indices !',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000002','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Dans le même passage, quelle figure de style est présente dans l''idée que la pluie « tombe depuis des heures » ?',
'La vieille femme regardait par la fenêtre. La pluie tombait depuis des heures. Elle soupira, prit son châle et se rassit près du feu.',
'[{"id":"a","label":"Une métaphore : la pluie est comparée à quelque chose"},{"id":"b","label":"Une personnification : la pluie est présentée comme un être vivant"},{"id":"c","label":"Une litote : atténuation de la durée pour suggérer l''ennui"},{"id":"d","label":"Une hyperbole : exagération de la durée pour renforcer l''effet de durée et d''oppression"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Depuis des heures » est une hyperbole implicite : la durée n''est pas précisée mais est présentée comme longue et éprouvante, ce qui renforce l''atmosphère pesante. Il n''y a pas de terme comparatif (pas de « comme ») → pas de métaphore au sens strict. La pluie n''est pas présentée comme un être vivant doté d''intentions → pas de personnification. Retiens : l''hyperbole, c''est l''exagération au service de l''effet expressif. Et ici, ça marche parfaitement !',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000003','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','vrai_faux',
'Vrai ou faux : dans un texte narratif, le point de vue narratif « interne » signifie que le narrateur ne connaît que les pensées et sensations d''un seul personnage.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! La focalisation interne (point de vue interne), c''est quand le lecteur accède uniquement à la conscience d''un seul personnage focal — le narrateur ne sait pas plus que lui. C''est à distinguer de la focalisation zéro (narrateur omniscient qui sait tout sur tous) et de la focalisation externe (le narrateur observe les personnages de l''extérieur, sans accès à leurs pensées). Retiens les trois : interne (un seul), zéro (tout), externe (de l''extérieur). C''est incontournable au CRPE !',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000004','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Qu''appelle-t-on le « registre » d''un texte littéraire ?',null,
'[{"id":"a","label":"Le genre du texte (roman, poème, théâtre)"},{"id":"b","label":"Le niveau de langue utilisé (soutenu, courant, familier)"},{"id":"c","label":"Le ton dominant et l''effet visé sur le lecteur (tragique, comique, lyrique, ironique...)"},{"id":"d","label":"Le nombre de personnages mis en scène dans le récit"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le registre littéraire (ou tonalité), c''est le mode d''expression dominant d''un texte et l''effet qu''il cherche à produire sur le lecteur. Tragique, comique, lyrique, épique, ironique, fantastique, pathétique, polémique... Ne confonds pas le registre (le ton, l''effet visé) avec le genre (la forme : roman, poème, théâtre) ni avec le niveau de langue (registre linguistique : soutenu, courant, familier). Ce sont trois notions distinctes — et les confondre est une erreur classique au CRPE !',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000005','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Qu''est-ce qu''une anaphore en rhétorique (et non en grammaire) ?',null,
'[{"id":"a","label":"La répétition d''un mot ou groupe de mots en début de phrases ou de vers successifs, pour créer un effet rythmique et insistant"},{"id":"b","label":"Le remplacement d''un nom par un pronom dans un texte"},{"id":"c","label":"L''utilisation d''un mot à la fin d''une phrase pour le reprendre au début de la suivante"},{"id":"d","label":"La répétition d''un même son vocalique dans une suite de mots"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'En rhétorique, l''anaphore est une figure de répétition : le même mot ou groupe est répété en tête de plusieurs unités syntaxiques successives. Exemple célèbre : « Je suis venu, j''ai vu, j''ai vaincu » (Veni, vidi, vici). Attention à ne pas confondre avec l''anaphore grammaticale (reprise par un pronom), qui relève de la cohérence textuelle — c''est une autre notion ! La question précise bien « en rhétorique » : ici c''est la répétition rythmique en début de phrase ou de vers.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000006','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','vrai_faux',
'Vrai ou faux : une métaphore est toujours introduite par « comme » ou « tel que ».',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Attention, c''est faux — et c''est le piège le plus classique ! Ce qui est introduit par « comme » ou « tel que », c''est la comparaison. La métaphore, elle, établit une équivalence sans outil de comparaison. Ex : « sa voix est douce comme le miel » → comparaison. « Sa voix de miel » ou « il est un lion au combat » → métaphore. La métaphore est plus condensée, plus frappante, plus implicite. Retiens : comparaison = avec outil. Métaphore = sans outil. Ne jamais les confondre !',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000007','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Qu''est-ce que le « schéma narratif » d''un texte ?',null,
'[{"id":"a","label":"La liste chronologique de tous les événements du récit"},{"id":"b","label":"La structure en 5 étapes : situation initiale, élément perturbateur, péripéties, élément de résolution, situation finale"},{"id":"c","label":"Le plan de l''auteur pour organiser les chapitres de son roman"},{"id":"d","label":"La description des relations entre les personnages principaux et secondaires"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le schéma narratif (ou schéma quinaire), c''est la structure en 5 étapes : (1) situation initiale — l''équilibre de départ ; (2) élément perturbateur — l''événement qui brise cet équilibre ; (3) péripéties — les actions pour résoudre le problème ; (4) élément de résolution — ce qui met fin aux péripéties ; (5) situation finale — le nouvel équilibre. C''est un outil d''analyse fondamental enseigné dès le cycle 3 — et un incontournable de ta formation CRPE !',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000008','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Quelle est la fonction du « narrateur » dans un récit ?',null,
'[{"id":"a","label":"Il est toujours l''auteur du texte — le narrateur et l''auteur sont la même personne"},{"id":"b","label":"Il est nécessairement un personnage de l''histoire qu''il raconte"},{"id":"c","label":"Il décide du dénouement de l''intrigue et des actions des personnages"},{"id":"d","label":"Il est l''instance qui raconte l''histoire, distincte de l''auteur réel et du personnage"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le narrateur, c''est une construction textuelle — pas une vraie personne, et surtout pas nécessairement l''auteur réel ! Il peut être intradiégétique (personnage de l''histoire, récit à la 1ère personne) ou extradiégétique (extérieur à l''histoire). L''auteur réel peut créer des narrateurs qui ne lui ressemblent pas du tout, ou même des narrateurs non fiables (qui mentent ou se trompent). Confondre narrateur et auteur, c''est une erreur fréquente en analyse littéraire — à ne jamais commettre au CRPE !',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000009','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','vrai_faux',
'Vrai ou faux : la compréhension d''un texte littéraire nécessite uniquement de comprendre le sens des mots difficiles.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Le vocabulaire, c''est une condition nécessaire mais largement insuffisante. Comprendre un texte littéraire, c''est mobiliser bien d''autres compétences : la connaissance des conventions génériques (reconnaître un texte poétique, un dialogue théâtral...), la capacité à faire des inférences, la culture historique et littéraire du contexte, la sensibilité aux effets stylistiques, et la construction d''une interprétation cohérente. C''est tout ça que tu devras enseigner et évaluer en tant que prof !',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000010','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Quelle est la différence entre « paraphrase » et « interprétation » dans l''analyse d''un texte ?',null,
'[{"id":"a","label":"La paraphrase reformule le texte avec d''autres mots sans y ajouter de sens ; l''interprétation donne du sens, explique le pourquoi et le comment"},{"id":"b","label":"La paraphrase est réservée à l''écrit, l''interprétation à l''oral"},{"id":"c","label":"La paraphrase est une erreur à éviter, l''interprétation est toujours correcte"},{"id":"d","label":"La paraphrase s''applique aux textes anciens, l''interprétation aux textes contemporains"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La paraphrase, c''est redire avec d''autres mots ce que le texte dit déjà — sans aucune valeur analytique. L''interprétation, c''est expliquer ce que le texte fait, comment il le fait, et pourquoi — en mobilisant des notions d''analyse littéraire (registre, figure de style, point de vue...). Au CRPE, les candidats doivent interpréter, pas paraphraser. Si tu reformules juste le texte, tu n''analyses pas — et les correcteurs le voient tout de suite !',
'valide','CRPE Français V2 — Compréhension','free',true),

-- ================================================================
-- SÉRIE 02 — Lexique avancé : figures de style et registres — Intermédiaire — free
-- topic_key : lex_figures_registres
-- Distribution QCM : Q1=b, Q2=c, Q3=d, Q5=b, Q6=a, Q8=a, Q9=b
-- ================================================================
('27000000-0000-0000-0000-000000000001','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Identifiez la figure de style dans : « Le vent gémissait dans les branches. »',null,
'[{"id":"a","label":"Une métaphore"},{"id":"b","label":"Une personnification"},{"id":"c","label":"Une hyperbole"},{"id":"d","label":"Une allitération"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Gémir », c''est une action humaine — et ici on l''attribue au vent, un phénomène naturel inanimé. C''est donc une personnification : on prête au vent une action propre aux humains pour animer le décor et créer une atmosphère. La personnification est l''une des figures les plus fréquentes dans les textes littéraires. Retiens : chaque fois qu''un élément inanimé ou naturel agit comme un être humain, tu as affaire à une personnification !',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000002','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Identifiez la figure de style dans : « Cette valise pèse une tonne ! »',null,
'[{"id":"a","label":"Une comparaison"},{"id":"b","label":"Une litote"},{"id":"c","label":"Une hyperbole"},{"id":"d","label":"Une métonymie"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Une valise qui pèse une tonne ? C''est une exagération volontaire pour souligner à quel point elle est lourde — c''est une hyperbole ! La comparaison nécessiterait un outil comparatif (« lourde comme une tonne »). La litote, c''est l''inverse : dire moins pour signifier plus (ex : « ce n''est pas mal » pour « c''est très bien »). L''hyperbole, c''est l''exagération au service de l''expressivité. Retiens : hyperbole = amplification. Litote = atténuation. Ce sont deux figures opposées !',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000003','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Identifiez la figure de style dans : « Ce n''est pas sans mérite. » (pour signifier « c''est très bien »)',null,
'[{"id":"a","label":"Une hyperbole"},{"id":"b","label":"Une ironie"},{"id":"c","label":"Un euphémisme"},{"id":"d","label":"Une litote"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Voilà une litote parfaite ! Dire « ce n''est pas sans mérite » = nier qu''il n''y ait pas de mérite = affirmer qu''il y en a — et l''atténuation de l''expression renforce en réalité l''effet laudatif. C''est le principe de la litote : dire moins pour suggérer plus. La litote est très fréquente dans la langue courante et dans les textes classiques. Différence avec l''ironie : l''ironie dit le contraire de ce qu''on pense ; la litote atténue ce qu''on pense.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000004','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','vrai_faux',
'Vrai ou faux : un euphémisme consiste à atténuer une réalité difficile à exprimer directement en utilisant un terme plus doux ou plus vague.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! L''euphémisme remplace un mot ou une expression trop brutal ou choquant par un terme plus doux. « Il nous a quittés » pour « il est mort ». « Personne à mobilité réduite » pour « personne handicapée ». L''euphémisme est fréquent dans les registres soutenu et diplomatique. Attention à ne pas confondre avec la litote : la litote joue sur la négation (dire moins en niant le contraire). L''euphémisme joue sur l''adoucissement du terme lui-même.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000005','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Qu''est-ce qu''une allitération ?',null,
'[{"id":"a","label":"La répétition d''une même voyelle dans une suite de mots proches"},{"id":"b","label":"La répétition d''une même consonne (ou groupe consonantique) dans une suite de mots proches"},{"id":"c","label":"La reprise d''un même mot en début de vers"},{"id":"d","label":"La fusion de deux mots en un seul pour créer un effet sonore"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''allitération est une figure de sonorité : répétition de la même consonne (ou du même groupe consonantique) dans une suite de mots. Exemple célèbre : « Pour qui sont ces serpents qui sifflent sur vos têtes ? » — répétition du son /s/. Attention aux voisins : l''assonance porte sur la répétition d''une voyelle (pas une consonne). L''anaphore (réponse c) est une figure de répétition syntaxique, pas sonore. Retiens : allitération → consonne. Assonance → voyelle.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000006','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Parmi ces exemples, lequel illustre une métonymie ?',null,
'[{"id":"a","label":"« Il boit un verre. » (le contenant pour le contenu)"},{"id":"b","label":"« Il court comme le vent. »"},{"id":"c","label":"« Le soleil se lève. »"},{"id":"d","label":"« Sa voix de miel le séduisit. »"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La métonymie, c''est désigner une réalité par un autre mot qui lui est lié par contiguïté (contenant/contenu, cause/effet, partie/tout...). « Boire un verre » = boire ce qu''il y a dans le verre : le contenant désigne le contenu — métonymie parfaite ! « Courir comme le vent » → comparaison (il y a « comme »). « Le soleil se lève » → sens propre (ou très légère personnification selon l''interprétation). Retiens : métonymie = relation de contiguïté réelle entre les deux termes.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000007','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','vrai_faux',
'Vrai ou faux : l''oxymore est une figure qui rapproche deux termes de sens contraire pour créer un effet paradoxal.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! L''oxymore (ou oxymoron) rapproche deux termes en opposition sémantique dans une même expression, créant un paradoxe expressif. Exemples classiques : « cette obscure clarté » (Corneille), « un silence éloquent », « douce violence ». Très utilisé en poésie et dans les titres. À distinguer de l''antithèse : l''antithèse oppose deux idées dans des propositions distinctes. L''oxymore les fusionne dans le même groupe de mots — c''est la différence clé !',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000008','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Quelle est la différence entre une antithèse et un oxymore ?',null,
'[{"id":"a","label":"L''antithèse oppose deux idées dans des unités syntaxiques distinctes (phrases, propositions) ; l''oxymore les fusionne dans un groupe de mots"},{"id":"b","label":"L''antithèse est une figure sonore, l''oxymore est une figure de sens"},{"id":"c","label":"Il n''y a pas de différence : les deux termes sont synonymes"},{"id":"d","label":"L''antithèse s''emploie uniquement en poésie, l''oxymore en prose"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La différence est d''ordre syntaxique : l''antithèse oppose deux idées dans des structures distinctes (ex : « Je vis, je souffre, j''aime et je hais »). L''oxymore, lui, fusionne les deux termes contraires dans un même groupe nominal ou adjectival (ex : « une obscure clarté »). Retiens : antithèse = distance entre les contraires. Oxymore = fusion des contraires. Ce n''est pas la même figure, et le CRPE peut te demander de les distinguer !',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000009','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Qu''est-ce qu''une périphrase ?',null,
'[{"id":"a","label":"Un mot de sens proche d''un autre mot (synonyme)"},{"id":"b","label":"Un groupe de mots utilisé à la place d''un seul mot pour désigner une réalité de façon plus évocatrice ou plus précise"},{"id":"c","label":"La répétition d''un mot à des fins stylistiques"},{"id":"d","label":"L''omission volontaire d''un mot pour créer un effet d''ellipse"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La périphrase, c''est remplacer un mot simple par une expression plus longue qui en donne une définition ou une évocation. « Le roi des animaux » pour le lion. « La Ville lumière » pour Paris. « L''astre du jour » pour le soleil. C''est très courant dans les textes littéraires classiques et les textes journalistiques pour éviter les répétitions ou valoriser l''objet désigné. En classe, faire trouver des périphrases, c''est un excellent exercice d''enrichissement lexical !',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000010','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','vrai_faux',
'Vrai ou faux : l''ironie consiste à dire exactement le contraire de ce que l''on pense, dans l''intention d''être compris comme tel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! L''ironie consiste à dire le contraire de ce qu''on pense — mais avec l''intention d''être compris malgré tout. Ex : « Quelle belle journée ! » dit par temps de tempête. L''ironie se distingue du mensonge par l''intention d''être compris. Elle peut être légère ou mordante (on parle alors de sarcasme). C''est une figure centrale dans la satire et le registre comique — et une notion attendue en analyse littéraire au CRPE !',
'valide','CRPE Français V2 — Lexique','free',true),

-- ================================================================
-- SÉRIE 03 — Analyse de la langue : syntaxe avancée — Difficile — premium
-- topic_key : al_syntaxe_avancee
-- Distribution QCM : Q1=b, Q2=d, Q4=a, Q5=a, Q7=a, Q8=b, Q10=a
-- ================================================================
('28000000-0000-0000-0000-000000000001','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle est la nature et la fonction de la proposition soulignée dans : « Je suis convaincu [que tu réussiras]. »',null,
'[{"id":"a","label":"Proposition subordonnée relative, complément du nom « convaincu »"},{"id":"b","label":"Proposition subordonnée complétive, complément d''objet direct du verbe « suis convaincu »"},{"id":"c","label":"Proposition subordonnée circonstancielle de conséquence"},{"id":"d","label":"Proposition subordonnée complétive sujet du verbe « suis »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Attention au piège : « que » ici n''est pas un pronom relatif, c''est une conjonction de subordination ! La proposition joue le rôle de COD du verbe « être convaincu » (convaincu de quoi ? → que tu réussiras). C''est donc une proposition subordonnée complétive conjonctive à fonction COD. La relative, elle, serait introduite par un pronom relatif (qui, que, dont...) et qualifierait un nom. Le test : peut-on remplacer par un nom ou un pronom ? « J''en suis convaincu » → COD. C''est une complétive !',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000002','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Identifiez la proposition subordonnée dans : « Bien qu''il soit fatigué, il continue à travailler. »',null,
'[{"id":"a","label":"Proposition subordonnée circonstancielle de cause"},{"id":"b","label":"Proposition subordonnée circonstancielle de condition"},{"id":"c","label":"Proposition subordonnée circonstancielle de but"},{"id":"d","label":"Proposition subordonnée circonstancielle de concession"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Bien que » introduit une concession (ou opposition) : être fatigué aurait pu logiquement empêcher de continuer — mais non, la personne continue quand même ! C''est ça, la concession : un obstacle attendu qui ne produit pas l''effet escompté. La cause, c''est parce que, puisque (le fait de travailler s''explique par quelque chose). La condition, c''est si, au cas où (l''action dépend d''une condition). Retiens : bien que + subjonctif → concession. Toujours !',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000003','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','vrai_faux',
'Vrai ou faux : dans « Le livre dont tu m''as parlé est épuisé », le pronom relatif « dont » a pour antécédent « livre ».',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! « Dont » reprend « le livre » dans la proposition subordonnée relative et y joue la fonction de complément du verbe « parler » (parler de quoi ? → du livre). Retiens : « dont » = « de lequel / de laquelle / desquels / desquelles ». Il intègre la préposition « de ». C''est le pronom relatif à utiliser dès que le verbe de la relative se construit avec « de ». Une erreur fréquente serait d''utiliser « que » à la place — « le livre que tu m''as parlé » est incorrect !',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000004','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle est la fonction de la proposition soulignée dans : « Il faut [que vous vous prépariez]. »',null,
'[{"id":"a","label":"Sujet du verbe « faut »"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Complément d''objet direct du verbe « faut »"},{"id":"d","label":"Complément circonstanciel de but"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Dans les tournures impersonnelles (il faut que, il est nécessaire que, il suffit que...), la proposition en « que » joue le rôle de sujet réel du verbe impersonnel. Le « il » est un sujet grammatical vide — le sujet apparent. La proposition subordonnée est le vrai sujet logique. Test : reformule en « votre préparation est nécessaire » → « que vous vous prépariez » est bien sujet de « faut ». Les verbes impersonnels, c''est un point crucial de la grammaire avancée au CRPE !',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000005','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle manipulation syntaxique permet de distinguer une proposition subordonnée relative déterminative d''une relative explicative ?',null,
'[{"id":"a","label":"La suppression : si la relative peut être supprimée sans changer le sens fondamental de la phrase, c''est une explicative (ou appositive) ; si elle est indispensable, c''est une déterminative"},{"id":"b","label":"La pronominalisation : remplacer la relative par un pronom permet d''identifier sa nature"},{"id":"c","label":"Le déplacement : une relative déterminative peut se déplacer, une explicative ne peut pas"},{"id":"d","label":"La substitution : remplacer la relative par un adjectif qualificatif indique qu''elle est déterminative"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La suppression est le test le plus efficace ! La relative déterminative est essentielle : elle restreint le référent du nom (ex : « Les élèves qui ont révisé ont réussi » — ce sont ces élèves-là, pas les autres). Si tu la supprimes, la phrase change de sens. La relative explicative est accessoire : elle ajoute une information non essentielle (ex : « Les élèves, qui étaient nombreux, ont réussi »). Si tu la supprimes, la phrase tient toujours. Retiens : déterminative = indispensable. Explicative = accessoire (et entre virgules !)',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000006','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','vrai_faux',
'Vrai ou faux : dans « Si tu travaillais, tu réussirais », la proposition subordonnée exprime une condition irréelle dans le présent.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! La structure « si + imparfait → conditionnel présent » exprime une hypothèse irréelle ou peu probable dans le présent : la condition (travailler) est présentée comme contraire à la réalité actuelle — en gros, la personne ne travaille pas. Si la condition était réelle ou possible, on utiliserait : « si tu travailles, tu réussiras » (présent + futur). Retiens les trois constructions : si + présent → futur (possible). Si + imparfait → conditionnel présent (irréel présent). Si + plus-que-parfait → conditionnel passé (irréel passé).',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000007','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Dans « Il pense à ce que tu lui as dit », quelle est la nature de « ce que tu lui as dit » ?',null,
'[{"id":"a","label":"Proposition subordonnée relative à antécédent indéfini (ou proposition relative substantive), COI de « pense »"},{"id":"b","label":"Proposition subordonnée complétive, COD de « pense »"},{"id":"c","label":"Proposition subordonnée circonstancielle de manière"},{"id":"d","label":"Proposition subordonnée complétive sujet du verbe « pense »"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Ce que tu lui as dit » est une proposition relative substantive : « ce » est un pronom démonstratif neutre qui sert d''antécédent intégré — il n''y a pas de nom antécédent explicite. L''ensemble « ce que... » joue la fonction de COI du verbe « penser » (penser à quoi ? → à ce que tu lui as dit). On l''appelle aussi subordonnée relative à antécédent pronom neutre. Ce type de subordonnée est difficile à classer — et c''est exactement le genre de question que le CRPE peut poser en syntaxe avancée !',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000008','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle est la valeur aspectuelle de l''imparfait dans : « Chaque soir, elle lisait un chapitre. » ?',null,
'[{"id":"a","label":"Imparfait duratif : action longue et continue dans le passé"},{"id":"b","label":"Imparfait itératif (ou fréquentatif) : action répétée ou habituelle dans le passé"},{"id":"c","label":"Imparfait narratif : action soudaine dans le récit"},{"id":"d","label":"Imparfait de politesse : atténuation d''une demande dans le présent"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''indicateur temporel « chaque soir » te donne la réponse : l''action se répète régulièrement dans le passé — c''est l''imparfait itératif (ou fréquentatif). L''imparfait duratif présente une action qui se déroule dans la durée sans répétition (ex : « elle lisait tranquillement »). L''imparfait narratif (ou de rupture) présente une action soudaine dans un récit au passé simple — c''est rare et stylistiquement fort. Retiens les trois valeurs de l''imparfait : duratif, itératif, narratif. Le contexte décide !',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000009','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','vrai_faux',
'Vrai ou faux : dans « Il est possible que tu aies raison », le verbe de la subordonnée est au subjonctif passé.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Attention, c''est un piège classique ! « Aies raison » peut faire penser au subjonctif passé — mais non ! C''est le subjonctif présent de « avoir raison » (auxiliaire avoir au subjonctif présent, sans participe passé). Le subjonctif passé apparaîtrait dans « il est possible que tu aies eu raison » — là oui, c''est subjonctif passé (auxiliaire au subjonctif présent + participe passé). « Être possible que + subjonctif » exprime la possibilité ou l''incertitude — c''est toujours le subjonctif qui s''impose !',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000010','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle est la différence entre un complément d''objet direct (COD) et un complément d''objet indirect (COI) ?',null,
'[{"id":"a","label":"Le COD répond à la question « qui ? » ou « quoi ? » après le verbe, sans préposition ; le COI répond à « à qui ? », « de quoi ? » etc., avec une préposition"},{"id":"b","label":"Le COD suit toujours le verbe, le COI peut se placer avant"},{"id":"c","label":"Le COD est toujours un nom, le COI est toujours un pronom"},{"id":"d","label":"Le COD peut être supprimé, le COI est toujours obligatoire"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La distinction clé, c''est la préposition ! Le COD complète le verbe sans préposition (« Je lis un livre » → quoi ? un livre) et répond à « qui ? » ou « quoi ? » directement. Le COI complète le verbe avec une préposition (à, de, en, pour...) et répond à « à qui ? », « à quoi ? », « de qui ? » (« Je pense à mes amis » → à qui ? à mes amis). Cette distinction est fondamentale pour les règles d''accord du participe passé — un point qui coûte cher au CRPE si on le rate !',
'valide','CRPE Français V2 — Analyse','premium',true),

-- ================================================================
-- SÉRIE 04 — Lexique : morphologie et formation des mots — Facile — free
-- topic_key : lex_morphologie_mots
-- Distribution QCM : Q1=a, Q2=b, Q4=c, Q5=d, Q7=b, Q8=a, Q10=b
-- ================================================================
('29000000-0000-0000-0000-000000000001','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Quel est le préfixe dans le mot « invraisemblable » et quel sens apporte-t-il ?',null,
'[{"id":"a","label":"« in- » : marque la négation ou le contraire (ici : qui n''est pas vraisemblable)"},{"id":"b","label":"« in- » : marque la répétition de l''action"},{"id":"c","label":"« invrais- » : racine du mot indiquant un jugement négatif"},{"id":"d","label":"« in- » : marque l''intériorité ou la localisation"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le préfixe « in- » (ou « im- » devant b, m, p) est un préfixe négatif latin qui signifie « non, contraire de ». Invraisemblable = qui n''est pas vraisemblable. Autres exemples : impossible, incorrect, indécis, inhabituel. Ce préfixe ne marque pas la répétition — ça, c''est le rôle de « re- » (refaire, relire). Et « invrais- » n''est pas une racine, c''est le piège de la décomposition incorrecte. Apprends à identifier les frontières morphologiques : in- + vraisemblable.',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000002','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Que signifie le suffixe « -tion » dans des mots comme « construction », « révision », « formation » ?',null,
'[{"id":"a","label":"Il marque l''agent, celui qui fait l''action"},{"id":"b","label":"Il marque l''action ou son résultat, transformant un verbe en nom abstrait"},{"id":"c","label":"Il marque la qualité ou l''état"},{"id":"d","label":"Il marque le lieu où se déroule l''action"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le suffixe -tion (et ses variantes -sion, -ation, -ition) transforme un verbe en nom abstrait désignant l''action ou son résultat. Construire → construction, réviser → révision, former → formation. C''est un suffixe extrêmement productif en français ! L''agent, c''est -eur/-teur (constructeur). La qualité, c''est -ité (qualité), -eur (longueur), -itude (exactitude). Retiens : -tion = l''action ou son résultat. C''est un des suffixes les plus fréquents à reconnaître en morphologie !',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000003','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','vrai_faux',
'Vrai ou faux : les mots « port », « portail », « transport », « rapport », « portable » appartiennent à la même famille morphologique car ils partagent la même racine.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça ! Ces mots partagent tous la racine latine port- (du verbe portare : porter). Transport = trans- + port, rapport = re- + a- + port, portable = port + -able. Identifier les familles morphologiques, c''est un outil puissant pour mémoriser l''orthographe et déduire le sens de mots inconnus. C''est exactement ce que tu dois enseigner à tes élèves : voir les mots comme des constructions, pas des suites de lettres arbitraires !',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000004','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Quel est le sens du préfixe « pré- » dans « prévisible », « prévenir », « préparer » ?',null,
'[{"id":"a","label":"Après, à la suite de"},{"id":"b","label":"Contre, en opposition à"},{"id":"c","label":"Avant, en avance sur"},{"id":"d","label":"De nouveau, une seconde fois"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Pré- vient du latin prae et signifie « avant, en avance sur ». Prévisible = qui peut être vu avant, prévenir = venir avant, préparer = équiper avant. D''autres mots : préhistoire (avant l''histoire écrite), précaution (prendre soin avant), préméditer. Après, c''est post-. Contre, c''est anti-. Retiens la paire : pré- (avant) / post- (après). Et ne confonds pas avec les mots où « pré- » fait partie du radical (prêtre, premier...) — là, c''est le radical, pas un préfixe !',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000005','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Comment s''appelle un mot formé par la réunion de deux mots autonomes (ex : « portefeuille », « tire-bouchon ») ?',null,
'[{"id":"a","label":"Un mot dérivé"},{"id":"b","label":"Un mot tronqué"},{"id":"c","label":"Un néologisme"},{"id":"d","label":"Un mot composé"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Un mot composé est formé par l''association de plusieurs mots autonomes — parfois soudés (portefeuille, bonhomme), parfois reliés par un trait d''union (tire-bouchon, arc-en-ciel), parfois écrits séparément (chemin de fer, pomme de terre). À distinguer : le mot dérivé (un seul morphème lexical + affixes, ex : jardinage) et le mot tronqué (raccourcissement : vélo pour vélocipède). Retiens les trois procédés : dérivation, composition, troncation. C''est le programme de morphologie du CRPE !',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000006','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','vrai_faux',
'Vrai ou faux : le mot « cinéma » est un exemple de troncation (raccourcissement d''un mot plus long).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Exactement ! « Cinéma » est la troncation de « cinématographe ». D''autres exemples : vélo (vélocipède), auto (automobile), stylo (stylographe), bus (omnibus), prof (professeur), info (information). La troncation est très courante dans les usages familiers — et elle finit souvent par s''imposer comme la forme standard ! C''est un procédé de créativité lexicale que tes élèves utilisent eux-mêmes au quotidien, souvent sans le savoir. L''enseigner, c''est leur montrer qu''ils sont déjà morphologues !',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000007','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Que désigne un « néologisme » ?',null,
'[{"id":"a","label":"Un mot ancien tombé en désuétude"},{"id":"b","label":"Un mot nouveau créé pour désigner une réalité nouvelle ou pour enrichir la langue"},{"id":"c","label":"Un mot emprunté à une langue étrangère sans modification"},{"id":"d","label":"Un mot dont le sens a changé au fil du temps sans que sa forme soit modifiée"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Un néologisme, c''est un mot nouveau introduit dans la langue pour nommer une réalité nouvelle ou un concept inédit. Clavardage (chat en ligne), courriel (email), selfie, télétravail... Les néologismes peuvent être des dérivés, des composés, des emprunts ou des créations de toutes pièces. Ils témoignent de la vitalité et de l''évolution d''une langue. Un mot tombé en désuétude, c''est un archaïsme — son contraire exact. Et un emprunt non modifié, c''est un anglicisme ou un xénisme, pas nécessairement un néologisme !',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000008','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Quelle est la différence entre un emprunt et un calque ?',null,
'[{"id":"a","label":"L''emprunt prend le mot étranger tel quel (ou légèrement adapté) ; le calque traduit le mot étranger mot à mot dans la langue d''arrivée"},{"id":"b","label":"L''emprunt vient du latin, le calque vient de l''anglais"},{"id":"c","label":"L''emprunt est toujours intégré dans le dictionnaire, le calque ne l''est jamais"},{"id":"d","label":"L''emprunt conserve la graphie étrangère, le calque adapte uniquement la prononciation"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''emprunt adopte un mot étranger tel quel : week-end (anglais), pizza (italien), yaourt (turc). Le calque traduit le mot étranger composante par composante : gratte-ciel (skyscraper), baladeur (walkman), logiciel (software). Le calque permet de franciser une réalité étrangère en utilisant des mots français existants — c''est une stratégie de résistance linguistique ! Ces deux procédés montrent comment les langues s''influencent mutuellement, un sujet passionnant à aborder en classe au cycle 3 !',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000009','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','vrai_faux',
'Vrai ou faux : enseigner la morphologie des mots (préfixes, suffixes, racines) aide les élèves à comprendre et retenir l''orthographe lexicale.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est ça, et c''est fondamental pour toi en tant que futur enseignant ! La morphologie permet de mémoriser l''orthographe de façon motivée — pas arbitraire. Si l''élève sait que ann- vient du latin annus (année), il écrira correctement annuel, anniversaire, annales. La morphologie relie la graphie au sens et à l''étymologie, rendant la mémorisation plus profonde et plus durable. C''est bien plus efficace que l''apprentissage par cœur sans comprendre ! Enseigne la morphologie, pas juste les règles.',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000010','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Parmi ces mots, lequel est formé par dérivation impropre (changement de classe grammaticale sans ajout de suffixe) ?',null,
'[{"id":"a","label":"« jardinage » (jardin + -age)"},{"id":"b","label":"« le manger » (utilisation du verbe comme nom)"},{"id":"c","label":"« porte-monnaie » (porter + monnaie)"},{"id":"d","label":"« prévisible » (pré- + voir + -ible)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La dérivation impropre (ou conversion), c''est changer la classe grammaticale d''un mot sans modifier sa forme ni ajouter d''affixe. « Le manger », « le savoir », « le devoir » transforment un verbe en nom — sans toucher à la forme du mot ! De même, « le bien », « le mal » transforment des adverbes en noms. « Jardinage » est une dérivation propre (avec suffixe -age). « Porte-monnaie » est une composition. Retiens : conversion = même forme, classe grammaticale différente. C''est le procédé le plus silencieux de la morphologie !',
'valide','CRPE Français V2 — Lexique','free',true);
