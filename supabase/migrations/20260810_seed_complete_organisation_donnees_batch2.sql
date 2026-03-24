-- ============================================================
-- Batch 2 : Compléter 16 séries organisation_donnees (Q8, Q9, Q10)
-- Sous-domaine : organisation_donnees | Subject : Mathematiques
-- ============================================================

-- ============================================================
-- 1. math_mediane_quartiles (prefix=fb040000)
-- ============================================================

-- Q8 — reponse_courte — Médiane à partir d'un tableau d'effectifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb040000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation',
  'Avance',
  'reponse_courte',
  'Dans une classe de 20 élèves, les notes à un contrôle sont réparties ainsi : note 6 → 2 élèves, note 8 → 3 élèves, note 10 → 5 élèves, note 12 → 4 élèves, note 14 → 3 élèves, note 16 → 2 élèves, note 18 → 1 élève. Déterminer la médiane de cette série.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["11","11/20"]}'::jsonb,
  'L''effectif total est 20 (pair). La médiane est la demi-somme des 10ᵉ et 11ᵉ valeurs dans la série ordonnée. En calculant les effectifs cumulés : note 6 → 2 ; note 8 → 5 ; note 10 → 10 ; note 12 → 14. La 10ᵉ valeur est 10 (dernier élève du groupe « note 10 ») et la 11ᵉ valeur est 12 (premier élève du groupe « note 12 »). Médiane = (10 + 12) / 2 = 11. La médiane ne correspond pas nécessairement à une note effectivement obtenue par un élève.',
  'Ne pas utiliser les effectifs cumulés et se tromper dans le repérage des valeurs centrales. Autre erreur : prendre directement la note du milieu du tableau (10 ou 12) sans faire la demi-somme.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Interprétation des quartiles dans un contexte scolaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb040000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation',
  'Avance',
  'qcm',
  'Les résultats d''une évaluation nationale portant sur 200 élèves donnent : Q₁ = 8, médiane = 12, Q₃ = 16. On peut en déduire que :',
  NULL,
  '[{"id":"a","label":"Exactement 50 élèves ont une note inférieure ou égale à 8"},{"id":"b","label":"Au moins 50 élèves ont une note inférieure ou égale à 8"},{"id":"c","label":"75 élèves ont une note comprise entre 8 et 16"},{"id":"d","label":"100 élèves ont une note supérieure à 16"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Par définition, Q₁ est la valeur telle qu''au moins 25 % des données lui sont inférieures ou égales. Avec 200 élèves, au moins 25 % × 200 = 50 élèves ont une note ≤ 8. On dit « au moins » et non « exactement » car plusieurs élèves peuvent avoir obtenu exactement la note 8, ce qui fait que le nombre réel peut dépasser 50. De même, au moins 50 % (100 élèves) ont une note ≤ 12 (médiane), et au moins 75 % (150 élèves) ont une note ≤ 16 (Q₃). L''écart interquartile IQR = 16 − 8 = 8 contient environ 50 % des effectifs.',
  'Croire que Q₁ sépare exactement 25 % de l''effectif alors qu''il s''agit d''un seuil minimal, surtout lorsque plusieurs valeurs sont identiques.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Sensibilité des indicateurs aux valeurs extrêmes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb040000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_mediane_quartiles',
  'Médiane et quartiles — Calculs et interprétation',
  'Avance',
  'vrai_faux',
  'On considère la série ordonnée : 2 ; 5 ; 7 ; 9 ; 11 ; 14 ; 16 ; 18 ; 20. Si l''on remplace la valeur 20 par 200, la médiane et les quartiles Q₁ et Q₃ restent inchangés.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La série comporte 9 valeurs. La médiane est la 5ᵉ valeur : 11. Q₁ est la médiane des 4 premières valeurs : (5 + 7) / 2 = 6. Q₃ est la médiane des 4 dernières valeurs : (16 + 18) / 2 = 17. Si l''on remplace 20 par 200, les positions des valeurs centrales ne changent pas : la 5ᵉ valeur reste 11, Q₁ et Q₃ restent identiques. Seule la dernière valeur change, mais elle n''intervient pas dans le calcul des quartiles ni de la médiane. C''est précisément cette propriété qui rend la médiane et les quartiles « robustes » face aux valeurs extrêmes, contrairement à la moyenne qui serait fortement affectée (elle passerait de 11,3 à 31,3).',
  'Penser que tout changement dans la série modifie obligatoirement les indicateurs de position. La médiane et les quartiles ne dépendent que des valeurs centrales et sont insensibles aux variations des valeurs extrêmes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 2. math_moyenne_ponderee (prefix=fb010000)
-- ============================================================

-- Q8 — qcm — Calcul de moyenne pondérée avec classes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb010000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation',
  'Avance',
  'qcm',
  'Les durées (en minutes) de 40 appels téléphoniques sont regroupées en classes : [0 ; 5[ → 12 appels, [5 ; 10[ → 18 appels, [10 ; 15[ → 7 appels, [15 ; 20[ → 3 appels. En utilisant les centres de classe, quelle est la moyenne estimée de la durée des appels ?',
  NULL,
  '[{"id":"a","label":"7,5 min"},{"id":"b","label":"7,625 min"},{"id":"c","label":"6,5 min"},{"id":"d","label":"8,25 min"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les centres de classe sont : 2,5 ; 7,5 ; 12,5 ; 17,5. La moyenne pondérée par les effectifs est : (2,5 × 12 + 7,5 × 18 + 12,5 × 7 + 17,5 × 3) ÷ 40 = (30 + 135 + 87,5 + 52,5) ÷ 40 = 305 ÷ 40 = 7,625 minutes. Le centre de classe est le milieu de chaque intervalle : pour [0 ; 5[, c''est (0 + 5) / 2 = 2,5. On pondère chaque centre par l''effectif de sa classe, puis on divise par l''effectif total. Cette méthode donne une estimation de la moyenne car on remplace chaque valeur individuelle par le centre de sa classe.',
  'Utiliser les bornes des classes (0, 5, 10, 15) au lieu de leurs centres (2,5 ; 7,5 ; 12,5 ; 17,5) pour estimer la moyenne.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Retrouver un coefficient manquant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb010000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation',
  'Avance',
  'reponse_courte',
  'Un élève a obtenu 16 en EPS (coefficient 2), 10 en Mathématiques (coefficient c) et 14 en Français (coefficient 3). Sa moyenne pondérée est 13. Quel est le coefficient c de Mathématiques ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3"]}'::jsonb,
  'On pose l''équation de la moyenne pondérée : (16×2 + 10×c + 14×3) ÷ (2 + c + 3) = 13. Soit (32 + 10c + 42) ÷ (5 + c) = 13. Donc 74 + 10c = 13 × (5 + c) = 65 + 13c. On obtient 74 − 65 = 13c − 10c, soit 9 = 3c, donc c = 3. Vérifions : (32 + 30 + 42) ÷ (2 + 3 + 3) = 104 ÷ 8 = 13. Le coefficient de Mathématiques est bien 3.',
  'Oublier d''ajouter le coefficient inconnu au dénominateur. L''équation correcte a c des deux côtés de l''égalité : au numérateur (10c) et au dénominateur (2 + c + 3).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Paradoxe de Simpson et moyenne pondérée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb010000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation',
  'Avance',
  'vrai_faux',
  'L''école A (10 élèves, moyenne 15) et l''école B (40 élèves, moyenne 12) fusionnent. La moyenne de l''ensemble est 12,6.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'On calcule la moyenne pondérée par les effectifs : (15 × 10 + 12 × 40) ÷ (10 + 40) = (150 + 480) ÷ 50 = 630 ÷ 50 = 12,6. L''affirmation est vraie. La moyenne de l''ensemble est beaucoup plus proche de 12 que de 15 car l''école B est quatre fois plus nombreuse. Cet exemple illustre que la moyenne d''un ensemble n''est pas la moyenne des moyennes : (15 + 12) ÷ 2 = 13,5 ≠ 12,6. Il faut pondérer par les effectifs.',
  'Calculer (15 + 12) ÷ 2 = 13,5 en faisant la moyenne des moyennes. Cette erreur classique est liée au paradoxe de Simpson : la taille des groupes influence fortement la moyenne globale.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 3. math_moyennes_medianes (prefix=c0010000)
