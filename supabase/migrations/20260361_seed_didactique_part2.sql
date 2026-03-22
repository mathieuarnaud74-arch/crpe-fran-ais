-- ============================================================
-- Migration : 7 séries Didactique du français (Part 2: séries 5-7)
-- 3 séries × 10 questions = 30 exercices
-- UUID prefix : d505–d507
-- ============================================================


-- ************************************************************
-- SÉRIE 5 : L''étude de la langue aux cycles 2 et 3
-- topic_key = did_etude_langue_cycles
-- ************************************************************

-- Q1 — Facile — qcm — Progression spiralaire en étude de la langue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Facile',
  'qcm',
  'Qu''est-ce que la progression spiralaire en étude de la langue, telle que préconisée par les programmes 2020 ?',
  NULL,
  '[{"id":"a","label":"Un enseignement linéaire où chaque notion n''est vue qu''une seule fois"},{"id":"b","label":"Un retour régulier sur les mêmes notions avec un niveau d''approfondissement croissant"},{"id":"c","label":"Un enseignement centré uniquement sur l''orthographe lexicale"},{"id":"d","label":"Une progression qui suit strictement l''ordre alphabétique des règles grammaticales"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La progression spiralaire consiste à revenir régulièrement sur les mêmes notions linguistiques en augmentant progressivement le degré de complexité et d''approfondissement. Les programmes 2020 insistent sur cette approche pour permettre aux élèves de consolider leurs acquis avant d''aller plus loin. Par exemple, la notion de sujet est abordée dès le CE1 avec des cas simples (GN sujet + verbe), puis enrichie au CE2 et au CM avec le sujet inversé, le sujet éloigné du verbe, etc. Cette spirale favorise la mémorisation à long terme et la structuration progressive des savoirs grammaticaux.',
  'Les candidats confondent souvent progression spiralaire et progression linéaire. Une progression linéaire traite chaque notion une fois puis passe à la suivante, tandis que la spirale implique des retours successifs avec approfondissement.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — vrai_faux — Attendus de fin de cycle 2 en orthographe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : selon les attendus de fin de cycle 2 (programmes 2020), les élèves doivent maîtriser l''accord du participe passé employé avec l''auxiliaire avoir.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''accord du participe passé employé avec l''auxiliaire avoir n''est pas un attendu de fin de cycle 2. Cette règle complexe relève du cycle 3, et plus précisément du CM2 voire de la 6e. En fin de cycle 2, les attendus portent sur l''accord sujet-verbe, l''accord dans le groupe nominal (déterminant-nom-adjectif) et l''orthographe des mots les plus fréquents. Les programmes 2020 insistent sur une progression réaliste qui ne surcharge pas les élèves avec des règles dont ils ne maîtrisent pas encore les prérequis.',
  'Beaucoup de candidats surestiment les attendus de fin de cycle 2 en y incluant des notions qui relèvent du cycle 3, comme l''accord du participe passé avec avoir ou la maîtrise du passé simple.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Difficile — reponse_courte — Forme de dictée négociée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on la forme de dictée où les élèves confrontent leurs graphies en petits groupes et argumentent leurs choix orthographiques avant la correction collective ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["dictée négociée","la dictée négociée","dictee negociee","dictée argumentée"]}'::jsonb,
  'La dictée négociée (parfois appelée dictée argumentée) est un dispositif didactique où, après une première écriture individuelle, les élèves se regroupent pour comparer leurs propositions et débattre de la graphie correcte. Ils doivent mobiliser leurs connaissances grammaticales et orthographiques pour justifier leurs choix. Ce dispositif développe la posture métalinguistique : l''élève passe du statut de « scripteur » à celui de « réviseur » qui explicite les règles. Éduscol recommande cette pratique comme un levier puissant pour l''enseignement explicite de l''orthographe.',
  'Les candidats confondent fréquemment la dictée négociée avec la dictée dialoguée (où c''est l''enseignant qui dialogue avec la classe) ou la dictée frigo (où la correction est différée).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — qcm — Place de l'orthographe dans l'étude de la langue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Facile',
  'qcm',
  'Dans les programmes 2020, quel est le rôle principal attribué à l''étude de la langue vis-à-vis de la lecture et de l''écriture ?',
  NULL,
  '[{"id":"a","label":"L''étude de la langue est une discipline autonome sans lien avec la lecture et l''écriture"},{"id":"b","label":"L''étude de la langue est au service de la compréhension en lecture et de l''amélioration de l''expression écrite"},{"id":"c","label":"L''étude de la langue ne concerne que l''oral et la compréhension orale"},{"id":"d","label":"L''étude de la langue sert uniquement à préparer l''apprentissage des langues vivantes étrangères"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes 2020 positionnent explicitement l''étude de la langue comme un outil au service de la lecture et de l''écriture. La grammaire, le vocabulaire et l''orthographe ne sont pas enseignés pour eux-mêmes mais pour permettre aux élèves de mieux comprendre les textes qu''ils lisent et de produire des écrits de meilleure qualité. Cette articulation est fondamentale : les séances d''étude de la langue doivent s''ancrer dans des situations de lecture et d''écriture effectives. Le lien entre ces trois domaines est un principe structurant du programme de français.',
  'Les candidats ont parfois tendance à considérer l''étude de la langue comme un domaine cloisonné, en oubliant que les programmes insistent sur son caractère fonctionnel et intégré à la lecture-écriture.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — La copie comme outil d'apprentissage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la copie est considérée par les programmes comme un simple exercice de calligraphie, sans lien avec l''apprentissage de l''orthographe.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. La copie est bien davantage qu''un exercice de calligraphie. Les programmes 2020 et les ressources Éduscol la présentent comme un véritable outil d''apprentissage orthographique. Lors de la copie, l''élève mémorise des segments de mots ou de phrases, ce qui sollicite l''attention orthographique et la mémoire de travail. La « copie active » (ou « copie différée ») encourage l''élève à photographier mentalement un segment avant de l''écrire sans regarder le modèle, favorisant ainsi la mémorisation des régularités orthographiques. C''est un exercice quotidien recommandé du CP au CM2.',
  'Les candidats sous-estiment souvent la valeur didactique de la copie en la réduisant à un travail de motricité fine. Les programmes la présentent comme un outil pluriel : apprentissage du geste graphique, mémorisation orthographique et structuration syntaxique.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Difficile — reponse_courte — Dictée frigo
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Difficile',
  'reponse_courte',
  'Comment s''appelle la forme de dictée où le texte dicté est « mis au frigo » (mis de côté) et n''est corrigé qu''après un temps différé, permettant à l''élève de revenir sur sa production avec un regard neuf ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["dictée frigo","la dictée frigo","dictee frigo"]}'::jsonb,
  'La dictée frigo est un dispositif didactique inventé par les praticiens pour différer la correction. Le texte dicté est « mis au frigo » (rangé sans correction immédiate) puis repris ultérieurement, souvent après un travail ciblé sur les points orthographiques en jeu. L''élève peut ainsi mobiliser les apprentissages réalisés entre-temps pour améliorer sa production initiale. Ce dispositif favorise la posture réflexive et la révision, compétences essentielles en production d''écrits. Il s''inscrit dans la logique des programmes qui préconisent de varier les formes de dictée.',
  'Les candidats confondent souvent la dictée frigo avec la dictée dialoguée. La spécificité de la dictée frigo est le temps différé avant correction, tandis que la dictée dialoguée implique un échange en temps réel avec l''enseignant.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Facile — qcm — Régularités orthographiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Facile',
  'qcm',
  'Quel principe didactique les programmes recommandent-ils pour enseigner l''orthographe lexicale aux cycles 2 et 3 ?',
  NULL,
  '[{"id":"a","label":"Faire mémoriser les mots un par un, sans chercher de régularités"},{"id":"b","label":"Partir des régularités orthographiques pour construire des familles de mots et des analogies"},{"id":"c","label":"N''enseigner que les mots irréguliers car les réguliers s''apprennent seuls"},{"id":"d","label":"Reporter l''enseignement de l''orthographe lexicale au cycle 3 exclusivement"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes 2020 et les ressources Éduscol insistent sur l''importance de faire observer et expliciter les régularités orthographiques (morphogrammes, familles de mots, analogies). Plutôt que de faire mémoriser les mots isolément, l''enseignant guide les élèves vers la découverte de régularités : par exemple, les mots en -tion, les préfixes in-/im-, les familles lexicales (terre, terrain, terrasse, enterrer). Cette approche s''appuie sur les travaux de Michel Fayol et permet une mémorisation plus efficace car elle donne du sens à l''orthographe.',
  'Les candidats pensent parfois que l''orthographe lexicale s''enseigne principalement par la mémorisation de listes de mots sans lien entre eux. Les programmes insistent au contraire sur les régularités et la morphologie.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — vrai_faux — Dictée dialoguée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans la dictée dialoguée, l''enseignant interrompt la dictée pour répondre aux questions des élèves sur les choix orthographiques, sans donner directement la réponse.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. La dictée dialoguée (ou dictée à l''adulte dans sa forme orale) est un dispositif où l''enseignant accepte les questions des élèves pendant la dictée. L''enseignant ne donne pas la bonne graphie directement mais renvoie l''élève aux outils disponibles (affiches, cahier de leçons, analogies) et aux raisonnements grammaticaux. Ce dialogue favorise la construction d''une posture réflexive chez l''élève. Il apprend à se poser les bonnes questions (« Est-ce un verbe ? Quel est le sujet ? ») plutôt qu''à attendre passivement la correction.',
  'Les candidats confondent la dictée dialoguée avec la dictée négociée. Dans la dictée dialoguée, le dialogue se fait entre l''enseignant et les élèves ; dans la dictée négociée, ce sont les élèves qui débattent entre eux.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — qcm — Transposition didactique en grammaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Difficile',
  'qcm',
  'Selon les recommandations Éduscol, quelle démarche didactique est privilégiée pour l''enseignement de la grammaire aux cycles 2 et 3 ?',
  NULL,
  '[{"id":"a","label":"La démarche transmissive : énoncer la règle puis l''appliquer dans des exercices"},{"id":"b","label":"La démarche inductive : observer un corpus, manipuler, dégager une régularité, puis institutionnaliser"},{"id":"c","label":"La démarche behavioriste : répéter des exercices jusqu''à automatisation sans explicitation"},{"id":"d","label":"La démarche par immersion : laisser l''élève découvrir seul les règles par la lecture libre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Éduscol préconise une démarche inductive pour l''enseignement de la grammaire, structurée en quatre temps : observation d''un corpus de phrases, manipulation (tri, classement, substitution, déplacement, suppression), formulation d''une régularité par les élèves, et institutionnalisation par l''enseignant. Cette démarche s''inspire des travaux de Chartrand et de la « grammaire par l''observation réfléchie de la langue ». Elle place l''élève en posture active de chercheur et développe le raisonnement grammatical, contrairement à une démarche purement transmissive où l''élève applique mécaniquement des règles données.',
  'Les candidats citent parfois la « leçon de grammaire traditionnelle » (règle → exemples → exercices) comme démarche de référence. Or les programmes privilégient clairement la démarche inductive : corpus → observation → manipulation → institutionnalisation.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — reponse_courte — Manipulations syntaxiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5050000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'did_etude_langue_cycles',
  'L''étude de la langue aux cycles 2 et 3',
  'Intermediaire',
  'reponse_courte',
  'Citez deux des quatre manipulations syntaxiques fondamentales utilisées en grammaire pour identifier les classes et fonctions grammaticales (selon les programmes et Éduscol).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["substitution et déplacement","déplacement et suppression","suppression et substitution","substitution et suppression","déplacement et substitution","suppression et déplacement","substitution et ajout","déplacement et ajout","suppression et ajout","ajout et substitution","ajout et déplacement","ajout et suppression"]}'::jsonb,
  'Les quatre manipulations syntaxiques fondamentales préconisées par les programmes et Éduscol sont : la substitution (remplacer un mot ou groupe par un autre), le déplacement (changer la place d''un groupe dans la phrase), la suppression (effacer un mot ou groupe pour tester s''il est essentiel) et l''ajout (ou expansion : ajouter un élément). Ces opérations permettent aux élèves d''identifier les classes grammaticales et les fonctions sans recourir uniquement à des questions sémantiques (« qui fait l''action ? »). Elles constituent les outils de base du raisonnement grammatical dès le cycle 2.',
  'Les candidats oublient souvent l''ajout (expansion) parmi les manipulations syntaxiques et se limitent à la substitution. Par ailleurs, ils confondent parfois « manipulation syntaxique » et « question sémantique » (qui ? quoi ? où ?).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ************************************************************
