-- ============================================================
-- Migration : 5 séries Compréhension de texte (50 exercices)
-- UUID prefix : f501–f505
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Inférences et implicite
-- Topic : comp_inferences_implicite
-- UUID prefix : f5010000
-- 3 Facile + 4 Intermediaire + 3 Difficile
-- Mix : 4 qcm + 3 vrai_faux + 3 reponse_courte
-- ============================================================

-- Q1 — Facile — QCM — Identifier une inférence causale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Facile',
  'qcm',
  'Lisez l''extrait suivant : « Sophie rangea ses lunettes de soleil dans son sac et ouvrit son parapluie avant de sortir. » Quelle inférence causale le lecteur peut-il produire ?',
  NULL,
  '[{"id":"a","label":"Sophie part en vacances"},{"id":"b","label":"Le temps a changé et il pleut désormais"},{"id":"c","label":"Sophie n''aime pas le soleil"},{"id":"d","label":"Sophie est distraite"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le lecteur produit une inférence causale en reliant deux actions : ranger les lunettes de soleil (fin du beau temps) et ouvrir un parapluie (pluie imminente). Cette inférence repose sur les connaissances du monde du lecteur. Selon les travaux de Jocelyne Giasson, l''inférence causale est l''une des plus fréquentes et des plus précoces chez le jeune lecteur. Au CRPE, il est essentiel de savoir catégoriser les types d''inférences pour adapter son enseignement.',
  'Confondre une inférence causale (lien de cause à effet) avec une simple hypothèse non étayée par le texte, comme « Sophie part en vacances ».',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Distinguer explicite et implicite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Pierre serra les poings et quitta la pièce en claquant la porte », l''information « Pierre est en colère » est une information explicite du texte.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''information « Pierre est en colère » n''est pas explicitement énoncée dans le texte. Le lecteur la déduit grâce à des indices comportementaux (serrer les poings, claquer la porte). Il s''agit d''une information implicite, obtenue par inférence pragmatique. Au cycle 3, les programmes insistent sur la capacité des élèves à distinguer ce qui est dit (explicite) de ce qui doit être déduit (implicite).',
  'Considérer que toute information « évidente » est explicite. Même si la colère semble évidente, elle n''est pas nommée dans le texte : elle reste implicite.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Réponse courte — Nommer le type d''inférence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Facile',
  'reponse_courte',
  'Dans la phrase « Le médecin ausculta l''enfant et rédigea une ordonnance », le lecteur comprend que l''enfant est malade. Quel type d''inférence le lecteur mobilise-t-il ici ? (Répondez en deux ou trois mots.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["inférence logique","inference logique","inférence causale","inference causale"]}'::jsonb,
  'Le lecteur mobilise une inférence logique (ou causale) : il comprend que si un médecin ausculte un enfant et rédige une ordonnance, c''est que l''enfant est malade. Cette inférence repose sur un script social (consultation médicale) et sur un lien de cause à effet. Selon la typologie de Cunningham (1987), il s''agit d''une inférence fondée sur les schémas du lecteur.',
  'Répondre « déduction » au lieu d''utiliser le terme didactique précis « inférence logique » ou « inférence causale », qui sont les termes attendus au CRPE.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Inférence pragmatique et ironie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Intermediaire',
  'qcm',
  'Un personnage dit à un autre, trempé par la pluie : « Quelle magnifique journée pour une promenade ! » Quel procédé linguistique est ici mobilisé ?',
  NULL,
  '[{"id":"a","label":"La métaphore"},{"id":"b","label":"L''ironie (antiphrase)"},{"id":"c","label":"L''hyperbole"},{"id":"d","label":"La litote"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il s''agit d''une antiphrase, forme la plus courante de l''ironie : le locuteur dit le contraire de ce qu''il pense. Le contexte (personnage trempé) permet au lecteur de comprendre le décalage entre le dit et le voulu-dire. L''ironie repose sur la capacité du lecteur à percevoir l''implicite et à mobiliser des inférences pragmatiques. C''est une compétence complexe, travaillée en fin de cycle 3, qui suppose la maîtrise de la théorie de l''esprit.',
  'Confondre l''ironie avec l''hyperbole. L''hyperbole exagère dans le même sens que la pensée, tandis que l''ironie inverse le sens.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Vrai/Faux — Présupposé linguistique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Lucas a cessé de fumer », le verbe « cesser » présuppose que Lucas fumait auparavant.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le verbe « cesser » est un verbe aspectuel qui présuppose l''existence antérieure de l''action. Dire « Lucas a cessé de fumer » implique nécessairement que Lucas fumait avant. Ce présupposé est inscrit dans la sémantique du verbe et résiste à la négation (« Lucas n''a pas cessé de fumer » présuppose toujours qu''il fumait). Au CRPE, la notion de présupposé est distincte du sous-entendu : le présupposé est linguistiquement marqué.',
  'Confondre présupposé et sous-entendu. Le présupposé est inscrit dans la langue (marqueurs lexicaux ou syntaxiques), tandis que le sous-entendu dépend du contexte d''énonciation.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Réponse courte — Identifier un sous-entendu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Intermediaire',
  'reponse_courte',
  'Un élève demande à son professeur : « Est-ce qu''on pourrait ouvrir la fenêtre ? » En termes pragmatiques, quel acte de langage indirect l''élève réalise-t-il ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["demande","requête","requete","une demande","une requête","une requete"]}'::jsonb,
  'L''élève formule une question (acte de langage direct), mais son intention réelle est de formuler une demande ou une requête (acte de langage indirect). Le locuteur utilise la forme interrogative pour atténuer l''acte directif, ce qui relève de la politesse linguistique. Austin et Searle ont théorisé cette distinction entre acte locutoire et acte illocutoire. Au cycle 3, les élèves apprennent à identifier l''intention derrière les énoncés, compétence essentielle pour la compréhension fine.',
  'Répondre « question » en se fiant à la forme de la phrase plutôt qu''à l''intention communicative réelle du locuteur.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Stratégies d''enseignement des inférences
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Intermediaire',
  'qcm',
  'Quelle démarche pédagogique est la plus efficace pour enseigner les inférences au cycle 3 selon les préconisations institutionnelles ?',
  NULL,
  '[{"id":"a","label":"Donner systématiquement la réponse puis demander aux élèves de la justifier"},{"id":"b","label":"Proposer un enseignement explicite des stratégies inférentielles avec verbalisation des raisonnements"},{"id":"c","label":"Multiplier les questionnaires de compréhension littérale"},{"id":"d","label":"Laisser les élèves découvrir seuls les inférences par la lecture autonome"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les recherches en didactique (Cèbe et Goigoux, Lectorino & Lectorinette) et les préconisations d''Éduscol insistent sur l''enseignement explicite des stratégies de compréhension. Pour les inférences, cela passe par la verbalisation du raisonnement (« think aloud »), l''identification des indices textuels et la confrontation des interprétations entre pairs. La simple multiplication de questionnaires ou la découverte autonome ne suffisent pas à développer cette compétence complexe.',
  'Penser que la compréhension inférentielle se développe uniquement par la pratique répétée de la lecture, sans enseignement explicite des stratégies.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Vrai/Faux — Implicite culturel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Les inférences créatives (aussi appelées « élaboratives ») sont indispensables à la cohérence textuelle, au même titre que les inférences de liaison.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les inférences de liaison (ou inférences-ponts) sont nécessaires à la cohérence textuelle : elles permettent de relier deux propositions du texte. Les inférences créatives (ou élaboratives), en revanche, enrichissent la représentation mentale du lecteur mais ne sont pas indispensables à la compréhension de base. Cette distinction, établie par les travaux de Graesser et al. (1994), est fondamentale au CRPE. Un enseignant doit savoir que tous les élèves doivent maîtriser les inférences de liaison, tandis que les inférences élaboratives témoignent d''un niveau de compréhension plus approfondi.',
  'Considérer que toutes les inférences ont le même statut dans la construction de la cohérence textuelle, sans distinguer celles qui sont nécessaires de celles qui sont optionnelles.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — QCM — Taxonomie des inférences
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Difficile',
  'qcm',
  'Selon la classification de Cunningham (1987), reprise dans les documents Éduscol, quelle est la différence fondamentale entre une inférence logique et une inférence pragmatique ?',
  NULL,
  '[{"id":"a","label":"L''inférence logique porte sur les personnages, la pragmatique sur le cadre spatio-temporel"},{"id":"b","label":"L''inférence logique est nécessairement vraie d''après le texte, la pragmatique est vraisemblable mais non certaine"},{"id":"c","label":"L''inférence logique concerne le vocabulaire, la pragmatique concerne la syntaxe"},{"id":"d","label":"L''inférence logique est produite par les bons lecteurs, la pragmatique par tous les lecteurs"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Cunningham distingue trois niveaux d''inférence : l''inférence logique (nécessairement vraie d''après le texte, elle découle du contenu propositionnel), l''inférence pragmatique (vraisemblable, fondée sur les connaissances du monde mais non certaine) et l''inférence créative (subjective, liée à l''expérience personnelle du lecteur). Cette classification est reprise dans les ressources Éduscol pour le cycle 3 et constitue un savoir didactique attendu au CRPE.',
  'Confondre la certitude de l''inférence logique avec sa difficulté : une inférence logique peut être simple à produire tout en étant nécessairement vraie.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Notion d''inférence-pont
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5010000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comp_inferences_implicite',
  'Inférences et implicite',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on l''inférence qui permet au lecteur de relier deux propositions successives d''un texte pour assurer la cohérence locale ? (Deux ou trois mots attendus.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["inférence-pont","inference-pont","inférence de liaison","inference de liaison","inférence pont","inference pont"]}'::jsonb,
  'L''inférence-pont (ou inférence de liaison, « bridging inference » en anglais) est le mécanisme cognitif par lequel le lecteur établit un lien entre deux propositions adjacentes pour maintenir la cohérence locale du texte. Par exemple, dans « Jean prit le marteau. Le clou s''enfonça dans le mur », le lecteur infère que Jean a frappé le clou. Sans cette inférence, le texte perd sa cohérence. Ce concept, issu des travaux de Clark (1977) et Haviland & Clark, est central dans la didactique de la compréhension.',
  'Confondre l''inférence-pont avec l''anaphore. L''anaphore est une reprise linguistique explicite, tandis que l''inférence-pont comble un vide sémantique non marqué dans le texte.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Énonciation et point de vue
