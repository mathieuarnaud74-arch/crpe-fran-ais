-- ============================================================
-- Migration : 5 séries Grammaire (50 exercices)
-- UUID prefix : e501–e505
-- ============================================================

-- ============================================================
-- SÉRIE 1 : gram_nature_fonction / Nature et fonction des mots
-- ============================================================

-- Q1 — Facile — QCM — Identifier la nature d''un mot
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Facile',
  'qcm',
  'Dans la phrase « Le petit chat dort paisiblement », quelle est la nature (classe grammaticale) du mot « paisiblement » ?',
  NULL,
  '[{"id":"a","label":"Adjectif qualificatif"},{"id":"b","label":"Adverbe"},{"id":"c","label":"Nom commun"},{"id":"d","label":"Préposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Paisiblement » est un adverbe. Il modifie le verbe « dort » en apportant une précision sur la manière. Les adverbes sont des mots invariables qui peuvent modifier un verbe, un adjectif ou un autre adverbe. On le reconnaît ici à son suffixe -ment, caractéristique de nombreux adverbes de manière formés à partir d''adjectifs.',
  'Confondre l''adverbe avec l''adjectif qualificatif dont il dérive (« paisible »). La nature d''un mot ne change pas selon sa place dans la phrase.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Distinguer nature et fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Facile',
  'qcm',
  'Dans la phrase « Marie mange une pomme », quelle est la fonction du groupe nominal « une pomme » ?',
  NULL,
  '[{"id":"a","label":"Sujet"},{"id":"b","label":"Complément d''objet direct (COD)"},{"id":"c","label":"Complément circonstanciel"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Une pomme » est complément d''objet direct (COD) du verbe « mange ». Le COD est un complément essentiel du verbe : il complète le verbe directement, sans préposition. On peut le repérer en posant la question « Marie mange quoi ? » — « une pomme ». Il ne peut être ni supprimé ni déplacé sans altérer le sens de la phrase.',
  'Confondre le COD avec le sujet. Le sujet est celui qui fait l''action (Marie), le COD est celui qui subit l''action (une pomme).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — QCM — Les 9 classes grammaticales
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Il pense à ses vacances depuis longtemps », quelle est la nature du mot « depuis » ?',
  NULL,
  '[{"id":"a","label":"Adverbe"},{"id":"b","label":"Conjonction de subordination"},{"id":"c","label":"Préposition"},{"id":"d","label":"Déterminant"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Depuis » est une préposition. Elle introduit le groupe prépositionnel « depuis longtemps », complément circonstanciel de temps. La préposition est un mot invariable qui établit un lien de dépendance entre un mot et son complément. Selon la terminologie Éduscol 2021, les prépositions font partie des mots invariables, aux côtés des adverbes et des conjonctions.',
  'Confondre « depuis » avec un adverbe. Ici, « depuis » introduit un complément (« longtemps »), ce qui est la fonction propre d''une préposition.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Fonction attribut du sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Cette fleur est magnifique », quelle est la fonction de « magnifique » ?',
  NULL,
  '[{"id":"a","label":"Épithète liée"},{"id":"b","label":"Complément d''objet direct"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"Complément du nom"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Magnifique » est attribut du sujet « cette fleur ». L''attribut du sujet se construit avec un verbe d''état (ici « est ») et exprime une qualité ou une caractéristique du sujet. Il ne peut être ni supprimé ni déplacé. Contrairement à l''épithète, l''attribut est séparé du nom qu''il qualifie par un verbe attributif (être, sembler, devenir, paraître, etc.).',
  'Confondre attribut du sujet et épithète. L''épithète est directement rattachée au nom dans le GN, tandis que l''attribut passe par un verbe d''état.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — Vrai/Faux — Mots variables et invariables
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : les adverbes sont des mots invariables.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Les adverbes sont des mots invariables : ils ne varient ni en genre ni en nombre. Parmi les mots invariables, on trouve les adverbes, les prépositions, les conjonctions de coordination et les conjonctions de subordination. Les mots variables sont les noms, les déterminants, les adjectifs, les pronoms et les verbes.',
  'Penser que certains adverbes peuvent varier parce qu''ils ressemblent à des adjectifs (ex. : « fort » peut être adjectif variable ou adverbe invariable).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Vrai/Faux — Nature vs fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la nature d''un mot peut changer selon la phrase dans laquelle il se trouve.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. La nature (ou classe grammaticale) d''un mot est une propriété intrinsèque qui ne varie pas selon le contexte. C''est la fonction qui change selon la phrase. On compare souvent la nature à la « carte d''identité » du mot : un nom reste un nom, qu''il soit sujet, COD ou complément circonstanciel. Attention toutefois : certains mots peuvent appartenir à plusieurs classes selon leur emploi (ex. : « fort » adjectif vs « fort » adverbe), mais dans un emploi donné, la nature est fixe.',
  'Confondre nature et fonction. La nature est permanente (ce que le mot EST), la fonction est contextuelle (le RÔLE qu''il joue dans la phrase).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — Vrai/Faux — Conjonction de coordination
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Il est parti car il était fatigué », le mot « car » est une conjonction de subordination.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « Car » est une conjonction de coordination, et non de subordination. Elle relie deux propositions indépendantes en établissant un lien logique de cause. Les conjonctions de coordination (mais, ou, et, donc, or, ni, car) relient des éléments de même fonction. À la différence de « parce que » (conjonction de subordination), « car » n''introduit pas une proposition subordonnée mais coordonne deux propositions.',
  'Confondre « car » (conjonction de coordination) avec « parce que » (conjonction de subordination). Les deux expriment la cause, mais leur nature grammaticale diffère.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — Réponse courte — Identifier une fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Intermediaire',
  'reponse_courte',
  'Dans la phrase « Les enfants jouent dans le jardin », quelle est la fonction du groupe « dans le jardin » ? Répondez avec le terme grammatical précis.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["complément circonstanciel de lieu","complément circonstanciel","CC de lieu","CCL"]}'::jsonb,
  '« Dans le jardin » est un complément circonstanciel de lieu. Il apporte une information sur le lieu de l''action. Les compléments circonstanciels sont des compléments de phrase : ils peuvent être supprimés ou déplacés sans rendre la phrase agrammaticale. Ici, on peut dire « Les enfants jouent » (suppression) ou « Dans le jardin, les enfants jouent » (déplacement).',
  'Confondre complément circonstanciel et complément essentiel du verbe. Le CC est déplaçable et supprimable, contrairement au COD ou au COI.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Classe grammaticale d''un pronom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Ceux qui travaillent réussissent », quelle est la nature (classe grammaticale) du mot « ceux » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["pronom démonstratif","pronom demonstratif"]}'::jsonb,
  '« Ceux » est un pronom démonstratif. Il remplace un nom ou un groupe nominal en le désignant de manière démonstrative. Ici, « ceux » est le noyau du GN sujet « ceux qui travaillent ». Les pronoms démonstratifs (celui, celle, ceux, celles, ce, ceci, cela) font partie de la classe des pronoms, mots variables qui se substituent à un nom ou un GN.',
  'Confondre le pronom démonstratif « ceux » avec un déterminant démonstratif (« ces »). Le pronom remplace un GN, le déterminant accompagne un nom.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Fonction du COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1c0000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'gram_nature_fonction',
  'Nature et fonction des mots',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Elle pense à son avenir », quelle est la fonction du groupe « à son avenir » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["complément d''objet indirect","COI","complement d''objet indirect"]}'::jsonb,
  '« À son avenir » est complément d''objet indirect (COI) du verbe « penser ». Le COI est un complément essentiel du verbe introduit par une préposition (ici « à »). On le repère en posant la question « Elle pense à quoi ? ». Contrairement au complément circonstanciel, le COI ne peut être ni supprimé ni déplacé sans altérer le sens de la phrase. La construction « penser à » impose la préposition.',
  'Confondre le COI avec un complément circonstanciel. Le COI est un complément essentiel du verbe (non supprimable), alors que le CC est un complément de phrase (supprimable et déplaçable).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : gram_groupe_nominal / Le groupe nominal et ses expansions
