-- ============================================================================
-- Migration: Complétion des séries didactique_maths (batch 1) — Q8, Q9, Q10
-- 10 séries × 3 questions = 30 exercices ajoutés
-- Subdomain: didactique_maths | Access: free | Subject: Mathematiques
-- Date: 2026-03-24
-- ============================================================================

-- ============================================================================
-- 1. math_didactique_calcul_mental (UUID prefix: fc030000)
--    Thème: Didactique du calcul mental — Stratégies et mise en œuvre
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc030000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre',
  'Intermediaire',
  'reponse_courte',
  'Un élève de CE2 calcule 7 × 6 en expliquant : « 7 × 5, c''est 35, puis j''ajoute 7, ça fait 42 ». Quelle propriété mathématique fondamentale sous-tend cette stratégie de calcul mental ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["distributivité","la distributivité","Distributivité","La distributivité","distributivité de la multiplication sur l''addition","distributivite"]}'::jsonb,
  'L''élève utilise implicitement la distributivité de la multiplication sur l''addition : 7 × 6 = 7 × (5 + 1) = 7 × 5 + 7 × 1 = 35 + 7 = 42. Cette stratégie montre que l''élève ne se contente pas de réciter les tables : il décompose un facteur pour s''appuyer sur un résultat connu (7 × 5 = 35) et ajuste ensuite. C''est une stratégie de calcul mental réfléchi qui témoigne d''une compréhension du sens de la multiplication. Éduscol recommande de valoriser et d''expliciter ces stratégies lors des rituels de calcul mental pour que l''ensemble de la classe s''en empare. Vergnaud souligne que l''utilisation implicite de la distributivité est un théorème-en-acte que l''enseignant doit progressivement amener à l''explicitation.',
  'Croire que cette stratégie est inefficace parce qu''elle est plus longue que la restitution directe du résultat mémorisé. Elle est au contraire un signe de compréhension profonde et de flexibilité numérique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc030000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre',
  'Avance',
  'qcm',
  'Un enseignant de CM2 met en place un rituel de calcul mental quotidien. Il dicte des calculs, laisse 10 secondes par item, puis donne immédiatement les réponses. Quelle critique didactique majeure peut-on formuler à l''égard de ce dispositif ?',
  NULL,
  '[{"id":"a","label":"Le temps accordé est trop court pour que les élèves puissent réfléchir"},{"id":"b","label":"Le dispositif ne comporte pas de phase de mise en commun des procédures : les élèves ne confrontent jamais leurs stratégies et n''enrichissent pas leur répertoire de calcul"},{"id":"c","label":"Le calcul mental ne devrait pas être ritualisé mais travaillé uniquement lors de séquences dédiées"},{"id":"d","label":"Il faudrait accorder 30 secondes par item au lieu de 10"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La critique majeure porte sur l''absence de phase de mise en commun des procédures. Un rituel de calcul mental efficace ne se limite pas à la production de résultats : le moment de confrontation des stratégies est le temps didactique le plus riche. Pendant cette phase, l''enseignant demande aux élèves d''expliciter comment ils ont calculé, note les différentes procédures au tableau et les discute collectivement. Par exemple, pour 25 × 12, certains feront 25 × 10 + 25 × 2, d''autres 25 × 4 × 3, d''autres encore 12 × 100 ÷ 4. La confrontation permet à chaque élève de découvrir des stratégies auxquelles il n''avait pas pensé et de développer sa flexibilité numérique. Sans cette phase, le rituel se réduit à un entraînement de mémorisation qui ne développe que le calcul automatisé. Éduscol recommande explicitement d''alterner des phases de production rapide et des phases de discussion des procédures.',
  'Penser que le rituel de calcul mental se réduit à « dicter — répondre — corriger ». Sans mise en commun des stratégies, le potentiel didactique est considérablement appauvri.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc030000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_calcul_mental',
  'Didactique du calcul mental — Stratégies et mise en œuvre',
  'Intermediaire',
  'vrai_faux',
  'La stratégie de décomposition et la stratégie de compensation sont deux procédures de calcul mental réfléchi qui s''appuient sur les mêmes propriétés mathématiques.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'La décomposition et la compensation s''appuient sur des propriétés différentes. La décomposition repose sur la numération positionnelle et la distributivité : par exemple, 47 + 38 = (40 + 30) + (7 + 8) = 70 + 15 = 85. L''élève décompose chaque nombre selon ses ordres de grandeur (dizaines + unités) puis recompose. La compensation, elle, repose sur la conservation des sommes ou des écarts : par exemple, 47 + 38 = 47 + 40 - 2 = 87 - 2 = 85 (on arrondit 38 à 40 en ajoutant 2, puis on compense en retranchant 2). Ces deux stratégies sont complémentaires et doivent être travaillées explicitement. La décomposition est souvent la première stratégie enseignée car elle s''appuie sur la compréhension de la numération. La compensation est plus économique dans certains cas (quand un nombre est proche d''une dizaine ou d''une centaine) mais nécessite une bonne maîtrise de la notion d''écart. Éduscol recommande de travailler les deux pour enrichir le répertoire stratégique des élèves.',
  'Considérer que toutes les stratégies de calcul mental « reviennent au même ». Si elles donnent le même résultat, elles mobilisent des propriétés mathématiques et des compétences différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 2. math_didactique_differenciation (UUID prefix: b02b0000)
