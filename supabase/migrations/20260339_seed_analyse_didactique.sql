-- ============================================================
-- Migration : 20 nouvelles séries (Batch 3/3 — Analyse + Didactique)
-- 5 séries × 10 questions = 50 exercices
-- Domaines : analyse_langue, didactique_francais
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Les subordonnées relatives
-- Topic : anal_subordonnees_relatives
-- UUID prefix : c3010000
-- 3 qcm, 2 vrai_faux, 3 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Identifier le pronom relatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Facile',
  'qcm',
  'Dans la phrase « L''élève dont je t''ai parlé a réussi son examen », quel est le pronom relatif ?',
  NULL,
  '[{"id":"a","label":"que"},{"id":"b","label":"dont"},{"id":"c","label":"qui"},{"id":"d","label":"où"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le pronom relatif est « dont ». Il introduit la subordonnée relative « dont je t''ai parlé » et reprend l''antécédent « l''élève ». « Dont » est la forme du pronom relatif utilisée quand le verbe de la subordonnée se construit avec la préposition « de » : on dit « parler DE quelqu''un », donc « dont je t''ai parlé ». C''est un critère fiable au CRPE : chercher la construction prépositionnelle du verbe de la subordonnée.',
  'Confondre « dont » et « que » : « dont » remplace un complément introduit par « de », tandis que « que » remplace un COD.',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Le pronom relatif a toujours un antécédent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Une subordonnée relative a toujours un antécédent exprimé dans la phrase.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux ! Il existe des subordonnées relatives dites « substantives » (ou « sans antécédent ») où le pronom relatif n''a pas d''antécédent exprimé. Exemple : « Qui vivra verra » — « qui vivra » est une relative substantive, le pronom « qui » ne reprend aucun nom. Ces relatives fonctionnent comme un GN et peuvent occuper la fonction sujet, COD, etc. C''est un point subtil qui distingue les copies au CRPE.',
  'Croire que toute relative a obligatoirement un antécédent : les relatives substantives comme « Qui dort dîne » contredisent cette idée.',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Réponse courte — Trouver l''antécédent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Facile',
  'reponse_courte',
  'Dans « Le livre que tu lis est passionnant », quel est l''antécédent du pronom relatif « que » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["livre","le livre","Le livre"]}'::jsonb,
  'L''antécédent est « le livre ». Le pronom relatif « que » reprend ce GN et le relie à la subordonnée « que tu lis ». Pour trouver l''antécédent, on cherche le nom (ou le GN) placé juste avant le pronom relatif et qu''il représente dans la subordonnée. Ici, « que » est COD du verbe « lis » dans la subordonnée (tu lis quoi ? → le livre).',
  'Donner le pronom relatif lui-même au lieu de l''antécédent : l''antécédent est le nom repris, pas le pronom.',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Fonction du pronom relatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Intermediaire',
  'qcm',
  'Dans « La ville où je suis né est magnifique », quelle est la fonction du pronom relatif « où » dans la subordonnée ?',
  NULL,
  '[{"id":"a","label":"Sujet"},{"id":"b","label":"COD"},{"id":"c","label":"Complément circonstanciel de lieu"},{"id":"d","label":"Complément du nom"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le pronom relatif « où » a la fonction de complément circonstanciel de lieu dans la subordonnée. Pour le vérifier, on remplace le pronom par son antécédent : « je suis né DANS CETTE VILLE » — c''est bien un CC de lieu. Le pronom « où » peut aussi exprimer le temps : « le jour où il est parti » (CC de temps). Au CRPE, on attend que vous analysiez la fonction du pronom relatif À L''INTÉRIEUR de la subordonnée, pas dans la principale.',
  'Analyser la fonction de la subordonnée entière au lieu de la fonction du pronom relatif dans la subordonnée.',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Tri catégories — Classer les pronoms relatifs par fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Intermediaire',
  'tri_categories',
  'Classez chaque pronom relatif selon la fonction qu''il occupe le plus souvent dans la subordonnée.',
  NULL,
  '[{"id":"w1","label":"qui (sujet)"},{"id":"w2","label":"que (COD)"},{"id":"w3","label":"dont (compl. du nom/verbe)"},{"id":"w4","label":"où (CC lieu/temps)"},{"id":"w5","label":"lequel (après préposition)"},{"id":"w6","label":"quoi (après préposition)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"essent","label":"Fonction essentielle (sujet/COD)"},{"id":"prep","label":"Fonction prépositionnelle"},{"id":"circ","label":"Fonction circonstancielle"}],"mapping":{"w1":"essent","w2":"essent","w3":"prep","w4":"circ","w5":"prep","w6":"prep"}}'::jsonb,
  'Les pronoms relatifs se répartissent selon leur fonction dominante. « Qui » est sujet, « que » est COD : ce sont des fonctions essentielles. « Dont » reprend un complément construit avec « de » (complément du nom ou du verbe), « lequel » et « quoi » suivent une préposition : fonctions prépositionnelles. « Où » exprime le lieu ou le temps : fonction circonstancielle. Cette classification aide à choisir le bon pronom relatif en production écrite.',
  'Classer « dont » comme circonstanciel alors qu''il remplace un complément introduit par « de » (fonction prépositionnelle).',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Fonction de « qui »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Intermediaire',
  'reponse_courte',
  'Dans « L''homme qui court dans le parc est mon voisin », quelle est la fonction du pronom relatif « qui » dans la subordonnée ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["sujet","sujet du verbe court","sujet du verbe courir","sujet de la subordonnée"]}'::jsonb,
  '« Qui » est sujet du verbe « court » dans la subordonnée relative. Méthode : on remplace le pronom par l''antécédent → « l''homme court dans le parc ». L''homme est bien sujet de « court ». Règle à retenir : le pronom relatif « qui » est presque toujours sujet dans la subordonnée. C''est la forme simple sujet du pronom relatif, invariable en genre et en nombre.',
  'Dire que « qui » est complément parce qu''il suit un nom : la position dans la phrase ne détermine pas la fonction du pronom relatif.',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/Faux — Relative déterminative vs explicative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « Les élèves qui ont terminé peuvent sortir », la relative est déterminative (restrictive) : elle restreint l''ensemble des élèves concernés.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Vrai ! La relative « qui ont terminé » est déterminative (ou restrictive) : elle restreint l''antécédent « les élèves » à ceux qui ont terminé. Seuls ceux-là peuvent sortir, pas tous les élèves. Si on supprime cette relative, le sens change radicalement. À l''inverse, une relative explicative (ou appositive) apporte une information supplémentaire non essentielle, souvent entre virgules : « Les élèves, qui avaient bien travaillé, sont sortis en avance. » Ici, TOUS les élèves sont concernés.',
  'Confondre relative déterminative et explicative : la déterminative restreint (essentielle au sens), l''explicative ajoute une information (supprimable sans changer le sens fondamental).',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Choix du pronom relatif composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Difficile',
  'qcm',
  'Complétez : « La raison pour ______ il est parti reste mystérieuse. »',
  NULL,
  '[{"id":"a","label":"que"},{"id":"b","label":"laquelle"},{"id":"c","label":"dont"},{"id":"d","label":"qui"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il faut « laquelle » car le pronom relatif est précédé de la préposition « pour ». Après une préposition, on utilise les formes composées du pronom relatif (lequel, laquelle, lesquels, lesquelles) qui s''accordent en genre et en nombre avec l''antécédent. « Raison » est féminin singulier → « laquelle ». Exception : « qui » peut s''employer après une préposition pour les personnes (« la personne à qui je parle »), mais « laquelle » reste toujours correct.',
  'Utiliser « que » après une préposition : « que » ne peut jamais être précédé d''une préposition, c''est « lequel » et ses formes qui jouent ce rôle.',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Fonction de la subordonnée relative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Difficile',
  'reponse_courte',
  'Dans « Le chat que nous avons recueilli est adorable », quelle est la fonction de la subordonnée relative « que nous avons recueilli » par rapport à son antécédent ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["complément de l''antécédent","complément du nom","épithète","expansion du nom","complément de l''antécédent chat","épithète du nom chat"]}'::jsonb,
  'La subordonnée relative « que nous avons recueilli » est complément de l''antécédent « chat ». Elle fonctionne comme une expansion du nom, au même titre qu''un adjectif épithète ou un complément du nom. Ne confondez pas la fonction de la SUBORDONNÉE (complément de l''antécédent, dans la principale) avec la fonction du PRONOM RELATIF « que » (COD de « avons recueilli », dans la subordonnée). Le CRPE exige cette double analyse.',
  'Confondre la fonction de la subordonnée relative (complément de l''antécédent) avec la fonction du pronom relatif à l''intérieur de la subordonnée (ici COD).',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Relative adjective vs relative substantive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'anal_subordonnees_relatives',
  'Les subordonnées relatives',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase selon que la subordonnée relative est adjective (avec antécédent) ou substantive (sans antécédent).',
  NULL,
  '[{"id":"w1","label":"Le film que j''ai vu était excellent."},{"id":"w2","label":"Qui veut voyager loin ménage sa monture."},{"id":"w3","label":"La rue où j''habite est calme."},{"id":"w4","label":"Choisis ce qui te plaît."},{"id":"w5","label":"Quiconque triche sera éliminé."},{"id":"w6","label":"Le jardin dont il rêve n''existe pas."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"adj","label":"Relative adjective (avec antécédent)"},{"id":"sub","label":"Relative substantive (sans antécédent)"}],"mapping":{"w1":"adj","w2":"sub","w3":"adj","w4":"sub","w5":"sub","w6":"adj"}}'::jsonb,
  'La relative adjective complète un antécédent nominal (« le film QUE j''ai vu », « la rue OÙ j''habite », « le jardin DONT il rêve »). La relative substantive n''a pas d''antécédent et fonctionne elle-même comme un GN : « Qui veut voyager loin » = sujet, « ce qui te plaît » = COD, « Quiconque triche » = sujet. Au CRPE, identifiez d''abord si un nom précède le pronom relatif : s''il n''y en a pas (ou seulement un démonstratif « ce »), c''est une relative substantive.',
  'Considérer « ce qui te plaît » comme une relative adjective en prenant « ce » pour un antécédent nominal : « ce » est un pronom démonstratif neutre, et l''ensemble « ce qui » forme une relative substantive.',
  'valide',
  'CRPE Français — Subordonnées relatives',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Compléments circonstanciels
