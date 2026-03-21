-- ============================================================
-- Sprint extended: 4 × 10 quick QCM questions
-- Lexique, Compréhension, Analyse, Didactique
-- Designed for rapid-fire Sprint mode (×2 XP)
-- ============================================================

-- ── Sprint Lexique — Formation des mots ─────────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('b1040000-0000-0000-0000-000000000001', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Facile', 'qcm',
 'Quel est le préfixe dans le mot « impossible » ?',
 '[{"id":"a","label":"im-"},{"id":"b","label":"in-"},{"id":"c","label":"pos-"},{"id":"d","label":"-ible"}]'::jsonb,
 '{"mode":"single_choice","value":"a"}'::jsonb,
 'Le préfixe « im- » est une variante de « in- » devant les lettres p et b. Il exprime la négation : impossible = qui n''est pas possible.', 'valide', 'free', true),

('b1040000-0000-0000-0000-000000000002', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Facile', 'qcm',
 'Quel mot appartient à la même famille que « terre » ?',
 '[{"id":"a","label":"Terrible"},{"id":"b","label":"Terrasse"},{"id":"c","label":"Atterrir"},{"id":"d","label":"Terreur"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Atterrir » est formé sur le radical « terr- » (la terre) avec le préfixe « a- » (vers). « Terrible » et « terreur » viennent du latin terrere (effrayer), une autre racine.', 'valide', 'free', true),

('b1040000-0000-0000-0000-000000000003', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Facile', 'qcm',
 'Dans le mot « chanteur », quel est le suffixe ?',
 '[{"id":"a","label":"chan-"},{"id":"b","label":"-ant"},{"id":"c","label":"-eur"},{"id":"d","label":"-teur"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Le suffixe « -eur » s''ajoute au radical « chant- » pour former un nom désignant celui qui fait l''action. On le retrouve dans danseur, nageur, joueur.', 'valide', 'free', true),

('b1040000-0000-0000-0000-000000000004', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Intermediaire', 'qcm',
 'Le mot « parapluie » est formé par :',
 '[{"id":"a","label":"Dérivation par préfixe"},{"id":"b","label":"Dérivation par suffixe"},{"id":"c","label":"Composition savante"},{"id":"d","label":"Composition populaire"}]'::jsonb,
 '{"mode":"single_choice","value":"d"}'::jsonb,
 '« Parapluie » est un mot composé populaire formé de deux éléments français : « para- » (qui protège de, du verbe parer) + « pluie ». La composition savante utilise des éléments grecs ou latins.', 'valide', 'free', true),

('b1040000-0000-0000-0000-000000000005', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Intermediaire', 'qcm',
 'Quel mot est formé par composition savante ?',
 '[{"id":"a","label":"Portefeuille"},{"id":"b","label":"Bibliothèque"},{"id":"c","label":"Timbre-poste"},{"id":"d","label":"Arc-en-ciel"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Bibliothèque » est composé de deux racines grecques : biblio- (livre) et -thêkê (armoire, dépôt). Les autres mots sont des compositions populaires (éléments français).', 'valide', 'free', true),

('b1040000-0000-0000-0000-000000000006', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Intermediaire', 'qcm',
 'Dans le mot « refaire », quel est le sens du préfixe « re- » ?',
 '[{"id":"a","label":"La négation"},{"id":"b","label":"La répétition"},{"id":"c","label":"L''intensité"},{"id":"d","label":"L''antériorité"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le préfixe « re- » (ou « ré- ») exprime la répétition : refaire = faire à nouveau. On le retrouve dans relire, recommencer, redire.', 'valide', 'free', true),

('b1040000-0000-0000-0000-000000000007', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Intermediaire', 'qcm',
 'Quel procédé de formation a produit le mot « vélo » ?',
 '[{"id":"a","label":"Dérivation"},{"id":"b","label":"Composition"},{"id":"c","label":"Troncation (abrègement)"},{"id":"d","label":"Emprunt"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Vélo » est une troncation (abrègement) de « vélocipède ». La troncation consiste à supprimer une ou plusieurs syllabes d''un mot. Autres exemples : métro (métropolitain), auto (automobile).', 'valide', 'free', true),