--    Thème: Différenciation pédagogique en mathématiques
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques',
  'Avance',
  'qcm',
  'En didactique des mathématiques, l''« effet Topaze » (Brousseau) désigne une dérive de l''étayage. Laquelle ?',
  NULL,
  '[{"id":"a","label":"L''enseignant laisse les élèves chercher trop longtemps sans intervenir"},{"id":"b","label":"L''enseignant simplifie tellement la tâche ou donne tant d''indices que l''élève produit la bonne réponse sans avoir eu besoin de comprendre le savoir visé"},{"id":"c","label":"L''enseignant propose un problème trop difficile pour tous les élèves"},{"id":"d","label":"L''enseignant différencie en proposant des exercices plus faciles aux élèves en difficulté"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''effet Topaze, théorisé par Brousseau (1986), tire son nom d''une scène de la pièce de Marcel Pagnol où le maître dicte à un élève « des moutons » en insistant sur les sons (« des moutonsss ») jusqu''à ce que l''élève écrive le « s » du pluriel sans avoir compris la règle. En mathématiques, l''effet Topaze se produit quand l''enseignant, par souci d''aider, réduit tellement la difficulté cognitive de la tâche que l''élève trouve la réponse sans mobiliser le savoir visé. Par exemple, face à un problème de partage, l''enseignant dit : « Il faut diviser, et 24 divisé par 6, tu connais ta table... ». L''élève répond 4, mais n''a pas eu besoin de comprendre la situation de partage. Cet effet est un risque majeur dans la différenciation : vouloir aider l''élève en difficulté peut conduire à vider la tâche de son contenu mathématique. Éduscol recommande un étayage qui maintient l''enjeu cognitif.',
  'Confondre étayage efficace et effet Topaze. L''étayage aide l''élève à surmonter un obstacle sans supprimer l''obstacle ; l''effet Topaze supprime l''obstacle en rendant la bonne réponse accessible sans compréhension.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques',
  'Avance',
  'vrai_faux',
  'Le tutorat entre pairs (un élève avancé aide un élève en difficulté) bénéficie uniquement à l''élève aidé. L''élève tuteur n''en tire aucun bénéfice d''apprentissage.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Le tutorat entre pairs bénéficie aux deux élèves. L''élève aidé profite d''une explication formulée dans un langage proche du sien et d''un accompagnement individualisé. Mais l''élève tuteur bénéficie également d''un « effet tuteur » démontré par la recherche : pour expliquer, il doit reformuler ses connaissances, les structurer, les expliciter, ce qui renforce et approfondit sa propre compréhension. Barnier (2001) montre que l''acte d''enseigner est un puissant outil d''apprentissage. Vergnaud souligne que la verbalisation des schèmes (mettre en mots ce que l''on fait et pourquoi) favorise le passage des connaissances implicites (théorèmes-en-acte) aux connaissances explicites. Éduscol recommande le tutorat entre pairs comme modalité de différenciation, en soulignant que la formation des élèves-tuteurs est nécessaire (apprendre à aider sans donner la réponse, poser des questions plutôt qu''expliquer directement).',
  'Penser que le tutorat n''est utile qu''à l''élève aidé et que l''élève tuteur « perd son temps ». Au contraire, l''effet tuteur est un levier d''apprentissage puissant pour l''élève qui explique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b02b0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_differenciation',
  'Didactique — Différenciation pédagogique en mathématiques',
  'Avance',
  'reponse_courte',
  'En didactique des mathématiques, Brousseau a identifié les éléments d''une situation d''apprentissage que l''enseignant peut modifier pour ajuster la difficulté sans changer la nature du savoir visé. Comment appelle-t-on ces éléments ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["variables didactiques","les variables didactiques","Variables didactiques","Les variables didactiques","variable didactique","la variable didactique"]}'::jsonb,
  'Les variables didactiques sont les paramètres d''une situation que l''enseignant peut modifier pour ajuster la difficulté tout en préservant l''enjeu mathématique. Par exemple, dans un problème additif de type « transformation », les variables didactiques incluent : la taille des nombres (petits entiers vs. grands nombres vs. décimaux), la position de l''inconnue (état final, transformation ou état initial), la présence ou l''absence de données inutiles, le contexte (concret vs. abstrait). En modifiant ces variables, l''enseignant différencie sans changer la nature du problème : tous les élèves travaillent le même type de structure mathématique mais à des niveaux de complexité différents. Les variables didactiques sont un outil central de la différenciation en mathématiques, recommandé par Éduscol.',
  'Confondre variables didactiques et simplification du problème. Modifier les variables didactiques ajuste la complexité ; simplifier peut changer la nature même du savoir en jeu.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 3. math_didactique_differenciation_maths (UUID prefix: fc0e0000)
--    Thème: Différenciation pédagogique en maths (v2)
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0e0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques',
  'Avance',
  'qcm',
  'Selon la théorie des situations didactiques de Brousseau, quelle est la différence fondamentale entre une situation didactique et une situation a-didactique ?',
  NULL,
  '[{"id":"a","label":"La situation didactique est réelle ; la situation a-didactique est fictive"},{"id":"b","label":"Dans la situation a-didactique, l''élève interagit avec le milieu et construit le savoir par l''action, sans que l''enseignant n''intervienne sur le contenu ; dans la situation didactique, l''enseignant guide explicitement l''apprentissage"},{"id":"c","label":"La situation didactique est pour les bons élèves ; la situation a-didactique est pour les élèves en difficulté"},{"id":"d","label":"Il n''y a aucune différence, ce sont deux termes synonymes"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour Brousseau, la situation a-didactique est le moment clé de l''apprentissage mathématique. L''enseignant conçoit un « milieu » (problème, matériel, contraintes) avec lequel l''élève interagit de manière autonome. Le milieu fournit des rétroactions qui permettent à l''élève de valider ou invalider ses stratégies sans l''intervention de l''enseignant. Par exemple, un jeu où l''élève doit atteindre 20 en ajoutant 1 ou 2 à tour de rôle : le milieu (les règles du jeu) rétroagit (on gagne ou on perd), et l''élève construit progressivement la stratégie gagnante. La situation didactique englobe l''ensemble du processus : la dévolution (confier le problème à l''élève), la phase a-didactique, puis l''institutionnalisation (mise en forme du savoir par l''enseignant). La distinction est essentielle pour la différenciation : le milieu peut être ajusté (variables didactiques) pour que chaque élève soit en situation a-didactique dans sa zone proximale de développement.',
  'Croire que la situation a-didactique signifie « sans enseignant ». L''enseignant a un rôle crucial en amont (concevoir le milieu) et en aval (institutionnaliser le savoir), mais pendant la phase a-didactique, c''est l''élève qui interagit avec le problème.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0e0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques',
  'Avance',
  'vrai_faux',
  'Les groupes de besoin homogènes (regrouper les élèves ayant les mêmes difficultés) sont à proscrire en mathématiques car ils stigmatisent les élèves en difficulté.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Les groupes de besoin homogènes ne sont pas à proscrire : ils sont un outil légitime de différenciation quand ils sont utilisés de manière temporaire et ciblée. Éduscol recommande d''alterner les modalités de groupement selon les objectifs : les groupes hétérogènes favorisent les interactions et les conflits socio-cognitifs (Doise et Mugny), tandis que les groupes homogènes permettent à l''enseignant de cibler une remédiation précise auprès d''un groupe d''élèves partageant la même difficulté. L''essentiel est que ces groupes soient flexibles (recomposés régulièrement selon les besoins), temporaires (pas de « groupe des faibles » permanent) et fondés sur des besoins d''apprentissage identifiés (pas sur un niveau global). Vygotsky montre que le travail en groupe homogène est pertinent quand l''enseignant apporte un étayage adapté à la ZPD commune des élèves du groupe.',
  'Opposer catégoriquement groupes homogènes et groupes hétérogènes. Les deux ont leur pertinence selon les objectifs poursuivis. C''est la rigidité et la permanence des groupes qui pose problème, pas le principe du groupement homogène.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0e0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques',
  'Avance',
  'reponse_courte',
  'Brousseau identifie le moment de la séquence didactique où l''enseignant confie le problème à l''élève en le rendant responsable de la recherche de la solution. Comment appelle-t-on ce processus ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["dévolution","la dévolution","Dévolution","La dévolution","devolution","la devolution"]}'::jsonb,
  'La dévolution est le processus par lequel l''enseignant transfère à l''élève la responsabilité de résoudre le problème. L''élève accepte de chercher, d''essayer, de se tromper, sans attendre que l''enseignant lui dise quoi faire. Brousseau montre que la dévolution est un acte didactique fondamental : elle crée les conditions de la situation a-didactique. Sans dévolution, l''élève reste en position d''exécutant (il attend les consignes pas à pas) et ne construit pas véritablement de savoir. La dévolution échoue quand l''élève refuse de s''engager dans la recherche (« je ne sais pas faire, montre-moi ») ou quand l''enseignant reprend trop vite la main (effet Topaze). En différenciation, la dévolution est un levier essentiel : adapter le problème pour que chaque élève puisse s''y engager (ni trop facile, ni trop difficile) est la condition d''une dévolution réussie pour tous.',
  'Confondre dévolution et abandon pédagogique. La dévolution ne signifie pas « laisser l''élève se débrouiller seul » : l''enseignant a conçu le milieu pour que l''élève puisse interagir avec le problème de manière productive.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 4. math_didactique_division (UUID prefix: fc070000)