-- ============================================================

-- Q8 — qcm — Effet d'une valeur aberrante sur la moyenne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_moyennes_medianes',
  'Moyenne, médiane et étendue',
  'Avance',
  'qcm',
  'Les notes de 7 élèves sont : 10, 11, 12, 12, 13, 14, 14. L''enseignant ajoute un 8ᵉ élève dont la note est 0. Comment évolue la moyenne ?',
  NULL,
  '[{"id":"a","label":"Elle reste inchangée"},{"id":"b","label":"Elle diminue de 12,29 à 10,75"},{"id":"c","label":"Elle diminue de 12 à 10"},{"id":"d","label":"Elle augmente car il y a plus d''élèves"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Moyenne initiale : (10 + 11 + 12 + 12 + 13 + 14 + 14) ÷ 7 = 86 ÷ 7 ≈ 12,29. Avec la note 0 ajoutée : (86 + 0) ÷ 8 = 86 ÷ 8 = 10,75. La moyenne diminue de 12,29 à 10,75, soit une baisse d''environ 1,54 point. Une seule valeur très éloignée (ici 0) peut faire chuter significativement la moyenne. En revanche, la médiane passerait de 12 à (12 + 12) / 2 = 12, elle resterait inchangée. C''est pourquoi la médiane est un indicateur plus robuste que la moyenne face aux valeurs extrêmes.',
  'Penser que l''ajout d''un élève supplémentaire ne modifie pas sensiblement la moyenne. En réalité, une valeur très éloignée du reste de la série tire fortement la moyenne dans sa direction.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Moyenne et étendue ne suffisent pas
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_moyennes_medianes',
  'Moyenne, médiane et étendue',
  'Avance',
  'vrai_faux',
  'Deux séries A = {4 ; 6 ; 8 ; 10 ; 12} et B = {4 ; 4 ; 8 ; 12 ; 12} ont la même moyenne et la même étendue, mais des distributions différentes.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Moyenne de A : (4 + 6 + 8 + 10 + 12) ÷ 5 = 40 ÷ 5 = 8. Étendue de A : 12 − 4 = 8. Moyenne de B : (4 + 4 + 8 + 12 + 12) ÷ 5 = 40 ÷ 5 = 8. Étendue de B : 12 − 4 = 8. Les deux séries ont bien la même moyenne (8) et la même étendue (8). Pourtant, la série A est régulièrement répartie (les valeurs augmentent de 2 en 2), tandis que la série B est concentrée aux extrêmes (deux valeurs à 4 et deux à 12). Cet exemple montre que la moyenne et l''étendue ne suffisent pas à caractériser entièrement une distribution : deux séries très différentes peuvent partager les mêmes indicateurs.',
  'Conclure que deux séries sont identiques parce qu''elles ont les mêmes indicateurs (moyenne, étendue). Plusieurs distributions très différentes peuvent partager les mêmes valeurs de moyenne et d''étendue.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Retrouver une valeur manquante connaissant la moyenne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0010000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_moyennes_medianes',
  'Moyenne, médiane et étendue',
  'Avance',
  'reponse_courte',
  'Un élève a obtenu les notes suivantes : 8, 14, 11 et une note inconnue x. Sa moyenne est exactement 12. Quelle est la valeur de x ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15"]}'::jsonb,
  'La moyenne de 4 valeurs est 12, donc la somme des 4 valeurs est 12 × 4 = 48. On a 8 + 14 + 11 + x = 48, soit 33 + x = 48, donc x = 15. Vérification : (8 + 14 + 11 + 15) ÷ 4 = 48 ÷ 4 = 12. La note manquante est bien 15. Ce type de problème inverse (retrouver une valeur à partir de la moyenne) est classique au CRPE.',
  'Diviser la somme connue par 3 au lieu de soustraire de la somme totale attendue. Il faut d''abord calculer la somme totale (moyenne × effectif), puis soustraire les valeurs connues.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 4. math_probabilites_arbres (prefix=fb0a0000)
-- ============================================================

-- Q8 — reponse_courte — Arbre à trois niveaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0a0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées',
  'Avance',
  'reponse_courte',
  'On lance une pièce équilibrée trois fois de suite. En utilisant un arbre de probabilités, calculer la probabilité d''obtenir exactement deux piles. Donner le résultat sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3/8"]}'::jsonb,
  'L''arbre à trois niveaux comporte 2³ = 8 chemins équiprobables, chacun de probabilité 1/8. Les chemins avec exactement 2 piles sont : (P,P,F), (P,F,P), (F,P,P), soit 3 chemins. P(exactement 2 piles) = 3 × 1/8 = 3/8. On peut aussi utiliser le coefficient binomial C(3,2) = 3 pour compter le nombre de chemins. Cette approche par l''arbre systématique garantit un dénombrement exhaustif et sans oubli.',
  'Ne pas lister tous les chemins possibles et oublier (F,P,P) par exemple. Avec 3 lancers, il faut considérer toutes les positions possibles pour les deux piles parmi les trois lancers.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Arbre et tirage sans remise à 3 épreuves
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0a0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées',
  'Avance',
  'qcm',
  'Un sac contient 2 boules rouges et 3 boules bleues. On tire successivement deux boules sans remise. Quelle est la probabilité d''obtenir une boule rouge puis une boule bleue ?',
  NULL,
  '[{"id":"a","label":"6/25"},{"id":"b","label":"3/10"},{"id":"c","label":"6/20"},{"id":"d","label":"2/5"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Au premier tirage, P(Rouge) = 2/5. Sans remise, il reste 4 boules dont 3 bleues. P(Bleue | Rouge au 1er) = 3/4. On multiplie le long de la branche de l''arbre : P(R puis B) = 2/5 × 3/4 = 6/20 = 3/10. Le distracteur 6/25 correspond au calcul avec remise (2/5 × 3/5). Le distracteur 2/5 ne tient pas compte du second tirage. L''arbre met en évidence que les probabilités du second niveau changent selon le résultat du premier tirage (probabilités conditionnelles).',
  'Calculer comme un tirage avec remise en gardant 3/5 au second tirage (2/5 × 3/5 = 6/25) au lieu de 3/4.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Probabilité totale d'un arbre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0a0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_arbres',
  'Probabilités — Arbres et situations composées',
  'Avance',
  'vrai_faux',
  'Dans un arbre de probabilités, la somme des probabilités de tous les chemins (issues finales) est toujours égale à 1.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Les chemins d''un arbre de probabilités représentent l''ensemble des issues possibles de l''expérience aléatoire, c''est-à-dire l''univers Ω. Puisqu''un et un seul chemin se réalise lors de l''expérience, la somme de toutes les probabilités des chemins doit valoir 1. C''est une conséquence directe de l''axiome P(Ω) = 1. Par exemple, pour deux lancers d''une pièce : P(P,P) + P(P,F) + P(F,P) + P(F,F) = 1/4 + 1/4 + 1/4 + 1/4 = 1. Cette propriété sert aussi de vérification : si la somme ne vaut pas 1, c''est qu''il y a une erreur dans l''arbre.',
  'Penser que la somme des probabilités des chemins peut être différente de 1, ou confondre la somme des probabilités des branches issues d''un nœud (qui vaut 1 à chaque nœud) avec la somme totale des chemins.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 5. math_probabilites_composees (prefix=b00d0000)