-- ============================================================

-- Q1 — Facile — QCM — Identifier le noyau du GN
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Facile',
  'qcm',
  'Dans le groupe nominal « le vieux château fort », quel est le nom noyau ?',
  NULL,
  '[{"id":"a","label":"vieux"},{"id":"b","label":"château"},{"id":"c","label":"fort"},{"id":"d","label":"le"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le nom noyau du GN « le vieux château fort » est « château ». Le noyau est l''élément essentiel du groupe nominal : c''est lui qui donne au groupe son genre et son nombre. Les autres éléments (le déterminant « le », l''adjectif antéposé « vieux » et l''adjectif postposé « fort ») dépendent de ce noyau et constituent ses expansions.',
  'Confondre le noyau avec un adjectif. Le noyau est toujours un nom (ou un pronom), jamais un adjectif.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Nature d''une expansion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Facile',
  'qcm',
  'Dans le GN « un livre de contes », quelle est la nature de l''expansion « de contes » ?',
  NULL,
  '[{"id":"a","label":"Adjectif épithète"},{"id":"b","label":"Proposition subordonnée relative"},{"id":"c","label":"Groupe prépositionnel (complément du nom)"},{"id":"d","label":"Apposition"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« De contes » est un groupe prépositionnel qui fonctionne comme complément du nom « livre ». Le complément du nom est une expansion du nom introduite par une préposition (de, à, en, pour, etc.). Sa nature est celle d''un groupe prépositionnel et sa fonction est complément du nom. C''est l''une des trois expansions principales du nom avec l''adjectif épithète et la proposition subordonnée relative.',
  'Confondre la nature (groupe prépositionnel) et la fonction (complément du nom). En analyse grammaticale, il faut toujours distinguer ces deux niveaux.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — QCM — Identifier une proposition relative comme expansion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Intermediaire',
  'qcm',
  'Dans la phrase « L''élève qui a terminé peut sortir », quelle est la fonction de « qui a terminé » par rapport au nom « élève » ?',
  NULL,
  '[{"id":"a","label":"Complément du nom"},{"id":"b","label":"Épithète"},{"id":"c","label":"Expansion du nom : proposition subordonnée relative"},{"id":"d","label":"Apposition"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Qui a terminé » est une proposition subordonnée relative, expansion du nom « élève ». Elle joue le rôle de complément de l''antécédent « élève ». La proposition relative est introduite par le pronom relatif « qui » et fonctionne comme un adjectif : elle apporte une précision sur le nom noyau. Selon la terminologie Éduscol, c''est la troisième grande catégorie d''expansion du nom, aux côtés de l''adjectif épithète et du complément du nom.',
  'Confondre la proposition subordonnée relative (expansion du nom) avec une proposition subordonnée complétive (qui complète un verbe).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — GN minimal vs étendu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Intermediaire',
  'qcm',
  'Parmi les GN suivants, lequel est un GN minimal ?',
  NULL,
  '[{"id":"a","label":"la belle maison"},{"id":"b","label":"le chat noir du voisin"},{"id":"c","label":"une table"},{"id":"d","label":"les enfants qui jouent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Une table » est un GN minimal car il est constitué uniquement d''un déterminant et d''un nom noyau, sans aucune expansion. Un GN minimal se réduit à sa structure de base : déterminant + nom. Dès qu''on ajoute un adjectif (« belle »), un complément du nom (« du voisin ») ou une relative (« qui jouent »), le GN devient étendu. La distinction GN minimal/GN étendu est fondamentale dans l''analyse de la langue au cycle 3.',
  'Oublier que le déterminant fait partie du GN minimal. Le GN minimal n''est pas le nom seul, mais bien déterminant + nom.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — Vrai/Faux — L''adjectif épithète
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : dans le GN « une grande maison », l''adjectif « grande » a pour fonction épithète du nom « maison ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Grande » est un adjectif qualificatif qui a pour fonction épithète du nom « maison ». L''épithète est une fonction de l''adjectif qualificatif à l''intérieur du GN. L''adjectif épithète est directement rattaché au nom noyau, sans l''intermédiaire d''un verbe. On distingue l''épithète liée (directement accolée au nom) de l''épithète détachée (séparée par une virgule, aussi appelée apposition).',
  'Confondre épithète et attribut. L''épithète est dans le GN, l''attribut est relié au nom par un verbe d''état.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Vrai/Faux — L''apposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Paris, capitale de la France, attire les touristes », le groupe « capitale de la France » est une apposition.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Capitale de la France » est une apposition au nom propre « Paris ». L''apposition est un élément détaché, séparé du nom par des virgules, qui apporte une information supplémentaire sur ce nom. Elle se distingue de l''épithète liée par sa ponctuation et son caractère détaché. L''apposition peut être supprimée sans que la phrase devienne agrammaticale.',
  'Confondre l''apposition avec le complément du nom. L''apposition est détachée par des virgules et pourrait former une phrase indépendante avec un verbe d''état (Paris est la capitale de la France).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — Vrai/Faux — Expansion et nature
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans le GN « un gâteau au chocolat », l''expansion « au chocolat » est de nature adjectivale.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « Au chocolat » est un groupe prépositionnel (préposition « à » + déterminant contracté + nom), et non un groupe adjectival. Sa nature est celle d''un groupe prépositionnel, même si sa fonction est complément du nom (comme pourrait l''être un adjectif). Il ne faut pas confondre la nature d''une expansion (ce qu''elle EST : groupe prépositionnel, adjectif, proposition relative) et sa fonction (le RÔLE qu''elle joue : complément du nom, épithète).',
  'Confondre nature et fonction d''une expansion. Un groupe prépositionnel complément du nom n''est pas « adjectival » par nature, même s''il joue un rôle proche de l''adjectif.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — Réponse courte — Identifier la fonction d''un adjectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Intermediaire',
  'reponse_courte',
  'Dans le GN « les fleurs sauvages des champs », combien y a-t-il d''expansions du nom noyau « fleurs » ? Répondez par un chiffre.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2","deux"]}'::jsonb,
  'Il y a 2 expansions du nom « fleurs » : l''adjectif épithète « sauvages » et le complément du nom « des champs » (groupe prépositionnel). Le nom noyau « fleurs » est enrichi par ces deux expansions de nature différente. L''adjectif « sauvages » est une épithète postposée, et « des champs » est un groupe prépositionnel en fonction de complément du nom.',
  'Oublier de compter l''une des deux expansions, ou compter le déterminant « les » comme une expansion alors qu''il fait partie du GN minimal.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Distinguer les types d''expansions
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Difficile',
  'reponse_courte',
  'Dans le GN « un homme que je connais bien », quelle est la nature grammaticale de l''expansion « que je connais bien » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["proposition subordonnée relative","subordonnée relative","proposition relative","relative"]}'::jsonb,
  '« Que je connais bien » est une proposition subordonnée relative. Elle est introduite par le pronom relatif « que » et complète l''antécédent « homme ». Cette relative est de type déterminatif : elle restreint le sens du nom noyau (il ne s''agit pas de n''importe quel homme, mais de celui que je connais bien). La proposition relative est la troisième catégorie d''expansion du nom, aux côtés de l''adjectif épithète et du complément du nom.',
  'Confondre « que » pronom relatif avec « que » conjonction de subordination. Ici, « que » a un antécédent (« homme ») et reprend ce nom dans la subordonnée (COD de « connais »).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Fonction du pronom relatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1d0000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'gram_groupe_nominal',
  'Le groupe nominal et ses expansions',
  'Difficile',
  'reponse_courte',
  'Dans le GN « la maison dont le toit est rouge », quelle est la fonction du pronom relatif « dont » à l''intérieur de la proposition relative ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["complément du nom","complement du nom"]}'::jsonb,
  '« Dont » est pronom relatif et a pour fonction complément du nom « toit » à l''intérieur de la proposition relative. La phrase reconstruite serait : « le toit de la maison est rouge ». « Dont » remplace « de la maison » et se rattache au nom « toit ». Le pronom relatif « dont » équivaut toujours à un complément introduit par « de ». Dans cette relative, il est complément du nom « toit » (le toit de qui ? de quoi ? — de la maison).',
  'Croire que « dont » est toujours COI. En réalité, « dont » peut être complément du nom, complément de l''adjectif ou COI selon le contexte syntaxique.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 3 : gram_groupe_verbal / Le groupe verbal et ses compléments