--    Thème: Didactique de la division — Sens, algorithmes et obstacles
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles',
  'Avance',
  'qcm',
  'Un élève de CM1 pose la division 256 ÷ 4 et écrit : « 25 ÷ 4 = 5, reste 5 ; j''abaisse le 6, 56 ÷ 4 = 14 ». Il annonce un quotient de « 514 ». Quelle est la nature de son erreur ?',
  NULL,
  '[{"id":"a","label":"L''élève a mal mémorisé ses tables de multiplication"},{"id":"b","label":"L''élève ne respecte pas le principe de l''algorithme posé : chaque chiffre du quotient correspond à un seul chiffre (une unité du rang concerné), et le quotient partiel 56 ÷ 4 doit donner un seul chiffre (1 dizaine et 4 unités ne forment pas un seul chiffre du quotient)"},{"id":"c","label":"L''élève a oublié de vérifier avec la relation euclidienne"},{"id":"d","label":"L''élève a confondu multiplication et division"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''erreur porte sur la compréhension de l''algorithme posé de la division. À chaque étape, le quotient partiel ne doit comporter qu''un seul chiffre (0 à 9) car il représente les unités du rang en cours. Quand l''élève trouve 56 ÷ 4 = 14, il obtient un quotient partiel à deux chiffres, ce qui signifie qu''il a mal estimé le premier chiffre du quotient. La division correcte donne : 25 ÷ 4 = 6 (reste 1), on abaisse le 6 pour obtenir 16, puis 16 ÷ 4 = 4 (reste 0). Le quotient est 64. Cette erreur révèle que l''élève applique l''algorithme de manière mécanique sans comprendre que chaque étape correspond à un rang de la numération. Brousseau souligne que l''enseignement de l''algorithme posé doit expliciter le lien avec la numération positionnelle : diviser les centaines d''abord, puis les dizaines restantes, puis les unités.',
  'Considérer cette erreur comme une simple maladresse. Elle révèle une incompréhension du principe fondamental de l''algorithme : chaque chiffre du quotient représente un rang de la numération.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles',
  'Intermediaire',
  'vrai_faux',
  'Les problèmes de division-quotition (groupement) sont plus difficiles pour les élèves que les problèmes de division-partage (partition) car ils ne correspondent pas à l''expérience quotidienne du partage.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Les recherches en didactique des mathématiques confirment que la division-quotition est généralement plus difficile pour les élèves que la division-partage. La division-partage (« distribuer 24 bonbons entre 6 enfants ») fait écho à l''expérience concrète du partage équitable que les enfants vivent depuis la maternelle. La division-quotition (« j''ai 24 bonbons, je fais des sachets de 4, combien de sachets ? ») est plus abstraite car elle demande de regrouper en paquets de taille connue et de dénombrer le nombre de paquets. Vergnaud montre que dans le champ conceptuel des structures multiplicatives, la recherche du nombre de parts (quotition) mobilise un schème différent de la recherche de la valeur d''une part (partition). C''est pourquoi Éduscol recommande d''introduire d''abord la division-partage au cycle 2, puis d''aborder progressivement la division-quotition, en s''appuyant sur des manipulations concrètes (faire des groupements réels).',
  'Penser que les deux sens de la division présentent la même difficulté et peuvent être introduits simultanément. La progression didactique recommande le partage avant la quotition.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles',
  'Intermediaire',
  'reponse_courte',
  'En didactique de la division, les élèves utilisent souvent une procédure primitive avant de maîtriser l''algorithme posé : ils retirent successivement le diviseur du dividende et comptent le nombre de retraits effectués. Comment appelle-t-on cette procédure ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["soustraction itérée","la soustraction itérée","Soustraction itérée","La soustraction itérée","soustractions itérées","les soustractions itérées","soustraction répétée","soustractions répétées","soustraction successive","soustractions successives"]}'::jsonb,
  'La soustraction itérée (ou soustractions successives) est la procédure la plus élémentaire pour effectuer une division : l''élève retire le diviseur autant de fois que possible et compte le nombre de soustractions effectuées. Par exemple, pour 30 ÷ 6 : 30 - 6 = 24, 24 - 6 = 18, 18 - 6 = 12, 12 - 6 = 6, 6 - 6 = 0 → 5 soustractions, donc le quotient est 5. Cette procédure, bien qu''inefficace pour les grands nombres, est didactiquement précieuse car elle donne du sens à la division comme groupement (quotition). Vergnaud montre qu''elle constitue un schème fondateur à partir duquel des procédures plus élaborées se construisent progressivement : soustraction de multiples du diviseur (retirer 6 × 3 = 18 d''un coup), puis encadrement par des multiples, puis algorithme posé. Éduscol recommande de respecter cette progression et de ne pas imposer l''algorithme avant que les élèves aient compris le sens de la division à travers ces procédures personnelles.',
  'Dévaloriser la soustraction itérée comme « procédure de bébé ». C''est une étape nécessaire dans la construction du concept de division et un tremplin vers l''algorithme posé.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 5. math_didactique_erreurs_geometrie (UUID prefix: b01f0000)