-- SÉRIE 6 : Littérature de jeunesse et mise en réseau
-- topic_key = did_litterature_jeunesse
-- ************************************************************

-- Q1 — Facile — qcm — Listes de référence MEN
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Facile',
  'qcm',
  'Quel est l''objectif principal des listes de référence d''ouvrages de littérature de jeunesse publiées par le ministère de l''Éducation nationale ?',
  NULL,
  '[{"id":"a","label":"Imposer des lectures obligatoires identiques dans toutes les classes de France"},{"id":"b","label":"Proposer un répertoire d''œuvres de qualité pour aider les enseignants à constituer une culture littéraire commune"},{"id":"c","label":"Interdire l''usage d''ouvrages ne figurant pas sur la liste"},{"id":"d","label":"Remplacer le choix de l''enseignant par une programmation nationale unique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les listes de référence publiées par le MEN (actualisées régulièrement, la dernière datant de 2018 pour le cycle 3) ont pour objectif de proposer un répertoire d''œuvres littéraires de qualité, variées en genres et en époques, pour aider les enseignants à construire une culture littéraire commune chez les élèves. Elles ne sont pas prescriptives au sens strict : l''enseignant reste libre de ses choix, mais ces listes constituent un outil de référence pour garantir la diversité et la qualité des lectures proposées. Elles distinguent les œuvres patrimoniales et les œuvres contemporaines.',
  'Les candidats pensent souvent que les listes de référence sont obligatoires et imposent des lectures précises. En réalité, elles sont indicatives et visent à guider le choix de l''enseignant, pas à le contraindre.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — vrai_faux — Mise en réseau de textes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la mise en réseau de textes consiste uniquement à regrouper des ouvrages du même auteur.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. La mise en réseau est un dispositif didactique qui consiste à rapprocher des textes selon des critères variés : même thème, même genre, même personnage-type (archétype), même procédé narratif, même auteur, intertextualité, adaptation d''un même conte, etc. L''objectif est de permettre aux élèves de construire des compétences interprétatives en repérant des échos, des constantes et des variations entre les textes. Éduscol recommande la mise en réseau comme un levier essentiel de la formation du lecteur : elle développe la culture littéraire et la capacité à faire des liens entre les œuvres.',
  'Les candidats réduisent souvent la mise en réseau à un seul critère (même auteur ou même thème). La richesse du dispositif réside justement dans la diversité des entrées possibles : genre, personnage, procédé narratif, intertextualité.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Difficile — reponse_courte — Débat interprétatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on le dispositif oral en littérature où les élèves confrontent leurs interprétations d''un texte littéraire en s''appuyant sur des indices textuels pour valider ou invalider leurs hypothèses de lecture ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["débat interprétatif","le débat interprétatif","debat interpretatif","débat littéraire","le débat littéraire"]}'::jsonb,
  'Le débat interprétatif est un dispositif didactique central dans l''enseignement de la littérature à l''école. Il consiste à organiser une discussion entre élèves autour des zones d''ombre, des implicites ou des ambiguïtés d''un texte littéraire. Les élèves formulent des hypothèses d''interprétation et doivent les justifier en s''appuyant sur des indices textuels précis. Ce dispositif, recommandé par Éduscol et théorisé notamment par Catherine Tauveron, développe les compétences de lecteur interprète et distingue la compréhension littérale de l''interprétation. Il suppose un texte « résistant », c''est-à-dire offrant une pluralité d''interprétations possibles.',
  'Les candidats confondent souvent le débat interprétatif avec un simple échange d''opinions personnelles. La spécificité du débat interprétatif est l''obligation de s''appuyer sur le texte : toute interprétation doit être étayée par des indices textuels.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — qcm — Le carnet de lecteur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Facile',
  'qcm',
  'Quel est le rôle principal du carnet de lecteur dans l''enseignement de la littérature à l''école primaire ?',
  NULL,
  '[{"id":"a","label":"Évaluer la compréhension littérale des élèves par des questionnaires"},{"id":"b","label":"Permettre à l''élève de garder une trace personnelle de ses lectures, réactions et interprétations"},{"id":"c","label":"Remplacer les fiches de lecture traditionnelles par un cahier de résumés"},{"id":"d","label":"Servir de support de dictée pour l''orthographe des titres d''ouvrages"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le carnet de lecteur est un outil personnel dans lequel l''élève consigne ses impressions, ses réactions, ses dessins, ses citations préférées, ses hypothèses de lecture et ses interprétations au fil de ses lectures. Il ne s''agit pas d''un questionnaire de compréhension mais d''un espace de liberté qui accompagne la construction d''une identité de lecteur. Éduscol le recommande comme un support favorisant l''engagement personnel dans la lecture et la mémoire des œuvres lues. Il peut être partagé lors de cercles de lecture ou de débats interprétatifs.',
  'Les candidats réduisent souvent le carnet de lecteur à un simple cahier de résumés ou de fiches de lecture. Sa véritable fonction est de développer une relation personnelle et réflexive à la lecture, au-delà de la seule compréhension.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Littérature patrimoniale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : les programmes de cycle 3 demandent que les élèves fréquentent exclusivement des œuvres de littérature patrimoniale (classiques), à l''exclusion de la littérature de jeunesse contemporaine.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. Les programmes de cycle 3 demandent un équilibre entre littérature patrimoniale et littérature de jeunesse contemporaine. Les œuvres patrimoniales (contes de Perrault, fables de La Fontaine, extraits de romans classiques) permettent de construire une culture commune et de découvrir l''héritage littéraire. Les œuvres contemporaines offrent des univers plus proches des préoccupations des élèves et présentent des formes narratives innovantes (album complexe, roman graphique). Les listes de référence MEN reflètent cette double exigence en proposant les deux types d''œuvres.',
  'Les candidats opposent parfois littérature patrimoniale et littérature de jeunesse contemporaine comme si l''une excluait l''autre. Les programmes recommandent au contraire leur complémentarité pour former un lecteur cultivé et engagé.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Difficile — reponse_courte — Lecture cursive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on le mode de lecture personnelle et continue d''une œuvre intégrale, réalisée de manière autonome par l''élève (souvent à la maison ou en temps libre), par opposition à la lecture analytique menée collectivement en classe ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["lecture cursive","la lecture cursive","lecture autonome","la lecture autonome"]}'::jsonb,
  'La lecture cursive désigne la lecture personnelle, continue et autonome d''une œuvre intégrale. Contrairement à la lecture analytique (ou étude d''œuvre), qui est menée collectivement en classe avec des arrêts, des analyses et des activités de compréhension, la lecture cursive laisse l''élève lire à son rythme, pour le plaisir et l''appropriation personnelle. Les programmes de cycle 3 recommandent d''articuler ces deux modalités : la lecture analytique pour développer des compétences fines d''interprétation et la lecture cursive pour développer le goût de lire et l''endurance en lecture.',
  'Les candidats confondent lecture cursive et lecture rapide. La lecture cursive n''est pas une question de vitesse mais de modalité : il s''agit d''une lecture continue, personnelle et autonome, qui peut se faire à un rythme variable selon le lecteur.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Facile — qcm — Genres littéraires jeunesse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Facile',
  'qcm',
  'Parmi les genres suivants, lequel est spécifiquement reconnu dans les listes de référence MEN comme un genre à part entière de la littérature de jeunesse, au même titre que le roman ou le conte ?',
  NULL,
  '[{"id":"a","label":"Le manuel scolaire"},{"id":"b","label":"L''album"},{"id":"c","label":"Le dictionnaire illustré"},{"id":"d","label":"Le cahier d''activités"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''album est un genre littéraire à part entière, reconnu par les listes de référence MEN. Il se caractérise par l''articulation texte-image, où l''illustration n''est pas un simple accompagnement mais participe pleinement à la construction du sens. Les albums peuvent être d''une grande complexité narrative (albums sans texte, albums à double narration texte/image, albums métafictionnels) et sont présents dans les listes de référence de tous les cycles. Les travaux de Sophie Van der Linden ont contribué à théoriser l''album comme objet littéraire complexe.',
  'Les candidats sous-estiment parfois la complexité de l''album en le considérant comme un support réservé aux petits. Or les listes de référence proposent des albums jusqu''au cycle 3, certains étant d''une grande richesse interprétative.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — Parcours de lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Intermediaire',
  'qcm',
  'Dans la construction d''un parcours de lecture au cycle 3, quel principe didactique est fondamental selon les programmes ?',
  NULL,
  '[{"id":"a","label":"Lire uniquement des œuvres courtes pour maintenir la motivation des élèves"},{"id":"b","label":"Alterner les genres, les époques et les niveaux de difficulté pour construire une culture littéraire diversifiée"},{"id":"c","label":"Se concentrer sur un seul genre littéraire par année scolaire"},{"id":"d","label":"Laisser les élèves choisir librement toutes leurs lectures sans guidage de l''enseignant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes de cycle 3 recommandent de construire des parcours de lecture diversifiés qui alternent les genres (roman, conte, album, poésie, théâtre, BD), les époques (patrimoine et contemporain) et les niveaux de difficulté. L''objectif est de former un lecteur polyvalent capable de naviguer entre différents types de textes littéraires. Le parcours de lecture est pensé sur l''ensemble du cycle, en cohérence avec les autres enseignements de français. L''enseignant doit programmer ses lectures en veillant à l''équilibre et à la progressivité.',
  'Les candidats proposent parfois des parcours de lecture centrés sur un seul genre ou une seule thématique. Les programmes insistent sur la diversité comme condition de la construction d''une véritable culture littéraire.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Texte résistant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : selon Catherine Tauveron, un « texte résistant » est un texte trop difficile pour les élèves de l''école primaire et qui devrait être réservé au collège.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. Selon Catherine Tauveron, un texte résistant n''est pas un texte « trop difficile » mais un texte qui pose des problèmes de compréhension ou d''interprétation volontaires : ellipses narratives, points de vue ambigus, fins ouvertes, implicites, stéréotypes détournés. Ces textes sont précisément ceux qui permettent de former de véritables lecteurs interprètes dès l''école primaire. Tauveron distingue les textes « réticents » (qui retiennent l''information) et les textes « proliférants » (qui offrent une pluralité d''interprétations). C''est sur ces textes que le débat interprétatif prend tout son sens.',
  'Les candidats confondent souvent « résistant » et « trop difficile ». Un texte résistant est au contraire un texte accessible à condition d''un étayage adapté, et c''est justement sa résistance qui en fait un objet d''apprentissage riche.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Catherine Tauveron
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5060000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'did_litterature_jeunesse',
  'Littérature de jeunesse et mise en réseau',
  'Difficile',
  'reponse_courte',
  'Quelle chercheuse en didactique de la littérature a théorisé la notion de « textes résistants » (réticents et proliférants) et les dispositifs de débat interprétatif à l''école primaire ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Catherine Tauveron","Tauveron","C. Tauveron","catherine tauveron"]}'::jsonb,
  'Catherine Tauveron est une chercheuse en didactique du français qui a profondément influencé l''enseignement de la littérature à l''école primaire. Ses travaux, notamment « Lire la littérature à l''école » (2002), ont introduit des concepts clés : la distinction entre compréhension et interprétation, la notion de textes résistants (réticents/proliférants), le sujet lecteur, et le débat interprétatif comme dispositif didactique. Ses recherches ont nourri les programmes de 2002 et continuent d''influencer les recommandations Éduscol actuelles sur l''enseignement de la compréhension et de la littérature.',
  'Les candidats attribuent parfois les travaux sur les textes résistants à d''autres chercheurs ou ne connaissent pas le nom de Catherine Tauveron. C''est pourtant une référence incontournable au CRPE pour toute question relative à la didactique de la littérature à l''école.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ************************************************************