-- ============================================================

-- Q8 — vrai_faux — Indépendance et dépendance
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_composees',
  'Probabilités — Situations composées',
  'Avance',
  'vrai_faux',
  'On tire successivement deux cartes SANS remise dans un jeu de 32 cartes. La probabilité d''obtenir deux as est 4/32 × 4/32 = 1/64.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Sans remise, après avoir tiré un premier as, il ne reste que 3 as parmi 31 cartes. La probabilité correcte est : P(2 as) = 4/32 × 3/31 = 12/992 = 3/248. Le calcul 4/32 × 4/32 = 1/64 ne serait valable que dans un tirage AVEC remise, où la composition du jeu ne change pas. Le rapport 3/248 ≈ 0,012 est inférieur à 1/64 ≈ 0,016, ce qui est logique : la probabilité sans remise est plus faible car le deuxième tirage offre moins de chances.',
  'Appliquer la formule du tirage avec remise (probabilités indépendantes) à une situation de tirage sans remise (probabilités dépendantes). Le mode de tirage modifie fondamentalement le calcul.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Principe multiplicatif avancé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_composees',
  'Probabilités — Situations composées',
  'Avance',
  'reponse_courte',
  'Un code de cadenas est composé de 3 chiffres, chacun pouvant aller de 0 à 9, avec la contrainte que les 3 chiffres doivent être distincts. Combien de codes différents sont possibles ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["720"]}'::jsonb,
  'Le premier chiffre peut prendre 10 valeurs (0 à 9). Le deuxième chiffre doit être différent du premier : 9 choix possibles. Le troisième doit être différent des deux premiers : 8 choix possibles. Par le principe multiplicatif : 10 × 9 × 8 = 720 codes. C''est un arrangement de 3 éléments parmi 10 : A(10,3) = 10! / (10−3)! = 10 × 9 × 8 = 720. Sans la contrainte de chiffres distincts, il y aurait 10³ = 1000 codes possibles. La contrainte réduit le nombre de possibilités de 28 %.',
  'Calculer 10³ = 1000 en oubliant la contrainte de chiffres distincts, ou calculer 10 × 9 × 8 × 7 en ajoutant un facteur supplémentaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — qcm — Probabilité conditionnelle dans un tableau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_composees',
  'Probabilités — Situations composées',
  'Avance',
  'qcm',
  'Dans une école de 100 élèves, 60 jouent au football, 40 jouent au tennis, et 20 jouent aux deux sports. On choisit un élève au hasard. Sachant qu''il joue au football, quelle est la probabilité qu''il joue aussi au tennis ?',
  NULL,
  '[{"id":"a","label":"20/100 = 1/5"},{"id":"b","label":"20/60 = 1/3"},{"id":"c","label":"20/40 = 1/2"},{"id":"d","label":"40/60 = 2/3"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'On cherche P(Tennis | Football) = P(Tennis ∩ Football) / P(Football). Il y a 20 élèves qui jouent aux deux sports sur 60 footballeurs. Donc P(Tennis | Football) = 20/60 = 1/3. Le distracteur 1/5 calcule 20/100 (probabilité de l''intersection, pas la probabilité conditionnelle). Le distracteur 1/2 divise par le nombre de joueurs de tennis au lieu de football. Cette situation illustre la différence fondamentale entre probabilité conditionnelle et probabilité de l''intersection.',
  'Diviser par l''effectif total (100) au lieu de l''effectif de la condition (60 footballeurs). Dans une probabilité conditionnelle, le dénominateur est toujours l''effectif de l''événement conditionné.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 6. math_probabilites_equiprobabilite (prefix=fb110000)
-- ============================================================

-- Q8 — reponse_courte — Calcul d'événement composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité',
  'Avance',
  'reponse_courte',
  'On lance un dé équilibré à 6 faces. Quelle est la probabilité d''obtenir un nombre qui est à la fois pair ET supérieur ou égal à 4 ? Donner la réponse sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1/3","2/6"]}'::jsonb,
  'Les nombres pairs sur un dé sont {2, 4, 6}. Les nombres supérieurs ou égaux à 4 sont {4, 5, 6}. L''intersection (pair ET ≥ 4) est {4, 6}, soit 2 issues favorables sur 6 issues possibles. P(pair ET ≥ 4) = 2/6 = 1/3. En situation d''équiprobabilité, pour un événement défini par deux conditions simultanées, on identifie les issues qui vérifient les DEUX conditions à la fois. C''est l''intersection des deux ensembles.',
  'Additionner les deux probabilités P(pair) + P(≥ 4) = 3/6 + 3/6 = 1, ce qui est absurde. Pour « ET », on cherche l''intersection, pas la réunion.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Mise en défaut de l'équiprobabilité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité',
  'Avance',
  'qcm',
  'On lance deux dés équilibrés et on s''intéresse au produit des deux résultats. Parmi les propositions suivantes, laquelle est correcte ?',
  NULL,
  '[{"id":"a","label":"Tous les produits possibles sont équiprobables"},{"id":"b","label":"Le produit 6 est plus probable que le produit 1"},{"id":"c","label":"Le produit le plus probable est 7"},{"id":"d","label":"Le produit 12 a la même probabilité que le produit 36"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le produit 1 ne peut être obtenu que par le couple (1,1), soit 1 issue sur 36 : P = 1/36. Le produit 6 peut être obtenu par les couples (1,6), (2,3), (3,2), (6,1), soit 4 issues sur 36 : P = 4/36 = 1/9. Donc P(produit = 6) = 4/36 > P(produit = 1) = 1/36 : la réponse b est correcte. Les produits ne sont pas équiprobables (a est faux). Le produit 7 ne peut être obtenu que par (1,7) — impossible avec un dé à 6 faces (c est faux). Le produit 36 ne s''obtient que par (6,6), soit P = 1/36, comme le produit 1, mais pas comme le produit 12 (d est faux).',
  'Raisonner comme si les produits étaient équiprobables. Comme pour les sommes, certains produits admettent plus de décompositions que d''autres.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Équiprobabilité et échantillon
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb110000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_equiprobabilite',
  'Probabilités et équiprobabilité',
  'Avance',
  'vrai_faux',
  'On lance un dé équilibré à 6 faces 60 fois. On obtiendra forcément chaque face exactement 10 fois.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''équiprobabilité signifie que chaque face a la même probabilité (1/6) de sortir à chaque lancer, mais cela ne garantit pas une répartition exactement uniforme sur un nombre fini de lancers. Avec 60 lancers, la théorie prédit qu''en MOYENNE chaque face apparaîtra environ 10 fois, mais les résultats réels fluctuent. On pourrait obtenir par exemple : face 1 → 12 fois, face 2 → 8 fois, face 3 → 11 fois, etc. C''est la loi des grands nombres qui assure que les fréquences se rapprochent des probabilités théoriques quand le nombre de lancers tend vers l''infini.',
  'Confondre probabilité théorique et fréquence observée. L''équiprobabilité décrit un modèle théorique ; dans la pratique, les résultats fluctuent autour des valeurs attendues.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 7. math_probabilites_evenements (prefix=c0030000)