--    Thème: Erreurs et remédiations en géométrie
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie',
  'Avance',
  'qcm',
  'Un élève de CM2 affirme : « Un losange n''a pas d''angle droit, sinon ce serait un carré. » Comment analysez-vous cette erreur du point de vue didactique ?',
  NULL,
  '[{"id":"a","label":"L''élève a raison : un losange ne peut pas avoir d''angle droit"},{"id":"b","label":"L''élève raisonne sur le prototype du losange (figure inclinée sans angle droit) et ne comprend pas que le carré est un cas particulier de losange — il n''a pas atteint le niveau 3 de van Hiele (inclusion de classes)"},{"id":"c","label":"L''élève confond losange et parallélogramme"},{"id":"d","label":"L''élève ne connaît pas la définition du losange"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un losange est un quadrilatère ayant quatre côtés de même longueur. Un carré, ayant quatre côtés égaux et quatre angles droits, est donc un losange particulier. L''erreur de l''élève est doublement instructive : (1) il raisonne sur le prototype du losange (une figure « penchée » aux angles non droits), pas sur sa définition par propriétés ; (2) il n''a pas construit l''inclusion de classes : pour lui, losange et carré sont des catégories disjointes. Cette erreur se situe entre le niveau 2 de van Hiele (il connaît les propriétés séparément) et le niveau 3 (il ne les relie pas logiquement). La remédiation consiste à revenir à la définition par propriétés : « un losange est un quadrilatère qui a quatre côtés de même longueur — est-ce que le carré vérifie cette propriété ? ». Éduscol recommande de travailler systématiquement les diagrammes d''inclusion des quadrilatères au cycle 3.',
  'Considérer que cette erreur est marginale. L''inclusion de classes est un objectif majeur du cycle 3 en géométrie et constitue un indicateur clé du niveau de pensée géométrique de l''élève.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie',
  'Avance',
  'vrai_faux',
  'En géométrie, proposer uniquement des activités de reproduction de figures sur quadrillage suffit pour faire progresser les élèves du niveau 1 (visualisation) au niveau 2 (analyse des propriétés) de van Hiele.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'La reproduction sur quadrillage est une activité pertinente mais insuffisante pour assurer le passage du niveau 1 au niveau 2 de van Hiele. La reproduction mobilise principalement des compétences perceptivo-motrices (recopier une forme) et peut être réussie sans analyse des propriétés géométriques : l''élève compte les carreaux et reproduit le tracé point par point sans identifier que la figure est, par exemple, un parallélogramme avec des côtés opposés parallèles et égaux. Pour favoriser le passage au niveau 2, il faut des activités qui obligent l''élève à analyser les propriétés : descriptions de figures sans les montrer (jeu du portrait géométrique), constructions aux instruments à partir d''un programme de construction, identification de propriétés communes à une collection de figures variées. Van Hiele insiste sur le fait que chaque niveau se construit par des expériences d''apprentissage spécifiques : la simple répétition d''activités du niveau 1 ne fait pas passer au niveau 2.',
  'Croire que multiplier les activités de reproduction suffit à faire progresser en géométrie. Le changement de niveau van Hiele nécessite des activités qualitativement différentes, centrées sur l''analyse explicite des propriétés.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01f0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_erreurs_geometrie',
  'Didactique — Erreurs et remédiations en géométrie',
  'Avance',
  'reponse_courte',
  'Un enseignant de CM1 demande aux élèves de décrire un rectangle à un camarade qui ne peut pas le voir (jeu du « portrait géométrique »). Quelle compétence géométrique cette activité développe-t-elle principalement, selon le modèle de van Hiele ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["l''analyse des propriétés","analyse des propriétés","le niveau 2 de van Hiele","niveau 2","analyse","l''analyse","identification des propriétés","description par les propriétés"]}'::jsonb,
  'Le jeu du portrait géométrique développe principalement la compétence d''analyse des propriétés (niveau 2 de van Hiele). Pour décrire un rectangle à quelqu''un qui ne le voit pas, l''élève ne peut pas dire « c''est un rectangle, tu sais, la forme allongée » — il doit expliciter les propriétés : « c''est un quadrilatère qui a 4 angles droits, avec deux grands côtés de même longueur et deux petits côtés de même longueur ». Cette contrainte communicationnelle oblige l''élève à passer de la reconnaissance globale (niveau 1) à l''analyse des propriétés (niveau 2). C''est une situation a-didactique au sens de Brousseau : le milieu (l''impossibilité de montrer la figure) contraint l''élève à mobiliser le vocabulaire géométrique et les propriétés. Éduscol recommande cette activité comme levier pour développer à la fois les compétences géométriques et les compétences langagières en mathématiques.',
  'Réduire cette activité à un exercice de vocabulaire. Elle développe bien plus que le lexique : elle construit la capacité à raisonner sur les propriétés et à communiquer mathématiquement.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 6. math_didactique_erreurs_mesures (UUID prefix: fc120000)