-- ============================================================

-- Q1 — Facile — QCM — Identifier le COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Facile',
  'qcm',
  'Dans la phrase « Les élèves lisent un roman passionnant », quel est le COD du verbe « lisent » ?',
  NULL,
  '[{"id":"a","label":"Les élèves"},{"id":"b","label":"un roman passionnant"},{"id":"c","label":"passionnant"},{"id":"d","label":"un roman"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le COD du verbe « lisent » est le groupe nominal « un roman passionnant ». Le COD est le complément essentiel qui se construit directement (sans préposition) après le verbe. On le repère par la question « Les élèves lisent quoi ? ». Le COD complet inclut le nom noyau « roman » avec toutes ses expansions (ici l''adjectif épithète « passionnant »). C''est l''ensemble du GN qui remplit la fonction COD.',
  'Réduire le COD au seul nom noyau « roman » en oubliant ses expansions. Le COD est le groupe nominal entier, pas seulement le nom.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Identifier le COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Facile',
  'qcm',
  'Dans la phrase « Elle parle à son frère », quelle est la fonction de « à son frère » ?',
  NULL,
  '[{"id":"a","label":"Complément circonstanciel de lieu"},{"id":"b","label":"Complément d''objet direct"},{"id":"c","label":"Complément d''objet indirect"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« À son frère » est complément d''objet indirect (COI) du verbe « parler ». Le COI est un complément essentiel du verbe introduit par une préposition (ici « à »). On le reconnaît parce qu''il ne peut être ni supprimé ni déplacé sans altérer profondément le sens. La construction « parler à quelqu''un » impose la préposition « à », ce qui distingue le COI du COD (construit sans préposition).',
  'Confondre le COI avec un complément circonstanciel de lieu. Le critère décisif est que le COI est un complément essentiel (non supprimable) alors que le CC est un complément de phrase (supprimable et déplaçable).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — QCM — Attribut du sujet vs COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Ce gâteau semble délicieux », quelle est la fonction de « délicieux » ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet direct"},{"id":"b","label":"Épithète"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"Complément circonstanciel de manière"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Délicieux » est attribut du sujet « ce gâteau ». L''attribut du sujet est un complément essentiel construit avec un verbe d''état (être, sembler, devenir, paraître, rester, demeurer, avoir l''air). Il attribue une qualité ou une caractéristique au sujet. Contrairement au COD, l''attribut du sujet désigne la même réalité que le sujet : le gâteau EST délicieux. On ne peut pas le pronominaliser par « le » comme un vrai COD.',
  'Confondre l''attribut du sujet avec un COD. Le test de la pronominalisation est utile : « Ce gâteau le semble » est incorrect, ce qui confirme que « délicieux » n''est pas un COD.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Complément essentiel vs circonstanciel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Il habite à Lyon », le groupe « à Lyon » est :',
  NULL,
  '[{"id":"a","label":"Un complément circonstanciel de lieu (supprimable)"},{"id":"b","label":"Un complément essentiel de lieu (non supprimable)"},{"id":"c","label":"Un attribut du sujet"},{"id":"d","label":"Un complément d''objet indirect"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« À Lyon » est un complément essentiel de lieu du verbe « habiter ». Bien qu''il indique un lieu, ce n''est pas un complément circonstanciel car il ne peut pas être supprimé : *« Il habite » serait incomplet. Le verbe « habiter » exige un complément de lieu pour avoir un sens complet. C''est la distinction fondamentale entre complément essentiel (requis par le verbe) et complément circonstanciel (ajout supprimable et déplaçable).',
  'Classer automatiquement tout complément de lieu comme complément circonstanciel. Le critère n''est pas le sens (lieu, temps, manière) mais le caractère essentiel ou non du complément par rapport au verbe.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — Vrai/Faux — Verbe transitif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : un verbe transitif direct est un verbe qui se construit avec un complément d''objet direct.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Un verbe transitif direct se construit avec un COD, c''est-à-dire un complément essentiel relié directement au verbe sans préposition. Exemples : « manger une pomme », « lire un livre », « voir un film ». On distingue les verbes transitifs directs (COD), transitifs indirects (COI) et intransitifs (aucun complément d''objet). Certains verbes peuvent changer de construction selon le contexte.',
  'Confondre verbe transitif direct et verbe transitif indirect. Le transitif indirect exige une préposition (parler à, penser à, s''occuper de).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Vrai/Faux — Attribut du COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Je trouve ce film ennuyeux », le mot « ennuyeux » est attribut du COD « ce film ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Ennuyeux » est attribut du COD « ce film ». L''attribut du COD attribue une qualité ou une caractéristique au COD par l''intermédiaire de verbes comme trouver, juger, considérer, rendre, nommer, élire. Ici, « ennuyeux » qualifie « ce film » à travers le verbe « trouver ». On peut vérifier par la paraphrase : « Je trouve que ce film est ennuyeux », où « ennuyeux » devient attribut du sujet.',
  'Confondre l''attribut du COD avec une épithète. L''attribut du COD passe par un verbe, l''épithète est directement dans le GN.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — Vrai/Faux — Verbe intransitif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Le soleil brille sur la ville », le verbe « brille » est transitif indirect car il est suivi d''un groupe prépositionnel.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « Brille » est un verbe intransitif. Le groupe « sur la ville » n''est pas un COI mais un complément circonstanciel de lieu : il peut être supprimé (« Le soleil brille ») et déplacé (« Sur la ville, le soleil brille »). Un verbe transitif indirect exige un COI — un complément essentiel non supprimable. La simple présence d''un groupe prépositionnel après le verbe ne suffit pas à rendre le verbe transitif indirect.',
  'Croire que tout groupe prépositionnel après le verbe est un COI. Le critère décisif est le caractère essentiel (non supprimable) du complément.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Réponse courte — Construction attributive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Ma sœur est devenue médecin », quelle est la fonction du mot « médecin » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["attribut du sujet","attribut"]}'::jsonb,
  '« Médecin » est attribut du sujet « ma sœur ». Le verbe « devenir » est un verbe d''état (ou verbe attributif) qui relie le sujet à son attribut. L''attribut du sujet exprime une qualité, une identité ou un état attribué au sujet. Ici, « médecin » (nom sans déterminant) désigne la même personne que « ma sœur ». Les principaux verbes d''état sont : être, sembler, devenir, paraître, rester, demeurer, avoir l''air, passer pour.',
  'Analyser « médecin » comme un COD. Le test : « Ma sœur le est devenue » est incorrect, ce qui confirme que ce n''est pas un COD mais un attribut.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — Réponse courte — Distinguer COD et COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Intermediaire',
  'reponse_courte',
  'Dans la phrase « Le professeur donne un exercice aux élèves », quelle est la fonction du groupe « aux élèves » ? Répondez avec le terme grammatical précis.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["complément d''objet indirect","COI","complement d''objet indirect","complément d''objet second","COS"]}'::jsonb,
  '« Aux élèves » est complément d''objet indirect (COI) du verbe « donner », aussi appelé complément d''objet second (COS) dans la mesure où le verbe a déjà un COD (« un exercice »). Il est introduit par la préposition « à » (contractée avec « les » en « aux »). Le verbe « donner » se construit avec une double complémentation : donner quelque chose (COD) à quelqu''un (COI/COS). Ce complément est essentiel : on ne peut le supprimer sans appauvrir le sens.',
  'Confondre le COI/COS avec un complément circonstanciel de lieu ou de destination. « Aux élèves » répond à la question « à qui ? » et non « où ? ».',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Complément essentiel de lieu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa190000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'gram_groupe_verbal',
  'Le groupe verbal et ses compléments',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Ce chemin mène à la gare », le groupe « à la gare » est-il un complément essentiel ou un complément circonstanciel ? Justifiez en un mot-clé : « essentiel » ou « circonstanciel ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["essentiel","complément essentiel","complement essentiel"]}'::jsonb,
  '« À la gare » est un complément essentiel du verbe « mener ». Le verbe « mener » exige un complément de lieu pour être complet : *« Ce chemin mène » est agrammatical ou change radicalement de sens. C''est le critère de suppression qui distingue le complément essentiel (non supprimable) du complément circonstanciel (supprimable). Même si « à la gare » exprime un lieu, sa fonction est celle d''un complément essentiel requis par la valence du verbe.',
  'Classer « à la gare » comme complément circonstanciel simplement parce qu''il exprime un lieu. Le sens (lieu, temps, cause) ne détermine pas la fonction : c''est la relation au verbe qui compte.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 4 : gram_subordonnees_relatives / Les propositions subordonnées relatives
