-- ============================================================
-- Migration : Sujet blanc CRPE n°3 (15 exercices cross-domaines)
-- UUID prefix : d603
-- ============================================================

-- Q1 — grammaire — Facile — qcm — Les déterminants : identifier un article partitif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Facile',
  'qcm',
  'Dans la phrase « Il mange du pain avec de la confiture », quels sont les déterminants soulignés ?',
  NULL,
  '[{"id":"a","label":"Articles définis contractés"},{"id":"b","label":"Articles partitifs"},{"id":"c","label":"Déterminants possessifs"},{"id":"d","label":"Déterminants démonstratifs"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les formes « du » et « de la » sont ici des articles partitifs. Ils servent à désigner une quantité indéterminée d''une matière non dénombrable (du pain = une certaine quantité de pain). Il ne faut pas confondre « du » article partitif avec « du » article défini contracté (contraction de « de + le »), que l''on trouve dans « Il revient du marché ». Le critère distinctif est la possibilité de remplacer par « un peu de » : « Il mange un peu de pain » fonctionne, ce qui confirme l''article partitif. Les programmes d''Éduscol 2021 classent cette distinction parmi les compétences grammaticales attendues au cycle 3.',
  'La confusion entre article partitif (« du pain ») et article défini contracté (« du marché ») est très fréquente. Le test de substitution par « un peu de » permet de les distinguer.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — grammaire — Intermediaire — vrai_faux — Phrase emphatique par dislocation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La phrase « Ce livre, je l''ai déjà lu » est une phrase emphatique par dislocation.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette phrase est bien une phrase emphatique obtenue par dislocation (ou détachement). Le groupe nominal « ce livre » est extrait de sa position canonique de COD et placé en tête de phrase, repris par le pronom « l'' ». Ce procédé de mise en relief, appelé dislocation à gauche, permet de thématiser un élément. La terminologie Éduscol 2021 distingue la phrase emphatique (qui met en relief un constituant) de la phrase neutre (ordre canonique). Les deux grands procédés de mise en relief sont la dislocation et l''extraction (avec « c''est... qui/que »).',
  'Certains candidats confondent la dislocation avec l''extraction (« C''est ce livre que j''ai lu »). Les deux sont des procédés emphatiques, mais la dislocation utilise un détachement avec reprise pronominale, tandis que l''extraction utilise le présentatif « c''est... qui/que ».',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — grammaire — Difficile — reponse_courte — Expansion du groupe nominal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Le chat noir de ma voisine qui dort sur le canapé ronronne », quelle est la nature grammaticale de l''expansion « de ma voisine » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["complément du nom","complement du nom","CDN","cdn"]}'::jsonb,
  'L''expansion « de ma voisine » est un complément du nom. Il complète le nom « chat » en apportant une précision sur son possesseur. Dans la terminologie Éduscol 2021, les expansions du groupe nominal sont au nombre de quatre : l''adjectif épithète (« noir »), le complément du nom introduit par une préposition (« de ma voisine »), la proposition subordonnée relative (« qui dort sur le canapé ») et, plus rarement, le nom en apposition. Identifier la nature de chaque expansion est une compétence fondamentale au CRPE, car elle mobilise à la fois l''analyse syntaxique et la capacité à désambiguïser les rattachements.',
  'L''erreur la plus courante est de confondre le complément du nom avec un complément circonstanciel de lieu ou un COI. Le complément du nom se rattache à un nom (pas au verbe) et est introduit par une préposition.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — orthographe — Intermediaire — qcm — Homophones grammaticaux leur/leurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Intermediaire',
  'qcm',
  'Quelle analyse est correcte pour le mot « leur » dans la phrase « Je leur ai donné leurs cahiers » ?',
  NULL,
  '[{"id":"a","label":"Les deux « leur(s) » sont des déterminants possessifs"},{"id":"b","label":"Le premier est un pronom personnel, le second est un déterminant possessif"},{"id":"c","label":"Le premier est un déterminant possessif, le second est un pronom personnel"},{"id":"d","label":"Les deux « leur(s) » sont des pronoms personnels"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « Je leur ai donné », « leur » est un pronom personnel complément d''objet indirect (à eux/elles). Il est invariable et ne prend jamais de -s. Dans « leurs cahiers », « leurs » est un déterminant possessif qui s''accorde en nombre avec le nom qu''il détermine (plusieurs cahiers). Le critère de distinction est simple : le pronom « leur » peut être remplacé par « lui » au singulier, tandis que le déterminant « leur(s) » peut être remplacé par « mon/mes ». Les programmes Éduscol insistent sur la maîtrise des homophones grammaticaux comme compétence orthographique essentielle au cycle 3.',
  'L''erreur classique est d''ajouter un -s au pronom personnel « leur » quand il renvoie à plusieurs personnes. Or le pronom personnel COI « leur » est toujours invariable, contrairement au déterminant possessif.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — orthographe — Difficile — vrai_faux — Doubles consonnes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Le doublement de la consonne dans « appeler » s''explique par le préfixe latin ad- assimilé devant la consonne initiale du radical.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le verbe « appeler » vient du latin appellare, lui-même formé du préfixe ad- (vers) et de pellare (pousser). Lorsque le préfixe ad- rencontre une consonne initiale du radical, il s''assimile : ad- + pellare → appellare → appeler. Ce phénomène d''assimilation régressive explique de nombreuses doubles consonnes en français : accourir (ad- + courir), allonger (ad- + longer), annoter (ad- + noter). Comprendre ce mécanisme étymologique aide les enseignants à proposer des stratégies explicites de mémorisation orthographique, conformément aux recommandations d''Éduscol 2021 sur l''enseignement de l''orthographe lexicale.',
  'Beaucoup de candidats pensent que les doubles consonnes sont arbitraires. Or, dans de nombreux cas, elles résultent de l''assimilation d''un préfixe latin (ad-, in-, com-) avec la consonne du radical.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — conjugaison — Intermediaire — qcm — Conditionnel passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Si j''avais su, j''aurais agi autrement », à quel temps et mode est conjugué « aurais agi » ?',
  NULL,
  '[{"id":"a","label":"Futur antérieur de l''indicatif"},{"id":"b","label":"Conditionnel passé (première forme)"},{"id":"c","label":"Plus-que-parfait du subjonctif"},{"id":"d","label":"Passé composé de l''indicatif"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La forme « aurais agi » est un conditionnel passé (première forme). Il est composé de l''auxiliaire « avoir » au conditionnel présent (aurais) et du participe passé « agi ». Dans le système hypothétique, la subordonnée en « si » au plus-que-parfait (« si j''avais su ») appelle le conditionnel passé dans la principale. La terminologie Éduscol 2021 maintient la dénomination « conditionnel » comme mode à part entière, distinct de l''indicatif. Le conditionnel passé exprime ici l''irréel du passé, c''est-à-dire une action qui ne s''est pas réalisée.',
  'La confusion avec le futur antérieur est fréquente car les deux temps sont composés avec un auxiliaire + participe passé. La différence réside dans l''auxiliaire : « aurai » (futur) vs « aurais » (conditionnel).',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — conjugaison — Difficile — reponse_courte — Participe composé (ayant + PP)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Difficile',
  'reponse_courte',
  'Donnez la forme du participe composé (aussi appelé participe passé composé) du verbe « finir » avec l''auxiliaire « avoir ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["ayant fini","Ayant fini"]}'::jsonb,
  'Le participe composé (ou participe passé composé) du verbe « finir » est « ayant fini ». Il se forme avec le participe présent de l''auxiliaire (ayant) suivi du participe passé du verbe (fini). Cette forme verbale exprime l''antériorité par rapport au verbe principal : « Ayant fini son travail, il sortit. » Le participe composé est souvent négligé dans l''enseignement, mais il figure dans les programmes Éduscol 2021 au titre des formes verbales composées. Pour les verbes conjugués avec « être », la forme serait « étant + participe passé » (ex. : « étant parti(e)(s) »).',
  'L''erreur fréquente est de confondre le participe composé avec le gérondif composé (« en ayant fini ») ou de former incorrectement la construction avec « avoir fini » (infinitif passé) au lieu de « ayant fini ».',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — lexique — Facile — vrai_faux — Champ lexical vs champ sémantique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Le champ lexical et le champ sémantique désignent exactement la même notion en linguistique.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Le champ lexical est l''ensemble des mots qui se rapportent à un même thème (ex. : le champ lexical de la mer : vague, marée, écume, naviguer, marin). Le champ sémantique, en revanche, est l''ensemble des sens d''un même mot (ex. : le champ sémantique de « note » : note de musique, note scolaire, note écrite, note de frais). Le champ lexical part d''un thème vers plusieurs mots, tandis que le champ sémantique part d''un mot vers ses différents sens. Cette distinction est explicitement mentionnée dans les ressources Éduscol 2021 pour l''enseignement du lexique au cycle 3.',
  'La confusion entre ces deux notions est l''une des erreurs les plus fréquentes au CRPE. Retenir : lexical = un thème, plusieurs mots ; sémantique = un mot, plusieurs sens.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — lexique — Intermediaire — qcm — Hyperonymie et hyponymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Intermediaire',
  'qcm',
  'Dans la série « tulipe, rose, marguerite, orchidée », quel est l''hyperonyme approprié ?',
  NULL,
  '[{"id":"a","label":"Plante"},{"id":"b","label":"Fleur"},{"id":"c","label":"Végétal"},{"id":"d","label":"Pétale"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''hyperonyme approprié est « fleur ». Un hyperonyme est un mot dont le sens inclut celui d''autres mots plus spécifiques (les hyponymes). Ici, tulipe, rose, marguerite et orchidée sont tous des types de fleurs : ce sont des hyponymes de « fleur ». « Plante » et « végétal » sont des hyperonymes possibles mais trop généraux (ils incluent aussi les arbres, les fougères, etc.). « Pétale » n''est pas un hyperonyme mais un méronyme (partie d''une fleur). L''enseignement des relations lexicales (hyperonymie, hyponymie, méronymie) est préconisé par Éduscol pour structurer le vocabulaire des élèves.',
  'Choisir « plante » ou « végétal » serait trop large : ce ne serait pas l''hyperonyme le plus précis. Au CRPE, on attend l''hyperonyme de niveau immédiatement supérieur.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — comprehension_texte — Facile — qcm — Point de vue narratif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Facile',
  'qcm',
  'Un récit où le narrateur sait tout des pensées et sentiments de tous les personnages utilise quel point de vue narratif ?',
  NULL,
  '[{"id":"a","label":"Point de vue (focalisation) interne"},{"id":"b","label":"Point de vue (focalisation) externe"},{"id":"c","label":"Point de vue (focalisation) zéro ou omniscient"},{"id":"d","label":"Point de vue subjectif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Lorsque le narrateur a accès aux pensées, sentiments et motivations de tous les personnages, on parle de focalisation zéro ou point de vue omniscient. Selon la terminologie de Genette reprise par Éduscol, la focalisation interne restreint le savoir du narrateur à un seul personnage, la focalisation externe se limite à ce qui est observable de l''extérieur, et la focalisation zéro donne au narrateur un savoir illimité. Ce concept est fondamental pour l''analyse littéraire au cycle 3 et au CRPE, car il conditionne la compréhension de l''effet produit sur le lecteur.',
  'La confusion entre focalisation interne et focalisation zéro est courante. La focalisation interne donne accès aux pensées d''un seul personnage, pas de tous.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q11 — comprehension_texte — Difficile — reponse_courte — Versification : figure de style
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000b',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Difficile',
  'reponse_courte',
  'Dans le vers de Victor Hugo « Je suis veuf, je suis seul, et sur moi le soir tombe », comment appelle-t-on la figure de style consistant à répéter une même construction syntaxique ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["parallélisme","parallelisme","parallélisme de construction","parallelisme de construction"]}'::jsonb,
  'La figure de style en jeu est le parallélisme (ou parallélisme de construction). Elle consiste à reprendre une structure syntaxique identique dans des segments successifs : « Je suis veuf, je suis seul ». Ce procédé crée un effet d''insistance et de rythme. Il ne faut pas le confondre avec l''anaphore (répétition d''un mot en début de vers ou de phrase) ni avec l''accumulation (simple énumération). Dans ce vers des Contemplations, Hugo combine parallélisme et gradation pour exprimer la solitude croissante. L''analyse des figures de style dans la poésie est une compétence attendue au CRPE pour l''épreuve de français.',
  'L''erreur fréquente est de nommer cette figure « anaphore ». Or l''anaphore porte sur la répétition d''un mot en position initiale, tandis que le parallélisme porte sur la reprise d''une structure syntaxique entière.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q12 — analyse_langue — Intermediaire — vrai_faux — Anaphores et reprises dans un texte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000c',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans le texte « Marie entra. La jeune femme paraissait fatiguée », l''expression « la jeune femme » est une anaphore fidèle.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « La jeune femme » est une anaphore infidèle (aussi appelée anaphore par substitution lexicale). Une anaphore fidèle reprendrait le référent avec le même groupe nominal (« Marie... Marie... ») ou un pronom (« elle »). Ici, « la jeune femme » désigne bien Marie, mais en utilisant une expression différente qui apporte une information supplémentaire (son âge, son genre). Les types d''anaphores sont : fidèle (reprise identique), infidèle (substitution lexicale), pronominale (pronom), et conceptuelle (résomptive). La maîtrise des chaînes anaphoriques est essentielle pour l''enseignement de la compréhension en lecture, comme le souligne Éduscol 2021.',
  'Beaucoup de candidats confondent anaphore fidèle et infidèle. L''anaphore fidèle reprend exactement le même terme, tandis que l''anaphore infidèle utilise un substitut lexical différent pour désigner le même référent.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q13 — analyse_langue — Difficile — qcm — Progression thématique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000d',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Difficile',
  'qcm',
  'Quel type de progression thématique est à l''œuvre dans le texte suivant ? « Paris est la capitale de la France. La France est le plus grand pays d''Europe occidentale. L''Europe occidentale connaît un climat tempéré. »',
  NULL,
  '[{"id":"a","label":"Progression à thème constant"},{"id":"b","label":"Progression linéaire (à thème dérivé du rhème)"},{"id":"c","label":"Progression à thèmes dérivés (éclatés)"},{"id":"d","label":"Progression à thème englobant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il s''agit d''une progression linéaire (ou progression à thème dérivé du rhème). Dans ce schéma, le rhème (information nouvelle) d''une phrase devient le thème (sujet) de la phrase suivante : « la France » (rhème de P1) devient le thème de P2, puis « l''Europe occidentale » (rhème de P2) devient le thème de P3. La progression à thème constant reprendrait le même thème à chaque phrase. La progression à thèmes dérivés partirait d''un hyperthème se déclinant en sous-thèmes. Ce modèle d''analyse textuelle, issu des travaux de Combettes et repris par Éduscol, est un outil précieux pour enseigner la cohérence textuelle aux élèves de cycle 3.',
  'La confusion entre progression linéaire et progression à thème constant est fréquente. Dans la progression à thème constant, le même sujet est repris de phrase en phrase (« Le chat dort. Le chat mange. Le chat joue. »), ce qui n''est pas le cas ici.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q14 — didactique_francais — Facile — vrai_faux — Enseignement explicite de la compréhension (Goigoux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000e',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Selon les travaux de Roland Goigoux sur l''enseignement de la compréhension, il est recommandé d''enseigner explicitement aux élèves les stratégies de compréhension plutôt que de se limiter à vérifier leur compréhension par des questionnaires.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Roland Goigoux distingue clairement l''enseignement de la compréhension (apprendre aux élèves comment comprendre) de l''évaluation de la compréhension (vérifier s''ils ont compris). L''enseignement explicite de la compréhension consiste à modéliser les stratégies du lecteur expert : faire des inférences, reformuler, anticiper, réguler sa compréhension, identifier les personnages et leurs intentions. Les travaux de Goigoux, largement repris par Éduscol 2021, montrent que les élèves les plus fragiles bénéficient particulièrement de cet enseignement explicite. Le dispositif « Lectorino & Lectorinette » (Goigoux & Cèbe) illustre cette approche au cycle 2.',
  'Certains candidats pensent que poser des questions de compréhension après la lecture suffit à enseigner la compréhension. Or, cela ne fait que l''évaluer sans enseigner les stratégies nécessaires.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q15 — didactique_francais — Intermediaire — reponse_courte — La fluence en lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6030000-0000-0000-0000-00000000000f',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_3',
  'Sujet blanc CRPE n°3',
  'Intermediaire',
  'reponse_courte',
  'En didactique de la lecture, la fluence se définit par trois composantes. Citez celle qui, en plus de la vitesse et de la précision, est la troisième composante de la fluence en lecture.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["prosodie","la prosodie","expressivité","l''expressivité"]}'::jsonb,
  'La troisième composante de la fluence en lecture est la prosodie (aussi appelée expressivité ou lecture expressive). La fluence se définit ainsi par trois composantes : la vitesse (nombre de mots lus par minute), la précision (exactitude du décodage) et la prosodie (respect de l''intonation, du rythme, des pauses et de la ponctuation). Les évaluations nationales de fluence mises en place par le ministère (CP, CE1, 6e) mesurent principalement la vitesse et la précision, mais Éduscol 2021 souligne l''importance de la prosodie comme indicateur de compréhension. Un élève qui lit avec prosodie segmente correctement le texte en groupes de sens, ce qui témoigne d''une compréhension en cours de construction.',
  'Les candidats oublient souvent la prosodie et ne retiennent que la vitesse et la précision. Or la prosodie est fondamentale car elle révèle la compréhension du texte lu.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