--    Thème: Erreurs typiques en mesures
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves',
  'Avance',
  'qcm',
  'Un élève de CM2 doit calculer le volume d''un pavé droit de dimensions 4 cm × 3 cm × 5 cm. Il écrit : « V = 4 + 3 + 5 = 12 cm³ ». Quel obstacle conceptuel cette erreur révèle-t-elle ?',
  NULL,
  '[{"id":"a","label":"L''élève ne sait pas additionner correctement"},{"id":"b","label":"L''élève n''a pas construit la distinction entre grandeurs de dimensions différentes : il additionne les trois dimensions (procédure unidimensionnelle) au lieu de les multiplier (procédure tridimensionnelle)"},{"id":"c","label":"L''élève confond volume et périmètre"},{"id":"d","label":"L''élève n''a jamais vu de pavé droit"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''élève additionne les trois dimensions au lieu de les multiplier, révélant un obstacle fondamental sur la nature des grandeurs de dimensions différentes. Le volume est une grandeur tridimensionnelle qui résulte du produit de trois longueurs : V = L × l × h = 4 × 3 × 5 = 60 cm³. En additionnant, l''élève reste dans une logique unidimensionnelle (la somme de longueurs donne une longueur). Cette erreur est analogue à celle des conversions d''aires (appliquer le facteur linéaire au lieu du facteur carré). Vergnaud montre que la compréhension du volume nécessite la coordination de trois dimensions, ce qui représente un saut conceptuel considérable par rapport à l''aire (deux dimensions). La remédiation passe par la manipulation concrète : remplir un pavé droit avec des cubes-unités de 1 cm³ et constater que le nombre de cubes est le produit des trois dimensions. Éduscol recommande de faire construire le concept de volume par empilement de couches avant de formaliser la formule.',
  'Traiter cette erreur comme un simple problème de mémorisation de formule. L''élève a besoin de comprendre pourquoi on multiplie trois longueurs pour obtenir un volume, pas de mémoriser V = L × l × h.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves',
  'Intermediaire',
  'reponse_courte',
  'En didactique des grandeurs et mesures, les programmes Éduscol recommandent de faire passer les élèves par trois étapes pour construire le concept de mesure d''une grandeur. Quelle est la première étape, avant toute utilisation d''unité conventionnelle ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["comparaison directe","la comparaison directe","Comparaison directe","La comparaison directe","comparaison","la comparaison","comparer","comparaison perceptive","comparaison sans mesure"]}'::jsonb,
  'La première étape est la comparaison directe : comparer deux grandeurs sans mesurer, par superposition ou juxtaposition. Par exemple, pour les longueurs : poser deux bandes côte à côte pour voir laquelle est plus longue. Pour les aires : superposer deux figures et voir laquelle dépasse. Pour les masses : soupeser deux objets ou utiliser une balance à plateaux. Cette étape est fondamentale car elle construit le sens de la grandeur avant l''introduction de toute unité. Les trois étapes sont : (1) comparaison directe, (2) comparaison indirecte avec une unité non conventionnelle (combien de « pieds » mesure la classe ?), (3) mesure avec des unités conventionnelles (mètre, kilogramme). Vergnaud montre que sauter directement à l''étape 3 conduit à une utilisation mécanique des unités sans compréhension de ce qu''on mesure. Éduscol recommande explicitement cette progression au cycle 2.',
  'Commencer par les unités conventionnelles et les conversions sans avoir construit le sens de la grandeur par la comparaison directe. Les élèves mémorisent alors des procédures de conversion vides de sens.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc120000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_erreurs_mesures',
  'Didactique des mesures — Erreurs typiques d''élèves',
  'Intermediaire',
  'vrai_faux',
  'Un élève de CE2 affirme que « 1 kg est plus lourd que 1 000 g ». Cette erreur provient du fait que l''élève n''a pas construit l''équivalence entre les différentes unités de masse et perçoit « kilogramme » et « gramme » comme deux grandeurs distinctes.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Cette erreur est effectivement très courante et révèle que l''élève n''a pas construit l''équivalence 1 kg = 1 000 g. Pour lui, « kilogramme » et « gramme » sont des étiquettes distinctes associées à des grandeurs différentes, comme si le kg désignait les « choses lourdes » et le g les « choses légères ». Il n''a pas compris que ces unités mesurent la même grandeur (la masse) à des échelles différentes. Vergnaud parle d''un théorème-en-acte erroné : « les unités de mesure sont des catégories distinctes ». La remédiation passe par la manipulation concrète : peser 1 kg de sucre sur une balance, puis le même sachet en grammes, pour constater que l''aiguille indique 1 000 g. Brousseau insiste sur la nécessité de faire vivre la conversion comme une expérience et non comme une simple règle numérique. Éduscol recommande de construire les relations entre unités par la manipulation de balances et de contenants avant d''introduire les tableaux de conversion.',
  'Se contenter de faire apprendre par cœur « 1 kg = 1 000 g » sans manipulation. L''élève mémorise une équivalence formelle sans la relier à une expérience concrète de masse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 7. math_didactique_espace_solides (UUID prefix: fc0d0000)