-- Topic : anal_complements_circ
-- UUID prefix : c3020000
-- 3 qcm, 2 vrai_faux, 2 reponse_courte, 3 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Identifier un CC de lieu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Facile',
  'qcm',
  'Dans « Chaque matin, les enfants jouent dans la cour », quel groupe de mots est un complément circonstanciel de lieu ?',
  NULL,
  '[{"id":"a","label":"Chaque matin"},{"id":"b","label":"les enfants"},{"id":"c","label":"dans la cour"},{"id":"d","label":"jouent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Dans la cour » est un CC de lieu : il indique OÙ les enfants jouent. On le repère grâce à la question « où ? » posée au verbe. Il est introduit par la préposition « dans ». Remarque : « chaque matin » est aussi un CC, mais de temps (il répond à « quand ? »). Les deux sont déplaçables et supprimables, ce qui confirme leur statut de compléments circonstanciels.',
  'Confondre CC de lieu et CC de temps : « chaque matin » exprime le temps, pas le lieu.',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Tri catégories — CC de temps vs CC de lieu vs CC de manière
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Facile',
  'tri_categories',
  'Classez chaque complément circonstanciel selon sa valeur : temps, lieu ou manière.',
  NULL,
  '[{"id":"w1","label":"hier soir"},{"id":"w2","label":"dans le grenier"},{"id":"w3","label":"avec soin"},{"id":"w4","label":"au printemps"},{"id":"w5","label":"silencieusement"},{"id":"w6","label":"derrière la maison"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"temps","label":"CC de temps"},{"id":"lieu","label":"CC de lieu"},{"id":"man","label":"CC de manière"}],"mapping":{"w1":"temps","w2":"lieu","w3":"man","w4":"temps","w5":"man","w6":"lieu"}}'::jsonb,
  'Pour identifier la valeur d''un CC, posez la bonne question au verbe : QUAND ? → temps (hier soir, au printemps), OÙ ? → lieu (dans le grenier, derrière la maison), COMMENT ? → manière (avec soin, silencieusement). Notez que le CC peut être un GN prépositionnel (« dans le grenier »), un adverbe (« silencieusement ») ou un GN sans préposition (« hier soir »). La nature grammaticale varie, mais la fonction reste la même.',
  'Classer « avec soin » comme CC de moyen au lieu de CC de manière : « avec soin » = soigneusement, c''est bien la manière.',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Vrai/Faux — Critère de suppression
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Un complément circonstanciel peut toujours être supprimé sans rendre la phrase agrammaticale.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Vrai ! C''est justement l''un des deux critères fondamentaux qui définissent le CC selon la grammaire scolaire : il est SUPPRIMABLE et DÉPLAÇABLE. Si on supprime un CC, la phrase reste grammaticalement correcte (même si elle perd de l''information). « Les enfants jouent dans la cour » → « Les enfants jouent. » La phrase est toujours bien formée. Si la suppression rend la phrase incorrecte, c''est probablement un complément essentiel (COI, complément essentiel de lieu).',
  'Penser que « dans la cour » dans « Il habite dans la cour » est un CC supprimable : « Il habite » seul est incomplet. C''est un complément essentiel de lieu.',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — CC vs complément essentiel de lieu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Intermediaire',
  'qcm',
  'Dans « Pierre habite à Lyon », le groupe « à Lyon » est-il un complément circonstanciel de lieu ou un complément essentiel de lieu ?',
  NULL,
  '[{"id":"a","label":"CC de lieu, car il répond à la question « où ? »"},{"id":"b","label":"Complément essentiel de lieu, car il ne peut pas être supprimé"},{"id":"c","label":"CC de lieu, car il est introduit par une préposition"},{"id":"d","label":"Attribut du sujet, car il complète « habite »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« À Lyon » est un complément essentiel de lieu (et non un CC). La preuve : « Pierre habite » est incomplet, la phrase nécessite ce complément pour être grammaticalement acceptable. Le verbe « habiter » réclame un complément de lieu — on ne peut ni le supprimer ni le déplacer librement. C''est la distinction fondamentale au CRPE : le CC est supprimable et déplaçable, le complément essentiel ne l''est pas. Autres verbes pièges : « aller », « se rendre », « résider ».',
  'Classer tout complément de lieu comme CC : quand le verbe exige un lieu pour être complet (habiter, aller, résider), c''est un complément essentiel.',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Tri catégories — CC de cause, but, conséquence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Intermediaire',
  'tri_categories',
  'Classez chaque complément circonstanciel selon sa valeur logique : cause, but ou conséquence.',
  NULL,
  '[{"id":"w1","label":"à cause de la pluie"},{"id":"w2","label":"pour réussir son examen"},{"id":"w3","label":"de sorte que tout le monde comprenne"},{"id":"w4","label":"grâce à son courage"},{"id":"w5","label":"afin de progresser"},{"id":"w6","label":"au point de tomber malade"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cause","label":"CC de cause"},{"id":"but","label":"CC de but"},{"id":"conseq","label":"CC de conséquence"}],"mapping":{"w1":"cause","w2":"but","w3":"conseq","w4":"cause","w5":"but","w6":"conseq"}}'::jsonb,
  'La cause explique POURQUOI (à cause de, grâce à, en raison de). Le but exprime l''intention, ce POUR QUOI on agit (pour, afin de). La conséquence exprime le résultat, ce qui EN DÉCOULE (de sorte que, au point de, si bien que). Astuce CRPE : cause = regard vers l''arrière (ce qui provoque), but = regard vers l''avant (ce qu''on vise), conséquence = résultat effectif. « Grâce à » exprime une cause positive, « à cause de » une cause négative.',
  'Confondre but et conséquence : le but est visé (intention), la conséquence est subie (résultat effectif). « Pour réussir » (but) ≠ « au point de tomber malade » (conséquence).',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Nature grammaticale du CC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Intermediaire',
  'reponse_courte',
  'Dans « Quand la nuit tombe, les lampadaires s''allument », quelle est la nature grammaticale du CC de temps « quand la nuit tombe » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["proposition subordonnée circonstancielle","subordonnée circonstancielle","subordonnée circonstancielle de temps","proposition subordonnée","subordonnée conjonctive circonstancielle"]}'::jsonb,
  '« Quand la nuit tombe » est une proposition subordonnée circonstancielle de temps. Le CC peut prendre trois natures grammaticales différentes : un GN prépositionnel (« à la nuit tombée »), un adverbe (« tard »), ou une proposition subordonnée (« quand la nuit tombe »). Au CRPE, on attend la distinction entre FONCTION (CC de temps) et NATURE (subordonnée circonstancielle). La conjonction de subordination « quand » introduit cette subordonnée.',
  'Donner la fonction (CC de temps) au lieu de la nature (proposition subordonnée circonstancielle) : la question porte sur la nature, pas la fonction.',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/Faux — Déplacement du CC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « Elle court vite », le mot « vite » est un complément circonstanciel de manière car il répond à la question « comment ? ».',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux — ou du moins discutable, et c''est un piège classique du CRPE ! « Vite » modifie le verbe « court » et répond à « comment ? », mais il n''est pas facilement supprimable (« Elle court » change considérablement de sens) et difficilement déplaçable. La terminologie Éduscol 2021 distingue les compléments de phrase (déplaçables et supprimables) des modificateurs du verbe. « Vite » se rapproche davantage d''un modificateur du verbe que d''un véritable CC de phrase.',
  'Classer automatiquement comme CC tout mot qui répond à « comment ? » : le critère sémantique seul ne suffit pas, il faut vérifier les critères syntaxiques (suppression et déplacement).',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — CC exprimé par un gérondif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Difficile',
  'qcm',
  'Dans « En traversant la rue, l''enfant a trébuché », quelle est la valeur circonstancielle du gérondif « en traversant la rue » ?',
  NULL,
  '[{"id":"a","label":"CC de cause"},{"id":"b","label":"CC de temps (simultanéité)"},{"id":"c","label":"CC de manière"},{"id":"d","label":"CC de condition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le gérondif « en traversant la rue » exprime la simultanéité : l''enfant a trébuché PENDANT QU''il traversait. Le gérondif (en + participe présent) est une forme verbale impersonnelle qui fonctionne comme CC. Il peut exprimer le temps (sens le plus fréquent), la manière (« en chantant »), la condition (« en étudiant, tu réussiras ») ou la cause. Pour distinguer ces valeurs, reformulez avec une subordonnée : « pendant qu''il traversait » → temps.',
  'Interpréter le gérondif comme CC de cause (« parce qu''il traversait ») alors que le contexte indique la simultanéité.',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Identifier la valeur du CC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Difficile',
  'reponse_courte',
  'Dans « Malgré la fatigue, elle a continué sa route », quelle est la valeur circonstancielle de « malgré la fatigue » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["concession","CC de concession","complément circonstanciel de concession","opposition"]}'::jsonb,
  '« Malgré la fatigue » est un CC de concession (ou d''opposition). La préposition « malgré » introduit un obstacle qui n''empêche pas l''action de se réaliser : elle était fatiguée, MAIS elle a continué quand même. Au CRPE, les CC de concession sont souvent confondus avec les CC de cause. La cause explique pourquoi quelque chose se produit ; la concession exprime un obstacle surmonté. Autres marqueurs de concession : bien que, quoique, en dépit de.',
  'Confondre concession et cause : la cause explique l''action, la concession présente un obstacle qui n''empêche pas l''action.',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Nature grammaticale des CC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3020000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'anal_complements_circ',
  'Compléments circonstanciels',
  'Difficile',
  'tri_categories',
  'Classez chaque CC selon sa nature grammaticale : groupe nominal prépositionnel, adverbe ou proposition subordonnée.',
  NULL,
  '[{"id":"w1","label":"pendant les vacances"},{"id":"w2","label":"lentement"},{"id":"w3","label":"parce qu''il pleuvait"},{"id":"w4","label":"avec ses amis"},{"id":"w5","label":"si bien qu''il a gagné"},{"id":"w6","label":"aujourd''hui"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"gnp","label":"GN prépositionnel"},{"id":"adv","label":"Adverbe"},{"id":"sub","label":"Proposition subordonnée"}],"mapping":{"w1":"gnp","w2":"adv","w3":"sub","w4":"gnp","w5":"sub","w6":"adv"}}'::jsonb,
  'Un même type de CC (temps, lieu, manière…) peut être exprimé par des natures grammaticales différentes. GN prépositionnel : « pendant les vacances » (prép. + GN), « avec ses amis » (prép. + GN). Adverbe : « lentement », « aujourd''hui » (mots invariables). Proposition subordonnée : « parce qu''il pleuvait » (conj. sub. + proposition), « si bien qu''il a gagné ». Au CRPE, cette distinction nature/fonction est fondamentale : deux CC peuvent avoir la même fonction mais des natures différentes.',
  'Confondre nature et fonction : « lentement » et « avec douceur » ont la même fonction (CC de manière) mais des natures différentes (adverbe vs GN prépositionnel).',
  'valide',
  'CRPE Français — Compléments circonstanciels',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 3 : Voix active et voix passive
