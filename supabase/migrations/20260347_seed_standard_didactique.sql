-- =============================================================
-- Seed : 3 séries standard pour le sous-domaine didactique_francais
-- 30 questions au total (10 par série)
-- =============================================================

-- -----------------------------------------------------------------
-- SÉRIE 1 : Didactique — Compréhension en lecture (d2010000)
-- 10 QCM — 3 Facile / 4 Intermédiaire / 3 Avancé
-- -----------------------------------------------------------------

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, support_text, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES

('d2010000-0000-0000-0000-000000000001', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Facile', 'qcm',
 'Parmi les stratégies de compréhension suivantes, laquelle consiste à demander aux élèves de se créer des images mentales à partir du texte lu ?',
 NULL,
 '[{"id":"a","label":"La prédiction"},{"id":"b","label":"La visualisation"},{"id":"c","label":"La connexion"},{"id":"d","label":"Le questionnement"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'La visualisation est la stratégie qui invite les élèves à construire des images mentales au fil de la lecture. Selon les programmes et les travaux de Sylvie Cèbe et Roland Goigoux, cette stratégie aide les élèves à mieux se représenter les situations décrites dans le texte et à maintenir leur compréhension. La prédiction porte sur l''anticipation de la suite, la connexion relie le texte au vécu, et le questionnement porte sur l''interrogation du texte.', 'valide', 'free', true),

('d2010000-0000-0000-0000-000000000002', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Facile', 'qcm',
 'Qu''est-ce que l''enseignement explicite de la compréhension ?',
 NULL,
 '[{"id":"a","label":"Un enseignement où l''on donne directement les réponses aux élèves"},{"id":"b","label":"Un enseignement structuré où le professeur modélise les stratégies de compréhension, puis guide les élèves avant de les laisser pratiquer seuls"},{"id":"c","label":"Un enseignement qui repose uniquement sur la lecture à voix haute du maître"},{"id":"d","label":"Un enseignement fondé exclusivement sur les questionnaires de compréhension"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''enseignement explicite de la compréhension, préconisé par les programmes 2020 et les travaux de recherche (Cèbe, Goigoux, « Lectorino & Lectorinette »), suit une démarche en trois temps : le professeur modélise la stratégie (« je fais »), puis guide les élèves (« nous faisons ensemble »), avant de les laisser pratiquer de manière autonome (« vous faites seuls »). Ce n''est ni donner les réponses, ni se limiter aux questionnaires.', 'valide', 'free', true),

('d2010000-0000-0000-0000-000000000003', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Facile', 'qcm',
 'Quelle est la principale différence entre la lecture littéraire et la lecture documentaire à l''école élémentaire ?',
 NULL,
 '[{"id":"a","label":"La lecture littéraire est réservée au cycle 3, la lecture documentaire au cycle 2"},{"id":"b","label":"La lecture littéraire vise l''interprétation et la sensibilité esthétique, la lecture documentaire vise l''extraction et le traitement d''informations"},{"id":"c","label":"La lecture documentaire est plus difficile que la lecture littéraire"},{"id":"d","label":"La lecture littéraire ne nécessite pas de stratégies de compréhension"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Selon les programmes, la lecture littéraire engage l''élève dans une démarche d''interprétation : il construit du sens, développe sa sensibilité esthétique et débat des intentions de l''auteur. La lecture documentaire vise quant à elle la recherche, l''extraction et le traitement d''informations factuelles. Les deux types de lecture sont travaillés dès le cycle 2 et mobilisent des stratégies de compréhension, mais avec des finalités différentes.', 'valide', 'free', true),

('d2010000-0000-0000-0000-000000000004', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Intermediaire', 'qcm',
 'Au cycle 2, les programmes indiquent que la compréhension doit être travaillée sur des textes lus par l''enseignant et sur des textes que l''élève peut lire seul. Pourquoi cette double modalité est-elle essentielle ?',
 NULL,
 '[{"id":"a","label":"Parce que les élèves de cycle 2 ne savent pas encore lire"},{"id":"b","label":"Parce que le décodage mobilise encore beaucoup de ressources cognitives au cycle 2, ce qui limite la compréhension autonome de textes complexes"},{"id":"c","label":"Parce que les programmes interdisent la lecture autonome au CP"},{"id":"d","label":"Parce que la lecture par l''enseignant est plus rapide"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Au cycle 2, les élèves sont en cours d''acquisition du décodage, qui mobilise une part importante de leurs ressources cognitives (attention, mémoire de travail). La compréhension de textes longs ou complexes est donc travaillée via la lecture oralisée par l''enseignant, tandis que la compréhension de textes plus courts et décodables est exercée en lecture autonome. Cette double modalité permet de travailler la compréhension à un niveau ambitieux tout en respectant le développement des compétences de lecture.', 'valide', 'free', true),

('d2010000-0000-0000-0000-000000000005', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Intermediaire', 'qcm',
 'Quel rôle joue le vocabulaire dans la compréhension en lecture selon les programmes ?',
 NULL,
 '[{"id":"a","label":"Le vocabulaire est un domaine séparé qui n''a pas d''impact direct sur la compréhension"},{"id":"b","label":"La maîtrise du vocabulaire est un facteur déterminant de la compréhension : un élève qui connaît peu de mots comprend moins bien les textes"},{"id":"c","label":"Le vocabulaire ne doit être enseigné qu''en contexte de production d''écrits"},{"id":"d","label":"L''acquisition du vocabulaire se fait uniquement par les familles, pas par l''école"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Les programmes et les notes de service du ministère (notamment la note « Lecture : construire le parcours d''un lecteur autonome ») insistent sur le lien étroit entre étendue du vocabulaire et compréhension. Un enseignement structuré du vocabulaire (en contexte et hors contexte) permet aux élèves de mieux accéder au sens des textes. Le vocabulaire est à la fois un prérequis et un résultat de la lecture.', 'valide', 'free', true),

('d2010000-0000-0000-0000-000000000006', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Intermediaire', 'qcm',
 'Les inférences sont un élément clé de la compréhension. Parmi les propositions suivantes, laquelle décrit le mieux une inférence logique (ou inférence de liaison) ?',
 NULL,
 '[{"id":"a","label":"Déduire l''émotion d''un personnage à partir d''une description de son comportement"},{"id":"b","label":"Établir une relation causale entre deux événements qui ne sont pas explicitement reliés dans le texte"},{"id":"c","label":"Repérer un mot de vocabulaire inconnu"},{"id":"d","label":"Résumer le texte en une phrase"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''inférence logique (ou inférence de liaison) consiste à établir un lien causal, temporel ou logique entre deux informations du texte qui ne sont pas explicitement connectées. Par exemple : « Marie a ouvert son parapluie. Le trottoir était mouillé. » → il pleut. La proposition A décrit plutôt une inférence pragmatique (sur les états mentaux). Cèbe et Goigoux insistent sur la nécessité d''un enseignement explicite de ces différents types d''inférences.', 'valide', 'free', true),

('d2010000-0000-0000-0000-000000000007', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Intermediaire', 'qcm',
 'Quelle est la place de la lecture à voix haute dans l''enseignement de la compréhension selon les programmes ?',
 NULL,
 '[{"id":"a","label":"La lecture à voix haute est uniquement un exercice de diction, sans lien avec la compréhension"},{"id":"b","label":"La lecture à voix haute ne doit plus être pratiquée à l''école"},{"id":"c","label":"La lecture à voix haute, lorsqu''elle est préparée, témoigne de la compréhension du texte et contribue à l''améliorer"},{"id":"d","label":"La lecture à voix haute doit remplacer la lecture silencieuse à tous les niveaux"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Les programmes précisent que la lecture à voix haute, lorsqu''elle est préparée et travaillée (prosodie, groupes de souffle, respect de la ponctuation), est un indicateur et un vecteur de compréhension. L''élève qui lit à voix haute de manière expressive montre qu''il a compris le texte. En parallèle, la lecture silencieuse reste essentielle pour développer l''autonomie du lecteur, notamment au cycle 3. Les deux modalités sont complémentaires.', 'valide', 'free', true),

('d2010000-0000-0000-0000-000000000008', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Avance', 'qcm',
 'Le carnet de lecteur est un outil recommandé au cycle 3. Quelle est sa fonction principale dans la didactique de la compréhension ?',
 NULL,
 '[{"id":"a","label":"Servir de cahier de vocabulaire"},{"id":"b","label":"Permettre à l''élève de garder une trace de ses réactions, interprétations et questionnements face aux textes, développant ainsi une posture réflexive de lecteur"},{"id":"c","label":"Remplacer les évaluations de lecture"},{"id":"d","label":"Compiler des résumés de textes imposés par l''enseignant"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le carnet de lecteur, préconisé par les programmes du cycle 3 et le document d''accompagnement Eduscol « La lecture littéraire au cycle 3 », est un espace personnel où l''élève consigne ses impressions, ses questionnements, ses hypothèses interprétatives et ses connexions avec d''autres textes. Il favorise une posture réflexive et permet de développer le « sujet lecteur ». Il ne se réduit pas à un cahier de vocabulaire ni à une compilation de résumés.', 'valide', 'free', true),

('d2010000-0000-0000-0000-000000000009', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Avance', 'qcm',
 'Dans les cercles de lecture (ou comités de lecture), quel est le rôle principal de l''enseignant ?',
 NULL,
 '[{"id":"a","label":"Poser toutes les questions et valider toutes les réponses"},{"id":"b","label":"Laisser les élèves totalement autonomes sans intervenir"},{"id":"c","label":"Organiser les échanges, relancer le débat interprétatif et aider les élèves à argumenter à partir du texte"},{"id":"d","label":"Distribuer les rôles et ne plus participer"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'Dans les cercles de lecture, l''enseignant est un médiateur : il organise les échanges, relance le débat interprétatif en posant des questions ouvertes et aide les élèves à étayer leurs interprétations par un retour au texte. Il ne monopolise pas la parole ni ne valide toutes les réponses, mais il ne s''efface pas non plus complètement. Cette pratique, recommandée par les programmes du cycle 3, développe les compétences de compréhension fine et d''argumentation.', 'valide', 'free', true),

('d2010000-0000-0000-0000-00000000000a', 'Francais', 'didactique_francais', 'didactique_comprehension_lecture', 'Didactique — Compréhension en lecture', 'Avance', 'qcm',
 'Selon les travaux de Cèbe et Goigoux (« Lectorino & Lectorinette », « Narramus »), quelle compétence de compréhension est souvent négligée dans l''enseignement traditionnel ?',
 NULL,
 '[{"id":"a","label":"Le déchiffrage des mots"},{"id":"b","label":"La compréhension des états mentaux des personnages (leurs pensées, intentions, émotions)"},{"id":"c","label":"La lecture fluente"},{"id":"d","label":"La mémorisation du titre de l''œuvre"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Cèbe et Goigoux ont montré que l''enseignement traditionnel de la compréhension se concentre souvent sur le repérage d''informations explicites et néglige la compréhension des états mentaux des personnages. Or, comprendre les pensées, les intentions, les émotions et les motivations des personnages est essentiel pour accéder au sens profond des récits. Leurs outils (Lectorino & Lectorinette pour le CE1-CE2, Narramus pour la maternelle-CP) intègrent systématiquement ce travail.', 'valide', 'free', true);


-- -----------------------------------------------------------------
-- SÉRIE 2 : Didactique — Production d'écrits (d2020000)
-- 8 QCM + 2 Vrai/Faux — 3 Facile / 4 Intermédiaire / 3 Avancé
-- -----------------------------------------------------------------

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, support_text, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES

('d2020000-0000-0000-0000-000000000001', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Facile', 'qcm',
 'Selon le modèle de Hayes et Flower, quelles sont les trois grandes opérations du processus d''écriture ?',
 NULL,
 '[{"id":"a","label":"Lecture, copie, dictée"},{"id":"b","label":"Planification, mise en texte, révision"},{"id":"c","label":"Grammaire, orthographe, conjugaison"},{"id":"d","label":"Brouillon, copie au propre, illustration"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le modèle de Hayes et Flower (1980), référence en didactique de l''écriture, identifie trois processus rédactionnels : la planification (génération d''idées, organisation, définition d''objectifs), la mise en texte (formulation linguistique) et la révision (relecture, évaluation, correction). Ces trois processus ne sont pas linéaires mais récursifs : le scripteur peut revenir à tout moment sur chacun. Les programmes s''appuient sur ce modèle pour structurer l''enseignement de l''écriture.', 'valide', 'free', true),

('d2020000-0000-0000-0000-000000000002', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Facile', 'qcm',
 'Quel est le rôle du brouillon dans l''apprentissage de l''écriture ?',
 NULL,
 '[{"id":"a","label":"Le brouillon est une version sale du texte final qu''il faut recopier au propre sans modification"},{"id":"b","label":"Le brouillon est un outil de travail qui permet de planifier, essayer, raturer et réorganiser son texte avant la version finale"},{"id":"c","label":"Le brouillon ne doit pas être utilisé à l''école car il gaspille du papier"},{"id":"d","label":"Le brouillon est uniquement utile pour les élèves en difficulté"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le brouillon est un véritable outil de pensée et de travail dans la didactique de l''écriture. Loin d''être une simple « version sale », il permet à l''élève de planifier ses idées, d''essayer des formulations, de raturer et réorganiser son texte. Les programmes insistent sur l''importance d''apprendre aux élèves à utiliser le brouillon comme un espace d''élaboration. L''enseignant doit valoriser les ratures et les réécritures comme des signes d''un travail intellectuel en cours.', 'valide', 'free', true),

('d2020000-0000-0000-0000-000000000003', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Facile', 'vrai_faux',
 'La dictée à l''adulte est un dispositif réservé exclusivement aux élèves de cycle 1 qui ne savent pas encore écrire.',
 NULL,
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. La dictée à l''adulte est un dispositif particulièrement utilisé en cycle 1, mais elle peut aussi être proposée ponctuellement au début du cycle 2 ou à des élèves en grande difficulté. Elle permet à l''élève de se concentrer sur la composition du texte (choix des mots, construction des phrases, organisation du propos) sans être freiné par les contraintes graphiques et orthographiques. L''adulte écrit sous la dictée de l''élève, qui apprend ainsi à « parler comme un livre » et à différencier l''oral de l''écrit.', 'valide', 'free', true),

('d2020000-0000-0000-0000-000000000004', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Intermediaire', 'qcm',
 'Quelle est la différence entre les écrits de travail et les écrits normés dans la classe ?',
 NULL,
 '[{"id":"a","label":"Les écrits de travail sont des écrits définitifs, les écrits normés sont provisoires"},{"id":"b","label":"Les écrits de travail servent à penser, organiser et structurer la réflexion (brouillons, listes, schémas) ; les écrits normés sont des productions finalisées respectant les normes de la langue"},{"id":"c","label":"Il n''y a pas de différence, ce sont des synonymes"},{"id":"d","label":"Les écrits normés sont réservés au cycle 1, les écrits de travail au cycle 3"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Les écrits de travail (ou écrits intermédiaires) sont des outils au service de l''apprentissage : brouillons, notes, listes, schémas, écrits réflexifs. Ils n''ont pas vocation à être évalués sur la forme. Les écrits normés sont des productions abouties où l''élève doit respecter les normes linguistiques (orthographe, syntaxe, cohérence textuelle). Les programmes distinguent ces deux types d''écrits et recommandent de pratiquer régulièrement les écrits de travail dans toutes les disciplines.', 'valide', 'free', true),

('d2020000-0000-0000-0000-000000000005', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Intermediaire', 'qcm',
 'Qu''est-ce qu''un projet d''écriture en didactique du français ?',
 NULL,
 '[{"id":"a","label":"Un exercice de copie réalisé individuellement"},{"id":"b","label":"Une situation d''écriture inscrite dans un projet de communication authentique, avec un destinataire, un but et un genre textuel identifiés"},{"id":"c","label":"Un exercice de grammaire déguisé en activité d''écriture"},{"id":"d","label":"Une dictée préparée à l''avance"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Un projet d''écriture donne du sens à l''activité d''écriture en inscrivant la production dans une situation de communication authentique. L''élève sait pour qui il écrit (destinataire), pourquoi il écrit (but) et quel type de texte il produit (genre). Par exemple : écrire une lettre au maire, rédiger un article pour le journal de l''école, créer un album pour les élèves de maternelle. Les programmes recommandent de varier les situations d''écriture et de les relier à des projets motivants.', 'valide', 'free', true),

('d2020000-0000-0000-0000-000000000006', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Intermediaire', 'qcm',
 'Quels critères l''enseignant peut-il utiliser pour évaluer une production écrite d''élève ?',
 NULL,
 '[{"id":"a","label":"Uniquement le nombre de fautes d''orthographe"},{"id":"b","label":"La longueur du texte exclusivement"},{"id":"c","label":"Des critères portant sur la cohérence textuelle, la pertinence par rapport à la consigne, la qualité de la langue (syntaxe, orthographe, vocabulaire) et l''originalité du propos"},{"id":"d","label":"La beauté de l''écriture manuscrite uniquement"}]'::jsonb,
 '{"mode":"single_choice","value":"c"}'::jsonb,
 'L''évaluation d''une production écrite doit être critériée et porter sur plusieurs dimensions : la conformité à la consigne et au genre demandé, la cohérence textuelle (organisation, connecteurs, progression de l''information), la qualité de la langue (correction syntaxique, orthographe, richesse du vocabulaire) et la qualité du contenu. Les grilles critériées, connues des élèves en amont, permettent une évaluation formative et aident l''élève à comprendre les attendus.', 'valide', 'free', true),

('d2020000-0000-0000-0000-000000000007', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Intermediaire', 'qcm',
 'Quel lien les programmes établissent-ils entre lecture et écriture ?',
 NULL,
 '[{"id":"a","label":"La lecture et l''écriture sont deux domaines totalement indépendants"},{"id":"b","label":"La lecture nourrit l''écriture (modèles textuels, vocabulaire, structures) et l''écriture renforce la compréhension en lecture"},{"id":"c","label":"L''écriture doit toujours précéder la lecture"},{"id":"d","label":"La lecture est réservée au cycle 2 et l''écriture au cycle 3"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Les programmes insistent sur l''articulation étroite entre lecture et écriture. La lecture fournit des modèles textuels (structures narratives, argumentatives, poétiques), enrichit le vocabulaire et expose l''élève à des normes linguistiques. En retour, l''écriture renforce la compréhension en lecture car elle oblige l''élève à s''interroger sur les choix d''un auteur. Les deux activités se renforcent mutuellement et doivent être travaillées de manière complémentaire.', 'valide', 'free', true),

('d2020000-0000-0000-0000-000000000008', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Avance', 'vrai_faux',
 'Dans un atelier d''écriture, l''enseignant doit corriger toutes les erreurs orthographiques de l''élève avant de lui permettre de poursuivre son texte.',
 NULL,
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Dans un atelier d''écriture, la priorité est donnée à la production de texte (contenu, structure, créativité). La correction orthographique intervient dans un second temps, lors de la phase de révision. Si l''enseignant interrompt systématiquement l''élève pour corriger chaque erreur, il risque de bloquer le flux créatif et de décourager l''élève. La démarche préconisée distingue les temps d''écriture (on se concentre sur le sens) et les temps de révision (on travaille la norme linguistique).', 'valide', 'free', true),

('d2020000-0000-0000-0000-000000000009', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Avance', 'qcm',
 'Quelle est la spécificité de la réécriture par rapport à la simple correction ?',
 NULL,
 '[{"id":"a","label":"La réécriture consiste uniquement à corriger les fautes d''orthographe"},{"id":"b","label":"La réécriture implique une transformation en profondeur du texte (réorganisation, enrichissement, changement de point de vue) tandis que la correction porte sur la surface (orthographe, ponctuation)"},{"id":"c","label":"La réécriture et la correction sont exactement la même chose"},{"id":"d","label":"La réécriture est interdite par les programmes car elle prend trop de temps"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'La réécriture va au-delà de la simple correction de surface. Elle engage l''élève dans une transformation en profondeur de son texte : réorganiser les idées, enrichir les descriptions, modifier le point de vue narratif, ajouter des connecteurs logiques, supprimer des passages redondants. La correction porte essentiellement sur la norme linguistique (orthographe, ponctuation, syntaxe). Les programmes recommandent de pratiquer les deux, en apprenant aux élèves que l''écriture est un processus itératif.', 'valide', 'free', true),

('d2020000-0000-0000-0000-00000000000a', 'Francais', 'didactique_francais', 'didactique_production_ecrite', 'Didactique — Production d''écrits', 'Avance', 'qcm',
 'Les ateliers d''écriture reposent sur des « contraintes créatives ». Quel est le paradoxe didactique de la contrainte en écriture ?',
 NULL,
 '[{"id":"a","label":"La contrainte empêche toute créativité"},{"id":"b","label":"La contrainte libère la créativité en fournissant un cadre qui réduit l''angoisse de la page blanche et stimule l''invention"},{"id":"c","label":"La contrainte ne sert qu''à évaluer les élèves"},{"id":"d","label":"La contrainte rend l''écriture inaccessible aux élèves faibles"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le paradoxe de la contrainte en écriture, théorisé notamment par l''Oulipo (Ouvroir de Littérature Potentielle) et repris en didactique, est que la contrainte, loin de brider la créativité, la stimule. En imposant un cadre (écrire un texte sans la lettre « e », utiliser obligatoirement dix mots imposés, écrire à partir d''une structure donnée), la contrainte réduit l''angoisse de la page blanche et oblige l''élève à inventer des solutions originales. Les ateliers d''écriture scolaires s''appuient sur ce principe.', 'valide', 'free', true);


-- -----------------------------------------------------------------
-- SÉRIE 3 : Didactique — Étude de la langue, progression (d2030000)
-- 10 QCM — 3 Facile / 4 Intermédiaire / 3 Avancé
-- -----------------------------------------------------------------

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, support_text, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES

('d2030000-0000-0000-0000-000000000001', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Facile', 'qcm',
 'Qu''est-ce qu''une progression spiralaire en étude de la langue ?',
 NULL,
 '[{"id":"a","label":"Une progression où chaque notion n''est vue qu''une seule fois dans la scolarité"},{"id":"b","label":"Une progression où les mêmes notions sont reprises et approfondies d''année en année, avec un niveau de complexité croissant"},{"id":"c","label":"Une progression en forme de spirale qui va du plus difficile au plus facile"},{"id":"d","label":"Une progression qui mélange aléatoirement les notions grammaticales"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'La progression spiralaire consiste à revenir régulièrement sur les mêmes notions en les approfondissant progressivement. Par exemple, la notion de sujet est abordée dès le CE1 dans des phrases simples, puis reprise au CE2 avec des sujets inversés ou des groupes nominaux étendus, puis approfondie au cycle 3 avec les pronoms relatifs. Cette approche, recommandée par les programmes 2020, favorise la consolidation des acquis et leur complexification progressive.', 'valide', 'free', true),

('d2030000-0000-0000-0000-000000000002', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Facile', 'qcm',
 'Quelle démarche d''enseignement de la grammaire repose sur l''observation, la manipulation et le classement de faits de langue par les élèves avant la formulation de la règle ?',
 NULL,
 '[{"id":"a","label":"La démarche transmissive"},{"id":"b","label":"La démarche inductive (ou démarche d''observation réfléchie de la langue)"},{"id":"c","label":"La démarche déductive"},{"id":"d","label":"La démarche par exercices d''application"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'La démarche inductive (aussi appelée « observation réfléchie de la langue » dans les programmes de 2002, puis reprise sous d''autres termes) part de l''observation de corpus de phrases, de manipulations syntaxiques (substitution, déplacement, suppression, ajout) et de classements réalisés par les élèves. C''est à partir de ces observations que la règle est formulée collectivement. Cette démarche s''oppose à la démarche déductive (exposé de la règle d''abord, puis application) et favorise une meilleure compréhension des régularités de la langue.', 'valide', 'free', true),

('d2030000-0000-0000-0000-000000000003', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Facile', 'qcm',
 'Dans les programmes 2020, quelle est la finalité principale de l''étude de la langue à l''école élémentaire ?',
 NULL,
 '[{"id":"a","label":"Maîtriser la terminologie grammaticale de manière exhaustive"},{"id":"b","label":"Améliorer les compétences de lecture et d''écriture des élèves en les dotant d''outils pour comprendre et produire la langue"},{"id":"c","label":"Préparer les élèves aux études supérieures de linguistique"},{"id":"d","label":"Faire apprendre par cœur les tableaux de conjugaison"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Les programmes 2020 positionnent clairement l''étude de la langue au service de la lecture et de l''écriture. L''objectif n''est pas de faire de la grammaire pour elle-même, mais de doter les élèves d''outils linguistiques qui leur permettent de mieux comprendre les textes qu''ils lisent et de mieux écrire. La terminologie est nécessaire mais n''est pas une fin en soi. Les connaissances grammaticales doivent être réinvesties dans les activités de lecture et de production d''écrits.', 'valide', 'free', true),

('d2030000-0000-0000-0000-000000000004', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Intermediaire', 'qcm',
 'Les programmes 2020 précisent une terminologie grammaticale officielle. Parmi les propositions suivantes, laquelle est conforme à cette terminologie ?',
 NULL,
 '[{"id":"a","label":"On utilise le terme « complément d''objet direct » (COD) dès le CE1"},{"id":"b","label":"Au cycle 2, on parle de « complément du verbe » et de « complément de phrase » ; les termes COD/COI sont introduits au cycle 3"},{"id":"c","label":"Les termes COD et COI ont été supprimés des programmes"},{"id":"d","label":"On utilise « complément essentiel » et « complément circonstanciel » à tous les niveaux"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Les programmes 2020 ont rationalisé la terminologie grammaticale. Au cycle 2, on utilise les termes fonctionnels « complément du verbe » (ne peut être ni supprimé ni déplacé) et « complément de phrase » (peut être supprimé et déplacé). Au cycle 3, les termes spécifiques COD (complément d''objet direct) et COI (complément d''objet indirect) sont introduits. Les termes « complément circonstanciel » et « complément essentiel » ne figurent plus dans la terminologie officielle actuelle.', 'valide', 'free', true),

('d2030000-0000-0000-0000-000000000005', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Intermediaire', 'qcm',
 'À quel moment les accords dans le groupe nominal (déterminant-nom-adjectif) commencent-ils à être enseignés selon la progression des programmes ?',
 NULL,
 '[{"id":"a","label":"Dès la grande section de maternelle"},{"id":"b","label":"Dès le CP-CE1, avec les marques du pluriel (-s) et du féminin (-e) dans des situations simples"},{"id":"c","label":"Uniquement à partir du CM1"},{"id":"d","label":"Les accords dans le groupe nominal ne sont pas au programme de l''école élémentaire"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Les programmes prévoient un travail sur les accords dans le groupe nominal dès le cycle 2 (CP-CE1). Les élèves apprennent d''abord à marquer le pluriel en -s et le féminin en -e dans des groupes nominaux simples (déterminant + nom, puis déterminant + nom + adjectif). Au CE2, les cas particuliers sont abordés. Au cycle 3, l''accord est étendu à des groupes nominaux plus complexes (avec des adjectifs éloignés du nom, des compléments du nom). C''est bien une progression spiralaire.', 'valide', 'free', true),

('d2030000-0000-0000-0000-000000000006', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Intermediaire', 'qcm',
 'Quelle est la progressivité attendue pour l''apprentissage des temps de conjugaison entre le cycle 2 et le cycle 3 ?',
 NULL,
 '[{"id":"a","label":"Tous les temps sont appris au cycle 2, le cycle 3 ne fait que réviser"},{"id":"b","label":"Au cycle 2 : présent, imparfait, futur et passé composé des verbes fréquents. Au cycle 3 : consolidation et ajout du plus-que-parfait, du passé simple et du conditionnel présent"},{"id":"c","label":"Le passé simple est enseigné dès le CP"},{"id":"d","label":"La conjugaison n''est plus enseignée à l''école élémentaire depuis 2020"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Les programmes prévoient une progressivité claire en conjugaison. Au cycle 2, les élèves apprennent le présent, l''imparfait, le futur et le passé composé des verbes les plus fréquents (être, avoir, aller, faire, dire, etc.) et des verbes du premier groupe. Au cycle 3, ces acquis sont consolidés et enrichis avec le plus-que-parfait, le passé simple (3e personne principalement) et le conditionnel présent. Cette progressivité respecte le développement cognitif des élèves.', 'valide', 'free', true),

('d2030000-0000-0000-0000-000000000007', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Intermediaire', 'qcm',
 'Qu''est-ce que la dictée négociée ?',
 NULL,
 '[{"id":"a","label":"Une dictée où l''enseignant négocie le nombre de mots avec les élèves"},{"id":"b","label":"Une dictée individuelle suivie d''un temps de discussion entre pairs où les élèves confrontent leurs choix orthographiques et argumentent en se référant aux règles apprises"},{"id":"c","label":"Une dictée où les élèves peuvent refuser d''écrire certains mots"},{"id":"d","label":"Une dictée réservée aux élèves en difficulté"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'La dictée négociée est un dispositif en deux temps : les élèves écrivent d''abord individuellement le texte dicté, puis se regroupent (en binômes ou petits groupes) pour confronter leurs graphies et argumenter leurs choix orthographiques en se référant aux règles apprises. Ce dispositif développe la réflexion métalinguistique et l''argumentation grammaticale. Variantes proches : la dictée dialoguée (l''enseignant questionne les élèves pendant la dictée) et la dictée frissons (les élèves choisissent les mots « difficiles » à travailler).', 'valide', 'free', true),

('d2030000-0000-0000-0000-000000000008', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Avance', 'qcm',
 'Les manipulations syntaxiques sont un outil central de l''étude de la langue. Parmi les quatre manipulations suivantes, laquelle permet spécifiquement de distinguer un complément de phrase d''un complément du verbe ?',
 NULL,
 '[{"id":"a","label":"La pronominalisation"},{"id":"b","label":"Le déplacement en tête de phrase et la suppression"},{"id":"c","label":"L''encadrement par « c''est… qui »"},{"id":"d","label":"Le remplacement par un synonyme"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'Le critère distinctif entre complément de phrase et complément du verbe repose sur deux manipulations : le déplacement (le complément de phrase peut être déplacé en tête de phrase) et la suppression (le complément de phrase peut être supprimé sans rendre la phrase agrammaticale). Le complément du verbe, lui, ne peut être ni supprimé ni déplacé sans altérer le sens ou la grammaticalité. La pronominalisation et l''encadrement par « c''est… qui » servent à d''autres identifications (COD et sujet respectivement).', 'valide', 'free', true),

('d2030000-0000-0000-0000-000000000009', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Avance', 'qcm',
 'Qu''entend-on par « évaluation positive de la maîtrise de la langue » dans les programmes ?',
 NULL,
 '[{"id":"a","label":"Une évaluation qui ne compte que les réponses justes et ignore les erreurs"},{"id":"b","label":"Une évaluation qui met en valeur les progrès de l''élève, identifie les réussites et analyse les erreurs comme des indicateurs pour ajuster l''enseignement"},{"id":"c","label":"Une évaluation où tous les élèves obtiennent la note maximale"},{"id":"d","label":"Une évaluation qui supprime les notes chiffrées"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'L''évaluation positive, préconisée par les programmes et le socle commun, ne signifie pas « évaluation complaisante ». Elle consiste à mettre en valeur les progrès et les réussites de l''élève (ce qu''il sait faire), tout en analysant les erreurs non comme des fautes à sanctionner mais comme des indicateurs de l''état des connaissances de l''élève. Cette analyse permet à l''enseignant d''ajuster son enseignement et à l''élève de comprendre ses erreurs pour progresser. Elle peut parfaitement s''accompagner de notes chiffrées.', 'valide', 'free', true),

('d2030000-0000-0000-0000-00000000000a', 'Francais', 'didactique_francais', 'didactique_etude_langue_progression', 'Didactique — Étude de la langue', 'Avance', 'qcm',
 'Selon les recherches en didactique, pourquoi la phrase dictée du jour (ou « phrase donnée du jour ») est-elle considérée comme un dispositif efficace pour l''apprentissage de l''orthographe grammaticale ?',
 NULL,
 '[{"id":"a","label":"Parce qu''elle permet d''écrire beaucoup de mots rapidement"},{"id":"b","label":"Parce qu''elle engage les élèves dans un raisonnement grammatical explicite : ils doivent justifier chaque choix orthographique en verbalisant les règles mobilisées"},{"id":"c","label":"Parce qu''elle est plus courte qu''une dictée classique"},{"id":"d","label":"Parce qu''elle ne demande pas de correction"}]'::jsonb,
 '{"mode":"single_choice","value":"b"}'::jsonb,
 'La phrase dictée du jour (ou phrase donnée du jour, selon les variantes de Cogis et Brissaud) est considérée comme efficace car elle rend visible le raisonnement orthographique des élèves. Après avoir écrit la phrase, les élèves confrontent collectivement leurs graphies et doivent argumenter en mobilisant explicitement les règles de grammaire. Ce dispositif développe la vigilance orthographique et la réflexion métalinguistique. La recherche (Brissaud, Cogis, « Comment enseigner l''orthographe aujourd''hui ? ») a montré que cette verbalisation du raisonnement favorise le transfert des connaissances en situation d''écriture autonome.', 'valide', 'free', true);