-- Topic : comp_enonciation_point_vue
-- UUID prefix : f5020000
-- 3 Facile + 4 Intermediaire + 3 Difficile
-- Mix : 4 qcm + 3 vrai_faux + 3 reponse_courte
-- ============================================================

-- Q1 — Facile — QCM — Identifier le narrateur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Facile',
  'qcm',
  'Lisez : « Je marchais dans la rue quand j''aperçus un chat noir qui traversait devant moi. » Quel type de narrateur est ici utilisé ?',
  NULL,
  '[{"id":"a","label":"Narrateur omniscient"},{"id":"b","label":"Narrateur externe"},{"id":"c","label":"Narrateur interne (narrateur-personnage)"},{"id":"d","label":"Narrateur neutre"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La présence du pronom « je » et des déterminants possessifs (« moi ») indique un narrateur interne, aussi appelé narrateur-personnage. Ce narrateur raconte l''histoire de l''intérieur, en tant que participant aux événements. La focalisation est alors interne : le lecteur n''a accès qu''aux perceptions et pensées de ce personnage-narrateur. Au cycle 3, les élèves apprennent à repérer ces indices pour identifier le point de vue narratif.',
  'Confondre narrateur interne et focalisation interne. Le narrateur interne est un narrateur-personnage (« je »), tandis que la focalisation interne peut exister avec un narrateur à la troisième personne.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Déictiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Les mots « ici », « maintenant », « je » et « demain » sont des déictiques car leur sens dépend de la situation d''énonciation.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Les déictiques (ou embrayeurs) sont des unités linguistiques dont le référent ne peut être déterminé qu''en fonction de la situation d''énonciation. « Je » désigne celui qui parle, « ici » le lieu de l''énonciation, « maintenant » et « demain » se calculent par rapport au moment de l''énonciation. Benveniste les a théorisés comme des indices de la « subjectivité dans le langage ». Au CRPE, la connaissance des déictiques est attendue pour analyser la situation d''énonciation.',
  'Penser que « demain » a un sens fixe. En réalité, « demain » change de référent selon le jour où l''énoncé est produit : c''est un déictique temporel.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Réponse courte — Identifier la focalisation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Facile',
  'reponse_courte',
  'Dans un récit où le narrateur sait tout des pensées et sentiments de tous les personnages, quel type de focalisation est employé ? (Un ou deux mots.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["focalisation zéro","focalisation zero","omnisciente","point de vue omniscient","focalisation omnisciente"]}'::jsonb,
  'Lorsque le narrateur a un savoir illimité sur les personnages (pensées, sentiments, passé, avenir), on parle de focalisation zéro (ou point de vue omniscient), selon la terminologie de Genette. Le narrateur en sait plus que les personnages. Cette focalisation est caractéristique du roman réaliste du XIXe siècle (Balzac, Zola). Au cycle 3, les élèves commencent à identifier les différentes focalisations pour comprendre les choix narratifs d''un auteur.',
  'Confondre focalisation zéro et focalisation externe. En focalisation externe, le narrateur en sait moins que les personnages (vision « du dehors »), tandis qu''en focalisation zéro, il en sait plus.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Discours ancré vs coupé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Intermediaire',
  'qcm',
  'Quel ensemble de marques linguistiques caractérise un discours « ancré dans la situation d''énonciation » (par opposition à un discours « coupé ») ?',
  NULL,
  '[{"id":"a","label":"Passé simple, troisième personne, indicateurs temporels absolus"},{"id":"b","label":"Présent, passé composé, première et deuxième personnes, déictiques spatio-temporels"},{"id":"c","label":"Imparfait, troisième personne, absence de modalisateurs"},{"id":"d","label":"Infinitif, tournures impersonnelles, absence de déictiques"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le discours ancré (ou « discours » au sens de Benveniste) se caractérise par la présence de marques de l''énonciation : pronoms de première et deuxième personne (je, tu, nous, vous), temps du discours (présent, passé composé, futur), déictiques spatio-temporels (ici, maintenant, hier, demain) et modalisateurs. Le discours coupé (ou « récit/histoire ») utilise la troisième personne, le passé simple et des repères temporels absolus. Cette distinction est fondamentale pour l''analyse textuelle au CRPE.',
  'Penser que le passé composé appartient au système du récit (discours coupé). En français, le passé composé est un temps du discours ancré, contrairement au passé simple.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Vrai/Faux — Modalisateurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Un modalisateur est une marque linguistique par laquelle le locuteur exprime son degré de certitude ou son jugement sur ce qu''il énonce.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Les modalisateurs sont des marques linguistiques (adverbes : peut-être, certainement ; verbes : sembler, croire ; adjectifs évaluatifs : magnifique, horrible ; conditionnel, etc.) par lesquelles le locuteur inscrit sa subjectivité dans son discours. Ils expriment le doute, la certitude, le jugement de valeur ou l''appréciation. Repérer les modalisateurs permet d''identifier le point de vue de l''énonciateur, compétence essentielle pour la lecture critique au cycle 3.',
  'Croire que seuls les adverbes sont des modalisateurs. En réalité, les modalisateurs relèvent de catégories grammaticales variées : adverbes, verbes, adjectifs, temps verbaux (conditionnel), figures de style.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Réponse courte — Marques de subjectivité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Intermediaire',
  'reponse_courte',
  'Dans la phrase « Ce film est sans doute le meilleur de l''année », quel groupe de mots constitue un modalisateur exprimant la probabilité ? (Citez-le exactement.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["sans doute","« sans doute »"]}'::jsonb,
  'L''expression « sans doute » est un modalisateur épistémique qui nuance le degré de certitude du locuteur. Contrairement à ce que son étymologie suggère, « sans doute » en français contemporain exprime la probabilité (et non la certitude absolue, qui serait « sans aucun doute »). Cette nuance est importante pour l''analyse énonciative. Au CRPE, identifier les modalisateurs dans un texte permet de caractériser la posture énonciative de l''auteur.',
  'Penser que « sans doute » exprime la certitude absolue. En français moderne, « sans doute » signifie « probablement », et non « assurément ».',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Narrateur omniscient vs externe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Intermediaire',
  'qcm',
  'Lisez : « L''homme entra dans le café et commanda un express. Personne ne pouvait deviner qu''il venait de prendre la décision la plus importante de sa vie. » Quelle focalisation est utilisée ?',
  NULL,
  '[{"id":"a","label":"Focalisation interne"},{"id":"b","label":"Focalisation externe"},{"id":"c","label":"Focalisation zéro (omnisciente)"},{"id":"d","label":"Alternance de focalisations"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le narrateur révèle une information que les autres personnages ignorent (« personne ne pouvait deviner ») et accède aux pensées intérieures du personnage (« la décision la plus importante de sa vie »). Ce savoir supérieur à celui des personnages caractérise la focalisation zéro, dite omnisciente (Genette, Figures III). Le narrateur est ici « Dieu » : il sait tout, y compris ce que le personnage dissimule aux autres.',
  'Confondre focalisation zéro et focalisation interne. Si le texte disait « il savait qu''il venait de prendre... », on serait en focalisation interne. Ici, le narrateur surplombe la scène.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Vrai/Faux — Polyphonie énonciative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Le discours indirect libre se caractérise par l''absence de verbe introducteur et de subordination, tout en conservant les marques de la troisième personne et les temps du récit.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le discours indirect libre (DIL) est une forme hybride qui mêle les caractéristiques du récit (troisième personne, imparfait ou passé simple) et celles du discours direct (expressivité, exclamations, interrogations). Il supprime le verbe introducteur et la conjonction « que » du discours indirect. Exemple : « Elle regarda par la fenêtre. Comme cette journée était longue ! » Le DIL crée un effet de polyphonie énonciative où la voix du narrateur et celle du personnage se superposent. Flaubert en a fait un usage magistral.',
  'Confondre discours indirect libre et discours indirect. Le discours indirect conserve le verbe introducteur et la subordination (« elle dit qu''elle... »), contrairement au DIL.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — QCM — Théorie de l''énonciation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Difficile',
  'qcm',
  'Dans un récit à la première personne, le « je » qui raconte et le « je » qui a vécu les événements ne coïncident pas toujours. Comment Genette nomme-t-il cette distinction ?',
  NULL,
  '[{"id":"a","label":"Narrateur homodiégétique vs hétérodiégétique"},{"id":"b","label":"Narrateur extradiégétique racontant vs personnage intradiégétique raconté"},{"id":"c","label":"Auteur implicite vs narrateur explicite"},{"id":"d","label":"Énonciateur premier vs énonciateur second"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Genette distingue les niveaux narratifs : le narrateur extradiégétique est celui qui raconte depuis un « après » (le « je » narrant), tandis que le personnage intradiégétique est celui qui vit les événements (le « je » narré). Cette distinction est cruciale car le « je » narrant peut porter un regard rétrospectif, ironique ou nostalgique sur le « je » narré. Au CRPE, comprendre cette dualité permet d''analyser finement les récits autobiographiques étudiés au cycle 3.',
  'Confondre les niveaux narratifs de Genette avec la distinction auteur/narrateur. L''auteur est une personne réelle ; le narrateur, même à la première personne, reste une instance fictive du texte.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Vocabulaire de l''énonciation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5020000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comp_enonciation_point_vue',
  'Énonciation et point de vue',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on un narrateur qui raconte une histoire à laquelle il ne participe pas en tant que personnage ? (Un ou deux mots, terminologie de Genette.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["hétérodiégétique","heterodiégétique","heterodiégetique","narrateur hétérodiégétique","narrateur heterodiégétique","hétérodiégétique"]}'::jsonb,
  'Dans la terminologie de Genette (Figures III, 1972), un narrateur hétérodiégétique est absent de l''histoire qu''il raconte (il n''est pas un personnage du récit), par opposition au narrateur homodiégétique (présent comme personnage) et autodiégétique (héros de sa propre histoire). Cette classification, fondée sur la relation du narrateur à la diégèse (l''univers du récit), est un outil d''analyse narratologique incontournable au CRPE.',
  'Confondre « hétérodiégétique » avec « narrateur externe ». « Externe » peut renvoyer à la focalisation (ce que voit le narrateur), tandis qu''« hétérodiégétique » concerne sa participation ou non à l''histoire.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 3 : Le texte explicatif et documentaire
