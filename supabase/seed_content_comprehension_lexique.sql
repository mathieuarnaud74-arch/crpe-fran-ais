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
-- ================================================================
('26000000-0000-0000-0000-000000000001','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Lisez ce passage : « La vieille femme regardait par la fenêtre. La pluie tombait depuis des heures. Elle soupira, prit son châle et se rassit près du feu. » Qu''implique ce passage concernant l''état d''esprit de la vieille femme ?',
'La vieille femme regardait par la fenêtre. La pluie tombait depuis des heures. Elle soupira, prit son châle et se rassit près du feu.',
'[{"id":"a","label":"Elle est heureuse de rester chez elle au chaud"},{"id":"b","label":"Elle semble mélancolique ou résignée, incapable de sortir à cause de la pluie"},{"id":"c","label":"Elle a froid et cherche uniquement à se réchauffer"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le passage mobilise plusieurs indices implicites : regarder par la fenêtre (attente, désir d''ailleurs), la pluie persistante (obstacle, grisaille), le soupir (expression d''un sentiment négatif), et le retour au feu (résignation). L''ensemble construit une image de mélancolie et de résignation, non pas de bonheur ou de simple froid physique. C''est une inférence à partir d''un faisceau d''indices textuels.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000002','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Dans le même passage, quelle figure de style est présente dans l''idée que la pluie « tombe depuis des heures » ?',
'La vieille femme regardait par la fenêtre. La pluie tombait depuis des heures. Elle soupira, prit son châle et se rassit près du feu.',
'[{"id":"a","label":"Une métaphore : la pluie est comparée à quelque chose"},{"id":"b","label":"Une hyperbole : exagération de la durée pour renforcer l''effet de durée et d''oppression"},{"id":"c","label":"Une personnification : la pluie est présentée comme un être vivant"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Depuis des heures » est une hyperbole implicite — la durée n''est pas précisée mais est présentée comme longue et éprouvante, renforçant l''atmosphère pesante. Il n''y a pas de comparaison explicite (pas de « comme »), donc pas de métaphore au sens strict. La pluie n''est pas présentée comme un être vivant doté d''intentions : ce n''est pas une personnification.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000003','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','vrai_faux',
'Vrai ou faux : dans un texte narratif, le point de vue narratif « interne » signifie que le narrateur ne connaît que les pensées et sensations d''un seul personnage.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. La focalisation interne (point de vue interne) est le mode narratif dans lequel le lecteur accède uniquement à la conscience d''un personnage focal. Le narrateur ne sait pas plus que ce personnage. C''est à distinguer de la focalisation zéro (narrateur omniscient, qui connaît tout) et de la focalisation externe (le narrateur voit les personnages de l''extérieur, sans accès à leurs pensées).',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000004','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Qu''appelle-t-on le « registre » d''un texte littéraire ?',null,
'[{"id":"a","label":"Le genre du texte (roman, poème, théâtre)"},{"id":"b","label":"Le niveau de langue utilisé (soutenu, courant, familier)"},{"id":"c","label":"Le ton dominant et l''effet visé sur le lecteur (tragique, comique, lyrique, ironique...)"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le registre littéraire (ou tonalité) désigne le mode d''expression dominant d''un texte et l''effet qu''il cherche à produire sur le lecteur. Les principaux registres sont : tragique, comique, lyrique, épique, ironique, fantastique, pathétique, polémique. Il ne doit pas être confondu avec le genre (forme du texte) ni avec le niveau de langue (registre linguistique). C''est une notion attendue dans l''analyse littéraire au CRPE.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000005','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Qu''est-ce qu''une anaphore en rhétorique (et non en grammaire) ?',null,
'[{"id":"a","label":"La répétition d''un mot ou groupe de mots en début de phrases ou de vers successifs, pour créer un effet rythmique et insistant"},{"id":"b","label":"Le remplacement d''un nom par un pronom dans un texte"},{"id":"c","label":"L''utilisation d''un mot à la fin d''une phrase pour le reprendre au début de la suivante"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'En rhétorique, l''anaphore est une figure de répétition : un même mot ou groupe est répété en tête de plusieurs unités syntaxiques successives (phrases, vers, propositions). Exemple célèbre : « Je suis venu, j''ai vu, j''ai vaincu » (Veni, vidi, vici). À ne pas confondre avec l''anaphore grammaticale (reprise par un pronom), qui relève de la cohérence textuelle.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000006','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','vrai_faux',
'Vrai ou faux : une métaphore est toujours introduite par « comme » ou « tel que ».',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La comparaison est introduite par un outil comparatif (comme, tel, semblable à…). La métaphore, en revanche, établit une équivalence entre deux termes sans outil de comparaison explicite. Ex : « sa voix est douce comme le miel » (comparaison) vs « sa voix de miel » ou « il est un lion au combat » (métaphore). La métaphore est donc plus condensée et souvent plus frappante.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000007','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Qu''est-ce que le « schéma narratif » d''un texte ?',null,
'[{"id":"a","label":"La liste chronologique de tous les événements du récit"},{"id":"b","label":"La structure en 5 étapes : situation initiale, élément perturbateur, péripéties, élément de résolution, situation finale"},{"id":"c","label":"Le plan de l''auteur pour organiser les chapitres de son roman"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le schéma narratif (ou schéma quinaire) est un modèle d''analyse du récit en 5 étapes : (1) situation initiale — état d''équilibre ; (2) élément perturbateur — événement qui rompt l''équilibre ; (3) péripéties — actions pour résoudre le problème ; (4) élément de résolution — ce qui met fin aux péripéties ; (5) situation finale — nouvel état d''équilibre. C''est un outil d''analyse narratologique fondamental, enseigné dès le cycle 3.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000008','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Quelle est la fonction du « narrateur » dans un récit ?',null,
'[{"id":"a","label":"Il est toujours l''auteur du texte — le narrateur et l''auteur sont la même personne"},{"id":"b","label":"Il est l''instance qui raconte l''histoire, distincte de l''auteur réel et du personnage"},{"id":"c","label":"Il est nécessairement un personnage de l''histoire qu''il raconte"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le narrateur est une construction textuelle, distincte de l''auteur réel. Il peut être intradiégétique (personnage de l''histoire, récit à la 1ère personne) ou extradiégétique (extérieur à l''histoire). L''auteur réel peut créer des narrateurs qui ne lui ressemblent pas, ou des narrateurs non fiables. Confondre narrateur et auteur est une erreur fréquente en analyse littéraire.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000009','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','vrai_faux',
'Vrai ou faux : la compréhension d''un texte littéraire nécessite uniquement de comprendre le sens des mots difficiles.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La compréhension d''un texte littéraire mobilise bien plus que le vocabulaire : la connaissance des conventions génériques (reconnaître un texte poétique, un dialogue théâtral…), la capacité à faire des inférences, la connaissance culturelle et historique du contexte, la sensibilité aux effets stylistiques, et la construction d''une interprétation cohérente. Le vocabulaire est une condition nécessaire mais non suffisante.',
'valide','CRPE Français V2 — Compréhension','free',true),

