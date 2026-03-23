-- Seed: Différenciation pédagogique en mathématiques (7 exercices)
-- Subdomain: didactique_maths | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0e0000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques', 'Difficile',
  'qcm',
  'En didactique des mathématiques, on distingue plusieurs formes de différenciation pédagogique. Laquelle de ces propositions décrit correctement les quatre axes classiques de différenciation ?',
  NULL,
  '[{"id":"a","label":"Différenciation par le contenu (ce que l''élève apprend), par le processus (comment il apprend), par la production (comment il montre ce qu''il a appris) et par l''environnement (les conditions dans lesquelles il apprend)"},{"id":"b","label":"Différenciation par le niveau scolaire, par l''âge, par le genre et par la langue maternelle"},{"id":"c","label":"Différenciation par le manuel utilisé, par la salle de classe, par l''enseignant et par l''horaire"},{"id":"d","label":"Différenciation par la notation, par le redoublement, par le soutien scolaire et par les devoirs à la maison"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les quatre axes de différenciation pédagogique, théorisés notamment par Carol Ann Tomlinson et repris dans les recommandations Éduscol, sont : (1) le contenu — on adapte ce que l''élève doit apprendre ou le niveau de complexité du savoir visé ; (2) le processus — on varie les démarches d''apprentissage (manipulation, recherche, travail guidé, travail autonome) ; (3) la production — on diversifie les modalités par lesquelles l''élève démontre sa compréhension (exercice écrit, exposé oral, schéma, construction) ; (4) l''environnement — on aménage les conditions d''apprentissage (travail individuel, en binôme, en groupe, disposition de la salle, temps accordé). En mathématiques, Vergnaud insiste sur le fait que la différenciation doit porter sur la complexité des situations proposées (champ conceptuel plus ou moins étendu) plutôt que sur la quantité d''exercices. Brousseau ajoute que les variables didactiques d''une situation permettent de différencier sans changer la nature du problème : on modifie les nombres, le contexte, les contraintes pour adapter la difficulté tout en visant le même objectif d''apprentissage.',
  'Réduire la différenciation à « donner plus d''exercices aux rapides et moins aux lents ». C''est une différenciation par le volume, pas par la complexité — elle ne répond pas aux besoins d''apprentissage.',
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
  'fc0e0000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques', 'Difficile',
  'vrai_faux',
  'En mathématiques, différencier signifie principalement donner moins d''exercices aux élèves en difficulté et davantage d''exercices aux élèves avancés. Cette approche par le volume est la forme de différenciation la plus recommandée par la recherche en didactique.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'La différenciation par le volume (donner plus ou moins d''exercices) est précisément ce que la recherche en didactique des mathématiques déconseille. Cette approche ne modifie pas la nature de l''apprentissage : l''élève en difficulté fait moins d''exercices du même type (sans mieux comprendre) et l''élève avancé en fait davantage (sans progresser vers de nouveaux apprentissages). La différenciation efficace porte sur la complexité, pas sur la quantité. Pour un même objectif d''apprentissage — par exemple, résoudre un problème additif —, on peut varier : les nombres utilisés (entiers simples vs. grands nombres vs. décimaux), le nombre d''étapes de résolution, la présence ou l''absence d''informations distractrices, le degré d''autonomie attendu. Vergnaud montre que dans un même champ conceptuel, les situations varient en complexité selon les structures relationnelles en jeu. Brousseau propose d''agir sur les variables didactiques de la situation : en modifiant les valeurs numériques, le contexte ou les contraintes, on ajuste la difficulté sans changer l''enjeu mathématique. Éduscol recommande explicitement de « différencier par la complexité de la tâche et non par la quantité de travail demandée ».',
  'Croire que la différenciation se résume à la quantité de travail. C''est la forme la plus répandue mais la moins efficace. Elle occupe les élèves sans répondre à leurs besoins d''apprentissage.',
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
  'fc0e0000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques', 'Difficile',
  'qcm',
  'Parmi les stratégies d''étayage (scaffolding) suivantes, laquelle est la plus pertinente pour aider un élève de CE2 qui bloque sur un problème de partage (division) sans lui donner la réponse ?',
  NULL,
  '[{"id":"a","label":"Lui donner directement la réponse pour qu''il passe à l''exercice suivant"},{"id":"b","label":"Lui proposer du matériel de manipulation (jetons, cubes) pour représenter concrètement la situation de partage, et lui poser des questions guidantes : « Combien d''objets dois-tu distribuer ? En combien de parts ? »"},{"id":"c","label":"Le laisser chercher seul sans aucune aide pendant 30 minutes"},{"id":"d","label":"Lui demander de recopier l''énoncé trois fois pour mieux le comprendre"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''étayage (scaffolding) est un concept central en didactique, issu des travaux de Bruner et directement lié à la zone proximale de développement de Vygotsky. Il consiste à fournir une aide temporaire et ajustée qui permet à l''élève de réussir une tâche qu''il ne pourrait pas accomplir seul, tout en maintenant l''enjeu cognitif de la situation. En mathématiques, l''étayage prend plusieurs formes : proposer du matériel de manipulation (passer du symbolique au concret), reformuler le problème, décomposer la tâche en étapes, poser des questions guidantes (« Que sais-tu ? Que cherches-tu ? »). L''essentiel est que l''étayage soit progressif et dégradé : on aide le minimum nécessaire pour que l''élève reprenne son cheminement. Brousseau met en garde contre l''« effet Topaze » : si l''enseignant simplifie tellement la tâche que la réponse devient évidente, l''élève n''apprend rien. Vergnaud insiste sur le fait que l''étayage doit cibler les « schèmes » de l''élève : on identifie où le raisonnement bloque et on intervient sur ce point précis. Éduscol recommande l''étayage comme outil privilégié de différenciation en temps réel.',
  'Confondre étayage et simplification excessive. L''étayage maintient l''exigence cognitive ; la simplification la supprime (effet Topaze de Brousseau).',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Vergnaud / Vygotsky',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0e0000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques', 'Difficile',
  'qcm',
  'Le travail en groupes hétérogènes est une modalité de différenciation fréquemment recommandée en mathématiques. Quel en est le principal avantage didactique selon les recherches ?',
  NULL,
  '[{"id":"a","label":"Cela permet à l''enseignant de ne rien faire pendant que les élèves travaillent"},{"id":"b","label":"Les interactions entre élèves de niveaux différents génèrent des conflits socio-cognitifs : l''élève qui explique restructure ses propres connaissances, et l''élève qui écoute bénéficie d''une explication formulée dans un langage proche du sien"},{"id":"c","label":"Les élèves avancés font le travail à la place des élèves en difficulté, ce qui fait gagner du temps"},{"id":"d","label":"Les groupes hétérogènes sont plus faciles à constituer que les groupes homogènes"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le travail en groupes hétérogènes tire sa force du conflit socio-cognitif, concept développé par Doise et Mugny dans le prolongement des travaux de Piaget et Vygotsky. Quand des élèves de niveaux différents collaborent sur un problème mathématique, ils confrontent des procédures et des représentations différentes. Cette confrontation crée un déséquilibre cognitif qui oblige chacun à réorganiser ses connaissances. L''élève qui explique sa démarche à un camarade doit la mettre en mots, l''expliciter et parfois la justifier — ce processus de verbalisation renforce sa propre compréhension (effet tuteur). L''élève qui reçoit l''explication bénéficie d''une reformulation souvent plus accessible que celle de l''enseignant, car exprimée dans un registre langagier proche. Vygotsky montre que l''apprentissage se situe dans la zone proximale de développement : ce que l''élève peut faire avec l''aide d''un pair aujourd''hui, il pourra le faire seul demain. Vergnaud ajoute que les échanges entre pairs favorisent l''explicitation des théorèmes-en-acte, ces connaissances implicites que l''élève utilise sans les formuler. Éduscol recommande d''alterner groupes hétérogènes (pour les interactions) et groupes homogènes (pour un enseignement ciblé) selon les objectifs.',
  'Croire que le groupe hétérogène fonctionne spontanément. Sans régulation de l''enseignant, les élèves avancés peuvent monopoliser la tâche ou l''élève en difficulté peut rester passif.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud / Vygotsky',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0e0000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques', 'Difficile',
  'reponse_courte',
  'Vygotsky a théorisé le concept selon lequel l''apprentissage est le plus efficace quand la tâche proposée se situe entre ce que l''élève peut faire seul et ce qu''il ne peut pas encore faire, même avec de l''aide. Comment appelle-t-on cette zone ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["zone proximale de développement","Zone proximale de développement","ZPD","la zone proximale de développement","zone prochaine de développement","Zone Proximale de Développement"]}'::jsonb,
  'La zone proximale de développement (ZPD), théorisée par Lev Vygotsky, est l''espace entre le niveau de développement actuel de l''élève (ce qu''il peut faire seul) et son niveau de développement potentiel (ce qu''il peut faire avec l''aide d''un adulte ou d''un pair plus compétent). C''est dans cette zone que l''apprentissage est le plus productif : la tâche est suffisamment difficile pour créer un défi cognitif, mais pas au point de décourager l''élève. En didactique des mathématiques, la ZPD a des implications majeures pour la différenciation : chaque élève a une ZPD différente, et une même tâche peut être dans la ZPD de certains élèves mais hors de portée pour d''autres, ou déjà maîtrisée par d''autres encore. Différencier, c''est proposer à chaque élève des tâches situées dans sa ZPD. Brousseau complète cette idée avec la notion de « milieu » : la situation didactique doit être conçue pour que l''élève puisse interagir avec le problème dans sa ZPD, grâce aux rétroactions du milieu. Vergnaud ajoute que la ZPD ne se mesure pas abstraitement mais en référence aux schèmes et aux classes de situations : un élève qui maîtrise les problèmes additifs simples a une ZPD qui inclut les problèmes additifs à plusieurs étapes.',
  'Confondre ZPD et niveau scolaire. La ZPD est spécifique à chaque apprentissage : un élève peut être avancé en géométrie mais avoir une ZPD étroite en numération.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vygotsky / Vergnaud / Brousseau',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0e0000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques', 'Difficile',
  'qcm',
  'Vous enseignez la résolution de problèmes multiplicatifs en CM1. Votre classe est très hétérogène. Vous souhaitez concevoir une séance différenciée sur le même objectif (résoudre un problème relevant de la multiplication). Laquelle de ces organisations est la plus pertinente ?',
  NULL,
  '[{"id":"a","label":"Donner le même problème à tous les élèves avec les mêmes nombres et la même présentation"},{"id":"b","label":"Proposer trois versions du même problème en faisant varier les variables didactiques : nombres plus simples et contexte concret pour le groupe 1, nombres plus grands et contexte semi-abstrait pour le groupe 2, nombres décimaux et informations supplémentaires à trier pour le groupe 3"},{"id":"c","label":"Donner un problème de multiplication au groupe avancé et un problème d''addition au groupe en difficulté"},{"id":"d","label":"Faire travailler uniquement les élèves en difficulté et donner un temps libre aux autres"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La différenciation la plus efficace en résolution de problèmes consiste à proposer des versions du même problème en faisant varier les variables didactiques, concept central chez Brousseau. Les variables didactiques sont les éléments de la situation que l''enseignant peut modifier pour ajuster la complexité sans changer la nature mathématique du problème. Pour un problème multiplicatif, on peut varier : les nombres (entiers simples → grands entiers → décimaux), le nombre d''étapes (une opération → deux opérations → problème à étapes multiples), la présence de données inutiles, le degré d''abstraction du contexte (concret et familier → semi-abstrait → abstrait). L''avantage majeur de cette approche est que tous les élèves travaillent le même objectif d''apprentissage (la multiplication) et peuvent participer à la mise en commun. Vergnaud montre que dans le champ conceptuel des structures multiplicatives, la complexité varie selon le type de relation (proportionnalité simple, produit de mesures, comparaison multiplicative) et les valeurs numériques utilisées. Éduscol recommande cette différenciation par les variables didactiques comme levier principal de gestion de l''hétérogénéité en mathématiques.',
  'Différencier en changeant le domaine mathématique (addition pour les faibles, multiplication pour les forts). Cela crée un écart de programme et ne répond pas au besoin de tous les élèves de travailler la multiplication.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0e0000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_differenciation_maths',
  'Différenciation pédagogique en mathématiques', 'Difficile',
  'reponse_courte',
  'Un élève de CE2 ne parvient pas à résoudre des problèmes soustractifs (recherche du complément). Il sait poser et calculer des soustractions, mais ne reconnaît pas les situations où il faut soustraire. En tant qu''enseignant, vous constatez que cet élève a un écart entre ses compétences procédurales (il sait calculer) et ses compétences conceptuelles (il ne sait pas quand soustraire). Décrivez en une phrase la stratégie de différenciation que vous mettez en place pour l''aider.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Lui proposer des situations concrètes de manipulation avec du matériel pour donner du sens à la soustraction comme recherche du complément","Lui faire manipuler du matériel concret pour vivre des situations de complément","Utiliser du matériel de manipulation pour représenter des situations de recherche du complément","Travailler le sens de la soustraction avec des situations concrètes de manipulation","manipulation concrète de situations de complément","situations de manipulation pour donner du sens à la soustraction"]}'::jsonb,
  'Cet élève illustre un cas classique en didactique des mathématiques : la maîtrise procédurale (savoir-faire) sans compréhension conceptuelle (savoir). Il peut poser 45 - 28 = 17, mais face au problème « Lucie a 28 billes, elle en veut 45, combien doit-elle en gagner ? », il ne reconnaît pas la soustraction. La stratégie de différenciation consiste à revenir au concret pour construire le sens. Vergnaud montre que le champ conceptuel des structures additives comprend plusieurs catégories de problèmes (transformation, comparaison, composition, recherche du complément) qui ne mobilisent pas les mêmes schèmes. L''élève a un schème pour « calculer une soustraction » mais pas pour « identifier une situation de complément ». L''étayage doit cibler cette lacune spécifique : proposer des situations concrètes de complément avec du matériel (jetons, barres de cubes) pour que l''élève vive physiquement l''écart entre deux quantités. Brousseau insiste sur le fait que c''est la situation elle-même — et non l''explication de l''enseignant — qui doit faire émerger le besoin de soustraire. Vygotsky ajoute que l''intervention se situe dans la ZPD de l''élève : il a le prérequis (la technique opératoire) mais a besoin d''aide pour construire le sens.',
  'Se contenter de refaire des exercices de calcul posé. L''élève sait déjà calculer — son problème est de reconnaître les situations où il faut soustraire, ce qui nécessite un travail sur le sens, pas sur la technique.',
  'valide',
  'Génération Claude — Terminologie Éduscol / Vergnaud / Brousseau / Vygotsky',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