-- ============================================================

-- Q8 — qcm — Formule de l'union pour événements non disjoints
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_evenements',
  'Probabilités — Événements et calculs',
  'Avance',
  'qcm',
  'On tire une carte au hasard dans un jeu de 32 cartes. Quelle est la probabilité d''obtenir un cœur ou une figure (roi, dame, valet) ?',
  NULL,
  '[{"id":"a","label":"8/32 + 12/32 = 20/32"},{"id":"b","label":"8/32 + 12/32 − 3/32 = 17/32"},{"id":"c","label":"3/32"},{"id":"d","label":"12/32"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Les événements « cœur » et « figure » ne sont pas incompatibles : le roi, la dame et le valet de cœur sont à l''intersection. P(Cœur) = 8/32 (8 cartes de cœur). P(Figure) = 12/32 (3 figures × 4 couleurs). P(Cœur ∩ Figure) = 3/32 (les 3 figures de cœur). Par la formule d''inclusion-exclusion : P(Cœur ∪ Figure) = 8/32 + 12/32 − 3/32 = 17/32. Le distracteur 20/32 oublie de soustraire l''intersection (les 3 cartes comptées deux fois).',
  'Additionner les probabilités sans soustraire l''intersection quand les événements ne sont pas incompatibles. C''est le piège classique de la formule P(A ∪ B) = P(A) + P(B) appliquée à tort.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Probabilité d'un événement par dénombrement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_evenements',
  'Probabilités — Événements et calculs',
  'Avance',
  'reponse_courte',
  'On lance un dé cubique équilibré à 6 faces. Quelle est la probabilité d''obtenir un nombre premier OU un multiple de 3 ? Donner la réponse sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2/3","4/6"]}'::jsonb,
  'Les nombres premiers de 1 à 6 sont {2, 3, 5}. Les multiples de 3 parmi {1, 2, 3, 4, 5, 6} sont {3, 6}. L''union est {2, 3, 5, 6} (le 3 est dans les deux ensembles mais n''est compté qu''une fois). Il y a 4 issues favorables sur 6 possibles. P = 4/6 = 2/3. On peut aussi appliquer la formule : P(premier ∪ multiple3) = 3/6 + 2/6 − 1/6 = 4/6 = 2/3. L''intersection contient le 3 (qui est à la fois premier et multiple de 3).',
  'Compter le 3 deux fois (une fois comme premier, une fois comme multiple de 3) et obtenir 5/6 au lieu de 4/6. Il faut vérifier si l''intersection est vide ou non.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Propriété de l'événement certain
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0030000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_evenements',
  'Probabilités — Événements et calculs',
  'Avance',
  'vrai_faux',
  'On lance un dé cubique équilibré. L''événement « obtenir un nombre compris entre 1 et 6 inclus » a une probabilité de 1.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''ensemble des issues possibles sur un dé à 6 faces est {1, 2, 3, 4, 5, 6}. L''événement « obtenir un nombre compris entre 1 et 6 » contient toutes les issues possibles : c''est l''univers Ω. Par définition, P(Ω) = 1 : c''est l''événement certain. Quelle que soit la face obtenue, l''événement se réalise toujours. À l''opposé, l''événement impossible (par exemple « obtenir 7 ») a une probabilité de 0. Toute probabilité est comprise entre 0 et 1.',
  'Confondre « événement certain » (probabilité 1) et « événement très probable » (probabilité proche de 1 mais inférieure). Un événement certain se réalise TOUJOURS, sans exception.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 8. math_probabilites_situations_concretes (prefix=d0020000)
-- ============================================================

-- Q8 — qcm — Probabilité avec remise dans un contexte concret
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes',
  'Avance',
  'qcm',
  'Un distributeur automatique de boissons propose 4 boutons : café, thé, chocolat, soupe. Un enfant appuie au hasard sur un bouton, puis un deuxième enfant fait de même (indépendamment). Quelle est la probabilité que les deux enfants choisissent la même boisson ?',
  NULL,
  '[{"id":"a","label":"1/4"},{"id":"b","label":"1/16"},{"id":"c","label":"4/16"},{"id":"d","label":"1/2"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Il y a 4 × 4 = 16 couples de choix possibles, tous équiprobables. Les couples où les deux enfants choisissent la même boisson sont : (café, café), (thé, thé), (chocolat, chocolat), (soupe, soupe), soit 4 couples favorables. P = 4/16 = 1/4. Autrement dit, quel que soit le choix du premier enfant, la probabilité que le second fasse le même choix est 1/4. Ce résultat illustre que même avec seulement 4 options, la probabilité de coïncidence est de 25 %, ce qui est loin d''être négligeable.',
  'Répondre 1/16 en ne comptant qu''un seul couple favorable (par exemple café-café) au lieu des 4 possibles, ou répondre 1/2 par intuition.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Probabilité dans un tirage au sort scolaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes',
  'Avance',
  'qcm',
  'Dans une classe de 25 élèves, un enseignant tire au sort 3 noms pour un exposé. Lucie fait partie de la classe. Quelle est la probabilité que Lucie soit parmi les 3 élèves tirés ?',
  NULL,
  '[{"id":"a","label":"1/25"},{"id":"b","label":"3/25"},{"id":"c","label":"1/3"},{"id":"d","label":"3/22"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Par symétrie, chaque élève a la même probabilité d''être tiré. On tire 3 élèves parmi 25. La probabilité que Lucie figure parmi les tirés est 3/25. On peut le justifier autrement : P(Lucie est tirée) = 1 − P(Lucie n''est pas tirée). P(non tirée au 1er tirage) = 24/25, P(non tirée au 2ᵉ | non au 1er) = 23/24, P(non tirée au 3ᵉ | non aux 2 premiers) = 22/23. P(jamais tirée) = 24/25 × 23/24 × 22/23 = 22/25. Donc P(tirée) = 1 − 22/25 = 3/25.',
  'Répondre 1/25 en ne considérant qu''un seul tirage au lieu de 3, ou 1/3 en confondant le nombre de places avec la probabilité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — qcm — Problème de probabilité dans un jeu de société
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0020000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_situations_concretes',
  'Probabilités — Situations concrètes',
  'Avance',
  'qcm',
  'Dans un jeu de société, un joueur doit tirer un jeton parmi 12 jetons numérotés de 1 à 12. Il gagne s''il tire un nombre pair supérieur à 6. Quelle est la probabilité de gagner ?',
  NULL,
  '[{"id":"a","label":"3/12 soit 1/4"},{"id":"b","label":"6/12 soit 1/2"},{"id":"c","label":"2/12 soit 1/6"},{"id":"d","label":"4/12 soit 1/3"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les nombres pairs supérieurs à 6 parmi {1, 2, 3, ..., 12} sont : 8, 10, 12. Il y a 3 issues favorables sur 12 possibles. P(gagner) = 3/12 = 1/4. Attention à l''expression « pair supérieur à 6 » : il faut satisfaire les DEUX conditions simultanément. Les nombres pairs sont {2, 4, 6, 8, 10, 12}. Les nombres supérieurs à 6 sont {7, 8, 9, 10, 11, 12}. L''intersection (pair ET > 6) est {8, 10, 12}.',
  'Compter 6 dans les nombres « pairs supérieurs à 6 » alors que 6 n''est pas strictement supérieur à 6. Toujours vérifier si la borne est incluse ou exclue.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 9. math_probabilites_vrai_ou_faux (prefix=d0010000)
