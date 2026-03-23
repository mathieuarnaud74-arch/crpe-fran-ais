-- Seed: Didactique des grandeurs et mesures — Enseigner la mesure (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0a0000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Intermediaire',
  'qcm',
  'En didactique des grandeurs et mesures, on distingue la notion de grandeur et la notion de mesure. Laquelle de ces affirmations caractérise le mieux cette distinction ?',
  NULL,
  '[{"id":"a","label":"La grandeur est un attribut qualitatif d''un objet (sa longueur, sa masse, sa contenance) ; la mesure est le résultat numérique obtenu en comparant cette grandeur à une unité de référence"},{"id":"b","label":"La grandeur et la mesure sont deux termes synonymes utilisés dans les programmes du cycle 2"},{"id":"c","label":"La grandeur désigne uniquement les longueurs, tandis que la mesure concerne les aires et les volumes"},{"id":"d","label":"La mesure est une notion qualitative, la grandeur est une notion quantitative"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La distinction grandeur/mesure est fondamentale en didactique. La grandeur est une propriété physique d''un objet — par exemple, la longueur d''un segment, la masse d''un objet, la contenance d''un récipient. C''est un attribut qualitatif : on peut comparer deux grandeurs de même nature (« ce ruban est plus long que celui-là ») sans recourir à un nombre. La mesure, en revanche, est le résultat d''un processus de quantification : on associe un nombre à une grandeur en la comparant à une unité choisie. Ainsi, « 3,5 m » est la mesure d''une longueur (grandeur) exprimée avec le mètre comme unité. Les programmes Éduscol insistent sur le fait que l''enseignement doit d''abord faire percevoir la grandeur (comparaison directe, classement) avant d''introduire la mesure (comparaison indirecte avec une unité). Vergnaud souligne que confondre grandeur et mesure conduit les élèves à manipuler des nombres sans comprendre ce qu''ils représentent.',
  'Confondre grandeur et mesure, ou croire que la mesure précède la grandeur dans l''apprentissage. La perception de la grandeur (comparaison qualitative) est un prérequis à la mesure (quantification).',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0a0000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Intermediaire',
  'vrai_faux',
  'Dans la progression didactique de l''enseignement de la mesure, l''étape de comparaison directe (superposer deux objets pour déterminer lequel est le plus long) doit être travaillée avant l''introduction d''une unité de mesure conventionnelle.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La progression classique en didactique des grandeurs et mesures suit quatre étapes : (1) la perception de la grandeur (l''élève identifie l''attribut mesurable — « cette table est longue »), (2) la comparaison directe (superposition, transvasement — « ce ruban est plus long que celui-là »), (3) la comparaison indirecte avec un étalon arbitraire (« ce ruban mesure 5 crayons de long »), puis (4) la mesure avec une unité conventionnelle (mètre, kilogramme, litre). Cette progression du concret vers l''abstrait est recommandée par Éduscol et par les travaux de Vergnaud sur les champs conceptuels. La comparaison directe permet à l''élève de construire le sens de la grandeur avant de la quantifier. Brûler les étapes — passer directement aux unités conventionnelles — conduit les élèves à manipuler des nombres et des conversions sans comprendre ce qu''ils mesurent réellement. Brousseau insiste sur le fait que chaque étape correspond à une situation didactique spécifique qui fait sens pour l''élève.',
  'Passer directement aux unités conventionnelles sans travailler les étapes de comparaison. Les élèves savent alors convertir mécaniquement mais ne comprennent pas le sens de la mesure.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud / Brousseau',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0a0000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Intermediaire',
  'qcm',
  'Un élève de CM1 doit convertir l''aire d''un rectangle de 3 m² en cm². Il écrit : « 3 m² = 300 cm² ». Quelle est l''origine la plus probable de cette erreur ?',
  NULL,
  '[{"id":"a","label":"L''élève applique le facteur de conversion linéaire (×100) aux unités d''aire, sans comprendre que les unités de surface se convertissent au carré (×100² = ×10 000)"},{"id":"b","label":"L''élève ne connaît pas la relation entre mètre et centimètre"},{"id":"c","label":"L''élève a fait une erreur de calcul ponctuelle"},{"id":"d","label":"L''élève confond l''aire avec le volume"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Cette erreur est un obstacle didactique classique et récurrent dans l''enseignement des conversions d''unités d''aire. L''élève transfère le facteur de conversion des longueurs (1 m = 100 cm, donc ×100) aux aires, écrivant 3 m² = 300 cm². Or, 1 m² = 1 m × 1 m = 100 cm × 100 cm = 10 000 cm², donc 3 m² = 30 000 cm². L''élève n''a pas compris que l''unité d''aire est un carré : quand la longueur du côté est multipliée par 100, l''aire est multipliée par 100² = 10 000. Cet obstacle est lié à ce que Vergnaud appelle la « linéarité abusive » : l''élève applique un raisonnement proportionnel simple (×100) là où la relation est quadratique (×10 000). Pour surmonter cet obstacle, Éduscol recommande de faire manipuler du matériel concret : découper des carrés-unités (cm², dm²) et vérifier combien de cm² tiennent dans un dm², puis dans un m². La visualisation concrète aide l''élève à construire le sens de la conversion d''aires.',
  'Appliquer le facteur de conversion linéaire aux unités d''aire. C''est une erreur systématique qui ne se corrige pas par la répétition mais par la manipulation et la visualisation.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0a0000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Intermediaire',
  'qcm',
  'En CE2, vous souhaitez introduire la notion d''aire avant de donner la formule « longueur × largeur ». Quelle situation d''apprentissage est la plus pertinente pour faire émerger le concept d''aire chez les élèves ?',
  NULL,
  '[{"id":"a","label":"Donner la formule directement et faire des exercices d''application numérique"},{"id":"b","label":"Faire comparer des surfaces par pavage : les élèves recouvrent différentes figures avec des unités d''aire (carrés de papier) et comptent combien il en faut pour couvrir chacune"},{"id":"c","label":"Demander aux élèves de mesurer le périmètre des figures et d''en déduire l''aire"},{"id":"d","label":"Montrer une vidéo éducative expliquant la formule de l''aire du rectangle"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le pavage est la situation fondamentale pour l''introduction de l''aire. En recouvrant une surface avec des unités d''aire (carrés de papier, carreaux de mosaïque), l''élève construit le sens de l''aire comme « nombre d''unités de surface nécessaires pour recouvrir une figure ». Cette approche s''inscrit dans la théorie des situations didactiques de Brousseau : l''élève est confronté à un problème (comparer des surfaces qui ne sont pas superposables) qui nécessite un outil nouveau (le pavage), lequel fait émerger le concept d''aire. Le pavage permet aussi de dissocier aire et périmètre — deux figures de même périmètre peuvent avoir des aires différentes, et vice versa. Ce n''est qu''après avoir solidement construit le concept d''aire par le pavage que l''on introduit la formule « longueur × largeur » comme un raccourci de calcul. Éduscol insiste sur cette progression du concret vers l''abstrait : manipuler avant de formaliser. Donner la formule trop tôt produit des élèves qui calculent sans comprendre.',
  'Introduire la formule de l''aire avant que les élèves n''aient construit le sens du concept par la manipulation. La formule n''est qu''un raccourci — elle ne remplace pas la compréhension.',
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
  'fc0a0000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Intermediaire',
  'reponse_courte',
  'Dans l''enseignement des grandeurs et mesures, on recommande une progression en quatre étapes : perception de la grandeur, comparaison directe, comparaison indirecte avec un étalon arbitraire, puis mesure avec une unité conventionnelle. Ce principe pédagogique, qui va de la manipulation physique vers la formalisation numérique, est souvent résumé par l''expression « du … vers l''… ». Complétez.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["du concret vers l''abstrait","concret vers l''abstrait","concret vers abstrait","du concret vers abstrait","Du concret vers l''abstrait","concret à l''abstrait","du concret à l''abstrait"]}'::jsonb,
  'Le principe « du concret vers l''abstrait » est un pilier de la didactique des mathématiques, particulièrement central dans l''enseignement des grandeurs et mesures. Il signifie que l''apprentissage doit partir de manipulations physiques (toucher, comparer, superposer, transvaser) avant de progresser vers des représentations symboliques (nombres, unités, formules). Dans le domaine des grandeurs et mesures, cela se traduit par la progression en quatre étapes : (1) percevoir la grandeur (manipuler des objets), (2) comparer directement (superposer deux rubans), (3) comparer indirectement avec un étalon arbitraire (mesurer avec des trombones), (4) mesurer avec une unité conventionnelle (le mètre). Vergnaud et Brousseau insistent tous deux sur ce principe : les concepts mathématiques se construisent dans l''action sur le réel avant d''être formalisés. Éduscol le reprend dans les repères de progression pour chaque cycle : les activités de manipulation doivent précéder les exercices formels.',
  'Croire que la progression « concret → abstrait » est réservée au cycle 1. Elle reste pertinente à tous les niveaux, y compris au cycle 3, chaque fois qu''un nouveau concept est introduit.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud / Brousseau',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0a0000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Intermediaire',
  'qcm',
  'Un élève de CM2 affirme : « Un rectangle qui a un grand périmètre a forcément une grande aire. » Vous souhaitez le faire travailler sur cette confusion périmètre/aire. Quelle situation lui proposez-vous ?',
  NULL,
  '[{"id":"a","label":"Lui redonner les formules du périmètre et de l''aire et lui faire refaire des calculs"},{"id":"b","label":"Lui demander de construire, avec une ficelle de longueur fixe (périmètre constant), plusieurs rectangles différents sur du papier quadrillé, puis de comparer leurs aires en comptant les carreaux"},{"id":"c","label":"Lui dire que son affirmation est fausse et lui demander de l''admettre"},{"id":"d","label":"Lui donner un exercice de conversion d''unités pour renforcer ses automatismes"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La confusion périmètre/aire est un obstacle didactique majeur identifié par la recherche. De nombreux élèves (et même des adultes) croient intuitivement qu''un grand périmètre implique une grande aire, car ils confondent « le tour » et « la surface ». Pour surmonter cet obstacle, il faut créer une situation de contradiction cognitive (Brousseau). La situation de la ficelle est classique et très efficace : avec une ficelle de 24 cm (périmètre fixe), l''élève construit sur papier quadrillé un rectangle 1×11 (aire = 11), un rectangle 2×10 (aire = 20), un rectangle 4×8 (aire = 32), un rectangle 6×6 (aire = 36). Il constate visuellement que des rectangles de même périmètre ont des aires très différentes. L''inverse fonctionne aussi : des rectangles de même aire (ex : 12 cm²) peuvent avoir des périmètres différents (1×12 : P = 26 ; 3×4 : P = 14). Cette manipulation concrète déconstruit la fausse croyance bien plus efficacement que la simple répétition des formules. Éduscol recommande explicitement ce type de situation pour traiter la confusion périmètre/aire.',
  'Se contenter de rappeler les formules. La confusion périmètre/aire est un obstacle conceptuel profond qui ne se résout pas par la mémorisation de formules mais par la manipulation et la confrontation à des contre-exemples.',
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
  'fc0a0000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_mesures',
  'Didactique des grandeurs et mesures — Enseigner la mesure', 'Intermediaire',
  'reponse_courte',
  'Vous enseignez les grandeurs et mesures en CE1 et souhaitez concevoir une activité de découverte pour la notion de masse. Décrivez en une phrase le type d''activité concrète que vous proposeriez pour faire percevoir la grandeur « masse » avant d''introduire le kilogramme comme unité.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Comparer des objets en les soupesant","Soupeser des objets et les classer du plus léger au plus lourd","Utiliser une balance Roberval pour comparer la masse de deux objets","Classer des objets du plus léger au plus lourd en les soupesant","soupeser","comparaison directe avec une balance","comparer des masses avec une balance Roberval","activité de comparaison directe par soupesage"]}'::jsonb,
  'L''activité fondamentale pour faire percevoir la grandeur « masse » avant d''introduire les unités est la comparaison directe par soupesage ou par utilisation d''une balance Roberval (balance à deux plateaux). Les élèves prennent des objets dans chaque main et déterminent lequel est le plus lourd, puis classent plusieurs objets du plus léger au plus lourd. La balance Roberval permet de vérifier et d''affiner ces comparaisons. Cette étape correspond à la phase 2 de la progression en grandeurs et mesures (comparaison directe). Elle est essentielle car elle donne du sens à la grandeur « masse » : l''élève ressent physiquement la différence de masse avant de la quantifier. On peut ensuite passer à la comparaison indirecte avec des étalons arbitraires (combien de billes faut-il pour équilibrer cet objet ?) avant d''introduire le gramme et le kilogramme. Éduscol et Vergnaud insistent sur cette progression sensorielle : la manipulation physique construit l''intuition de la grandeur, qui est le socle de la mesure.',
  'Introduire directement le kilogramme et la balance graduée sans passer par l''étape de comparaison directe. Les élèves lisent alors un nombre sur une balance sans comprendre ce que signifie « avoir une masse de 2 kg ».',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