--    Thème: Didactique de l'espace et des solides
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_espace_solides',
  'Didactique de l''espace et des solides',
  'Avance',
  'qcm',
  'Un enseignant de CM1 propose l''activité suivante : un élève choisit un solide caché dans un sac, le touche sans le voir et le décrit oralement à ses camarades qui doivent le deviner. Quel est l''intérêt didactique principal de cette activité ?',
  NULL,
  '[{"id":"a","label":"Elle développe uniquement le vocabulaire géométrique"},{"id":"b","label":"En privant l''élève de la vue, elle l''oblige à analyser les propriétés du solide par le toucher (nombre de faces, forme des faces, arêtes, sommets) et à les verbaliser, favorisant le passage de la perception globale à l''analyse des propriétés (van Hiele niveau 1 → niveau 2)"},{"id":"c","label":"Elle sert uniquement à occuper les élèves de manière ludique"},{"id":"d","label":"Elle évalue la motricité fine de l''élève"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Cette activité, dite du « sac à toucher » ou « jeu de Kim tactile », est un classique de la didactique de la géométrie des solides. En privant l''élève de la vision, on l''empêche de reconnaître le solide par son apparence globale (niveau 1 de van Hiele). Il est contraint d''explorer les propriétés par le toucher : compter les faces, identifier leur forme (plane ou courbe, rectangulaire ou triangulaire), repérer les arêtes et les sommets. Pour communiquer ces informations, il doit les verbaliser en utilisant le vocabulaire géométrique approprié. Cette double contrainte (analyser par le toucher + verbaliser) constitue une situation a-didactique au sens de Brousseau : c''est le milieu (l''absence de vue et la contrainte de communication) qui oblige l''élève à mobiliser les propriétés. Vergnaud souligne que la verbalisation est un levier puissant pour faire passer les connaissances implicites (schèmes d''action) en connaissances explicites (concepts géométriques).',
  'Réduire cette activité à un simple jeu de vocabulaire. Elle construit la capacité d''analyse géométrique en mobilisant un canal sensoriel inhabituel (le toucher) qui contraint l''élève à dépasser la reconnaissance visuelle globale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_espace_solides',
  'Didactique de l''espace et des solides',
  'Intermediaire',
  'vrai_faux',
  'La relation d''Euler (S - A + F = 2, avec S = sommets, A = arêtes, F = faces) est une propriété que les élèves de cycle 3 doivent connaître et vérifier sur les polyèdres convexes. Elle peut être découverte par les élèves eux-mêmes en comptant les éléments de différents solides et en cherchant un invariant.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La relation d''Euler (S - A + F = 2) est effectivement au programme du cycle 3 et peut être construite par les élèves à travers une démarche d''investigation. L''enseignant propose aux élèves de compter les sommets, arêtes et faces de plusieurs polyèdres convexes (cube, pavé droit, pyramide à base carrée, prisme triangulaire...) et de reporter les résultats dans un tableau. Puis il leur demande de chercher une relation entre ces trois nombres. Les élèves découvrent que S - A + F donne toujours 2. Cette démarche s''inscrit dans la compétence « chercher » des programmes Éduscol : conjecturer une propriété à partir de l''observation de cas particuliers. Brousseau y voit une situation a-didactique : le milieu (le tableau de valeurs) permet à l''élève de formuler la conjecture. L''institutionnalisation porte ensuite sur l''énoncé de la relation et ses limites (valable pour les polyèdres convexes). Vergnaud souligne que cette activité développe le raisonnement inductif, compétence fondamentale en mathématiques.',
  'Penser que la formule d''Euler doit être donnée directement aux élèves sans phase de recherche. La construction par investigation est plus formatrice et développe la compétence « chercher ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_espace_solides',
  'Didactique de l''espace et des solides',
  'Intermediaire',
  'reponse_courte',
  'Un élève de CM2 dessine le patron d''un cube en disposant 6 carrés en croix (un carré central entouré de 4 carrés, plus un carré au bout d''un des bras). Son patron est correct. Combien de patrons différents du cube existe-t-il au total ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["11","onze","Onze","11 patrons"]}'::jsonb,
  'Il existe exactement 11 patrons différents du cube (en excluant les rotations et symétries). Ce résultat, démontrable par énumération exhaustive, est souvent surprenant pour les élèves qui n''en connaissent que 2 ou 3. L''activité de recherche de tous les patrons est très riche didactiquement : elle développe la visualisation spatiale (imaginer le pliage de chaque patron), le raisonnement systématique (s''assurer de n''en oublier aucun et d''éliminer les doublons) et la capacité de vérification (découper et plier pour valider). Brousseau y voit une situation-problème de recherche : le milieu (les contraintes du pliage) rétroagit sur les propositions de l''élève. Vergnaud souligne que la coordination entre la représentation plane (patron) et la représentation spatiale (cube) mobilise des schèmes de visualisation complexes. Éduscol recommande de faire chercher les patrons par manipulation avant de les cataloguer.',
  'Croire qu''il n''existe qu''un seul patron du cube (la croix). La recherche exhaustive est un objectif pédagogique en soi, développant la pensée combinatoire et la visualisation spatiale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 8. math_didactique_evaluation (UUID prefix: fc090000)
--    Thème: Évaluation en mathématiques — Types et outils
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc090000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils',
  'Avance',
  'qcm',
  'Un enseignant de CM1 utilise des « tickets de sortie » : à la fin de chaque séance de mathématiques, chaque élève répond à une question rapide sur une petite fiche. De quel type d''évaluation s''agit-il et quel en est l''intérêt principal ?',
  NULL,
  '[{"id":"a","label":"C''est une évaluation sommative qui permet de noter chaque séance"},{"id":"b","label":"C''est un outil d''évaluation formative qui permet à l''enseignant de réguler son enseignement en temps quasi-réel : il identifie immédiatement les incompréhensions et peut adapter la séance suivante"},{"id":"c","label":"C''est une évaluation diagnostique qui sert à repérer les prérequis"},{"id":"d","label":"C''est une évaluation certificative qui valide les acquis de l''élève"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le ticket de sortie (exit ticket) est un outil d''évaluation formative rapide et efficace. En posant une question ciblée en fin de séance (par exemple : « Calcule 3/4 + 1/4 » après une séance sur l''addition de fractions), l''enseignant obtient un instantané de la compréhension de chaque élève. L''analyse rapide des tickets (en les triant en trois piles : « compris », « partiellement compris », « pas compris ») permet d''adapter la séance suivante : reprendre un point mal compris, former des groupes de remédiation, ou poursuivre la progression. C''est une évaluation formative car elle ne donne pas lieu à une note et son objectif est la régulation de l''enseignement, pas le bilan. Éduscol recommande ce type d''outil dans le cadre de l''évaluation continue et de la différenciation. L''avantage du ticket de sortie est sa légèreté (2-3 minutes) et sa fréquence (chaque séance), qui permettent un ajustement fin et réactif.',
  'Confondre ticket de sortie et évaluation sommative. Le ticket de sortie ne sert pas à noter mais à réguler — c''est un thermomètre pédagogique, pas un verdict.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc090000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils',
  'Intermediaire',
  'vrai_faux',
  'Selon la recherche en didactique, l''erreur d''un élève en mathématiques est toujours le signe d''un manque de travail ou d''attention et ne fournit pas d''information utile sur les processus d''apprentissage.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Au contraire, la recherche en didactique des mathématiques considère l''erreur comme un indicateur précieux des processus d''apprentissage. Astolfi (1997) distingue huit types d''erreurs, chacun révélant un obstacle différent : erreurs de compréhension des consignes, erreurs liées aux habitudes scolaires, erreurs témoignant de conceptions erronées, erreurs liées à la surcharge cognitive, erreurs de procédure, etc. Brousseau montre que certaines erreurs sont inévitables car elles proviennent d''obstacles épistémologiques (obstacles liés à la nature même du savoir, par exemple la rupture entre entiers et fractions). Vergnaud ajoute que les erreurs révèlent les théorèmes-en-acte erronés des élèves, c''est-à-dire les règles implicites qu''ils utilisent. Analyser les erreurs est donc un geste professionnel essentiel pour l''enseignant : il ne s''agit pas de les sanctionner mais de les comprendre pour concevoir des remédiations ciblées. Éduscol recommande explicitement l''analyse des erreurs comme outil d''évaluation formative.',
  'Considérer l''erreur uniquement comme une faute à corriger. En didactique, l''erreur est un outil diagnostic qui éclaire les processus de pensée de l''élève et guide l''enseignement.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc090000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_evaluation',
  'Évaluation en mathématiques — Types et outils',
  'Intermediaire',
  'reponse_courte',
  'Les évaluations nationales de mathématiques en début de CE1, CM1 et 6e, mises en place par le ministère de l''Éducation nationale, relèvent principalement de quel type d''évaluation ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["évaluation diagnostique","diagnostique","Diagnostique","Évaluation diagnostique","evaluation diagnostique","Evaluation diagnostique","diagnostic"]}'::jsonb,
  'Les évaluations nationales de début de CE1, CM1 et 6e sont des évaluations diagnostiques. Leur objectif est d''identifier, en début d''année scolaire, les acquis et les besoins de chaque élève dans les domaines fondamentaux (français et mathématiques), afin de permettre aux enseignants d''adapter leur enseignement. Elles ne donnent pas lieu à une note au sens traditionnel mais à un positionnement par compétences (« à besoin », « fragile », « satisfaisant », « très bonne maîtrise »). Les résultats sont communiqués aux familles et servent à l''enseignant pour constituer des groupes de besoin, mettre en place de la remédiation ciblée et adapter sa progression. Éduscol fournit des ressources d''accompagnement pour exploiter les résultats de ces évaluations diagnostiques et concevoir des séquences de remédiation différenciée.',
  'Confondre évaluations nationales et évaluations sommatives. Les évaluations nationales en début d''année ne sanctionnent pas un niveau mais identifient des besoins pour orienter l''action pédagogique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 9. math_didactique_fractions (UUID prefix: f7010000)