-- Topic : anal_voix_active_passive
-- UUID prefix : c3030000
-- 3 qcm, 2 vrai_faux, 3 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Identifier la voix passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Facile',
  'qcm',
  'Parmi ces phrases, laquelle est à la voix passive ?',
  NULL,
  '[{"id":"a","label":"Le jardinier arrose les fleurs."},{"id":"b","label":"Les fleurs sont arrosées par le jardinier."},{"id":"c","label":"Les fleurs sont belles."},{"id":"d","label":"Le jardinier est content de son travail."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Les fleurs sont arrosées par le jardinier » est à la voix passive : le sujet (les fleurs) subit l''action, et l''agent (le jardinier) est introduit par « par ». Attention au piège : « Les fleurs sont belles » et « Le jardinier est content » utilisent aussi « être » mais comme copule (verbe attributif), pas comme auxiliaire du passif. Le test : peut-on transformer en voix active ? « Le jardinier arrose les fleurs » → oui, c''est bien du passif.',
  'Confondre « être + adjectif » (attribut du sujet) et « être + participe passé » (voix passive) : « est content » n''est pas du passif.',
  'valide',
  'CRPE Français — Voix active et passive',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Tous les verbes acceptent le passif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Tous les verbes conjugués peuvent être mis à la voix passive.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux ! Seuls les verbes transitifs directs (qui admettent un COD) peuvent être mis à la voix passive. Le COD de la phrase active devient le sujet de la phrase passive. Les verbes intransitifs (dormir, courir, tomber), les verbes transitifs indirects (parler à, penser à) et les verbes attributifs (être, sembler) n''admettent pas la transformation passive. Exception rare : « obéir à » peut être passivé dans un registre soutenu (« Il est obéi de tous »).',
  'Croire que tout verbe peut être passivé : « Il parle à Marie » ne peut pas donner *« Marie est parlée par lui ».',
  'valide',
  'CRPE Français — Voix active et passive',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Réponse courte — Transformation active → passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Facile',
  'reponse_courte',
  'Transformez à la voix passive : « Le chat attrape la souris. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["La souris est attrapée par le chat.","La souris est attrapée par le chat"]}'::jsonb,
  'La transformation passive suit trois étapes : 1) Le COD (la souris) devient sujet. 2) Le verbe passe à la forme « être + participe passé » au même temps (présent → est attrapée). 3) Le sujet actif (le chat) devient complément d''agent introduit par « par ». Le participe passé s''accorde avec le nouveau sujet : « la souris » est féminin singulier → « attrapée ». Cette mécanique en trois temps est un classique du CRPE.',
  'Oublier l''accord du participe passé avec le nouveau sujet : « est attrapé » au lieu de « est attrapée ».',
  'valide',
  'CRPE Français — Voix active et passive',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — Réponse courte — Identifier le complément d''agent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Facile',
  'reponse_courte',
  'Dans « La lettre a été envoyée par le directeur », quel est le complément d''agent ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["par le directeur","le directeur"]}'::jsonb,
  'Le complément d''agent est « par le directeur ». Il désigne celui qui fait l''action dans une phrase passive. Pour le retrouver, on transforme en voix active : « Le directeur a envoyé la lettre » — le complément d''agent redevient sujet. Le complément d''agent est généralement introduit par « par », parfois par « de » (surtout avec des verbes de sentiment : « Il est aimé DE tous »). Il n''est pas obligatoire : « La lettre a été envoyée » est grammaticalement correct.',
  'Confondre complément d''agent et CC : le complément d''agent est spécifique à la voix passive et redevient sujet à l''actif.',
  'valide',
  'CRPE Français — Voix active et passive',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Tri catégories — Voix active vs passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Intermediaire',
  'tri_categories',
  'Classez chaque phrase selon qu''elle est à la voix active ou à la voix passive.',
  NULL,
  '[{"id":"w1","label":"Le médecin examine le patient."},{"id":"w2","label":"Le pont a été construit en 1890."},{"id":"w3","label":"Les résultats seront annoncés demain."},{"id":"w4","label":"L''orage a détruit les récoltes."},{"id":"w5","label":"Le tableau est admiré de tous."},{"id":"w6","label":"Les pompiers ont éteint l''incendie."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"active","label":"Voix active"},{"id":"passive","label":"Voix passive"}],"mapping":{"w1":"active","w2":"passive","w3":"passive","w4":"active","w5":"passive","w6":"active"}}'::jsonb,
  'Voix active : le sujet fait l''action (le médecin examine, l''orage a détruit, les pompiers ont éteint). Voix passive : le sujet subit l''action (le pont a été construit, les résultats seront annoncés, le tableau est admiré). Le marqueur du passif est l''auxiliaire « être » conjugué + participe passé du verbe. Attention : « est admiré DE tous » utilise « de » au lieu de « par » — c''est typique des verbes de sentiment et de perception.',
  'Prendre « Le pont a été construit » pour de l''actif en croyant que « a été » est du passé composé d''être : c''est bien un passif (être + PP de construire).',
  'valide',
  'CRPE Français — Voix active et passive',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — QCM — Temps verbal au passif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Intermediaire',
  'qcm',
  'À quel temps est le verbe dans « La maison avait été cambriolée pendant la nuit » ?',
  NULL,
  '[{"id":"a","label":"Passé composé passif"},{"id":"b","label":"Plus-que-parfait passif"},{"id":"c","label":"Imparfait passif"},{"id":"d","label":"Passé simple passif"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est un plus-que-parfait passif. Décomposons : « avait été cambriolée » = auxiliaire avoir à l''imparfait (avait) + participe passé de être (été) + participe passé de cambrioler (cambriolée). Au passif, le temps se lit sur l''auxiliaire « être » : ici, « être » est conjugué au plus-que-parfait (avait été), donc le verbe passif est au plus-que-parfait. Règle : temps du passif = temps de l''auxiliaire être. Présent passif = est cambriolée ; passé composé passif = a été cambriolée ; plus-que-parfait passif = avait été cambriolée.',
  'Confondre passé composé passif (a été cambriolée) et plus-que-parfait passif (avait été cambriolée) : c''est le temps de l''auxiliaire « avoir » qui fait la différence.',
  'valide',
  'CRPE Français — Voix active et passive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/Faux — Tournure pronominale de sens passif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La phrase « Ce livre se lit facilement » est à la voix passive.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux ! « Ce livre se lit facilement » est une tournure pronominale de sens passif, mais elle n''est PAS à la voix passive au sens grammatical strict. La voix passive se caractérise par la construction « être + participe passé » (+ complément d''agent). Ici, le verbe est à la forme pronominale (« se lire »). On distingue donc : voix active (« On lit ce livre »), voix passive (« Ce livre est lu »), et tournure pronominale de sens passif (« Ce livre se lit »). Au CRPE, cette distinction est attendue.',
  'Confondre la tournure pronominale de sens passif avec la vraie voix passive : « se vend bien » ≠ « est vendu ».',
  'valide',
  'CRPE Français — Voix active et passive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Passif sans complément d''agent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Difficile',
  'qcm',
  'Dans « La route a été barrée », pourquoi n''y a-t-il pas de complément d''agent ?',
  NULL,
  '[{"id":"a","label":"Parce que la phrase est mal construite"},{"id":"b","label":"Parce que le complément d''agent est facultatif au passif"},{"id":"c","label":"Parce que la phrase n''est pas vraiment au passif"},{"id":"d","label":"Parce que le verbe « barrer » n''admet pas de complément d''agent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le complément d''agent est facultatif dans une phrase passive. Son absence ne remet pas en cause la voix passive. « La route a été barrée » est bien au passif (être + PP), mais l''agent n''est pas mentionné, soit parce qu''il est inconnu, soit parce qu''il est évident ou sans importance. C''est fréquent dans la presse et les textes administratifs : « Le suspect a été arrêté », « Des mesures ont été prises ». La transformation active donnerait un sujet indéfini : « On a barré la route ».',
  'Croire qu''une phrase passive doit obligatoirement comporter un complément d''agent pour être identifiée comme passive.',
  'valide',
  'CRPE Français — Voix active et passive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Complément d''agent avec « de »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Difficile',
  'reponse_courte',
  'Dans « Cette enseignante est respectée de ses élèves », quelle préposition introduit le complément d''agent ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["de","De","la préposition de"]}'::jsonb,
  'La préposition « de » introduit le complément d''agent « de ses élèves ». C''est une alternative à « par » qui s''emploie principalement avec les verbes exprimant un sentiment, un état ou une perception : être aimé DE, être respecté DE, être connu DE, être entouré DE, être accompagné DE. Avec les verbes d''action concrète, on utilise « par » : « mangé PAR le loup », « construit PAR l''architecte ». Cette distinction « par » vs « de » est un point fin régulièrement évalué au CRPE.',
  'Croire que le complément d''agent est toujours introduit par « par » : avec les verbes de sentiment, « de » est la norme.',
  'valide',
  'CRPE Français — Voix active et passive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Identifier être : auxiliaire passif vs copule vs auxiliaire temps composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3030000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'anal_voix_active_passive',
  'Voix active et voix passive',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase selon le rôle du verbe « être » : auxiliaire du passif, copule (verbe attributif) ou auxiliaire des temps composés.',
  NULL,
  '[{"id":"w1","label":"La porte est fermée par le gardien."},{"id":"w2","label":"Marie est partie à huit heures."},{"id":"w3","label":"Ce gâteau est délicieux."},{"id":"w4","label":"Les devoirs sont corrigés chaque soir."},{"id":"w5","label":"Ils sont arrivés en retard."},{"id":"w6","label":"Le ciel est bleu aujourd''hui."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"passif","label":"Auxiliaire du passif"},{"id":"copule","label":"Copule (verbe attributif)"},{"id":"tc","label":"Auxiliaire des temps composés"}],"mapping":{"w1":"passif","w2":"tc","w3":"copule","w4":"passif","w5":"tc","w6":"copule"}}'::jsonb,
  'Ce tri est un classique du CRPE. Auxiliaire du passif : « être » + PP d''un verbe transitif direct (est fermée PAR, sont corrigés). Copule : « être » + attribut du sujet, adjectif ou GN (est délicieux, est bleu). Auxiliaire des temps composés : « être » + PP d''un verbe intransitif qui se conjugue avec être au passé composé (est partie, sont arrivés). Le test décisif : si on peut ajouter un complément d''agent (par…), c''est du passif. Si le mot après « être » est un adjectif qualificatif invariable (délicieux, bleu), c''est une copule. Si le verbe fait partie de la liste « aller, venir, partir, arriver… », c''est un temps composé.',
  'Confondre « La porte est fermée » (passif, on peut ajouter « par quelqu''un ») et « Marie est partie » (temps composé, verbe intransitif conjugué avec être).',
  'valide',
  'CRPE Français — Voix active et passive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 4 : L''apprentissage de la lecture