-- Topic : comp_texte_explicatif
-- UUID prefix : f5030000
-- 3 Facile + 4 Intermediaire + 3 Difficile
-- Mix : 4 qcm + 3 vrai_faux + 3 reponse_courte
-- ============================================================

-- Q1 — Facile — QCM — Structure du texte explicatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Facile',
  'qcm',
  'Quelle est la structure de base la plus fréquente du texte explicatif ?',
  NULL,
  '[{"id":"a","label":"Situation initiale — péripéties — dénouement"},{"id":"b","label":"Thèse — arguments — conclusion"},{"id":"c","label":"Phase de questionnement — phase explicative — phase conclusive"},{"id":"d","label":"Introduction — développement chronologique — morale"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le texte explicatif suit typiquement une structure en trois phases : la phase de questionnement (pourquoi ? comment ?), la phase explicative (réponse développée avec procédés explicatifs) et la phase conclusive (synthèse). Cette structure se distingue du texte narratif (schéma quinaire), du texte argumentatif (thèse-arguments) et du texte descriptif. Au CRPE, identifier le type de texte et sa structure est une compétence fondamentale pour l''enseignement de la compréhension en lecture.',
  'Confondre texte explicatif et texte argumentatif. Le texte explicatif vise à faire comprendre (visée didactique), tandis que le texte argumentatif vise à convaincre (visée persuasive).',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Connecteurs logiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Les connecteurs « car », « en effet » et « parce que » expriment tous une relation de cause.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Ces trois connecteurs expriment bien une relation causale, mais avec des nuances. « Parce que » introduit la cause en réponse à une question (« pourquoi ? »), « car » apporte une justification à ce qui précède, et « en effet » confirme ou explique l''assertion précédente. Dans un texte explicatif, ces connecteurs structurent le raisonnement en reliant les causes aux conséquences. Au cycle 3, l''identification des connecteurs logiques est un levier essentiel pour la compréhension des textes documentaires.',
  'Penser que « en effet » exprime la conséquence. « En effet » introduit une explication ou une confirmation de ce qui précède, pas une conséquence.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Réponse courte — Procédé explicatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Facile',
  'reponse_courte',
  'Dans la phrase « La photosynthèse, c''est-à-dire le processus par lequel les plantes fabriquent leur nourriture grâce à la lumière », quel procédé explicatif est utilisé après « c''est-à-dire » ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["définition","la définition","reformulation","la reformulation"]}'::jsonb,
  'Le marqueur « c''est-à-dire » introduit une définition (ou reformulation) du terme « photosynthèse ». La définition est l''un des procédés explicatifs les plus courants avec l''exemple, la comparaison, l''analogie et l''illustration. Elle permet de rendre accessible un terme technique en le paraphrasant. Au CRPE, connaître les procédés explicatifs permet d''analyser comment un texte documentaire vulgarise un savoir scientifique pour le rendre compréhensible.',
  'Confondre définition et exemple. La définition reformule le concept dans d''autres termes, tandis que l''exemple illustre le concept par un cas particulier.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Texte documentaire vs littéraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Intermediaire',
  'qcm',
  'Quelle caractéristique distingue fondamentalement la lecture d''un texte documentaire de celle d''un texte littéraire narratif ?',
  NULL,
  '[{"id":"a","label":"Le texte documentaire est toujours plus court que le texte littéraire"},{"id":"b","label":"Le texte documentaire autorise une lecture non linéaire guidée par les titres, sous-titres et index"},{"id":"c","label":"Le texte documentaire n''utilise jamais de figures de style"},{"id":"d","label":"Le texte documentaire ne contient pas de vocabulaire difficile"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le texte documentaire se distingue par sa structure modulaire qui autorise une lecture non linéaire : le lecteur peut naviguer grâce aux titres, sous-titres, sommaire, index, glossaire, encadrés et illustrations légendées. Cette organisation facilite la recherche d''information, contrairement au texte narratif qui impose généralement une lecture linéaire. Les programmes d''Éduscol pour le cycle 3 insistent sur l''apprentissage de ces stratégies de lecture documentaire spécifiques.',
  'Affirmer que le texte documentaire n''utilise jamais de figures de style. La vulgarisation scientifique recourt souvent à des comparaisons et des métaphores pour rendre les concepts accessibles.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Vrai/Faux — Vulgarisation scientifique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? La vulgarisation scientifique consiste uniquement à simplifier le vocabulaire technique d''un texte savant.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'La vulgarisation scientifique ne se réduit pas à une simplification lexicale. Elle mobilise un ensemble de procédés discursifs : reformulation, analogie, comparaison avec le quotidien, narration (mise en récit du savoir), illustration, schématisation et interpellation du lecteur. Elle adapte aussi la structure textuelle (organisation thématique, encadrés) et le registre de langue. Au CRPE, comprendre la vulgarisation comme un processus de transposition didactique du savoir savant au savoir enseigné est fondamental.',
  'Réduire la vulgarisation à un appauvrissement du texte source. La vulgarisation est un véritable travail de réécriture qui crée un nouveau texte adapté au public visé.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Réponse courte — Connecteur de conséquence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Intermediaire',
  'reponse_courte',
  'Dans un texte explicatif, quel type de relation logique expriment les connecteurs « donc », « par conséquent » et « c''est pourquoi » ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["conséquence","consequence","la conséquence","la consequence"]}'::jsonb,
  'Les connecteurs « donc », « par conséquent » et « c''est pourquoi » expriment une relation de conséquence : ils introduisent le résultat ou l''effet d''un fait énoncé précédemment. Dans un texte explicatif, ces connecteurs structurent le raisonnement causal en articulant explicitement les liens entre causes et effets. Maîtriser la valeur des connecteurs logiques est indispensable pour comprendre l''architecture argumentative d''un texte explicatif.',
  'Confondre les connecteurs de conséquence avec ceux de cause. « Donc » introduit la conséquence (ce qui résulte), tandis que « car » introduit la cause (ce qui explique).',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Procédé de comparaison
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Intermediaire',
  'qcm',
  'Dans un texte documentaire pour enfants, on lit : « Le cœur fonctionne comme une pompe qui envoie le sang dans tout le corps. » Quel procédé explicatif est ici utilisé ?',
  NULL,
  '[{"id":"a","label":"La définition"},{"id":"b","label":"L''exemplification"},{"id":"c","label":"L''analogie (comparaison explicative)"},{"id":"d","label":"La reformulation"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''auteur utilise une analogie (ou comparaison explicative), signalée par le marqueur « comme ». Le cœur (concept complexe) est rapproché d''une pompe (objet familier) pour faciliter la compréhension. L''analogie est un procédé privilégié de la vulgarisation scientifique car elle s''appuie sur les connaissances préalables du lecteur. Au CRPE, il est important de distinguer l''analogie explicative (visée didactique) de la comparaison littéraire (visée esthétique).',
  'Confondre analogie et définition. L''analogie rapproche deux domaines différents, tandis que la définition donne le sens du terme dans son propre domaine.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Reformulation et paraphrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Difficile',
  'qcm',
  'Du point de vue didactique, pourquoi la reformulation par l''élève d''un passage de texte explicatif est-elle considérée comme un indicateur fiable de compréhension ?',
  NULL,
  '[{"id":"a","label":"Elle prouve que l''élève a mémorisé le texte mot à mot"},{"id":"b","label":"Elle montre que l''élève a construit une représentation mentale du contenu qu''il peut verbaliser avec ses propres mots"},{"id":"c","label":"Elle vérifie que l''élève sait lire à voix haute sans erreur"},{"id":"d","label":"Elle permet de contrôler la vitesse de lecture de l''élève"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La reformulation (ou « rappel de récit » adapté au texte explicatif) est un indicateur de compréhension car elle suppose que l''élève a construit un modèle mental du contenu (modèle de situation, Kintsch & van Dijk). Reformuler implique de sélectionner les informations essentielles, de les réorganiser et de les verbaliser dans ses propres mots, ce qui va bien au-delà de la simple mémorisation. Les recherches de Cèbe et Goigoux montrent que cette activité développe la compréhension elle-même.',
  'Confondre reformulation et récitation. La récitation restitue le texte tel quel (mémoire verbatim), tandis que la reformulation témoigne d''un traitement sémantique profond.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Vrai/Faux — Organisation textuelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Dans un texte explicatif, la structure « problème / solution » et la structure « cause / conséquence » sont deux modes d''organisation textuelle distincts.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Meyer (1985) identifie cinq structures organisationnelles du texte explicatif : la description, l''énumération (collection), la comparaison, la cause/conséquence et le problème/solution. La structure cause/conséquence présente un phénomène et ses effets, tandis que la structure problème/solution expose une difficulté puis propose des réponses. Ces deux structures, bien que proches, diffèrent par leur visée : expliquer un mécanisme vs résoudre une situation. Au CRPE, identifier la structure organisationnelle d''un texte guide le choix des stratégies de lecture à enseigner.',
  'Considérer que cause/conséquence et problème/solution sont interchangeables. La structure problème/solution implique une dimension pragmatique (action à mener) absente de la structure causale.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Superstructure textuelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5030000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comp_texte_explicatif',
  'Le texte explicatif et documentaire',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on, dans la théorie de van Dijk et Kintsch, le schéma organisationnel global d''un texte (narratif, explicatif, argumentatif, etc.) qui guide les attentes du lecteur ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["superstructure","la superstructure","superstructure textuelle"]}'::jsonb,
  'Van Dijk et Kintsch (1983) nomment « superstructure » le schéma formel global qui organise le contenu d''un texte. La superstructure narrative correspond au schéma quinaire, la superstructure explicative au schéma question/explication/conclusion, etc. Reconnaître la superstructure d''un texte active chez le lecteur des attentes et des stratégies de lecture adaptées. Ce concept est à la base de l''enseignement explicite des types de textes préconisé par Éduscol pour le cycle 3.',
  'Confondre superstructure et macrostructure. La macrostructure concerne le contenu sémantique global (les idées principales), tandis que la superstructure concerne la forme organisationnelle du texte.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 4 : Le texte poétique