-- ============================================================

-- Q8 — vrai_faux — Probabilité et fréquence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?',
  'Avance',
  'vrai_faux',
  'Si la probabilité d''un événement est 0, cela signifie que cet événement ne peut jamais se produire.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai dans le cadre des probabilités sur un univers fini (ce qui est le cas au CRPE et en cycle 3). Un événement de probabilité 0 est un événement impossible : il ne contient aucune issue favorable. Par exemple, obtenir 7 en lançant un dé à 6 faces est un événement impossible de probabilité 0. De même, un événement de probabilité 1 est un événement certain : il se réalise toujours. Ces deux cas limites encadrent toutes les probabilités : 0 ≤ P(A) ≤ 1 pour tout événement A.',
  'En probabilités continues (hors programme du CRPE), un événement de probabilité 0 peut théoriquement se produire. Mais dans le cadre du programme, probabilité 0 = événement impossible.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Indépendance de deux événements
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?',
  'Avance',
  'vrai_faux',
  'On lance un dé équilibré et une pièce de monnaie équilibrée. Les événements « obtenir un 6 sur le dé » et « obtenir pile avec la pièce » sont indépendants.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Le résultat du dé n''influence pas le résultat de la pièce, et réciproquement. Deux événements sont indépendants quand la réalisation de l''un ne modifie pas la probabilité de l''autre. On peut vérifier : P(6 ET Pile) = P(6) × P(Pile) = 1/6 × 1/2 = 1/12. Cette égalité P(A ∩ B) = P(A) × P(B) est le critère mathématique de l''indépendance. Les expériences portent sur des objets physiquement distincts, ce qui rend l''indépendance intuitive ici. Attention : « indépendant » ne signifie pas « incompatible ». Deux événements incompatibles ne peuvent pas être indépendants (sauf si l''un d''eux est impossible).',
  'Confondre indépendance et incompatibilité. Deux événements incompatibles (ne pouvant se produire ensemble) sont en fait dépendants : si l''un se produit, l''autre ne peut pas se produire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Probabilité conditionnelle piège
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd0010000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_probabilites_vrai_ou_faux',
  'Probabilités — Vrai ou faux ?',
  'Avance',
  'vrai_faux',
  'Un sac contient 5 boules noires et 5 boules blanches. On tire une boule au hasard. Si elle est noire, la probabilité que la prochaine boule tirée (sans remise) soit aussi noire est 5/10.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Après avoir tiré une boule noire (sans la remettre), il reste 4 boules noires et 5 boules blanches, soit 9 boules au total. La probabilité de tirer une boule noire au second tirage est donc 4/9, et non 5/10. Le dénominateur 5/10 correspond à la probabilité initiale (avant tout tirage), pas à la probabilité conditionnelle après avoir déjà retiré une boule noire. C''est la différence fondamentale entre tirage avec remise (les probabilités ne changent pas) et tirage sans remise (les probabilités évoluent à chaque tirage).',
  'Utiliser les probabilités du premier tirage pour le second tirage sans remise. À chaque tirage sans remise, il faut recalculer les probabilités en tenant compte des boules déjà retirées.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 10. math_proportionnalite_donnees (prefix=fb050000)
-- ============================================================

-- Q8 — qcm — Pourcentage et proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques',
  'Avance',
  'qcm',
  'Un article coûte 80 € et bénéficie d''une réduction de 15 %. Puis le prix réduit subit une augmentation de 15 %. Le prix final est :',
  NULL,
  '[{"id":"a","label":"80 €"},{"id":"b","label":"78,20 €"},{"id":"c","label":"82 €"},{"id":"d","label":"79,50 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Après réduction de 15 % : prix = 80 × 0,85 = 68 €. Après augmentation de 15 % sur 68 € : prix = 68 × 1,15 = 78,20 €. Le prix final (78,20 €) est inférieur au prix initial (80 €). On n''a pas retrouvé le prix de départ car la baisse de 15 % porte sur 80 € (soit 12 €) tandis que la hausse de 15 % porte sur 68 € (soit 10,20 €). Les deux variations ne se compensent pas car elles ne portent pas sur le même montant. C''est un piège classique des pourcentages : des variations successives de même taux mais de sens opposé ne s''annulent pas.',
  'Penser que −15 % puis +15 % ramène au prix initial. Les pourcentages successifs se composent par multiplication (0,85 × 1,15 = 0,9775 ≠ 1), pas par addition.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Échelle et proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques',
  'Avance',
  'reponse_courte',
  'Sur un plan à l''échelle 1/500, une cour d''école mesure 6 cm de long. Quelle est la longueur réelle de la cour en mètres ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30","30 m","30m","30 mètres"]}'::jsonb,
  'L''échelle 1/500 signifie que 1 cm sur le plan correspond à 500 cm en réalité. C''est une situation de proportionnalité entre les distances sur le plan et les distances réelles. Longueur réelle = 6 × 500 = 3 000 cm = 30 m. L''échelle est le coefficient de proportionnalité entre les distances sur le plan et les distances réelles. On peut aussi poser un tableau de proportionnalité : plan (cm) : 1 → 6 ; réalité (cm) : 500 → 3 000.',
  'Oublier de convertir les centimètres en mètres, ou diviser au lieu de multiplier. L''échelle 1/500 signifie que la réalité est 500 fois plus grande, donc on multiplie.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Lien entre proportionnalité et linéarité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb050000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_proportionnalite_donnees',
  'Proportionnalité dans les données — Tableaux et graphiques',
  'Avance',
  'vrai_faux',
  'Un tarif de taxi est composé d''une prise en charge de 3 € plus 1,50 € par kilomètre. Le prix total est proportionnel à la distance parcourue.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Le prix total est : P = 3 + 1,50 × d, où d est la distance en km. C''est une fonction affine (de la forme y = ax + b avec b ≠ 0), pas une fonction proportionnelle (qui serait y = ax). Par exemple : pour 0 km, le prix est 3 € (et non 0 €). Pour 2 km : 6 € ; pour 4 km : 9 €. Le rapport prix/distance n''est pas constant : 6/2 = 3 ≠ 9/4 = 2,25. La part fixe (prise en charge) empêche la proportionnalité. Seule la part variable (1,50 €/km) est proportionnelle à la distance.',
  'Confondre « le prix augmente quand la distance augmente » (croissance) avec « le prix est proportionnel à la distance » (rapport constant). La prise en charge fixe casse la proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 11. math_statistiques_comparaison (prefix=fb090000)
-- ============================================================

