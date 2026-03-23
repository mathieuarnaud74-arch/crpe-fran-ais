-- Seed: Obstacles épistémologiques — Identification et dépassement (7 exercices)
-- Subdomain: didactique_maths | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc080000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Difficile',
  'qcm',
  'Le concept d''obstacle épistémologique a été introduit par Gaston Bachelard (1938) puis repris en didactique des mathématiques par Guy Brousseau. Quelle est la caractéristique fondamentale d''un obstacle épistémologique ?',
  NULL,
  '[{"id":"a","label":"C''est une connaissance antérieure qui était correcte et efficace dans un certain domaine, mais qui devient source d''erreur lorsqu''on étend le domaine de validité"},{"id":"b","label":"C''est une erreur due à un manque d''attention ou de motivation de l''élève"},{"id":"c","label":"C''est une difficulté liée uniquement au niveau de développement cognitif de l''enfant (stade piagétien)"},{"id":"d","label":"C''est une erreur causée par une mauvaise méthode d''enseignement du professeur"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'L''obstacle épistémologique, selon Bachelard puis Brousseau, est une connaissance antérieure qui a fonctionné avec succès dans un contexte donné mais qui résiste et fait obstacle à l''acquisition d''un savoir nouveau. Ce n''est ni une ignorance, ni une erreur de raisonnement : c''est une connaissance qui a été « trop bien » apprise. Par exemple, la règle « quand on multiplie, le résultat est toujours plus grand » est parfaitement valide pour les entiers naturels (hors 0 et 1), mais devient un obstacle lors de l''introduction de la multiplication par des décimaux inférieurs à 1. L''obstacle épistémologique est constitutif du savoir lui-même — il est inévitable et apparaît dans l''histoire des mathématiques. C''est ce qui le distingue de l''obstacle didactique (lié aux choix d''enseignement) et de l''obstacle ontogénique (lié au développement de l''enfant).',
  'Confondre obstacle épistémologique et simple erreur. L''obstacle est une connaissance qui a été efficace — c''est précisément parce qu''elle a « marché » qu''elle résiste au changement.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc080000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Difficile',
  'vrai_faux',
  'L''idée selon laquelle « multiplier rend toujours plus grand » est un obstacle épistémologique classique en mathématiques. Cet obstacle se manifeste typiquement lorsque les élèves abordent la multiplication de nombres décimaux inférieurs à 1.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est l''un des obstacles épistémologiques les plus étudiés en didactique des mathématiques. Pendant tout le cycle 2 et une grande partie du cycle 3, les élèves travaillent exclusivement avec des entiers naturels. Dans ce domaine, la multiplication donne effectivement toujours un résultat supérieur ou égal à chaque facteur (hors 0 et 1). Cette règle implicite se consolide par des centaines d''exercices réussis. Quand les élèves rencontrent 0,5 × 4 = 2, le résultat (2) est inférieur à l''un des facteurs (4), ce qui contredit leur « théorème en acte » (au sens de Vergnaud). De même, 0,3 × 0,6 = 0,18 produit un résultat inférieur aux deux facteurs. Cet obstacle apparaît aussi dans l''histoire des mathématiques : les Grecs ne concevaient pas qu''un produit puisse être « plus petit ». Brousseau montre que cet obstacle ne peut être levé par simple explication — il faut des situations de déstabilisation cognitive suivies de reconstruction.',
  'Croire qu''il suffit d''expliquer la règle pour lever l''obstacle. Un obstacle épistémologique résiste à l''explication directe — il faut des situations-problèmes qui créent un conflit cognitif.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc080000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Difficile',
  'qcm',
  'Un élève de CM2 affirme : « 2,45 est plus grand que 2,6 parce que 45 est plus grand que 6. » Quel obstacle épistémologique est ici en jeu ?',
  NULL,
  '[{"id":"a","label":"L''obstacle de la multiplication qui rend toujours plus grand"},{"id":"b","label":"L''obstacle du traitement des décimaux comme des entiers — l''élève applique aux parties décimales les règles de comparaison des entiers naturels"},{"id":"c","label":"L''obstacle ontogénique lié au stade de développement cognitif"},{"id":"d","label":"L''obstacle didactique lié à l''utilisation de la virgule comme séparateur"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Cet élève manifeste l''obstacle épistémologique majeur de l''extension des règles des entiers aux décimaux. Ayant longtemps travaillé avec les entiers naturels, il a construit le « théorème en acte » (Vergnaud) : « plus un nombre a de chiffres, plus il est grand » et « entre deux nombres de même longueur, on compare chiffre à chiffre ». Il applique cette règle à la partie décimale : 45 > 6, donc 2,45 > 2,6. Or, en écriture décimale, la position (dixièmes, centièmes) prime sur le nombre de chiffres : 2,6 = 2,60, et 60 centièmes > 45 centièmes. Cet obstacle, abondamment documenté par Brousseau et ses collaborateurs, est constitutif de la construction du nombre décimal. Il se manifeste aussi dans l''intercalation (« il n''y a pas de nombre entre 2,5 et 2,6 ») et dans l''écriture (« 2,5 = 2,50 ? Mais 5 ≠ 50 ! »). Les programmes Éduscol recommandent un travail approfondi sur la droite numérique et les conversions entre fractions décimales et écriture à virgule.',
  'Interpréter cette erreur comme un simple manque d''attention. C''est un obstacle épistémologique profond : la connaissance des entiers, solidement construite, interfère avec la compréhension de la numération décimale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc080000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Difficile',
  'reponse_courte',
  'Brousseau distingue trois types d''obstacles dans l''apprentissage des mathématiques. L''obstacle épistémologique est lié au savoir lui-même. L''obstacle ontogénique est lié au développement de l''enfant. Comment s''appelle le troisième type d''obstacle, celui qui est lié aux choix d''enseignement (progression, représentations utilisées, contrat didactique) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["obstacle didactique","l''obstacle didactique","Obstacle didactique","L''obstacle didactique","didactique"]}'::jsonb,
  'Il s''agit de l''obstacle didactique. Selon la classification de Brousseau, cet obstacle est engendré par les choix d''enseignement eux-mêmes : la progression adoptée, les représentations privilégiées, les exemples utilisés, le contrat didactique implicite. Par exemple, si un enseignant n''utilise que des triangles équilatéraux « pointe en haut » pour illustrer le triangle, les élèves développeront un « prototype » de triangle qui leur fera rejeter un triangle quelconque orienté différemment. Contrairement à l''obstacle épistémologique (inévitable, lié à la nature du savoir) et à l''obstacle ontogénique (lié à la maturation cognitive de l''enfant), l''obstacle didactique est évitable : un autre choix d''enseignement permettrait de ne pas le créer. C''est pourquoi Brousseau insiste sur la responsabilité de l''enseignant dans l''analyse a priori des situations didactiques.',
  'Confondre obstacle didactique et obstacle épistémologique. L''obstacle didactique est évitable (il dépend des choix pédagogiques), tandis que l''obstacle épistémologique est inhérent à la construction du savoir.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc080000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Difficile',
  'qcm',
  'L''introduction des nombres négatifs génère plusieurs obstacles épistémologiques. Lequel des exemples suivants illustre le mieux un obstacle épistémologique spécifique aux nombres négatifs ?',
  NULL,
  '[{"id":"a","label":"L''élève ne sait pas que les nombres négatifs existent"},{"id":"b","label":"L''élève affirme qu''on ne peut pas soustraire un nombre plus grand d''un nombre plus petit (« 3 – 7, c''est impossible ») parce que la soustraction a toujours été définie comme « enlever » dans les entiers naturels"},{"id":"c","label":"L''élève confond le signe « moins » de la soustraction et le signe « moins » du nombre négatif par inattention"},{"id":"d","label":"L''élève n''a pas encore atteint le stade formel de Piaget nécessaire à la compréhension des négatifs"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''affirmation « on ne peut pas soustraire un plus grand d''un plus petit » est un obstacle épistémologique classique. Pendant des années, les élèves ont appris et vérifié que la soustraction retire une quantité d''une quantité plus grande. Ce théorème en acte (Vergnaud) est parfaitement valide dans les entiers naturels. Quand les nombres relatifs sont introduits, cette connaissance résiste : « 3 – 7 est impossible ». C''est exactement la structure d''un obstacle épistémologique selon Bachelard-Brousseau : une connaissance antérieure, efficace dans son domaine, qui fait obstacle à l''extension du concept. Historiquement, les mathématiciens eux-mêmes ont résisté aux nombres négatifs pendant des siècles (les Grecs, puis encore au XVIe siècle). La réponse A décrit une ignorance (pas un obstacle), C décrit une confusion ponctuelle, et D décrit un obstacle ontogénique.',
  'Confondre obstacle épistémologique et ignorance. L''obstacle n''est pas « ne pas savoir » — c''est « savoir quelque chose qui empêche d''apprendre le nouveau savoir ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc080000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Difficile',
  'qcm',
  'Vous enseignez en CM2 et vous souhaitez concevoir une activité pour aider les élèves à dépasser l''obstacle « multiplier rend toujours plus grand ». Selon le cadre théorique de Brousseau (situation a-didactique), quelle approche est la plus pertinente ?',
  NULL,
  '[{"id":"a","label":"Expliquer directement la règle : « quand on multiplie par un nombre inférieur à 1, le résultat est plus petit »"},{"id":"b","label":"Proposer une situation-problème où l''élève est amené à constater par lui-même que son anticipation (résultat plus grand) est contredite par le résultat effectif, provoquant un conflit cognitif"},{"id":"c","label":"Faire mémoriser des exemples de multiplications donnant un résultat plus petit (0,5 × 4 = 2)"},{"id":"d","label":"Éviter de confronter les élèves à ce type de calcul pour ne pas les perturber"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Selon Brousseau, un obstacle épistémologique ne se lève pas par simple transmission d''information (réponse A) ni par mémorisation (réponse C). Il faut concevoir une situation a-didactique — une situation où le milieu (le problème lui-même) fournit des rétroactions qui contredisent les anticipations erronées de l''élève. Par exemple, on peut demander aux élèves de prédire si 0,5 × 8 sera plus grand ou plus petit que 8, puis de vérifier avec une calculatrice ou du matériel. La contradiction entre la prédiction (« plus grand ») et le résultat (4, plus petit que 8) provoque un conflit cognitif — un déséquilibre au sens de Piaget — qui ouvre la possibilité d''une restructuration des connaissances. L''enseignant orchestre ensuite la phase de formulation (les élèves verbalisent leur découverte) puis l''institutionnalisation (formalisation de la nouvelle règle). Éviter le conflit (réponse D) revient à laisser l''obstacle intact.',
  'Croire qu''il suffit d''énoncer la règle pour lever un obstacle. L''obstacle épistémologique résiste précisément à l''explication directe — il faut créer les conditions d''un conflit cognitif au sein d''une situation a-didactique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc080000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_obstacles_epistemologiques',
  'Obstacles épistémologiques — Identification et dépassement', 'Difficile',
  'qcm',
  'Un élève de 6e résout le problème suivant : « Un escargot avance de 0,8 m par minute. En combien de minutes parcourra-t-il 2 m ? » Il écrit : « 0,8 × ? = 2, donc ? = 2 × 0,8 = 1,6 minutes. » Analysez cette production à travers le prisme des obstacles épistémologiques.',
  NULL,
  '[{"id":"a","label":"L''élève maîtrise le problème mais a fait une erreur de calcul isolée"},{"id":"b","label":"L''élève manifeste l''obstacle « la multiplication rend plus grand » : pour obtenir un résultat plus grand (2 > 0,8), il multiplie au lieu de diviser, car diviser « rendrait plus petit »"},{"id":"c","label":"L''élève ne connaît pas la division des décimaux"},{"id":"d","label":"L''élève a confondu la vitesse et la distance par manque d''attention à l''énoncé"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Cette erreur est une manifestation directe de l''obstacle « multiplier rend plus grand / diviser rend plus petit ». L''élève identifie correctement l''équation 0,8 × ? = 2 et comprend que le résultat (2) doit être supérieur à 0,8. Son raisonnement implicite est : « pour obtenir un nombre plus grand, il faut multiplier ». Il effectue donc 2 × 0,8 = 1,6 au lieu de 2 ÷ 0,8 = 2,5. Cet obstacle est particulièrement tenace car il s''appuie sur des années d''expérience réussie avec les entiers : dans les entiers naturels, le quotient est toujours inférieur ou égal au dividende (hors division par 1), et le produit est toujours supérieur ou égal aux facteurs (hors 0 et 1). L''extension aux décimaux bouleverse ces régularités. La bonne réponse est 2 ÷ 0,8 = 2,5 minutes, un quotient supérieur au dividende — résultat contre-intuitif pour l''élève. Brousseau montre que ce type d''erreur n''est pas accidentel mais structurel : c''est le signe d''un obstacle épistémologique actif.',
  'Réduire cette erreur à un « manque de connaissances ». L''élève sait poser l''équation 0,8 × ? = 2, ce qui montre une bonne compréhension du problème. Son erreur vient d''un obstacle épistémologique sur la relation entre opération et taille du résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