-- Topic : comp_texte_poetique
-- UUID prefix : f5040000
-- 3 Facile + 4 Intermediaire + 3 Difficile
-- Mix : 4 qcm + 3 vrai_faux + 3 reponse_courte
-- ============================================================

-- Q1 — Facile — QCM — Identifier une figure de style
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Facile',
  'qcm',
  'Dans le vers « La terre est bleue comme une orange » (Paul Éluard), quelle figure de style est utilisée ?',
  NULL,
  '[{"id":"a","label":"Une métaphore"},{"id":"b","label":"Une comparaison"},{"id":"c","label":"Une personnification"},{"id":"d","label":"Une hyperbole"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le mot-outil « comme » signale explicitement une comparaison entre la terre et une orange. Même si le rapprochement est surprenant et paradoxal (une comparaison surréaliste), la structure syntaxique reste celle de la comparaison avec ses trois éléments : le comparé (la terre), l''outil de comparaison (comme) et le comparant (une orange). Au CRPE, il est essentiel de distinguer comparaison (avec outil) et métaphore (sans outil), même dans des contextes poétiques déroutants.',
  'Répondre « métaphore » en oubliant la présence du mot « comme ». La comparaison utilise un outil comparatif explicite, ce qui la distingue structurellement de la métaphore.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Vers et strophe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Un quatrain est une strophe composée de quatre vers.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Un quatrain est effectivement une strophe de quatre vers. Le vocabulaire de la versification distingue le distique (2 vers), le tercet (3 vers), le quatrain (4 vers), le quintil (5 vers) et le sizain (6 vers). Au CRPE, connaître ce vocabulaire technique est indispensable pour analyser la forme poétique. Le quatrain est la strophe la plus courante dans la poésie française classique, notamment dans le sonnet (deux quatrains suivis de deux tercets).',
  'Confondre quatrain et quatrième vers. Le quatrain est un ensemble de quatre vers formant une unité strophique, et non le quatrième vers d''un poème.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Réponse courte — Nom d''un vers
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Facile',
  'reponse_courte',
  'Comment appelle-t-on un vers de douze syllabes ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["alexandrin","un alexandrin","l''alexandrin"]}'::jsonb,
  'L''alexandrin est un vers de douze syllabes, le mètre le plus prestigieux de la poésie française classique. Son nom viendrait du Roman d''Alexandre (XIIe siècle). L''alexandrin classique comporte une césure à l''hémistiche (6 + 6 syllabes). Il est le vers emblématique de la tragédie (Racine, Corneille) et de la poésie lyrique (Hugo, Baudelaire). Au CRPE, savoir identifier les principaux mètres (octosyllabe, décasyllabe, alexandrin) est attendu.',
  'Compter les syllabes comme on prononce à l''oral courant, en oubliant les règles du « e » muet en poésie. En versification, le « e » non élidé devant consonne compte comme une syllabe.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Personnification
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Intermediaire',
  'qcm',
  'Dans les vers « La mer s''est retirée / Comme on quitte quelqu''un / En se retournant souvent » (Jacques Prévert, adaptation libre), quel procédé poétique domine ?',
  NULL,
  '[{"id":"a","label":"L''allitération"},{"id":"b","label":"La personnification associée à une comparaison"},{"id":"c","label":"La métonymie"},{"id":"d","label":"L''anaphore"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La mer est présentée avec un comportement humain (quitter quelqu''un, se retourner) : c''est une personnification. Le mot « comme » introduit simultanément une comparaison entre le mouvement de la marée et celui d''une personne qui s''éloigne. Les deux figures fonctionnent ensemble pour créer une image poétique riche. Au cycle 3, les élèves apprennent progressivement à identifier ces figures et à comprendre leur effet de sens dans la construction de l''univers poétique.',
  'Se limiter à identifier la comparaison (signalée par « comme ») sans percevoir la personnification qui en est le fondement : la mer se voit attribuer des actions humaines.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Vrai/Faux — Sonnet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le sonnet est une forme fixe composée de deux quatrains et deux tercets, soit quatorze vers au total.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le sonnet est une forme fixe de quatorze vers, organisés en deux quatrains (4+4) et deux tercets (3+3). Introduit en France au XVIe siècle par la Pléiade (Du Bellay, Ronsard), il a été pratiqué par les plus grands poètes (Baudelaire, Rimbaud, Mallarmé). La forme classique impose des alexandrins et un schéma de rimes précis (ABBA ABBA pour les quatrains). Au CRPE, le sonnet est la forme fixe la plus fréquemment étudiée car elle est abordable dès le cycle 3.',
  'Croire que le sonnet compte seize vers en comptant 4+4+4+4. Le sonnet est bien 4+4+3+3 = 14 vers, ce qui le rend asymétrique et crée une tension entre quatrains et tercets.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Réponse courte — Allitération
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Intermediaire',
  'reponse_courte',
  'Dans le vers de Racine « Pour qui sont ces serpents qui sifflent sur vos têtes ? », quel procédé sonore fondé sur la répétition du son [s] est utilisé ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["allitération","alliteration","une allitération","une alliteration"]}'::jsonb,
  'L''allitération est la répétition d''un même son consonantique dans un vers ou une phrase. Ici, la consonne [s] est répétée dans « ces », « serpents », « sifflent », « sur », créant un effet d''imitation sonore (harmonie imitative) qui évoque le sifflement des serpents. L''allitération se distingue de l''assonance, qui porte sur les voyelles. Au CRPE, ces deux procédés sonores sont des savoirs fondamentaux pour l''analyse du texte poétique.',
  'Confondre allitération et assonance. L''allitération concerne les consonnes, l''assonance les voyelles. Les deux sont des procédés d''harmonie sonore.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Poème en prose
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Intermediaire',
  'qcm',
  'Quelle est la caractéristique principale du poème en prose ?',
  NULL,
  '[{"id":"a","label":"Il utilise exclusivement des alexandrins sans retour à la ligne"},{"id":"b","label":"Il abandonne la versification (vers, rimes, mètre) tout en conservant la densité poétique du langage"},{"id":"c","label":"Il est toujours très court, de trois lignes maximum"},{"id":"d","label":"Il raconte obligatoirement une histoire avec des personnages"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le poème en prose, théorisé par Baudelaire dans Le Spleen de Paris (1869), se libère des contraintes formelles de la versification (vers, rimes, mètre régulier) tout en conservant les qualités poétiques du langage : images, rythme, musicalité, densité sémantique, travail sur la sonorité. Il se présente visuellement comme un paragraphe de prose. Cette forme permet d''élargir la définition de la poésie au-delà du vers, ce qui est un enjeu didactique important au cycle 3.',
  'Penser que le poème en prose n''est pas de la « vraie » poésie car il n''a pas de rimes. La poésie ne se réduit pas à la versification ; le travail sur le langage, les images et le rythme définit aussi le texte poétique.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Vrai/Faux — Haïku
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Le haïku japonais, dans sa forme traditionnelle, se compose de trois vers de 5, 7 et 5 syllabes et doit contenir un « kigo » (mot de saison).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le haïku traditionnel japonais obéit à deux contraintes majeures : une structure syllabique de 5/7/5 (dix-sept mores en japonais) et la présence d''un kigo, mot ou expression évoquant une saison. Le haïku capture un instant, une sensation, avec une extrême concision. En classe, le haïku est un support privilégié pour l''initiation à la poésie : sa brièveté facilite l''écriture et la contrainte formelle stimule la créativité. Les programmes d''Éduscol recommandent l''écriture de haïkus dès le cycle 2.',
  'Croire que la seule contrainte du haïku est le nombre de syllabes (5/7/5). Le kigo (référence saisonnière) est un élément constitutif de la forme traditionnelle, souvent négligé en contexte scolaire.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — QCM — Enjambement, rejet, contre-rejet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Difficile',
  'qcm',
  'Dans les vers de Victor Hugo : « Demain, dès l''aube, à l''heure où blanchit la campagne, / Je partirai. Vois-tu, je sais que tu m''attends. » Quel effet produit le rejet de « Je partirai » en début du second vers ?',
  NULL,
  '[{"id":"a","label":"Il crée un effet d''attente et met en valeur la détermination du poète"},{"id":"b","label":"Il corrige une erreur de métrique"},{"id":"c","label":"Il marque un changement de narrateur"},{"id":"d","label":"Il introduit un nouveau thème sans lien avec le vers précédent"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le rejet consiste à reporter au début du vers suivant un élément bref qui complète syntaxiquement le vers précédent. Ici, « Je partirai » est mis en relief par sa position de rejet : après l''accumulation des compléments circonstanciels (« demain, dès l''aube, à l''heure où... »), le verbe principal, rejeté au vers suivant, prend une force expressive considérable. Ce procédé crée un effet d''attente qui souligne la détermination du poète. Au CRPE, distinguer enjambement, rejet et contre-rejet est un savoir technique attendu.',
  'Confondre rejet et enjambement. L''enjambement est le phénomène général (la phrase déborde du vers), tandis que le rejet désigne spécifiquement l''élément bref repoussé au début du vers suivant.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Figure de style par substitution
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5040000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comp_texte_poetique',
  'Le texte poétique',
  'Difficile',
  'reponse_courte',
  'Dans le vers « Les voiles au loin descendaient vers Harfleur » (Victor Hugo), le mot « voiles » désigne en réalité des bateaux. Quelle figure de style consiste à désigner un objet par une de ses parties ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["synecdoque","une synecdoque","la synecdoque","métonymie","une métonymie","la métonymie"]}'::jsonb,
  'Désigner le tout (le bateau) par la partie (les voiles) est une synecdoque, cas particulier de la métonymie. La synecdoque repose sur un rapport d''inclusion (partie/tout, matière/objet, singulier/pluriel), tandis que la métonymie au sens strict repose sur un rapport de contiguïté (contenant/contenu, cause/effet, lieu/institution). En pratique, au CRPE, les deux termes sont souvent acceptés car la synecdoque est considérée comme un sous-type de métonymie.',
  'Répondre « métaphore ». La métaphore repose sur un rapport de ressemblance entre deux réalités de domaines différents, tandis que la synecdoque/métonymie repose sur un rapport de contiguïté ou d''inclusion.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 5 : Analyse comparative et mise en réseau