-- Q8 — qcm — Comparaison avec diagrammes en boîte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb090000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries',
  'Avance',
  'qcm',
  'Les résultats de deux groupes à un même test sont résumés par leurs diagrammes en boîte. Groupe A : min = 4, Q₁ = 8, médiane = 12, Q₃ = 14, max = 18. Groupe B : min = 2, Q₁ = 7, médiane = 11, Q₃ = 17, max = 20. Quel groupe a l''écart interquartile le plus grand ?',
  NULL,
  '[{"id":"a","label":"Le groupe A, avec IQR = 6"},{"id":"b","label":"Le groupe B, avec IQR = 10"},{"id":"c","label":"Les deux groupes ont le même IQR"},{"id":"d","label":"Le groupe B, avec IQR = 18"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''écart interquartile (IQR) = Q₃ − Q₁. Groupe A : IQR = 14 − 8 = 6. Groupe B : IQR = 17 − 7 = 10. Le groupe B a un écart interquartile plus grand (10 > 6), ce qui signifie que les 50 % de valeurs centrales du groupe B sont plus étalées que celles du groupe A. Malgré des médianes proches (12 et 11), la dispersion des résultats est nettement plus importante dans le groupe B. Le distracteur IQR = 18 confond l''étendue de B (20 − 2 = 18) avec l''IQR.',
  'Confondre l''étendue (max − min) avec l''écart interquartile (Q₃ − Q₁). L''IQR ne mesure que la dispersion des 50 % centraux, tandis que l''étendue prend en compte les valeurs extrêmes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Calcul d'écart-type simplifié
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb090000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries',
  'Avance',
  'reponse_courte',
  'On considère la série : 2 ; 4 ; 6 ; 8 ; 10. La moyenne est 6. Calculer la variance de cette série. (Rappel : variance = moyenne des carrés des écarts à la moyenne.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8"]}'::jsonb,
  'La moyenne est 6. Les écarts à la moyenne sont : 2−6 = −4, 4−6 = −2, 6−6 = 0, 8−6 = 2, 10−6 = 4. Les carrés des écarts sont : 16, 4, 0, 4, 16. La variance est la moyenne de ces carrés : (16 + 4 + 0 + 4 + 16) ÷ 5 = 40 ÷ 5 = 8. L''écart-type est la racine carrée de la variance : √8 ≈ 2,83. La variance et l''écart-type mesurent la dispersion de la série autour de sa moyenne. Plus ils sont grands, plus les données sont étalées.',
  'Oublier de mettre les écarts au carré (ce qui donnerait une somme nulle : −4−2+0+2+4 = 0). Les carrés rendent tous les écarts positifs et pénalisent davantage les grands écarts.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Paradoxe de la moyenne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb090000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_comparaison',
  'Statistiques — Comparer deux séries',
  'Avance',
  'vrai_faux',
  'Si chaque élève d''une classe A a une meilleure note que chaque élève d''une classe B au même test, alors la moyenne de A est forcément supérieure à la moyenne de B.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Si chaque note de la classe A est strictement supérieure à chaque note de la classe B, alors en particulier le minimum de A est supérieur au maximum de B. La somme des notes de A (et donc la moyenne, puisqu''on divise par le même effectif si les classes ont le même nombre d''élèves) sera supérieure. Même si les effectifs sont différents, chaque terme de la somme de A étant supérieur à tous les termes de B, la moyenne de A est nécessairement supérieure. C''est un cas trivial qui ne pose pas de paradoxe de Simpson, car il n''y a aucun chevauchement entre les distributions.',
  'Penser au paradoxe de Simpson, qui ne s''applique pas ici. Le paradoxe survient quand les distributions se chevauchent et que les sous-groupes ont des tailles différentes. Si chaque valeur de A est supérieure à chaque valeur de B, aucune inversion n''est possible.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 12. math_tableau_croise_pourcentages (prefix=fb100000)
-- ============================================================

-- Q8 — qcm — Calcul de pourcentage en colonne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages',
  'Avance',
  'qcm',
  'Un tableau croisé indique les résultats de 150 élèves à un test selon leur sexe. Garçons réussis : 45, garçons échoués : 30. Filles réussies : 50, filles échouées : 25. Quel est le pourcentage de réussite parmi les GARÇONS ?',
  NULL,
  '[{"id":"a","label":"60 %"},{"id":"b","label":"45 %"},{"id":"c","label":"63,3 %"},{"id":"d","label":"30 %"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On se restreint au sous-groupe des garçons. Total garçons = 45 + 30 = 75. Garçons réussis = 45. Pourcentage de réussite parmi les garçons = (45/75) × 100 = 60 %. C''est un pourcentage « en ligne » (ou conditionnel). Le distracteur 45 % confond avec 45/100. Le distracteur 63,3 % calculerait 95/150 (taux global). Le distracteur 30 % correspond au nombre d''échecs, pas au pourcentage. Pour les filles : 50/75 ≈ 66,7 %. Le taux de réussite des filles est donc supérieur à celui des garçons dans cet exemple.',
  'Calculer 45/150 = 30 % en utilisant l''effectif total au lieu du sous-total des garçons. Pour un pourcentage conditionnel, le dénominateur est toujours le sous-total du groupe considéré.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Compléter un tableau croisé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages',
  'Avance',
  'reponse_courte',
  'Dans un tableau croisé de 200 personnes réparties par genre (H/F) et avis (pour/contre), on sait que : 60 hommes sont pour, 40 hommes sont contre, et 70 femmes sont pour. Combien de femmes sont contre ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30"]}'::jsonb,
  'Total = 200. Total hommes = 60 + 40 = 100. Donc total femmes = 200 − 100 = 100. Femmes pour = 70. Femmes contre = 100 − 70 = 30. On peut vérifier : 60 + 40 + 70 + 30 = 200. Dans un tableau croisé, on utilise les totaux marginaux (sommes en ligne et en colonne) pour retrouver les valeurs manquantes. C''est la propriété fondamentale : chaque total marginal est la somme des cellules de sa ligne ou de sa colonne.',
  'Calculer 200 − 70 = 130 en oubliant de d''abord déterminer le nombre total de femmes. Il faut procéder étape par étape en utilisant les totaux marginaux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Attention au pourcentage de pourcentage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages',
  'Avance',
  'vrai_faux',
  'Dans une école, 60 % des élèves sont des filles. Parmi les filles, 40 % pratiquent un sport. On peut en conclure que 24 % de l''ensemble des élèves sont des filles pratiquant un sport.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. On calcule : proportion de filles sportives parmi tous les élèves = 60 % × 40 % = 0,60 × 0,40 = 0,24, soit 24 %. C''est un calcul de pourcentage de pourcentage : quand on a un pourcentage conditionnel (40 % des filles) et un pourcentage global (60 % de filles), on multiplie les deux pour obtenir le pourcentage global de l''intersection. Par exemple, sur 200 élèves : 120 filles dont 40 % pratiquent un sport = 48 filles sportives. 48/200 = 24 %.',
  'Additionner les pourcentages (60 + 40 = 100 %) au lieu de les multiplier. Les pourcentages de sous-groupes se composent par multiplication, pas par addition.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 13. math_tableaux_donnees (prefix=c0020000)
-- ============================================================

