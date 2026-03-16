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

(
  '56000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Quel est le type de la phrase suivante ? « Le soleil brille sur la mer. »',
  null,
  '[{"id":"a","label":"Déclarative"},{"id":"b","label":"Interrogative"},{"id":"c","label":"Exclamative"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La phrase « Le soleil brille sur la mer. » énonce un fait ou une information : c''est donc une phrase déclarative. Elle se termine par un point simple. La phrase interrogative se termine par un point d''interrogation, et la phrase exclamative par un point d''exclamation. Reconnaître le type d''une phrase repose avant tout sur la ponctuation et l''intention de communication.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Quel est le type de la phrase suivante ? « Est-ce que tu viens au parc ? »',
  null,
  '[{"id":"a","label":"Déclarative"},{"id":"b","label":"Interrogative"},{"id":"c","label":"Impérative"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase « Est-ce que tu viens au parc ? » pose une question : c''est une phrase interrogative. Elle se reconnaît à sa tournure interrogative (est-ce que) et au point d''interrogation final. La phrase déclarative fait une affirmation, et la phrase impérative donne un ordre. L''interrogative totale porte sur l''ensemble de la phrase et appelle une réponse par oui ou non.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Quel est le type de la phrase suivante ? « Quel beau tableau ! »',
  null,
  '[{"id":"a","label":"Exclamative"},{"id":"b","label":"Déclarative"},{"id":"c","label":"Interrogative"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La phrase « Quel beau tableau ! » exprime une émotion (admiration, surprise) et se termine par un point d''exclamation : c''est une phrase exclamative. Elle se construit souvent avec un mot exclamatif comme « quel », « que » ou « comme ». La phrase déclarative énonce un fait, et l''interrogative pose une question. Le point d''exclamation est le marqueur principal de ce type de phrase.',
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
  'La phrase impérative exprime un ordre, une consigne ou une demande. Elle se caractérise par l''emploi du verbe à l''impératif, sans pronom sujet exprimé. « Ferme la porte. » utilise bien l''impératif présent de « fermer » à la 2ᵉ personne du singulier. Elle se termine généralement par un point simple, parfois un point d''exclamation selon l''intensité de l''ordre.',
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
  'La forme négative se reconnaît à la présence des adverbes de négation « ne… pas », « ne… plus », « ne… jamais », etc. La phrase « Il ne mange pas de viande. » est donc à la forme négative, et non affirmative. La forme affirmative serait « Il mange de la viande. ». La distinction forme affirmative / négative est indépendante du type de la phrase (déclarative, interrogative, etc.).',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Quelle est la forme de la phrase suivante ? « Ce roman a été écrit par Victor Hugo. »',
  null,
  '[{"id":"a","label":"Active"},{"id":"b","label":"Passive"},{"id":"c","label":"Négative"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase passive se reconnaît à la construction : sujet + auxiliaire « être » conjugué + participe passé + (complément d''agent introduit par « par » ou « de »). Ici, « Ce roman a été écrit par Victor Hugo » correspond exactement à ce schéma. À la voix active, la phrase serait : « Victor Hugo a écrit ce roman. » La transformation passive inverse les rôles grammaticaux du sujet et du complément d''agent.',
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
  'À la voix active, le sujet est l''agent de l''action : il accomplit lui-même l''action exprimée par le verbe. Dans la phrase « Les enfants jouent dans le jardin », les enfants sont bien les acteurs de l''action jouer. Il n''y a pas d''auxiliaire « être » suivi d''un participe passé, ce qui confirme la voix active. La voix passive renverserait la relation : un autre sujet subirait l''action.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Transformez à la forme négative : « Elle comprend la leçon. » Quelle réponse est correcte ?',
  null,
  '[{"id":"a","label":"Elle ne comprend pas la leçon."},{"id":"b","label":"Elle n''a pas compris la leçon."},{"id":"c","label":"Elle ne comprend jamais la leçon."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La forme négative simple d''une phrase au présent s''obtient en encadrant le verbe conjugué par « ne… pas ». La réponse a) « Elle ne comprend pas la leçon » est la transformation directe à la forme négative du présent. La réponse b) change le temps (passé composé), et la réponse c) ajoute une nuance de fréquence (« jamais »), qui n''est pas une simple négation. Dans la langue parlée, le « ne » est souvent omis, mais il est obligatoire à l''écrit soigné.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '56000000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'grm_types_formes_phrases', 'Types et formes de phrases', 'Facile',
  'qcm',
  'Parmi les quatre types de phrases, lequel n''existe pas en français ?',
  null,
  '[{"id":"a","label":"Déclarative"},{"id":"b","label":"Subjective"},{"id":"c","label":"Impérative"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les quatre types de phrases reconnus en grammaire française sont : la phrase déclarative, la phrase interrogative, la phrase exclamative et la phrase impérative. Il n''existe pas de type appelé « phrase subjective ». Le subjonctif est un mode verbal, non un type de phrase. Cette classification repose sur l''intention de communication du locuteur : énoncer, questionner, exprimer une émotion ou donner un ordre.',
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
  'Le type et la forme d''une phrase sont deux dimensions indépendantes. Une phrase peut donc cumuler un type (impératif) et une forme (négative). L''exemple « Ne fais pas de bruit ! » est à la fois impérative (ordre) et négative (ne… pas). De même, une phrase interrogative peut être négative : « N''as-tu pas encore fini ? ». Il est important de distinguer ces deux notions pour l''analyse grammaticale.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- ============================================================
-- SÉRIE 57 — Discours direct et indirect (Intermédiaire / free)
-- ============================================================

(
  '57000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Lisez le texte suivant, puis répondez : Quel procédé de discours est utilisé dans la phrase en gras ?',
  'La maîtresse entra dans la classe et posa son sac. Elle regarda les élèves et dit : **« Ouvrez vos cahiers de brouillon. »** Les enfants obéirent aussitôt.',
  '[{"id":"a","label":"Discours indirect"},{"id":"b","label":"Discours direct"},{"id":"c","label":"Discours indirect libre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le discours direct reproduit les paroles telles qu''elles ont été prononcées, en les encadrant entre guillemets et en les introduisant par un verbe de parole (ici « dit »). Les deux-points avant les guillemets sont une marque typographique caractéristique du discours direct. Le discours indirect transforerait la phrase en subordonnée : « Elle leur dit d''ouvrir leurs cahiers de brouillon. » Le discours indirect libre, lui, n''utilise ni guillemets ni subordonnée.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Transformez en discours indirect : « Je viendrai demain », dit-il. Quelle transformation est correcte ?',
  null,
  '[{"id":"a","label":"Il dit qu''il viendrait le lendemain."},{"id":"b","label":"Il dit qu''il vient demain."},{"id":"c","label":"Il dit : « Je viendrai demain. »"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Au discours indirect, plusieurs changements s''opèrent : le pronom « je » devient « il » (concordance des personnes), le futur « viendrai » devient conditionnel « viendrait » (concordance des temps avec un verbe introducteur au passé), et le déictique temporel « demain » devient « le lendemain » (changement de repère temporel). La réponse b) ne respecte pas la concordance des temps ni le changement de déictique. La réponse c) reste au discours direct.',
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
  'La règle de la concordance des temps impose que, lorsque le verbe introducteur est au passé (dit, affirma, répondit…), le présent du discours direct se transforme en imparfait au discours indirect. Exemple : « Il fait beau » → Il dit qu''il faisait beau. De même, le futur devient conditionnel présent, et le passé composé devient plus-que-parfait. Cette règle est fondamentale pour maîtriser la transformation discours direct → indirect.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Quel verbe introducteur convient le mieux pour rapporter une question au discours indirect ?',
  null,
  '[{"id":"a","label":"affirmer"},{"id":"b","label":"demander"},{"id":"c","label":"s''exclamer"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe introducteur doit refléter l''acte de parole rapporté. Pour rapporter une question, on utilise « demander » (ou « s''interroger », « vouloir savoir »). « Affirmer » sert à rapporter une assertion, et « s''exclamer » exprime une exclamation. Le choix du verbe introducteur est donc crucial pour restituer fidèlement l''intention du locuteur. Exemples : « Où vas-tu ? » → Il lui demanda où il allait.',
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
  'Les guillemets sont une marque typographique du discours direct, pas du discours indirect. Au discours indirect, les paroles sont intégrées à la phrase principale sous forme de proposition subordonnée, introduite par « que » (pour les énoncés assertifs) ou par un mot interrogatif (pour les questions). Il n''y a donc pas de guillemets au discours indirect. C''est précisément l''absence de guillemets et de deux-points qui distingue les deux modes de rapportage des paroles.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Transformez en discours indirect : « Viens ici tout de suite ! », cria-t-elle. Quelle transformation est correcte ?',
  null,
  '[{"id":"a","label":"Elle cria qu''il venait ici tout de suite."},{"id":"b","label":"Elle lui cria de venir là tout de suite."},{"id":"c","label":"Elle cria : « Viens ici tout de suite ! »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour transformer un ordre ou un impératif au discours indirect, on utilise la construction « verbe introducteur + de + infinitif ». L''impératif « viens » devient donc « de venir ». De plus, le déictique spatial « ici » devient « là » (changement de repère), et les points d''exclamation disparaissent. La réponse a) utilise incorrectement la structure « que + indicatif » qui ne convient pas pour un ordre. La réponse c) reste au discours direct.',
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
  'Au discours indirect, les questions totales (auxquelles on répond par oui ou non) sont introduites par « si ». Ici, « il se demanda si… » rapporte une question de type oui/non : « Ai-je bien fermé la porte ? » Les questions partielles (portant sur un élément de la phrase) utilisent un mot interrogatif : « il demanda où, quand, comment, pourquoi… ». L''emploi de « si » est donc le marqueur du discours indirect pour les interrogatives totales.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Lisez ce passage : **« Je suis fatiguée, pensait-elle, et je voudrais rentrer chez moi. »** De quel type de discours s''agit-il ?',
  'La journée avait été longue. Je suis fatiguée, pensait-elle, et je voudrais rentrer chez moi. Elle regarda l''heure et soupira.',
  '[{"id":"a","label":"Discours direct"},{"id":"b","label":"Discours indirect"},{"id":"c","label":"Discours indirect libre"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le discours indirect libre est un procédé intermédiaire qui emprunte au discours direct la vivacité et les marques d''énonciation (ici « je »), et au discours indirect l''absence de guillemets et la concordance des temps. Il se fond dans le récit sans deux-points ni guillemets obligatoires, mais on peut identifier un verbe de pensée (« pensait-elle ») en incise. Ce procédé est fréquent en littérature pour exprimer le flux de conscience d''un personnage.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '57000000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'grm_discours_direct_indirect', 'Discours direct et indirect', 'Intermediaire',
  'qcm',
  'Dans quelle phrase le verbe introducteur de discours indirect est-il correctement employé ?',
  null,
  '[{"id":"a","label":"Elle répondit qu''elle ne savait pas."},{"id":"b","label":"Elle demanda qu''elle ne savait pas."},{"id":"c","label":"Elle affirma si elle ne savait pas."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Répondre que » introduit correctement une assertion au discours indirect. La réponse b) est incorrecte car « demander » introduit une question et ne peut pas être suivi de « que » pour rapporter une assertion. La réponse c) mélange « affirmer » (assertion) avec « si » (marqueur d''interrogative indirecte totale), ce qui est agrammatical. Le choix du verbe introducteur et de sa construction syntaxique est donc déterminant pour la grammaticalité de la phrase.',
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
  'Cette phrase est bien au discours indirect : un ordre a été rapporté à l''aide de la construction « dire de + infinitif ». Le discours direct correspondant serait : « Il lui dit : "Tais-toi." » Les marques du discours indirect sont présentes : pas de guillemets, pas de deux-points, transformation de l''impératif en infinitif précédé de « de ». C''est la structure canonique pour rapporter un ordre au discours indirect en français.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- ============================================================
-- SÉRIE 58 — Ponctuation : rôle et emploi (Intermédiaire / free)
-- ============================================================

(
  '58000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Lisez le texte et répondez : quel rôle joue le point-virgule dans la phrase en gras ?',
  'Le ciel était d''un gris uniforme ; de lourds nuages s''amoncelaient à l''horizon. Les passants pressaient le pas, les uns regardant le sol, les autres scrutant le ciel avec inquiétude.',
  '[{"id":"a","label":"Il sépare deux éléments d''une liste courte."},{"id":"b","label":"Il marque une pause forte entre deux propositions liées par le sens."},{"id":"c","label":"Il introduit une explication ou une citation."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le point-virgule marque une pause plus forte que la virgule mais moins forte que le point. Il unit deux propositions indépendantes qui sont liées thématiquement : ici la description du ciel et celle des nuages forment un tout cohérent sur la météo. Il ne sépare pas une liste (rôle de la virgule) et n''introduit pas une explication (rôle des deux-points). Maîtriser le point-virgule permet d''articuler les idées avec nuance dans un écrit élaboré.',
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
  'Les guillemets ont plusieurs fonctions en français : encadrer le discours direct (« Il dit : "Viens !" »), signaler une citation, indiquer qu''un mot est employé avec distance ou ironie (un soi-disant "expert"), ou désigner un terme technique ou argotique. En français, les titres d''œuvres s''écrivent en italique et/ou avec une majuscule initiale, sans guillemets obligatoires. Il ne faut donc pas réduire les guillemets à une seule fonction.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Dans la phrase suivante, quel signe de ponctuation manque ? « Il avait apporté tout ce qu''il fallait : du pain du beurre et du fromage. »',
  null,
  '[{"id":"a","label":"Des virgules entre les éléments de la liste"},{"id":"b","label":"Un point d''exclamation à la fin"},{"id":"c","label":"Des guillemets autour des aliments"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Lorsqu''on énumère plusieurs éléments, la virgule sépare chacun d''eux, sauf le dernier qui est généralement précédé de « et ». La phrase correcte serait : « Il avait apporté tout ce qu''il fallait : du pain, du beurre et du fromage. » Les deux-points jouent ici leur rôle d''annonce, mais les éléments de la liste doivent être séparés par des virgules. L''absence de ces virgules nuit à la lisibilité et peut créer une ambiguïté sur le nombre d''éléments.',
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
  'Dans la mise en page d''un dialogue, chaque réplique d''un nouveau locuteur commence par un tiret cadratin (—), souvent en début de ligne. Ce tiret est distinct du tiret demi-cadratin (–) utilisé pour les incises ou les parenthèses. Il permet au lecteur d''identifier clairement qui prend la parole sans avoir à répéter « dit-il » à chaque réplique. C''est une convention typographique propre au dialogue littéraire en français.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Quel est le rôle des deux-points dans la phrase suivante ? « Elle avait une seule ambition : devenir médecin. »',
  null,
  '[{"id":"a","label":"Ils séparent deux propositions indépendantes."},{"id":"b","label":"Ils annoncent une explication ou une précision."},{"id":"c","label":"Ils introduisent un discours direct."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les deux-points ont plusieurs rôles : annoncer une liste, introduire une explication ou une précision, ou introduire un discours direct. Dans cette phrase, les deux-points annoncent la précision de l''ambition, c''est-à-dire une explication de ce que voulait dire « une seule ambition ». Ce n''est ni une liste ni un discours direct. Cette fonction d''explication ou de précision est très fréquente dans les textes argumentatifs et explicatifs.',
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
  'Les points de suspension ont plusieurs valeurs : inachèvement ou interruption d''un énoncé, hésitation, suggestion d''une suite sous-entendue, émotion ou silence. Ils peuvent marquer une liste incomplète (« Il a visité Paris, Lyon, Marseille… »), mais aussi une pause, une hésitation (« Je… je ne sais pas ») ou un sous-entendu. Les confondre avec un simple signe d''énumération serait réducteur. Ils sont toujours au nombre de trois et ne sont pas suivis d''un autre point final.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Dans quel cas la virgule est-elle obligatoire ?',
  null,
  '[{"id":"a","label":"Avant « et » dans une énumération à deux éléments"},{"id":"b","label":"Pour isoler une proposition incise ou une apposition"},{"id":"c","label":"Après le verbe conjugué"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La virgule est obligatoire pour isoler une proposition incise (« dit-il », « pensait-elle ») ou une apposition (« Marie, ma meilleure amie, est venue »). Elle est aussi nécessaire pour séparer des éléments d''une liste de trois éléments ou plus. En revanche, on ne met généralement pas de virgule avant « et » dans une simple coordination à deux éléments, ni après un verbe. L''incise et l''apposition doivent toujours être encadrées de virgules (ou d''un tiret).',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Analysez la ponctuation de ce texte. Quel signe permet d''encadrer la proposition incise dans : « La vie, affirma-t-il avec conviction, vaut la peine d''être vécue. » ?',
  'La vie, affirma-t-il avec conviction, vaut la peine d''être vécue.',
  '[{"id":"a","label":"Les guillemets"},{"id":"b","label":"Les virgules"},{"id":"c","label":"Les tirets"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans cette phrase, les virgules encadrent la proposition incise « affirma-t-il avec conviction » pour la détacher du reste de la phrase. L''incise est un segment intercalé qui commente ou attribue les paroles. Elle peut aussi être encadrée de tirets (« La vie — affirma-t-il — vaut… ») pour un effet de mise en relief plus marqué. Les guillemets, eux, sont réservés au discours direct ou aux citations. Les deux solutions (virgules ou tirets) sont donc acceptées selon les choix stylistiques.',
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
  'La tournure « est-ce que » est un marqueur de l''interrogation directe totale, et toute phrase interrogative directe se termine par un point d''interrogation. « Est-ce que tu viens ? » est bien une question directe. En revanche, si « est-ce que » apparaît dans une interrogative indirecte, il se transforme : « Je me demande si tu viens. » Il n''y a alors plus de point d''interrogation. La distinction directe/indirecte est donc essentielle pour l''emploi du point d''interrogation.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

(
  '58000000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'grm_ponctuation', 'Ponctuation : rôle et emploi', 'Intermediaire',
  'qcm',
  'Quelle phrase utilise correctement les deux-points pour introduire un discours direct ?',
  null,
  '[{"id":"a","label":"Il répondit, qu''il ne savait pas."},{"id":"b","label":"Il répondit : « Je ne sais pas. »"},{"id":"c","label":"Il répondit — Je ne sais pas."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La structure canonique du discours direct en français est : verbe de parole + deux-points + guillemets + paroles. La réponse b) respecte cette convention typographique. La réponse a) emploie une virgule à la place des deux-points et transforme la phrase en discours indirect. La réponse c) manque les guillemets et n''emploie pas le tiret correctement (le tiret sert à changer de locuteur dans un dialogue, pas à introduire une première réplique). Ces conventions sont normées en français standard.',
  'valide', 'CRPE Français — Grammaire V2', 'free', true
),

-- ============================================================
-- SÉRIE 59 — Groupe nominal et ses expansions (Intermédiaire / premium)
-- ============================================================

(
  '59000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Dans la phrase « La petite fille souriante jouait dans le jardin », quelle est la fonction de « petite » ?',
  null,
  '[{"id":"a","label":"Épithète liée"},{"id":"b","label":"Attribut du sujet"},{"id":"c","label":"Apposition"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''épithète liée est un adjectif qualificatif directement rattaché au nom qu''il qualifie, sans verbe attributif. Ici, « petite » est placé avant le nom « fille » et en est inséparable dans le groupe nominal. L''attribut du sujet, en revanche, est séparé du sujet par un verbe d''état (« La fille est petite »). L''apposition est un nom ou groupe nominal ajouté pour préciser le nom. La distinction épithète liée/épithète détachée/attribut est fondamentale en analyse grammaticale.',
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
  'L''apposition est une expansion du nom qui consiste à placer à côté d''un nom un autre nom (ou groupe nominal) ayant le même référent. Elle est généralement encadrée de virgules et entretient une relation d''équivalence avec le nom qu''elle précise. Ici, « mon voisin » désigne la même personne que « Paul » et précise son identité. On la distingue du complément du nom, qui est introduit par une préposition, et de l''épithète, qui est un adjectif.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Dans « un livre de recettes », quelle est la fonction de « de recettes » ?',
  null,
  '[{"id":"a","label":"Épithète"},{"id":"b","label":"Complément du nom"},{"id":"c","label":"Apposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le complément du nom est une expansion du groupe nominal introduite par une préposition (le plus souvent « de », mais aussi « à », « en », « pour »…). Il précise le nom noyau. Dans « un livre de recettes », « de recettes » complète et précise « livre » en indiquant son contenu. Il ne s''agit pas d''une épithète (qui serait un adjectif) ni d''une apposition (qui supposerait une équivalence référentielle). Le complément du nom est invariable et peut souvent être paraphrasé par une relative.',
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
  'Dans « Le chat est noir », « noir » est attribut du sujet, pas épithète liée. L''attribut du sujet est relié au sujet par un verbe d''état (être, paraître, sembler, devenir…). L''épithète liée, elle, est directement accolée au nom sans verbe intermédiaire : « Le chat noir dort. » La distinction est cruciale : l''attribut est une fonction syntaxique liée au prédicat, alors que l''épithète est une fonction interne au groupe nominal. Les deux peuvent être des adjectifs qualificatifs, mais leur rôle est différent.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Quelle est la structure minimale d''un groupe nominal ?',
  null,
  '[{"id":"a","label":"Déterminant + nom noyau"},{"id":"b","label":"Déterminant + adjectif + nom noyau"},{"id":"c","label":"Nom noyau + complément du nom"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La structure minimale (ou noyau) du groupe nominal est : déterminant + nom. Le déterminant (article, déterminant possessif, démonstratif, etc.) est indispensable pour actualiser le nom commun en contexte. Les expansions (épithète, apposition, complément du nom, proposition relative) sont facultatives et viennent enrichir ce noyau. Exemple minimal : « la maison ». Exemple étendu : « la belle maison de mes grands-parents qui surplombe la vallée ».',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Dans « la maison que nous avons visitée », quelle est la nature de l''expansion du nom « maison » ?',
  null,
  '[{"id":"a","label":"Complément du nom"},{"id":"b","label":"Proposition subordonnée relative"},{"id":"c","label":"Apposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La proposition subordonnée relative est introduite par un pronom relatif (que, qui, dont, où, lequel…) et complète un nom ou un pronom antécédent. Dans « la maison que nous avons visitée », « que nous avons visitée » est une proposition relative dont l''antécédent est « maison ». Elle développe et précise l''identité de la maison. Elle est à distinguer du complément du nom (groupe prépositionnel sans verbe conjugué) et de l''apposition (groupe nominal co-référent).',
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
  'L''épithète détachée (ou épithète détachée de l''adjectif) est une expansion facultative placée à distance du nom et séparée par une virgule. Exemple : « Épuisé, il s''endormit aussitôt. » L''adjectif « épuisé » est détaché du nom sujet « il ». On peut la supprimer sans que la phrase devienne agrammaticale : « Il s''endormit aussitôt. » En revanche, l''épithète liée est directement accolée au nom et ne peut en général pas être aussi facilement supprimée si elle est déterminante pour le sens.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Combien d''expansions contient le groupe nominal « ce grand château médiéval en ruine que j''admire » ?',
  null,
  '[{"id":"a","label":"Deux"},{"id":"b","label":"Trois"},{"id":"c","label":"Quatre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le groupe nominal « ce grand château médiéval en ruine que j''admire » contient trois expansions autour du nom noyau « château » : 1) l''épithète liée « grand » (adjectif antéposé) ; 2) l''épithète liée « médiéval » (adjectif postposé) ; 3) le complément du nom « en ruine » (groupe prépositionnel) ; 4) la proposition subordonnée relative « que j''admire ». En comptant précisément, on obtient quatre expansions. Cela illustre la richesse que peut atteindre un groupe nominal en français.',
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
  'Le complément du nom peut être introduit par diverses prépositions : « de » (une tasse de café), « à » (une tasse à café), « en » (un bracelet en argent), « pour » (une salle pour réunions)… Dans « une tasse à café », « à café » est bien un complément du nom introduit par la préposition « à ». Il précise la destination ou l''usage de la tasse. Notez la nuance avec « une tasse de café » : le premier désigne le contenant prévu pour le café, le second son contenu.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '59000000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'grm_groupe_nominal_expansions', 'Groupe nominal et ses expansions', 'Intermediaire',
  'qcm',
  'Quelle phrase contient une apposition correctement employée ?',
  null,
  '[{"id":"a","label":"Le directeur, homme sévère, prit la parole."},{"id":"b","label":"Le directeur sévère prit la parole."},{"id":"c","label":"Le directeur prit sévèrement la parole."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Dans la réponse a), « homme sévère » est un groupe nominal apposé au nom « directeur » : il est encadré de virgules, co-référent au nom noyau (désigne la même personne), et apporte une précision descriptive. C''est l''emploi canonique de l''apposition. Dans b), « sévère » est une épithète liée directement accolée au nom. Dans c), « sévèrement » est un adverbe qui modifie le verbe. Les trois réponses sont grammaticalement correctes, mais seule a) illustre l''apposition.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

-- ============================================================
-- SÉRIE 60 — Coordination et subordination (Avancé / premium)
-- ============================================================

(
  '60000000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Quelle est la nature du lien entre les deux propositions dans : « Il travaille dur, car il veut réussir son concours » ?',
  null,
  '[{"id":"a","label":"Juxtaposition"},{"id":"b","label":"Coordination"},{"id":"c","label":"Subordination"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Car » est une conjonction de coordination qui exprime la cause. Les sept conjonctions de coordination en français sont : mais, ou, et, donc, or, ni, car — mémorisables par le moyen mnémotechnique « MOEDONNIC » ou « mais ou est donc or ni car ». La coordination unit deux propositions de même niveau syntaxique. La subordination, elle, implique une dépendance hiérarchique (proposition principale / subordonnée). La juxtaposition, enfin, se fait par la seule ponctuation.',
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
  'La juxtaposition consiste à mettre côte à côte deux propositions sans aucun mot de liaison (ni conjonction de coordination, ni conjonction de subordination) : le lien est assuré uniquement par la ponctuation (point, virgule, point-virgule, deux-points). Ici, les deux phrases indépendantes sont simplement juxtaposées par un point. Le lecteur déduit le lien logique (cause / conséquence) sans qu''il soit explicitement formulé. La juxtaposition est ainsi le procédé le plus implicite des trois modes de liaison.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Dans « Je viendrai si tu m''invites », quel type de lien syntaxique est exprimé ?',
  null,
  '[{"id":"a","label":"Coordination par « donc »"},{"id":"b","label":"Subordination conditionnelle"},{"id":"c","label":"Juxtaposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Si » est une conjonction de subordination qui introduit une proposition subordonnée circonstancielle de condition. La proposition « si tu m''invites » dépend syntaxiquement de la proposition principale « Je viendrai ». La subordination crée une relation hiérarchique : la subordonnée ne peut pas fonctionner seule comme phrase autonome. Le « si » conditionnel se distingue du « si » interrogatif indirect (« Je me demande si tu viendras ») par son rôle syntaxique et son mode verbal (indicatif, jamais conditionnel dans la subordonnée conditionnelle).',
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
  'On distingue : la phrase simple (un seul verbe conjugué, une seule proposition), la phrase composée (plusieurs propositions indépendantes coordonnées ou juxtaposées), et la phrase complexe (au moins une proposition principale et au moins une proposition subordonnée). Dans la phrase complexe, la subordonnée dépend syntaxiquement de la principale : elle ne peut pas fonctionner de façon autonome. « Je pense que tu as raison » est complexe : « que tu as raison » est une subordonnée complétive.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Quel lien logique la conjonction de coordination « donc » exprime-t-elle ?',
  null,
  '[{"id":"a","label":"Opposition"},{"id":"b","label":"Conséquence"},{"id":"c","label":"Addition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Donc » exprime la conséquence : la deuxième proposition découle logiquement de la première. Exemples : « Il a bien révisé, donc il a réussi. » Parmi les sept conjonctions de coordination, les liens logiques sont variés : « et » (addition), « ou » (alternative), « mais » (opposition), « or » (transition/opposition), « ni » (négation additive), « car » (cause), « donc » (conséquence). Connaître ces valeurs sémantiques est essentiel pour analyser la structure argumentative d''un texte.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Dans la phrase « Bien qu''il soit fatigué, il continue à travailler », quelle est la valeur de la subordonnée ?',
  null,
  '[{"id":"a","label":"Cause"},{"id":"b","label":"Condition"},{"id":"c","label":"Concession"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Bien que » est une conjonction de subordination qui introduit une proposition subordonnée circonstancielle de concession (ou d''opposition). La concession indique que le fait exprimé dans la subordonnée ne suffit pas à empêcher celui de la principale. Ici : malgré la fatigue, le travail continue. Elle se construit avec le subjonctif. Les conjonctions de concession usuelles sont : bien que, quoique, encore que, même si (avec l''indicatif). Ne pas confondre avec la cause (parce que, puisque) ni la condition (si, à condition que).',
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
  'La coordination et la juxtaposition unissent des propositions de même niveau syntaxique, c''est-à-dire des propositions indépendantes qui pourraient chacune former une phrase complète. C''est ce qui les distingue de la subordination, où la proposition subordonnée dépend de la principale. Dans « Il chante et elle danse », les deux propositions sont de même statut : elles sont coordonnées par « et ». Aucune n''est hiérarchiquement inférieure à l''autre, contrairement à une subordonnée.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Identifiez la phrase complexe parmi les suivantes :',
  null,
  '[{"id":"a","label":"Le vent souffle et les feuilles tombent."},{"id":"b","label":"Le vent qui souffle fort fait tomber les feuilles."},{"id":"c","label":"Le vent souffle fort ; les feuilles tombent."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase b) est complexe car elle contient une proposition principale (« Le vent fait tomber les feuilles ») et une proposition subordonnée relative (« qui souffle fort ») qui dépend du nom « vent ». La phrase a) est composée (deux indépendantes coordonnées par « et »). La phrase c) est composée par juxtaposition (deux indépendantes séparées par un point-virgule). La présence d''une proposition subordonnée (relative, conjonctive ou interrogative indirecte) est le critère définitoire de la phrase complexe.',
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
  '« Or » est une conjonction de coordination qui exprime une transition argumentative ou une opposition logique, notamment dans un raisonnement. Exemple : « Tous les hommes sont mortels ; or Socrate est un homme ; donc Socrate est mortel. » Ce n''est pas une conjonction de cause (rôle de « car », « parce que »). « Or » introduit souvent une information nouvelle qui contraste avec ou nuance ce qui précède, et est fréquente dans les syllogismes et la dissertation. La confondre avec « car » est une erreur courante.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
),

(
  '60000000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'grm_coordination_subordination', 'Coordination et subordination', 'Avance',
  'qcm',
  'Quelle conjonction de subordination exprime le but ?',
  null,
  '[{"id":"a","label":"parce que"},{"id":"b","label":"afin que"},{"id":"c","label":"bien que"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Afin que » est une conjonction de subordination qui exprime le but ou la finalité : « Il parle lentement afin que tout le monde comprenne. » Elle se construit avec le subjonctif. Les autres conjonctions de but sont : pour que, de peur que (but négatif), de crainte que. « Parce que » exprime la cause (avec l''indicatif), et « bien que » exprime la concession (avec le subjonctif). Distinguer ces valeurs logiques est essentiel pour analyser et produire des textes argumentatifs.',
  'valide', 'CRPE Français — Grammaire V2', 'premium', true
);
