-- Seed: Complétion des séries organisation_donnees (Q8, Q9, Q10) — Batch 1
-- 10 séries × 3 questions = 30 exercices ajoutés
-- Subdomain: organisation_donnees | Access: free | Niveaux: Intermediaire / Avance

-- ============================================================
-- 1. BOÎTE À MOUSTACHES — Lecture et interprétation (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0c0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation',
  'Avance',
  'reponse_courte',
  'Un diagramme en boîte indique : min = 10, Q₁ = 25, médiane = 30, Q₃ = 45, max = 60. Calculer la longueur de la moustache supérieure (distance entre Q₃ et le maximum).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15","15 unités","Q3 au max = 15"]}'::jsonb,
  'La moustache supérieure s''étend de Q₃ au maximum. Sa longueur est donc max − Q₃ = 60 − 45 = 15. On peut aussi calculer la moustache inférieure : Q₁ − min = 25 − 10 = 15. Ici, les deux moustaches ont la même longueur (15), ce qui indique une symétrie dans les extrêmes de la distribution. Cependant, la médiane (30) est plus proche de Q₁ (25) que de Q₃ (45), ce qui révèle une asymétrie à l''intérieur de la boîte : la partie droite de la boîte (médiane à Q₃ = 15) est trois fois plus large que la partie gauche (Q₁ à médiane = 5).',
  'Confondre la longueur de la moustache (Q₃ au max) avec l''étendue totale (max − min = 50). La moustache supérieure ne mesure que la dispersion au-delà du troisième quartile.',
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
  'fb0c0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation',
  'Avance',
  'qcm',
  'Un diagramme en boîte représente les durées (en minutes) de trajets domicile-travail de 200 salariés. On lit : min = 5, Q₁ = 15, médiane = 25, Q₃ = 35, max = 90. Combien de salariés, au minimum, effectuent un trajet compris entre 15 et 35 minutes ?',
  NULL,
  '[{"id":"a","label":"50 salariés"},{"id":"b","label":"100 salariés"},{"id":"c","label":"150 salariés"},{"id":"d","label":"200 salariés"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Par définition, Q₁ et Q₃ délimitent les 50 % centraux de la distribution. Entre Q₁ = 15 et Q₃ = 35, on trouve donc au moins 50 % des individus, soit 50 % × 200 = 100 salariés. La boîte du diagramme en boîte représente exactement cet intervalle interquartile. Les 25 % les plus bas sont en deçà de Q₁ et les 25 % les plus hauts au-delà de Q₃. C''est une propriété fondamentale du diagramme en boîte : la boîte contient toujours la moitié centrale de l''effectif.',
  'Croire que la boîte contient 75 % ou 25 % des données au lieu de 50 %. Par définition, l''intervalle interquartile [Q₁ ; Q₃] contient exactement la moitié centrale de la distribution.',
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
  'fb0c0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_boite_moustaches',
  'Boîte à moustaches — Lecture et interprétation',
  'Avance',
  'vrai_faux',
  'Deux diagrammes en boîte représentent les notes de deux classes. Classe A : médiane = 14, IQR = 6. Classe B : médiane = 11, IQR = 3. On peut affirmer que tous les élèves de la classe A ont de meilleures notes que ceux de la classe B.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. La médiane plus élevée de la classe A (14 contre 11) indique que la tendance centrale est meilleure, mais cela ne signifie pas que TOUS les élèves de A ont de meilleures notes que ceux de B. Les distributions se chevauchent probablement : certains élèves de B peuvent avoir des notes supérieures à certains élèves de A. Par exemple, si le maximum de B est 18 et le minimum de A est 8, de nombreux élèves de B surpassent des élèves de A. Le diagramme en boîte résume la distribution mais ne permet pas de comparer les individus un à un. Seule une comparaison des données brutes permettrait de vérifier si les distributions se chevauchent.',
  'Interpréter une médiane plus élevée comme une supériorité absolue de tous les individus du groupe. La médiane est un indicateur de tendance centrale, pas une borne inférieure.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 2. DÉNOMBREMENT ET COMBINATOIRE (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb060000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux',
  'Avance',
  'reponse_courte',
  'Un code de cadenas est formé de 3 chiffres (de 0 à 9), avec répétition possible. Combien de codes différents peut-on former ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1000","1 000","10^3 = 1000","10³ = 1000"]}'::jsonb,
  'Il s''agit d''un tirage avec remise et avec ordre (la position de chaque chiffre compte). Pour chaque position du code, on a 10 choix possibles (0 à 9). Par le principe multiplicatif, le nombre total de codes est 10 × 10 × 10 = 10³ = 1 000. C''est un n-uplet avec répétition de k éléments parmi n : le nombre de possibilités est nᵏ = 10³. Si la répétition n''était pas permise, on aurait un arrangement : 10 × 9 × 8 = 720 codes. La différence entre tirage avec et sans remise est essentielle en dénombrement.',
  'Calculer 10 × 9 × 8 = 720 (arrangement sans répétition) au lieu de 10³ = 1 000. L''énoncé précise « avec répétition possible », donc chaque chiffre peut être réutilisé.',
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
  'fb060000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux',
  'Avance',
  'qcm',
  'Dans une classe de 10 élèves, le professeur veut désigner un délégué et un suppléant (l''ordre compte : délégué ≠ suppléant). Combien de façons différentes a-t-il de choisir ?',
  NULL,
  '[{"id":"a","label":"45"},{"id":"b","label":"90"},{"id":"c","label":"100"},{"id":"d","label":"20"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''ordre compte (le délégué n''a pas le même rôle que le suppléant) et un même élève ne peut pas occuper les deux postes. C''est donc un arrangement de 2 éléments parmi 10. Le nombre de possibilités est A(10, 2) = 10 × 9 = 90. On choisit d''abord le délégué (10 possibilités), puis le suppléant parmi les 9 restants (9 possibilités). Si l''ordre ne comptait pas (par exemple, choisir 2 représentants sans distinction), ce serait une combinaison : C(10, 2) = 90 / 2 = 45. La distinction arrangement/combinaison repose sur la question : « L''ordre a-t-il de l''importance ? »',
  'Calculer C(10, 2) = 45 au lieu de A(10, 2) = 90. Ici l''ordre compte car délégué et suppléant ont des rôles différents, donc on ne divise pas par 2!.',
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
  'fb060000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_combinatoire_denombrement',
  'Dénombrement et combinatoire — Principes fondamentaux',
  'Avance',
  'vrai_faux',
  'On veut former un mot de 4 lettres en utilisant les lettres A, B, C (les répétitions sont autorisées). Le nombre total de mots possibles est 4³ = 64.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. On dispose de 3 lettres (A, B, C) et on forme un mot de 4 positions. Pour chaque position, on a 3 choix. Le nombre total de mots est donc 3⁴ = 81 (et non 4³ = 64). L''erreur provient d''une inversion : c''est le nombre de lettres disponibles (la base) qu''on élève à la puissance du nombre de positions (l''exposant). La formule générale pour les tirages avec remise ordonnés est nᵏ, où n est le nombre d''éléments disponibles et k le nombre de positions à remplir. Ici : n = 3 lettres, k = 4 positions, soit 3⁴ = 81.',
  'Inverser la base et l''exposant dans la formule nᵏ. On élève le nombre de choix possibles (ici 3 lettres) à la puissance du nombre de tirages (ici 4 positions), et non l''inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 3. DIAGRAMME CIRCULAIRE — Construction et calcul d'angles (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0e0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles',
  'Intermediaire',
  'qcm',
  'Dans un diagramme circulaire représentant les résultats d''une élection scolaire, le candidat A obtient un secteur de 162° et le candidat B un secteur de 108°. Le reste revient aux votes blancs. Si 200 élèves ont voté, combien de votes blancs y a-t-il eu ?',
  NULL,
  '[{"id":"a","label":"30 votes blancs"},{"id":"b","label":"40 votes blancs"},{"id":"c","label":"50 votes blancs"},{"id":"d","label":"60 votes blancs"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''angle des votes blancs est : 360° − 162° − 108° = 90°. La proportion de votes blancs est 90° / 360° = 1/4 = 25 %. Le nombre de votes blancs est donc 25 % × 200 = 50. On peut vérifier : candidat A = (162/360) × 200 = 90 voix, candidat B = (108/360) × 200 = 60 voix, votes blancs = 50 voix. Total : 90 + 60 + 50 = 200 voix. La démarche en deux étapes — calculer l''angle manquant puis convertir en effectif — est une méthode systématique pour les diagrammes circulaires incomplets.',
  'Oublier de soustraire les angles connus de 360° avant de convertir en effectif, ou calculer directement (360 − 162 − 108) × 200 sans diviser par 360.',
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
  'fb0e0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles',
  'Intermediaire',
  'reponse_courte',
  'Une bibliothèque classe ses 450 ouvrages en 3 catégories : Romans (180 ouvrages), Documentaires (135 ouvrages), Bandes dessinées (135 ouvrages). On construit un diagramme circulaire. Quel angle (en degrés) correspond au secteur « Romans » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["144","144°","144 °","144 degrés"]}'::jsonb,
  'L''angle du secteur « Romans » se calcule par proportionnalité : angle = (effectif / total) × 360° = (180 / 450) × 360° = 0,4 × 360° = 144°. On peut vérifier avec les autres secteurs : Documentaires = (135 / 450) × 360° = 0,3 × 360° = 108°. Bandes dessinées = (135 / 450) × 360° = 108°. Total : 144° + 108° + 108° = 360°. Le secteur Romans occupe 40 % du disque, soit un peu plus d''un tiers. La vérification par la somme des angles (= 360°) est indispensable pour valider la construction.',
  'Diviser 360° par le nombre de catégories (360 / 3 = 120°) en supposant une répartition uniforme. Ce calcul ne fonctionne que si toutes les catégories ont le même effectif, ce qui n''est pas le cas ici.',
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
  'fb0e0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_diagramme_circulaire_construction',
  'Diagramme circulaire — Construction et calcul d''angles',
  'Intermediaire',
  'vrai_faux',
  'Pour représenter les goûts musicaux de 25 élèves dans un diagramme circulaire, 7 élèves préfèrent le rap. L''angle du secteur « rap » sera de 100,8°.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''angle se calcule par : (7 / 25) × 360° = 0,28 × 360° = 100,8°. Le résultat n''est pas un nombre entier de degrés, ce qui est fréquent en pratique. Pour tracer le secteur, on arrondit généralement à 101° avec un rapporteur gradué en degrés entiers. Il est important de comprendre que les angles calculés peuvent être décimaux et qu''il faut parfois ajuster légèrement les arrondis pour que la somme finale fasse exactement 360°. Vérification : 7/25 = 28 %, et 28 % × 360° = 100,8°.',
  'Arrondir prématurément la fraction 7/25 avant de multiplier par 360°, ce qui peut donner un résultat légèrement différent. Il est préférable de faire le calcul complet avant d''arrondir.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 4. DIAGRAMMES ET REPRÉSENTATIONS GRAPHIQUES (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0040000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_diagrammes_representation',
  'Diagrammes et représentations graphiques',
  'Intermediaire',
  'qcm',
  'Un graphique en courbe montre l''évolution du nombre d''inscrits dans une médiathèque de 2019 à 2024. La courbe monte fortement entre 2019 et 2021, puis devient presque horizontale entre 2021 et 2024. Quelle interprétation est correcte ?',
  NULL,
  '[{"id":"a","label":"Le nombre d''inscrits a diminué entre 2021 et 2024."},{"id":"b","label":"Le nombre d''inscrits a fortement augmenté entre 2021 et 2024."},{"id":"c","label":"Le nombre d''inscrits a continué d''augmenter mais beaucoup plus lentement entre 2021 et 2024."},{"id":"d","label":"Le nombre d''inscrits est exactement le même en 2021 et en 2024."}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Une courbe « presque horizontale » signifie que la grandeur représentée varie très peu, mais pas nécessairement qu''elle est strictement constante. Si la courbe est légèrement ascendante, le nombre d''inscrits continue d''augmenter, mais à un rythme bien plus faible qu''entre 2019 et 2021. On dit que la croissance a ralenti. La pente de la courbe (son inclinaison) renseigne sur la vitesse de variation : pente forte = variation rapide, pente faible = variation lente, pente nulle = valeur constante, pente descendante = diminution.',
  'Confondre une courbe horizontale (valeur constante) avec une courbe légèrement montante (croissance lente). De même, interpréter un ralentissement de la croissance comme une diminution.',
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
  'c0040000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_diagrammes_representation',
  'Diagrammes et représentations graphiques',
  'Intermediaire',
  'reponse_courte',
  'Un diagramme en bâtons montre les précipitations mensuelles (en mm) d''une ville : janvier 45, février 38, mars 52, avril 60, mai 70, juin 25. Quel est le mois le plus sec et quelle est la différence de précipitations entre le mois le plus humide et le mois le plus sec ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["juin, 45 mm","juin, 45","juin ; 45 mm","juin 45 mm","juin et 45 mm","Juin, 45 mm"]}'::jsonb,
  'En lisant les hauteurs des bâtons, le mois le plus sec est juin avec 25 mm de précipitations (bâton le plus bas). Le mois le plus humide est mai avec 70 mm (bâton le plus haut). La différence est 70 − 25 = 45 mm. Cette différence correspond à l''étendue de la série des précipitations sur ces 6 mois. Un diagramme en bâtons permet de visualiser immédiatement les valeurs extrêmes et de comparer les catégories entre elles grâce aux hauteurs relatives des bâtons.',
  'Se tromper dans la lecture des hauteurs des bâtons, notamment si l''échelle de l''axe des ordonnées n''est pas graduée de 1 en 1 mais de 10 en 10 par exemple.',
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
  'c0040000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_diagrammes_representation',
  'Diagrammes et représentations graphiques',
  'Intermediaire',
  'vrai_faux',
  'On souhaite représenter la répartition des élèves d''une école selon leur sport préféré (football, natation, tennis, judo, danse). Un diagramme en bâtons et un diagramme circulaire sont tous les deux adaptés à cette situation.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Les données qualitatives (ici les sports) avec leurs effectifs respectifs peuvent être représentées aussi bien par un diagramme en bâtons que par un diagramme circulaire. Le diagramme en bâtons permet de comparer facilement les effectifs entre catégories grâce aux hauteurs. Le diagramme circulaire met en évidence les proportions (parts du tout). Le choix entre les deux dépend de l''objectif : comparer des effectifs → diagramme en bâtons ; visualiser des parts d''un tout → diagramme circulaire. En revanche, un histogramme ne serait pas adapté ici car il est réservé aux variables quantitatives continues regroupées en classes.',
  'Penser que seul un type de diagramme est valide pour un jeu de données. En réalité, plusieurs représentations sont souvent possibles, chacune mettant en avant un aspect différent des données.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 5. ÉTENDUE ET DISPERSION (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0d0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité',
  'Intermediaire',
  'reponse_courte',
  'Les notes de 6 élèves à un contrôle sont : 7 ; 9 ; 11 ; 13 ; 15 ; 17. La moyenne est 12. Calculer l''écart moyen de cette série (moyenne des écarts absolus à la moyenne).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","3,0","écart moyen = 3"]}'::jsonb,
  'On calcule chaque écart absolu à la moyenne (12) : |7 − 12| = 5, |9 − 12| = 3, |11 − 12| = 1, |13 − 12| = 1, |15 − 12| = 3, |17 − 12| = 5. La somme des écarts absolus vaut 5 + 3 + 1 + 1 + 3 + 5 = 18. L''écart moyen est donc 18 / 6 = 3. En moyenne, chaque note s''écarte de 3 points de la moyenne. Ici, la série est parfaitement symétrique autour de 12, ce qui donne des écarts symétriques. L''écart moyen est un indicateur de dispersion plus informatif que l''étendue (17 − 7 = 10) car il tient compte de toutes les valeurs.',
  'Oublier de prendre les valeurs absolues des écarts : sans valeur absolue, les écarts positifs et négatifs se compensent et leur somme est toujours nulle.',
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
  'fb0d0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité',
  'Intermediaire',
  'qcm',
  'On ajoute 5 points à chaque valeur d''une série statistique. Quel effet cela a-t-il sur l''étendue et sur la moyenne ?',
  NULL,
  '[{"id":"a","label":"L''étendue et la moyenne augmentent toutes les deux de 5"},{"id":"b","label":"L''étendue reste inchangée et la moyenne augmente de 5"},{"id":"c","label":"L''étendue augmente de 5 et la moyenne reste inchangée"},{"id":"d","label":"L''étendue et la moyenne restent inchangées"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Si on ajoute une constante c à chaque valeur, le maximum et le minimum augmentent tous deux de c. L''étendue (max − min) reste donc inchangée : (max + c) − (min + c) = max − min. En revanche, la moyenne augmente de c car la somme des valeurs augmente de n × c. Autrement dit : ajouter une constante déplace toute la série sans modifier sa dispersion. L''étendue, l''écart interquartile et l''écart-type sont invariants par translation. Seuls les indicateurs de position (moyenne, médiane, quartiles) sont modifiés.',
  'Penser que l''étendue change aussi quand on ajoute une constante. L''étendue mesure l''écart entre les extrêmes : si toutes les valeurs bougent de la même quantité, cet écart ne change pas.',
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
  'fb0d0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_etendue_dispersion',
  'Étendue et dispersion — Mesurer la variabilité',
  'Intermediaire',
  'vrai_faux',
  'Deux séries ont la même étendue (20) et la même moyenne (50). On peut en conclure qu''elles ont la même dispersion.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Deux séries peuvent avoir la même étendue et la même moyenne tout en ayant des dispersions très différentes. Par exemple : série A = {40 ; 50 ; 50 ; 50 ; 60} a une étendue de 20, une moyenne de 50, et la plupart des valeurs sont regroupées autour de 50. Série B = {40 ; 40 ; 50 ; 60 ; 60} a aussi une étendue de 20 et une moyenne de 50, mais les valeurs sont plus étalées. L''écart moyen de A est (10 + 0 + 0 + 0 + 10) / 5 = 4, contre (10 + 10 + 0 + 10 + 10) / 5 = 8 pour B. L''étendue ne suffit pas à caractériser complètement la dispersion car elle ne prend en compte que les deux valeurs extrêmes.',
  'Croire que l''étendue résume totalement la dispersion d''une série. C''est un indicateur partiel qui ne renseigne pas sur la répartition des valeurs entre le minimum et le maximum.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 6. EXPÉRIENCE ALÉATOIRE — Vocabulaire et notions (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb020000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base',
  'Intermediaire',
  'qcm',
  'On place dans un sac 4 billes rouges, 3 billes vertes et 1 bille jaune. On tire une bille au hasard. Quel événement a la plus grande probabilité ?',
  NULL,
  '[{"id":"a","label":"Tirer une bille verte"},{"id":"b","label":"Tirer une bille rouge"},{"id":"c","label":"Tirer une bille jaune"},{"id":"d","label":"Tous les événements ont la même probabilité"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le sac contient 4 + 3 + 1 = 8 billes au total. Les probabilités sont : P(rouge) = 4/8 = 1/2, P(verte) = 3/8, P(jaune) = 1/8. L''événement « tirer une bille rouge » a la plus grande probabilité (1/2 = 50 %). Plus une couleur est représentée dans le sac, plus la probabilité de la tirer est élevée. On vérifie que la somme des probabilités vaut 1 : 4/8 + 3/8 + 1/8 = 8/8 = 1. C''est une propriété fondamentale : la somme des probabilités de tous les événements élémentaires d''un univers est toujours égale à 1.',
  'Penser que tous les événements ont la même probabilité car « c''est du hasard ». Le hasard ne signifie pas équiprobabilité : la composition du sac détermine les probabilités.',
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
  'fb020000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base',
  'Intermediaire',
  'reponse_courte',
  'On lance un dé équilibré à six faces. Quelle est la probabilité d''obtenir un nombre pair OU un nombre supérieur ou égal à 5 ? Donner la réponse sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2/3","4/6","deux tiers"]}'::jsonb,
  'L''événement « nombre pair » correspond aux issues {2, 4, 6}. L''événement « nombre ≥ 5 » correspond aux issues {5, 6}. L''union des deux événements est {2, 4, 5, 6} (on ne compte le 6 qu''une seule fois). Le nombre d''issues favorables est 4 sur 6 possibles. P = 4/6 = 2/3. On peut aussi utiliser la formule : P(A ∪ B) = P(A) + P(B) − P(A ∩ B) = 3/6 + 2/6 − 1/6 = 4/6 = 2/3. L''intersection A ∩ B = {6} car 6 est à la fois pair et ≥ 5. Soustraire l''intersection évite de compter deux fois les issues communes.',
  'Additionner les probabilités sans retrancher l''intersection : 3/6 + 2/6 = 5/6. Cette erreur revient à compter deux fois le 6, qui est commun aux deux événements.',
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
  'fb020000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_experience_aleatoire',
  'Expérience aléatoire — Vocabulaire et notions de base',
  'Intermediaire',
  'vrai_faux',
  'On tire une carte au hasard dans un jeu de 32 cartes. L''événement « tirer un as » et l''événement « tirer un cœur » sont deux événements incompatibles.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Deux événements sont incompatibles (ou mutuellement exclusifs) s''ils ne peuvent pas se réaliser en même temps, c''est-à-dire si leur intersection est vide. Or, l''as de cœur est à la fois un as et un cœur : les deux événements peuvent se réaliser simultanément. Leur intersection n''est pas vide (elle contient l''as de cœur). Des événements incompatibles seraient par exemple « tirer un cœur » et « tirer un pique », car une même carte ne peut pas être les deux. La notion d''incompatibilité est essentielle pour appliquer correctement la formule P(A ∪ B) = P(A) + P(B), qui n''est valable que si A et B sont incompatibles.',
  'Confondre « événements différents » et « événements incompatibles ». Deux événements peuvent être différents sans être incompatibles : il suffit qu''ils aient au moins une issue en commun.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 7. GRAPHIQUES TROMPEURS — Analyse critique (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb030000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique',
  'Avance',
  'qcm',
  'Une publicité montre un diagramme en bâtons comparant deux produits. Le produit A a une satisfaction de 4,2/5 et le produit B de 3,8/5. L''axe des ordonnées va de 3,5 à 4,5. Le bâton de A apparaît visuellement environ 2 fois plus haut que celui de B. Quel est le réel écart en pourcentage entre les deux scores ?',
  NULL,
  '[{"id":"a","label":"Environ 100 % d''écart (le double)"},{"id":"b","label":"Environ 50 % d''écart"},{"id":"c","label":"Environ 10,5 % d''écart"},{"id":"d","label":"Environ 25 % d''écart"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''écart réel entre les deux scores est (4,2 − 3,8) / 3,8 × 100 ≈ 10,5 %. Cependant, sur l''axe tronqué (de 3,5 à 4,5), le bâton de A dépasse de 0,7 unité (4,2 − 3,5) tandis que celui de B ne dépasse que de 0,3 unité (3,8 − 3,5). Le rapport visuel est 0,7 / 0,3 ≈ 2,3, donnant l''impression que A est plus de 2 fois meilleur que B. L''axe tronqué amplifie considérablement un écart réel modeste de 10,5 %. C''est un procédé très fréquent en publicité comparative.',
  'Se fier à l''impression visuelle du graphique plutôt qu''aux valeurs numériques. Un axe tronqué peut transformer un écart de 10 % en une différence visuelle apparente de 100 %.',
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
  'fb030000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique',
  'Avance',
  'reponse_courte',
  'Un graphique en 3D (perspective) représente un diagramme circulaire. Le secteur situé à l''avant du graphique (face au lecteur) paraît plus grand que le secteur situé à l''arrière, alors qu''ils ont le même pourcentage. Comment appelle-t-on cet effet de distorsion ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["effet de perspective","perspective","distorsion de perspective","biais de perspective","déformation perspective","effet 3D","distorsion 3D"]}'::jsonb,
  'Il s''agit de l''effet de perspective (ou distorsion de perspective). Lorsqu''un diagramme circulaire est représenté en 3D, les secteurs situés au premier plan (en bas ou à l''avant) apparaissent visuellement plus grands que ceux situés à l''arrière-plan, à cause de la déformation induite par la projection en perspective. Deux secteurs de même pourcentage auront des tailles perçues différentes selon leur position dans le diagramme 3D. C''est pourquoi les statisticiens recommandent d''éviter les diagrammes circulaires en 3D, qui nuisent à la lecture exacte des proportions. Les diagrammes en 2D sont toujours préférables pour une lecture fidèle des données.',
  'Penser que la représentation 3D améliore la lisibilité d''un diagramme. En réalité, elle introduit des distorsions visuelles qui nuisent à l''interprétation correcte des données.',
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
  'fb030000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_graphiques_trompeurs',
  'Graphiques trompeurs — Analyse critique',
  'Avance',
  'vrai_faux',
  'Un graphique montre deux courbes d''évolution avec deux axes des ordonnées différents (un à gauche, un à droite) ayant des échelles très différentes. En croisant visuellement les deux courbes, on peut affirmer qu''il existe un lien de causalité entre les deux phénomènes représentés.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''utilisation de deux axes des ordonnées avec des échelles différentes permet de faire se croiser visuellement n''importe quelles courbes, en ajustant les échelles à volonté. Ce croisement apparent ne prouve aucun lien entre les deux phénomènes. Il s''agit d''un procédé graphique trompeur qui suggère visuellement une corrélation (voire une causalité) entre deux grandeurs potentiellement indépendantes. Pour établir un lien, il faut une analyse statistique rigoureuse (coefficient de corrélation, étude causale). La simple superposition visuelle de courbes ne constitue jamais une preuve. Ce type de manipulation est fréquent sur les réseaux sociaux pour promouvoir de fausses corrélations.',
  'Interpréter une ressemblance visuelle entre deux courbes comme un lien de cause à effet. Les « corrélations absurdes » (spurious correlations) montrent que des phénomènes sans aucun rapport peuvent avoir des courbes d''allure similaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 8. HISTOGRAMMES À CLASSES (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb080000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction',
  'Avance',
  'reponse_courte',
  'Un histogramme à classes inégales représente les salaires (en milliers d''euros) de 100 employés. La classe [20 ; 30[ a une densité de fréquence de 0,04 et la classe [30 ; 50[ a une densité de fréquence de 0,02. Quelle classe a le plus grand effectif ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["[20 ; 30[","[20;30[","20-30","la classe [20 ; 30[","les deux classes ont le même effectif","même effectif","elles ont le même effectif","égalité"]}'::jsonb,
  'Pour trouver l''effectif (ou la fréquence) à partir de la densité, on multiplie la densité par l''amplitude de la classe. Classe [20 ; 30[ : fréquence = 0,04 × 10 = 0,40 → effectif = 0,40 × 100 = 40. Classe [30 ; 50[ : fréquence = 0,02 × 20 = 0,40 → effectif = 0,40 × 100 = 40. Les deux classes ont le même effectif (40 employés chacune) ! Malgré une densité deux fois plus faible, la classe [30 ; 50[ a une amplitude deux fois plus grande, ce qui compense exactement. C''est l''aire du rectangle (densité × amplitude) qui représente la fréquence, pas la hauteur seule.',
  'Se fier uniquement à la hauteur des barres : la classe [20 ; 30[ a une barre plus haute (0,04 contre 0,02), mais cela ne signifie pas un effectif plus grand quand les amplitudes diffèrent.',
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
  'fb080000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction',
  'Avance',
  'qcm',
  'Un histogramme à 5 classes de même amplitude représente les durées d''attente (en min) de 80 patients. Les effectifs sont : [0 ; 10[ → 20, [10 ; 20[ → 30, [20 ; 30[ → 15, [30 ; 40[ → 10, [40 ; 50[ → 5. On construit les fréquences cumulées croissantes. Quelle est la fréquence cumulée à la borne 30 minutes ?',
  NULL,
  '[{"id":"a","label":"18,75 %"},{"id":"b","label":"62,5 %"},{"id":"c","label":"81,25 %"},{"id":"d","label":"100 %"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La fréquence cumulée à la borne 30 minutes correspond à la proportion de patients ayant attendu moins de 30 minutes. On additionne les effectifs des classes [0 ; 10[, [10 ; 20[ et [20 ; 30[ : 20 + 30 + 15 = 65 patients. La fréquence cumulée est 65 / 80 = 0,8125, soit 81,25 %. Cela signifie que 81,25 % des patients ont attendu moins de 30 minutes. Sur l''ogive (courbe des fréquences cumulées croissantes), le point correspondant serait (30 ; 0,8125). La fréquence cumulée est une fonction croissante qui vaut 0 au début et 1 (ou 100 %) à la fin.',
  'Prendre uniquement la fréquence de la classe [20 ; 30[ (15/80 = 18,75 %) au lieu de cumuler les fréquences de toutes les classes jusqu''à cette borne.',
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
  'fb080000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_histogramme_classes',
  'Histogrammes à classes — Lecture et construction',
  'Avance',
  'vrai_faux',
  'Un histogramme à classes de même amplitude représente les notes d''un examen. Si toutes les barres ont exactement la même hauteur, alors la distribution est uniforme et la moyenne est égale à la médiane.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Si toutes les barres ont la même hauteur dans un histogramme à classes de même amplitude, chaque classe contient le même effectif : la distribution est uniforme (ou « rectangulaire »). Une distribution uniforme est parfaitement symétrique, et pour toute distribution symétrique, la moyenne est égale à la médiane. Par exemple, avec les classes [0 ; 5[, [5 ; 10[, [10 ; 15[, [15 ; 20[ ayant chacune le même effectif, la distribution est symétrique autour de 10, et la moyenne comme la médiane valent 10. La distribution uniforme est la distribution la plus dispersée possible pour un intervalle donné.',
  'Penser qu''une distribution uniforme a toujours une moyenne de 0 ou de 50 %. La moyenne d''une distribution uniforme dépend des bornes de l''intervalle : elle est au milieu de cet intervalle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 9. LECTURE DE DONNÉES DANS LES MÉDIAS (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb0f0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_lecture_donnees_media',
  'Lecture de données dans les médias',
  'Intermediaire',
  'qcm',
  'Un article titre : « Le salaire moyen en France est de 2 500 € nets par mois. » Un lecteur qui gagne 2 100 € nets s''étonne d''être en dessous de la « moyenne ». Quelle information complémentaire serait la plus utile pour mieux situer son salaire ?',
  NULL,
  '[{"id":"a","label":"Le salaire maximal en France"},{"id":"b","label":"Le salaire médian, qui est le salaire tel que 50 % des Français gagnent moins"},{"id":"c","label":"Le nombre total de salariés en France"},{"id":"d","label":"Le taux d''inflation annuel"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le salaire médian est plus représentatif que le salaire moyen pour situer un individu. La moyenne est tirée vers le haut par les très hauts salaires (PDG, cadres supérieurs), ce qui la rend supérieure au salaire perçu par la majorité des salariés. En France, le salaire médian est généralement inférieur de 15 à 20 % au salaire moyen. Avec 2 100 € nets, ce lecteur pourrait être très proche du salaire médian, voire au-dessus. Cet exemple illustre pourquoi les médias devraient privilégier la médiane à la moyenne pour décrire les revenus : la médiane n''est pas déformée par les valeurs extrêmes.',
  'Penser que la moyenne est toujours l''indicateur le plus pertinent. Pour les distributions asymétriques (comme les revenus), la médiane donne une image plus fidèle de la « valeur typique ».',
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
  'fb0f0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_lecture_donnees_media',
  'Lecture de données dans les médias',
  'Intermediaire',
  'vrai_faux',
  'Un sondage réalisé auprès de 500 personnes donne une marge d''erreur de ± 4 %. Le résultat annoncé est « 52 % des Français sont favorables ». On peut donc affirmer avec certitude que la majorité des Français est favorable.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Avec une marge d''erreur de ± 4 %, le vrai pourcentage se situe probablement entre 48 % et 56 %. Comme l''intervalle de confiance [48 % ; 56 %] inclut des valeurs inférieures à 50 %, on ne peut pas affirmer avec certitude que la majorité est favorable. Le résultat est compatible aussi bien avec une majorité favorable (52-56 %) qu''avec une minorité favorable (48-50 %). Pour conclure à une majorité, il faudrait que la borne inférieure de l''intervalle de confiance soit supérieure à 50 %, soit un résultat d''au moins 54 % avec cette marge d''erreur. La marge d''erreur est une information essentielle que les médias devraient toujours mentionner.',
  'Ignorer la marge d''erreur et interpréter le résultat brut (52 %) comme un fait certain. La marge d''erreur signifie que le résultat réel peut varier dans un intervalle autour de la valeur annoncée.',
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
  'fb0f0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_lecture_donnees_media',
  'Lecture de données dans les médias',
  'Intermediaire',
  'reponse_courte',
  'Un graphique publié dans un magazine indique qu''une entreprise a réalisé 2 millions d''euros de chiffre d''affaires en 2023 et 2,1 millions en 2024. Le titre de l''article annonce « une croissance de 5 % ». Ce pourcentage est-il correct ? Répondre par oui ou non.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["oui","Oui","OUI","correct","c''est correct"]}'::jsonb,
  'Oui, le pourcentage est correct. Le taux de croissance se calcule : (valeur finale − valeur initiale) / valeur initiale × 100 = (2,1 − 2,0) / 2,0 × 100 = 0,1 / 2,0 × 100 = 5 %. La formule du taux de variation est fondamentale pour vérifier les données chiffrées dans les médias. Il faut toujours vérifier les calculs annoncés, car des erreurs de pourcentage sont fréquentes dans la presse. On distingue la variation absolue (+ 0,1 million = + 100 000 €) de la variation relative (+ 5 %). Les deux informations sont complémentaires pour comprendre l''ampleur d''un changement.',
  'Calculer 2,1 / 2,0 = 1,05 et répondre « 105 % » au lieu de « 5 % ». Le taux de variation est la variation divisée par la valeur initiale, pas le rapport entre les deux valeurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- 10. LECTURE GRAPHIQUE DE FONCTIONS (Q8, Q9, Q10)
-- ============================================================

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0230000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_lecture_graphique',
  'Lecture graphique de fonctions',
  'Intermediaire',
  'qcm',
  'Le graphique d''une fonction affine passe par les points (0 ; 3) et (4 ; 11). Quel est le coefficient directeur (pente) de cette droite ?',
  NULL,
  '[{"id":"a","label":"2"},{"id":"b","label":"3"},{"id":"c","label":"4"},{"id":"d","label":"8"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le coefficient directeur d''une droite passant par deux points (x₁ ; y₁) et (x₂ ; y₂) se calcule par la formule : a = (y₂ − y₁) / (x₂ − x₁). Ici : a = (11 − 3) / (4 − 0) = 8 / 4 = 2. Cela signifie que pour chaque unité en abscisse, l''ordonnée augmente de 2 unités. L''équation de la droite est y = 2x + 3 (car l''ordonnée à l''origine est 3, lu au point (0 ; 3)). Le coefficient directeur renseigne sur la pente : positif → droite croissante, négatif → droite décroissante, nul → droite horizontale.',
  'Inverser numérateur et dénominateur dans la formule : calculer (4 − 0) / (11 − 3) = 4/8 = 0,5 au lieu de 2. La variation des ordonnées (Δy) est toujours au numérateur.',
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
  'b0230000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_lecture_graphique',
  'Lecture graphique de fonctions',
  'Intermediaire',
  'reponse_courte',
  'Un graphique représente la consommation d''eau (en litres) d''un foyer en fonction du temps (en heures). La courbe passe par les points (0 ; 0), (2 ; 100), (5 ; 100), (8 ; 250). Quelle est la consommation totale d''eau entre 0 h et 8 h ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["250","250 L","250 litres","250L"]}'::jsonb,
  'On lit directement sur le graphique que la consommation cumulée à 8 h est de 250 litres (ordonnée du point (8 ; 250)). Attention : la question porte sur la consommation totale, qui est la valeur finale lue en ordonnée, et non sur la somme des ordonnées des points intermédiaires. On peut aussi analyser les phases : de 0 à 2 h, consommation de 100 L ; de 2 à 5 h, consommation nulle (plateau horizontal, pas d''eau utilisée) ; de 5 à 8 h, consommation de 150 L supplémentaires (250 − 100). La courbe cumulative ne descend jamais car la consommation ne peut pas être « négative ».',
  'Additionner toutes les ordonnées des points (0 + 100 + 100 + 250 = 450 L). Sur un graphique de consommation cumulée, la valeur finale donne directement le total, sans additionner les points intermédiaires.',
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
  'b0230000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_lecture_graphique',
  'Lecture graphique de fonctions',
  'Intermediaire',
  'vrai_faux',
  'Sur un graphique, deux droites représentent le coût de deux abonnements en fonction du nombre de mois. Si les deux droites se croisent au point (6 ; 90), cela signifie qu''au bout de 6 mois, les deux abonnements auront coûté chacun 90 €.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Le point d''intersection de deux courbes représentant le coût en fonction du temps correspond au moment où les deux coûts sont égaux. Ici, au bout de 6 mois, les deux abonnements coûtent chacun 90 €. Avant ce point, l''abonnement dont la droite est en dessous est le moins cher ; après ce point, c''est l''inverse. Le point d''intersection est essentiel pour comparer deux offres : il détermine le « seuil de rentabilité » au-delà duquel une offre devient plus avantageuse que l''autre. C''est exactement la même logique que la résolution graphique d''un système de deux équations à deux inconnues.',
  'Interpréter le point d''intersection comme le moment où un abonnement devient gratuit ou expire. Le croisement signifie simplement que les deux coûts cumulés sont égaux à cet instant.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