--    Thème: Didactique des fractions — Erreurs et remédiations
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations',
  'Avance',
  'qcm',
  'Un élève de CM2 simplifie la fraction 26/65 en barrant les « 6 » : 26/65 = 2/5. Le résultat est correct (26/65 = 2/5), mais la procédure est-elle valide mathématiquement ?',
  NULL,
  '[{"id":"a","label":"Oui, la procédure est valide : on peut toujours « barrer » les chiffres identiques au numérateur et au dénominateur"},{"id":"b","label":"Non, la procédure est mathématiquement invalide même si elle donne ici un résultat correct par coïncidence. On ne simplifie pas des chiffres mais des facteurs communs"},{"id":"c","label":"Oui, c''est une procédure de simplification avancée enseignée au collège"},{"id":"d","label":"Non, et le résultat 2/5 est d''ailleurs faux"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La procédure est invalide mais donne ici un résultat correct par coïncidence numérique. Simplifier une fraction consiste à diviser le numérateur ET le dénominateur par un même facteur commun (ici, PGCD(26, 65) = 13, donc 26/65 = (26÷13)/(65÷13) = 2/5). « Barrer les 6 » n''est pas une opération mathématique : les chiffres dans un nombre ne sont pas des facteurs. La preuve : cette « méthode » appliquée à 16/64 donnerait 1/4, qui est correct par hasard, mais appliquée à 13/39 donnerait 1/9 au lieu de 1/3 (car 13/39 = 1/3). Cet exemple est un classique du CRPE car il illustre la différence entre « ça marche » et « c''est justifié ». Brousseau souligne que les procédures qui « marchent par accident » sont dangereuses car elles ancrent des théorèmes-en-acte erronés. L''enseignant doit exiger la justification, pas seulement le résultat correct.',
  'Valider une procédure uniquement parce que le résultat est correct. En mathématiques, la validité de la démarche est aussi importante que l''exactitude du résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations',
  'Intermediaire',
  'vrai_faux',
  'Selon Brousseau, l''obstacle du nombre naturel (natural number bias) se manifeste quand les élèves appliquent aux fractions des propriétés qui ne sont valides que pour les nombres entiers naturels, comme « quand on multiplie, le résultat est toujours plus grand ».',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'L''obstacle du nombre naturel (natural number bias) est un obstacle épistémologique majeur identifié par Brousseau et approfondi par Ni et Zhou (2005). Les élèves transfèrent aux fractions des propriétés des entiers naturels qui ne sont plus valides. Exemples : (1) « multiplier rend plus grand » — or 3 × 1/2 = 3/2 = 1,5 < 3 ; (2) « diviser rend plus petit » — or 3 ÷ 1/2 = 6 > 3 ; (3) « un nombre n''a qu''une seule écriture » — or 1/2 = 2/4 = 3/6 ; (4) « entre deux nombres consécutifs, il n''y a rien » — or entre 0 et 1, il existe une infinité de fractions. Cet obstacle est qualifié d''épistémologique car il n''est pas le fruit d''un mauvais enseignement : il est inhérent à l''extension du champ numérique. Vergnaud montre que le passage des entiers aux fractions nécessite une rupture conceptuelle profonde dans le champ des structures multiplicatives. La remédiation passe par des situations qui créent un conflit cognitif avec les croyances erronées.',
  'Minimiser l''obstacle du nombre naturel en pensant qu''il suffit d''expliquer les règles de calcul fractionnaire. Cet obstacle est profond et résistant car il est ancré dans des années d''expérience avec les entiers.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7010000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_fractions',
  'Didactique des fractions — Erreurs et remédiations',
  'Intermediaire',
  'reponse_courte',
  'Dans l''enseignement des fractions au cycle 3, les programmes Éduscol recommandent d''utiliser un outil de représentation qui permet de visualiser la fraction comme un nombre (un point sur une ligne) et non seulement comme « une partie d''un tout ». Quel est cet outil ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["la droite numérique","droite numérique","La droite numérique","Droite numérique","droite graduée","la droite graduée","La droite graduée","Droite graduée","ligne numérique"]}'::jsonb,
  'La droite numérique (ou droite graduée) est l''outil recommandé par Éduscol pour faire évoluer la conception de la fraction chez les élèves. Tant que la fraction n''est représentée que par des parts coloriées (modèle aire), l''élève reste dans l''interprétation « partie d''un tout » et peine à concevoir les fractions supérieures à 1, les fractions équivalentes et la densité des fractions. Sur la droite numérique, la fraction 3/4 est un point situé entre 0 et 1, à la même distance de 0 que le point 6/8 — ce qui rend visible l''équivalence. La fraction 5/4 se place au-delà de 1, ce qui fait percevoir que les fractions ne sont pas nécessairement inférieures à 1. Vergnaud et Kieren montrent que la représentation sur la droite numérique correspond à l''interprétation « mesure » de la fraction et permet de construire la fraction comme nombre. Brousseau recommande d''articuler plusieurs représentations (aires, bandes, droite numérique) pour construire un concept riche et flexible.',
  'Se limiter aux représentations par aires coloriées. Si elles sont utiles en introduction, elles deviennent un obstacle quand elles sont le seul modèle proposé, car elles renforcent la conception « partie d''un tout » au détriment de la conception « nombre ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- 10. math_didactique_geometrie_plane (UUID prefix: fc050000)
