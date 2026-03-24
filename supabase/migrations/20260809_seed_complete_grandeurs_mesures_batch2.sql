-- ============================================================================
-- Batch 2 : Complétion des séries grandeurs_mesures (Q8, Q9, Q10)
-- 17 séries × 3 questions = 51 exercices
-- Niveau : Intermediaire ou Avance | Access : free
-- ============================================================================


-- ============================================================================
-- 1. math_grandeurs_composees_etapes (prefix=b00a0000)
-- ============================================================================

-- Q8 (QCM) — Consommation et coût au litre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'qcm',
  'Un camion-citerne livre 8 000 litres de fioul à un prix de 1,15 € le litre. Le trajet de livraison fait 120 km et le camion consomme 35 L aux 100 km. Quel est le coût total (fioul livré + carburant de livraison) ?',
  NULL,
  '[{"id":"a","label":"9 200 €"},{"id":"b","label":"9 248,30 €"},{"id":"c","label":"9 284,30 €"},{"id":"d","label":"9 248 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Ce problème mobilise deux grandeurs composées : le prix unitaire (€/L) et la consommation (L/100 km). Étape 1 — Coût du fioul livré : 8 000 × 1,15 = 9 200 €. Étape 2 — Consommation du camion : (120 / 100) × 35 = 1,2 × 35 = 42 L. Étape 3 — Coût du carburant de livraison (même prix au litre, le camion roule au fioul) : 42 × 1,15 = 48,30 €. Étape 4 — Coût total : 9 200 + 48,30 = 9 248,30 €. Le distracteur a (9 200 €) oublie le coût du carburant de livraison.',
  'Oublier d''ajouter le coût du carburant de livraison, ou appliquer un prix différent pour le carburant du camion.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (vrai_faux) — Débit et capacité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'vrai_faux',
  'Deux pompes remplissent un bassin de 3 600 litres. La pompe A a un débit de 15 L/min, la pompe B a un débit de 10 L/min. En fonctionnant ensemble, elles remplissent le bassin en 2 h 24 min.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Les deux pompes fonctionnent ensemble, donc leur débit combiné est : 15 + 10 = 25 L/min. Temps de remplissage : 3 600 ÷ 25 = 144 min. Conversion en heures et minutes : 144 min = 2 h 24 min (car 144 = 2 × 60 + 24). L''affirmation est donc vraie. Ce problème illustre l''additivité des débits (grandeurs composées de même nature) et nécessite une conversion minutes → heures/minutes.',
  'Calculer séparément le temps de chaque pompe (240 min et 360 min) puis faire la moyenne (300 min = 5 h), au lieu d''additionner les débits.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (reponse_courte) — Rendement et masse volumique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b00a0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_composees_etapes',
  'Problèmes à étapes — Grandeurs composées', 'Avance', 'reponse_courte',
  'Un pressoir extrait 0,6 L de jus par kilogramme de pommes. La masse volumique du jus est d''environ 1,05 kg/L. Quelle masse de jus obtient-on à partir d''une caisse de 25 kg de pommes ? Donnez la réponse en kg, arrondie au dixième.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15,75","15.75","15,75 kg","15.75 kg","15,8","15.8","15,8 kg","15.8 kg"]}'::jsonb,
  'Ce problème mobilise deux grandeurs composées : le rendement (L/kg) et la masse volumique (kg/L). Étape 1 — Volume de jus obtenu : 25 kg × 0,6 L/kg = 15 L. Étape 2 — Masse de jus : 15 L × 1,05 kg/L = 15,75 kg. La masse volumique permet de passer du volume à la masse. Remarque : le jus est légèrement plus dense que l''eau (1,05 > 1) à cause des sucres dissous.',
  'Confondre volume et masse en répondant directement 15 L, ou oublier d''utiliser la masse volumique pour convertir les litres en kilogrammes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 2. math_grandeurs_proportionnelles_graphique (prefix=fa090000)
-- ============================================================================

-- Q8 (reponse_courte) — Coefficient de proportionnalité à partir du graphique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire', 'reponse_courte',
  'Un graphique représente le prix (en €) en fonction de la masse (en kg) de fruits. La droite passe par l''origine et par le point (3 ; 7,50). Quel est le prix au kilogramme, en euros ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2,50","2.50","2,5","2.5","2,50 €","2.50 €","2,5 €"]}'::jsonb,
  'Le coefficient de proportionnalité correspond au prix par kilogramme. Il se calcule en divisant le prix par la masse : 7,50 ÷ 3 = 2,50 €/kg. Ce coefficient est constant pour tous les points de la droite, ce qui caractérise la proportionnalité.',
  'Erreur fréquente : inverser le calcul (3 ÷ 7,50 = 0,4) ou confondre le coefficient avec les coordonnées du point.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Identifier la non-proportionnalité sur un graphique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire', 'qcm',
  'Un opérateur téléphonique propose un forfait à 10 € par mois + 0,05 € par minute d''appel. Le graphique du coût mensuel en fonction du nombre de minutes est :',
  NULL,
  '[{"id":"a","label":"Une droite passant par l''origine"},{"id":"b","label":"Une droite ne passant pas par l''origine"},{"id":"c","label":"Une courbe passant par l''origine"},{"id":"d","label":"Un palier constant à 10 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le coût mensuel est C = 10 + 0,05 × n (où n est le nombre de minutes). C''est une fonction affine de la forme y = ax + b avec a = 0,05 et b = 10. Le graphique est donc une droite, mais elle ne passe pas par l''origine : quand n = 0, C = 10 € (l''abonnement fixe). Il ne s''agit donc PAS d''une situation de proportionnalité, mais d''une situation affine.',
  'Erreur fréquente : choisir la réponse (a) en pensant que toute relation linéaire entre deux grandeurs est une proportionnalité, sans vérifier que l''ordonnée à l''origine est nulle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Lecture graphique et proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire', 'vrai_faux',
  'Sur un graphique de proportionnalité, la droite passe par l''origine et par le point (5 ; 20). Le point (8 ; 30) appartient aussi à cette droite.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Le coefficient de proportionnalité est 20 ÷ 5 = 4. Pour que le point (8 ; 30) appartienne à la droite, il faudrait que 8 × 4 = 30, or 8 × 4 = 32 ≠ 30. Le point (8 ; 32) appartiendrait à la droite, pas le point (8 ; 30). L''affirmation est fausse. Pour vérifier l''appartenance d''un point à une droite de proportionnalité, il suffit de vérifier que le rapport y/x est constant.',
  'Erreur fréquente : valider approximativement sans vérifier le calcul exact, en se disant que 30 est « proche » de 32.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 3. math_instruments_mesure_precision (prefix=fa0c0000)