-- Topic : comp_mise_en_reseau
-- UUID prefix : f5050000
-- 3 Facile + 4 Intermediaire + 3 Difficile
-- Mix : 4 qcm + 3 vrai_faux + 3 reponse_courte
-- ============================================================

-- Q1 — Facile — QCM — Définir la mise en réseau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Facile',
  'qcm',
  'Que signifie « mettre des textes en réseau » dans le cadre de l''enseignement de la littérature à l''école ?',
  NULL,
  '[{"id":"a","label":"Publier des textes sur Internet pour les rendre accessibles aux élèves"},{"id":"b","label":"Regrouper des textes selon un critère commun (thème, auteur, genre, procédé) pour enrichir leur compréhension par la comparaison"},{"id":"c","label":"Lire tous les textes d''un même manuel dans l''ordre chronologique"},{"id":"d","label":"Résumer chaque texte en un paragraphe pour créer une fiche de lecture"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La mise en réseau consiste à rapprocher plusieurs textes selon un critère pertinent (thème, auteur, genre, époque, procédé littéraire) pour que leur confrontation enrichisse la compréhension de chacun. Cette démarche, préconisée par les programmes et les ressources Éduscol, développe la culture littéraire et les compétences interprétatives des élèves. Elle permet de construire des connaissances sur les genres, les stéréotypes, les archétypes et les variations littéraires.',
  'Réduire la mise en réseau à un simple regroupement thématique. La mise en réseau implique une véritable confrontation des textes, pas une simple juxtaposition autour d''un thème.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Réseau par genre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Un réseau de textes par genre permet aux élèves de repérer les caractéristiques récurrentes d''un genre littéraire (conte, fable, roman policier, etc.).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le réseau par genre est l''un des types de mise en réseau les plus efficaces pour construire des savoirs littéraires. En lisant plusieurs contes, par exemple, les élèves identifient les constantes du genre (schéma narratif, personnages types, formules d''ouverture et de clôture) et les variantes propres à chaque œuvre. Cette approche comparative développe la conscience générique, compétence clé des programmes de cycle 3 en littérature.',
  'Penser qu''un seul texte suffit pour enseigner un genre. C''est précisément la confrontation de plusieurs textes du même genre qui permet de dégager les invariants et les variations.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Réponse courte — Intertextualité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Facile',
  'reponse_courte',
  'Comment appelle-t-on la relation qu''un texte entretient avec d''autres textes antérieurs (citations, allusions, réécritures, parodies) ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["intertextualité","intertextualite","l''intertextualité","l''intertextualite"]}'::jsonb,
  'L''intertextualité, concept théorisé par Julia Kristeva (1969) à partir des travaux de Bakhtine, désigne l''ensemble des relations qu''un texte entretient avec d''autres textes : citations, allusions, réécritures, parodies, pastiches. Genette (Palimpsestes, 1982) a affiné cette notion en distinguant cinq types de relations transtextuelles. À l''école, la mise en réseau permet aux élèves de percevoir ces relations intertextuelles et d''enrichir leur lecture.',
  'Confondre intertextualité et plagiat. L''intertextualité est un jeu littéraire conscient et créatif avec les textes antérieurs, tandis que le plagiat est une copie non assumée.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — QCM — Types de réseaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Intermediaire',
  'qcm',
  'Un enseignant propose à ses élèves de lire Le Petit Chaperon rouge de Perrault, la version des frères Grimm, puis une réécriture contemporaine parodique. Quel type de réseau met-il en œuvre ?',
  NULL,
  '[{"id":"a","label":"Un réseau par auteur"},{"id":"b","label":"Un réseau par genre"},{"id":"c","label":"Un réseau hypertextuel (réécritures d''un même texte source)"},{"id":"d","label":"Un réseau thématique sur la peur"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Ce réseau est hypertextuel au sens de Genette : il rapproche un hypotexte (le texte source, ici Le Petit Chaperon rouge) et ses hypertextes (les réécritures, adaptations, parodies). Ce type de réseau permet aux élèves de percevoir les constantes (structure narrative, personnages, morale) et les variantes (ton, dénouement, point de vue) entre les versions. C''est un dispositif particulièrement riche pour le débat interprétatif et la compréhension des processus de création littéraire.',
  'Confondre réseau hypertextuel et réseau thématique. Le réseau hypertextuel repose sur une relation de réécriture entre les textes, pas seulement sur un thème commun.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — Vrai/Faux — Débat interprétatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le débat interprétatif en classe de littérature consiste à accepter toutes les interprétations des élèves sans distinction, car la lecture est par nature subjective.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Le débat interprétatif ne consiste pas à valider toutes les interprétations sans critère. Il s''agit d''un échange argumenté où les élèves confrontent leurs lectures en s''appuyant sur le texte. Une interprétation doit être recevable, c''est-à-dire compatible avec les indices textuels, même si plusieurs interprétations peuvent coexister (les « blancs » du texte autorisent la pluralité). L''enseignant distingue les droits du texte (ce que le texte permet de dire) et les droits du lecteur (l''investissement subjectif). Ce cadre est explicité dans les documents Éduscol sur la lecture littéraire.',
  'Croire que le débat interprétatif est un simple échange d''opinions. Il exige un retour au texte et une argumentation fondée sur des indices textuels précis.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — Réponse courte — Constantes et variantes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Intermediaire',
  'reponse_courte',
  'Lorsqu''on compare plusieurs versions d''un même conte, on identifie les éléments communs (constantes) et les éléments qui changent. Comment appelle-t-on ces éléments qui diffèrent d''une version à l''autre ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["variantes","les variantes","des variantes","variante"]}'::jsonb,
  'Les variantes sont les éléments qui diffèrent entre les versions d''un même texte ou entre les textes d''un même réseau. L''étude des constantes et des variantes est au cœur de la démarche comparative en littérature. Elle permet aux élèves de comprendre que les choix de l''auteur (modifier un personnage, changer le dénouement, adopter un autre point de vue) produisent des effets de sens différents. Cette approche développe la posture interprétative et la conscience des choix esthétiques.',
  'Confondre variante et erreur. Les variantes sont des choix délibérés de l''auteur ou des évolutions culturelles, pas des fautes ou des déviances par rapport à un texte « original ».',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — QCM — Parcours de lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Intermediaire',
  'qcm',
  'Quelle est la différence principale entre un « parcours de lecture » et une « mise en réseau » selon les préconisations d''Éduscol ?',
  NULL,
  '[{"id":"a","label":"Le parcours de lecture est réservé au cycle 2, la mise en réseau au cycle 3"},{"id":"b","label":"Le parcours de lecture organise la progression dans le temps (lecture suivie), la mise en réseau rapproche des textes pour les comparer"},{"id":"c","label":"Le parcours de lecture ne concerne que les albums, la mise en réseau que les romans"},{"id":"d","label":"Il n''y a aucune différence, les deux termes sont synonymes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le parcours de lecture s''inscrit dans une progression temporelle : il organise un itinéraire de lectures successives qui s''enrichissent mutuellement au fil du temps (par exemple, un parcours annuel sur le thème du voyage). La mise en réseau, elle, rapproche des textes à un moment donné pour les comparer et les faire dialoguer. Les deux dispositifs sont complémentaires : le parcours construit une culture sur la durée, la mise en réseau approfondit la compréhension par la confrontation.',
  'Croire que la mise en réseau nécessite de lire tous les textes intégralement. Un réseau peut inclure des extraits, des lectures en écho, des textes résistants et des textes plus accessibles.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Hypertextualité de Genette
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Difficile',
  'qcm',
  'Dans la terminologie de Genette (Palimpsestes, 1982), comment appelle-t-on le texte source qui est transformé ou imité pour produire un nouveau texte ?',
  NULL,
  '[{"id":"a","label":"L''architexte"},{"id":"b","label":"Le paratexte"},{"id":"c","label":"L''hypotexte"},{"id":"d","label":"Le métatexte"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Genette nomme « hypotexte » le texte antérieur sur lequel se greffe un nouveau texte (l''« hypertexte ») par transformation (parodie, transposition) ou par imitation (pastiche, charge). Par exemple, l''Odyssée d''Homère est l''hypotexte de l''Ulysse de Joyce. Cette terminologie, issue de Palimpsestes, est un outil d''analyse puissant pour la mise en réseau de textes. Au CRPE, connaître les cinq relations transtextuelles de Genette (intertextualité, paratextualité, métatextualité, hypertextualité, architextualité) est un atout.',
  'Confondre hypotexte et hypertexte. L''hypotexte est le texte source (antérieur), l''hypertexte est le texte dérivé (postérieur). L''hypo- renvoie à « en dessous » (le socle), l''hyper- à « au-dessus » (la transformation).',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Vrai/Faux — Archétype et stéréotype
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Dans le cadre de la mise en réseau, le stéréotype littéraire (personnage type, situation attendue) est uniquement un obstacle à la compréhension et doit être combattu.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Le stéréotype littéraire n''est pas seulement un obstacle : il est aussi un outil de compréhension. Les recherches de Jean-Louis Dufays montrent que le stéréotype fonctionne comme un « horizon d''attente » qui guide la lecture. Le lecteur s''appuie sur ses connaissances des personnages types (la marâtre, le héros, l''adjuvant) et des situations stéréotypées pour anticiper et interpréter. La mise en réseau permet justement de construire ces stéréotypes puis de les questionner quand un texte les subvertit. C''est le jeu entre conformité et écart qui enrichit la lecture littéraire.',
  'Voir le stéréotype uniquement de façon négative. En didactique de la littérature, le stéréotype est un point d''appui indispensable pour la compréhension avant de devenir un objet de réflexion critique.',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Relation transtextuelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f5050000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comp_mise_en_reseau',
  'Analyse comparative et mise en réseau',
  'Difficile',
  'reponse_courte',
  'Selon Genette, comment appelle-t-on la relation d''un texte avec l''ensemble des catégories génériques auxquelles il appartient (roman, conte, fable, etc.) ? (Un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["architextualité","architextualite","l''architextualité","l''architextualite"]}'::jsonb,
  'L''architextualité est, dans la terminologie de Genette, la relation la plus abstraite et la plus implicite entre un texte et les catégories génériques dont il relève (genres, sous-genres, types de discours). Par exemple, un roman policier entretient une relation architextuelle avec le genre policier. Cette relation est souvent signalée par le paratexte (mention « roman » ou « conte » sur la couverture). Au CRPE, l''architextualité fonde la compétence générique des élèves, c''est-à-dire leur capacité à reconnaître et classer les textes par genre.',
  'Confondre architextualité et intertextualité. L''intertextualité est la relation entre textes concrets (citations, allusions), tandis que l''architextualité est la relation entre un texte et une catégorie abstraite (un genre).',
  'valide',
  'CRPE Français — Compréhension',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