('b1040000-0000-0000-0000-000000000008', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Avance', 'qcm',
 'Le mot « anticonstitutionnellement » contient :',
 '[{"id":"a","label":"Un préfixe et un suffixe"},{"id":"b","label":"Deux préfixes et deux suffixes"},{"id":"c","label":"Un préfixe et deux suffixes"},{"id":"d","label":"Deux préfixes et un suffixe"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Anti-constitutionn-elle-ment : le préfixe « anti- » (contre), la base « constitution », le suffixe adjectival « -el(le) » et le suffixe adverbial « -ment ». On peut aussi identifier « con- » comme préfixe dans constitution, d''où deux préfixes et deux suffixes.', 'valide', 'free', true),

('b1040000-0000-0000-0000-000000000009', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Avance', 'qcm',
 'Quel mot contient un élément d''origine grecque signifiant « écriture » ?',
 '[{"id":"a","label":"Téléphone"},{"id":"b","label":"Orthographe"},{"id":"c","label":"Microscope"},{"id":"d","label":"Philosophie"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Orthographe » contient le suffixe grec « -graphe » (graphein = écrire). Ortho- signifie « droit, correct ». L''orthographe est donc littéralement « l''écriture correcte ».', 'valide', 'free', true),

('b1040000-0000-0000-0000-00000000000a', 'Francais', 'lexique', 'sprint_lexique_formation', 'Sprint — Formation des mots', 'Avance', 'qcm',
 'Parmi ces mots, lequel est formé par dérivation parasynthétique ?',
 '[{"id":"a","label":"Chanteur"},{"id":"b","label":"Embarquer"},{"id":"c","label":"Parapluie"},{"id":"d","label":"Refaire"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'La dérivation parasynthétique consiste à ajouter simultanément un préfixe et un suffixe à un radical : em-barqu-er (on ne dit ni *embarque comme nom, ni *barquer). « Chanteur » n''a qu''un suffixe, « refaire » qu''un préfixe.', 'valide', 'free', true);


-- ── Sprint Compréhension — Inférences et implicite ──────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('b1050000-0000-0000-0000-000000000001', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Facile', 'qcm',
 'Un texte dit : « Sophie prit son cartable et courut vers l''arrêt. » Que peut-on inférer ?',
 '[{"id":"a","label":"Sophie va à la piscine"},{"id":"b","label":"Sophie est en retard pour l''école"},{"id":"c","label":"Sophie fait une course à pied"},{"id":"d","label":"Sophie range sa chambre"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le cartable indique un contexte scolaire, et le fait de courir vers un arrêt (de bus) suggère qu''elle est pressée. L''inférence logique est qu''elle risque d''être en retard pour l''école.', 'valide', 'free', true),

('b1050000-0000-0000-0000-000000000002', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Facile', 'qcm',
 'Qu''est-ce qu''une inférence en compréhension de texte ?',
 '[{"id":"a","label":"Une information explicitement écrite dans le texte"},{"id":"b","label":"Une déduction que le lecteur fait à partir d''indices du texte"},{"id":"c","label":"Le résumé du texte"},{"id":"d","label":"Le titre du texte"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Une inférence est une information que le lecteur déduit en combinant les indices du texte avec ses connaissances personnelles. Elle n''est pas écrite directement dans le texte mais peut en être déduite logiquement.', 'valide', 'free', true),

('b1050000-0000-0000-0000-000000000003', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Facile', 'qcm',
 '« Il enfila ses gants, ajusta son masque et saisit son fleuret. » Quel sport pratique le personnage ?',
 '[{"id":"a","label":"La boxe"},{"id":"b","label":"L''escrime"},{"id":"c","label":"Le ski"},{"id":"d","label":"Le hockey"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le fleuret est une arme d''escrime. Associé au masque et aux gants, ces indices convergent vers la pratique de l''escrime. C''est une inférence pragmatique basée sur les connaissances du monde.', 'valide', 'free', true),

('b1050000-0000-0000-0000-000000000004', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Intermediaire', 'qcm',
 'Quel type d''inférence est sollicité quand le lecteur identifie la cause non exprimée d''un événement ?',
 '[{"id":"a","label":"Inférence de lieu"},{"id":"b","label":"Inférence causale"},{"id":"c","label":"Inférence lexicale"},{"id":"d","label":"Inférence temporelle"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''inférence causale consiste à identifier la relation cause-conséquence entre des événements, même si cette relation n''est pas explicitement formulée dans le texte. C''est l''un des types d''inférence les plus travaillés à l''école.', 'valide', 'free', true),

('b1050000-0000-0000-0000-000000000005', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Intermediaire', 'qcm',
 '« Les feuilles virevoltaient, le ciel était gris et les écharpes avaient fait leur retour. » Quelle saison est implicitement décrite ?',
 '[{"id":"a","label":"Le printemps"},{"id":"b","label":"L''été"},{"id":"c","label":"L''automne"},{"id":"d","label":"L''hiver"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Les feuilles qui virevoltent (tombent des arbres), le ciel gris et le retour des écharpes sont des indices convergents de l''automne. Le lecteur mobilise ses connaissances du monde pour faire cette inférence.', 'valide', 'free', true),

('b1050000-0000-0000-0000-000000000006', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Intermediaire', 'qcm',
 'Dans un récit, l''auteur écrit « Tout le monde applaudit sauf Martin, qui serra les poings. » Quelle émotion ressent Martin ?',
 '[{"id":"a","label":"La joie"},{"id":"b","label":"La surprise"},{"id":"c","label":"La colère ou la frustration"},{"id":"d","label":"La peur"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Serrer les poings est un signe corporel de colère ou de frustration. L''opposition avec les applaudissements des autres renforce cette interprétation : Martin n''est pas content du résultat.', 'valide', 'free', true),

('b1050000-0000-0000-0000-000000000007', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Intermediaire', 'qcm',
 'Un texte argumentatif qui commence par « Certes… mais… » utilise quelle stratégie ?',
 '[{"id":"a","label":"L''énumération"},{"id":"b","label":"La concession"},{"id":"c","label":"L''analogie"},{"id":"d","label":"La définition"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'La structure « Certes… mais… » est typique de la concession : l''auteur reconnaît d''abord un argument adverse (certes) avant de le réfuter ou de le nuancer (mais). C''est une stratégie argumentative courante.', 'valide', 'free', true),

('b1050000-0000-0000-0000-000000000008', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Avance', 'qcm',
 'Un texte présente des données chiffrées, des connecteurs logiques et une thèse clairement énoncée. Quel type de texte est-ce ?',
 '[{"id":"a","label":"Narratif"},{"id":"b","label":"Descriptif"},{"id":"c","label":"Argumentatif"},{"id":"d","label":"Injonctif"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'La présence d''une thèse, de connecteurs logiques (donc, car, en effet) et de données chiffrées comme preuves sont des marques du texte argumentatif. Son but est de convaincre ou persuader le lecteur.', 'valide', 'free', true),

('b1050000-0000-0000-0000-000000000009', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Avance', 'qcm',
 'Quand un auteur écrit « Quel beau temps ! » alors qu''il pleut à verse, quelle figure de style utilise-t-il ?',
 '[{"id":"a","label":"La métaphore"},{"id":"b","label":"L''ironie (antiphrase)"},{"id":"c","label":"L''hyperbole"},{"id":"d","label":"La comparaison"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''ironie par antiphrase consiste à dire le contraire de ce que l''on pense. Ici, « beau temps » est utilisé alors qu''il pleut : le lecteur doit inférer l''intention ironique de l''auteur grâce au contexte.', 'valide', 'free', true),

('b1050000-0000-0000-0000-00000000000a', 'Francais', 'comprehension_texte', 'sprint_comprehension_inferences', 'Sprint — Inférences et implicite', 'Avance', 'qcm',
 'Dans l''enseignement de la compréhension, que désigne le « modèle de situation » ?',
 '[{"id":"a","label":"La représentation mentale globale que le lecteur construit du texte"},{"id":"b","label":"Le schéma narratif du récit"},{"id":"c","label":"La maquette de la classe utilisée en pédagogie"},{"id":"d","label":"Le plan de séquence de l''enseignant"}]'::jsonb,
 '{"mode":"single_choice","value":"a"}'::jsonb,
 'Le modèle de situation (Kintsch & van Dijk) est la représentation mentale cohérente que le lecteur construit en intégrant les informations du texte à ses connaissances antérieures. C''est le niveau le plus élaboré de compréhension.', 'valide', 'free', true);


-- ── Sprint Analyse — Fonctions grammaticales ────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('b1060000-0000-0000-0000-000000000001', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Facile', 'qcm',
 'Dans « Le chat mange la souris », quelle est la fonction de « la souris » ?',
 '[{"id":"a","label":"Sujet"},{"id":"b","label":"COD"},{"id":"c","label":"COI"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« La souris » est COD (complément d''objet direct) du verbe « mange ». On le trouve en posant la question : Le chat mange quoi ? → la souris. Il est construit directement, sans préposition.', 'valide', 'free', true),

('b1060000-0000-0000-0000-000000000002', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Facile', 'qcm',
 'Dans « Elle parle à son frère », quelle est la fonction de « à son frère » ?',
 '[{"id":"a","label":"COD"},{"id":"b","label":"COI"},{"id":"c","label":"Complément circonstanciel"},{"id":"d","label":"Complément du nom"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« À son frère » est COI (complément d''objet indirect) du verbe « parle ». Il est introduit par la préposition « à ». On pose la question : Elle parle à qui ? → à son frère.', 'valide', 'free', true),

('b1060000-0000-0000-0000-000000000003', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Facile', 'qcm',
 'Dans « Ce gâteau est délicieux », quelle est la fonction de « délicieux » ?',
 '[{"id":"a","label":"Épithète"},{"id":"b","label":"COD"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"Apposition"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Délicieux » est attribut du sujet « ce gâteau », relié par le verbe d''état « est ». L''attribut du sujet exprime une qualité du sujet via un verbe d''état (être, sembler, devenir, paraître…).', 'valide', 'free', true),

('b1060000-0000-0000-0000-000000000004', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Intermediaire', 'qcm',
 'Dans « Le livre de Pierre est sur la table », quelle est la fonction de « de Pierre » ?',
 '[{"id":"a","label":"COI"},{"id":"b","label":"Complément du nom"},{"id":"c","label":"Complément circonstanciel"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« De Pierre » est complément du nom « livre ». Il précise à qui appartient le livre. Le complément du nom est introduit par une préposition (de, à, en, pour…) et complète un nom, pas un verbe.', 'valide', 'free', true),

('b1060000-0000-0000-0000-000000000005', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Intermediaire', 'qcm',
 'Dans « Fatigué, le randonneur s''assit », quelle est la fonction de « fatigué » ?',
 '[{"id":"a","label":"Attribut du sujet"},{"id":"b","label":"Épithète liée"},{"id":"c","label":"Apposition (épithète détachée)"},{"id":"d","label":"COD"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Fatigué » est en apposition (ou épithète détachée) au nom « randonneur ». Il est séparé du nom par une virgule et exprime une caractéristique du sujet sans passer par un verbe d''état.', 'valide', 'free', true),

('b1060000-0000-0000-0000-000000000006', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Intermediaire', 'qcm',
 'Dans « Il reviendra lundi prochain », quelle est la fonction de « lundi prochain » ?',
 '[{"id":"a","label":"COD"},{"id":"b","label":"COI"},{"id":"c","label":"Complément circonstanciel de temps"},{"id":"d","label":"Sujet"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Lundi prochain » est complément circonstanciel de temps (CCT). Il répond à la question « quand ? » et peut être déplacé ou supprimé : Lundi prochain, il reviendra. / Il reviendra.', 'valide', 'free', true),

('b1060000-0000-0000-0000-000000000007', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Intermediaire', 'qcm',
 'Quelle est la différence entre un COD et un attribut du sujet ?',
 '[{"id":"a","label":"Le COD se trouve après un verbe d''état"},{"id":"b","label":"L''attribut complète le sujet via un verbe d''état, le COD complète un verbe d''action"},{"id":"c","label":"Il n''y a aucune différence"},{"id":"d","label":"L''attribut est toujours un adjectif, le COD toujours un nom"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''attribut du sujet est relié au sujet par un verbe d''état (être, sembler, devenir…) et le caractérise. Le COD complète un verbe d''action transitif direct. On ne peut pas avoir un COD après un verbe d''état.', 'valide', 'free', true),

('b1060000-0000-0000-0000-000000000008', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Avance', 'qcm',
 'Dans « Je le considère comme un ami », quelle est la fonction de « comme un ami » ?',
 '[{"id":"a","label":"Complément circonstanciel de comparaison"},{"id":"b","label":"Attribut du COD"},{"id":"c","label":"COI"},{"id":"d","label":"Apposition"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Comme un ami » est attribut du COD « le ». L''attribut du COD caractérise le COD par l''intermédiaire du verbe. On le trouve avec des verbes comme considérer, juger, trouver, rendre, nommer.', 'valide', 'free', true),

('b1060000-0000-0000-0000-000000000009', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Avance', 'qcm',
 'Dans « La ville où je suis né est magnifique », quelle est la fonction de « où » ?',
 '[{"id":"a","label":"Sujet"},{"id":"b","label":"COD"},{"id":"c","label":"Complément circonstanciel de lieu"},{"id":"d","label":"Complément du nom"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 '« Où » est un pronom relatif qui a pour fonction complément circonstanciel de lieu du verbe « suis né » dans la proposition subordonnée relative. Son antécédent est « la ville ».', 'valide', 'free', true),

('b1060000-0000-0000-0000-00000000000a', 'Francais', 'analyse_langue', 'sprint_analyse_fonctions', 'Sprint — Fonctions grammaticales', 'Avance', 'qcm',
 'Dans « Pierre, le boulanger du village, prépare le pain », quelle est la fonction de « le boulanger du village » ?',
 '[{"id":"a","label":"COD"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Complément du nom"},{"id":"d","label":"Apposition"}]'::jsonb,
 '{"mode":"single_choice","value":"d"}'::jsonb,
 '« Le boulanger du village » est en apposition au nom « Pierre ». L''apposition est un groupe nominal qui donne une information supplémentaire sur un nom, dont il est séparé par des virgules. Elle peut être supprimée sans changer le sens principal.', 'valide', 'free', true);


-- ── Sprint Didactique — Cycles et programmes ────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('b1070000-0000-0000-0000-000000000001', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Facile', 'qcm',
 'Le cycle 2 correspond à quelles classes ?',
 '[{"id":"a","label":"Petite, Moyenne et Grande Section"},{"id":"b","label":"CP, CE1, CE2"},{"id":"c","label":"CM1, CM2, 6e"},{"id":"d","label":"5e, 4e, 3e"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le cycle 2 est le cycle des apprentissages fondamentaux : CP, CE1, CE2. Le cycle 1 correspond à la maternelle (PS, MS, GS) et le cycle 3 au cycle de consolidation (CM1, CM2, 6e).', 'valide', 'free', true),

('b1070000-0000-0000-0000-000000000002', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Facile', 'qcm',
 'Quel est l''objectif principal du cycle 2 en lecture ?',
 '[{"id":"a","label":"Découvrir le principe alphabétique"},{"id":"b","label":"Apprendre à décoder et automatiser la lecture"},{"id":"c","label":"Analyser des textes littéraires complexes"},{"id":"d","label":"Rédiger des dissertations"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''objectif central du cycle 2 en lecture est l''apprentissage du décodage et son automatisation pour parvenir à une lecture fluide. La découverte du principe alphabétique relève du cycle 1.', 'valide', 'free', true),

('b1070000-0000-0000-0000-000000000003', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Facile', 'qcm',
 'En cycle 1, quel domaine d''apprentissage concerne le langage ?',
 '[{"id":"a","label":"Explorer le monde"},{"id":"b","label":"Mobiliser le langage dans toutes ses dimensions"},{"id":"c","label":"Agir, s''exprimer, comprendre à travers l''activité physique"},{"id":"d","label":"Construire les premiers outils pour structurer sa pensée"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 '« Mobiliser le langage dans toutes ses dimensions » est le premier domaine d''apprentissage du cycle 1. Il comprend le langage oral (communication, vocabulaire) et l''entrée dans l''écrit (découverte du principe alphabétique).', 'valide', 'free', true),

('b1070000-0000-0000-0000-000000000004', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Intermediaire', 'qcm',
 'Selon les programmes, la « conscience phonologique » doit être travaillée principalement à quel cycle ?',
 '[{"id":"a","label":"Cycle 1"},{"id":"b","label":"Cycle 2"},{"id":"c","label":"Cycle 3"},{"id":"d","label":"Cycle 4"}]'::jsonb,
 '{"mode":"single_choice","value":"a"}'::jsonb,
 'La conscience phonologique (capacité à identifier et manipuler les sons de la langue) est travaillée au cycle 1, en GS notamment. Elle prépare l''entrée dans la lecture au CP. Au cycle 2, elle se prolonge mais l''accent est mis sur le décodage.', 'valide', 'free', true),

('b1070000-0000-0000-0000-000000000005', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Intermediaire', 'qcm',
 'L''étude de la langue (grammaire, orthographe) est systématisée à partir de quel cycle ?',
 '[{"id":"a","label":"Cycle 1"},{"id":"b","label":"Cycle 2"},{"id":"c","label":"Cycle 3"},{"id":"d","label":"Elle n''est pas au programme du primaire"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''étude de la langue commence de manière structurée au cycle 2 (observation, manipulations syntaxiques). Au cycle 3, elle se systématise avec une terminologie grammaticale plus précise et des analyses plus approfondies.', 'valide', 'free', true),

('b1070000-0000-0000-0000-000000000006', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Intermediaire', 'qcm',
 'Qu''est-ce que la « fluence » en lecture ?',
 '[{"id":"a","label":"La capacité à lire à voix haute avec rapidité, précision et expressivité"},{"id":"b","label":"La capacité à écrire sans faute d''orthographe"},{"id":"c","label":"La compréhension fine d''un texte littéraire"},{"id":"d","label":"La connaissance du vocabulaire spécialisé"}]'::jsonb,
 '{"mode":"single_choice","value":"a"}'::jsonb,
 'La fluence est la capacité à lire un texte à voix haute avec aisance : vitesse adaptée, exactitude du décodage et prosodie (expressivité). Elle est un indicateur clé de l''automatisation de la lecture, évaluée en nombre de mots correctement lus par minute (MCLM).', 'valide', 'free', true),

('b1070000-0000-0000-0000-000000000007', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Intermediaire', 'qcm',
 'Les évaluations nationales de français ont lieu à quels niveaux ?',
 '[{"id":"a","label":"GS et CE2 uniquement"},{"id":"b","label":"CP, CE1, CM1 et 6e"},{"id":"c","label":"CE2 et CM2 uniquement"},{"id":"d","label":"Tous les niveaux du CP au CM2"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Les évaluations nationales de français se déroulent en début de CP, CE1, CM1 et 6e. Elles permettent d''identifier les acquis et les besoins des élèves pour adapter l''enseignement et mettre en place des dispositifs de soutien.', 'valide', 'free', true),

('b1070000-0000-0000-0000-000000000008', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Avance', 'qcm',
 'Selon le guide « Pour enseigner la lecture et l''écriture au CP », quelle approche est recommandée pour l''enseignement du code ?',
 '[{"id":"a","label":"Une approche globale (méthode idéovisuelle)"},{"id":"b","label":"Une approche syllabique systématique et explicite"},{"id":"c","label":"Une approche uniquement basée sur la littérature de jeunesse"},{"id":"d","label":"Aucune méthode n''est préconisée"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le guide « Orange » recommande un enseignement systématique et explicite des correspondances graphèmes-phonèmes (approche syllabique). Il insiste sur la régularité et la progressivité de l''étude du code, combinée à l''écriture.', 'valide', 'free', true),

('b1070000-0000-0000-0000-000000000009', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Avance', 'qcm',
 'En cycle 3, le domaine « Langage oral » vise notamment :',
 '[{"id":"a","label":"La découverte du principe alphabétique"},{"id":"b","label":"L''apprentissage des comptines et chansons"},{"id":"c","label":"La pratique de présentations orales structurées et de débats"},{"id":"d","label":"L''entraînement exclusif à la lecture à voix haute"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Au cycle 3, le langage oral inclut des présentations structurées, des débats réglés et l''argumentation. Les élèves apprennent à organiser leur propos, à écouter et à réagir de manière pertinente. Les comptines relèvent du cycle 1.', 'valide', 'free', true),

('b1070000-0000-0000-0000-00000000000a', 'Francais', 'didactique_francais', 'sprint_didactique_cycles', 'Sprint — Cycles et programmes', 'Avance', 'qcm',
 'Qu''est-ce que l''enseignement explicite de la compréhension préconisé par Eduscol ?',
 '[{"id":"a","label":"Faire lire les élèves silencieusement puis poser des questions"},{"id":"b","label":"Enseigner directement les stratégies de compréhension (prédire, se questionner, résumer, clarifier)"},{"id":"c","label":"Distribuer des questionnaires de lecture à remplir seul"},{"id":"d","label":"Lire le texte à voix haute à la place des élèves"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''enseignement explicite de la compréhension consiste à enseigner directement des stratégies (prédire, questionner, clarifier, résumer) que les lecteurs experts utilisent. L''enseignant modélise ces stratégies, guide les élèves puis favorise l''autonomie. C''est l''approche recommandée par la recherche et Eduscol.', 'valide', 'free', true);