-- ============================================================================

-- Q8 (qcm) — Choix de l''instrument adapté
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision',
  'Instruments de mesure et précision', 'Intermediaire', 'qcm',
  'Pour mesurer l''épaisseur d''une feuille de papier (environ 0,1 mm), quel instrument est le plus adapté ?',
  NULL,
  '[{"id":"a","label":"Une règle graduée en millimètres"},{"id":"b","label":"Un mètre ruban"},{"id":"c","label":"Un pied à coulisse (ou palmer)"},{"id":"d","label":"Un décamètre"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'L''épaisseur d''une feuille de papier est d''environ 0,1 mm (100 µm). Une règle graduée en mm a une précision de 1 mm, bien trop grossière pour cette mesure. Un mètre ruban et un décamètre sont encore moins précis. Seul un pied à coulisse (précision 0,1 mm ou 0,05 mm) ou un palmer/micromètre (précision 0,01 mm) permet de mesurer une telle épaisseur. Le choix de l''instrument dépend de l''ordre de grandeur de la mesure à effectuer.',
  'Penser qu''une règle suffit parce qu''elle mesure en millimètres : l''élève ne distingue pas entre l''unité utilisée et la précision nécessaire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (vrai_faux) — Erreur de parallaxe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision',
  'Instruments de mesure et précision', 'Intermediaire', 'vrai_faux',
  'Lorsqu''on mesure une longueur avec une règle, le fait de ne pas placer ses yeux en face de la graduation peut entraîner une erreur de parallaxe.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. L''erreur de parallaxe se produit quand l''angle de visée entre l''œil et la graduation n''est pas perpendiculaire à l''instrument de mesure. Si l''observateur regarde de biais, il lit une valeur décalée par rapport à la vraie mesure. Ce phénomène concerne tous les instruments à graduation (règle, éprouvette, thermomètre, rapporteur). Pour l''éviter, l''observateur doit placer ses yeux exactement en face de la graduation à lire.',
  'Penser que l''erreur de parallaxe ne concerne que les liquides dans une éprouvette : elle s''applique à tout instrument à graduation.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (reponse_courte) — Encadrement d''une mesure
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0c0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_instruments_mesure_precision',
  'Instruments de mesure et précision', 'Intermediaire', 'reponse_courte',
  'Un élève mesure la masse d''un objet avec une balance précise au gramme près. L''affichage indique 347 g. Entre quelles valeurs la masse réelle est-elle comprise ? (format : X,X g et Y,Y g)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["346,5 g et 347,5 g","346,5 et 347,5","entre 346,5 g et 347,5 g","346,5g et 347,5g"]}'::jsonb,
  'Quand un instrument est précis au gramme près, la valeur affichée est arrondie à l''unité. La masse réelle se situe donc dans l''intervalle [346,5 g ; 347,5 g[. L''incertitude absolue est de ± 0,5 g autour de la valeur affichée. Cette notion d''encadrement de la mesure est fondamentale en métrologie : toute mesure est entachée d''une incertitude liée à la précision de l''instrument.',
  'Répondre « entre 346 g et 348 g » en prenant ± 1 g au lieu de ± 0,5 g : l''élève confond la graduation de l''instrument avec la demi-graduation qui définit l''incertitude.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 4. math_longueurs_conversions (prefix=fa010000)
-- ============================================================================

-- Q8 (reponse_courte) — Conversion multiple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Intermediaire', 'reponse_courte',
  'Exprimer 2 km 3 hm 5 dam 7 m en mètres.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["2357","2 357","2357 m","2 357 m"]}'::jsonb,
  'On décompose : 2 km = 2 000 m, 3 hm = 300 m, 5 dam = 50 m, 7 m = 7 m. Total : 2 000 + 300 + 50 + 7 = 2 357 m. Chaque unité représente une position dans le tableau de conversion des longueurs : km | hm | dam | m | dm | cm | mm. Le nombre s''écrit directement : 2 357 m.',
  'Erreur fréquente : confondre les positions dans le tableau de conversion et écrire par exemple 2 357 0 en ajoutant un zéro inutile.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Problème avec conversion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Intermediaire', 'qcm',
  'Une corde mesure 12,5 m. On la coupe en morceaux de 75 cm chacun. Combien de morceaux obtient-on ?',
  NULL,
  '[{"id":"a","label":"15"},{"id":"b","label":"16"},{"id":"c","label":"16,67"},{"id":"d","label":"17"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il faut d''abord convertir dans la même unité : 12,5 m = 1 250 cm. Nombre de morceaux : 1 250 ÷ 75 = 16,666... Comme on ne peut couper qu''un nombre entier de morceaux complets, on obtient 16 morceaux (avec un reste de 50 cm). En situation concrète, le résultat d''une division doit être interprété : ici on arrondit par défaut car on ne peut pas obtenir de morceau partiel de la longueur souhaitée.',
  'Erreur fréquente : répondre 17 en arrondissant par excès, alors qu''on ne peut pas obtenir un 17e morceau complet de 75 cm.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Conversion avec décimaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa010000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_longueurs_conversions',
  'Longueurs — Conversions et calculs', 'Intermediaire', 'vrai_faux',
  '0,025 km = 250 cm.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Convertissons 0,025 km en cm. D''abord en mètres : 0,025 km = 0,025 × 1 000 = 25 m. Puis en cm : 25 m = 25 × 100 = 2 500 cm. Or l''affirmation dit 250 cm, ce qui est faux. 250 cm = 2,5 m = 0,0025 km. L''erreur vient d''un facteur 10 : l''élève a probablement multiplié par 100 au lieu de 1 000 lors de la première conversion (km → m).',
  'Erreur fréquente : multiplier 0,025 par 100 au lieu de 1 000 pour convertir les km en m, puis oublier une étape de conversion.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 5. math_masses_contenances_ordres (prefix=b0200000)
-- ============================================================================