('26000000-0000-0000-0000-000000000010','Francais','comprehension_texte','cpt_texte_litteraire','Compréhension de texte littéraire','Intermediaire','qcm',
'Quelle est la différence entre « paraphrase » et « interprétation » dans l''analyse d''un texte ?',null,
'[{"id":"a","label":"La paraphrase reformule le texte avec d''autres mots sans y ajouter de sens ; l''interprétation donne du sens, explique le pourquoi et le comment"},{"id":"b","label":"La paraphrase est réservée à l''écrit, l''interprétation à l''oral"},{"id":"c","label":"La paraphrase est une erreur à éviter, l''interprétation est toujours correcte"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La paraphrase consiste à redire avec d''autres mots ce que le texte dit déjà, sans apporter de valeur analytique. L''interprétation, en revanche, consiste à expliquer ce que le texte fait, comment il le fait, et pourquoi — en mobilisant des notions d''analyse littéraire (registre, figure de style, point de vue…). Au CRPE, les candidats doivent démontrer leur capacité à interpréter, pas seulement à reformuler.',
'valide','CRPE Français V2 — Compréhension','free',true),

-- ================================================================
-- SÉRIE 02 — Lexique avancé : figures de style et registres — Intermédiaire — free
-- topic_key : lex_figures_registres
-- ================================================================
('27000000-0000-0000-0000-000000000001','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Identifiez la figure de style dans : « Le vent gémissait dans les branches. »',null,
'[{"id":"a","label":"Une métaphore"},{"id":"b","label":"Une personnification"},{"id":"c","label":"Une hyperbole"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Gémir" est un verbe humain attribué au vent (un phénomène naturel inanimé). C''est donc une personnification : on prête au vent une action ou une qualité propre aux humains. La personnification est une figure très fréquente dans les textes littéraires pour animer le décor et créer une atmosphère.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000002','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Identifiez la figure de style dans : « Cette valise pèse une tonne ! »',null,
'[{"id":"a","label":"Une comparaison"},{"id":"b","label":"Une litote"},{"id":"c","label":"Une hyperbole"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''hyperbole est une exagération volontaire destinée à produire un effet expressif. Dire qu''une valise « pèse une tonne » amplifie délibérément la réalité pour souligner à quel point elle est lourde. La comparaison nécessiterait un outil comparatif (« comme »). La litote est une atténuation (dire moins pour signifier plus, ex : « ce n''est pas mal » pour « c''est très bien »).',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000003','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Identifiez la figure de style dans : « Ce n''est pas sans mérite. » (pour signifier « c''est très bien »)',null,
'[{"id":"a","label":"Une hyperbole"},{"id":"b","label":"Une litote"},{"id":"c","label":"Une ironie"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La litote consiste à dire moins pour suggérer plus. Ici, « ce n''est pas sans mérite » dit le contraire de « c''est sans mérite », ce qui revient à affirmer que c''est méritoire — et l''atténuation de l''expression renforce en réalité l''effet laudatif. La litote est très fréquente dans la langue courante et dans les textes littéraires classiques.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000004','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','vrai_faux',
'Vrai ou faux : un euphémisme consiste à atténuer une réalité difficile à exprimer directement en utilisant un terme plus doux ou plus vague.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. L''euphémisme est une figure d''atténuation qui remplace un mot ou une expression trop brutal ou choquant par un terme moins direct. Ex : « il nous a quittés » (pour « il est mort »), « personne à mobilité réduite » (pour « personne handicapée »). L''euphémisme est fréquent dans les registres soutenu et diplomatique. Il ne doit pas être confondu avec la litote, qui joue sur la négation.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000005','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Qu''est-ce qu''une allitération ?',null,
'[{"id":"a","label":"La répétition d''une même voyelle dans une suite de mots proches"},{"id":"b","label":"La répétition d''une même consonne (ou groupe consonantique) dans une suite de mots proches"},{"id":"c","label":"La reprise d''un même mot en début de vers"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''allitération est une figure de sonorité : répétition de la même consonne (ou du même groupe consonantique) dans une suite de mots. Ex : « Pour qui sont ces serpents qui sifflent sur vos têtes ? » (répétition du son /s/). À distinguer de l''assonance, qui porte sur la répétition d''une voyelle. L''anaphore (réponse c) est une figure de répétition syntaxique, pas sonore.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000006','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Parmi ces exemples, lequel illustre une métonymie ?',null,
'[{"id":"a","label":"« Il boit un verre. » (le contenant pour le contenu)"},{"id":"b","label":"« Il court comme le vent. »"},{"id":"c","label":"« Le soleil se lève. »"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La métonymie consiste à désigner une réalité par un autre mot qui lui est lié par une relation de contiguïté (contenant/contenu, cause/effet, partie/tout…). « Boire un verre » = boire ce qu''il y a dans le verre : le contenant désigne le contenu. « Courir comme le vent » est une comparaison. « Le soleil se lève » est du sens propre (ou une personnification très atténuée selon l''interprétation).',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000007','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','vrai_faux',
'Vrai ou faux : l''oxymore est une figure qui rapproche deux termes de sens contraire pour créer un effet paradoxal.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. L''oxymore (ou oxymoron) rapproche deux termes en opposition sémantique dans une même expression, créant un paradoxe expressif. Exemples classiques : « cette obscure clarté » (Corneille), « un silence éloquent », « douce violence ». C''est une figure très utilisée en poésie et dans les titres. Elle se distingue de l''antithèse, qui oppose deux idées dans des propositions distinctes.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000008','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Quelle est la différence entre une antithèse et un oxymore ?',null,
'[{"id":"a","label":"L''antithèse oppose deux idées dans des unités syntaxiques distinctes (phrases, propositions) ; l''oxymore les fusionne dans un groupe de mots"},{"id":"b","label":"L''antithèse est une figure sonore, l''oxymore est une figure de sens"},{"id":"c","label":"Il n''y a pas de différence : les deux termes sont synonymes"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''antithèse oppose deux idées dans des structures syntaxiques distinctes (ex : « Je vis, je souffre, j''aime et je hais »). L''oxymore, lui, fusionne les deux termes contraires dans un même groupe nominal ou adjectival (ex : « une obscure clarté »). La différence est donc d''ordre syntaxique : distance vs fusion des contraires.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000009','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','qcm',
'Qu''est-ce qu''une périphrase ?',null,
'[{"id":"a","label":"Un mot de sens proche d''un autre mot (synonyme)"},{"id":"b","label":"Un groupe de mots utilisé à la place d''un seul mot pour désigner une réalité de façon plus évocatrice ou plus précise"},{"id":"c","label":"La répétition d''un mot à des fins stylistiques"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La périphrase consiste à remplacer un mot simple par une expression plus longue qui en donne une définition ou une évocation. Exemples : « le roi des animaux » (le lion), « la Ville lumière » (Paris), « l''astre du jour » (le soleil). Elle est très courante dans les textes littéraires classiques et dans les textes journalistiques. Elle permet d''éviter les répétitions ou de valoriser l''objet désigné.',
'valide','CRPE Français V2 — Lexique','free',true),

