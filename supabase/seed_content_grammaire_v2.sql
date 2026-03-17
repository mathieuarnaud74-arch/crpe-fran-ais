-- CRPE Français — Grammaire V2 (5 séries × 10 questions)
insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ============================================================
-- SÉRIE 56 — Types et formes de phrases (Facile / free)
-- ============================================================

-- Q1 correct=a (déclarative) — keep at a
(
  '56000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Quel est le type de la phrase suivante ? « Le soleil brille sur la mer. »',
  null,
  '[{"id":"a","label":"Déclarative"},{"id":"b","label":"Interrogative"},{"id":"c","label":"Exclamative"},{"id":"d","label":"Impérative"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Le soleil brille sur la mer. » énonce un fait, c''est tout — c''est donc une phrase déclarative ! Elle se termine par un point simple, le signe le plus discret. La règle est simple : point simple = déclarative, point d''interrogation = interrogative, point d''exclamation = exclamative. Reconnaître le type d''une phrase, c''est avant tout observer la ponctuation et l''intention de communication. Commence toujours par là !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q2 correct=b (interrogative) — move to d
(
  '56000000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Quel est le type de la phrase suivante ? « Est-ce que tu viens au parc ? »',
  null,
  '[{"id":"a","label":"Déclarative"},{"id":"b","label":"Impérative"},{"id":"c","label":"Exclamative"},{"id":"d","label":"Interrogative"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Deux signaux clairs ici : la tournure « est-ce que » ET le point d''interrogation final — c''est une phrase interrogative ! Elle pose une question totale (on répond par oui ou non). La déclarative fait une affirmation, l''impérative donne un ordre. L''interrogative totale avec « est-ce que » est la forme la plus courante à l''écrit pour poser une question directe sans inversion du sujet. Facile à repérer !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q3 correct=a (exclamative) — move to c
(
  '56000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Quel est le type de la phrase suivante ? « Quel beau tableau ! »',
  null,
  '[{"id":"a","label":"Déclarative"},{"id":"b","label":"Impérative"},{"id":"c","label":"Exclamative"},{"id":"d","label":"Interrogative"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Admiration ou surprise — et un point d''exclamation à la fin : c''est une phrase exclamative ! « Quel beau tableau ! » se construit avec le mot exclamatif « quel », qui est l''un des trois marqueurs classiques de l''exclamative avec « que » et « comme ». Retiens-les : quel/quelle + nom, comme + verbe, que de + nom. La phrase déclarative énonce, l''interrogative questionne — l''exclamative, elle, exprime. C''est tout à fait autre chose !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'vrai_faux',
  'La phrase « Ferme la porte. » est une phrase impérative.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai, et c''est un exemple parfait de la phrase impérative ! Elle exprime un ordre ou une consigne, et son signe distinctif c''est l''impératif sans pronom sujet exprimé. « Ferme la porte » — pas de « tu » devant, verbe à l''impératif présent 2e pers. du singulier. Elle se termine par un point simple ou un point d''exclamation selon l''intensité. Méfie-toi : le point d''exclamation ne DÉFINIT pas le type — une exclamative ou une impérative peuvent toutes deux en avoir un !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'vrai_faux',
  'La phrase « Il ne mange pas de viande. » est à la forme affirmative.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Le « ne… pas » est là, bien visible — c''est la forme négative, pas affirmative. La forme affirmative, ça donnerait : « Il mange de la viande. » Retiens la distinction type / forme : le TYPE (déclaratif, interrogatif…) dit quelle est l''intention de communication, la FORME (affirmative/négative, active/passive) dit comment la phrase est construite. Les deux sont indépendants — une phrase interrogative peut très bien être à la forme négative !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q6 correct=b (passive) — keep at b
(
  '56000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Quelle est la forme de la phrase suivante ? « Ce roman a été écrit par Victor Hugo. »',
  null,
  '[{"id":"a","label":"Active"},{"id":"b","label":"Passive"},{"id":"c","label":"Négative"},{"id":"d","label":"Emphatique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Forme passive — reconnaissable à coup sûr ! La structure : sujet + auxiliaire « être » conjugué + participe passé + complément d''agent introduit par « par » (ou « de »). Ici : « Ce roman » (sujet) + « a été écrit » (être + participe) + « par Victor Hugo » (agent). À la voix active, ça donnerait : « Victor Hugo a écrit ce roman. » La transformation passive INVERSE les rôles : le COD actif devient sujet, le sujet actif devient agent.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'vrai_faux',
  'La phrase « Les enfants jouent dans le jardin. » est à la voix active.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! À la voix active, le sujet accomplit lui-même l''action. Ici, les enfants jouent — ils sont les acteurs, pas les patients de l''action. Pas d''auxiliaire « être » suivi d''un participe passé → voix active confirmée. La voix passive renverserait la situation : un autre sujet subirait l''action. Retiens le réflexe : cherche l''auxiliaire « être » + participe passé pour identifier le passif. Sans ça, tu es à l''actif.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q8 correct=a (négation simple) — move to d
(
  '56000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Transformez à la forme négative : « Elle comprend la leçon. » Quelle réponse est correcte ?',
  null,
  '[{"id":"a","label":"Elle n''a pas compris la leçon."},{"id":"b","label":"Elle ne comprend jamais la leçon."},{"id":"c","label":"Elle comprend rarement la leçon."},{"id":"d","label":"Elle ne comprend pas la leçon."}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La négation simple d''un présent, c''est « ne… pas » autour du verbe conjugué — et c''est la réponse d) ! La réponse a) change le temps (passé composé) : on ne te demandait pas ça. La réponse b) ajoute une nuance de fréquence avec « jamais » : c''est une négation, mais pas la transformation directe demandée. La réponse c) n''est même pas une forme négative. En langue parlée, le « ne » disparaît souvent, mais à l''écrit soigné — et au CRPE — il est OBLIGATOIRE. Ne l''oublie jamais !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q9 correct=b (subjective n'existe pas) — keep at b
(
  '56000000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Parmi les quatre types de phrases, lequel n''existe pas en français ?',
  null,
  '[{"id":"a","label":"Déclarative"},{"id":"b","label":"Subjective"},{"id":"c","label":"Impérative"},{"id":"d","label":"Interrogative"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Phrase subjective » — ça n''existe pas ! Les quatre types reconnus en grammaire française sont : déclarative, interrogative, exclamative et impérative. Le subjonctif est un MODE VERBAL, pas un type de phrase. Cette classification repose sur l''intention du locuteur : énoncer un fait, poser une question, exprimer une émotion, ou donner un ordre. Ces quatre types, tu dois les connaître sur le bout des doigts — ils reviennent régulièrement au CRPE.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'vrai_faux',
  'Une phrase peut être à la fois impérative et négative.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai — et c''est un point fondamental à retenir ! Le type et la forme d''une phrase sont deux dimensions INDÉPENDANTES. On peut donc cumuler : impérative (ordre) + négative (ne… pas). Exemple parfait : « Ne fais pas de bruit ! » Même chose pour interrogative + négative : « N''as-tu pas encore fini ? » Toujours analyser séparément le type ET la forme — ne les confonds jamais, ce sont deux questions différentes.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- ============================================================
-- SÉRIE 57 — Discours direct et indirect (Intermédiaire / free)
-- ============================================================

-- Q1 correct=b (discours direct) — keep at b
(
  '57000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Lisez le texte suivant, puis répondez : Quel procédé de discours est utilisé dans la phrase en gras ?',
  'La maîtresse entra dans la classe et posa son sac. Elle regarda les élèves et dit : **« Ouvrez vos cahiers de brouillon. »** Les enfants obéirent aussitôt.',
  '[{"id":"a","label":"Discours indirect"},{"id":"b","label":"Discours direct"},{"id":"c","label":"Discours indirect libre"},{"id":"d","label":"Discours narrativisé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Discours direct — les signaux sont là : verbe de parole (« dit »), deux-points, guillemets. C''est la reproduction fidèle des paroles telles qu''elles ont été prononcées. Au discours indirect, ce serait une subordonnée : « Elle leur dit d''ouvrir leurs cahiers. » Au discours indirect libre, ni guillemets ni subordonnée — les paroles se fondent dans le récit. Ces trois procédés sont à connaître parfaitement, ils tombent dans les analyses de texte au CRPE.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q2 correct=a (il viendrait le lendemain) — move to c
(
  '57000000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Transformez en discours indirect : « Je viendrai demain », dit-il. Quelle transformation est correcte ?',
  null,
  '[{"id":"a","label":"Il dit qu''il vient demain."},{"id":"b","label":"Il dit : « Je viendrai demain. »"},{"id":"c","label":"Il dit qu''il viendrait le lendemain."},{"id":"d","label":"Il dit qu''il vient le lendemain."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Trois changements à réaliser en une seule transformation — retiens-les bien ! 1) La personne : « je » → « il ». 2) Le temps : futur « viendrai » → conditionnel « viendrait » (concordance avec verbe introducteur au passé). 3) Le déictique temporel : « demain » → « le lendemain » (le repère temporel change avec le point de vue). La réponse a) rate la concordance des temps ET le déictique. La réponse b) reste au discours direct. La réponse d) rate la concordance des temps. Ces trois règles ensemble, c''est LE cœur du passage DD → DI.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'vrai_faux',
  'Au discours indirect, le présent de l''indicatif se transforme en imparfait lorsque le verbe introducteur est au passé.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai — c''est LA règle de concordance des temps à connaître par cœur ! Verbe introducteur au passé → tout change dans la subordonnée : présent → imparfait (« Il fait beau » → il dit qu''il faisait beau), futur → conditionnel présent, passé composé → plus-que-parfait. C''est un tableau à visualiser et à mémoriser. Cette règle est fondamentale pour maîtriser la transformation discours direct → indirect, et elle est régulièrement testée au CRPE.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q4 correct=b (demander) — move to d
(
  '57000000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Quel verbe introducteur convient le mieux pour rapporter une question au discours indirect ?',
  null,
  '[{"id":"a","label":"affirmer"},{"id":"b","label":"s''exclamer"},{"id":"c","label":"déclarer"},{"id":"d","label":"demander"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Le verbe introducteur doit correspondre à l''ACTE DE PAROLE rapporté — et ici c''est une question ! On utilise donc « demander » (ou « s''interroger », « vouloir savoir »). « Affirmer » rapporte une assertion, « s''exclamer » exprime une exclamation, « déclarer » rapporte une assertion formelle. Ce choix est crucial pour restituer fidèlement l''intention du locuteur. Exemple en action : « Où vas-tu ? » → Il lui demanda où il allait. Le verbe introducteur n''est pas là par hasard : il porte tout le sens de l''acte de parole.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'vrai_faux',
  'Au discours indirect, les guillemets sont obligatoires.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Les guillemets appartiennent au discours DIRECT, pas au discours indirect. Au discours indirect, les paroles s''intègrent à la phrase principale sous forme de subordonnée — pas de guillemets, pas de deux-points. C''est précisément l''absence de guillemets et de deux-points qui distingue les deux procédés. Retiens ce contraste : discours direct = guillemets + deux-points + paroles telles quelles ; discours indirect = subordonnée introduite par « que » ou un mot interrogatif.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q6 correct=b (de venir là) — keep at b
(
  '57000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Transformez en discours indirect : « Viens ici tout de suite ! », cria-t-elle. Quelle transformation est correcte ?',
  null,
  '[{"id":"a","label":"Elle cria qu''il venait ici tout de suite."},{"id":"b","label":"Elle lui cria de venir là tout de suite."},{"id":"c","label":"Elle cria : « Viens ici tout de suite ! »"},{"id":"d","label":"Elle lui cria qu''il devait venir ici."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour transformer un ordre au discours indirect, la règle c''est : verbe introducteur + « de » + infinitif. L''impératif « viens » devient « de venir ». Et deux autres changements obligatoires : le déictique spatial « ici » → « là » (changement de repère), et les points d''exclamation disparaissent. La réponse a) utilise incorrectement « que + indicatif » — ça ne fonctionne pas pour un ordre. La réponse c) reste au discours direct. La réponse d) garde « ici » sans le transformer. La structure « de + infinitif » pour les ordres, c''est vraiment à retenir !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'vrai_faux',
  'Dans la phrase « Il se demanda s''il avait bien fermé la porte », le discours indirect est introduit par « si ».',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! « Si » introduit les questions totales au discours indirect — celles qui appellent une réponse oui/non. Ici, la question d''origine était : « Ai-je bien fermé la porte ? » → totale → discours indirect avec « si ». Pour les questions partielles (qui portent sur un élément spécifique), on utilise un mot interrogatif : « il demanda où, quand, comment, pourquoi… » Le « si » du discours indirect est ton marqueur pour les interrogatives totales rapportées. Simple et efficace !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q8 correct=c (discours indirect libre) — keep at c
(
  '57000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Lisez ce passage : **« Je suis fatiguée, pensait-elle, et je voudrais rentrer chez moi. »** De quel type de discours s''agit-il ?',
  'La journée avait été longue. Je suis fatiguée, pensait-elle, et je voudrais rentrer chez moi. Elle regarda l''heure et soupira.',
  '[{"id":"a","label":"Discours direct"},{"id":"b","label":"Discours indirect"},{"id":"c","label":"Discours indirect libre"},{"id":"d","label":"Discours narrativisé"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Discours indirect libre — le plus subtil des trois procédés ! Il emprunte au discours direct la vivacité et les marques d''énonciation (le « je » du personnage), et au discours indirect l''absence de guillemets et la concordance des temps. Il se fond dans le récit sans deux-points ni guillemets obligatoires. Ici, le verbe de pensée « pensait-elle » est en incise, discret. Ce procédé est très fréquent en littérature pour entrer dans la tête d''un personnage — à reconnaître sans hésiter au CRPE.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q9 correct=a (elle répondit qu'elle ne savait pas) — move to d
(
  '57000000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Dans quelle phrase le verbe introducteur de discours indirect est-il correctement employé ?',
  null,
  '[{"id":"a","label":"Elle demanda qu''elle ne savait pas."},{"id":"b","label":"Elle affirma si elle ne savait pas."},{"id":"c","label":"Elle s''exclama qu''elle ne savait pas."},{"id":"d","label":"Elle répondit qu''elle ne savait pas."}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La réponse d) est correcte : « répondre que » + assertion = construction parfaite pour le discours indirect d''une réponse. La réponse a) est incorrecte : « demander » introduit une question et ne se construit pas avec « que » pour rapporter une assertion. La réponse b) mélange « affirmer » (assertion) avec « si » (marqueur d''interrogative indirecte totale) — c''est agrammatical. La réponse c) mélange « s''exclamer » (exclamation) avec une proposition déclarative — incohérence d''acte de parole. Le verbe introducteur et sa construction syntaxique forment un tout : ils doivent correspondre à l''acte de parole rapporté.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'vrai_faux',
  'La phrase « Il lui dit de se taire » est au discours indirect.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! C''est un exemple parfait de discours indirect pour un ordre. La structure canonique : « dire de + infinitif ». Le discours direct correspondant aurait été : « Il lui dit : "Tais-toi." » Les signaux du discours indirect sont tous présents : pas de guillemets, pas de deux-points, impératif transformé en infinitif précédé de « de ». Cette structure « dire de + infinitif » pour rapporter un ordre, c''est à retenir absolument — c''est différent de « dire que + subordonnée » pour rapporter une assertion.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- ============================================================
-- SÉRIE 58 — Ponctuation : rôle et emploi (Intermédiaire / free)
-- ============================================================

-- Q1 correct=b (point-virgule) — move to d
(
  '58000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Lisez le texte et répondez : quel rôle joue le point-virgule dans la phrase en gras ?',
  'Le ciel était d''un gris uniforme ; de lourds nuages s''amoncelaient à l''horizon. Les passants pressaient le pas, les uns regardant le sol, les autres scrutant le ciel avec inquiétude.',
  '[{"id":"a","label":"Il sépare deux éléments d''une liste courte."},{"id":"b","label":"Il introduit une explication ou une citation."},{"id":"c","label":"Il remplace un point d''interrogation dans une question rhétorique."},{"id":"d","label":"Il marque une pause forte entre deux propositions liées par le sens."}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Le point-virgule, c''est le signe de ponctuation « entre-deux » : plus fort que la virgule, moins fort que le point. Il unit deux propositions indépendantes liées thématiquement — ici la description du ciel et celle des nuages forment un tout cohérent sur la météo. Pas de liste (rôle de la virgule), pas d''explication annoncée (rôle des deux-points). Maîtriser le point-virgule, c''est montrer qu''on articule ses idées avec finesse dans un écrit élaboré — exactement ce que le CRPE valorise.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'vrai_faux',
  'Les guillemets servent uniquement à encadrer les titres d''œuvres.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux — les guillemets ont bien d''autres rôles ! Ils encadrent le discours direct, signalent une citation, indiquent qu''un mot est employé avec distance ou ironie (un soi-disant "expert"), ou désignent un terme technique ou argotique. En français, les titres d''œuvres s''écrivent en italique et/ou avec une majuscule initiale — pas forcément entre guillemets. Ne réduis donc pas les guillemets à une seule fonction : leur usage est riche et varié, et bien le connaître te sera utile pour analyser des textes au CRPE.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q3 correct=a (des virgules) — keep at a
(
  '58000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Dans la phrase suivante, quel signe de ponctuation manque ? « Il avait apporté tout ce qu''il fallait : du pain du beurre et du fromage. »',
  null,
  '[{"id":"a","label":"Des virgules entre les éléments de la liste"},{"id":"b","label":"Un point d''exclamation à la fin"},{"id":"c","label":"Des guillemets autour des aliments"},{"id":"d","label":"Un point-virgule après les deux-points"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Les virgules ! Quand on énumère plusieurs éléments, chacun est séparé par une virgule — sauf le dernier, précédé de « et ». La phrase correcte : « Il avait apporté tout ce qu''il fallait : du pain, du beurre et du fromage. » Les deux-points font bien leur travail d''annonce, mais les virgules dans la liste sont indispensables. Sans elles, on a du mal à distinguer les éléments et ça nuit à la lisibilité. La virgule dans les listes, c''est un geste d''écriture de base — ne la néglige pas.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'vrai_faux',
  'Dans un dialogue, le tiret cadratin ( — ) signale le changement de locuteur.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Dans un dialogue littéraire, chaque réplique d''un nouveau locuteur commence par un tiret cadratin (—) en début de ligne. C''est une convention typographique propre au dialogue en français. Attention à ne pas le confondre avec le tiret demi-cadratin (–) utilisé pour les incises ou les parenthèses. Le tiret cadratin permet au lecteur de repérer immédiatement qui prend la parole, sans avoir à répéter « dit-il » à chaque fois. C''est aussi un élément à observer lors de l''analyse d''un texte dialogué.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q5 correct=b (explication/précision) — keep at b
(
  '58000000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Quel est le rôle des deux-points dans la phrase suivante ? « Elle avait une seule ambition : devenir médecin. »',
  null,
  '[{"id":"a","label":"Ils séparent deux propositions indépendantes."},{"id":"b","label":"Ils annoncent une explication ou une précision."},{"id":"c","label":"Ils introduisent un discours direct."},{"id":"d","label":"Ils remplacent la conjonction « car »."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ici, les deux-points annoncent UNE PRÉCISION — ils développent ce que signifie « une seule ambition ». C''est leur rôle le plus fin : pas une liste, pas un discours direct, mais une explication. Les trois rôles des deux-points à retenir : annoncer une liste, introduire une explication/précision, introduire un discours direct. Cette fonction d''explication est très fréquente dans les textes argumentatifs et explicatifs que tu rencontreras au CRPE. Observe toujours ce qui suit les deux-points pour déterminer leur rôle.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'vrai_faux',
  'Les points de suspension indiquent toujours une liste incomplète.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux — les points de suspension sont bien plus riches que ça ! Ils peuvent marquer : une liste incomplète (« Paris, Lyon, Marseille… »), une interruption ou une hésitation (« Je… je ne sais pas »), un sous-entendu ou une suggestion (quand on laisse le lecteur compléter), une émotion ou un silence. Ce n''est pas un simple signe d''énumération. Et petite règle technique : ils sont TOUJOURS au nombre de trois et ne sont pas suivis d''un autre point final. La richesse de leur emploi en fait un beau sujet d''analyse stylistique.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q7 correct=b (isoler incise/apposition) — move to c
(
  '58000000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Dans quel cas la virgule est-elle obligatoire ?',
  null,
  '[{"id":"a","label":"Avant « et » dans une énumération à deux éléments"},{"id":"b","label":"Après le verbe conjugué"},{"id":"c","label":"Pour isoler une proposition incise ou une apposition"},{"id":"d","label":"Avant une conjonction de coordination comme « mais »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La virgule est obligatoire pour isoler une incise (« dit-il », « pensait-elle ») ou une apposition (« Marie, ma meilleure amie, est venue »). Ces éléments intercalés doivent TOUJOURS être encadrés de virgules — ou de tirets pour un effet plus marqué. En revanche, pas de virgule avant « et » dans une simple coordination à deux éléments, et jamais après un verbe. Avant « mais », la virgule est recommandée mais pas toujours obligatoire selon le contexte. Retiens : incise et apposition = virgules obligatoires, c''est une règle sans exception dans l''écrit soigné.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q8 correct=b (les virgules) — keep at b
(
  '58000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Analysez la ponctuation de ce texte. Quel signe permet d''encadrer la proposition incise dans : « La vie, affirma-t-il avec conviction, vaut la peine d''être vécue. » ?',
  'La vie, affirma-t-il avec conviction, vaut la peine d''être vécue.',
  '[{"id":"a","label":"Les guillemets"},{"id":"b","label":"Les virgules"},{"id":"c","label":"Les tirets"},{"id":"d","label":"Les parenthèses"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ce sont les virgules qui encadrent l''incise « affirma-t-il avec conviction » — elles la détachent du reste de la phrase. L''incise est un segment intercalé qui attribue les paroles ou les pensées. Elle peut aussi être encadrée de tirets (« La vie — affirma-t-il — vaut… ») pour un effet de mise en relief plus marqué. Les guillemets, eux, sont réservés au discours direct ou aux citations. Les parenthèses encadrent une information secondaire mais forment un bloc plus isolé. Les deux solutions (virgules ou tirets) sont acceptées selon les choix stylistiques, mais les virgules restent la convention la plus courante.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'vrai_faux',
  'Le point d''interrogation se place à la fin de toute phrase qui commence par « est-ce que ».',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai — dans le cas de l''interrogation DIRECTE ! « Est-ce que tu viens ? » → question directe → point d''interrogation. Mais attention au piège : si « est-ce que » apparaît dans une interrogative INDIRECTE, il se transforme et le point d''interrogation disparaît : « Je me demande si tu viens. » La distinction directe/indirecte est donc la clé. Interrogation directe = tu poses vraiment la question → point d''interrogation. Interrogation indirecte = tu rapportes la question → pas de point d''interrogation.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- Q10 correct=b (deux-points + guillemets) — move to a
(
  '58000000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Quelle phrase utilise correctement les deux-points pour introduire un discours direct ?',
  null,
  '[{"id":"a","label":"Il répondit : « Je ne sais pas. »"},{"id":"b","label":"Il répondit, qu''il ne savait pas."},{"id":"c","label":"Il répondit — Je ne sais pas."},{"id":"d","label":"Il répondit que : « Je ne sais pas. »"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La structure canonique du discours direct : verbe de parole + deux-points + guillemets + paroles — et c''est exactement la réponse a) ! La réponse b) remplace les deux-points par une virgule et transforme la phrase en discours indirect : erreur de procédé. La réponse c) manque les guillemets et emploie mal le tiret — le tiret sert à changer de locuteur dans un dialogue, pas à introduire une première réplique. La réponse d) cumule fautivement « que » et les deux-points. Ces conventions sont normées en français standard : apprends-les une bonne fois pour toutes !',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- ============================================================
-- SÉRIE 59 — Groupe nominal et ses expansions (Intermédiaire / premium)
-- ============================================================

-- Q1 correct=a (épithète liée) — keep at a
(
  '59000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Dans la phrase « La petite fille souriante jouait dans le jardin », quelle est la fonction de « petite » ?',
  null,
  '[{"id":"a","label":"Épithète liée"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Apposition"},{"id":"d","label":"Complément du nom"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Épithète liée — « petite » est directement accolé au nom « fille » sans verbe intermédiaire. C''est la définition même de l''épithète liée : inséparable du nom dans le GN. L''attribut du sujet, lui, est séparé par un verbe d''état (« La fille est petite »). L''apposition est un nom ou GN ajouté pour préciser le nom. Le complément du nom est introduit par une préposition. La distinction épithète liée / épithète détachée / attribut est fondamentale en analyse grammaticale — et elle revient souvent au CRPE. Retiens : lié = dans le GN, pas de verbe entre les deux.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'vrai_faux',
  'Dans « Paul, mon voisin, est jardinier », le groupe « mon voisin » est une apposition.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! L''apposition, c''est un nom (ou GN) qu''on place à côté d''un autre nom pour désigner la même réalité. Ici, « mon voisin » = Paul → même référent, encadré de virgules. C''est la définition même de l''apposition : équivalence référentielle + virgules. On la distingue du complément du nom (introduit par une préposition : « le jardin de Paul ») et de l''épithète (un adjectif directement accolé). Les virgules sont le signal visuel de l''apposition — vois-les, et tu sais que tu as une apposition.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q3 correct=b (complément du nom) — move to d
(
  '59000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Dans « un livre de recettes », quelle est la fonction de « de recettes » ?',
  null,
  '[{"id":"a","label":"Épithète"},{"id":"b","label":"Apposition"},{"id":"c","label":"Épithète détachée"},{"id":"d","label":"Complément du nom"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Complément du nom — la préposition « de » t''indique que tu as bien un GP expansion du nom. Il précise le nom noyau « livre » en indiquant son contenu. Ce n''est pas une épithète (qui serait un adjectif) ni une apposition (qui supposerait une équivalence référentielle et des virgules) ni une épithète détachée (qui serait un adjectif séparé par une virgule). Astuce : le complément du nom peut souvent être paraphrasé par une proposition relative → « un livre qui contient des recettes ». Invariable, introduit par une préposition — voilà les deux caractéristiques à retenir.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'vrai_faux',
  'Dans « Le chat est noir », « noir » est une épithète liée.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! « Noir » est ici ATTRIBUT DU SUJET, pas épithète liée. La différence fondamentale : l''attribut est séparé du nom par un verbe d''état (être, paraître, sembler, devenir…). Ici, « est » est ce verbe d''état — il relie le sujet « le chat » à l''attribut « noir ». L''épithète liée, elle, est directement accolée au nom : « Le chat noir dort. » Cette distinction est cruciale parce qu''elle change la fonction syntaxique : attribut = lié au prédicat, épithète = interne au GN. Les deux peuvent être des adjectifs, mais leurs rôles sont complètement différents.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q5 correct=a (déterminant + nom) — keep at a
(
  '59000000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Quelle est la structure minimale d''un groupe nominal ?',
  null,
  '[{"id":"a","label":"Déterminant + nom noyau"},{"id":"b","label":"Déterminant + adjectif + nom noyau"},{"id":"c","label":"Nom noyau + complément du nom"},{"id":"d","label":"Déterminant + nom noyau + adjectif postposé"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Déterminant + nom noyau — c''est tout ce qu''il faut ! L''adjectif et toutes les expansions (épithète, apposition, complément du nom, relative) sont facultatifs. Le déterminant est indispensable pour actualiser le nom commun en contexte. Exemple minimal : « la maison ». Exemple maximal : « la belle maison de mes grands-parents qui surplombe la vallée ». Même avec toutes ces expansions, le noyau reste « maison » et le déterminant reste « la ». La structure de base, c''est toujours là.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q6 correct=b (proposition subordonnée relative) — keep at b
(
  '59000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Dans « la maison que nous avons visitée », quelle est la nature de l''expansion du nom « maison » ?',
  null,
  '[{"id":"a","label":"Complément du nom"},{"id":"b","label":"Proposition subordonnée relative"},{"id":"c","label":"Apposition"},{"id":"d","label":"Épithète détachée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Proposition subordonnée relative ! Le signal : le pronom relatif « que » reprend l''antécédent « maison » et introduit la subordonnée. « Que nous avons visitée » développe et précise quelle maison — c''est son rôle d''expansion. À distinguer du complément du nom (GP sans verbe conjugué) et de l''apposition (GN co-référent encadré de virgules). Et retiens l''accord ici : le participe « visitée » s''accorde avec le COD « que » (= la maison, féminin singulier) placé avant — règle de l''accord du participe passé avec « avoir » !',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'vrai_faux',
  'L''épithète détachée est séparée du nom par une virgule et peut être supprimée sans rendre la phrase agrammaticale.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai — c''est là toute la différence avec l''épithète liée ! L''épithète détachée est à distance du nom, séparée par une virgule, et facultative. Exemple : « Épuisé, il s''endormit aussitôt. » On peut supprimer « épuisé » : « Il s''endormit aussitôt. » ✓ La phrase reste correcte. L''épithète liée, elle, est directement accolée au nom et souvent plus difficile à supprimer si elle est déterminante pour le sens. Virgule + à distance = détachée, sans virgule + accolée = liée. C''est aussi simple que ça.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q8 correct=b (trois) — NOTE: explanation says 4 but answer choices say 3 — keep as-is per original, correct=b
(
  '59000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Combien d''expansions contient le groupe nominal « ce grand château médiéval en ruine que j''admire » ?',
  null,
  '[{"id":"a","label":"Deux"},{"id":"b","label":"Trois"},{"id":"c","label":"Quatre"},{"id":"d","label":"Cinq"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Comptons ensemble ! Nom noyau : « château ». Expansions : 1) « grand » (épithète liée antéposée), 2) « médiéval » (épithète liée postposée), 3) « en ruine » (complément du nom), 4) « que j''admire » (proposition subordonnée relative). Ça fait quatre expansions ! Cet exemple illustre bien la récursivité du GN en français : un nom peut accumuler un grand nombre d''expansions de natures différentes. Analyse-les toutes !',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'vrai_faux',
  'Dans « une tasse à café », la préposition « à » introduit un complément du nom.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Le complément du nom peut être introduit par des prépositions variées, pas seulement « de » : « à » (une tasse à café), « en » (un bracelet en argent), « pour » (une salle pour réunions)… Ici, « à café » précise la destination ou l''usage de la tasse. Et note la nuance savoureuse avec « une tasse de café » : la tasse À café désigne le contenant prévu pour, la tasse DE café désigne son contenu actuel. La préposition choisie change le sens — c''est la richesse du français !',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q10 correct=a (apposition correcte) — move to b
(
  '59000000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Quelle phrase contient une apposition correctement employée ?',
  null,
  '[{"id":"a","label":"Le directeur sévère prit la parole."},{"id":"b","label":"Le directeur, homme sévère, prit la parole."},{"id":"c","label":"Le directeur prit sévèrement la parole."},{"id":"d","label":"Le directeur qui est sévère prit la parole."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse b) illustre parfaitement l''apposition : « homme sévère » est un GN encadré de virgules, co-référent au nom « directeur » (même personne), qui apporte une précision descriptive. C''est l''emploi canonique. Dans a), « sévère » est une épithète liée directement accolée au nom. Dans c), « sévèrement » est un adverbe qui modifie le verbe. Dans d), « qui est sévère » est une proposition subordonnée relative. Les trois autres phrases sont grammaticalement correctes, mais seule la réponse b) illustre l''apposition. Retiens les deux signaux visuels de l''apposition : virgules + GN co-référent.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- ============================================================
-- SÉRIE 60 — Coordination et subordination (Avancé / premium)
-- ============================================================

-- Q1 correct=b (coordination) — move to d
(
  '60000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Quelle est la nature du lien entre les deux propositions dans : « Il travaille dur, car il veut réussir son concours » ?',
  null,
  '[{"id":"a","label":"Juxtaposition"},{"id":"b","label":"Subordination"},{"id":"c","label":"Corrélation"},{"id":"d","label":"Coordination"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Car » — coordination ! Et tu la connais, la liste des sept conjonctions de coordination : mais, ou, et, donc, or, ni, car. Le moyen mnémotechnique : « mais ou est donc or ni car ». La coordination unit deux propositions de même niveau syntaxique. La subordination, elle, crée une dépendance hiérarchique (principale → subordonnée). La juxtaposition se fait par la seule ponctuation, sans mot de liaison. Ici, « car » est présent et c''est bien une conjonction de coordination → coordination, pas de doute.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'vrai_faux',
  'La phrase « Il pleut. Je prends mon parapluie. » est un exemple de juxtaposition.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! La juxtaposition, c''est le procédé le plus implicite des trois. Deux propositions côte à côte, séparées uniquement par un point — aucun mot de liaison. Le lecteur déduit lui-même le rapport logique (ici cause/conséquence) sans qu''il soit formulé. C''est l''élégance de la juxtaposition : elle fait confiance au lecteur. Retiens le trio : juxtaposition (ponctuation seule) / coordination (conjonction de coordination) / subordination (dépendance hiérarchique). Ces trois modes de liaison sont les outils de base de la structure des phrases complexes.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q3 correct=b (subordination conditionnelle) — keep at b
(
  '60000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Dans « Je viendrai si tu m''invites », quel type de lien syntaxique est exprimé ?',
  null,
  '[{"id":"a","label":"Coordination par « donc »"},{"id":"b","label":"Subordination conditionnelle"},{"id":"c","label":"Juxtaposition"},{"id":"d","label":"Subordination causale"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Subordination conditionnelle — « si » est une conjonction de subordination qui introduit une circonstancielle de condition. La proposition « si tu m''invites » DÉPEND de la principale « Je viendrai » — elle ne peut pas fonctionner seule comme phrase autonome. C''est la marque de la subordination : relation hiérarchique. Et retiens la règle de concordance avec « si » conditionnel : jamais de conditionnel dans la subordonnée introduite par « si » ! Si + présent → futur. Si + imparfait → conditionnel présent.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'vrai_faux',
  'Une phrase complexe contient au moins deux propositions dont l''une est subordonnée à l''autre.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai — et c''est la définition même de la phrase complexe ! Retiens le trio : phrase simple (un seul verbe conjugué), phrase composée (propositions indépendantes coordonnées ou juxtaposées), phrase complexe (au moins une principale + une subordonnée). Dans la phrase complexe, la subordonnée dépend syntaxiquement de la principale : elle ne peut pas fonctionner seule. Exemple : « Je pense que tu as raison » — « que tu as raison » est une subordonnée complétive. Ces trois catégories, tu dois les distinguer sans hésiter.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q5 correct=b (conséquence) — move to a
(
  '60000000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Quel lien logique la conjonction de coordination « donc » exprime-t-elle ?',
  null,
  '[{"id":"a","label":"Conséquence"},{"id":"b","label":"Opposition"},{"id":"c","label":"Addition"},{"id":"d","label":"Cause"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Donc » exprime la conséquence : la deuxième proposition DÉCOULE logiquement de la première. Retiens les valeurs des sept conjonctions : et = addition, ou = alternative, mais = opposition, or = transition/opposition, ni = négation additive, car = cause, donc = conséquence. Connaître ces valeurs sémantiques est essentiel pour analyser la structure argumentative d''un texte. Au CRPE, on te demande souvent de repérer les connecteurs logiques — commence par les conjonctions de coordination, c''est la base.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q6 correct=c (concession) — keep at c
(
  '60000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Dans la phrase « Bien qu''il soit fatigué, il continue à travailler », quelle est la valeur de la subordonnée ?',
  null,
  '[{"id":"a","label":"Cause"},{"id":"b","label":"Condition"},{"id":"c","label":"Concession"},{"id":"d","label":"But"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Bien que » + subjonctif = concession, à retenir absolument ! La concession, c''est : l''obstacle existe, mais il ne suffit pas à empêcher l''action principale. Ici : malgré la fatigue, le travail continue. C''est l''idée du « quand même ». Attention à ne pas confondre : la cause (parce que, puisque) EXPLIQUE, la condition (si, à condition que) POSE une hypothèse, la concession CONCÈDE un obstacle sans le laisser gagner, le but (pour que, afin que) vise un résultat. Les conjonctions de concession : bien que, quoique, encore que (toutes avec le subjonctif), même si (avec l''indicatif).',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'vrai_faux',
  'Dans une phrase composée, les propositions coordonnées ont toutes le même statut syntaxique.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai — et c''est précisément ce qui distingue la coordination de la subordination ! Dans « Il chante et elle danse », les deux propositions sont de MÊME niveau : aucune ne dépend de l''autre, elles pourraient chacune former une phrase complète. La coordination (et la juxtaposition) unissent des éléments de même statut. La subordination, elle, crée une hiérarchie : la subordonnée dépend de la principale. C''est la différence fondamentale entre les deux types de liens syntaxiques.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q8 correct=b (phrase complexe) — move to d
(
  '60000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Identifiez la phrase complexe parmi les suivantes :',
  null,
  '[{"id":"a","label":"Le vent souffle et les feuilles tombent."},{"id":"b","label":"Le vent souffle fort ; les feuilles tombent."},{"id":"c","label":"Le vent souffle. Les feuilles tombent."},{"id":"d","label":"Le vent qui souffle fort fait tomber les feuilles."}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La phrase d) est complexe : elle contient une principale (« Le vent fait tomber les feuilles ») et une subordonnée relative (« qui souffle fort ») qui dépend du nom « vent ». La phrase a) est composée : deux indépendantes coordonnées par « et ». La phrase b) est composée par juxtaposition : deux indépendantes séparées par un point-virgule. La phrase c) présente deux phrases simples juxtaposées par un point. Le critère définitoire de la phrase complexe : la présence d''une proposition subordonnée (relative, conjonctive, interrogative indirecte). Sans subordonnée → phrase simple ou composée.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'vrai_faux',
  'La conjonction « or » exprime toujours une cause.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux — et confondre « or » avec « car » est une erreur classique ! « Or » exprime une transition argumentative ou une opposition logique, pas la cause. Exemple du syllogisme : « Tous les hommes sont mortels ; or Socrate est un homme ; donc Socrate est mortel. » Le « or » introduit une information nouvelle qui contraste avec ou nuance ce qui précède. « Car », lui, introduit la cause. Dans une dissertation ou un texte argumentatif, « or » est un outil de progression logique très précieux — mais il faut savoir qu''il n''exprime pas la cause.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- Q10 correct=b (afin que) — keep at b
(
  '60000000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Quelle conjonction de subordination exprime le but ?',
  null,
  '[{"id":"a","label":"parce que"},{"id":"b","label":"afin que"},{"id":"c","label":"bien que"},{"id":"d","label":"puisque"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Afin que » + subjonctif = but ! Retiens la famille du but : pour que, afin que, de peur que / de crainte que (but négatif, pour éviter que quelque chose se produise). « Parce que » exprime la cause avec l''indicatif. « Bien que » exprime la concession avec le subjonctif. « Puisque » exprime la cause avec l''indicatif, avec une nuance d''évidence partagée. Ces valeurs logiques + les modes qui les accompagnent, c''est un duo inséparable à mémoriser. Pour analyser et produire des textes argumentatifs, distinguer cause / but / concession / conséquence est absolument indispensable.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
);