-- SÉRIE 7 : Fluence et automatisation en lecture
-- topic_key = did_fluence_lecture
-- ************************************************************

-- Q1 — Facile — qcm — Définition de la fluence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Facile',
  'qcm',
  'Quels sont les trois composantes de la fluence en lecture ?',
  NULL,
  '[{"id":"a","label":"Vitesse, vocabulaire et grammaire"},{"id":"b","label":"Vitesse, précision et prosodie (expressivité)"},{"id":"c","label":"Décodage, encodage et copie"},{"id":"d","label":"Compréhension, interprétation et mémorisation"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La fluence en lecture se définit par trois composantes indissociables : la vitesse (nombre de mots lus correctement par minute), la précision (absence d''erreurs de décodage) et la prosodie (expressivité, respect de la ponctuation, intonation). Un lecteur fluent lit avec aisance, sans erreurs et de manière expressive. Les évaluations nationales mesurent principalement la vitesse et la précision, mais la prosodie est également un indicateur important de la qualité de la lecture. La fluence est un objectif majeur des programmes 2020 car elle conditionne l''accès à la compréhension.',
  'Les candidats oublient fréquemment la prosodie en ne citant que la vitesse et la précision. Or la prosodie est essentielle car elle témoigne de la compréhension en temps réel : un lecteur qui respecte la ponctuation et l''intonation montre qu''il comprend ce qu''il lit.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — vrai_faux — Automatisation et compréhension
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : l''automatisation du décodage libère des ressources cognitives (mémoire de travail) qui peuvent alors être allouées à la compréhension du texte.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. C''est un principe fondamental de la psychologie cognitive de la lecture. La mémoire de travail a une capacité limitée. Chez un lecteur débutant, le décodage mobilise la quasi-totalité de ces ressources, laissant peu de place à la compréhension. À mesure que le décodage s''automatise (reconnaissance rapide et sans effort des mots), des ressources cognitives se libèrent pour le traitement du sens : inférences, mise en relation, construction d''une représentation mentale du texte. C''est pourquoi les programmes insistent autant sur la fluence : elle est la condition nécessaire (mais non suffisante) de la compréhension.',
  'Les candidats opposent parfois décodage et compréhension comme si travailler la fluence se faisait au détriment du sens. En réalité, l''automatisation du décodage est au service de la compréhension, pas en concurrence avec elle.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Difficile — reponse_courte — Modèle simple de la lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Difficile',
  'reponse_courte',
  'Selon le modèle simple de la lecture (Simple View of Reading) de Gough et Tunmer, la compréhension en lecture est le produit de quelles deux composantes ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["décodage et compréhension orale","le décodage et la compréhension orale","décodage × compréhension orale","décodage x compréhension orale","identification des mots et compréhension orale","reconnaissance des mots et compréhension orale"]}'::jsonb,
  'Le modèle simple de la lecture (Simple View of Reading), proposé par Gough et Tunmer en 1986, formalise la lecture comme le produit de deux composantes : L = D × C (Lecture = Décodage × Compréhension orale). Le décodage (D) correspond à la capacité à identifier les mots écrits, et la compréhension orale (C) correspond à la capacité à comprendre le langage oral. Le signe « × » (multiplication) signifie que si l''une des deux composantes est nulle, la compréhension en lecture est nulle. Ce modèle, bien que simplifié, est une référence dans les programmes et les évaluations nationales.',
  'Les candidats citent parfois « décodage et compréhension » sans préciser « compréhension orale ». La distinction est essentielle : le modèle stipule que la compréhension orale (et non la compréhension en lecture elle-même) est le second facteur.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — qcm — Activités de fluence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Facile',
  'qcm',
  'Quelle activité est la plus efficace pour développer la fluence en lecture chez les élèves de cycle 2, selon les recherches et les recommandations Éduscol ?',
  NULL,
  '[{"id":"a","label":"La lecture silencieuse libre sans objectif précis"},{"id":"b","label":"La lecture répétée d''un même texte court avec chronométrage et feedback"},{"id":"c","label":"La copie de textes longs pour automatiser l''orthographe"},{"id":"d","label":"L''écoute passive de textes lus par l''enseignant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La lecture répétée (repeated reading) est l''activité la plus validée par la recherche pour développer la fluence. Elle consiste à faire relire un même texte court plusieurs fois avec un objectif d''amélioration mesurable (chronométrage, nombre d''erreurs). L''élève constate ses progrès, ce qui renforce sa motivation. Les travaux de Samuels (1979) ont montré que la lecture répétée améliore non seulement la vitesse et la précision sur le texte entraîné, mais produit aussi un effet de transfert sur la lecture de textes nouveaux. Éduscol recommande des séances courtes et régulières (10-15 minutes) de lecture à voix haute.',
  'Les candidats pensent parfois que la lecture silencieuse libre suffit à développer la fluence. Or la recherche montre que c''est la lecture à voix haute avec feedback et répétition qui est la plus efficace, surtout pour les lecteurs en difficulté.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — vrai_faux — Évaluation de la fluence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : les évaluations nationales de CP et CE1 incluent une épreuve de fluence mesurant le nombre de mots correctement lus en une minute.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Depuis 2018, les évaluations nationales de début de CP, mi-CP, début de CE1 et début de 6e incluent des épreuves de fluence. L''indicateur principal est le MCLM (Mots Correctement Lus par Minute). Les repères nationaux donnent des seuils attendus : environ 50 MCLM en fin de CP, 70 MCLM en fin de CE1, et 120 MCLM en fin de CM2. Ces évaluations permettent un repérage précoce des élèves en difficulté de décodage et orientent les dispositifs de remédiation. L''épreuve ELFE (Évaluation de la Lecture en Fluence) est également utilisée comme outil complémentaire.',
  'Les candidats ne connaissent pas toujours les seuils de référence en MCLM. Connaître ces ordres de grandeur est important pour le CRPE car cela montre une maîtrise des outils d''évaluation institutionnels.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Difficile — reponse_courte — MCLM
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Difficile',
  'reponse_courte',
  'Quel sigle désigne l''unité de mesure standard de la fluence en lecture, utilisée dans les évaluations nationales ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["MCLM","M.C.L.M.","mots correctement lus par minute"]}'::jsonb,
  'MCLM signifie « Mots Correctement Lus par Minute ». C''est l''indicateur de référence pour mesurer la fluence en lecture dans les évaluations nationales et dans les outils comme ELFE ou les tests de fluence Éduscol. Le MCLM se calcule en faisant lire un texte à l''élève pendant une minute et en comptant le nombre de mots lus correctement (on soustrait les erreurs). Les repères institutionnels sont d''environ 50 MCLM en fin de CP et 120 MCLM en fin de CM2. Ce score est un prédicteur fiable de la compréhension en lecture : en dessous de certains seuils, la compréhension est significativement compromise.',
  'Les candidats confondent parfois MCLM avec le nombre total de mots lus (incluant les erreurs). Le « C » de « Correctement » est essentiel : seuls les mots lus sans erreur de décodage sont comptabilisés.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Facile — qcm — Théâtralisation et fluence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Facile',
  'qcm',
  'Pourquoi la théâtralisation (mise en voix de textes, lecture expressive) est-elle un levier pertinent pour travailler la fluence ?',
  NULL,
  '[{"id":"a","label":"Parce qu''elle permet de travailler uniquement la mémorisation par cœur"},{"id":"b","label":"Parce qu''elle donne un objectif motivant à la relecture et développe la prosodie"},{"id":"c","label":"Parce qu''elle remplace la lecture individuelle silencieuse"},{"id":"d","label":"Parce qu''elle ne nécessite aucune compréhension du texte lu"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La théâtralisation et la mise en voix de textes (saynètes, poèmes, dialogues) constituent un levier particulièrement efficace pour travailler la fluence car elles donnent un objectif communicatif à la relecture. L''élève relit non pas « pour relire » mais pour préparer une performance devant un public (camarades, parents). Cet objectif motivant l''incite à relire plusieurs fois le texte (lecture répétée naturelle) et à travailler spécifiquement la prosodie : rythme, intonation, pauses, expressivité. Éduscol recommande ces activités comme complémentaires des entraînements de fluence chronométrés.',
  'Les candidats réduisent parfois la théâtralisation à la mémorisation par cœur. Or l''intérêt principal est la relecture avec objectif de mise en voix, qui travaille conjointement vitesse, précision et prosodie.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — vrai_faux — Fluence et compréhension
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : un élève qui lit avec une bonne fluence (vitesse et précision élevées) comprend nécessairement le texte qu''il lit.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. La fluence est une condition nécessaire mais non suffisante de la compréhension. Le modèle simple de la lecture (L = D × C) montre qu''un bon décodage ne garantit pas la compréhension si la compréhension orale est déficitaire (vocabulaire pauvre, difficulté à faire des inférences, méconnaissance du monde évoqué par le texte). Certains élèves, appelés « bons décodeurs faibles compreneurs », lisent avec fluidité mais ne construisent pas le sens du texte. C''est pourquoi les programmes recommandent de travailler la fluence ET la compréhension de manière articulée mais distincte.',
  'Les candidats assimilent souvent fluence et compréhension. Or le profil de « bon décodeur faible compreneur » est bien identifié par la recherche et nécessite un travail spécifique sur la compréhension (vocabulaire, inférences, stratégies).',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — qcm — Gough et Tunmer
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Difficile',
  'qcm',
  'Dans le modèle simple de la lecture (Simple View of Reading) de Gough et Tunmer, pourquoi la relation entre décodage (D) et compréhension orale (C) est-elle modélisée par une multiplication (L = D × C) plutôt qu''une addition ?',
  NULL,
  '[{"id":"a","label":"Parce que la multiplication est plus simple à calculer qu''une addition"},{"id":"b","label":"Parce que si l''une des deux composantes est nulle, la compréhension en lecture est nulle, ce qu''une addition ne permet pas de modéliser"},{"id":"c","label":"Parce que le décodage est toujours plus important que la compréhension orale"},{"id":"d","label":"Parce que les deux composantes sont indépendantes et n''interagissent jamais entre elles"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La formule multiplicative L = D × C traduit le fait que les deux composantes sont toutes deux indispensables : si D = 0 (aucun décodage), alors L = 0, quelle que soit la qualité de la compréhension orale ; si C = 0 (aucune compréhension orale), alors L = 0, même avec un décodage parfait. Une addition (D + C) ne rendrait pas compte de cette interdépendance car elle permettrait une compensation : un score élevé en D pourrait compenser un score nul en C, ce qui ne correspond pas à la réalité de la lecture. Ce modèle a des implications didactiques directes : il faut travailler les deux composantes car aucune ne peut compenser l''absence de l''autre.',
  'Les candidats ne perçoivent pas toujours la signification de la multiplication dans le modèle. Le choix du signe × n''est pas anodin : il signifie que chaque composante est un facteur limitant et qu''aucune compensation n''est possible.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — reponse_courte — Stratégies de décodage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd5070000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'did_fluence_lecture',
  'Fluence et automatisation en lecture',
  'Intermediaire',
  'reponse_courte',
  'Comment appelle-t-on la voie de lecture qui permet de reconnaître un mot instantanément, sans le décoder lettre par lettre, parce qu''il est stocké dans le lexique mental du lecteur ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["voie directe","la voie directe","voie d''adressage","la voie d''adressage","adressage","voie lexicale","la voie lexicale"]}'::jsonb,
  'La voie directe (ou voie d''adressage, ou voie lexicale) est la voie de lecture qui permet une reconnaissance instantanée des mots stockés dans le lexique orthographique mental du lecteur. Contrairement à la voie indirecte (voie d''assemblage ou voie phonologique), qui procède par conversion graphème-phonème, la voie directe accède directement à la forme orthographique du mot en mémoire. L''automatisation en lecture consiste précisément à faire passer un maximum de mots de la voie indirecte à la voie directe. Plus le lexique orthographique est riche, plus la lecture est fluente car la reconnaissance des mots ne mobilise que très peu de ressources cognitives.',
  'Les candidats confondent souvent voie directe et « lecture globale ». La voie directe n''est pas une méthode d''enseignement (contrairement à la « méthode globale ») mais un processus cognitif qui se développe grâce à la pratique répétée de la lecture et à l''accumulation d''expériences avec les mots écrits.',
  'valide',
  'CRPE Français — Didactique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
