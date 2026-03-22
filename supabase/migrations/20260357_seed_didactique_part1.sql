-- ============================================================
-- Migration : 7 séries Didactique du français (Part 1: séries 1-4)
-- 4 séries × 10 questions = 40 exercices
-- UUID prefix : d501–d504
-- ============================================================


-- ************************************************************
-- SÉRIE 1 : Enseignement de la compréhension
-- UUID prefix : d5010000
-- topic_key : did_enseignement_comprehension
-- ************************************************************

-- Q1 — Facile — qcm — Compréhension littérale vs inférentielle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Facile',
  'qcm',
  'Parmi les questions suivantes posées à des élèves de cycle 2 après la lecture d''un récit, laquelle relève de la compréhension inférentielle ?',
  NULL,
  '[{"id":"a","label":"Quel est le prénom du personnage principal ?"},{"id":"b","label":"Où se déroule l''histoire ?"},{"id":"c","label":"Pourquoi le personnage est-il triste à la fin du récit ?"},{"id":"d","label":"Combien de personnages apparaissent dans le texte ?"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La compréhension inférentielle exige du lecteur qu''il mette en relation des informations du texte avec ses propres connaissances pour construire du sens. Demander « pourquoi le personnage est triste » nécessite de relier des indices textuels (actions, dialogues) à une interprétation émotionnelle. Les questions a, b et d relèvent de la compréhension littérale : la réponse est explicitement présente dans le texte. Les programmes 2021 insistent sur l''enseignement explicite des stratégies inférentielles dès le cycle 2.',
  'Confondre compréhension littérale et inférentielle. Le critère clé est : la réponse est-elle directement écrite dans le texte (littérale) ou doit-elle être construite par le lecteur (inférentielle) ?',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — vrai_faux — Enseignement explicite de la compréhension
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Intermediaire',
  'vrai_faux',
  'L''enseignement explicite de la compréhension consiste principalement à poser des questions de compréhension après la lecture pour vérifier que les élèves ont compris le texte.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''enseignement explicite de la compréhension ne se réduit pas à un questionnaire post-lecture. Il s''agit de rendre visibles et enseignables les stratégies cognitives que le lecteur expert mobilise : anticiper, se faire un film mental, reformuler, revenir en arrière, repérer les connecteurs. Selon les travaux de Cèbe et Goigoux (Lectorino & Lectorinette, Narramus), l''enseignant modélise ces stratégies par le « think aloud » (pensée à voix haute), puis guide les élèves dans leur appropriation progressive. Le questionnaire post-lecture relève davantage de l''évaluation que de l''enseignement.',
  'Beaucoup de candidats assimilent « enseigner la compréhension » à « vérifier la compréhension ». L''enseignement explicite implique un modelage actif des stratégies, pas seulement un contrôle.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Difficile — reponse_courte — Dispositif Narramus
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Difficile',
  'reponse_courte',
  'Quel est le nom de l''outil didactique conçu par Sylvie Cèbe et Roland Goigoux pour enseigner la compréhension de récits en maternelle, fondé sur le principe « apprendre à raconter » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Narramus","narramus","NARRAMUS"]}'::jsonb,
  'Narramus est un outil didactique élaboré par Cèbe et Goigoux, publié aux éditions Retz. Il propose un enseignement structuré de la compréhension de récits dès la maternelle. Le principe fondateur est que les élèves apprennent à comprendre en apprenant à raconter : ils mémorisent progressivement le vocabulaire, construisent une représentation mentale de l''histoire, puis la racontent avec leurs propres mots. Cette démarche s''appuie sur la recherche montrant que la reformulation narrative est un puissant indicateur et levier de compréhension.',
  'Confondre Narramus (maternelle, compréhension de récits) avec Lectorino & Lectorinette (CE1-CE2) ou Lector & Lectrix (CM1-CM2-6e), qui sont d''autres outils des mêmes auteurs ciblant des niveaux différents.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — qcm — Le vocabulaire en contexte de lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Facile',
  'qcm',
  'Lors d''une séance de lecture au cycle 2, un élève rencontre un mot inconnu. Quelle stratégie l''enseignant doit-il enseigner en priorité selon les programmes ?',
  NULL,
  '[{"id":"a","label":"Chercher le mot dans le dictionnaire immédiatement"},{"id":"b","label":"Utiliser le contexte de la phrase et du texte pour émettre une hypothèse de sens"},{"id":"c","label":"Demander au voisin la définition du mot"},{"id":"d","label":"Sauter le mot et continuer la lecture sans s''y attarder"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes 2021 insistent sur l''apprentissage de stratégies autonomes de compréhension. Face à un mot inconnu, l''élève doit d''abord mobiliser le contexte (indices morphologiques, syntaxiques, sémantiques) pour formuler une hypothèse de sens. Le recours au dictionnaire intervient dans un second temps pour confirmer ou infirmer cette hypothèse. Cette stratégie développe l''autonomie du lecteur et sa capacité à traiter les textes de manière fluide. Sauter le mot ou demander immédiatement la réponse ne favorise pas la construction de stratégies de lecteur.',
  'Penser que le dictionnaire est toujours la première ressource. Les programmes valorisent d''abord l''utilisation du contexte, le dictionnaire étant un outil de vérification.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Cercles de lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Intermediaire',
  'vrai_faux',
  'Dans un cercle de lecture au cycle 3, chaque élève du groupe lit un livre différent afin de favoriser la diversité des lectures.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Dans un cercle de lecture (ou cercle littéraire), les élèves d''un même groupe lisent le même ouvrage. Le dispositif repose sur le partage d''interprétations autour d''un texte commun : chaque élève prépare une contribution (illustrateur, maître des passages, maître des liens, maître des mots, etc.) puis le groupe confronte ses lectures. C''est cette confrontation interprétative sur un même texte qui est le moteur des apprentissages. Le dispositif où chaque élève présente un livre différent relève davantage du « comité de lecture » ou de la « présentation d''ouvrages ».',
  'Confondre cercle de lecture (même livre, rôles différents, discussion interprétative) et comité de lecture (livres différents, présentations croisées).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Difficile — reponse_courte — Stratégie de compréhension
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on la stratégie de compréhension qui consiste pour le lecteur à se construire une représentation mentale de la scène décrite dans le texte, comme s''il « voyait un film dans sa tête » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["imagerie mentale","l''imagerie mentale","visualisation","la visualisation","film mental","le film mental"]}'::jsonb,
  'L''imagerie mentale (ou visualisation) est une stratégie de compréhension qui consiste à construire une représentation visuelle de ce qui est lu. Cèbe et Goigoux en font un pilier de leur démarche : dans Narramus, les élèves doivent « fabriquer un film dans leur tête » avant de voir les illustrations. La recherche montre que les lecteurs qui produisent des images mentales comprennent et mémorisent mieux les textes. Cette stratégie doit être enseignée explicitement car elle n''est pas spontanée chez tous les élèves.',
  'Ne pas connaître le terme « imagerie mentale » ou penser qu''il s''agit d''une activité spontanée ne nécessitant pas d''enseignement explicite.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Facile — qcm — Rôle de l'enseignant dans la médiation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Facile',
  'qcm',
  'Lors d''une lecture offerte au cycle 2, l''enseignant s''arrête régulièrement pour reformuler et questionner les élèves. Ce geste professionnel relève principalement de :',
  NULL,
  '[{"id":"a","label":"L''évaluation sommative"},{"id":"b","label":"La médiation de l''adulte pour soutenir la compréhension"},{"id":"c","label":"La différenciation pédagogique"},{"id":"d","label":"L''enseignement du décodage"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les arrêts réguliers lors d''une lecture offerte constituent un geste de médiation : l''enseignant aide les élèves à construire progressivement leur compréhension en reformulant, en attirant l''attention sur des éléments clés, en vérifiant la représentation mentale. Ce rôle de médiateur est central dans la didactique de la compréhension. Il ne s''agit pas d''évaluation sommative (pas de note), ni spécifiquement de différenciation, ni de travail sur le décodage. Les programmes soulignent l''importance de cet étayage langagier de l''adulte.',
  'Réduire la lecture offerte à un moment de plaisir passif. L''enseignant y joue un rôle actif de médiation pour accompagner la construction du sens.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — Types d'inférences
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Intermediaire',
  'qcm',
  'Un élève lit : « Léo enfila son manteau, prit son cartable et claqua la porte. » Il en déduit que Léo part à l''école. Ce raisonnement relève d''une :',
  NULL,
  '[{"id":"a","label":"Inférence logique fondée sur les connecteurs du texte"},{"id":"b","label":"Inférence pragmatique fondée sur les connaissances du monde du lecteur"},{"id":"c","label":"Compréhension littérale du texte"},{"id":"d","label":"Inférence lexicale fondée sur la morphologie des mots"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le texte ne dit pas explicitement que Léo part à l''école. Le lecteur mobilise ses connaissances du monde (un enfant avec un cartable le matin part probablement à l''école) pour produire cette inférence pragmatique. Jocelyne Giasson distingue plusieurs types d''inférences : logiques (fondées sur la structure du texte), pragmatiques (fondées sur les connaissances du lecteur) et créatives. La capacité à produire des inférences pragmatiques est un marqueur fort de la compétence de compréhension et doit être travaillée explicitement.',
  'Confondre inférence logique (déduite du texte lui-même, par les connecteurs ou la causalité explicite) et inférence pragmatique (qui nécessite des connaissances extérieures au texte).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Questionnement de texte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Difficile',
  'vrai_faux',
  'Selon les travaux de recherche en didactique, les questionnaires de lecture composés majoritairement de questions de repérage (compréhension littérale) suffisent à enseigner efficacement la compréhension aux élèves de cycle 3.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les recherches en didactique (Cèbe, Goigoux, Giasson, Tauveron) montrent que les questionnaires centrés sur le repérage d''informations explicites ne suffisent pas à enseigner la compréhension. Ils évaluent une compréhension de surface sans travailler les compétences interprétatives. Un enseignement efficace doit inclure des questions d''inférence, de mise en relation, d''interprétation et de réaction au texte. Les programmes 2021 du cycle 3 distinguent explicitement compréhension et interprétation, et demandent de travailler les deux dimensions. Les questionnaires de repérage seuls créent l''illusion que comprendre, c''est retrouver des informations.',
  'Penser que multiplier les questionnaires de repérage « entraîne » la compréhension. En réalité, cela entraîne surtout la localisation d''informations, une compétence nécessaire mais insuffisante.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — reponse_courte — Outil Lectorino & Lectorinette
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5010000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'did_enseignement_comprehension',
  'Enseignement de la compréhension',
  'Intermediaire',
  'reponse_courte',
  'Quel est le nom de l''outil didactique de Cèbe et Goigoux destiné aux élèves de CE1-CE2 pour enseigner la compréhension de textes narratifs ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Lectorino & Lectorinette","Lectorino et Lectorinette","lectorino & lectorinette","lectorino et lectorinette","Lectorino","lectorino"]}'::jsonb,
  'Lectorino & Lectorinette est un outil didactique de Cèbe et Goigoux (éditions Retz) destiné au CE1-CE2. Il enseigne quatre compétences fondamentales : fabriquer une représentation mentale, reformuler, raisonner pour comprendre les pensées des personnages, et réguler sa compréhension. Cet outil fait partie d''une collection cohérente : Narramus (maternelle), Lectorino & Lectorinette (CE1-CE2), Lector & Lectrix (CM1-6e). La connaissance de ces outils et de leurs fondements didactiques est attendue au CRPE.',
  'Confondre les niveaux cibles : Narramus pour la maternelle, Lectorino & Lectorinette pour le CE1-CE2, Lector & Lectrix pour le CM1 à la 6e.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ************************************************************