-- Q8 (vrai_faux) — Relation masse/volume pour différents liquides
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur', 'Intermediaire', 'vrai_faux',
  'Un litre d''huile a une masse d''environ 1 kg, comme l''eau.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''huile est moins dense que l''eau : sa masse volumique est d''environ 0,9 kg/L (variant entre 0,88 et 0,92 selon le type d''huile). Ainsi, 1 litre d''huile pèse environ 900 g et non 1 kg. C''est d''ailleurs pour cela que l''huile flotte sur l''eau. La relation « 1 L ≈ 1 kg » n''est valable que pour l''eau (et les liquides de masse volumique proche de 1 kg/L, comme le lait). Au CRPE, il est important de savoir que cette correspondance ne se généralise pas à tous les liquides.',
  'Généraliser la relation 1 L = 1 kg à tous les liquides : l''élève applique la propriété de l''eau à l''huile sans vérifier.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Problème de conversion masse/contenance
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur', 'Intermediaire', 'qcm',
  'Un aquarium contient 54 litres d''eau. On ajoute 2,5 kg de gravier au fond. Sachant que la masse du gravier ne change pas le volume d''eau, quelle est la masse totale de l''eau et du gravier ? (1 L d''eau ≈ 1 kg)',
  NULL,
  '[{"id":"a","label":"54 kg"},{"id":"b","label":"56,5 kg"},{"id":"c","label":"2,554 kg"},{"id":"d","label":"135 kg"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La masse de l''eau est : 54 L × 1 kg/L = 54 kg (en utilisant la correspondance 1 L d''eau ≈ 1 kg). On ajoute la masse du gravier : 54 + 2,5 = 56,5 kg. L''option a oublie le gravier. L''option d multiplie par un mauvais facteur. Ce problème combine la conversion volume → masse pour l''eau et une addition de masses.',
  'Oublier de convertir les litres d''eau en kilogrammes ou inversement oublier d''ajouter la masse du gravier.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (reponse_courte) — Contenance et partage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0200000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_contenances_ordres',
  'Masses, contenances et ordres de grandeur', 'Intermediaire', 'reponse_courte',
  'Un bidon contient 5 L de jus de fruit. On remplit des verres de 25 cL et des gobelets de 15 cL. Si on remplit 10 verres, combien de gobelets peut-on encore remplir avec le jus restant ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["16","16 gobelets"]}'::jsonb,
  'Étape 1 — Volume servi dans les verres : 10 × 25 cL = 250 cL. Étape 2 — Volume restant : 5 L = 500 cL, donc 500 − 250 = 250 cL. Étape 3 — Nombre de gobelets : 250 ÷ 15 = 16,66... On ne peut remplir que 16 gobelets entiers (il restera 250 − 16 × 15 = 250 − 240 = 10 cL). Ce problème combine conversions de contenances (L → cL) et division euclidienne.',
  'Erreur fréquente : oublier de convertir les 5 L en cL, ou arrondir par excès à 17 gobelets au lieu de 16.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 6. math_masses_conversions (prefix=fa070000)
-- ============================================================================

-- Q8 (qcm) — Problème à étapes avec masses
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa070000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Intermediaire', 'qcm',
  'Un boulanger utilise 2,4 kg de farine pour faire 8 baguettes. Combien de grammes de farine utilise-t-il pour une seule baguette ?',
  NULL,
  '[{"id":"a","label":"30 g"},{"id":"b","label":"300 g"},{"id":"c","label":"3 000 g"},{"id":"d","label":"3 g"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Il faut d''abord convertir : 2,4 kg = 2 400 g. Puis on divise par le nombre de baguettes : 2 400 ÷ 8 = 300 g par baguette. Le résultat est cohérent avec les ordres de grandeur : une baguette standard de 250 g nécessite un peu plus de farine que sa masse finale (une partie de l''eau s''évapore à la cuisson).',
  'Erreur fréquente : diviser 2,4 par 8 sans convertir en grammes et répondre 0,3, ou oublier la conversion et obtenir 30 g.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (vrai_faux) — Comparaison de masses avec unités mixtes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa070000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Intermediaire', 'vrai_faux',
  '3 kg 250 g est supérieur à 3 200 g.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  '3 kg 250 g = 3 000 g + 250 g = 3 250 g. Comparons : 3 250 g > 3 200 g. L''affirmation est donc vraie. Pour comparer des masses exprimées dans des unités différentes, il faut toujours les convertir dans la même unité. L''écriture « 3 kg 250 g » signifie « 3 kg et 250 g », c''est une écriture composée.',
  'Erreur fréquente : lire « 3,250 kg » comme « 3,25 kg » et conclure que c''est égal à 3 250 g ÷ 10 = 325 g (confusion de virgule).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (reponse_courte) — Conversion tonne/quintal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa070000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_masses_conversions',
  'Masses — Conversions et problèmes', 'Intermediaire', 'reponse_courte',
  'Un éleveur vend 2,8 tonnes de blé. Combien cela fait-il en quintaux ? (1 quintal = 100 kg)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["28","28 quintaux","28 q"]}'::jsonb,
  'D''abord, convertissons en kg : 2,8 t = 2,8 × 1 000 = 2 800 kg. Un quintal vaut 100 kg, donc : 2 800 ÷ 100 = 28 quintaux. On peut aussi retenir que 1 t = 10 quintaux, donc 2,8 t = 28 quintaux. Le quintal est une unité agraire encore utilisée dans le commerce des céréales.',
  'Erreur fréquente : diviser par 1 000 au lieu de 100 et répondre 2,8 quintaux, ou multiplier au lieu de diviser.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 7. math_mesure_angles (prefix=fa060000)
-- ============================================================================

