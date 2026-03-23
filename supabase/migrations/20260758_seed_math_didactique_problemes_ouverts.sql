-- Seed: Problèmes ouverts et situations-problèmes (7 exercices)
-- Subdomain: didactique_maths | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Difficile',
  'qcm',
  'Selon la théorie des situations didactiques de Brousseau, une situation-problème se distingue d''un exercice d''application par plusieurs caractéristiques. Laquelle de ces propositions décrit le mieux ce qui définit une situation-problème ?',
  NULL,
  '[{"id":"a","label":"L''élève dispose déjà de tous les outils nécessaires pour résoudre le problème — il s''agit d''appliquer une procédure connue"},{"id":"b","label":"L''élève est confronté à un problème qu''il ne peut pas résoudre avec ses seules connaissances actuelles, ce qui le contraint à construire une connaissance nouvelle pour avancer ; la situation est pensée pour que cette connaissance soit la stratégie optimale de résolution"},{"id":"c","label":"L''enseignant guide pas à pas l''élève vers la solution en décomposant le problème en sous-tâches simples"},{"id":"d","label":"La situation-problème est un problème très difficile destiné aux meilleurs élèves de la classe"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Dans la théorie des situations didactiques de Brousseau, la situation-problème est une situation adidactique dans laquelle l''élève doit construire une connaissance nouvelle pour résoudre un problème. La clé est que les connaissances antérieures de l''élève sont insuffisantes (mais pas inexistantes) pour résoudre le problème : il doit donc adapter, modifier ou créer une stratégie. La situation est conçue de telle sorte que la connaissance visée par l''enseignant soit la stratégie optimale de résolution — c''est ce que Brousseau appelle la « situation fondamentale ». Philippe Meirieu complète cette définition en insistant sur le fait que l''élève doit pouvoir entrer dans le problème (l''obstacle ne doit pas être infranchissable) et que la situation doit être porteuse de sens. La situation-problème n''est pas réservée aux bons élèves : elle est accessible à tous car elle autorise plusieurs niveaux d''entrée et plusieurs stratégies. L''enseignant ne guide pas pas à pas — il organise le milieu et laisse l''élève interagir avec lui (phase adidactique). C''est le processus de résolution qui produit l''apprentissage, pas la réponse finale.',
  'Confondre situation-problème et exercice difficile. L''exercice d''application demande d''utiliser un savoir déjà acquis ; la situation-problème vise à faire construire un savoir nouveau.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Meirieu',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Difficile',
  'vrai_faux',
  'Un problème ouvert se caractérise par un énoncé court, ne comportant pas d''indication sur la méthode de résolution, et dont la solution n''est pas immédiatement accessible à l''élève. Il peut admettre plusieurs stratégies de résolution et éventuellement plusieurs solutions.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le problème ouvert, tel que défini par l''IREM de Lyon et repris par l''APMEP, possède quatre caractéristiques fondamentales : (1) l''énoncé est court et accessible à tous les élèves (pas de vocabulaire technique obscur, pas de données inutiles) ; (2) l''énoncé ne contient aucune indication sur la méthode ou la procédure à utiliser — l''élève doit chercher par lui-même ; (3) la solution n''est pas immédiatement accessible — l''élève doit s''engager dans une démarche de recherche, faire des essais, conjecturer ; (4) plusieurs stratégies de résolution sont possibles (et c''est la confrontation de ces stratégies lors de la mise en commun qui est riche d''apprentissages). Par exemple : « Combien y a-t-il de rectangles dans cette figure ? » (avec une figure composée de rectangles imbriqués) est un problème ouvert classique. L''élève peut procéder par énumération systématique, par comptage organisé, par combinatoire. Éduscol recommande la pratique régulière de problèmes ouverts pour développer la compétence « Chercher » des programmes et former à la démarche de recherche mathématique.',
  'Croire qu''un problème ouvert est un problème sans solution ou un problème mal posé. Le problème ouvert a bien une (ou plusieurs) solution(s) — c''est la méthode pour y arriver qui n''est pas indiquée.',
  'valide',
  'Génération Claude — Terminologie Éduscol / IREM / APMEP',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Difficile',
  'qcm',
  'Lors d''une séance de résolution de problèmes ouverts en CM1, vous observez que les élèves ont produit quatre stratégies différentes pour résoudre le même problème. Quel est le rôle principal de l''enseignant pendant la phase de mise en commun ?',
  NULL,
  '[{"id":"a","label":"Montrer la seule bonne méthode et demander aux élèves de l''apprendre par cœur"},{"id":"b","label":"Organiser la confrontation des stratégies : faire expliciter chaque démarche par ses auteurs, questionner, comparer l''efficacité et la validité de chacune, institutionnaliser les savoirs qui émergent de cette confrontation"},{"id":"c","label":"Féliciter tous les élèves sans distinguer les stratégies correctes des incorrectes pour ne pas les décourager"},{"id":"d","label":"Passer rapidement à l''exercice suivant car la mise en commun prend trop de temps"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La mise en commun est le moment-clé d''une séance de problème ouvert — c''est là que se concentre l''essentiel de l''apprentissage. Le rôle de l''enseignant est celui d''un orchestrateur : il sélectionne les stratégies à présenter (en commençant souvent par les plus naïves pour aller vers les plus expertes), fait expliciter chaque démarche par les élèves qui l''ont produite (« Comment avez-vous fait ? Pourquoi ? »), organise la comparaison (« Quelle stratégie est la plus rapide ? La plus sûre ? Fonctionne-t-elle toujours ? »), et institutionnalise les savoirs qui émergent. Brousseau distingue cette phase d''institutionnalisation — où le savoir personnel de l''élève devient un savoir partagé et reconnu — comme essentielle dans le processus didactique. L''enseignant ne cherche pas à montrer « la bonne méthode » unique : il valorise la diversité des approches tout en aidant les élèves à construire des critères de validation et d''efficacité. La mise en commun développe aussi la compétence « Communiquer » des programmes : les élèves apprennent à expliquer, argumenter et critiquer des démarches mathématiques.',
  'Réduire la mise en commun à la simple correction (donner la réponse). La richesse du problème ouvert réside dans l''analyse et la comparaison des démarches, pas dans la seule réponse.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Difficile',
  'qcm',
  'En classe de CE2, vous souhaitez mettre en œuvre un problème ouvert pour travailler la recherche et la combinatoire. Plusieurs élèves se bloquent après deux minutes et disent « je ne sais pas faire ». Comment gérez-vous cette situation sans dénaturer le caractère ouvert du problème ?',
  NULL,
  '[{"id":"a","label":"Vous donnez la méthode de résolution au tableau pour débloquer tout le monde"},{"id":"b","label":"Vous proposez des relances différenciées qui relancent la recherche sans donner la procédure : rappeler les données, suggérer de faire un dessin, proposer de commencer par un cas plus simple, encourager les essais même erronés"},{"id":"c","label":"Vous passez au problème suivant car celui-ci est visiblement trop difficile"},{"id":"d","label":"Vous demandez aux élèves qui ont trouvé de donner la réponse aux autres"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La gestion de la difficulté est au cœur de la conduite d''une séance de problème ouvert. Quand un élève se bloque, l''enseignant dispose de plusieurs types de relances qui maintiennent l''engagement dans la recherche sans dévoiler la solution : (1) relances de compréhension (« Peux-tu me redire ce qu''on te demande ? »), (2) relances de représentation (« Et si tu faisais un dessin ? Un schéma ? Un tableau ? »), (3) relances de simplification (« Et si on commençait avec seulement 3 couleurs au lieu de 5 ? »), (4) relances de validation (« Tu as trouvé 6 possibilités — comment être sûr qu''il n''y en a pas d''autres ? »), (5) relances motivationnelles (« Tu as le droit de te tromper — essaie quelque chose ! »). Ces relances sont différenciées : un élève fragile recevra une suggestion plus guidante, un élève avancé sera poussé vers la preuve ou la généralisation. Brousseau parle de « dévolution » : l''enseignant doit transférer la responsabilité du problème à l''élève sans le laisser en situation d''échec. Donner la méthode tuerait la dévolution et transformerait le problème ouvert en exercice d''application.',
  'Donner trop vite la méthode ou la réponse face aux blocages. Le problème ouvert implique nécessairement un temps de recherche et d''incertitude — c''est ce temps qui produit l''apprentissage.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Difficile',
  'reponse_courte',
  'Les Rallyes mathématiques (comme le Rallye Mathématique Transalpin ou les rallyes IREM) et les problèmes de type APMEP partagent une caractéristique pédagogique essentielle : ils sont conçus pour être résolus collectivement par un petit groupe d''élèves, sans intervention de l''enseignant pendant la phase de recherche. Comment appelle-t-on cette forme de travail dans la terminologie didactique ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["travail en groupe","travail coopératif","travail collaboratif","coopération","collaboration","résolution collaborative","travail de groupe","recherche en groupe","résolution coopérative"]}'::jsonb,
  'Les rallyes mathématiques sont conçus pour le travail coopératif (ou collaboratif) : un petit groupe d''élèves (3 à 5) doit résoudre ensemble un problème, se mettre d''accord sur une solution unique, et la rédiger collectivement. L''enseignant n''intervient pas pendant la phase de recherche — c''est le groupe qui s''auto-organise. Cette modalité développe des compétences transversales essentielles : argumenter, écouter, confronter des idées, construire un consensus. Sur le plan mathématique, elle favorise la verbalisation des démarches (un élève doit expliquer son idée aux autres), la validation par les pairs (le groupe détecte les erreurs) et l''enrichissement mutuel (chaque élève apporte sa stratégie). L''APMEP et les IREM promeuvent cette approche depuis les années 1980. Éduscol recommande le rallye mathématique comme un dispositif qui articule les compétences « Chercher », « Raisonner » et « Communiquer » des programmes. Le rôle de l''enseignant se déplace : il n''est plus le détenteur du savoir mais l''organisateur d''un milieu propice à la recherche collective.',
  'Croire que le travail en groupe empêche certains élèves de réfléchir. Un rallye bien organisé (rôles distribués, nombre limité de problèmes) garantit l''engagement de chacun.',
  'valide',
  'Génération Claude — Terminologie Éduscol / APMEP / IREM',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Difficile',
  'qcm',
  'Vous devez concevoir un problème ouvert pour une classe de CM2 portant sur le domaine « Nombres et calculs ». Parmi les propositions suivantes, laquelle constitue un véritable problème ouvert adapté au cycle 3 ?',
  NULL,
  '[{"id":"a","label":"« Calcule 347 × 28 » — l''élève doit poser la multiplication"},{"id":"b","label":"« Avec les chiffres 1, 2, 3 et 4 (utilisés une seule fois chacun), combien de nombres de quatre chiffres peut-on écrire ? Trouve-les tous et explique comment tu es sûr de n''en avoir oublié aucun » — l''élève doit chercher, organiser et prouver"},{"id":"c","label":"« Quel est le résultat de 3/4 + 1/2 ? Indice : cherche un dénominateur commun » — l''élève suit l''indication donnée"},{"id":"d","label":"« Apprends par cœur les tables de multiplication de 6 à 9 » — l''élève mémorise"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le problème des nombres de quatre chiffres avec 1, 2, 3, 4 est un problème ouvert classique qui satisfait tous les critères : énoncé court et compréhensible, pas d''indication de méthode (l''élève doit inventer sa propre stratégie d''organisation), solution non immédiate (il faut un raisonnement combinatoire), plusieurs stratégies possibles (arbre, liste ordonnée, raisonnement multiplicatif : 4 × 3 × 2 × 1 = 24), et demande de preuve (« comment es-tu sûr ? »). Ce type de problème développe les compétences « Chercher » (s''engager dans une démarche, tester) et « Raisonner » (organiser, prouver l''exhaustivité). Les propositions a et c sont des exercices d''application (procédure connue à appliquer), et d est un exercice de mémorisation. L''APMEP et les rallyes IREM proposent régulièrement ce type d''énoncés. Éduscol recommande que les élèves rencontrent régulièrement (au moins une fois par semaine) des problèmes de recherche qui les placent dans une posture de « chercheur en mathématiques ».',
  'Confondre problème ouvert et exercice d''application. Si l''énoncé indique la méthode ou si la procédure est connue, ce n''est pas un problème ouvert — c''est un exercice d''entraînement.',
  'valide',
  'Génération Claude — Terminologie Éduscol / APMEP',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0b0000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_problemes_ouverts',
  'Problèmes ouverts et situations-problèmes', 'Difficile',
  'vrai_faux',
  'Lors de la résolution d''un problème ouvert, l''enseignant doit systématiquement intervenir pour corriger les erreurs des élèves dès qu''il les observe, afin d''éviter que de fausses conceptions ne s''installent.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Dans une séance de problème ouvert, l''enseignant ne doit pas corriger immédiatement les erreurs observées pendant la phase de recherche. C''est un principe fondamental de la théorie des situations didactiques de Brousseau : pendant la phase adidactique, l''élève interagit avec le « milieu » (le problème, le matériel, ses pairs) et c''est cette interaction qui produit l''apprentissage. Si l''enseignant corrige à chaud, il reprend la responsabilité du problème (rupture de la dévolution) et prive l''élève de la possibilité de détecter et corriger lui-même son erreur. L''erreur est un moteur de l''apprentissage : c''est en constatant que sa stratégie ne fonctionne pas (par un contre-exemple, par le feedback du milieu, par la confrontation avec un pair) que l''élève modifie sa conception. Le rôle de l''enseignant pendant la recherche est d''observer, de repérer les stratégies et les erreurs (pour préparer la mise en commun), et de relancer sans corriger. Les erreurs seront traitées lors de la mise en commun collective, où elles alimenteront la discussion et l''argumentation mathématique.',
  'Croire qu''il faut corriger toute erreur immédiatement. En situation de recherche, l''erreur est productive — elle est le signe que l''élève s''engage dans un processus de construction de savoir.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