-- ============================================================

-- Q1 — Facile — QCM — Identifier le pronom relatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Facile',
  'qcm',
  'Dans la phrase « Le film que nous avons vu était excellent », quel est le pronom relatif ?',
  NULL,
  '[{"id":"a","label":"Le"},{"id":"b","label":"nous"},{"id":"c","label":"que"},{"id":"d","label":"était"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Que » est le pronom relatif qui introduit la proposition subordonnée relative « que nous avons vu ». Le pronom relatif a deux rôles : il introduit la subordonnée relative et il reprend l''antécédent « film » à l''intérieur de cette subordonnée. Les pronoms relatifs simples sont : qui, que, quoi, dont, où. Il existe aussi des formes composées : lequel, laquelle, lesquels, etc.',
  'Confondre « que » pronom relatif avec « que » conjonction de subordination. Le pronom relatif a toujours un antécédent (ici « film »).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Identifier l''antécédent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Facile',
  'qcm',
  'Dans la phrase « J''ai rencontré l''auteur qui a écrit ce roman », quel est l''antécédent du pronom relatif « qui » ?',
  NULL,
  '[{"id":"a","label":"J''"},{"id":"b","label":"auteur"},{"id":"c","label":"roman"},{"id":"d","label":"ce"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''antécédent du pronom relatif « qui » est le nom « auteur ». L''antécédent est le mot (nom ou pronom) que le pronom relatif reprend et auquel la proposition relative se rattache. Ici, « qui a écrit ce roman » apporte une précision sur « l''auteur ». Pour identifier l''antécédent, on cherche le nom placé immédiatement avant le pronom relatif et qui a un sens cohérent dans la subordonnée.',
  'Choisir le premier nom de la phrase (« J'' ») au lieu du nom directement antéposé au pronom relatif.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — QCM — Fonction du pronom relatif « qui »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Intermediaire',
  'qcm',
  'Dans la proposition relative « qui chante dans la cour », quelle est la fonction du pronom relatif « qui » à l''intérieur de cette subordonnée ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet direct"},{"id":"b","label":"Sujet"},{"id":"c","label":"Complément circonstanciel"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Qui » est sujet du verbe « chante » dans la proposition relative. Le pronom relatif « qui » assume toujours la fonction sujet dans la subordonnée relative qu''il introduit. Si on remplace « qui » par l''antécédent, on obtient une phrase complète : « [L''enfant] chante dans la cour ». Connaître la fonction du pronom relatif dans la subordonnée est essentiel pour l''analyse grammaticale au CRPE.',
  'Confondre la fonction du pronom relatif (sujet dans la subordonnée) avec la fonction de la proposition relative entière (expansion du nom dans la phrase matrice).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Relative déterminative vs explicative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Les élèves, qui avaient bien révisé, ont réussi l''examen », la relative « qui avaient bien révisé » est :',
  NULL,
  '[{"id":"a","label":"Une relative déterminative (restrictive)"},{"id":"b","label":"Une relative explicative (appositive)"},{"id":"c","label":"Une proposition complétive"},{"id":"d","label":"Une relative substantive"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est une relative explicative (ou appositive). Les virgules qui l''encadrent signalent qu''elle apporte une information supplémentaire, non restrictive, sur « les élèves » : TOUS les élèves ont réussi, et il se trouve qu''ils avaient bien révisé. La relative déterminative, elle, restreint le sens de l''antécédent : « Les élèves qui avaient bien révisé ont réussi » (seuls ceux qui avaient révisé). Cette distinction est marquée à l''écrit par la ponctuation.',
  'Ignorer le rôle de la virgule. La présence ou l''absence de virgules change fondamentalement le sens : relative appositive (entre virgules, non restrictive) vs relative déterminative (sans virgules, restrictive).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — Vrai/Faux — Le pronom relatif « où »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le pronom relatif « où » peut exprimer le temps aussi bien que le lieu.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le pronom relatif « où » peut exprimer le lieu (« la ville où je suis né ») ou le temps (« le jour où il est parti »). Dans les deux cas, « où » est complément circonstanciel à l''intérieur de la subordonnée relative. Sa polyvalence est une source fréquente de confusion pour les élèves. Au CRPE, il est important de connaître cette double valeur du pronom relatif « où ».',
  'Croire que « où » ne s''emploie que pour le lieu. L''emploi temporel de « où » est tout à fait courant : « l''époque où », « le moment où », « l''année où ».',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Vrai/Faux — Complétive vs relative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Je sais que tu viendras », le mot « que » est un pronom relatif.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Dans « Je sais que tu viendras », « que » est une conjonction de subordination qui introduit une proposition subordonnée complétive (COD du verbe « savoir »). Le « que » pronom relatif a toujours un antécédent nominal : « le livre que je lis ». Le « que » conjonction de subordination n''a pas d''antécédent et introduit une complétive qui complète un verbe. Cette distinction « que » relatif / « que » conjonctif est fondamentale en analyse grammaticale.',
  'Confondre systématiquement « que » relatif et « que » conjonction. Le test de l''antécédent est décisif : si « que » reprend un nom, c''est un pronom relatif ; s''il n''a pas d''antécédent, c''est une conjonction.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — Vrai/Faux — Le pronom relatif « dont »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « C''est un sujet dont je me souviens bien », le pronom relatif « dont » a pour fonction COI du verbe « se souvenir ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Dont » est COI du verbe « se souvenir ». La construction de base est « se souvenir de quelque chose » : le pronom relatif « dont » remplace « de ce sujet ». En reconstituant la phrase sans relative : « Je me souviens bien de ce sujet ». Le pronom « dont » équivaut toujours à un complément introduit par la préposition « de ». Selon le contexte, « dont » peut être COI (se souvenir de), complément du nom (le toit de) ou complément de l''adjectif (fier de).',
  'Ne pas reconnaître que « dont » remplace un complément en « de ». L''astuce est de reconstruire la phrase en remplaçant « dont » par « de + antécédent ».',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Réponse courte — Fonction de « que » dans la relative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Le gâteau que Marie a préparé est délicieux », quelle est la fonction du pronom relatif « que » à l''intérieur de la proposition relative ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["COD","complément d''objet direct","complement d''objet direct"]}'::jsonb,
  '« Que » est complément d''objet direct (COD) du verbe « a préparé » dans la subordonnée relative. En reconstituant la phrase sans relative : « Marie a préparé le gâteau ». Le pronom relatif « que » reprend l''antécédent « gâteau » et remplit la fonction COD dans la subordonnée. Le pronom relatif « que » est presque toujours COD dans la subordonnée, contrairement à « qui » qui est sujet.',
  'Confondre la fonction de « que » dans la subordonnée (COD) avec celle de la proposition relative entière (expansion du nom « gâteau » dans la phrase matrice).',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — Réponse courte — Identifier l''antécédent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Intermediaire',
  'reponse_courte',
  'Dans la phrase « Nous avons visité le musée où sont exposées les œuvres de Monet », quel est l''antécédent du pronom relatif « où » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["musée","le musée","musee","le musee"]}'::jsonb,
  'L''antécédent du pronom relatif « où » est le nom « musée ». La proposition relative « où sont exposées les œuvres de Monet » se rattache à « musée » et en précise le sens. « Où » reprend « musée » en exprimant le lieu à l''intérieur de la subordonnée : « les œuvres de Monet sont exposées dans ce musée ». L''antécédent est le nom ou pronom qui précède le pronom relatif et que celui-ci représente.',
  'Choisir « œuvres » ou « Monet » comme antécédent. L''antécédent est le nom qui précède directement le pronom relatif et dont la relative constitue une expansion.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Pronom relatif composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1a0000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'gram_subordonnees_relatives',
  'Les propositions subordonnées relatives',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « La personne à laquelle je pense est absente », quelle est la nature du mot « laquelle » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["pronom relatif","pronom relatif composé","pronom relatif compose"]}'::jsonb,
  '« Laquelle » est un pronom relatif composé (forme féminin singulier). Les pronoms relatifs composés sont : lequel, laquelle, lesquels, lesquelles, et leurs formes contractées avec les prépositions (auquel, duquel, etc.). Ici, « à laquelle » reprend l''antécédent « la personne » (féminin singulier) et fonctionne comme COI dans la subordonnée (« je pense à cette personne »). Les pronoms relatifs composés s''accordent en genre et en nombre avec leur antécédent.',
  'Confondre le pronom relatif composé « laquelle » avec le pronom interrogatif « laquelle ». Dans ce contexte, il y a un antécédent (« la personne »), donc c''est bien un relatif.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 5 : gram_transformations_phrase / Transformations de la phrase
