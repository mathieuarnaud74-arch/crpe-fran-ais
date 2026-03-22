-- Migration: Évaluer des productions d'élèves — critères et différenciation (10 exercices)
-- Subdomain: didactique_francais
-- topic_key: didactique_evaluation_productions
-- UUID prefix: e5020000
-- All exercises have rich support_text with realistic student productions

-- Q1 — QCM — Évaluation positive d'un récit CE2 (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Intermediaire',
  'qcm',
  'Quel critère d''évaluation positive retiendriez-vous en priorité pour cette production ?',
  'Production de Léa (CE2) — Consigne : « Raconte une aventure imaginaire. » — « Il était une fois une fille qui s''appeler Marie. Elle habiter dans une grande maison. Un jour elle a vu un dragon qui voler dans le ciel. Elle avait très peur mais elle est quand même aller vers lui. Le dragon il était gentil en fait. Il la emmener voler au dessus des nuages et Marie elle était trop contente. Après ils sont devenu amis pour toujours. »',
  '[{"id":"a","label":"La correction orthographique — car les erreurs de conjugaison sont peu nombreuses par rapport à la longueur du texte"},{"id":"b","label":"La cohérence narrative — car le texte présente une situation initiale, un élément perturbateur, des péripéties et une situation finale"},{"id":"c","label":"La ponctuation — car le texte comporte des points en fin de phrase"},{"id":"d","label":"La présentation graphique — car l''écriture est lisible"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le critère d''évaluation positive le plus pertinent est la cohérence narrative (b). Le texte de Léa respecte le schéma narratif complet : situation initiale (Marie dans sa maison), élément perturbateur (apparition du dragon), péripéties (peur puis approche), résolution (le dragon est gentil, ils volent ensemble) et situation finale (amitié). Cette compétence de structuration textuelle est fondamentale au cycle 2 et témoigne d''une réelle maîtrise en cours d''acquisition. L''évaluation positive (programmes 2020) impose de valoriser ce qui est acquis avant de cibler ce qui est à améliorer. L''orthographe (a) n''est pas un point fort ici. La ponctuation (c) et la présentation (d) sont des critères secondaires dans ce contexte.',
  'Se focaliser sur les erreurs d''orthographe au détriment de la compétence narrative. L''évaluation positive ne signifie pas ignorer les erreurs, mais hiérarchiser les critères pour encourager l''élève et cibler la remédiation sur la zone proximale de développement.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q2 — QCM — Compétence en cours d'acquisition CM1 (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Intermediaire',
  'qcm',
  'Quelle compétence est en cours d''acquisition chez cet élève ?',
  'Production de Théo (CM1) — Consigne : « Écris une lettre à un ami pour lui raconter tes vacances. » — « Cher Mathis, Pendant les vacances je suis allé à la mer. C''était trop bien. On a fait plein de trucs. On a nagé. On a mangé des glaces. On a joué au foot sur la plage. C''était cool. J''espère que toi aussi tu as passé de bonnes vacances. À bientôt, Théo. » L''enseignant note que le format de la lettre est respecté et que l''orthographe est correcte, mais que quelque chose manque.',
  '[{"id":"a","label":"Le respect du format épistolaire — l''élève n''a pas respecté les codes de la lettre"},{"id":"b","label":"L''orthographe grammaticale — les accords sont défaillants"},{"id":"c","label":"La richesse lexicale et la précision descriptive — l''élève utilise un vocabulaire pauvre et générique"},{"id":"d","label":"La segmentation en paragraphes — l''élève n''a pas fait de paragraphes"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La compétence en cours d''acquisition est la richesse lexicale et la précision descriptive (c). Le texte de Théo est syntaxiquement correct et respecte le format de la lettre (formule d''appel, corps, formule de congé), ce qui exclut (a). L''orthographe est bonne, ce qui exclut (b). Le problème réside dans l''usage d''un vocabulaire générique (« trop bien », « plein de trucs », « cool ») et l''absence de détails sensoriels ou descriptifs. La compétence « enrichir son lexique » (programmes cycle 3) est ici en développement. La différenciation pédagogique pourrait passer par des ateliers de vocabulaire thématique (lexique des sensations, de la mer) et des exercices d''expansion de phrases.',
  'Confondre correction orthographique et qualité rédactionnelle. Un texte peut être orthographiquement correct tout en manquant de richesse lexicale. L''évaluation doit prendre en compte toutes les dimensions de la production écrite.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q3 — QCM — Différenciation pour un élève en difficulté CE2 (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Avance',
  'qcm',
  'Quelle activité de différenciation proposeriez-vous pour faire progresser cet élève ?',
  'Production de Bilal (CE2) — Consigne : « Écris la suite de l''histoire du petit prince. » — « Le petit prince il va sur une planète. Ya un monsieur. Le monsieur il dit bonjour. Le petit prince il dit bonjour. Ils parle. Après le petit prince il part. Il va sur une autre planète. » L''enseignante observe que Bilal produit des phrases syntaxiquement simples avec des dislocations systématiques (« le petit prince il... »), une absence de connecteurs variés, et un registre exclusivement oral. Cependant, le texte respecte la consigne et présente une logique chronologique.',
  '[{"id":"a","label":"Réduire la longueur de la consigne pour que Bilal se concentre sur l''orthographe"},{"id":"b","label":"Proposer un atelier de transformation oral → écrit : réécrire collectivement un passage en supprimant les dislocations et en ajoutant des connecteurs"},{"id":"c","label":"Faire lire à Bilal davantage de livres pour qu''il absorbe naturellement les structures écrites"},{"id":"d","label":"Donner à Bilal des phrases modèles à recopier pour remplacer ses phrases"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''atelier de transformation oral → écrit (b) est la différenciation la plus pertinente. Bilal maîtrise la narration orale mais n''a pas encore intériorisé les normes de l''écrit (suppression des dislocations, usage de connecteurs variés, registre soutenu). Un travail collectif d''étayage sur la transformation permet de rendre explicites les différences entre oral et écrit dans la zone proximale de développement. Réduire la consigne (a) ne traite pas le problème. La lecture extensive (c) est utile à long terme mais ne constitue pas une remédiation ciblée. La copie de modèles (d) est passive et ne développe pas la compétence de production.',
  'Penser que la lecture seule suffit à développer les compétences d''écriture. L''enseignement explicite des normes de l''écrit, via des activités de transformation et de comparaison oral/écrit, est nécessaire pour accompagner le transfert.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q4 — QCM — Évaluation d'un texte argumentatif CM2 (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Avance',
  'qcm',
  'Dans le cadre d''une évaluation sommative de fin de période, quel niveau de maîtrise attribueriez-vous à cet élève pour la compétence « Écrire un texte organisé » ?',
  'Production d''Amira (CM2) — Consigne : « Écris un texte pour convaincre tes camarades de protéger l''environnement. » — « Je pense que nous devons protéger l''environnement parce que la planète est en danger. Premièrement, il faut arrêter de jeter les déchets dans la nature car sa pollue les rivières et les animaux peuvent mourrir. Deuxièmement, on devrait utiliser moins de plastique. Par exemple, on peut prendre des sacs en tissus au lieu des sacs en plastique. Enfin, il faut planter des arbres parce qu''ils donne de l''oxygène. En conclusion, si chacun fait un petit effort, on peut sauver la planète. »',
  '[{"id":"a","label":"Maîtrise insuffisante — le texte comporte trop d''erreurs orthographiques"},{"id":"b","label":"Maîtrise fragile — la structure argumentative est présente mais les arguments manquent de profondeur"},{"id":"c","label":"Maîtrise satisfaisante — le texte est organisé avec des connecteurs, des arguments illustrés d''exemples et une conclusion"},{"id":"d","label":"Très bonne maîtrise — le texte est parfait et ne nécessite aucune amélioration"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le texte d''Amira mérite le niveau « maîtrise satisfaisante » (c) pour la compétence « Écrire un texte organisé ». La production présente : (1) une introduction avec prise de position explicite (« Je pense que... »), (2) des arguments structurés par des connecteurs d''énumération (« premièrement, deuxièmement, enfin »), (3) un argument illustré d''un exemple concret (les sacs en tissu), (4) une conclusion avec ouverture. Les quelques erreurs orthographiques (« sa » pour « ça », « mourrir », « donne » sans -nt) ne justifient pas « maîtrise insuffisante » (a) car on évalue ici la compétence d''organisation textuelle, pas l''orthographe. Le texte n''est pas « parfait » (d) mais dépasse la « maîtrise fragile » (b) par sa structuration complète.',
  'Laisser les erreurs d''orthographe influencer l''évaluation d''une compétence rédactionnelle distincte. L''évaluation par compétences exige de dissocier les critères : un texte bien organisé avec des erreurs d''orthographe obtient un bon niveau en « organisation » et un niveau inférieur en « orthographe ».',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q5 — Tri catégories — Classer les éléments d'une production par niveau de maîtrise CE2 (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Intermediaire',
  'tri_categories',
  'Classez chaque élément observé dans la production de Jade selon son niveau de maîtrise.',
  'Production de Jade (CE2) — Consigne : « Raconte ce que tu as fait pendant le week-end. » — « Samedi, je suis allée chez ma mamie avec ma sœur. On a fait un gâteau au chocolat. C''était très bon ! Après, on a jouer dans le jardin. Ma sœur elle a tombé et elle a pleuré. Moi je les consolé et on a continuer a jouer. Dimanche, je suis resté à la maison. J''ai regarder la télé. » L''enseignante analyse les compétences manifestées.',
  '[{"id":"tc21q1w1","label":"Respect de la consigne (récit de week-end)"},{"id":"tc21q1w2","label":"Organisation chronologique (samedi... après... dimanche)"},{"id":"tc21q1w3","label":"Accords sujet-verbe au passé composé (allée, tombé)"},{"id":"tc21q1w4","label":"Distinction infinitif / participe passé (jouer/joué, regarder/regardé)"},{"id":"tc21q1w5","label":"Usage des pronoms (elle, moi, je, on)"},{"id":"tc21q1w6","label":"Syntaxe de l''oral transposée à l''écrit (ma sœur elle a tombé)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"acquis","label":"Acquis"},{"id":"en_cours","label":"En cours d''acquisition"},{"id":"non_acquis","label":"Non acquis"}],"mapping":{"tc21q1w1":"acquis","tc21q1w2":"acquis","tc21q1w3":"en_cours","tc21q1w4":"non_acquis","tc21q1w5":"en_cours","tc21q1w6":"en_cours"}}'::jsonb,
  'Le respect de la consigne et l''organisation chronologique sont acquis : Jade raconte bien son week-end en suivant l''ordre temporel avec des marqueurs adaptés. Les accords au passé composé sont en cours d''acquisition : « allée » est correct (accord avec le sujet féminin, auxiliaire être) mais « resté » ne porte pas la marque du féminin. La distinction infinitif/participe passé n''est pas acquise : Jade utilise systématiquement l''infinitif en -er au lieu du participe passé en -é. L''usage des pronoms est en cours : ils sont variés mais la dislocation (« ma sœur elle ») et « les » pour « l''ai » montrent une influence de l''oral sur l''écrit.',
  'Considérer qu''une compétence est « non acquise » dès qu''une erreur apparaît. L''évaluation doit tenir compte de la fréquence et de la systématicité des erreurs : une compétence « en cours d''acquisition » présente des réussites partielles.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q6 — Tri catégories — Classer les éléments d'un texte narratif CM1 (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Avance',
  'tri_categories',
  'Classez chaque compétence observée selon son niveau de maîtrise dans cette production.',
  'Production de Lucas (CM1) — Consigne : « Écris un conte merveilleux. » — « Il était une fois, dans un royaume lointain, un jeune garçon nommé Elias. Il vivait dans une humble chaumière au pied d''une montagne sombre et menaçante. Un matin, alors qu''il cueillait des champignons, il découvra une porte secrète cachée sous un rocher. Derrière la porte, il y avait un trésor gardé par un vieux dragon endormis. Le dragon se réveillat et dit : « Qui ose me déranger ? » Elias, tremblan de peur, répondit courageusement... » (texte inachevé)',
  '[{"id":"tc21q2w1","label":"Richesse lexicale (humble chaumière, sombre et menaçante, courageusement)"},{"id":"tc21q2w2","label":"Maîtrise du schéma narratif du conte (formule d''ouverture, cadre, élément perturbateur)"},{"id":"tc21q2w3","label":"Conjugaison du passé simple (découvra, réveillat)"},{"id":"tc21q2w4","label":"Accords dans le groupe nominal (un vieux dragon endormis)"},{"id":"tc21q2w5","label":"Respect de la consigne et achèvement du texte"},{"id":"tc21q2w6","label":"Utilisation des expansions du nom (compléments du nom, adjectifs, relatives)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"acquis","label":"Acquis"},{"id":"en_cours","label":"En cours d''acquisition"},{"id":"non_acquis","label":"Non acquis"}],"mapping":{"tc21q2w1":"acquis","tc21q2w2":"acquis","tc21q2w3":"en_cours","tc21q2w4":"en_cours","tc21q2w5":"en_cours","tc21q2w6":"acquis"}}'::jsonb,
  'La richesse lexicale est acquise : Lucas emploie un vocabulaire varié et précis (« humble chaumière », « sombre et menaçante », « courageusement »). Le schéma narratif du conte est acquis : formule d''ouverture, cadre spatio-temporel, élément perturbateur clairement identifiable. Les expansions du nom sont acquises (adjectifs épithètes, compléments du nom, participiales). La conjugaison du passé simple est en cours d''acquisition : Lucas tente de l''utiliser (ce qui est positif au CM1) mais commet des erreurs morphologiques (« découvra » → découvrit, « réveillat » → réveilla). Les accords dans le GN sont en cours : « endormis » au lieu de « endormi » (hypercorrection du pluriel). Le texte est inachevé, montrant une compétence de planification encore en développement.',
  'Sanctionner les erreurs de passé simple sans reconnaître la prise de risque. Un élève de CM1 qui tente le passé simple montre une ambition narrative qu''il faut valoriser avant de corriger les formes.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q7 — Tri catégories — Classer les éléments d'un texte documentaire CM2 (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Intermediaire',
  'tri_categories',
  'Classez chaque compétence observée dans cette production documentaire selon son niveau de maîtrise.',
  'Production de Fatou (CM2) — Consigne : « Écris un texte documentaire sur un animal de ton choix. » — « Le dauphin. Le dauphin est un mammifère marin. Il vit dans les océans du monde entier. Il peut mesurer entre 2 et 4 mètres. Les dauphins vivent en groupe qu''on appelle des bancs. Ils communiquent entre eux grâce à des sons. Les dauphin mange des poissons et des calmars. Ils sont très intelligent. Les dauphins sont menacé par la pollution des océan. Il faut les protéger. »',
  '[{"id":"tc21q3w1","label":"Organisation du texte documentaire (titre, informations classées par thème)"},{"id":"tc21q3w2","label":"Utilisation du présent de vérité générale"},{"id":"tc21q3w3","label":"Accords en nombre dans le groupe nominal (les dauphin, des océan)"},{"id":"tc21q3w4","label":"Accords de l''adjectif attribut (intelligent, menacé)"},{"id":"tc21q3w5","label":"Vocabulaire spécifique au domaine (mammifère marin, bancs)"},{"id":"tc21q3w6","label":"Cohérence des reprises anaphoriques (le dauphin / les dauphins / ils / il)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"acquis","label":"Acquis"},{"id":"en_cours","label":"En cours d''acquisition"},{"id":"non_acquis","label":"Non acquis"}],"mapping":{"tc21q3w1":"acquis","tc21q3w2":"acquis","tc21q3w3":"non_acquis","tc21q3w4":"non_acquis","tc21q3w5":"acquis","tc21q3w6":"en_cours"}}'::jsonb,
  'L''organisation documentaire est acquise : Fatou structure son texte avec un titre et des informations regroupées par thème (description, habitat, alimentation, menaces). Le présent de vérité générale est acquis et utilisé de manière cohérente. Le vocabulaire spécifique est acquis (« mammifère marin », « bancs »). Les accords en nombre dans le GN ne sont pas acquis : « les dauphin », « des océan » montrent une absence systématique de la marque du pluriel sur le nom. Les accords de l''adjectif attribut ne sont pas acquis non plus : « intelligent » et « menacé » ne portent pas la marque du pluriel. La cohérence des reprises anaphoriques est en cours : Fatou alterne singulier et pluriel de manière parfois incohérente dans un même paragraphe.',
  'Évaluer les accords comme « en cours » quand l''erreur est systématique. Si l''élève n''accorde jamais les noms et adjectifs au pluriel, la compétence est « non acquise », même si d''autres compétences sont solides.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q8 — Vrai/Faux — L'orthographe prime sur la cohérence (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Évaluez cette affirmation sur l''évaluation des productions écrites.',
  'Lors d''une réunion d''harmonisation entre enseignants de CM1, un collègue déclare : « Quand j''évalue une production écrite, le critère le plus important est la correction orthographique. Un texte qui contient trop de fautes d''orthographe ne peut pas obtenir un niveau satisfaisant, même si l''histoire est bien construite, le vocabulaire riche et les idées originales. Corriger l''orthographe est plus important que valoriser la cohérence textuelle. »',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'FAUX. Les programmes de 2020 et le socle commun distinguent clairement les compétences d''écriture : la cohérence textuelle, la richesse du contenu et l''orthographe sont des critères distincts qui doivent être évalués séparément. L''évaluation par compétences impose de ne pas laisser un critère (l''orthographe) annuler les réussites dans d''autres domaines (cohérence, créativité, argumentation). Un élève peut avoir une « maîtrise satisfaisante » en organisation textuelle et une « maîtrise fragile » en orthographe. Survaloriser l''orthographe décourage les élèves qui ont des compétences rédactionnelles réelles et crée une anxiété contre-productive face à l''écriture.',
  'Réduire l''évaluation d''une production écrite à la seule orthographe. Cette pratique pénalise les élèves dyslexiques ou en difficulté orthographique qui peuvent néanmoins produire des textes riches et bien structurés.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q9 — Vrai/Faux — Évaluation sommative vs formative (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Avance',
  'vrai_faux',
  'Vrai ou faux ? Évaluez cette proposition sur l''évaluation formative.',
  'Une enseignante de CM2 explique sa démarche à un inspecteur : « Pour les productions écrites, je n''utilise que l''évaluation formative. Chaque production est un brouillon qui sera révisé. Je donne des retours ciblés sur deux ou trois points maximum, adaptés au niveau de chaque élève. Un élève en difficulté recevra des retours sur la structure du texte, tandis qu''un élève avancé travaillera sur le style et la nuance du vocabulaire. Je n''attribue jamais de note chiffrée aux productions intermédiaires. » L''inspecteur lui répond : « L''évaluation formative ne devrait pas remplacer l''évaluation sommative en production d''écriture — les deux sont complémentaires et nécessaires. »',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'VRAI. L''inspecteur a raison : l''évaluation formative et l''évaluation sommative sont complémentaires et toutes deux nécessaires. L''évaluation formative (celle de l''enseignante) est excellente pour accompagner les apprentissages en cours : retours différenciés, ciblage progressif, révision itérative. Mais l''évaluation sommative est également indispensable pour (1) attester du niveau de maîtrise des compétences à un moment donné (livret scolaire, LSU), (2) permettre à l''élève de se situer dans sa progression, (3) communiquer avec les familles et les collègues. Les programmes prévoient les deux modalités. La différenciation pédagogique de l''enseignante est remarquable, mais elle doit être complétée par des bilans de compétences périodiques.',
  'Opposer évaluation formative et sommative comme si elles étaient incompatibles. En réalité, elles se complètent : la formative guide l''apprentissage au quotidien, la sommative fait le bilan à intervalles réguliers.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q10 — Vrai/Faux — Grille d'évaluation identique pour tous (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e5020000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'didactique_evaluation_productions',
  'Évaluation de productions d''élèves : critères et différenciation',
  'Avance',
  'vrai_faux',
  'Vrai ou faux ? Évaluez cette affirmation sur la différenciation en évaluation.',
  'Un professeur des écoles stagiaire déclare lors de son oral de titularisation : « Pour garantir l''équité dans l''évaluation des productions écrites, j''utilise exactement la même grille de critères et les mêmes attentes pour tous les élèves de ma classe de CM1. Un élève allophone, un élève dyslexique et un élève sans difficulté particulière sont tous évalués sur les mêmes critères avec le même niveau d''exigence. C''est le principe d''égalité républicaine. » Le jury lui objecte que cette approche confond égalité et équité.',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'VRAI — le jury a raison de distinguer égalité et équité. L''égalité (même traitement pour tous) n''est pas l''équité (traitement adapté aux besoins de chacun). La loi de 2005 pour l''égalité des droits et des chances, la loi de refondation de 2013, et les programmes imposent la différenciation pédagogique, y compris dans l''évaluation. Un élève allophone bénéficie d''aménagements (UPE2A, temps supplémentaire). Un élève dyslexique dispose d''un PAP ou PPS avec des adaptations spécifiques (non-pénalisation de certaines erreurs orthographiques). Évaluer tout le monde de manière identique pénalise les élèves à besoins éducatifs particuliers et ne respecte pas le cadre réglementaire. La différenciation n''est pas une faveur mais une obligation professionnelle.',
  'Confondre égalité de traitement et équité éducative. L''école inclusive exige d''adapter les modalités d''évaluation aux besoins des élèves, ce qui ne signifie pas abaisser les exigences mais offrir les moyens d''atteindre les mêmes compétences.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);