-- Q8 (qcm) — Angles dans un quadrilatère
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles',
  'Mesure d''angles — Types et calculs', 'Intermediaire', 'qcm',
  'Dans un parallélogramme, un angle mesure 70°. Quelles sont les mesures des trois autres angles ?',
  NULL,
  '[{"id":"a","label":"70°, 110°, 110°"},{"id":"b","label":"70°, 70°, 70°"},{"id":"c","label":"110°, 110°, 110°"},{"id":"d","label":"70°, 90°, 130°"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Dans un parallélogramme, les angles opposés sont égaux et les angles consécutifs sont supplémentaires (leur somme vaut 180°). Si un angle mesure 70°, l''angle opposé mesure aussi 70°. Les deux autres angles mesurent chacun 180° − 70° = 110°. Vérification : 70° + 110° + 70° + 110° = 360° (somme des angles d''un quadrilatère). Cette propriété des parallélogrammes est fondamentale en géométrie du cycle 3.',
  'Erreur fréquente : penser que tous les angles d''un parallélogramme sont égaux (ce qui n''est vrai que pour le rectangle).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Angle sur une horloge (cas plus complexe)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles',
  'Mesure d''angles — Types et calculs', 'Intermediaire', 'reponse_courte',
  'À 15 h 00, quelle est la mesure, en degrés, de l''angle formé entre la grande aiguille et la petite aiguille d''une horloge ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["90","90°","90 degrés"]}'::jsonb,
  'À 15 h 00, la grande aiguille pointe vers le 12 et la petite aiguille vers le 3. Chaque heure correspond à un angle de 360° ÷ 12 = 30°. L''écart entre 12 et 3 est de 3 heures, soit 3 × 30° = 90°. On obtient un angle droit. Ce type de problème, fréquent au CRPE, met en jeu la proportionnalité appliquée à la mesure d''angles.',
  'Diviser 360° par 24 au lieu de 12 : le cadran d''une horloge couvre 12 heures et non 24.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Somme des angles d''un quadrilatère
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa060000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_mesure_angles',
  'Mesure d''angles — Types et calculs', 'Intermediaire', 'vrai_faux',
  'La somme des angles d''un quadrilatère quelconque est de 360°.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La somme des angles d''un quadrilatère est toujours égale à 360°, quelle que soit sa forme. On peut le démontrer en traçant une diagonale qui partage le quadrilatère en deux triangles : chaque triangle a une somme d''angles de 180°, donc le total est 2 × 180° = 360°. Cette propriété généralise celle du triangle (180°) et s''étend à tout polygone à n côtés : somme des angles = (n − 2) × 180°.',
  'Erreur fréquente : penser que la somme est 180° (comme pour un triangle) ou 540° en ajoutant un triangle supplémentaire par erreur.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 8. math_monnaie_budget (prefix=fa100000)
-- ============================================================================

-- Q8 (qcm) — Pourcentage de réduction et prix final
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Intermediaire', 'qcm',
  'Un commerçant applique une remise de 20 % sur un article à 45 €, puis une remise supplémentaire de 10 % sur le prix déjà réduit. Quel est le prix final ?',
  NULL,
  '[{"id":"a","label":"31,50 €"},{"id":"b","label":"32,40 €"},{"id":"c","label":"30 €"},{"id":"d","label":"33,75 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Étape 1 — Première remise de 20 % : 45 × 0,80 = 36 €. Étape 2 — Deuxième remise de 10 % sur le nouveau prix : 36 × 0,90 = 32,40 €. Attention : appliquer deux remises successives de 20 % et 10 % n''est PAS équivalent à une remise unique de 30 %. La remise totale effective est : 1 − (0,80 × 0,90) = 1 − 0,72 = 0,28, soit 28 %. Le distracteur c (30 €) correspond à l''erreur 45 × 0,70 = 31,50 qui est le distracteur a. Le distracteur d correspond à une seule remise de 25 %.',
  'Erreur fréquente : additionner les pourcentages (20 % + 10 % = 30 %) et calculer 45 × 0,70 = 31,50 €. Les remises successives se multiplient, elles ne s''additionnent pas.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Budget et répartition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Intermediaire', 'reponse_courte',
  'Trois amis partagent l''addition d''un restaurant. Le repas coûte 87 €. Ils laissent un pourboire de 10 % sur le total. Combien chacun paie-t-il si le partage est équitable ? (Arrondir au centime)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["31,90","31.90","31,90 €","31.90 €"]}'::jsonb,
  'Étape 1 — Pourboire : 87 × 0,10 = 8,70 €. Étape 2 — Total avec pourboire : 87 + 8,70 = 95,70 €. Étape 3 — Part de chacun : 95,70 ÷ 3 = 31,90 €. Vérification : 31,90 × 3 = 95,70 €. Ce problème combine calcul de pourcentage et division d''un nombre décimal.',
  'Erreur fréquente : calculer le pourboire par personne sur le montant individuel (87 ÷ 3 = 29 €, puis 29 × 1,10 = 31,90 €) — ici le résultat est le même par chance, mais la méthode peut diverger si le partage n''est pas égal.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — TVA et prix TTC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa100000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_monnaie_budget',
  'Monnaie et budget', 'Intermediaire', 'vrai_faux',
  'Un article coûte 60 € HT. Avec une TVA de 20 %, son prix TTC est de 72 €.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le prix TTC (Toutes Taxes Comprises) se calcule en ajoutant la TVA au prix HT (Hors Taxes). TVA = 60 × 20/100 = 12 €. Prix TTC = 60 + 12 = 72 €. On peut aussi calculer directement : 60 × 1,20 = 72 €. L''affirmation est donc vraie. Le coefficient multiplicateur pour une TVA de 20 % est 1,20. Ce type de calcul de pourcentage appliqué à un contexte économique réel est un classique du CRPE.',
  'Erreur fréquente : soustraire la TVA au lieu de l''ajouter, ou calculer 20 % de 72 pour vérifier (ce qui donnerait 14,4 ≠ 12).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 9. math_ordre_grandeur_mesures (prefix=fa110000)
-- ============================================================================