('27000000-0000-0000-0000-000000000010','Francais','lexique','lex_figures_registres','Lexique : figures de style','Intermediaire','vrai_faux',
'Vrai ou faux : l''ironie consiste à dire exactement le contraire de ce que l''on pense, dans l''intention d''être compris comme tel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. L''ironie est une figure qui consiste à dire le contraire de ce qu''on pense, en espérant que le contexte ou le ton permettra au récepteur de comprendre le sens réel. Ex : « Quelle belle journée ! » dit un jour de tempête. L''ironie se distingue du mensonge par l''intention d''être compris. Elle peut être légère ou mordante (sarcasme). C''est une figure centrale dans la satire et le registre comique.',
'valide','CRPE Français V2 — Lexique','free',true),

-- ================================================================
-- SÉRIE 03 — Analyse de la langue : syntaxe avancée — Difficile — premium
-- topic_key : al_syntaxe_avancee
-- ================================================================
('28000000-0000-0000-0000-000000000001','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle est la nature et la fonction de la proposition soulignée dans : « Je suis convaincu [que tu réussiras]. »',null,
'[{"id":"a","label":"Proposition subordonnée relative, complément du nom « convaincu »"},{"id":"b","label":"Proposition subordonnée complétive, complément d''objet direct du verbe « suis convaincu »"},{"id":"c","label":"Proposition subordonnée circonstancielle de conséquence"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Que tu réussiras » est introduit par la conjonction de subordination « que » (et non par un pronom relatif). Elle joue le rôle de COD du verbe « être convaincu » (on peut poser la question : convaincu de quoi ? → que tu réussiras). C''est donc une proposition subordonnée complétive conjonctive, à fonction COD. La relative serait introduite par un pronom relatif (qui, que, dont…) et qualifierait un nom.',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000002','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Identifiez la proposition subordonnée dans : « Bien qu''il soit fatigué, il continue à travailler. »',null,
'[{"id":"a","label":"Proposition subordonnée circonstancielle de cause"},{"id":"b","label":"Proposition subordonnée circonstancielle de concession"},{"id":"c","label":"Proposition subordonnée circonstancielle de condition"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Bien que » est une conjonction de subordination exprimant la concession (ou opposition) : le fait d''être fatigué ne s''oppose pas à la poursuite du travail — au contraire, cela rend l''action plus remarquable. La concession introduit un obstacle attendu qui ne produit pas l''effet escompté. Elle se distingue de la cause (parce que, puisque) et de la condition (si, au cas où).',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000003','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','vrai_faux',
'Vrai ou faux : dans « Le livre dont tu m''as parlé est épuisé », le pronom relatif « dont » a pour antécédent « livre ».',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. « Dont » est un pronom relatif dont l''antécédent est « le livre ». Il reprend ce nom dans la proposition subordonnée relative et y joue la fonction de complément du verbe « parler » (parler de quelque chose : « tu m''as parlé de lui »). « Dont » intègre la préposition « de » : il est l''équivalent de « de lequel / de laquelle / desquels / desquelles ».',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000004','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle est la fonction de la proposition soulignée dans : « Il faut [que vous vous prépariez]. »',null,
'[{"id":"a","label":"Sujet du verbe « faut »"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Complément d''objet direct du verbe « faut »"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Dans les tournures impersonnelles comme « il faut que… », « il est nécessaire que… », « il suffit que… », la proposition en « que » joue le rôle de sujet réel du verbe impersonnel. Le « il » est un sujet grammatical vide (sujet apparent) ; la proposition subordonnée est le vrai sujet logique. On peut reformuler : « Votre préparation est nécessaire » → « que vous vous prépariez » est sujet de « faut ».',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000005','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle manipulation syntaxique permet de distinguer une proposition subordonnée relative déterminative d''une relative explicative ?',null,
'[{"id":"a","label":"La suppression : si la relative peut être supprimée sans changer le sens fondamental de la phrase, c''est une explicative (ou appositive) ; si elle est indispensable, c''est une déterminative"},{"id":"b","label":"La pronominalisation : remplacer la relative par un pronom permet d''identifier sa nature"},{"id":"c","label":"Le déplacement : une relative déterminative peut se déplacer, une explicative ne peut pas"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La relative déterminative est essentielle au sens : elle restreint le référent du nom (ex : « Les élèves qui ont révisé ont réussi » — ce sont ces élèves particuliers). La relative explicative (ou appositive) est accessoire : elle ajoute une information mais n''est pas indispensable à l''identification du référent (ex : « Les élèves, qui étaient nombreux, ont réussi »). La suppression est le test le plus efficace pour les distinguer.',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000006','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','vrai_faux',
'Vrai ou faux : dans « Si tu travaillais, tu réussirais », la proposition subordonnée exprime une condition irréelle dans le présent.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. La structure « si + imparfait de l''indicatif → conditionnel présent » exprime une hypothèse irréelle ou peu probable dans le présent : la condition posée (travailler) est présentée comme contraire à la réalité actuelle. Si la condition était réelle ou possible, on utiliserait : « si tu travailles, tu réussiras » (futur dans la principale, présent dans la subordonnée).',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000007','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Dans « Il pense à ce que tu lui as dit », quelle est la nature de « ce que tu lui as dit » ?',null,
'[{"id":"a","label":"Proposition subordonnée relative à antécédent indéfini (ou proposition relative substantive), COI de « pense »"},{"id":"b","label":"Proposition subordonnée complétive, COD de « pense »"},{"id":"c","label":"Proposition subordonnée circonstancielle de manière"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Ce que tu lui as dit » est une proposition relative sans antécédent nominal explicite : « ce » est un pronom démonstratif neutre qui sert d''antécédent intégré. L''ensemble « ce que… » joue ici la fonction de COI du verbe « penser » (penser à quoi ? → à ce que tu lui as dit). On l''appelle proposition relative substantive ou subordonnée relative à antécédent pronom neutre.',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000008','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle est la valeur aspectuelle de l''imparfait dans : « Chaque soir, elle lisait un chapitre. » ?',null,
'[{"id":"a","label":"Imparfait duratif : action longue et continue dans le passé"},{"id":"b","label":"Imparfait itératif (ou fréquentatif) : action répétée ou habituelle dans le passé"},{"id":"c","label":"Imparfait narratif : action soudaine dans le récit"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''indicateur temporel « chaque soir » signale la répétition : l''action de lire se produisait régulièrement dans le passé. C''est l''imparfait itératif (ou fréquentatif). L''imparfait duratif présente une action comme se déroulant dans la durée sans indication de répétition (ex : « elle lisait tranquillement »). L''imparfait narratif (ou de rupture) présente une action soudaine dans un récit au passé simple.',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000009','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','vrai_faux',
'Vrai ou faux : dans « Il est possible que tu aies raison », le verbe de la subordonnée est au subjonctif passé.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. « Aies raison » est bien le subjonctif présent de « avoir raison » — ce qui peut prêter à confusion. Mais si la phrase était « il est possible que tu aies eu raison », le subjonctif passé apparaîtrait : « aies eu ». Ici « aies raison » = subjonctif présent (auxiliaire avoir au subjonctif présent + pas de participe passé). La construction « être possible que + subjonctif » exprime la possibilité ou l''incertitude.',
'valide','CRPE Français V2 — Analyse','premium',true),

