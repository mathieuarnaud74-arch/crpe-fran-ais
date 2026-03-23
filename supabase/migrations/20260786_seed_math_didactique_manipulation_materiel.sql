-- Seed: Manipulation et matériel — Du concret à l'abstrait (7 exercices)
-- Subdomain: didactique_maths | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Facile',
  'qcm',
  'Jerome Bruner a proposé un modèle de progression de l''apprentissage en trois étapes. Quelle est la séquence correcte de ces étapes ?',
  NULL,
  '[{"id":"a","label":"Enactif (manipulation concrète) → Iconique (représentation imagée) → Symbolique (écriture abstraite)"},{"id":"b","label":"Symbolique (formules) → Iconique (dessins) → Enactif (manipulation)"},{"id":"c","label":"Visuel → Auditif → Kinesthésique"},{"id":"d","label":"Concret → Semi-concret → Virtuel"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Bruner distingue trois modes de représentation qui se développent dans un ordre précis : (1) le mode enactif : l''enfant apprend par l''action et la manipulation d''objets concrets (cubes, jetons, bandes fractionnaires). Le savoir est « dans les mains ». (2) Le mode iconique : l''enfant utilise des images, des schémas, des dessins pour représenter la situation. Le savoir est « dans les yeux ». (3) Le mode symbolique : l''enfant utilise des symboles abstraits (chiffres, lettres, signes opératoires). Le savoir est « dans les signes ». En didactique des mathématiques, cette progression guide la conception des séquences d''enseignement : on commence par la manipulation (compter des cubes), on passe aux représentations imagées (dessiner des groupements), puis à l''écriture symbolique (3 × 4 = 12). Vergnaud complète ce modèle en montrant que les schèmes se construisent d''abord dans l''action (enactif) puis se formalisent progressivement. Brousseau montre que le milieu matériel (les objets manipulés) joue un rôle crucial dans les premières phases d''apprentissage. Éduscol insiste sur l''importance de ne pas brûler les étapes et de respecter cette progression du concret vers l''abstrait.',
  'Passer directement au mode symbolique en sautant les étapes enactive et iconique. Les trois modes doivent être traversés dans l''ordre pour un apprentissage solide.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Facile',
  'vrai_faux',
  'Le matériel de numération en base 10 (cubes-unités, barres de dizaines, plaques de centaines, gros cube de millier) est particulièrement adapté pour aider les élèves à comprendre le principe de la numération positionnelle car il rend visible la relation « 1 pour 10 » entre chaque ordre d''unités.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le matériel en base 10 (aussi appelé matériel Montessori-Lubienska ou matériel multibase) est un outil didactique fondamental pour la compréhension de la numération positionnelle. Chaque pièce matérialise un ordre d''unité : le cube-unité (1), la barre de dizaine (10 cubes alignés), la plaque de centaine (10 barres assemblées), le gros cube de mille (10 plaques empilées). L''élève peut vérifier physiquement que 10 cubes = 1 barre, 10 barres = 1 plaque, 10 plaques = 1 gros cube. Ce matériel rend tangible le principe fondamental de la numération : chaque position vaut 10 fois la position précédente. Vergnaud montre que la manipulation de ce matériel permet de construire des invariants opératoires liés à la numération : les échanges « 10 contre 1 » lors des additions avec retenue, les échanges « 1 contre 10 » lors des soustractions avec emprunt. Brousseau souligne que le matériel doit être un véritable milieu de validation : l''élève peut vérifier par lui-même si son groupement est correct. Éduscol recommande l''utilisation de ce matériel au cycle 2 et au début du cycle 3 pour ancrer la compréhension du système décimal.',
  'Croire que le matériel en base 10 ne sert qu''à « compter ». Il est surtout efficace pour comprendre les échanges (retenues, emprunts) et le principe positionnel.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Facile',
  'qcm',
  'Parmi les matériels suivants, lequel est spécifiquement conçu pour travailler les fractions de manière concrète et aider les élèves à comparer et additionner des fractions ?',
  NULL,
  '[{"id":"a","label":"Les bandes fractionnaires (ou réglettes fractionnaires) : bandes de longueur identique divisées en parts égales (demis, tiers, quarts, cinquièmes, sixièmes...)"},{"id":"b","label":"La calculatrice scientifique qui affiche les fractions simplifiées"},{"id":"c","label":"Le boulier chinois utilisé pour les calculs de fractions"},{"id":"d","label":"Le compas, qui permet de tracer des cercles pour représenter des « camemberts »"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les bandes fractionnaires (ou réglettes de Cuisenaire adaptées aux fractions) sont un matériel didactique spécifiquement conçu pour l''enseignement des fractions. Chaque bande représente une unité divisée en parts égales : une bande coupée en 2 (demis), une en 3 (tiers), une en 4 (quarts), etc. L''élève peut manipuler ces bandes pour : comparer des fractions (1/3 est-il plus grand que 1/4 ? — il suffit de superposer les bandes) ; additionner des fractions (1/4 + 1/4 = 2/4 = 1/2 — vérifiable par superposition) ; chercher des fractions équivalentes (2/4 recouvre exactement 1/2). Ce matériel correspond au mode enactif de Bruner : le savoir fractionnaire est d''abord construit dans les mains. Vergnaud montre que la compréhension des fractions exige la coordination de plusieurs significations (partie d''un tout, quotient, rapport, opérateur) et que la manipulation aide à construire cette richesse conceptuelle. Brousseau insiste sur le fait que le matériel doit permettre la validation par l''élève lui-même (c''est le milieu qui valide, pas l''enseignant). Éduscol recommande explicitement l''utilisation de matériel de manipulation pour introduire les fractions au cycle 3.',
  'Se limiter à la représentation « camembert » (cercle découpé) pour les fractions. Les bandes fractionnaires sont plus adaptées pour la comparaison et l''addition car elles se superposent facilement.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Facile',
  'reponse_courte',
  'Quel outil de géométrie concrète, constitué d''une planche à clous disposés en quadrillage sur laquelle on tend des élastiques pour former des figures, est couramment utilisé pour travailler la géométrie plane (périmètre, aire, symétrie) de manière manipulatoire ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["géoplan","Géoplan","geoplan","Geoplan","le géoplan","Le géoplan"]}'::jsonb,
  'Le géoplan (geoboard en anglais) est un outil didactique inventé par le mathématicien Caleb Gattegno. Il se compose d''une planche carrée sur laquelle des clous sont disposés selon un quadrillage régulier. Les élèves tendent des élastiques entre les clous pour créer des formes géométriques. Cet outil est particulièrement efficace pour : explorer les propriétés des figures planes (triangles, rectangles, parallélogrammes), travailler le périmètre et l''aire (en comptant les unités sur le quadrillage), découvrir la symétrie axiale (reproduire une figure de l''autre côté d''un axe), étudier les angles. Le géoplan correspond au mode enactif de Bruner : l''élève construit physiquement les figures et peut les modifier instantanément (déplacer un élastique). Vergnaud montre que la manipulation géométrique sur le géoplan favorise la construction d''invariants opératoires spatiaux. Brousseau souligne que le géoplan constitue un milieu riche pour des situations a-didactiques : l''élève peut explorer librement et découvrir des propriétés par lui-même. Éduscol recommande l''utilisation d''outils de manipulation en géométrie au cycle 2 et au cycle 3 pour passer du perceptif au déductif.',
  'Réduire le géoplan à un simple jeu. C''est un outil didactique puissant pour construire des concepts géométriques par la manipulation.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Facile',
  'vrai_faux',
  'L''utilisation de matériel de manipulation en classe de mathématiques présente une limite importante : si l''enseignant ne planifie pas explicitement la transition vers l''abstraction, les élèves risquent de rester dépendants du matériel et de ne pas construire les représentations symboliques nécessaires.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Cette limite est bien identifiée par la recherche en didactique des mathématiques. Le matériel de manipulation est un outil puissant pour la phase enactive (Bruner), mais il ne doit pas devenir une fin en soi. Si l''enseignant ne planifie pas le passage du concret (manipulation) à l''iconique (schéma, dessin) puis au symbolique (écriture mathématique), les élèves peuvent développer une dépendance au matériel : ils savent additionner avec des cubes mais pas avec des chiffres. Vergnaud montre que le schème doit se « détacher » du matériel pour devenir opérationnel dans des contextes variés : c''est le processus de décontextualisation. Brousseau avertit que le matériel peut même devenir un obstacle si les élèves associent le concept au matériel lui-même (par exemple, « une fraction, c''est un bout de bande »). La progression doit être explicite : (1) manipulation libre, (2) manipulation guidée, (3) passage au schéma (l''élève dessine ce qu''il manipulait), (4) passage à l''écriture symbolique, (5) retrait progressif du matériel. Éduscol insiste sur cette articulation entre manipulation et formalisation : « manipuler n''est pas comprendre, c''est une étape vers la compréhension ».',
  'Opposer manipulation et abstraction. Les deux sont complémentaires : la manipulation prépare l''abstraction, mais la transition doit être explicitement organisée.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Facile',
  'qcm',
  'Un enseignant de CE1 veut travailler la multiplication (sens du « nombre de fois ») avec ses élèves. Quel matériel et quelle activité sont les plus adaptés pour une première approche concrète de cette opération ?',
  NULL,
  '[{"id":"a","label":"Des jetons et des assiettes : « Place 4 jetons dans chaque assiette. Il y a 3 assiettes. Combien de jetons en tout ? » L''élève manipule et compte"},{"id":"b","label":"Un tableau de multiplication à compléter de mémoire"},{"id":"c","label":"Une feuille d''exercices avec 30 multiplications posées à calculer"},{"id":"d","label":"Un logiciel de calcul mental chronométré qui entraîne la rapidité"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''activité avec jetons et assiettes est une situation concrète qui correspond au mode enactif de Bruner et donne sens à la multiplication comme « nombre de fois » (itération d''une quantité). L''élève place physiquement 4 jetons dans chaque assiette, puis compte le total (12). Il vit corporellement l''expérience de « 3 fois 4 ». Cette manipulation permet de construire le sens de la multiplication avant de mémoriser les tables. La progression suit le modèle de Bruner : (1) enactif : manipuler les jetons et les assiettes ; (2) iconique : dessiner les assiettes avec les jetons (schématisation) ; (3) symbolique : écrire 3 × 4 = 12. Vergnaud montre que la multiplication relève du champ conceptuel multiplicatif qui inclut plusieurs sens : itération (3 fois 4), produit cartésien (3 rangées de 4), proportionnalité (3 boîtes de 4 bonbons). Le matériel concret permet de travailler ces différents sens. Brousseau insiste sur l''importance de varier les situations (pas toujours des assiettes !) pour que l''élève décontextualise le concept. Éduscol recommande de passer par la manipulation au cycle 2 avant de formaliser les tables au cycle 3.',
  'Commencer par la mémorisation des tables sans avoir construit le sens de la multiplication. Les tables deviennent une suite de résultats à réciter sans compréhension.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc130000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_manipulation_materiel',
  'Manipulation et matériel — Du concret à l''abstrait', 'Facile',
  'qcm',
  'Un enseignant de CM1 hésite entre plusieurs matériels pour une séance sur les fractions. Les élèves doivent comprendre que 2/3 > 1/2. Quel choix de matériel et quelle mise en œuvre sont les plus pertinents ?',
  'Contexte : classe de 24 élèves, travail en binômes, séance de 45 minutes.',
  '[{"id":"a","label":"Distribuer des bandes fractionnaires à chaque binôme. Les élèves superposent la bande des tiers (2 parts coloriées sur 3) et la bande des demis (1 part coloriée sur 2) pour constater visuellement que 2/3 dépasse 1/2"},{"id":"b","label":"Projeter un diaporama avec des camemberts fractionnaires et demander aux élèves de recopier les schémas dans leur cahier"},{"id":"c","label":"Écrire au tableau que 2/3 = 4/6 et 1/2 = 3/6, donc 4/6 > 3/6. Les élèves recopient et mémorisent la méthode"},{"id":"d","label":"Donner une feuille d''exercices avec 15 comparaisons de fractions à effectuer en appliquant la règle « on met au même dénominateur »"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La superposition de bandes fractionnaires est la démarche la plus conforme au modèle enactif de Bruner et aux principes de la didactique des mathématiques. En superposant physiquement les bandes, les élèves constatent visuellement et tactilement que 2/3 « dépasse » 1/2. Cette expérience concrète constitue le fondement sur lequel s''appuieront ensuite les méthodes de comparaison abstraites (mise au même dénominateur). Le travail en binôme favorise les échanges entre pairs et la verbalisation : « Regarde, la bande des 2/3 est plus longue que celle des 1/2. » Vergnaud montre que les invariants opératoires liés aux fractions (partie d''un tout, rapport, quotient) se construisent progressivement par la confrontation à des situations variées, et la manipulation en est le point de départ. Brousseau insiste sur l''importance du milieu matériel qui doit permettre la validation autonome : les bandes permettent à l''élève de vérifier par lui-même sans recourir à l''enseignant. Éduscol recommande de consacrer du temps à la manipulation avant toute formalisation et de ne pas précipiter le passage à la technique de mise au même dénominateur.',
  'Introduire directement la méthode abstraite (mise au même dénominateur) sans passer par la manipulation. Les élèves appliquent alors une procédure sans comprendre le sens de la comparaison.',
  'valide',
  'Génération Claude — Terminologie Bruner / Vergnaud / Brousseau / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;