-- Q8 (qcm) — Ordre de grandeur d''une aire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Intermediaire', 'qcm',
  'Quel est l''ordre de grandeur de l''aire d''un terrain de football ?',
  NULL,
  '[{"id":"a","label":"700 m²"},{"id":"b","label":"7 000 m²"},{"id":"c","label":"70 000 m²"},{"id":"d","label":"700 000 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Un terrain de football réglementaire mesure environ 105 m × 68 m, soit une aire d''environ 7 140 m² ≈ 7 000 m² (soit 0,7 hectare). Pour comparaison : 700 m² correspond à une grande maison avec jardin, 70 000 m² (7 ha) à un petit parc urbain, et 700 000 m² à un quartier entier. L''estimation d''aires est un exercice important au cycle 3 pour donner du sens aux unités de surface.',
  'Erreur fréquente : confondre les ordres de grandeur en ne se représentant pas concrètement la taille d''un terrain de football.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Estimation d''un volume
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Intermediaire', 'reponse_courte',
  'Une salle de classe mesure environ 9 m de long, 7 m de large et 3 m de hauteur. Quel est l''ordre de grandeur de son volume, en m³ ? (Donner une valeur approchée arrondie à la dizaine)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["190","190 m³","200","200 m³"]}'::jsonb,
  'Le volume de la salle est : 9 × 7 × 3 = 189 m³ ≈ 190 m³ (ou environ 200 m³ en arrondissant à l''ordre de grandeur). Pour donner un repère concret : 1 m³ = 1 000 L, donc la salle contient environ 190 000 L d''air. Ce type d''estimation en trois dimensions est essentiel pour développer le sens spatial et le raisonnement sur les volumes au cycle 3.',
  'Erreur fréquente : calculer l''aire au sol (63 m²) au lieu du volume, en oubliant la troisième dimension (la hauteur).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Plausibilité d''une mesure
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa110000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_ordre_grandeur_mesures',
  'Ordres de grandeur des mesures', 'Intermediaire', 'vrai_faux',
  'Un réfrigérateur standard a une contenance d''environ 250 litres.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Un réfrigérateur standard (sans le congélateur) a une contenance comprise entre 200 et 350 litres, avec une valeur typique autour de 250 L. Un réfrigérateur-congélateur combiné a une contenance totale d''environ 300 à 400 L. Pour comparaison : un mini-frigo contient environ 50 L, un verre d''eau environ 0,25 L. Connaître les ordres de grandeur des contenances d''objets du quotidien est un attendu des programmes Éduscol.',
  'Erreur fréquente : confondre les ordres de grandeur et penser qu''un réfrigérateur contient 25 litres (un facteur 10 trop petit) ou 2 500 litres (un facteur 10 trop grand).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 10. math_perimetre_aire_volume_confusions (prefix=b0270000)
-- ============================================================================

-- Q8 (qcm) — Agrandissement et volume
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Avance', 'qcm',
  'On triple les dimensions d''un cube. Par combien son volume est-il multiplié ?',
  NULL,
  '[{"id":"a","label":"3"},{"id":"b","label":"9"},{"id":"c","label":"27"},{"id":"d","label":"6"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'Quand on multiplie toutes les dimensions d''un solide par un facteur k, le volume est multiplié par k³. Ici k = 3, donc le volume est multiplié par 3³ = 27. Vérification : un cube de côté 2 cm a un volume de 8 cm³. En triplant, le côté devient 6 cm et le volume 216 cm³. Rapport : 216 / 8 = 27. Ce résultat prolonge la règle des aires (× k²) à la troisième dimension : périmètre × k, aire × k², volume × k³.',
  'Répondre 3 (facteur linéaire) ou 9 (facteur d''aire) en ne prenant pas en compte que le volume dépend du cube du facteur d''agrandissement.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (vrai_faux) — Confusion unités périmètre/aire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Avance', 'vrai_faux',
  'Un élève écrit : « L''aire de ce rectangle est de 24 cm. » Cette écriture est correcte.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. L''aire s''exprime en unités de surface : cm², m², km², etc. Écrire « 24 cm » (unité de longueur) pour une aire est une erreur d''unité. L''écriture correcte est « 24 cm² ». Cette confusion entre cm et cm² est très fréquente chez les élèves et révèle une incompréhension de la nature des grandeurs mesurées. Le périmètre (longueur du contour) s''exprime en cm, l''aire (surface couverte) en cm², et le volume (espace occupé) en cm³.',
  'Ne pas distinguer les unités : l''élève pense que « cm » suffit pour toutes les mesures géométriques.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (reponse_courte) — Comparaison périmètre vs aire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Avance', 'reponse_courte',
  'Un rectangle a une aire de 36 cm². Sa longueur est le double de sa largeur. Quel est son périmètre, en cm ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25,46","25.46","25,5","25.5","6racine(2)×(2+1)×2"]}'::jsonb,
  'Soit l la largeur, alors la longueur vaut 2l. Aire = l × 2l = 2l² = 36, donc l² = 18, soit l = √18 = 3√2 ≈ 4,243 cm. La longueur vaut 2l = 6√2 ≈ 8,485 cm. Le périmètre est P = 2 × (l + 2l) = 2 × 3l = 6l = 6 × 3√2 = 18√2 ≈ 25,46 cm. Ce problème montre que connaître l''aire ne suffit pas à déterminer le périmètre sans information supplémentaire sur la forme.',
  'Erreur fréquente : supposer que les dimensions sont des entiers (6 × 6 = 36, mais alors longueur ≠ double de largeur) ou confondre aire et périmètre dans la résolution.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 11. math_perimetre_figures_usuelles (prefix=fa0a0000)
-- ============================================================================

-- Q8 (qcm) — Périmètre d''un cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles',
  'Périmètre des figures usuelles', 'Intermediaire', 'qcm',
  'Un cercle a un diamètre de 14 cm. Quel est son périmètre (arrondi au dixième) ? (π ≈ 3,14)',
  NULL,
  '[{"id":"a","label":"43,96 cm"},{"id":"b","label":"21,98 cm"},{"id":"c","label":"87,92 cm"},{"id":"d","label":"153,86 cm²"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le périmètre (ou circonférence) d''un cercle est P = π × d, où d est le diamètre. Ici : P = 3,14 × 14 = 43,96 cm. On peut aussi utiliser P = 2 × π × r, avec r = 7 cm : P = 2 × 3,14 × 7 = 43,96 cm. L''option b correspond au calcul avec le rayon confondu avec le diamètre (π × 7). L''option d donne des cm², ce qui est une unité d''aire, pas de longueur.',
  'Erreur fréquente : confondre rayon et diamètre dans la formule, ou utiliser la formule de l''aire (π × r²) au lieu de celle du périmètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Périmètre d''un demi-cercle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles',
  'Périmètre des figures usuelles', 'Intermediaire', 'reponse_courte',
  'Un demi-cercle a un diamètre de 10 cm. Quel est son périmètre total (partie courbe + diamètre), arrondi au dixième ? (π ≈ 3,14)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["25,7","25.7","25,7 cm","25.7 cm","25,70","25.70"]}'::jsonb,
  'Le périmètre d''un demi-cercle comprend deux parties : la demi-circonférence et le diamètre. Demi-circonférence = (π × d) / 2 = (3,14 × 10) / 2 = 15,7 cm. Diamètre = 10 cm. Périmètre total = 15,7 + 10 = 25,7 cm. Attention : il ne faut pas oublier le diamètre qui ferme la figure.',
  'Erreur fréquente : oublier d''ajouter le diamètre et répondre seulement 15,7 cm (la demi-circonférence seule ne ferme pas la figure).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Périmètre d''un hexagone régulier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0a0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_perimetre_figures_usuelles',
  'Périmètre des figures usuelles', 'Intermediaire', 'vrai_faux',
  'Un hexagone régulier dont le côté mesure 5 cm a le même périmètre qu''un triangle équilatéral dont le côté mesure 10 cm.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Périmètre de l''hexagone régulier : 6 × 5 = 30 cm. Périmètre du triangle équilatéral : 3 × 10 = 30 cm. Les deux périmètres sont bien égaux. L''affirmation est vraie. Cet exercice illustre que des figures de formes très différentes peuvent avoir le même périmètre. Le périmètre dépend du nombre de côtés et de leur longueur, pas de la forme de la figure.',
  'Erreur fréquente : penser que deux figures de formes différentes ne peuvent pas avoir le même périmètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 12. math_problemes_grandeurs_avance (prefix=fa0f0000)