-- SÉRIE 2 : Enseignement de la grammaire
-- UUID prefix : d5020000
-- topic_key : did_enseignement_grammaire
-- ************************************************************

-- Q1 — Facile — qcm — Démarche ORL
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Facile',
  'qcm',
  'La démarche d''Observation Réfléchie de la Langue (ORL) repose sur un principe fondamental. Lequel ?',
  NULL,
  '[{"id":"a","label":"L''élève apprend les règles par cœur avant de les appliquer dans des exercices"},{"id":"b","label":"L''élève observe un corpus de phrases, manipule, classe et formule des régularités avant l''institutionnalisation"},{"id":"c","label":"L''enseignant dicte la règle puis propose des exercices d''application immédiate"},{"id":"d","label":"L''élève découvre la grammaire exclusivement à travers la production d''écrits"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''Observation Réfléchie de la Langue (ORL), introduite dans les programmes de 2002, adopte une démarche inductive : l''élève observe un corpus, manipule les unités linguistiques (suppression, déplacement, remplacement, encadrement), classe les phénomènes observés, puis formule des régularités qui seront institutionnalisées. Cette démarche s''oppose à l''enseignement transmissif (règle puis application). Les programmes 2021 conservent cette approche sous le nom « étude de la langue » avec les mêmes étapes : observation, manipulation, classement, institutionnalisation.',
  'Croire que l''ORL exclut toute formalisation. Au contraire, la phase d''institutionnalisation (trace écrite, règle) est essentielle, mais elle arrive après l''observation et la manipulation, pas avant.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — vrai_faux — Manipulation syntaxique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Intermediaire',
  'vrai_faux',
  'La manipulation syntaxique de remplacement (ou substitution) permet de tester si deux éléments appartiennent à la même catégorie grammaticale.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'La substitution (ou remplacement) est une manipulation syntaxique fondamentale en grammaire. Si un élément peut être remplacé par un autre dans un même contexte sans que la phrase devienne agrammaticale, les deux éléments appartiennent à la même catégorie ou occupent la même fonction. Par exemple, remplacer « le petit chat » par « il » montre que le groupe nominal a la même fonction que le pronom. Les quatre manipulations syntaxiques principales sont : suppression, déplacement, remplacement et encadrement (avec « c''est… qui/que »). Elles constituent des outils d''analyse que les programmes demandent d''enseigner explicitement.',
  'Confondre les manipulations : la suppression teste le caractère obligatoire/facultatif, le déplacement teste la mobilité (CC vs complément essentiel), le remplacement teste l''appartenance catégorielle.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Difficile — reponse_courte — Grammaire de phrase vs grammaire de texte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Difficile',
  'reponse_courte',
  'En grammaire de texte, comment appelle-t-on les mots ou expressions qui reprennent un élément déjà mentionné dans le texte pour assurer la continuité référentielle (pronoms, synonymes, périphrases) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["reprises anaphoriques","les reprises anaphoriques","anaphores","les anaphores","substituts","les substituts","chaîne anaphorique","la chaîne anaphorique"]}'::jsonb,
  'Les reprises anaphoriques (ou anaphores) sont les procédés par lesquels un élément du texte est repris sous une autre forme : pronoms (il, celui-ci), synonymes, périphrases, termes génériques. Elles constituent un axe majeur de la grammaire de texte, distincte de la grammaire de phrase qui opère au niveau de la phrase isolée. La maîtrise des reprises anaphoriques est essentielle pour la compréhension (identifier de qui/quoi on parle) et la production (éviter les répétitions, maintenir la cohérence). Les programmes de cycle 3 incluent explicitement le travail sur les « reprises » et la « cohérence textuelle ».',
  'Ne pas connaître le terme « anaphorique » et répondre vaguement « pronoms ». Les reprises anaphoriques incluent les pronoms mais aussi les substituts lexicaux (synonymes, périphrases, termes génériques).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — qcm — Activités de tri et classement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Facile',
  'qcm',
  'Un enseignant de CE2 propose à ses élèves de trier des étiquettes-mots en deux colonnes : « mots qui changent quand on met au pluriel » et « mots qui ne changent pas ». Cette activité vise principalement à :',
  NULL,
  '[{"id":"a","label":"Évaluer les connaissances en orthographe lexicale"},{"id":"b","label":"Faire observer la distinction entre mots variables et mots invariables"},{"id":"c","label":"Travailler la fluence de lecture"},{"id":"d","label":"Enrichir le vocabulaire des élèves"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''activité de tri est un outil didactique central dans l''enseignement de la grammaire par observation. Ici, le critère de tri (variation au pluriel) amène les élèves à observer la distinction fondamentale entre mots variables (noms, adjectifs, verbes, déterminants, pronoms) et mots invariables (adverbes, prépositions, conjonctions). Cette démarche inductive permet aux élèves de construire le concept grammatical par l''observation avant sa formalisation. Les programmes 2021 de cycle 2 préconisent ces activités de classement comme étape préalable à l''institutionnalisation.',
  'Confondre l''objectif grammatical (observer variable/invariable) avec un objectif orthographique. Le tri est ici un outil d''observation grammaticale, pas un exercice d''orthographe.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Terminologie progressive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Intermediaire',
  'vrai_faux',
  'Selon les programmes 2021, la notion de complément d''objet direct (COD) est introduite dès le CP.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les programmes 2021 prévoient une progression terminologique rigoureuse. Au cycle 2 (CP-CE2), les élèves identifient le verbe, le sujet et les compléments de manière fonctionnelle sans nécessairement utiliser le terme « COD ». La terminologie « complément d''objet direct » (COD) et « complément d''objet indirect » (COI) est formellement introduite au cycle 3 (CM1-CM2-6e). Au cycle 2, on parle plutôt de « compléments du verbe » en opposition aux « compléments de phrase ». Cette progressivité terminologique permet aux élèves de stabiliser les concepts avant de maîtriser la nomenclature complète.',
  'Croire que toute la terminologie grammaticale est introduite au cycle 2. Les programmes prévoient une introduction progressive : les concepts sont d''abord manipulés fonctionnellement avant d''être nommés avec la terminologie canonique.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Difficile — reponse_courte — La transposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Difficile',
  'reponse_courte',
  'En didactique de la grammaire, comment appelle-t-on l''activité qui consiste à transformer un texte en changeant systématiquement un paramètre (personne, temps, nombre) pour faire observer les variations morphologiques ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["la transposition","transposition","une transposition","transposition de texte","la transposition de textes"]}'::jsonb,
  'La transposition de textes est une activité didactique majeure popularisée notamment par Françoise Picot. Elle consiste à réécrire collectivement un texte en modifiant un paramètre : changer le « je » en « nous », passer du présent au passé, mettre au féminin. Cette activité oblige les élèves à observer et opérer les transformations morphologiques (accords, conjugaison) en contexte textuel, ce qui est plus riche que l''exercice isolé. La transposition articule grammaire de phrase et grammaire de texte et favorise le transfert vers la production d''écrits.',
  'Confondre la transposition (transformation systématique d''un texte selon un paramètre) avec la simple réécriture ou la dictée. La transposition a un objectif d''observation grammaticale spécifique.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Facile — qcm — Phase d'institutionnalisation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Facile',
  'qcm',
  'Dans une séquence de grammaire suivant la démarche inductive, à quel moment l''enseignant formalise-t-il la règle dans une trace écrite (phase d''institutionnalisation) ?',
  NULL,
  '[{"id":"a","label":"Au début de la séance, avant toute observation"},{"id":"b","label":"Pendant la phase de manipulation, pour guider les élèves"},{"id":"c","label":"Après les phases d''observation, manipulation et classement"},{"id":"d","label":"Uniquement lors de l''évaluation sommative"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La démarche inductive en grammaire suit un ordre précis : observation d''un corpus, manipulation (suppression, déplacement, remplacement, encadrement), classement des formes observées, formulation de régularités par les élèves, puis institutionnalisation par l''enseignant (trace écrite, règle formalisée). L''institutionnalisation vient donc après les phases actives d''observation et de manipulation. Cette chronologie garantit que les élèves construisent le concept avant de recevoir la formulation canonique. Donner la règle avant l''observation relève d''une démarche déductive, et non inductive.',
  'Placer l''institutionnalisation trop tôt dans la séquence. Beaucoup de candidats décrivent une démarche qui donne la règle avant la manipulation, ce qui relève de la démarche déductive et non inductive.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — Manipulations syntaxiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Intermediaire',
  'qcm',
  'Un enseignant demande à ses élèves de CM1 de tester si un groupe de mots peut être supprimé et déplacé dans la phrase. Cette double manipulation vise à identifier :',
  NULL,
  '[{"id":"a","label":"Le sujet de la phrase"},{"id":"b","label":"Le complément d''objet direct"},{"id":"c","label":"Le complément circonstanciel (complément de phrase)"},{"id":"d","label":"L''attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le test de suppression + déplacement est le test canonique du complément circonstanciel (appelé « complément de phrase » dans la terminologie actuelle). Un complément de phrase est à la fois supprimable (la phrase reste grammaticale sans lui) et déplaçable (on peut le mettre en début, milieu ou fin de phrase). Le sujet n''est ni supprimable ni déplaçable facilement. Le COD est supprimable dans certains cas mais pas déplaçable. L''attribut n''est ni supprimable ni déplaçable. Ces tests de manipulation sont des outils d''analyse que les programmes demandent d''enseigner dès le cycle 3.',
  'Oublier que les deux critères (suppression ET déplacement) doivent être réunis. Un COD est parfois supprimable mais pas déplaçable ; un complément de phrase répond aux deux critères.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Grammaire de texte au cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Difficile',
  'vrai_faux',
  'La grammaire de texte et la grammaire de phrase poursuivent exactement les mêmes objectifs et opèrent au même niveau d''analyse linguistique.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'La grammaire de phrase opère au niveau de la phrase isolée : elle analyse les constituants (sujet, verbe, compléments), les classes de mots et les accords. La grammaire de texte opère au niveau du texte dans son ensemble : elle étudie la cohérence textuelle, les connecteurs, les reprises anaphoriques, la progression thématique, les temps du récit, la ponctuation du dialogue. Ces deux niveaux sont complémentaires mais distincts. Les programmes 2021 du cycle 3 articulent les deux : l''étude de la langue inclut la phrase (syntaxe, morphologie) et le texte (cohérence, reprises, connecteurs). Une erreur fréquente au CRPE est de réduire la grammaire à la seule grammaire de phrase.',
  'Penser que « grammaire de texte » est un synonyme de « grammaire de phrase ». Ce sont deux niveaux d''analyse différents, complémentaires et tous deux requis par les programmes.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — reponse_courte — Les quatre manipulations syntaxiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5020000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'did_enseignement_grammaire',
  'Enseignement de la grammaire',
  'Intermediaire',
  'reponse_courte',
  'Quelle manipulation syntaxique utilise la structure « C''est… qui » ou « C''est… que » pour identifier un constituant de la phrase ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["l''encadrement","encadrement","la mise en relief","mise en relief","l''extraction","extraction","le clivage","clivage"]}'::jsonb,
  'L''encadrement (ou extraction, ou clivage) est la manipulation syntaxique qui utilise la structure « C''est… qui/que » pour isoler et identifier un constituant. Par exemple : « Le chat mange la souris » → « C''est le chat qui mange la souris » (encadrement du sujet) ou « C''est la souris que le chat mange » (encadrement du COD). Cette manipulation est particulièrement utile pour identifier le sujet (« C''est… qui ») et le COD (« C''est… que »). Avec la suppression, le déplacement et le remplacement, l''encadrement constitue l''une des quatre manipulations syntaxiques fondamentales enseignées dans le cadre de l''étude de la langue.',
  'Confondre encadrement et remplacement. L''encadrement utilise « C''est… qui/que » ; le remplacement substitue un élément par un autre de même catégorie.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ************************************************************
