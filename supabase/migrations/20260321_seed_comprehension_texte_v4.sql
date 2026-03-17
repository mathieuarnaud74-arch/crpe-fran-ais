-- CRPE Français — Compréhension de texte V4 (2 séries × 10 questions)
-- subdomain : comprehension_texte
-- Séries 73, 74 — toutes FREE
-- Appliquer APRÈS seed_content_comprehension_texte_v3.sql

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 73 — Repérage explicite : textes courts — Facile — free
-- topic_key : cpt_reperage_explicite
-- ================================================================

-- Q1 — correct = b
('73000000-0000-0000-0000-000000000001','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','qcm',
'Lis ce texte, puis réponds à la question. — Quel animal est décrit dans ce texte ?',
'Le hérisson est un petit mammifère recouvert de piquants. Il se nourrit principalement d''insectes, de vers et de limaces. La nuit venue, il part à la recherche de sa nourriture dans les jardins et les haies.',
'[{"id":"a","label":"Un écureuil"},{"id":"b","label":"Un hérisson"},{"id":"c","label":"Un blaireau"},{"id":"d","label":"Un lapin"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''information est directement écrite à la première ligne : « Le hérisson est un petit mammifère... ». C''est du repérage littéral : l''animal est nommé explicitement dès le début du texte. Aucune déduction n''est nécessaire — on peut souligner le mot dans le texte pour confirmer.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q2 — correct = c
('73000000-0000-0000-0000-000000000002','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','qcm',
'Lis ce texte, puis réponds à la question. — À quelle heure la bibliothèque ferme-t-elle le mardi ?',
'La bibliothèque municipale est ouverte du lundi au vendredi. Le lundi, mercredi et vendredi, elle est ouverte de 9h à 18h. Le mardi et le jeudi, les horaires sont élargis : de 9h à 20h pour mieux accueillir les familles après l''école.',
'[{"id":"a","label":"À 9h"},{"id":"b","label":"À 18h"},{"id":"c","label":"À 20h"},{"id":"d","label":"À 19h"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le texte précise explicitement que « Le mardi et le jeudi, les horaires sont élargis : de 9h à 20h ». Il suffit de localiser la phrase contenant « mardi » et de repérer l''heure de fermeture. Stratégie : chercher le mot-clé « mardi » dans le texte, puis lire la phrase correspondante.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q3 — correct = a
('73000000-0000-0000-0000-000000000003','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','qcm',
'Lis ce texte, puis réponds à la question. — Quelle matière préfère Clara selon le texte ?',
'Clara est en CE2 dans une école de Lyon. Elle adore les mathématiques et passe du temps à résoudre des problèmes difficiles. En revanche, elle trouve la grammaire plus compliquée et demande souvent de l''aide à sa maîtresse.',
'[{"id":"a","label":"Les mathématiques"},{"id":"b","label":"La grammaire"},{"id":"c","label":"La lecture"},{"id":"d","label":"Le dessin"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le texte dit explicitement : « Elle adore les mathématiques ». Le verbe « adorer » indique clairement la préférence. À l''opposé, la grammaire est présentée comme difficile pour Clara. L''information est en surface du texte — pas besoin d''inférer.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q4 — correct = d
('73000000-0000-0000-0000-000000000004','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','qcm',
'Lis ce texte, puis réponds à la question. — Combien d''œufs faut-il pour cette recette ?',
'Gâteau au chocolat — Pour 6 personnes. Ingrédients : 200 g de chocolat noir, 150 g de beurre, 4 œufs, 120 g de sucre, 80 g de farine.',
'[{"id":"a","label":"2 œufs"},{"id":"b","label":"3 œufs"},{"id":"c","label":"6 œufs"},{"id":"d","label":"4 œufs"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La liste des ingrédients indique explicitement « 4 œufs ». L''information est directement accessible dans le texte. Pour des textes à structure de liste (recettes, modes d''emploi, tableaux), la lecture sélective consiste à balayer les items jusqu''à trouver le mot-clé recherché (ici : « œufs »).',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q5 — correct = b
('73000000-0000-0000-0000-000000000005','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','qcm',
'Lis ce texte, puis réponds à la question. — Où vit l''auteure de cette lettre ?',
'Chère Mamie, Je t''écris depuis Bordeaux où je suis installée depuis deux ans. Ma vie ici est très agréable : j''ai un bel appartement près de la Garonne et un travail que j''aime. J''espère te voir bientôt ! Bisous, Lucie.',
'[{"id":"a","label":"À Paris"},{"id":"b","label":"À Bordeaux"},{"id":"c","label":"Près de la mer"},{"id":"d","label":"Dans le sud de la France sans précision"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La lettre indique explicitement : « Je t''écris depuis Bordeaux où je suis installée depuis deux ans ». La ville est nommée directement. La réponse d est incorrecte : bien que Bordeaux soit dans le sud-ouest, le texte donne une information précise — Bordeaux — et non une information vague.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q6 — vrai_faux — correct = false
('73000000-0000-0000-0000-000000000006','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','vrai_faux',
'Texte : « Le musée ouvre ses portes à 10h et ferme à 18h. Le mercredi, il est ouvert en nocturne jusqu''à 21h. L''entrée est gratuite pour les moins de 18 ans. » — Vrai ou faux : Le musée ferme à 18h tous les jours de la semaine.',
null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Le texte précise bien que « le mercredi, il est ouvert en nocturne jusqu''à 21h » — donc le mercredi, la fermeture n''est pas à 18h. Pour une question de repérage, il faut lire l''intégralité du texte, y compris les exceptions et les nuances. L''erreur classique consiste à s''arrêter à la première information trouvée sans lire la suite.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q7 — correct = c
('73000000-0000-0000-0000-000000000007','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','qcm',
'Dans un cours de lecture, un enseignant demande à ses élèves de trouver « l''information explicite » dans un texte. Qu''attend-il qu''ils fassent ?',
null,
'[{"id":"a","label":"Donner leur avis personnel sur le texte"},{"id":"b","label":"Imaginer ce qui pourrait se passer après la fin du texte"},{"id":"c","label":"Pointer et relire la phrase du texte qui répond directement à la question"},{"id":"d","label":"Relier les indices du texte pour déduire une information non formulée"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Une information explicite est directement écrite dans le texte : l''élève doit la localiser et la citer ou la reformuler. La réponse d décrit au contraire le travail d''inférence. La distinction explicite/inférence est fondamentale dans l''enseignement de la compréhension en lecture (programmes 2016, cycle 2 et 3).',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q8 — correct = a
('73000000-0000-0000-0000-000000000008','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','qcm',
'Lis ce texte, puis réponds à la question. — Quel moyen de transport utilise Tom pour aller à l''école ?',
'Tom habite à deux kilomètres de son école. Chaque matin, il enfourche son vélo et roule pendant dix minutes pour arriver à l''heure. Ses parents lui ont offert ce vélo pour son anniversaire.',
'[{"id":"a","label":"Le vélo"},{"id":"b","label":"La voiture"},{"id":"c","label":"La marche à pied"},{"id":"d","label":"Le bus"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le texte indique explicitement : « il enfourche son vélo et roule ». Le verbe « enfourcher » et le mot « vélo » donnent directement l''information. Les autres réponses (voiture, marche, bus) ne sont pas mentionnées dans le texte.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q9 — vrai_faux — correct = true
('73000000-0000-0000-0000-000000000009','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','vrai_faux',
'Vrai ou faux : dans un texte, une information est explicite si on peut la souligner directement dans le texte pour répondre à la question.',
null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! C''est une définition opérationnelle excellente à utiliser avec les élèves : « tu peux pointer le doigt sur la réponse dans le texte ». Si l''élève doit combiner des informations, déduire ou imaginer ce que le texte ne dit pas, on sort du domaine de l''explicite pour entrer dans celui de l''inférence.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q10 — correct = d
('73000000-0000-0000-0000-000000000010','Francais','comprehension_texte','cpt_reperage_explicite','Repérage explicite : textes courts','Facile','qcm',
'Quelle stratégie de lecture est la plus adaptée pour retrouver rapidement une information précise dans un texte long ?',
null,
'[{"id":"a","label":"Lire mot à mot depuis le début jusqu''à trouver l''information"},{"id":"b","label":"Lire uniquement la première et la dernière phrase de chaque paragraphe"},{"id":"c","label":"Lire le texte à voix haute pour mieux retenir"},{"id":"d","label":"Balayer le texte en cherchant visuellement les mots-clés de la question (scanning)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le scanning (balayage) est la stratégie la plus efficace pour localiser une information précise : on parcourt rapidement le texte en cherchant visuellement les mots-clés liés à la question. C''est une compétence enseignée à l''école primaire dès le cycle 2. Elle s''oppose à la lecture linéaire intégrale, qui est plus adaptée à la compréhension globale d''un texte narratif.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- ================================================================
-- SÉRIE 74 — Inférences et implicite niveau 1 — Intermédiaire — free
-- topic_key : cpt_inference_facile
-- ================================================================

-- Q1 — correct = c
('74000000-0000-0000-0000-000000000001','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','qcm',
'Lis ce texte, puis réponds à la question. — Que peut-on déduire de ce que ressent Lucie ?',
'Lucie ouvrit l''enveloppe avec des doigts tremblants. Elle lut les premiers mots, puis relut deux fois la même ligne. Un sourire s''étira lentement sur ses lèvres.',
'[{"id":"a","label":"Lucie est en colère contre la personne qui lui a écrit"},{"id":"b","label":"Lucie n''a pas compris ce qu''elle lisait"},{"id":"c","label":"Lucie reçoit une bonne nouvelle et est soulagée ou heureuse"},{"id":"d","label":"Lucie est fatiguée et lit difficilement"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Les indices textuels (doigts tremblants = attente anxieuse, relire deux fois = incrédulité, sourire = réaction positive) permettent de construire l''inférence : Lucie reçoit une bonne nouvelle. Le sourire est le signal émotionnel clé. Cette inférence est de type « état émotionnel » — la plus fréquente dans les textes narratifs lus à l''école primaire.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q2 — correct = b
('74000000-0000-0000-0000-000000000002','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','qcm',
'Lis ce texte, puis réponds à la question. — Qu''est-il vraisemblablement arrivé à Hugo ?',
'Hugo rentra à la maison, les vêtements trempés, les cheveux collés sur le front. Il posa son sac en soupirant et alla directement chercher une serviette dans la salle de bain.',
'[{"id":"a","label":"Hugo a sauté dans une piscine avec ses vêtements"},{"id":"b","label":"Hugo a été surpris par la pluie sans parapluie"},{"id":"c","label":"Hugo a renversé un verre d''eau sur lui"},{"id":"d","label":"Hugo avait trop chaud et a transpiré"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les indices (vêtements trempés, cheveux collés, soupir, chercher une serviette) pointent vers une pluie inattendue. La réponse a est possible mais implique un contexte (piscine) non évoqué. La réponse d (transpiration) ne rendrait pas les vêtements « trempés » de la même façon. C''est une inférence causale : le lecteur reconstruit la cause à partir des effets observés.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q3 — correct = d
('74000000-0000-0000-0000-000000000003','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','qcm',
'Qu''est-ce qu''une inférence en compréhension de lecture ?',
null,
'[{"id":"a","label":"Une erreur de lecture commise par un lecteur peu attentif"},{"id":"b","label":"Une information directement présente dans le texte que le lecteur doit souligner"},{"id":"c","label":"Un résumé du texte réalisé à la fin de la lecture"},{"id":"d","label":"Une information implicite que le lecteur construit en combinant les indices du texte et ses connaissances"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Une inférence est une information que le texte ne formule pas explicitement mais que le lecteur construit à partir des indices du texte et de ses connaissances. Ce n''est pas une erreur : c''est une compétence de lecture fine, attendue au CRPE et enseignée aux élèves dès le cycle 2. La confusion avec la réponse b est fréquente — mais la réponse b décrit le repérage explicite.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q4 — vrai_faux — correct = true
('74000000-0000-0000-0000-000000000004','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','vrai_faux',
'Texte : « La maison était silencieuse. Toutes les lumières étaient éteintes. » — Vrai ou faux : on peut inférer que les habitants de la maison sont absents ou endormis.',
null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Le silence et les lumières éteintes sont deux indices convergents qui permettent d''inférer l''absence d''activité humaine dans la maison. Les personnes présentes sont soit endormies, soit absentes. C''est une inférence spatiotemporelle solide car les deux indices se renforcent mutuellement.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q5 — correct = a
('74000000-0000-0000-0000-000000000005','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','qcm',
'Lis ce texte, puis réponds à la question. — Quelle inférence peut-on faire sur la relation entre les deux personnages ?',
'— Tu es encore en retard ! dit Camille en croisant les bras. — Je suis désolé, il y avait des embouteillages... — Tu dis ça à chaque fois, répondit-elle sans le regarder.',
'[{"id":"a","label":"Ce n''est pas la première fois que cette situation se produit — Camille est habituée aux retards de cet homme"},{"id":"b","label":"Camille et cet homme se rencontrent pour la première fois"},{"id":"c","label":"Camille est heureuse de voir arriver cet homme malgré son retard"},{"id":"d","label":"Cet homme n''a pas de voiture et prend toujours les transports en commun"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''expression « Tu dis ça à chaque fois » est l''indice central : elle implique une répétition, donc que ce n''est pas la première fois. L''inférence est de type « relation interpersonnelle » : on déduit une habitude à partir d''une formulation qui implique une répétition passée. La réponse d est une interprétation non étayée — rien dans le texte ne parle de voiture ni de transports.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q6 — correct = b
('74000000-0000-0000-0000-000000000006','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','qcm',
'Pourquoi les élèves de primaire font-ils souvent des erreurs sur les questions inférentielles ?',
null,
'[{"id":"a","label":"Parce qu''ils lisent trop vite et ne font pas attention au texte"},{"id":"b","label":"Parce que l''information à construire n''est pas directement présente dans le texte et nécessite un travail cognitif supplémentaire"},{"id":"c","label":"Parce que les inférences sont toujours liées à des mots de vocabulaire difficiles"},{"id":"d","label":"Parce qu''on ne leur enseigne pas à lire avant le CE2"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les questions inférentielles sont plus difficiles car le lecteur doit construire l''information plutôt que de la pointer dans le texte. Cela mobilise davantage la mémoire de travail, les connaissances du monde et le raisonnement. Les recherches en psychologie cognitive (Cain & Oakhill) montrent que les difficultés de compréhension en lecture sont souvent liées à des déficits dans le traitement de l''implicite, pas dans le décodage.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q7 — correct = c
('74000000-0000-0000-0000-000000000007','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','qcm',
'Lis ce texte, puis réponds à la question. — À quel moment de la journée se passe cette scène ?',
'Les rues étaient désertes. Seul le bruit de ses pas résonnait sur les pavés humides. Au loin, les lampadaires jetaient des halos orange dans la brume.',
'[{"id":"a","label":"Le matin, juste avant le lever du soleil"},{"id":"b","label":"En début d''après-midi"},{"id":"c","label":"La nuit"},{"id":"d","label":"Au coucher du soleil"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Les indices convergent vers la nuit : rues désertes (pas de vie diurne), lampadaires allumés (éclairage nocturne), brume (fréquente la nuit). La réponse a (avant l''aube) serait aussi possible, mais la réponse c (la nuit) est la plus générale et la mieux étayée. C''est une inférence spatiotemporelle à partir d''un faisceau d''indices.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q8 — vrai_faux — correct = false
('74000000-0000-0000-0000-000000000008','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','vrai_faux',
'Texte : « Mathieu jeta un coup d''œil à sa montre, accéléra le pas et rattrapa son manteau qui s''envolait. » — Vrai ou faux : on peut inférer qu''il fait beau et chaud.',
null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Le manteau qui « s''envole » est un indice de vent, pas de chaleur. Un temps chaud n''implique pas qu''on porte un manteau ni qu''il vole. On peut au contraire inférer qu''il fait frais ou venteux. C''est un exemple de mauvaise inférence : une hypothèse qui va à l''encontre des indices du texte.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q9 — correct = d
('74000000-0000-0000-0000-000000000009','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','qcm',
'Lis ce texte, puis réponds à la question. — Que peut-on inférer sur la situation financière de la famille ?',
'Chaque soir, avant de dormir, les trois enfants se réunissaient autour de la même lampe de chevet pour lire ensemble. La maison n''était pas grande, mais elle était toujours propre et rangée.',
'[{"id":"a","label":"La famille est très riche et possède de nombreuses lampes"},{"id":"b","label":"Les enfants n''aiment pas lire seuls et préfèrent la compagnie"},{"id":"c","label":"La famille a des difficultés économiques importantes et ne peut pas se nourrir"},{"id":"d","label":"La famille a peu de ressources mais maintient un foyer ordonné malgré ses contraintes"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Les indices (une seule lampe de chevet partagée entre trois enfants, maison « pas grande ») suggèrent des ressources limitées. Mais « toujours propre et rangée » signale une dignité maintenue malgré la contrainte. La réponse c exagère l''inférence au-delà de ce que le texte permet (difficultés alimentaires : rien ne le suggère). La réponse d est la plus nuancée et la mieux ancrée dans les indices.',
'valide','CRPE Français V4 — Compréhension texte','free',true),

-- Q10 — correct = b
('74000000-0000-0000-0000-000000000010','Francais','comprehension_texte','cpt_inference_facile','Inférences et implicite niveau 1','Intermediaire','qcm',
'Comment un enseignant peut-il aider ses élèves à améliorer leurs compétences inférentielles ?',
null,
'[{"id":"a","label":"En leur demandant de mémoriser des listes d''inférences types"},{"id":"b","label":"En modélisant à voix haute le raisonnement permettant de passer des indices du texte à la conclusion, puis en guidant progressivement les élèves vers l''autonomie"},{"id":"c","label":"En leur donnant des textes plus faciles où toutes les informations sont explicites"},{"id":"d","label":"En supprimant les questions inférentielles des évaluations pour ne pas décourager les élèves faibles"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''enseignement explicite des stratégies inférentielles est la démarche la plus efficace selon les recherches (Palincsar & Brown, Cain & Oakhill). La modélisation (think-aloud) permet à l''enseignant de rendre visible un processus habituellement invisible. On passe ensuite par l''étayage progressif jusqu''à l''autonomie des élèves. La réponse c est contre-productive : supprimer le défi n''aide pas à construire la compétence.',
'valide','CRPE Français V4 — Compréhension texte','free',true)

;