-- ============================================================================

-- Q8 (reponse_courte) — Aire d''un disque appliquée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance',
  'Problèmes de grandeurs — Niveau avancé CRPE', 'Avance', 'reponse_courte',
  'Une pizza ronde a un diamètre de 30 cm. On la coupe en 8 parts égales. Quelle est l''aire d''une part, arrondie à l''unité ? (π ≈ 3,14)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["88","88 cm²","88cm²"]}'::jsonb,
  'Aire du disque entier : A = π × r² = 3,14 × 15² = 3,14 × 225 = 706,5 cm². Aire d''une part (1/8) : 706,5 ÷ 8 = 88,3125 ≈ 88 cm². Ce problème combine le calcul de l''aire d''un disque avec une division, dans un contexte concret. L''erreur classique est d''utiliser le diamètre au lieu du rayon dans la formule.',
  'Erreur fréquente : utiliser le diamètre (30) au lieu du rayon (15) dans la formule π × r², ce qui quadruplerait le résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Aire d''une figure composée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance',
  'Problèmes de grandeurs — Niveau avancé CRPE', 'Avance', 'qcm',
  'Un terrain est composé d''un rectangle de 40 m × 25 m surmonté d''un triangle isocèle dont la base est le côté de 40 m et la hauteur mesure 12 m. Quelle est l''aire totale du terrain ?',
  NULL,
  '[{"id":"a","label":"1 000 m²"},{"id":"b","label":"1 240 m²"},{"id":"c","label":"1 480 m²"},{"id":"d","label":"1 120 m²"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Aire du rectangle : 40 × 25 = 1 000 m². Aire du triangle : (40 × 12) / 2 = 240 m². Aire totale : 1 000 + 240 = 1 240 m². Ce type de figure composée est très courant au CRPE. La stratégie consiste à décomposer la figure en formes élémentaires dont on connaît les formules d''aire, puis à additionner.',
  'Erreur fréquente : oublier de diviser par 2 pour l''aire du triangle et trouver 1 480 m² (rectangle + rectangle au lieu de rectangle + triangle).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Volume et agrandissement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0f0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_problemes_grandeurs_avance',
  'Problèmes de grandeurs — Niveau avancé CRPE', 'Avance', 'vrai_faux',
  'Si on double le rayon d''une sphère, son volume est multiplié par 4.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Le volume d''une sphère est V = (4/3)πr³. Si on double le rayon (r → 2r), le nouveau volume est (4/3)π(2r)³ = (4/3)π × 8r³ = 8V. Le volume est donc multiplié par 8, pas par 4. Le facteur 4 correspondrait à l''aire de la sphère (A = 4πr², doublée → 4π(2r)² = 16πr², soit × 4). On retrouve la règle générale : multiplier les dimensions par k multiplie les longueurs par k, les aires par k², et les volumes par k³.',
  'Erreur fréquente : confondre le facteur d''agrandissement des aires (k² = 4) avec celui des volumes (k³ = 8).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 13. math_temps_calculs_horaires (prefix=fa0b0000)
-- ============================================================================

-- Q8 (qcm) — Durée en jours, heures, minutes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires',
  'Temps et calculs horaires — Durées et conversions', 'Intermediaire', 'qcm',
  'Combien de secondes y a-t-il dans une journée complète (24 heures) ?',
  NULL,
  '[{"id":"a","label":"1 440"},{"id":"b","label":"3 600"},{"id":"c","label":"86 400"},{"id":"d","label":"8 640"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'On procède par étapes : 1 heure = 60 minutes = 60 × 60 secondes = 3 600 secondes. 1 journée = 24 heures = 24 × 3 600 = 86 400 secondes. L''option a (1 440) correspond au nombre de minutes dans une journée (24 × 60). L''option b (3 600) correspond au nombre de secondes dans une heure seulement. L''option d (8 640) résulte d''une erreur de calcul.',
  'Erreur fréquente : confondre le nombre de minutes (1 440) avec le nombre de secondes, ou oublier une étape de conversion.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Problème horaire avec fuseaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires',
  'Temps et calculs horaires — Durées et conversions', 'Intermediaire', 'reponse_courte',
  'Un avion décolle de Paris à 10 h 30 (heure de Paris) et atterrit à New York après 8 h 15 min de vol. Le décalage horaire est de −6 h (New York est en retard sur Paris). Quelle heure est-il à New York à l''atterrissage ? (format HH h MM)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12 h 45","12h45","12h 45","12 h45"]}'::jsonb,
  'Étape 1 — Heure d''arrivée à Paris : 10 h 30 + 8 h 15 = 18 h 45 (heure de Paris). Étape 2 — Conversion en heure de New York : 18 h 45 − 6 h = 12 h 45. Il est donc 12 h 45 à New York. Ce type de problème combine addition de durées et décalage horaire, deux compétences liées aux calculs horaires au cycle 3.',
  'Erreur fréquente : ajouter le décalage horaire au lieu de le soustraire, ou appliquer le décalage avant d''ajouter la durée du vol.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Conversion durée décimale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0b0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_temps_calculs_horaires',
  'Temps et calculs horaires — Durées et conversions', 'Intermediaire', 'vrai_faux',
  '2,75 heures correspondent à 2 h 45 min.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La partie entière (2) donne les heures. La partie décimale (0,75) représente une fraction d''heure. Pour convertir : 0,75 × 60 = 45 minutes. Donc 2,75 h = 2 h 45 min. L''affirmation est vraie. Rappel des conversions courantes : 0,25 h = 15 min, 0,5 h = 30 min, 0,75 h = 45 min. L''erreur classique est de lire « 2,75 h = 2 h 75 min » en confondant la notation décimale avec la notation sexagésimale.',
  'Erreur fréquente : interpréter 0,75 h comme 75 minutes au lieu de multiplier par 60 pour obtenir 45 minutes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 14. math_unites_aire_volume (prefix=c00c0000)
