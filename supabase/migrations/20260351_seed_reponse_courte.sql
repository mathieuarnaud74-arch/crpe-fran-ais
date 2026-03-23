-- ============================================================
-- Migration : 2 séries Réponse courte (20 questions)
-- Série 1 : Identifier la nature des mots (analyse_langue)
-- Série 2 : Identifier le type de discours (comprehension_texte)
-- Mode : reponse_courte (saisie libre, accents non requis)
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Identifier la nature des mots
-- Topic : analyse_identifier_nature
-- UUID prefix : fa010000
-- Subdomain : analyse_langue
-- 3 Facile, 4 Intermédiaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — Identifier un nom commun
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Facile',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « soleil » dans la phrase suivante ?',
  'Le soleil illumine la cour de l''école.',
  NULL,
  '{"mode":"text","acceptableAnswers":["nom","nom commun","nom commun masculin"]}'::jsonb,
  '« Soleil » est un nom commun. Il désigne une chose concrète, est précédé du déterminant « le » et occupe la fonction sujet dans cette phrase. Le nom est une classe grammaticale qui désigne des êtres, des objets, des idées ou des actions.',
  'Confondre le nom avec l''adjectif : « soleil » n''est pas un adjectif car il ne qualifie pas un autre nom, il désigne directement un objet.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Identifier un adjectif qualificatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Facile',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « magnifique » dans la phrase suivante ?',
  'Cette journée magnifique restera gravée dans ma mémoire.',
  NULL,
  '{"mode":"text","acceptableAnswers":["adjectif","adjectif qualificatif"]}'::jsonb,
  '« Magnifique » est un adjectif qualificatif. Il apporte une précision sur le nom « journée » qu''il qualifie. On peut le reconnaître car il varie en genre et en nombre avec le nom qu''il accompagne (une journée magnifique / des journées magnifiques).',
  'Confondre avec un adverbe : « magnifique » qualifie un nom, pas un verbe. Un adverbe modifierait un verbe, un adjectif ou un autre adverbe.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Identifier un verbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Facile',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « chantaient » dans la phrase suivante ?',
  'Les oiseaux chantaient dans les arbres du parc.',
  NULL,
  '{"mode":"text","acceptableAnswers":["verbe"]}'::jsonb,
  '« Chantaient » est un verbe conjugué (verbe « chanter », 1ᵉʳ groupe, à l''imparfait de l''indicatif). Le verbe est le noyau du groupe verbal ; il exprime une action ou un état et se conjugue en personne, nombre, temps et mode.',
  'Confondre le participe présent « chantant » (forme adjective ou gérondif) avec le verbe conjugué. Ici, « chantaient » est bien conjugué à l''imparfait.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — Identifier un adverbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Intermediaire',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « lentement » dans la phrase suivante ?',
  'La rivière coule lentement entre les saules pleureurs.',
  NULL,
  '{"mode":"text","acceptableAnswers":["adverbe","adverbe de maniere","adverbe de manière"]}'::jsonb,
  '« Lentement » est un adverbe de manière. Il modifie le verbe « coule » en précisant comment l''action se déroule. Les adverbes sont des mots invariables qui modifient le sens d''un verbe, d''un adjectif ou d''un autre adverbe. Beaucoup d''adverbes de manière se forment avec le suffixe « -ment ».',
  'Confondre l''adverbe avec l''adjectif « lent ». L''adverbe modifie un verbe (il coule lentement), tandis que l''adjectif qualifie un nom (un pas lent).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Identifier un pronom personnel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Intermediaire',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « leur » dans la phrase suivante ?',
  'L''enseignante leur distribue les cahiers chaque matin.',
  NULL,
  '{"mode":"text","acceptableAnswers":["pronom","pronom personnel","pronom personnel complement","pronom personnel complément"]}'::jsonb,
  '« Leur » est ici un pronom personnel complément d''objet indirect (COI) du verbe « distribue ». Il remplace un groupe nominal (par exemple « aux élèves »). Attention à ne pas confondre avec le déterminant possessif « leur » (leur cahier) : ici, « leur » est placé devant un verbe et est invariable.',
  'Confondre le pronom personnel « leur » (devant un verbe, invariable) avec le déterminant possessif « leur/leurs » (devant un nom, variable en nombre).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Identifier une préposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Intermediaire',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « dans » dans la phrase suivante ?',
  'Les enfants jouent dans la cour pendant la récréation.',
  NULL,
  '{"mode":"text","acceptableAnswers":["preposition","préposition"]}'::jsonb,
  '« Dans » est une préposition. C''est un mot invariable qui introduit un complément en établissant un rapport de sens (ici, un rapport de lieu) entre le verbe « jouent » et le groupe nominal « la cour ». Les prépositions les plus courantes sont : à, de, en, dans, par, pour, sur, avec, sans, sous, etc.',
  'Confondre la préposition « dans » avec un adverbe. « Dans » relie toujours un mot à son complément, contrairement à un adverbe qui modifie seul le sens d''un verbe.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Identifier un déterminant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Intermediaire',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « ces » dans la phrase suivante ?',
  'Ces monuments historiques témoignent de la richesse du patrimoine français.',
  NULL,
  '{"mode":"text","acceptableAnswers":["determinant","déterminant","determinant demonstratif","déterminant démonstratif","adjectif demonstratif","adjectif démonstratif"]}'::jsonb,
  '« Ces » est un déterminant démonstratif (anciennement appelé « adjectif démonstratif » dans la grammaire traditionnelle). Il précède le nom « monuments » et sert à désigner de manière précise les éléments dont on parle. Les déterminants démonstratifs sont : ce, cet, cette, ces.',
  'Confondre le déterminant démonstratif « ces » avec le pronom démonstratif « ceux ». Le déterminant accompagne toujours un nom, tandis que le pronom le remplace.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — Identifier une conjonction de subordination
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Avance',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « bien que » dans la phrase suivante ?',
  'Bien que la pluie tombât sans cesse, les randonneurs poursuivirent leur ascension.',
  NULL,
  '{"mode":"text","acceptableAnswers":["conjonction de subordination","conjonction","locution conjonctive","locution conjonctive de subordination"]}'::jsonb,
  '« Bien que » est une conjonction de subordination (plus précisément une locution conjonctive de subordination). Elle introduit une proposition subordonnée circonstancielle de concession. « Bien que » est toujours suivie du subjonctif. Les conjonctions de subordination relient une proposition subordonnée à la proposition principale.',
  'Confondre avec une conjonction de coordination. « Bien que » introduit une subordonnée (avec un verbe conjugué au subjonctif), alors qu''une conjonction de coordination (mais, ou, et, donc, or, ni, car) relie deux éléments de même niveau.',
  'valide', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — Identifier un pronom relatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Avance',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « dont » dans la phrase suivante ?',
  'Voici le roman dont l''auteur a reçu le prix Goncourt en 2023.',
  NULL,
  '{"mode":"text","acceptableAnswers":["pronom relatif","pronom"]}'::jsonb,
  '« Dont » est un pronom relatif. Il introduit la proposition subordonnée relative « dont l''auteur a reçu le prix Goncourt » et a pour antécédent « le roman ». « Dont » est le pronom relatif qui remplace un complément introduit par « de » : l''auteur de ce roman → dont l''auteur. Les pronoms relatifs simples sont : qui, que, quoi, dont, où.',
  'Confondre « dont » avec la conjonction « donc ». « Dont » est un pronom relatif qui reprend un antécédent, tandis que « donc » est une conjonction de coordination exprimant la conséquence.',
  'valide', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — Identifier un participe passé employé comme adjectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'analyse_identifier_nature',
  'Identifier la nature des mots',
  'Avance',
  'reponse_courte',
  'Quelle est la nature (classe grammaticale) du mot « fatigués » dans la phrase suivante ?',
  'Les voyageurs, fatigués par le long trajet, s''endormirent dès leur arrivée.',
  NULL,
  '{"mode":"text","acceptableAnswers":["adjectif","adjectif qualificatif","participe passe employe comme adjectif","participe passé employé comme adjectif","adjectif participe","adjectif participial"]}'::jsonb,
  '« Fatigués » est ici un adjectif qualificatif (participe passé employé comme adjectif). Il qualifie le nom « voyageurs » en apposition, détaché entre virgules. Bien qu''il soit issu du verbe « fatiguer », il fonctionne ici comme un adjectif car il caractérise un nom et s''accorde en genre et en nombre avec lui.',
  'Dire que c''est un verbe au participe passé. Dans cette phrase, « fatigués » n''est pas employé dans une forme verbale composée (pas d''auxiliaire) ; il fonctionne comme un adjectif qualificatif épithète détachée.',
  'valide', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Identifier le type de discours