-- SÉRIE 3 : Enseignement du vocabulaire
-- UUID prefix : d5030000
-- topic_key : did_enseignement_vocabulaire
-- ************************************************************

-- Q1 — Facile — qcm — Morphologie lexicale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Facile',
  'qcm',
  'En didactique du vocabulaire, l''étude de la morphologie lexicale (préfixes, suffixes, radicaux) permet principalement aux élèves de :',
  NULL,
  '[{"id":"a","label":"Mémoriser l''orthographe des mots par la copie répétée"},{"id":"b","label":"Développer des stratégies autonomes pour comprendre et mémoriser des mots nouveaux"},{"id":"c","label":"Apprendre des listes de mots par cœur de manière systématique"},{"id":"d","label":"Améliorer la fluence de lecture à voix haute"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''enseignement de la morphologie lexicale (familles de mots, préfixes, suffixes, radicaux) est un levier majeur pour l''apprentissage du vocabulaire. En comprenant la construction des mots, les élèves peuvent déduire le sens de mots inconnus (« im-possible » = « non possible »), établir des liens entre mots d''une même famille et mémoriser plus efficacement. Les programmes 2021 insistent sur cette dimension morphologique dès le cycle 2. La recherche montre qu''un élève qui maîtrise les principaux affixes peut accéder au sens de nombreux mots dérivés de manière autonome.',
  'Réduire l''enseignement du vocabulaire à la mémorisation de listes de mots. L''approche morphologique développe des stratégies transférables, bien plus efficaces que la mémorisation isolée.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — vrai_faux — Vocabulaire passif vs actif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Intermediaire',
  'vrai_faux',
  'Le vocabulaire actif d''un élève désigne l''ensemble des mots qu''il est capable de comprendre lorsqu''il les rencontre en lecture.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Il faut distinguer vocabulaire passif et vocabulaire actif. Le vocabulaire passif (ou réceptif) comprend les mots que l''élève reconnaît et comprend en contexte de lecture ou d''écoute, sans nécessairement les utiliser. Le vocabulaire actif (ou productif) désigne les mots que l''élève est capable d''utiliser spontanément à l''oral ou à l''écrit. L''objectif de l''enseignement du vocabulaire est de faire passer des mots du vocabulaire passif au vocabulaire actif, par des réemplois fréquents en contexte. Le vocabulaire passif est toujours beaucoup plus étendu que le vocabulaire actif.',
  'Inverser vocabulaire passif et actif. Actif = mots que l''élève utilise en production ; passif = mots qu''il comprend en réception sans les utiliser lui-même.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Difficile — reponse_courte — Constellations de mots
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on le dispositif pédagogique qui organise les mots autour d''un mot central en réseau étoilé, reliant synonymes, antonymes, famille morphologique, champ lexical et expressions, afin de structurer l''apprentissage du vocabulaire ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["constellation de mots","une constellation de mots","la constellation de mots","constellation","les constellations de mots","constellations de mots"]}'::jsonb,
  'La constellation de mots est un dispositif didactique qui organise l''apprentissage du vocabulaire sous forme de réseau étoilé autour d''un mot central. Les branches relient ce mot à ses synonymes, antonymes, mots de la même famille morphologique, champ lexical associé, expressions figées et cooccurrences fréquentes. Ce dispositif, préconisé par Micheline Cellier et repris dans les ressources Éduscol, permet de structurer les connaissances lexicales et de créer des liens multiples entre les mots, favorisant la mémorisation et le réemploi. Il dépasse la simple liste et offre une vision organisée du lexique.',
  'Confondre constellation de mots et simple carte mentale. La constellation suit une organisation spécifique avec des catégories linguistiques précises (synonymes, antonymes, famille, champ lexical, expressions).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — qcm — Polysémie en contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Facile',
  'qcm',
  'Un enseignant de CE2 fait observer que le mot « pièce » peut désigner une partie d''un logement, une partie d''un mécanisme, une œuvre de théâtre ou une monnaie. Ce travail porte sur :',
  NULL,
  '[{"id":"a","label":"La synonymie"},{"id":"b","label":"L''antonymie"},{"id":"c","label":"La polysémie"},{"id":"d","label":"L''homonymie"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La polysémie désigne le fait qu''un même mot possède plusieurs sens liés entre eux. Le mot « pièce » est polysémique : ses différents sens (espace de vie, composant, œuvre théâtrale, monnaie) sont historiquement et sémantiquement reliés. La polysémie se distingue de l''homonymie, où des mots de même forme ont des sens sans lien entre eux et des étymologies différentes. Les programmes 2021 demandent de travailler la polysémie dès le cycle 2, car elle est source de nombreuses difficultés de compréhension en lecture. L''enseignement explicite des différents sens en contexte est essentiel.',
  'Confondre polysémie (un mot, plusieurs sens reliés) et homonymie (des mots différents de même forme, sens sans lien). Au CRPE, cette distinction est un classique.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Enseignement explicite du vocabulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Intermediaire',
  'vrai_faux',
  'Les recherches en didactique montrent que la simple exposition répétée à des mots en contexte de lecture suffit à garantir leur apprentissage par les élèves.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Si l''exposition répétée en contexte contribue à l''acquisition incidente du vocabulaire, la recherche (notamment les travaux de Beck, McKeown et Kucan) montre qu''elle ne suffit pas. Un enseignement explicite et structuré est nécessaire : définir le mot, l''utiliser dans plusieurs contextes, créer des liens avec d''autres mots connus, proposer des réemplois actifs. Les programmes 2021 insistent sur des séances dédiées à l''étude du vocabulaire, distinctes des moments de lecture. L''acquisition incidente fonctionne mieux pour les élèves ayant déjà un vocabulaire riche, ce qui creuse les écarts si l''on ne fait pas d''enseignement explicite.',
  'Croire que « lire beaucoup » suffit à développer le vocabulaire de tous les élèves. L''acquisition incidente profite surtout aux lecteurs déjà pourvus d''un vocabulaire étendu.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Difficile — reponse_courte — Réseaux de mots
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Difficile',
  'reponse_courte',
  'En didactique du vocabulaire, comment appelle-t-on la relation sémantique qui lie un mot de sens général à des mots de sens plus spécifique (par exemple : « animal » → « chien », « chat », « oiseau ») ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["hyperonymie","l''hyperonymie","relation d''hyperonymie","hyperonymie-hyponymie","l''hyperonymie-hyponymie","terme générique","relation générique-spécifique"]}'::jsonb,
  'L''hyperonymie est la relation sémantique qui lie un terme générique (hyperonyme) à des termes spécifiques (hyponymes). « Animal » est l''hyperonyme de « chien », « chat », « oiseau » qui sont ses hyponymes. Cette relation structure le lexique de manière hiérarchique et joue un rôle essentiel dans les reprises anaphoriques (remplacer « le labrador » par « l''animal »), la catégorisation et la définition. Les programmes de cycle 3 demandent de travailler les « relations entre les mots : termes génériques et termes spécifiques ». Micheline Cellier intègre cette relation dans les constellations de mots.',
  'Ne pas connaître le terme « hyperonymie » et parler seulement de « catégorie » ou « famille ». Au CRPE, la terminologie linguistique précise est attendue.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Facile — qcm — Contexte vs définition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Facile',
  'qcm',
  'Pour un enseignement efficace du vocabulaire au cycle 2, les recherches recommandent de combiner :',
  NULL,
  '[{"id":"a","label":"Uniquement la mémorisation de définitions de dictionnaire"},{"id":"b","label":"La rencontre des mots en contexte ET un travail structuré hors contexte (définition, relations sémantiques, réemploi)"},{"id":"c","label":"Uniquement la lecture à voix haute de textes riches"},{"id":"d","label":"La copie répétée de listes de mots classés par ordre alphabétique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La recherche en didactique du vocabulaire (Cellier, Beck et al.) montre que l''apprentissage le plus efficace combine deux approches complémentaires : la rencontre des mots en contexte (lecture, écoute) et un travail structuré hors contexte (définition, exploration des relations sémantiques, réemploi dans de nouvelles phrases). Ni le contexte seul ni la définition seule ne suffisent. Le contexte fournit un sens situé ; le travail structuré permet la décontextualisation et la généralisation. Les programmes 2021 préconisent cette articulation entre séances dédiées au vocabulaire et moments de lecture-écriture.',
  'Penser qu''une seule approche suffit. Les candidats choisissent souvent soit le contexte seul, soit la définition seule. C''est leur articulation qui est efficace.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — Stratégies d'apprentissage du vocabulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Intermediaire',
  'qcm',
  'Un enseignant de CM1 demande à ses élèves de décomposer le mot « invraisemblable » pour en trouver le sens. Quelle stratégie d''apprentissage du vocabulaire mobilise-t-il ?',
  NULL,
  '[{"id":"a","label":"La stratégie contextuelle (utiliser le contexte de la phrase)"},{"id":"b","label":"La stratégie morphologique (analyser la structure du mot : préfixe, radical, suffixe)"},{"id":"c","label":"La stratégie dictionnairique (chercher dans le dictionnaire)"},{"id":"d","label":"La stratégie étymologique (chercher l''origine latine ou grecque du mot)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Décomposer un mot en ses constituants morphologiques (in-vraisembl-able → préfixe de négation + radical + suffixe adjectival) relève de la stratégie morphologique. Cette stratégie est particulièrement efficace en français, où la dérivation est très productive. En analysant « invraisemblable », l''élève identifie le radical « vraisemblable », le préfixe « in- » (négation) et le suffixe « -able » (possibilité). Les programmes 2021 insistent sur l''étude de la formation des mots (dérivation, composition) comme outil de compréhension et d''enrichissement du vocabulaire, dès le cycle 2 et de manière approfondie au cycle 3.',
  'Confondre stratégie morphologique et stratégie étymologique. L''analyse morphologique opère sur la structure du mot en français ; l''étymologie remonte aux origines historiques (latin, grec).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Champ lexical vs champ sémantique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Difficile',
  'vrai_faux',
  'Le champ lexical et le champ sémantique désignent exactement la même notion linguistique.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Le champ lexical et le champ sémantique sont deux notions distinctes. Le champ lexical regroupe l''ensemble des mots (de différentes catégories grammaticales) qui se rapportent à un même thème : le champ lexical de la mer inclut « vague », « naviguer », « marin », « salé ». Le champ sémantique, à l''inverse, désigne l''ensemble des sens d''un même mot polysémique : le champ sémantique du mot « opération » inclut les sens chirurgical, mathématique, militaire, financier. La confusion entre ces deux notions est fréquente. Au cycle 3, les programmes travaillent surtout le champ lexical dans l''analyse de textes et le champ sémantique à travers la polysémie.',
  'Confondre champ lexical (un thème → plusieurs mots) et champ sémantique (un mot → plusieurs sens). C''est une confusion très classique au CRPE.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — reponse_courte — Autrice de référence en vocabulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5030000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'did_enseignement_vocabulaire',
  'Enseignement du vocabulaire',
  'Intermediaire',
  'reponse_courte',
  'Quel est le nom de la didacticienne française, autrice de l''ouvrage de référence « Le vocabulaire à l''école élémentaire » (Retz), qui a popularisé le dispositif des constellations de mots ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Micheline Cellier","micheline cellier","Cellier","cellier","M. Cellier"]}'::jsonb,
  'Micheline Cellier est une didacticienne spécialisée dans l''enseignement du vocabulaire à l''école primaire. Son ouvrage « Le vocabulaire à l''école élémentaire » (Retz) est une référence incontournable pour la préparation au CRPE. Elle y développe les principes d''un enseignement structuré du vocabulaire : séances dédiées, constellations de mots, articulation contexte/hors-contexte, travail sur les relations sémantiques. Ses travaux ont largement influencé les ressources d''accompagnement Éduscol en vocabulaire. Connaître cette autrice et ses apports est un atout pour l''épreuve de didactique du CRPE.',
  'Ne pas connaître les auteurs de référence en didactique du vocabulaire. Au CRPE, il est attendu de pouvoir citer les didacticiens majeurs et leurs apports.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ************************************************************