-- ============================================================================

-- Q8 (qcm) — Conversion avancée volume/contenance
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Avance', 'qcm',
  'Combien de litres représentent 0,45 m³ ?',
  NULL,
  '[{"id":"a","label":"4,5 L"},{"id":"b","label":"45 L"},{"id":"c","label":"450 L"},{"id":"d","label":"4 500 L"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  '1 m³ = 1 000 L (car 1 m³ = 1 000 dm³ et 1 dm³ = 1 L). Donc 0,45 m³ = 0,45 × 1 000 = 450 L. Ce type de conversion est fondamental pour relier les unités de volume (système métrique) aux unités de capacité (système des litres). L''erreur courante consiste à appliquer un mauvais facteur de conversion.',
  'Erreur fréquente : multiplier par 100 (confusion avec les aires) au lieu de 1 000, ce qui donnerait 45 L.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Conversion m² en ares et hectares
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Avance', 'reponse_courte',
  'Un terrain a une superficie de 35 000 m². Exprimer cette superficie en hectares et en ares (format : X ha Y a).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3 ha 50 a","3ha 50a","3 ha 50a","3ha50a","3,5 ha","3.5 ha"]}'::jsonb,
  '1 ha = 10 000 m² et 1 a = 100 m². On divise : 35 000 ÷ 10 000 = 3,5 ha = 3 ha 50 a (car 0,5 ha = 50 a). Vérification : 3 × 10 000 + 50 × 100 = 30 000 + 5 000 = 35 000 m². Les unités agraires (are et hectare) sont spécifiques aux mesures de surfaces de terrain. Elles sont intermédiaires entre le m² et le km².',
  'Erreur fréquente : confondre hectares et ares, ou diviser par 1 000 au lieu de 10 000 pour obtenir les hectares.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Relation cm³ et mL
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c00c0000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_unites_aire_volume',
  'Unités d''aire et de volume — Conversions avancées', 'Avance', 'vrai_faux',
  '1 cm³ = 1 mL.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Cette équivalence fondamentale relie les unités de volume du système métrique (cm³) aux unités de capacité (mL). Démonstration : 1 L = 1 dm³ = 1 000 cm³. Or 1 L = 1 000 mL. Donc 1 000 cm³ = 1 000 mL, ce qui donne 1 cm³ = 1 mL. Cette correspondance est essentielle pour les conversions entre volume et capacité : on peut passer de l''un à l''autre sans calcul. Par extension : 1 dm³ = 1 L, 1 m³ = 1 000 L = 1 kL.',
  'Erreur fréquente : penser que 1 cm³ = 1 cL (en confondant les préfixes « centi- » des centimètres et des centilitres). En réalité, 1 cL = 10 cm³.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 15. math_vitesse_distance_temps (prefix=fa020000)
-- ============================================================================

-- Q8 (reponse_courte) — Problème de rattrapage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire', 'reponse_courte',
  'Un piéton part à 8 h 00 et marche à 5 km/h. Un cycliste part du même point à 8 h 30 et roule à 15 km/h dans la même direction. À quelle heure le cycliste rattrape-t-il le piéton ? (format HH h MM)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8 h 45","8h45","8h 45","8 h45"]}'::jsonb,
  'Quand le cycliste part (à 8 h 30), le piéton a déjà parcouru 5 × 0,5 = 2,5 km d''avance. La vitesse de rapprochement est : 15 − 5 = 10 km/h. Temps de rattrapage : 2,5 ÷ 10 = 0,25 h = 15 min. Le cycliste rattrape le piéton à 8 h 30 + 15 min = 8 h 45. Vérification : à 8 h 45, le piéton a marché 45 min = 0,75 h, soit 5 × 0,75 = 3,75 km. Le cycliste a roulé 15 min = 0,25 h, soit 15 × 0,25 = 3,75 km.',
  'Erreur fréquente : oublier de calculer l''avance du piéton, ou diviser la distance totale par la somme des vitesses au lieu de la différence.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Temps de trajet avec pause
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire', 'qcm',
  'Une famille part en voiture pour un trajet de 360 km. Elle roule à une vitesse moyenne de 90 km/h et fait une pause de 20 minutes au milieu du trajet. À quelle heure arrive-t-elle si elle part à 9 h 00 ?',
  NULL,
  '[{"id":"a","label":"13 h 00"},{"id":"b","label":"13 h 20"},{"id":"c","label":"12 h 20"},{"id":"d","label":"14 h 00"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Durée de conduite : t = 360 ÷ 90 = 4 h. Durée de la pause : 20 min. Durée totale : 4 h 20 min. Heure d''arrivée : 9 h 00 + 4 h 20 min = 13 h 20. L''option a oublie la pause. L''option d ajoute une heure de trop. Ce problème est un rappel que la vitesse moyenne ne concerne que le temps de roulement, pas les arrêts.',
  'Erreur fréquente : oublier d''ajouter le temps de pause et répondre 13 h 00.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Conversion m/s en km/h
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa020000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesse_distance_temps',
  'Vitesse, distance et temps — Résolution de problèmes', 'Intermediaire', 'vrai_faux',
  'Un sprinter qui court à 10 m/s se déplace à 36 km/h.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Pour convertir des m/s en km/h, on multiplie par 3,6. En effet : 1 m/s = 0,001 km ÷ (1/3600 h) = 3,6 km/h. Donc 10 m/s = 10 × 3,6 = 36 km/h. Vérification : 10 m/s signifie 10 mètres chaque seconde, soit 10 × 3 600 = 36 000 m en une heure = 36 km/h. L''affirmation est vraie. Usain Bolt a atteint environ 12,4 m/s (soit 44,7 km/h) lors de son record du monde.',
  'Erreur fréquente : diviser par 3,6 au lieu de multiplier (ce qui donnerait environ 2,78 km/h, une vitesse de marche lente).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 16. math_vitesses_moyennes_pieges (prefix=b0190000)
-- ============================================================================