-- Topic : comprehension_type_discours
-- UUID prefix : fa020000
-- Subdomain : comprehension_texte
-- 3 Facile, 4 Intermédiaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — Reconnaître un discours narratif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Facile',
  'reponse_courte',
  'Quel est le type de discours dominant dans cet extrait ?',
  'Ce matin-là, Marie quitta la maison à l''aube. Elle traversa le village encore endormi, longea le canal et s''arrêta devant la vieille école. Elle poussa la porte avec précaution.',
  NULL,
  '{"mode":"text","acceptableAnswers":["narratif","recit","récit","discours narratif","type narratif"]}'::jsonb,
  'Ce texte est de type narratif. Il raconte une suite d''actions accomplies par un personnage (Marie) dans un ordre chronologique. Les indices sont : les verbes d''action au passé simple (« quitta », « traversa », « longea », « s''arrêta », « poussa »), les compléments circonstanciels de temps et de lieu, et la progression temporelle.',
  'Confondre avec le type descriptif. Bien que le texte mentionne des lieux, il ne s''attarde pas à les décrire : il enchaîne les actions du personnage, ce qui est caractéristique du récit.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Reconnaître un discours descriptif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Facile',
  'reponse_courte',
  'Quel est le type de discours dominant dans cet extrait ?',
  'La salle de classe était vaste et lumineuse. De grandes fenêtres laissaient entrer la lumière du matin. Sur les murs crème, des affiches colorées représentaient les lettres de l''alphabet. Au fond, un coin bibliothèque accueillait de petits coussins bleus.',
  NULL,
  '{"mode":"text","acceptableAnswers":["descriptif","description","discours descriptif","type descriptif"]}'::jsonb,
  'Ce texte est de type descriptif. Il donne à voir un lieu (la salle de classe) en détaillant ses caractéristiques visuelles. Les indices sont : les verbes d''état à l''imparfait (« était »), les adjectifs qualificatifs nombreux (« vaste », « lumineuse », « colorées », « bleus »), l''organisation spatiale (« sur les murs », « au fond ») et l''absence de progression chronologique.',
  'Confondre avec le type narratif. Ici, aucune action ne fait avancer une intrigue : le texte « peint » un décor sans mouvement temporel.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Reconnaître un discours injonctif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Facile',
  'reponse_courte',
  'Quel est le type de discours dominant dans cet extrait ?',
  'Rangez vos affaires dans le casier. Sortez vos cahiers de mathématiques et ouvrez-les à la page 42. Écrivez la date en haut à droite, puis recopiez l''énoncé du problème.',
  NULL,
  '{"mode":"text","acceptableAnswers":["injonctif","prescriptif","discours injonctif","type injonctif"]}'::jsonb,
  'Ce texte est de type injonctif (ou prescriptif). Il donne des ordres et des consignes à suivre. Les indices sont : l''emploi de l''impératif présent (« rangez », « sortez », « ouvrez », « écrivez », « recopiez »), l''adresse directe au destinataire et la succession d''instructions à exécuter dans un ordre précis.',
  'Confondre avec le type explicatif. Le texte injonctif ordonne ou conseille une action, tandis que le texte explicatif cherche à faire comprendre un phénomène sans donner de consignes.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — Reconnaître un discours argumentatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Intermediaire',
  'reponse_courte',
  'Quel est le type de discours dominant dans cet extrait ?',
  'La lecture quotidienne devrait être au cœur de l''enseignement primaire. En effet, de nombreuses études montrent que les élèves qui lisent au moins vingt minutes par jour progressent significativement en vocabulaire et en compréhension. Il est donc essentiel d''aménager un temps de lecture libre chaque jour.',
  NULL,
  '{"mode":"text","acceptableAnswers":["argumentatif","argumentation","discours argumentatif","type argumentatif"]}'::jsonb,
  'Ce texte est de type argumentatif. L''auteur défend une thèse (la lecture quotidienne doit être centrale) en s''appuyant sur un argument (les études sur les progrès des élèves) et en formulant une conclusion (« il est donc essentiel »). Les connecteurs logiques « en effet » et « donc » structurent le raisonnement.',
  'Confondre avec le type explicatif. Le texte argumentatif cherche à convaincre le lecteur d''adopter un point de vue, alors que le texte explicatif reste neutre et vise à faire comprendre.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Reconnaître un discours explicatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Intermediaire',
  'reponse_courte',
  'Quel est le type de discours dominant dans cet extrait ?',
  'Le cycle de l''eau se décompose en plusieurs étapes. L''eau des océans s''évapore sous l''effet de la chaleur solaire. La vapeur d''eau s''élève dans l''atmosphère, se refroidit et se condense pour former des nuages. Les précipitations ramènent ensuite l''eau vers le sol.',
  NULL,
  '{"mode":"text","acceptableAnswers":["explicatif","explication","discours explicatif","type explicatif","informatif"]}'::jsonb,
  'Ce texte est de type explicatif. Il vise à faire comprendre un phénomène naturel (le cycle de l''eau) en décrivant ses mécanismes de manière objective et ordonnée. Les indices sont : le ton neutre, le vocabulaire scientifique, le présent de vérité générale et l''organisation logique en étapes successives.',
  'Confondre avec le type descriptif. Le texte explicatif répond à la question « comment ça marche ? » en présentant un processus, tandis que le texte descriptif répond à « à quoi ça ressemble ? ».',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Identifier une comparaison
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Intermediaire',
  'reponse_courte',
  'Identifiez la figure de style utilisée dans la phrase suivante.',
  'Ses yeux brillaient comme deux étoiles dans la nuit d''encre.',
  NULL,
  '{"mode":"text","acceptableAnswers":["comparaison","une comparaison","figure de comparaison"]}'::jsonb,
  'Il s''agit d''une comparaison. Cette figure de style rapproche deux éléments (les yeux et les étoiles) au moyen d''un outil de comparaison explicite : « comme ». La comparaison comporte toujours un comparé (les yeux), un comparant (deux étoiles) et un mot-outil (comme, tel que, semblable à, pareil à…).',
  'Confondre avec la métaphore. La métaphore effectue un rapprochement sans mot-outil de comparaison. Ici, la présence de « comme » signale clairement une comparaison.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Identifier une métaphore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Intermediaire',
  'reponse_courte',
  'Identifiez la figure de style utilisée dans la phrase suivante.',
  'Ce professeur est un phare pour ses élèves, il éclaire leur chemin vers la connaissance.',
  NULL,
  '{"mode":"text","acceptableAnswers":["metaphore","métaphore","une metaphore","une métaphore","metaphore filee","métaphore filée"]}'::jsonb,
  'Il s''agit d''une métaphore (filée). Le professeur est directement assimilé à un « phare » sans outil de comparaison (pas de « comme » ou « tel »). L''image se prolonge avec « éclaire » et « chemin », ce qui en fait une métaphore filée. La métaphore est une figure d''analogie qui identifie un élément à un autre pour en souligner une qualité.',
  'Confondre avec la comparaison. La métaphore n''utilise pas de mot-outil comparatif : le comparé (le professeur) est directement identifié au comparant (un phare).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — Identifier une personnification
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Avance',
  'reponse_courte',
  'Identifiez la figure de style dominante dans cet extrait.',
  'Le vent hurlait sa colère contre les volets. La pluie frappait les carreaux avec rage, et les arbres se tordaient de douleur sous l''assaut de la tempête.',
  NULL,
  '{"mode":"text","acceptableAnswers":["personnification","une personnification"]}'::jsonb,
  'Il s''agit d''une personnification. Des éléments naturels (le vent, la pluie, les arbres) se voient attribuer des comportements et des sentiments humains : « hurlait sa colère », « frappait avec rage », « se tordaient de douleur ». La personnification consiste à prêter des caractéristiques humaines à un animal, un objet ou une abstraction.',
  'Confondre avec la métaphore. Bien que la personnification soit une forme de métaphore, elle se distingue par le fait qu''elle attribue spécifiquement des traits humains à des éléments non humains.',
  'valide', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — Identifier une hyperbole
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Avance',
  'reponse_courte',
  'Identifiez la figure de style utilisée dans la phrase suivante.',
  'Je vous l''ai répété mille fois : cette dictée doit être préparée la veille, pas le matin même !',
  NULL,
  '{"mode":"text","acceptableAnswers":["hyperbole","une hyperbole","exageration","exagération"]}'::jsonb,
  'Il s''agit d''une hyperbole. L''expression « mille fois » est une exagération manifeste qui amplifie la réalité pour produire un effet d''insistance. L''hyperbole consiste à exagérer une idée pour la mettre en relief. Elle est fréquente dans le langage courant (« mourir de faim », « attendre une éternité ») comme dans le discours littéraire.',
  'Prendre l''expression au sens littéral. « Mille fois » ne signifie pas un nombre exact mais constitue une amplification rhétorique destinée à marquer l''agacement du locuteur.',
  'valide', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — Distinguer discours narratif et descriptif mêlés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-00000000000a',
  'Francais',
  'comprehension_texte',
  'comprehension_type_discours',
  'Identifier le type de discours',
  'Avance',
  'reponse_courte',
  'Quel est le type de discours dominant dans cet extrait ?',
  'Il est indéniable que l''enseignement de la grammaire doit évoluer. D''une part, les recherches en linguistique ont renouvelé notre compréhension du fonctionnement de la langue. D''autre part, les pratiques de classe doivent s''adapter aux profils variés des élèves. On ne saurait donc continuer à enseigner la grammaire comme on le faisait il y a cinquante ans.',
  NULL,
  '{"mode":"text","acceptableAnswers":["argumentatif","argumentation","discours argumentatif","type argumentatif"]}'::jsonb,
  'Ce texte est de type argumentatif. L''auteur soutient une thèse (la grammaire doit évoluer) en la justifiant par deux arguments structurés (« d''une part… d''autre part ») et en concluant par « on ne saurait donc ». Le registre didactique et les connecteurs logiques (« il est indéniable que », « donc ») renforcent la visée persuasive du texte.',
  'Confondre avec le type explicatif parce que le texte parle de pédagogie. Le critère distinctif est l''intention : ici, l''auteur cherche à convaincre (« il est indéniable », « on ne saurait »), pas simplement à informer.',
  'valide', 'premium', true
) ON CONFLICT (id) DO NOTHING;