-- SÉRIE 4 : Différenciation et évaluation en français
-- UUID prefix : d5040000
-- topic_key : did_differenciation_evaluation
-- ************************************************************

-- Q1 — Facile — qcm — Évaluation formative vs sommative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Facile',
  'qcm',
  'Quelle est la fonction principale de l''évaluation formative ?',
  NULL,
  '[{"id":"a","label":"Classer les élèves par niveau de performance"},{"id":"b","label":"Attribuer une note chiffrée pour le bulletin scolaire"},{"id":"c","label":"Réguler les apprentissages en identifiant les réussites et les difficultés en cours de séquence"},{"id":"d","label":"Certifier un niveau de compétence en fin de cycle"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''évaluation formative a pour fonction de réguler les apprentissages : elle intervient pendant la séquence d''enseignement pour identifier ce que l''élève a compris, repérer ses erreurs et ajuster l''enseignement en conséquence. Elle se distingue de l''évaluation sommative (bilan en fin de séquence) et de l''évaluation certificative (validation d''un niveau en fin de cycle). Les programmes 2021 et le référentiel de compétences des enseignants insistent sur le rôle central de l''évaluation formative pour accompagner les progrès de chaque élève. Elle n''a pas vocation à être notée mais à informer l''enseignant et l''élève.',
  'Confondre évaluation formative et sommative. La formative régule en cours d''apprentissage ; la sommative dresse un bilan en fin de séquence.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — vrai_faux — L'évaluation positive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Intermediaire',
  'vrai_faux',
  'L''évaluation positive consiste à ne relever que les réussites de l''élève sans jamais pointer ses erreurs.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''évaluation positive, inscrite dans la loi de refondation de 2013 et reprise dans les programmes 2021, ne signifie pas ignorer les erreurs. Elle consiste à valoriser les acquis et les progrès de l''élève tout en identifiant les points à améliorer de manière constructive. L''erreur est considérée comme un indicateur d''apprentissage, non comme une faute. L''évaluation positive s''appuie sur des critères de réussite explicites, permet à l''élève de voir ses progrès et l''engage dans une dynamique de progression. Cela n''exclut pas l''identification précise des difficultés, qui est nécessaire pour la remédiation.',
  'Interpréter « évaluation positive » comme « ne rien dire de négatif ». L''évaluation positive est un regard bienveillant ET exigeant qui identifie les acquis et les progrès tout en repérant les besoins.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Difficile — reponse_courte — PPRE
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on le dispositif institutionnel, prévu par la loi d''orientation de 2005, qui coordonne les actions de remédiation pour un élève en difficulté scolaire et qui est formalisé dans un document signé par l''enseignant, les parents et l''élève ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["PPRE","Programme personnalisé de réussite éducative","programme personnalisé de réussite éducative","le PPRE","un PPRE"]}'::jsonb,
  'Le PPRE (Programme Personnalisé de Réussite Éducative) est un dispositif institutionnel instauré par la loi d''orientation de 2005 (article L. 311-3-1 du Code de l''éducation). Il est destiné aux élèves qui risquent de ne pas maîtriser les connaissances et compétences du socle commun. Le PPRE formalise un plan d''actions coordonnées : objectifs précis, actions de remédiation, durée, modalités d''évaluation. Il est élaboré par l''équipe pédagogique, présenté aux parents et signé par les parties. Il se distingue du PAP (troubles des apprentissages), du PPS (handicap) et du PAI (problème de santé).',
  'Confondre PPRE, PAP, PPS et PAI. Le PPRE concerne la difficulté scolaire ; le PAP concerne les troubles des apprentissages ; le PPS concerne le handicap (MDPH) ; le PAI concerne les problèmes de santé.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — qcm — Critères de réussite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Facile',
  'qcm',
  'Avant une production d''écrit au cycle 3, l''enseignant élabore avec les élèves une grille de critères de réussite. Ce geste pédagogique vise principalement à :',
  NULL,
  '[{"id":"a","label":"Faciliter la correction pour l''enseignant"},{"id":"b","label":"Rendre explicites les attendus et permettre l''auto-évaluation par l''élève"},{"id":"c","label":"Réduire le temps de rédaction des élèves"},{"id":"d","label":"Remplacer la note chiffrée par des appréciations"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''élaboration collective de critères de réussite est un geste professionnel clé de l''évaluation formative. Elle rend explicites les attendus de la tâche pour tous les élèves, leur permettant de s''auto-évaluer et de réviser leur production en autonomie. Cette explicitation réduit les inégalités liées à la « connivence scolaire » : les élèves qui ne devinent pas les attentes implicites sont particulièrement aidés. Les critères de réussite distinguent ce qui est non négociable (contraintes du genre, correction orthographique) et ce qui est souhaitable (richesse du vocabulaire, originalité). Ce dispositif s''inscrit dans la logique de l''évaluation par compétences.',
  'Penser que les critères de réussite servent uniquement à l''enseignant pour corriger. Leur fonction première est de rendre les attendus explicites pour l''élève, qui devient acteur de son apprentissage.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Étayage et désétayage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Intermediaire',
  'vrai_faux',
  'En pédagogie, le désétayage consiste à maintenir les aides de l''enseignant le plus longtemps possible pour garantir la réussite de l''élève.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Le désétayage est le processus inverse : il consiste à retirer progressivement les aides (étayages) au fur et à mesure que l''élève gagne en autonomie. Le concept s''inscrit dans la théorie de Bruner sur l''étayage (scaffolding), elle-même inspirée de la zone proximale de développement de Vygotski. L''enseignant offre d''abord un soutien important (modelage, guidage, outils d''aide), puis le réduit progressivement pour que l''élève intériorise la compétence et devienne autonome. Maintenir l''étayage trop longtemps crée une dépendance et empêche l''autonomisation. Le désétayage est donc un geste professionnel essentiel.',
  'Confondre étayage et désétayage, ou penser que « plus on aide, mieux c''est ». L''objectif final est l''autonomie de l''élève, ce qui nécessite un retrait progressif des aides.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Difficile — reponse_courte — Différenciation pédagogique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Difficile',
  'reponse_courte',
  'Selon le modèle de Carol Ann Tomlinson, quels sont les trois éléments sur lesquels peut porter la différenciation pédagogique ? (Citez les trois éléments séparés par des virgules.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["contenu, processus, production","contenus, processus, productions","le contenu, le processus, la production","contenu processus production"]}'::jsonb,
  'Carol Ann Tomlinson identifie trois leviers de différenciation pédagogique : le contenu (ce que l''élève apprend : adapter les textes, le niveau de complexité), le processus (comment l''élève apprend : varier les modalités de travail, le guidage, le temps) et la production (comment l''élève montre ce qu''il a appris : adapter les supports de restitution, les critères). Ce modèle est largement repris dans la formation des enseignants et les ressources Éduscol. Il montre que différencier ne se réduit pas à « donner moins de travail » mais peut agir sur plusieurs dimensions de la situation d''apprentissage.',
  'Réduire la différenciation au seul contenu (donner un texte plus court ou plus simple). Les trois leviers (contenu, processus, production) offrent un éventail beaucoup plus large de possibilités.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Facile — qcm — Évaluation par compétences
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Facile',
  'qcm',
  'Dans le livret scolaire unique (LSU), les acquis des élèves sont évalués selon une échelle à quatre niveaux. Lesquels ?',
  NULL,
  '[{"id":"a","label":"Insuffisant, Fragile, Satisfaisant, Très satisfaisant"},{"id":"b","label":"Non atteint, Partiellement atteint, Atteint, Dépassé"},{"id":"c","label":"Débutant, Apprenti, Confirmé, Expert"},{"id":"d","label":"En cours d''acquisition, Acquis, Renforcé, Approfondi"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le Livret Scolaire Unique (LSU), généralisé depuis 2016, utilise une échelle à quatre niveaux pour évaluer les acquis : Non atteint, Partiellement atteint, Atteint, Dépassé. Cette échelle correspond aux quatre positionnements du socle commun en fin de cycle. Elle remplace les notes chiffrées par une évaluation par compétences qui rend compte du degré de maîtrise de chaque compétence travaillée. Le LSU assure le suivi des acquis de l''élève du CP à la 3e et constitue un outil de communication avec les familles. La connaissance de cet outil institutionnel est attendue au CRPE.',
  'Confondre les échelles. L''échelle « Insuffisant/Fragile/Satisfaisant/Très satisfaisant » est celle des évaluations nationales (CP, CE1), pas celle du LSU.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — Les ceintures de compétences
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Intermediaire',
  'qcm',
  'Le dispositif des « ceintures de compétences » en français permet principalement de :',
  NULL,
  '[{"id":"a","label":"Regrouper les élèves par niveau de manière permanente dans la classe"},{"id":"b","label":"Proposer un parcours progressif et individualisé où chaque élève avance à son rythme dans la maîtrise d''une compétence"},{"id":"c","label":"Supprimer toute forme d''évaluation au profit de l''auto-déclaration de compétence"},{"id":"d","label":"Imposer un rythme d''apprentissage identique à tous les élèves"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les ceintures de compétences, inspirées de la pédagogie institutionnelle (Fernand Oury), proposent un parcours progressif et individualisé. Chaque compétence (par exemple, l''accord sujet-verbe) est déclinée en niveaux de difficulté croissante, matérialisés par des couleurs (comme les ceintures de judo). L''élève s''entraîne, passe un « test de ceinture » quand il se sent prêt, et progresse à son rythme. Ce dispositif favorise la différenciation, l''autonomie et la motivation intrinsèque. Il ne crée pas de groupes de niveau figés : un élève peut être ceinture verte en grammaire et ceinture bleue en conjugaison.',
  'Penser que les ceintures figent les élèves dans des groupes de niveau. Au contraire, chaque élève a un profil différencié selon les compétences et progresse à son propre rythme.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Remédiation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Difficile',
  'vrai_faux',
  'La remédiation pédagogique consiste simplement à reproposer le même exercice à l''élève en difficulté jusqu''à ce qu''il réussisse.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'La remédiation ne consiste pas à répéter la même tâche. Elle implique d''abord une analyse diagnostique de l''erreur pour en comprendre l''origine (conception erronée, procédure inadaptée, manque de prérequis, problème de compréhension de la consigne). Ensuite, l''enseignant propose une approche différente : autre entrée pédagogique, autre support, manipulation, tutorat entre pairs, reprise d''un prérequis. La remédiation est donc une réponse ciblée à une difficulté identifiée, et non une simple répétition. Les travaux de Jean-Pierre Astolfi sur le statut de l''erreur fondent cette approche : l''erreur est un indicateur qui guide la remédiation.',
  'Confondre remédiation et répétition. Refaire le même exercice sans changer d''approche pédagogique ne constitue pas une remédiation ; c''est de la simple répétition, souvent inefficace.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — reponse_courte — Zone proximale de développement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5040000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'did_differenciation_evaluation',
  'Différenciation et évaluation en français',
  'Intermediaire',
  'reponse_courte',
  'Quel psychologue russe a théorisé la « zone proximale de développement » (ZPD), concept fondamental pour penser l''étayage et la différenciation pédagogique ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Vygotski","vygotski","Vygotsky","vygotsky","Lev Vygotski","Lev Vygotsky","lev vygotski"]}'::jsonb,
  'Lev Vygotski (1896-1934) est le psychologue russe qui a théorisé la zone proximale de développement (ZPD). Celle-ci désigne l''écart entre ce que l''élève peut faire seul et ce qu''il peut réaliser avec l''aide d''un adulte ou d''un pair plus compétent. C''est dans cette zone que l''apprentissage est le plus efficace. Ce concept fonde théoriquement l''étayage (Bruner) et la différenciation : l''enseignant doit proposer des tâches situées dans la ZPD de chaque élève, ni trop faciles (ennui), ni trop difficiles (découragement). La ZPD est un concept clé pour comprendre la différenciation pédagogique et l''accompagnement des élèves.',
  'Attribuer la ZPD à Piaget ou à Bruner. Piaget a théorisé les stades de développement ; Bruner a développé le concept d''étayage en s''appuyant sur la ZPD de Vygotski.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