-- Q8 — qcm — Tableau à double entrée et calcul de proportion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation',
  'Avance',
  'qcm',
  'Un tableau recense les résultats de 80 élèves à une évaluation par niveau :\n\n| | Acquis | En cours | Non acquis |\n|---|---|---|---|\n| CE2 | 20 | 10 | 5 |\n| CM1 | 18 | 12 | 5 |\n| CM2 | 6 | 3 | 1 |\n\nQuel est le pourcentage global d''élèves ayant le résultat « Acquis » ?',
  NULL,
  '[{"id":"a","label":"55 %"},{"id":"b","label":"44 %"},{"id":"c","label":"57,1 %"},{"id":"d","label":"50 %"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Total d''élèves « Acquis » = 20 + 18 + 6 = 44. Total d''élèves = 80 (vérification : 35 + 35 + 10 = 80). Pourcentage = (44/80) × 100 = 55 %. Le distracteur 44 % confond l''effectif (44) avec un pourcentage. Le distracteur 57,1 % calculerait 20/35 (CE2 uniquement). La lecture correcte d''un tableau croisé nécessite de bien identifier le numérateur (total de la colonne) et le dénominateur (effectif total).',
  'Lire le pourcentage d''un seul niveau au lieu du pourcentage global, ou confondre l''effectif brut (44) avec un pourcentage (44 %).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Conversion fréquence-effectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation',
  'Avance',
  'reponse_courte',
  'Un tableau de fréquences relatives indique que, sur 250 familles enquêtées, la fréquence des familles ayant 2 enfants est 0,36. Combien de familles de l''échantillon ont exactement 2 enfants ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["90","90 familles"]}'::jsonb,
  'On utilise la formule : effectif = fréquence × effectif total. Ici : 0,36 × 250 = 90 familles. On peut vérifier en sens inverse : 90/250 = 0,36. Cette conversion entre fréquence relative et effectif est une opération fondamentale en statistique descriptive. Elle repose sur la proportionnalité : si la fréquence est 0,36, cela signifie que 36 familles sur 100 ont 2 enfants, donc 90 sur 250.',
  'Diviser au lieu de multiplier (250 ÷ 0,36 ≈ 694, ce qui est absurde car supérieur à l''effectif total), ou confondre 0,36 avec 36 familles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Lecture critique d'un tableau
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0020000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_donnees',
  'Tableaux de données — Lecture et interprétation',
  'Avance',
  'vrai_faux',
  'Un tableau indique les effectifs d''une école sur trois ans : 2021 → 310 élèves, 2022 → 320 élèves, 2023 → 330 élèves. On peut affirmer que l''effectif augmente de 10 élèves par an, ce qui est une situation de proportionnalité entre le nombre d''élèves et l''année.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''augmentation est bien constante (+10 par an), mais ce n''est pas une proportionnalité. La proportionnalité exigerait que le rapport effectif/année soit constant, ce qui n''est pas le cas : 310/2021 ≠ 320/2022 ≠ 330/2023. Il s''agit d''une relation affine : effectif = 10 × (année − 2021) + 310. Une augmentation constante (croissance linéaire) n''est pas synonyme de proportionnalité. Pour qu''il y ait proportionnalité, il faudrait que l''effectif soit nul quand la variable explicative est nulle.',
  'Confondre « augmentation constante » (relation affine) et « proportionnalité » (relation linéaire passant par l''origine). C''est l''une des confusions les plus fréquentes au CRPE.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 14. math_tableaux_effectifs_frequences (prefix=fb070000)
-- ============================================================

-- Q8 — reponse_courte — Effectifs cumulés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences',
  'Intermediaire',
  'reponse_courte',
  'On considère la répartition suivante de 60 élèves selon leur note : note 8 → 10 élèves, note 10 → 15 élèves, note 12 → 20 élèves, note 14 → 10 élèves, note 16 → 5 élèves. Quel est l''effectif cumulé croissant correspondant à la note 12 ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["45"]}'::jsonb,
  'L''effectif cumulé croissant d''une valeur est la somme des effectifs de toutes les valeurs inférieures ou égales à cette valeur. Pour la note 12 : 10 (note 8) + 15 (note 10) + 20 (note 12) = 45. Cela signifie que 45 élèves sur 60 ont obtenu une note inférieure ou égale à 12. Les effectifs cumulés sont très utiles pour déterminer la médiane : la médiane est la valeur pour laquelle l''effectif cumulé atteint ou dépasse n/2 = 30. Ici, l''effectif cumulé à la note 10 est 25 (< 30) et à la note 12 est 45 (≥ 30), donc la médiane est 12.',
  'Confondre effectif simple et effectif cumulé, ou oublier d''additionner tous les effectifs précédents (ne prendre que le dernier au lieu de la somme).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Fréquences cumulées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences',
  'Intermediaire',
  'qcm',
  'Un tableau de fréquences indique la répartition des 40 élèves d''une classe selon leur moyen de transport : Bus → 0,30 ; Voiture → 0,25 ; Vélo → 0,20 ; Marche → 0,25. La fréquence cumulée croissante de la modalité « Vélo » (classée en 3ᵉ position) est :',
  NULL,
  '[{"id":"a","label":"0,20"},{"id":"b","label":"0,55"},{"id":"c","label":"0,75"},{"id":"d","label":"0,50"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La fréquence cumulée croissante d''une modalité est la somme des fréquences de toutes les modalités qui la précèdent (dans l''ordre du classement) et de la modalité elle-même. Bus (1ère) : 0,30. Voiture (2ème) : 0,30 + 0,25 = 0,55. Vélo (3ème) : 0,55 + 0,20 = 0,75. Marche (4ème) : 0,75 + 0,25 = 1,00. La fréquence cumulée du Vélo est 0,75, ce qui signifie que 75 % des élèves utilisent le bus, la voiture ou le vélo.',
  'Donner la fréquence simple (0,20) au lieu de la fréquence cumulée, ou se tromper dans l''ordre de cumul des fréquences.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Propriété de la somme des fréquences
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb070000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_effectifs_frequences',
  'Tableaux d''effectifs et fréquences',
  'Intermediaire',
  'vrai_faux',
  'Dans un tableau d''effectifs et de fréquences, si l''on double l''effectif de chaque modalité, les fréquences relatives de chaque modalité sont également doublées.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Si l''on double chaque effectif, l''effectif total est aussi doublé. La fréquence d''une modalité est : effectif de la modalité / effectif total. En doublant le numérateur ET le dénominateur, le rapport reste identique. Par exemple : si l''effectif initial est 10/40 = 0,25, après doublement il devient 20/80 = 0,25. Les fréquences relatives sont inchangées car elles expriment des proportions, qui sont invariantes par multiplication de tous les effectifs par un même facteur. Seuls les effectifs absolus changent.',
  'Croire que doubler les effectifs double les fréquences. Les fréquences relatives sont des rapports : multiplier le numérateur et le dénominateur par le même nombre ne change pas la valeur du quotient.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 15. math_tableaux_proportionnalite (prefix=b01d0000)
-- ============================================================