--     Thème: Didactique de la géométrie plane — Enseigner les figures
-- ============================================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures',
  'Avance',
  'qcm',
  'Un enseignant de CM1 conçoit un « programme de construction » : une suite d''instructions textuelles permettant de tracer une figure géométrique (ex : « Trace un segment [AB] de 5 cm. En A, trace une perpendiculaire à [AB]... »). Quel est l''intérêt didactique principal de cette activité ?',
  NULL,
  '[{"id":"a","label":"Elle évalue uniquement la capacité à utiliser les instruments (règle, compas, équerre)"},{"id":"b","label":"Elle développe le passage de la géométrie perceptive à la géométrie instrumentée et déductive : l''élève doit décoder des propriétés géométriques (perpendiculaire, longueur) et les traduire en gestes instrumentés, mobilisant la figure et non le simple dessin"},{"id":"c","label":"Elle remplace l''enseignement des définitions géométriques"},{"id":"d","label":"Elle est utile uniquement pour les élèves avancés qui maîtrisent déjà les figures"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le programme de construction est un outil didactique fondamental qui articule trois dimensions : la lecture et compréhension du vocabulaire géométrique (« perpendiculaire », « parallèle », « milieu »), le raisonnement sur les propriétés (comprendre que « perpendiculaire à [AB] » définit une direction précise), et la maîtrise instrumentée (tracer effectivement avec l''équerre, le compas, la règle). L''élève passe ainsi de la géométrie perceptive (reconnaître un rectangle « à vue d''œil ») à la géométrie instrumentée (construire un rectangle en garantissant ses propriétés par les instruments). De plus, le programme de construction travaille la distinction dessin/figure : le texte décrit la figure (ses propriétés), le tracé est le dessin (une réalisation particulière). Laborde et Capponi montrent que cette articulation est essentielle pour la conceptualisation géométrique. Éduscol recommande les programmes de construction dès le CE2, avec une complexification progressive des figures et des propriétés mobilisées.',
  'Réduire le programme de construction à un exercice d''habileté manuelle. C''est un exercice de raisonnement géométrique qui mobilise la compréhension des propriétés et du vocabulaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures',
  'Intermediaire',
  'reponse_courte',
  'En didactique de la géométrie plane, quelle notion fondamentale distingue un parallélogramme d''un trapèze ? Donnez la propriété géométrique discriminante.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["deux paires de côtés parallèles","les côtés opposés sont parallèles","deux couples de côtés parallèles","parallélisme des côtés opposés","côtés opposés parallèles","4 côtés parallèles deux à deux","les 4 côtés sont parallèles deux à deux"]}'::jsonb,
  'Le parallélogramme possède deux paires de côtés parallèles (les côtés opposés sont parallèles deux à deux), tandis que le trapèze n''en possède qu''une seule paire. Cette propriété est la propriété discriminante fondamentale entre les deux figures. En didactique, la classification des quadrilatères par leurs propriétés (et non par leur apparence) est un objectif majeur du cycle 3. Van Hiele montre que comprendre cette classification requiert le niveau 2 (analyse des propriétés) voire le niveau 3 (inclusion de classes) : le parallélogramme est un trapèze particulier (au sens de la définition inclusive du trapèze, « au moins une paire de côtés parallèles »). Éduscol recommande de construire progressivement cette hiérarchie en faisant observer, mesurer et comparer les propriétés des différents quadrilatères.',
  'Identifier les quadrilatères par leur apparence visuelle plutôt que par leurs propriétés de parallélisme. Un parallélogramme « aplati » ne ressemble pas au prototype mais possède bien deux paires de côtés parallèles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc050000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_didactique_geometrie_plane',
  'Didactique de la géométrie plane — Enseigner les figures',
  'Intermediaire',
  'vrai_faux',
  'En géométrie plane, les activités de construction au compas (report de longueurs, tracé de cercles, construction de triangles connaissant les trois côtés) relèvent de la géométrie instrumentée et contribuent à développer chez l''élève la compréhension que les propriétés d''une figure ne dépendent pas de son apparence visuelle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Les constructions au compas relèvent effectivement de la géométrie instrumentée et sont un levier essentiel pour dépasser la géométrie perceptive. Quand un élève construit un triangle connaissant la longueur de ses trois côtés (construction au compas par intersection d''arcs de cercle), il mobilise une propriété fondamentale : le compas garantit l''égalité des distances, indépendamment de l''apparence visuelle. L''élève comprend que le triangle obtenu possède les longueurs requises non pas parce qu''il « ressemble » au triangle attendu, mais parce que la construction le garantit mathématiquement. Cette distinction entre « ça a l''air correct » (géométrie perceptive) et « c''est garanti par la construction » (géométrie instrumentée) est fondamentale. Van Hiele la situe dans la transition du niveau 1 vers le niveau 2. Éduscol recommande de travailler systématiquement les constructions aux instruments dès le cycle 2, avec une complexification progressive : d''abord la règle graduée et l''équerre, puis le compas, puis les combinaisons d''instruments.',
  'Considérer les constructions aux instruments comme de simples exercices manuels. Elles développent une compréhension profonde du lien entre propriétés et constructions géométriques.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