-- Topic : did_apprentissage_lecture
-- UUID prefix : c4010000
-- 4 qcm, 3 vrai_faux, 2 reponse_courte, 1 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Définition du décodage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Facile',
  'qcm',
  'En didactique de la lecture, que désigne le terme « décodage » ?',
  NULL,
  '[{"id":"a","label":"La capacité à comprendre le sens global d''un texte"},{"id":"b","label":"La capacité à établir les correspondances graphèmes-phonèmes pour oraliser un mot écrit"},{"id":"c","label":"La capacité à reconnaître un mot globalement, sans le déchiffrer"},{"id":"d","label":"La capacité à segmenter un mot oral en syllabes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le décodage est le processus par lequel le lecteur convertit les graphèmes (lettres ou groupes de lettres) en phonèmes (sons) pour oraliser un mot. C''est la « voie indirecte » ou « voie d''assemblage » du modèle à deux voies. Le décodage est essentiel en début d''apprentissage (CP) : l''élève déchiffre « ch-a-t » → /ʃa/. Avec la pratique, les mots fréquents sont reconnus directement (voie directe), mais le décodage reste indispensable pour les mots nouveaux.',
  'Confondre décodage (graphème → phonème) et compréhension (accès au sens) : le décodage est une condition nécessaire mais pas suffisante pour comprendre.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Méthode globale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Les programmes officiels de l''Éducation nationale recommandent actuellement un enseignement systématique et explicite du code alphabétique dès le CP.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Vrai ! Depuis le rapport Dehaene (2011) et le guide « Pour enseigner la lecture et l''écriture au CP » (2018), les programmes insistent sur un enseignement SYSTÉMATIQUE et EXPLICITE des correspondances graphophonologiques. Cela signifie que les correspondances graphèmes-phonèmes doivent être enseignées dans un ordre progressif et structuré, et non découvertes incidemment par les élèves. Ce n''est pas un retour à la « méthode syllabique pure » mais une approche qui place le code au centre tout en travaillant la compréhension en parallèle.',
  'Croire que les programmes recommandent une méthode « globale » ou « mixte » sans enseignement explicite du code : la position institutionnelle est claire en faveur du décodage systématique.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Conscience phonémique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Facile',
  'qcm',
  'Qu''est-ce que la « conscience phonémique » dans l''apprentissage de la lecture ?',
  NULL,
  '[{"id":"a","label":"La capacité à reconnaître les lettres de l''alphabet"},{"id":"b","label":"La capacité à identifier et manipuler les phonèmes individuels d''un mot"},{"id":"c","label":"La capacité à lire un texte à voix haute avec fluidité"},{"id":"d","label":"La capacité à comprendre le vocabulaire d''un texte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La conscience phonémique est la capacité à identifier, isoler et manipuler les phonèmes (plus petites unités sonores distinctives) d''un mot oral. Par exemple, savoir que « chat » contient deux phonèmes /ʃ/ et /a/. C''est le niveau le plus fin de la conscience phonologique et le meilleur prédicteur de la réussite en lecture. Elle se développe principalement au CP, en lien direct avec l''apprentissage du code. Activités typiques : « Quel est le premier son de mouton ? » → /m/.',
  'Confondre conscience phonémique (phonèmes) et conscience syllabique (syllabes) : « ma-ri-ne » = 3 syllabes, mais /m/-/a/-/r/-/i/-/n/ = 5 phonèmes.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Modèle à deux voies
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Intermediaire',
  'qcm',
  'Dans le modèle à deux voies de la lecture, que désigne la « voie directe » (ou « voie d''adressage ») ?',
  NULL,
  '[{"id":"a","label":"Le déchiffrage lettre par lettre d''un mot inconnu"},{"id":"b","label":"La reconnaissance immédiate d''un mot stocké dans le lexique mental"},{"id":"c","label":"La lecture à voix haute avec intonation"},{"id":"d","label":"La compréhension du sens par le contexte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La voie directe (ou voie d''adressage, ou voie lexicale) permet de reconnaître un mot instantanément car il est stocké dans le lexique orthographique mental du lecteur. C''est la voie utilisée par les lecteurs experts pour les mots fréquents. L''autre voie — indirecte (ou d''assemblage, ou phonologique) — passe par le décodage graphème-phonème, nécessaire pour les mots nouveaux. L''objectif de l''enseignement est de faire passer progressivement les mots de la voie indirecte à la voie directe par la répétition des rencontres.',
  'Confondre voie directe (reconnaissance globale du mot mémorisé) et devinette par le contexte : la voie directe repose sur la mémoire orthographique, pas sur le contexte.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Vrai/Faux — La fluence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La fluence de lecture se mesure uniquement par la vitesse de lecture en mots par minute.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux ! La fluence de lecture ne se réduit pas à la vitesse. Elle englobe trois composantes : la PRÉCISION (lire les mots sans erreur), la VITESSE (nombre de mots corrects par minute), et la PROSODIE (intonation, respect de la ponctuation, groupes de souffle). Un élève qui lit très vite mais commet de nombreuses erreurs ou lit de manière monotone n''est pas fluent. Les évaluations nationales mesurent les MCLM (mots correctement lus par minute), ce qui intègre précision et vitesse. La prosodie s''évalue qualitativement.',
  'Réduire la fluence à la vitesse seule : un élève qui lit vite mais fait beaucoup d''erreurs n''est pas fluent.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Correspondances graphophonologiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Intermediaire',
  'reponse_courte',
  'Comment appelle-t-on les unités graphiques (lettre ou groupe de lettres) qui correspondent à un phonème ? Par exemple « ou » dans « mouton » ou « ch » dans « chat ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["graphème","graphèmes","un graphème","des graphèmes","le graphème"]}'::jsonb,
  'On appelle ces unités des GRAPHÈMES. Un graphème est la plus petite unité du système d''écriture qui correspond à un phonème. Il peut être constitué d''une seule lettre (« a » → /a/), de deux lettres ou digramme (« ou » → /u/, « ch » → /ʃ/), voire de trois lettres ou trigramme (« eau » → /o/, « ain » → /ɛ̃/). Le français compte environ 130 graphèmes pour 36 phonèmes, ce qui explique la complexité de son système orthographique et la nécessité d''un enseignement explicite des correspondances graphophonologiques.',
  'Confondre graphème et lettre : « ou » est un seul graphème (digramme) composé de deux lettres.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — QCM — Encodage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Intermediaire',
  'qcm',
  'Pourquoi les exercices d''encodage (écriture inventée, dictée de syllabes) renforcent-ils l''apprentissage de la lecture ?',
  NULL,
  '[{"id":"a","label":"Parce qu''ils améliorent la motricité fine nécessaire à l''écriture"},{"id":"b","label":"Parce qu''ils obligent l''élève à mobiliser les correspondances phonèmes-graphèmes en sens inverse"},{"id":"c","label":"Parce qu''ils permettent d''évaluer la compréhension des textes"},{"id":"d","label":"Parce qu''ils développent le vocabulaire de l''élève"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''encodage (écrire un mot à partir de sa forme orale) mobilise les correspondances phonèmes → graphèmes, soit l''inverse du décodage (graphèmes → phonèmes). Ce double trajet renforce les connexions entre l''oral et l''écrit. Quand un élève de CP tente d''écrire « bateau », il doit segmenter /b/-/a/-/t/-/o/ puis choisir les graphèmes correspondants. C''est pourquoi le guide ministériel recommande de lier étroitement lecture et écriture dès le CP : les deux activités se renforcent mutuellement.',
  'Croire que l''encodage sert uniquement à travailler l''écriture : il consolide aussi les correspondances graphophonologiques utiles à la lecture.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Vrai/Faux — Compréhension en lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Selon la recherche en didactique, l''enseignement de la compréhension en lecture doit attendre que le décodage soit automatisé.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux ! La compréhension doit être travaillée EN PARALLÈLE du décodage, dès le CP. Le consensus scientifique actuel est clair : on ne peut pas attendre l''automatisation du décodage pour travailler la compréhension. Les deux doivent être enseignés simultanément mais de manière distincte. Pendant que l''élève apprend à décoder, on travaille la compréhension à l''oral (textes lus par l''enseignant), puis progressivement sur des textes décodables. L''enseignement explicite de stratégies de compréhension (inférences, structure du récit, vocabulaire) est indispensable.',
  'Penser qu''il faut d''abord maîtriser le code avant de travailler la compréhension : les deux compétences se développent en parallèle.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Manuels CP et critères de choix
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Difficile',
  'reponse_courte',
  'Quel critère principal le guide ministériel « Pour enseigner la lecture et l''écriture au CP » recommande-t-il pour évaluer la qualité d''un manuel de lecture CP ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["le tempo d''introduction des correspondances graphèmes-phonèmes","le tempo des CGP","la progression des correspondances graphophonologiques","le rythme d''introduction des CGP","la part de texte déchiffrable","le pourcentage de texte déchiffrable","la déchiffrabilité des textes"]}'::jsonb,
  'Le critère principal recommandé est le tempo d''introduction des correspondances graphèmes-phonèmes (CGP) et la part de texte déchiffrable. Un bon manuel de CP introduit rapidement et systématiquement les CGP pour que les élèves puissent lire des textes composés majoritairement de graphèmes déjà étudiés. L''étude Goigoux (2015) a montré que les manuels dont le tempo est rapide (beaucoup de CGP en période 1-2) obtiennent de meilleurs résultats. Le guide ministériel recommande que les textes proposés soient déchiffrables à plus de 80 % dès les premières semaines.',
  'Se focaliser sur la qualité littéraire ou l''attractivité des illustrations plutôt que sur la progressivité et la déchiffrabilité.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Voie directe vs voie indirecte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'did_apprentissage_lecture',
  'L''apprentissage de la lecture',
  'Difficile',
  'tri_categories',
  'Classez chaque activité selon qu''elle travaille principalement la voie indirecte (décodage) ou la voie directe (reconnaissance orthographique).',
  NULL,
  '[{"id":"w1","label":"Lire des syllabes isolées (pa, tri, crou)"},{"id":"w2","label":"Reconnaître instantanément des mots fréquents (les, dans, avec)"},{"id":"w3","label":"Fusionner des phonèmes pour former un mot"},{"id":"w4","label":"Lire des mots irréguliers mémorisés (femme, monsieur)"},{"id":"w5","label":"Déchiffrer un pseudo-mot (trolabi, fimouche)"},{"id":"w6","label":"Écrire de mémoire des mots outils appris globalement"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ind","label":"Voie indirecte (décodage)"},{"id":"dir","label":"Voie directe (reconnaissance)"}],"mapping":{"w1":"ind","w2":"dir","w3":"ind","w4":"dir","w5":"ind","w6":"dir"}}'::jsonb,
  'La voie indirecte (assemblage) est sollicitée quand l''élève doit décoder : syllabes isolées, fusion de phonèmes, pseudo-mots (qui ne peuvent PAS être dans le lexique mental). La voie directe (adressage) est sollicitée quand l''élève reconnaît un mot déjà mémorisé : mots fréquents, mots irréguliers, mots outils. Le test décisif : les pseudo-mots (logatomes) ne peuvent être lus QUE par la voie indirecte car ils n''existent pas dans le lexique. C''est pourquoi on les utilise pour évaluer spécifiquement le décodage.',
  'Penser que les mots irréguliers (femme, monsieur) sont décodés : ils sont mémorisés globalement car leur décodage régulier donnerait une prononciation erronée.',
  'valide',
  'CRPE Français — Apprentissage lecture',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 5 : Conscience phonologique