('28000000-0000-0000-0000-000000000010','Francais','analyse_langue','al_syntaxe_avancee','Syntaxe avancée : subordonnées','Difficile','qcm',
'Quelle est la différence entre un complément d''objet direct (COD) et un complément d''objet indirect (COI) ?',null,
'[{"id":"a","label":"Le COD répond à la question « qui ? » ou « quoi ? » après le verbe, sans préposition ; le COI répond à « à qui ? », « de quoi ? » etc., avec une préposition"},{"id":"b","label":"Le COD suit toujours le verbe, le COI peut se placer avant"},{"id":"c","label":"Le COD est toujours un nom, le COI est toujours un pronom"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le COD complète le verbe sans préposition (ex : « Je lis un livre ») et répond à « qui ? » ou « quoi ? » directement après le verbe. Le COI complète le verbe à travers une préposition (à, de, en, pour…) et répond à des questions comme « à qui ? », « à quoi ? », « de qui ? », « de quoi ? » (ex : « Je pense à mes amis »). Cette distinction est fondamentale pour les règles d''accord du participe passé.',
'valide','CRPE Français V2 — Analyse','premium',true),

-- ================================================================
-- SÉRIE 04 — Lexique : morphologie et formation des mots — Facile — free
-- topic_key : lex_morphologie_mots
-- ================================================================
('29000000-0000-0000-0000-000000000001','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Quel est le préfixe dans le mot « invraisemblable » et quel sens apporte-t-il ?',null,
'[{"id":"a","label":"« in- » : marque la négation ou le contraire (ici : qui n''est pas vraisemblable)"},{"id":"b","label":"« in- » : marque la répétition de l''action"},{"id":"c","label":"« invrais- » : racine du mot indiquant un jugement négatif"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le préfixe « in- » (ou « im- » devant b, m, p) est un préfixe négatif latin qui signifie « non, contraire de ». « Invraisemblable » = qui n''est pas vraisemblable. Autres exemples : impossible, incorrect, indécis, inhabituel. Ce préfixe ne marque pas la répétition (c''est le rôle de « re- ») ni n''est une racine.',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000002','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Que signifie le suffixe « -tion » dans des mots comme « construction », « révision », « formation » ?',null,
'[{"id":"a","label":"Il marque l''agent, celui qui fait l''action"},{"id":"b","label":"Il marque l''action ou son résultat, transformant un verbe en nom abstrait"},{"id":"c","label":"Il marque la qualité ou l''état"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le suffixe « -tion » (et ses variantes -sion, -ation, -ition) transforme un verbe ou une base verbale en nom abstrait désignant l''action ou son résultat. Construire → construction, réviser → révision, former → formation. C''est un suffixe extrêmement productif en français. L''agent est marqué par « -eur/-teur/-eur » (constructeur). La qualité est marquée par « -ité » (qualité), « -eur » (longueur), « -itude » (exactitude).',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000003','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','vrai_faux',
'Vrai ou faux : les mots « port », « portail », « transport », « rapport », « portable » appartiennent à la même famille morphologique car ils partagent la même racine.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Ces mots partagent la racine latine « port- » (du verbe portare : porter). « Transport » = trans (à travers) + port ; « rapport » = re + a + port ; « portable » = port + -able. Identifier les familles morphologiques aide les élèves à mémoriser l''orthographe des mots et à déduire le sens de mots inconnus. C''est un outil puissant d''enrichissement lexical.',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000004','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Quel est le sens du préfixe « pré- » dans « prévisible », « prévenir », « préparer » ?',null,
'[{"id":"a","label":"Après, à la suite de"},{"id":"b","label":"Contre, en opposition à"},{"id":"c","label":"Avant, en avance sur"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le préfixe « pré- » (du latin praе : avant) signifie « avant, en avance sur ». « Prévisible » = qui peut être vu avant ; « prévenir » = venir avant ; « préparer » = parer (équiper) avant. D''autres mots : préhistoire (avant l''histoire écrite), précaution (précaution = prendre soin avant), préméditer. À ne pas confondre avec « post- » (après) ou « anti- » (contre).',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000005','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Comment s''appelle un mot formé par la réunion de deux mots autonomes (ex : « portefeuille », « tire-bouchon ») ?',null,
'[{"id":"a","label":"Un mot dérivé"},{"id":"b","label":"Un mot composé"},{"id":"c","label":"Un mot tronqué"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Un mot composé est formé par l''association de plusieurs mots autonomes (ou de leurs bases), parfois soudés (portefeuille, bonhomme), parfois reliés par un trait d''union (tire-bouchon, arc-en-ciel), parfois écrits séparément (chemin de fer, pomme de terre). À distinguer du mot dérivé (un seul morphème lexical + affixes, ex : jardinage) et du mot tronqué (raccourcissement : vélo pour vélocipède).',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000006','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','vrai_faux',
'Vrai ou faux : le mot « cinéma » est un exemple de troncation (raccourcissement d''un mot plus long).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. « Cinéma » est la troncation de « cinématographe ». D''autres exemples courants : « vélo » (vélocipède), « auto » (automobile), « stylo » (stylographe), « bus » (omnibus), « prof » (professeur), « info » (information). La troncation est un procédé de création lexicale très courant dans les usages familiers et qui finit souvent par s''imposer comme forme standard.',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000007','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Que désigne un « néologisme » ?',null,
'[{"id":"a","label":"Un mot ancien tombé en désuétude"},{"id":"b","label":"Un mot nouveau créé pour désigner une réalité nouvelle ou pour enrichir la langue"},{"id":"c","label":"Un mot emprunté à une langue étrangère sans modification"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Un néologisme est un mot nouveau introduit dans la langue pour nommer une réalité nouvelle, une invention ou un concept inédit. Ex : « clavardage » (chat en ligne, utilisé en français québécois), « courriel » (email), « selfie », « télétravail ». Les néologismes peuvent être des dérivés, des composés, des emprunts ou des créations ex nihilo. Ils témoignent de la vitalité et de l''évolution d''une langue.',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000008','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Quelle est la différence entre un emprunt et un calque ?',null,
'[{"id":"a","label":"L''emprunt prend le mot étranger tel quel (ou légèrement adapté) ; le calque traduit le mot étranger mot à mot dans la langue d''arrivée"},{"id":"b","label":"L''emprunt vient du latin, le calque vient de l''anglais"},{"id":"c","label":"L''emprunt est toujours intégré dans le dictionnaire, le calque ne l''est jamais"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Un emprunt adopte un mot étranger : « week-end » (anglais), « pizza » (italien), « yaourt » (turc). Un calque traduit le mot étranger composante par composante : « gratte-ciel » (skyscraper), « baladeur » (walkman), « logiciel » (software). Le calque permet de franciser une réalité étrangère en utilisant des mots français existants, contrairement à l''emprunt direct.',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000009','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','vrai_faux',
'Vrai ou faux : enseigner la morphologie des mots (préfixes, suffixes, racines) aide les élèves à comprendre et retenir l''orthographe lexicale.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. La connaissance des morphèmes permet de mémoriser l''orthographe de façon motivée (non arbitraire). Si l''élève sait que « ann- » vient du latin annus (année), il écrira correctement « annuel », « anniversaire », « annales ». La morphologie est un levier puissant pour l''orthographe lexicale, car elle relie la graphie au sens et à l''étymologie, rendant la mémorisation plus profonde et plus durable.',
'valide','CRPE Français V2 — Lexique','free',true),

('29000000-0000-0000-0000-000000000010','Francais','lexique','lex_morphologie_mots','Morphologie : formation des mots','Facile','qcm',
'Parmi ces mots, lequel est formé par dérivation impropre (changement de classe grammaticale sans ajout de suffixe) ?',null,
'[{"id":"a","label":"« jardinage » (jardin + -age)"},{"id":"b","label":"« le manger » (utilisation du verbe comme nom)"},{"id":"c","label":"« porte-monnaie » (porter + monnaie)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La dérivation impropre (ou conversion) consiste à changer la classe grammaticale d''un mot sans modifier sa forme et sans ajouter d''affixe. « Le manger », « le savoir », « le devoir » transforment un verbe en nom. De même, « le bien », « le mal » transforment des adverbes en noms. « Jardinage » est une dérivation propre (avec suffixe). « Porte-monnaie » est une composition.',
'valide','CRPE Français V2 — Lexique','free',true);