-- Q8 (qcm) — Piège : même durée vs même distance
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'qcm',
  'Un automobiliste roule pendant 2 heures à 60 km/h, puis pendant 3 heures à 100 km/h. Quelle est sa vitesse moyenne ?',
  NULL,
  '[{"id":"a","label":"80 km/h"},{"id":"b","label":"84 km/h"},{"id":"c","label":"76 km/h"},{"id":"d","label":"90 km/h"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Distance totale : (60 × 2) + (100 × 3) = 120 + 300 = 420 km. Durée totale : 2 + 3 = 5 h. Vitesse moyenne : 420 / 5 = 84 km/h. Attention : ici les DURÉES (et non les distances) sont données. La vitesse moyenne est alors la moyenne pondérée par les durées : (2 × 60 + 3 × 100) / (2 + 3) = 84 km/h. Quand les durées sont identiques, la vitesse moyenne EST la moyenne arithmétique. Quand les distances sont identiques, c''est la moyenne harmonique. Ici les durées sont différentes, il faut pondérer.',
  'Erreur fréquente : calculer la moyenne arithmétique simple (60 + 100) / 2 = 80 km/h, sans pondérer par les durées différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (reponse_courte) — Vitesse moyenne aller-retour sur des distances différentes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'reponse_courte',
  'Un livreur parcourt 30 km en ville à 30 km/h, puis 90 km sur autoroute à 90 km/h. Calculez sa vitesse moyenne sur l''ensemble du trajet (en km/h).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["60","60 km/h","60km/h"]}'::jsonb,
  'Durée en ville : 30 / 30 = 1 h. Durée sur autoroute : 90 / 90 = 1 h. Distance totale : 30 + 90 = 120 km. Durée totale : 1 + 1 = 2 h. Vitesse moyenne : 120 / 2 = 60 km/h. Remarque : ici les durées sont identiques (1 h chacune), donc la vitesse moyenne EST la moyenne arithmétique pondérée par les durées : (30 + 90) / 2 = 60 km/h. C''est un cas particulier où les durées égales simplifient le calcul.',
  'Erreur fréquente : appliquer la moyenne harmonique (comme si les distances étaient égales) au lieu de la formule générale distance totale / durée totale.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Piège de la vitesse moyenne nulle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0190000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_vitesses_moyennes_pieges',
  'Vitesses moyennes et pièges', 'Avance', 'vrai_faux',
  'Un automobiliste fait un aller-retour. Sa vitesse à l''aller est de 40 km/h et au retour de 60 km/h. Sa vitesse moyenne sur l''aller-retour est de 50 km/h.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Soit d la distance d''un trajet simple. Temps aller = d/40, temps retour = d/60. Temps total = d/40 + d/60 = 3d/120 + 2d/120 = 5d/120 = d/24. Distance totale = 2d. Vitesse moyenne = 2d / (d/24) = 48 km/h. La moyenne harmonique donne : 2 × 40 × 60 / (40 + 60) = 4 800 / 100 = 48 km/h. Ce résultat est inférieur à la moyenne arithmétique de 50 km/h. Ce piège est un grand classique du CRPE !',
  'Erreur fréquente : calculer (40 + 60) / 2 = 50 km/h. La vitesse moyenne sur un aller-retour (même distance) est toujours la moyenne harmonique, jamais la moyenne arithmétique.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================================
-- 17. math_volume_solides_usuels (prefix=fa050000)
-- ============================================================================

-- Q8 (reponse_courte) — Volume d''un prisme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000008',
  'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels',
  'Volume des solides usuels — Formules et applications', 'Intermediaire', 'reponse_courte',
  'Un prisme droit a pour base un triangle rectangle dont les côtés de l''angle droit mesurent 6 cm et 8 cm. La hauteur du prisme est de 10 cm. Quel est son volume en cm³ ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["240","240 cm³","240cm³"]}'::jsonb,
  'Le volume d''un prisme droit est V = Aire de la base × hauteur. La base est un triangle rectangle, son aire est : (6 × 8) / 2 = 24 cm². Le volume du prisme est : 24 × 10 = 240 cm³. La formule du prisme droit généralise celle du pavé droit : on remplace le rectangle de base par un polygone quelconque.',
  'Erreur fréquente : oublier de diviser par 2 pour l''aire du triangle et calculer 6 × 8 × 10 = 480 cm³.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 (qcm) — Volume d''une pyramide
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000009',
  'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels',
  'Volume des solides usuels — Formules et applications', 'Intermediaire', 'qcm',
  'Une pyramide à base carrée a une base de 9 cm de côté et une hauteur de 14 cm. Quel est son volume ?',
  NULL,
  '[{"id":"a","label":"378 cm³"},{"id":"b","label":"1 134 cm³"},{"id":"c","label":"567 cm³"},{"id":"d","label":"126 cm³"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le volume d''une pyramide est V = (1/3) × Aire de la base × hauteur. Aire de la base carrée : 9 × 9 = 81 cm². Volume : (1/3) × 81 × 14 = (1/3) × 1 134 = 378 cm³. L''option b (1 134) oublie le facteur 1/3 (c''est le volume du prisme correspondant). L''option c (567) applique le facteur 1/2 au lieu de 1/3.',
  'Erreur fréquente : oublier le facteur 1/3 et calculer le volume d''un prisme (Aire × h = 1 134), ou confondre 1/3 avec 1/2.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 (vrai_faux) — Relation volume cylindre / cône
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa050000-0000-0000-0000-000000000010',
  'Mathematiques', 'grandeurs_mesures', 'math_volume_solides_usuels',
  'Volume des solides usuels — Formules et applications', 'Intermediaire', 'vrai_faux',
  'Il faut exactement 3 cônes pour remplir un cylindre de même base et de même hauteur.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Le volume d''un cylindre est V_cyl = π × r² × h. Le volume d''un cône de même base et même hauteur est V_cône = (1/3) × π × r² × h. On a donc V_cyl = 3 × V_cône. Il faut bien 3 cônes pour remplir un cylindre de mêmes dimensions. Cette relation fondamentale (le cône occupe le tiers du cylindre englobant) est analogue à celle entre la pyramide et le prisme : V_pyramide = (1/3) × V_prisme. Elle peut être vérifiée expérimentalement en classe par transvasement.',
  'Erreur fréquente : penser qu''il faut 2 cônes (en confondant le facteur 1/3 avec 1/2) ou ne pas voir le lien entre les deux formules.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