-- Topic : did_conscience_phono
-- UUID prefix : c4020000
-- 4 qcm, 3 vrai_faux, 2 reponse_courte, 1 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Définition de la conscience phonologique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Facile',
  'qcm',
  'Parmi ces définitions, laquelle correspond le mieux à la conscience phonologique ?',
  NULL,
  '[{"id":"a","label":"La connaissance des règles de correspondance entre lettres et sons"},{"id":"b","label":"La capacité à percevoir et manipuler les unités sonores de la langue orale (syllabes, rimes, phonèmes)"},{"id":"c","label":"La capacité à lire des mots à voix haute avec fluidité"},{"id":"d","label":"La connaissance du nom des lettres de l''alphabet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La conscience phonologique est la capacité à percevoir et manipuler les unités sonores de la parole, indépendamment du sens. Elle porte sur l''ORAL, pas sur l''écrit. Elle englobe trois niveaux : la conscience syllabique (découper « pa-pi-llon » en syllabes), la conscience des rimes (« bateau » rime avec « gâteau »), et la conscience phonémique (identifier que « sol » commence par /s/). C''est un prédicteur majeur de la réussite en lecture. Attention : elle se distingue des correspondances graphèmes-phonèmes qui relèvent du lien oral-écrit.',
  'Confondre conscience phonologique (capacité orale) et connaissance du code alphabétique (lien oral-écrit) : la conscience phonologique se travaille sans support écrit.',
  'valide',
  'CRPE Français — Conscience phonologique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Conscience syllabique avant phonémique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Dans la progression développementale, la conscience syllabique apparaît avant la conscience phonémique.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Vrai ! La progression développementale va du plus large au plus fin : d''abord la conscience des mots dans la phrase (GS), puis la conscience syllabique (dès la MS-GS), puis la conscience des rimes et des attaques (GS), et enfin la conscience phonémique (fin GS-CP). La syllabe est une unité naturelle de la parole en français : les enfants scandent spontanément « cho-co-lat ». Le phonème, lui, est une unité abstraite qui nécessite un enseignement explicite. C''est pourquoi l''école maternelle travaille d''abord les syllabes.',
  'Penser que la conscience phonémique est naturelle et précoce : elle est la plus tardive et la plus difficile à acquérir, souvent liée à l''apprentissage de l''écrit.',
  'valide',
  'CRPE Français — Conscience phonologique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Activité de segmentation syllabique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Facile',
  'qcm',
  'Combien de syllabes orales contient le mot « éléphant » ?',
  NULL,
  '[{"id":"a","label":"2 syllabes"},{"id":"b","label":"3 syllabes"},{"id":"c","label":"4 syllabes"},{"id":"d","label":"5 syllabes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Éléphant » contient 3 syllabes orales : /e/-/le/-/fɑ̃/. Attention : on compte les syllabes ORALES, pas les syllabes graphiques. En français, le « e » final muet ne constitue pas une syllabe orale. De même, « éléphante » a aussi 3 syllabes orales (/e/-/le/-/fɑ̃t/) car le « e » final est muet en français standard. Le comptage syllabique oral est la première compétence travaillée en conscience phonologique dès la moyenne section : on frappe dans ses mains, on utilise des jetons, on saute.',
  'Compter les syllabes graphiques au lieu des syllabes orales : en français, les « e » muets finaux ne comptent pas comme syllabes orales.',
  'valide',
  'CRPE Français — Conscience phonologique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Types de manipulations phonologiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Intermediaire',
  'qcm',
  'Quelle manipulation phonologique est mise en œuvre quand on demande à un élève : « Dis "soleil" sans le /s/ » ?',
  NULL,
  '[{"id":"a","label":"Segmentation phonémique"},{"id":"b","label":"Fusion phonémique"},{"id":"c","label":"Suppression phonémique"},{"id":"d","label":"Substitution phonémique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'C''est une suppression phonémique : on demande à l''élève de retirer un phonème d''un mot et de prononcer ce qui reste (« oleil »). Les quatre manipulations phonologiques fondamentales sont : SEGMENTATION (découper un mot en unités), FUSION (assembler des unités pour former un mot), SUPPRESSION (retirer une unité), SUBSTITUTION (remplacer une unité par une autre). La suppression est plus difficile que la segmentation car elle exige de maintenir le mot en mémoire tout en effectuant l''opération. Ordre de difficulté croissant : segmentation < fusion < suppression < substitution.',
  'Confondre suppression et segmentation : la segmentation découpe (s-o-l-e-il), la suppression retire un élément et donne le résultat.',
  'valide',
  'CRPE Français — Conscience phonologique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Vrai/Faux — Lien conscience phonologique et lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La conscience phonologique est un prérequis absolu : un enfant ne peut commencer aucun apprentissage de la lecture tant qu''il ne la maîtrise pas entièrement.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux ! La relation entre conscience phonologique et lecture est RÉCIPROQUE, pas unidirectionnelle. La conscience syllabique et la conscience des rimes facilitent l''entrée dans le code, mais la conscience phonémique se développe largement EN MÊME TEMPS que l''apprentissage de la lecture, pas avant. C''est l''apprentissage des lettres et du code qui aide à affiner la perception des phonèmes. On parle de relation de réciprocité (Morais, 1994) : la conscience phonologique favorise la lecture, et la lecture renforce la conscience phonologique.',
  'Concevoir la conscience phonologique comme un prérequis strict et linéaire : la relation est circulaire et non séquentielle.',
  'valide',
  'CRPE Français — Conscience phonologique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Rime et attaque
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Intermediaire',
  'reponse_courte',
  'Dans la syllabe « bri » (comme dans « brique »), comment appelle-t-on la partie « br » qui précède le noyau vocalique ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["attaque","l''attaque","une attaque","attaque syllabique","l''attaque syllabique"]}'::jsonb,
  'La partie « br » est l''ATTAQUE de la syllabe. Une syllabe se décompose en : attaque (consonnes initiales, ici /br/) + rime (noyau vocalique + coda, ici /i/). L''attaque est facultative (la syllabe « a » n''en a pas), mais le noyau vocalique est obligatoire. En conscience phonologique, la sensibilité aux rimes (« brique » / « fabrique ») est plus précoce que la sensibilité aux attaques (« brique » / « broche »), car la rime est perceptivement plus saillante. Ce vocabulaire technique (attaque, rime, noyau, coda) est attendu au CRPE.',
  'Confondre la rime linguistique (partie de la syllabe à partir du noyau vocalique) et la rime poétique (son final commun entre deux mots).',
  'valide',
  'CRPE Français — Conscience phonologique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — QCM — Évaluation de la conscience phonologique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Intermediaire',
  'qcm',
  'Quelle épreuve évalue spécifiquement la conscience phonémique (et non la conscience syllabique) ?',
  NULL,
  '[{"id":"a","label":"Demander de frapper le nombre de syllabes dans « crocodile »"},{"id":"b","label":"Demander quel est le premier son (phonème) du mot « fleur »"},{"id":"c","label":"Demander de trouver un mot qui rime avec « maison »"},{"id":"d","label":"Demander de séparer une phrase en mots"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Demander le premier son de « fleur » (/f/) évalue la conscience phonémique car l''élève doit isoler un PHONÈME individuel. Frapper les syllabes évalue la conscience syllabique. Trouver une rime évalue la conscience des rimes (niveau intermédiaire). Séparer une phrase en mots évalue la conscience lexicale. Au CRPE, on attend que vous sachiez faire correspondre chaque type d''épreuve au niveau de conscience phonologique évalué. Les évaluations nationales de début CP testent la conscience phonémique par des tâches d''identification du phonème initial.',
  'Confondre les niveaux : le comptage syllabique (conscience syllabique) n''évalue pas la conscience phonémique.',
  'valide',
  'CRPE Français — Conscience phonologique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Vrai/Faux — Phonèmes en français
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Le français standard compte exactement 26 phonèmes, un pour chaque lettre de l''alphabet.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux ! Le français standard compte environ 36 phonèmes (16 voyelles dont les nasales, 17 consonnes, 3 semi-consonnes), mais seulement 26 lettres. Il n''y a pas de correspondance biunivoque entre lettres et phonèmes. Exemples : la lettre « c » se prononce /k/ dans « car » et /s/ dans « ciel » ; le phonème /o/ peut s''écrire « o », « au », « eau ». Cette asymétrie entre le nombre de phonèmes et le nombre de lettres explique pourquoi le français a un code alphabétique complexe (opaque) par rapport à l''espagnol ou l''italien (codes transparents).',
  'Croire en une correspondance un-pour-un entre lettres et sons : c''est la principale source de difficulté de l''orthographe française.',
  'valide',
  'CRPE Français — Conscience phonologique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Fusion phonémique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on l''opération cognitive qui consiste à assembler des phonèmes isolés pour reconstituer un mot oral (par ex. /m/ + /a/ + /r/ → « mare ») ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["fusion","fusion phonémique","la fusion","la fusion phonémique","synthèse phonémique"]}'::jsonb,
  'C''est la FUSION phonémique (ou synthèse phonémique). Elle est l''inverse de la segmentation : au lieu de découper un mot en phonèmes, on assemble des phonèmes pour former un mot. La fusion est directement liée au décodage en lecture : quand un élève déchiffre « m-a-r-e », il doit fusionner les phonèmes pour accéder au mot. C''est pourquoi la fusion phonémique est l''une des compétences les plus prédictives de la réussite en lecture. Elle est plus difficile que la segmentation car elle exige de maintenir les phonèmes en mémoire tout en les combinant.',
  'Confondre fusion et segmentation : la segmentation découpe (/mar/ → /m/-/a/-/r/), la fusion assemble (/m/+/a/+/r/ → /mar/).',
  'valide',
  'CRPE Français — Conscience phonologique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Niveau de conscience phonologique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4020000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'did_conscience_phono',
  'Conscience phonologique',
  'Difficile',
  'tri_categories',
  'Classez chaque activité selon le niveau de conscience phonologique qu''elle mobilise : conscience syllabique, conscience des rimes ou conscience phonémique.',
  NULL,
  '[{"id":"w1","label":"Frapper les syllabes de « papillon »"},{"id":"w2","label":"Trouver l''intrus : bateau, gâteau, maison, chapeau"},{"id":"w3","label":"Dire quel est le premier son de « fraise »"},{"id":"w4","label":"Compter les syllabes de son prénom"},{"id":"w5","label":"Supprimer le son /r/ dans « trou » → « tou »"},{"id":"w6","label":"Apparier « mouton » et « bouton » par leur son final"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"syll","label":"Conscience syllabique"},{"id":"rime","label":"Conscience des rimes"},{"id":"phon","label":"Conscience phonémique"}],"mapping":{"w1":"syll","w2":"rime","w3":"phon","w4":"syll","w5":"phon","w6":"rime"}}'::jsonb,
  'Conscience syllabique : frapper les syllabes, compter les syllabes — on travaille sur l''unité SYLLABE, accessible dès la MS. Conscience des rimes : trouver l''intrus (« maison » ne rime pas avec les autres), apparier des mots par leur son final — on travaille sur la RIME, accessible en GS. Conscience phonémique : identifier le premier son, supprimer un phonème — on travaille sur le PHONÈME, la plus petite unité, accessible en fin GS-CP. Cette progression du plus large (syllabe) au plus fin (phonème) guide la programmation en maternelle.',
  'Classer « trouver l''intrus par la rime » comme conscience phonémique : la rime est un niveau intermédiaire, plus large que le phonème isolé.',
  'valide',
  'CRPE Français — Conscience phonologique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