-- Q8 — reponse_courte — Quatrième proportionnelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données',
  'Avance',
  'reponse_courte',
  'Dans un tableau de proportionnalité, on lit : 3 kg de riz coûtent 4,50 €. Combien coûtent 7 kg de riz ? Donner la réponse en euros.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10,50","10.50","10,5","10.5","10,50 €","10.50 €"]}'::jsonb,
  'Le coefficient de proportionnalité (prix unitaire) est : 4,50 ÷ 3 = 1,50 €/kg. Pour 7 kg : 7 × 1,50 = 10,50 €. On peut aussi utiliser le produit en croix : 3/4,50 = 7/x, donc x = 7 × 4,50 ÷ 3 = 31,50 ÷ 3 = 10,50 €. Ou encore raisonner par linéarité additive : 7 = 3 + 3 + 1, donc prix = 4,50 + 4,50 + 1,50 = 10,50 €.',
  'Utiliser un raisonnement additif au lieu de multiplicatif : « 7 − 3 = 4, donc le prix augmente de 4 € » (ce qui donnerait 8,50 €). La proportionnalité repose sur la multiplication, pas l''addition.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — qcm — Reconnaître une situation non proportionnelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données',
  'Avance',
  'qcm',
  'Parmi les situations suivantes, laquelle n''est PAS une situation de proportionnalité ?',
  NULL,
  '[{"id":"a","label":"Le prix de l''essence en fonction du nombre de litres achetés"},{"id":"b","label":"La distance parcourue en fonction du temps à vitesse constante"},{"id":"c","label":"L''âge d''une personne en fonction de son année de naissance"},{"id":"d","label":"Le périmètre d''un carré en fonction de la longueur de son côté"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''âge d''une personne née en l''an A est : âge = année actuelle − A. C''est une fonction affine (de la forme y = −A + constante), pas une proportionnalité. Par exemple, une personne née en 2000 a 26 ans en 2026, mais le rapport 26/2000 n''est pas constant d''une personne à l''autre. En revanche : le prix de l''essence est proportionnel au volume (prix = tarif × litres), la distance à vitesse constante est proportionnelle au temps (d = v × t), et le périmètre du carré est proportionnel au côté (P = 4 × c). Dans ces trois cas, la relation passe par l''origine.',
  'Confondre croissance et proportionnalité. L''âge augmente avec l''année, mais le rapport âge/année n''est pas constant. Le test clé : quand l''une des grandeurs vaut 0, l''autre doit aussi valoir 0.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Propriété de linéarité dans un tableau de proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données',
  'Avance',
  'vrai_faux',
  'Dans un tableau de proportionnalité, si l''on connaît les images de 3 et de 5, on peut en déduire l''image de 8 en additionnant les deux images correspondantes.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. C''est la propriété de linéarité additive de la proportionnalité. Si f est une fonction proportionnelle (f(x) = k × x), alors f(3) + f(5) = 3k + 5k = 8k = f(8). Par exemple, si 3 kg coûtent 6 € et 5 kg coûtent 10 €, alors 8 kg coûtent 6 + 10 = 16 €. De même, f(a + b) = f(a) + f(b) et f(na) = n × f(a). Ces propriétés sont fondamentales pour compléter un tableau de proportionnalité sans nécessairement calculer le coefficient. Elles sont au cœur des stratégies de calcul enseignées au cycle 3.',
  'Croire que cette propriété est toujours vraie, quelle que soit la relation. Elle ne fonctionne QUE pour la proportionnalité. Pour une relation affine non proportionnelle, f(3) + f(5) ≠ f(8).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 16. math_tri_classement_donnees (prefix=fb0b0000)
-- ============================================================

-- Q8 — qcm — Mode d'une série statistique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0b0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_tri_classement_donnees',
  'Tri et classement de données',
  'Intermediaire',
  'qcm',
  'On relève les notes de 12 élèves à un contrôle : 7 ; 9 ; 12 ; 14 ; 9 ; 11 ; 9 ; 15 ; 12 ; 10 ; 9 ; 13. Quel est le mode de cette série ?',
  NULL,
  '[{"id":"a","label":"12, car c''est la valeur centrale"},{"id":"b","label":"9, car c''est la valeur qui apparaît le plus souvent"},{"id":"c","label":"10,83, car c''est la moyenne"},{"id":"d","label":"10,5, car c''est la médiane"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le mode d''une série statistique est la valeur qui apparaît le plus fréquemment. En comptant les occurrences : 7 (×1), 9 (×4), 10 (×1), 11 (×1), 12 (×2), 13 (×1), 14 (×1), 15 (×1). La note 9 apparaît 4 fois, c''est le mode de la série. Le mode est un indicateur de tendance centrale qui se détermine par comptage, sans calcul. Il est particulièrement utile pour les données qualitatives (la couleur préférée, le sport le plus pratiqué) où la moyenne n''a pas de sens.',
  'Confondre le mode avec la moyenne ou la médiane. Le mode est la valeur la plus fréquente, la moyenne est la somme divisée par l''effectif, et la médiane partage la série ordonnée en deux.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — reponse_courte — Construction d'un tableau d'effectifs groupés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0b0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_tri_classement_donnees',
  'Tri et classement de données',
  'Intermediaire',
  'reponse_courte',
  'On mesure les poids (en kg) de 15 colis : 2,3 ; 5,1 ; 1,8 ; 7,4 ; 3,6 ; 4,2 ; 6,8 ; 2,1 ; 8,5 ; 3,9 ; 5,5 ; 1,2 ; 4,7 ; 6,3 ; 7,1. On souhaite regrouper ces données en trois classes : [0 ; 3[, [3 ; 6[ et [6 ; 9[. Quel est l''effectif de la classe [3 ; 6[ ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6"]}'::jsonb,
  'On trie chaque valeur dans la classe appropriée. Classe [0 ; 3[ : 2,3 ; 1,8 ; 2,1 ; 1,2 → effectif = 4. Classe [3 ; 6[ : 5,1 ; 3,6 ; 4,2 ; 3,9 ; 5,5 ; 4,7 → effectif = 6. Classe [6 ; 9[ : 7,4 ; 6,8 ; 8,5 ; 6,3 ; 7,1 → effectif = 5. Vérification : 4 + 6 + 5 = 15. L''effectif de la classe [3 ; 6[ est 6. Attention : la borne 3 est incluse dans [3 ; 6[ et la borne 6 est exclue (convention des intervalles semi-ouverts à droite).',
  'Se tromper sur les bornes des classes : par exemple, placer 3,6 dans [0 ; 3[ au lieu de [3 ; 6[. Rappel : dans l''intervalle [3 ; 6[, 3 est inclus et 6 est exclu.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — vrai_faux — Intérêt du tri pour les statistiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0b0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_tri_classement_donnees',
  'Tri et classement de données',
  'Intermediaire',
  'vrai_faux',
  'Pour calculer la moyenne d''une série statistique, il est indispensable de trier les données dans l''ordre croissant au préalable.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. La moyenne est la somme de toutes les valeurs divisée par l''effectif total. L''ordre dans lequel on additionne les valeurs n''a aucune importance (l''addition est commutative). On peut calculer la moyenne sans trier. En revanche, le tri est INDISPENSABLE pour calculer la médiane (il faut repérer la valeur centrale de la série ordonnée), l''étendue (il faut identifier le minimum et le maximum), et les quartiles. Le tri est aussi nécessaire pour repérer facilement le mode, les valeurs atypiques et pour construire un tableau d''effectifs ordonné.',
  'Croire que le tri est nécessaire pour tous les calculs statistiques. Il est essentiel pour la médiane et les quartiles, mais pas pour la moyenne ni pour le calcul de l''effectif total.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