-- ============================================================

-- Q1 — Facile — QCM — Types de négation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Facile',
  'qcm',
  'Dans la phrase « Il ne mange que des légumes », de quel type de négation s''agit-il ?',
  NULL,
  '[{"id":"a","label":"Négation totale"},{"id":"b","label":"Négation partielle"},{"id":"c","label":"Négation restrictive (restriction)"},{"id":"d","label":"Négation exceptive"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Ne… que » est une négation restrictive (ou restriction). Contrairement à la négation totale (ne… pas) qui nie complètement, la négation restrictive limite le propos : « Il ne mange que des légumes » signifie « il mange seulement des légumes ». Elle peut être remplacée par « seulement » ou « uniquement ». Attention : grammaticalement, « ne… que » n''est pas une vraie négation mais une restriction, car la phrase reste affirmative sur le plan du sens (il mange bien des légumes).',
  'Confondre la négation restrictive « ne… que » avec la négation totale « ne… pas ». « Ne… que » équivaut à « seulement » et ne nie pas l''action.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Transformation passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Facile',
  'qcm',
  'Quelle est la forme passive de la phrase « Le chat attrape la souris » ?',
  NULL,
  '[{"id":"a","label":"La souris est attrapée par le chat."},{"id":"b","label":"La souris attrape le chat."},{"id":"c","label":"C''est le chat qui attrape la souris."},{"id":"d","label":"La souris a été attrapée par le chat."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La forme passive est « La souris est attrapée par le chat ». Dans la transformation passive, le COD de la phrase active (« la souris ») devient le sujet de la phrase passive, et le sujet actif (« le chat ») devient le complément d''agent introduit par « par ». Le verbe se conjugue avec l''auxiliaire « être » au même temps que le verbe actif (présent → présent). La voix passive n''est possible qu''avec les verbes transitifs directs.',
  'Choisir la réponse d) qui utilise le passé composé passif, alors que la phrase active est au présent. Le temps doit être conservé lors de la transformation.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — QCM — Phrase emphatique par extraction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Intermediaire',
  'qcm',
  'La phrase « C''est Pierre qui a gagné la course » est un exemple de :',
  NULL,
  '[{"id":"a","label":"Phrase passive"},{"id":"b","label":"Phrase emphatique par extraction (clivage)"},{"id":"c","label":"Phrase impersonnelle"},{"id":"d","label":"Phrase exclamative"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est une phrase emphatique par extraction, aussi appelée phrase clivée. Le procédé consiste à encadrer l''élément mis en relief par « c''est… qui » (pour le sujet) ou « c''est… que » (pour les compléments). La phrase de base est « Pierre a gagné la course » ; le clivage met « Pierre » en relief. Cette manipulation syntaxique est l''un des procédés de mise en relief étudiés dans le cadre des transformations de phrase au CRPE.',
  'Confondre la phrase clivée (emphatique par extraction) avec une simple phrase déclarative. Le dispositif « c''est… qui/que » est le marqueur formel du clivage.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Phrase impersonnelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Intermediaire',
  'qcm',
  'Parmi les phrases suivantes, laquelle est une construction impersonnelle ?',
  NULL,
  '[{"id":"a","label":"Le vent souffle fort."},{"id":"b","label":"Il est arrivé un accident grave."},{"id":"c","label":"Ils mangent au restaurant."},{"id":"d","label":"On ne sait jamais."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Il est arrivé un accident grave » est une construction impersonnelle. Le pronom « il » est un sujet grammatical impersonnel (il ne désigne personne) et « un accident grave » est le sujet réel (ou sujet logique). La phrase personnelle correspondante serait : « Un accident grave est arrivé ». La transformation impersonnelle déplace le sujet réel après le verbe et installe le pronom impersonnel « il » en position sujet. Certains verbes sont essentiellement impersonnels (falloir, pleuvoir), d''autres le deviennent par transformation.',
  'Confondre le « il » impersonnel avec le pronom personnel « il » (3e personne). Dans « Il est arrivé un accident », « il » ne renvoie à aucun référent.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Vrai/Faux — Négation partielle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Personne n''est venu », la négation est une négation totale.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « Personne n''est venu » contient une négation partielle. La négation totale (ne… pas, ne… point) porte sur l''ensemble de la phrase et la nie complètement. La négation partielle porte sur un élément précis : ici, « personne » nie le sujet (aucune personne). Les mots de négation partielle sont : personne, rien, aucun, jamais, nulle part, etc. Chacun porte sur un élément différent de la phrase (sujet, COD, temps, lieu).',
  'Confondre négation totale et négation partielle. La négation totale utilise « ne… pas » et nie globalement. La négation partielle utilise des termes spécifiques (personne, rien, jamais) et nie un élément précis.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Facile — Vrai/Faux — Transformation passive et verbes intransitifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : la phrase « L''enfant dort profondément » peut être transformée à la voix passive.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Le verbe « dormir » est intransitif : il ne se construit pas avec un COD. Or, seuls les verbes transitifs directs (qui ont un COD) peuvent être mis à la voix passive, car le COD de la phrase active devient le sujet de la phrase passive. Sans COD, la transformation passive est impossible. C''est un critère fondamental : l''impossibilité de mettre une phrase à la voix passive révèle l''absence de COD.',
  'Tenter de construire une forme passive avec un verbe intransitif. La transformation passive exige un verbe transitif direct avec un COD.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — Vrai/Faux — Dislocation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Ce livre, je l''ai déjà lu », le procédé de mise en relief est une dislocation (et non un clivage).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Ce livre, je l''ai déjà lu » est une phrase emphatique par dislocation. Le COD « ce livre » est détaché en tête de phrase et repris par le pronom « l'' ». La dislocation consiste à détacher un élément (en début ou fin de phrase) et à le reprendre (ou annoncer) par un pronom. Le clivage, lui, utilise le dispositif « c''est… qui/que ». Ce sont les deux principaux procédés de mise en relief (phrase emphatique) étudiés au CRPE.',
  'Confondre dislocation et clivage. La dislocation détache un élément et le reprend par un pronom ; le clivage encadre l''élément avec « c''est… qui/que ».',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — Réponse courte — Identifier le type de phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Intermediaire',
  'reponse_courte',
  'Transformez la phrase affirmative « Elle a toujours raison » en phrase négative totale. Écrivez la phrase transformée.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Elle n''a pas toujours raison","Elle n''a jamais raison"]}'::jsonb,
  'La négation totale de « Elle a toujours raison » est « Elle n''a pas toujours raison » (on nie la totalité avec « ne… pas »). On pourrait aussi proposer la négation partielle portant sur le temps : « Elle n''a jamais raison » (avec « ne… jamais »). La forme « ne… pas » est le marqueur standard de la négation totale en français. Elle encadre le verbe conjugué (ou l''auxiliaire dans les temps composés).',
  'Oublier la première partie de la négation (« ne/n'' »). En français standard écrit, la négation est toujours en deux parties : ne… pas, ne… plus, ne… jamais, etc.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Manipulation syntaxique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Difficile',
  'reponse_courte',
  'Quelle manipulation syntaxique permet de vérifier qu''un groupe est un complément circonstanciel et non un complément essentiel ? Nommez les deux tests principaux.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["suppression et déplacement","suppression et deplacement","déplacement et suppression","deplacement et suppression","suppression, déplacement","suppression, deplacement"]}'::jsonb,
  'Les deux manipulations syntaxiques qui permettent d''identifier un complément circonstanciel sont la suppression et le déplacement. Un complément circonstanciel peut être supprimé sans rendre la phrase agrammaticale, et il peut être déplacé (en tête de phrase, en fin de phrase). Un complément essentiel, au contraire, ne peut être ni supprimé ni déplacé. Ces manipulations (auxquelles s''ajoutent la substitution et l''ajout) sont les quatre outils fondamentaux de l''analyse syntaxique enseignés aux cycles 2 et 3.',
  'Ne citer qu''un seul test. Les deux tests (suppression ET déplacement) doivent être combinés pour un diagnostic fiable, car certains éléments peuvent être supprimés mais non déplacés.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Complément d''agent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1b0000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'gram_transformations_phrase',
  'Transformations de la phrase',
  'Difficile',
  'reponse_courte',
  'Dans la phrase passive « La lettre a été écrite par mon grand-père », quelle est la fonction du groupe « par mon grand-père » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["complément d''agent","complement d''agent","C d''agent"]}'::jsonb,
  '« Par mon grand-père » est complément d''agent du verbe « a été écrite ». Le complément d''agent est spécifique à la phrase passive : il désigne l''être ou la chose qui accomplit l''action exprimée par le verbe passif. Il correspond au sujet de la phrase active (« Mon grand-père a écrit la lettre »). Le complément d''agent est généralement introduit par « par », plus rarement par « de » (ex. : « aimé de tous »). Il peut être absent dans les phrases passives sans agent.',
  'Confondre le complément d''agent avec un complément circonstanciel. Le complément d''agent est propre à la voix passive et correspond au sujet de la phrase active.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
