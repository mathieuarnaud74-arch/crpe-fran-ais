-- Série 8 : Statistiques et graphiques — Lecture critique
-- 7 questions, Intermédiaire, free
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte
-- Domaine : organisation_donnees (aucun exercice existant dans ce domaine)

-- Q1 — AMORCE — QCM — Lire un diagramme en barres
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0080000-0000-0000-0000-000000000001',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques — Lecture critique',
  'Intermediaire',
  'qcm',
  'Dans une classe de 30 élèves, les résultats à un contrôle sont : 5 élèves ont eu entre 0 et 5, 8 élèves entre 5 et 10, 12 élèves entre 10 et 15, et 5 élèves entre 15 et 20. Quel est le pourcentage d''élèves ayant obtenu 10 ou plus ?',
  NULL,
  '[{"id":"a","label":"Environ 57 %"},{"id":"b","label":"40 %"},{"id":"c","label":"Environ 43 %"},{"id":"d","label":"60 %"}]',
  '{"mode":"single_choice","value":"a"}',
  'Élèves ayant 10 ou plus : 12 + 5 = 17 élèves. Pourcentage = 17/30 × 100 ≈ 56,7 %, soit environ 57 %. Détail : on additionne les effectifs des classes [10 ; 15[ et [15 ; 20], puis on calcule la fréquence en pourcentage. 17/30 = 0,5667... ≈ 56,7 %. La réponse « 40 % » correspond à 12/30 (oublier les 5 élèves entre 15 et 20). La réponse « 60 % » arrondit trop généreusement.',
  'Oublier de cumuler toutes les classes concernées. Ne prendre que la classe [10 ; 15[ (= 12 élèves = 40 %) en oubliant les élèves ayant entre 15 et 20.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Moyenne et médiane
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0080000-0000-0000-0000-000000000002',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques — Lecture critique',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la moyenne et la médiane d''une série de données sont toujours égales.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX. La moyenne et la médiane ne sont égales que dans des cas particuliers (distribution symétrique par exemple). Contre-exemple : pour la série {1, 2, 3, 4, 100}, la moyenne = (1+2+3+4+100)/5 = 110/5 = 22, tandis que la médiane = 3 (la valeur centrale). La moyenne est sensible aux valeurs extrêmes (ici, 100 « tire » la moyenne vers le haut), alors que la médiane ne l''est pas. Au CRPE, il est fondamental de distinguer ces deux indicateurs de position et de savoir quand utiliser l''un plutôt que l''autre.',
  'Confondre moyenne et médiane, ou croire qu''elles donnent toujours la même information. La moyenne est sensible aux valeurs extrêmes, pas la médiane.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Calcul de moyenne pondérée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0080000-0000-0000-0000-000000000003',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques — Lecture critique',
  'Intermediaire',
  'reponse_courte',
  'Un élève a obtenu les notes suivantes : 12 (coefficient 2), 15 (coefficient 3) et 9 (coefficient 1). Quelle est sa moyenne pondérée ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["13","13,0","13.0","13/20","13,0/20"]}',
  'Moyenne pondérée = (12×2 + 15×3 + 9×1) / (2+3+1) = (24 + 45 + 9) / 6 = 78/6 = 13. La moyenne pondérée est exactement 13. Attention : la moyenne simple (12+15+9)/3 = 12 est différente de la moyenne pondérée (13) car le coefficient 3 de la meilleure note (15) « pèse » davantage. La moyenne pondérée tient compte de l''importance relative de chaque note.',
  'Calculer la moyenne simple (12+15+9)/3 = 12 au lieu de la moyenne pondérée. Oublier de diviser par la somme des coefficients et non par le nombre de notes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Lecture critique d'un graphique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0080000-0000-0000-0000-000000000004',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques — Lecture critique',
  'Intermediaire',
  'qcm',
  'Un diagramme en barres montre les ventes d''une entreprise : 2023 → 100 000 €, 2024 → 120 000 €. L''axe des ordonnées commence à 95 000 € (et non à 0). Un journaliste écrit : « Les ventes ont explosé, elles ont presque doublé ! » Que peut-on dire ?',
  NULL,
  '[{"id":"a","label":"Le journaliste a raison : visuellement, la barre de 2024 est environ deux fois plus haute"},{"id":"b","label":"Le journaliste se trompe : la hausse réelle est de 20 %, pas de 100 %. L''axe tronqué déforme la perception visuelle"},{"id":"c","label":"Les ventes ont bien doublé : 120 000 = 2 × 60 000"},{"id":"d","label":"On ne peut rien conclure sans voir le graphique"}]',
  '{"mode":"single_choice","value":"b"}',
  'La hausse réelle est de (120 000 − 100 000) / 100 000 = 20 %. C''est une augmentation significative mais très loin d''un doublement (100 %). Le problème vient de l''axe tronqué : en commençant à 95 000 au lieu de 0, la barre de 2023 a une hauteur visuelle de 5 000 unités et celle de 2024 de 25 000 unités — soit un rapport visuel de 5, ce qui donne l''impression d''une explosion des ventes. C''est une technique de manipulation graphique classique. Au CRPE, savoir lire un graphique de manière critique (graduation, origine des axes, échelle) est une compétence attendue.',
  'Se fier à l''impression visuelle d''un graphique sans vérifier l''échelle des axes. Un axe qui ne commence pas à zéro amplifie visuellement les variations.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Réponse courte — Calcul de la médiane
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0080000-0000-0000-0000-000000000005',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques — Lecture critique',
  'Intermediaire',
  'reponse_courte',
  'Voici les temps (en secondes) de 7 coureurs sur 100 m : 12,3 — 11,8 — 13,1 — 12,0 — 11,5 — 12,7 — 12,0. Quelle est la médiane de cette série ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12","12,0","12.0","12 s","12,0 s","12.0 s","12s"]}',
  'Pour trouver la médiane, on ordonne d''abord la série : 11,5 — 11,8 — 12,0 — 12,0 — 12,3 — 12,7 — 13,1. Il y a 7 valeurs (nombre impair), la médiane est la valeur centrale, en 4e position : 12,0 s. Vérification : il y a 3 valeurs avant (11,5 ; 11,8 ; 12,0) et 3 valeurs après (12,3 ; 12,7 ; 13,1). La médiane partage la série ordonnée en deux moitiés égales. L''étendue est 13,1 − 11,5 = 1,6 s. La moyenne = (11,5+11,8+12,0+12,0+12,3+12,7+13,1)/7 = 85,4/7 ≈ 12,2 s.',
  'Oublier de trier la série avant de chercher la médiane. Sans tri, on pourrait prendre la 4e valeur dans l''ordre d''apparition (12,0 — correct par chance ici, mais pas toujours).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Interpréter un diagramme circulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0080000-0000-0000-0000-000000000006',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques — Lecture critique',
  'Intermediaire',
  'qcm',
  'Dans un diagramme circulaire, le secteur « Sport » occupe un angle de 108°. Il y a 200 élèves au total. Combien d''élèves ont choisi « Sport » ?',
  NULL,
  '[{"id":"a","label":"60 élèves"},{"id":"b","label":"54 élèves"},{"id":"c","label":"108 élèves"},{"id":"d","label":"72 élèves"}]',
  '{"mode":"single_choice","value":"a"}',
  'Dans un diagramme circulaire, le cercle complet = 360°. Le secteur « Sport » représente 108°/360° = 0,3 = 30 % du total. Nombre d''élèves = 200 × 30/100 = 60 élèves. Méthode alternative : proportionnalité directe. 360° → 200 élèves, donc 108° → 200 × 108/360 = 200 × 0,3 = 60 élèves. Le distracteur 108 correspond à l''erreur de confondre l''angle et l''effectif. Le distracteur 54 = 108/2 correspond à une division par 2 sans fondement.',
  'Confondre l''angle du secteur (en degrés) avec l''effectif correspondant. 108° ne signifie pas 108 élèves — il faut utiliser la proportionnalité avec 360°.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Probabilité simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0080000-0000-0000-0000-000000000007',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques — Lecture critique',
  'Intermediaire',
  'reponse_courte',
  'Un sac contient 3 boules rouges, 5 boules bleues et 2 boules vertes. On tire une boule au hasard. Quelle est la probabilité de tirer une boule qui n''est pas bleue ? (Donnez la réponse sous forme de fraction irréductible.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/2","0,5","0.5","5/10","50 %","50%"]}',
  'Nombre total de boules = 3 + 5 + 2 = 10. Boules non bleues = 3 + 2 = 5 (rouges + vertes). Probabilité = 5/10 = 1/2. On peut aussi raisonner par complémentaire : P(non bleue) = 1 − P(bleue) = 1 − 5/10 = 1 − 1/2 = 1/2. Les deux méthodes donnent le même résultat. La probabilité est une fraction entre 0 et 1 : ici 1/2 = 0,5 = 50 %. Au CRPE, les questions de probabilité portent souvent sur des expériences aléatoires simples (tirage, lancer de dé), mais il faut maîtriser le vocabulaire : événement, univers, événement contraire.',
  'Oublier de compter toutes les boules (ne prendre que les rouges, oublier les vertes) ou se tromper dans le dénominateur (nombre total d''issues).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
