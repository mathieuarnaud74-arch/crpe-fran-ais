-- Complete the remaining published math series that still stop at 7 questions
-- after catalog deduplication / normalization.

-- ============================================================================
-- 1. math_proportionnalite_etapes (m0060000) -> Q8, Q9, Q10
-- ============================================================================

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0060000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problemes a etapes - Proportionnalite',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : une recette pour 8 personnes utilise 300 g de farine. Pour 12 personnes, il faut 450 g de farine si l''on garde les memes proportions.',
  null,
  null,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Le passage de 8 a 12 personnes correspond a un coefficient multiplicateur de 12/8 = 1,5. La quantite de farine se multiplie donc aussi par 1,5 : 300 x 1,5 = 450 g. On peut aussi raisonner par retour a l''unite : pour 1 personne, il faut 300/8 = 37,5 g ; pour 12 personnes, 37,5 x 12 = 450 g. Dans une situation de proportionnalite, toutes les grandeurs sont multipliees par le meme coefficient.',
  'Ajouter 12 - 8 = 4 personnes et ajouter 4 x 300 g, comme si la relation etait additive. En proportionnalite, on multiplie par un coefficient ; on n''ajoute pas la meme quantite sans justification.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0060000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problemes a etapes - Proportionnalite',
  'Intermediaire',
  'qcm',
  'Une voiture consomme 6,5 L pour 100 km. Elle parcourt 240 km. Le litre d''essence coute 1,80 euro. Quel est le cout du trajet ?',
  null,
  '[{"id":"a","label":"24,30 euros"},{"id":"b","label":"28,08 euros"},{"id":"c","label":"15,60 euros"},{"id":"d","label":"31,20 euros"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Etape 1 : calculer la quantite d''essence. Pour 240 km, on multiplie 6,5 par 240/100 = 2,4. On obtient 6,5 x 2,4 = 15,6 L. Etape 2 : calculer le cout. 15,6 x 1,80 = 28,08 euros. La situation combine deux proportionalites successives : consommation en fonction de la distance, puis prix en fonction du nombre de litres.',
  'Confondre la consommation totale (15,6 L) avec le cout final, ou calculer 6,5 x 240 sans tenir compte de la base 100 km.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0060000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problemes a etapes - Proportionnalite',
  'Intermediaire',
  'reponse_courte',
  'Sur une carte a l''echelle 1/25 000, deux villages sont distants de 7,2 cm. Quelle est la distance reelle en kilometres ?',
  null,
  null,
  '{"mode":"text","acceptableAnswers":["1,8","1.8","1,8 km","1.8 km"]}'::jsonb,
  'A l''echelle 1/25 000, 1 cm sur la carte represente 25 000 cm en realite, soit 250 m. Donc 7,2 cm representent 7,2 x 250 = 1 800 m = 1,8 km. On peut aussi convertir directement : 25 000 cm = 0,25 km, donc 7,2 x 0,25 = 1,8 km. L''essentiel est de bien convertir les unites a la fin.',
  'Oublier de convertir les centimetres reels en metres puis en kilometres, ou traiter 1/25 000 comme s''il fallait diviser 7,2 par 25 000.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;

-- ============================================================================
-- 2. math_analyse_productions_numeration (m0070000) -> Q8, Q9, Q10
-- ============================================================================

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0070000-0000-0000-0000-000000000008',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''eleves - Numeration',
  'Intermediaire',
  'qcm',
  'Sur un boulier, un eleve voit 2 centaines, 14 dizaines et 8 unites. Il ecrit 2 148. Quel diagnostic didactique est le plus pertinent ?',
  null,
  '[{"id":"a","label":"L''eleve ne comprend pas le regroupement : 10 dizaines valent 1 centaine"},{"id":"b","label":"L''eleve confond addition et multiplication"},{"id":"c","label":"L''eleve inverse l''ordre des classes numeriques"},{"id":"d","label":"L''eleve ne sait pas lire un boulier"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La quantite representee est 2 centaines + 14 dizaines + 8 unites = 200 + 140 + 8 = 348. L''eleve a juxtapose les quantites par classe sans effectuer le regroupement necessaire : 14 dizaines doivent etre converties en 1 centaine et 4 dizaines. L''obstacle porte donc sur la valeur positionnelle et le principe d''echange 10 pour 1 au coeur de la numeration decimale.',
  'Se contenter de dire que l''eleve "ne sait pas lire" sans identifier le vrai noyau conceptuel : la non-comprehension du regroupement et de la valeur positionnelle.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0070000-0000-0000-0000-000000000009',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''eleves - Numeration',
  'Intermediaire',
  'vrai_faux',
  'Un eleve affirme : "Dans 5,207, le chiffre 2 vaut 2 unites." Ce diagnostic est-il correct ?',
  null,
  null,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est faux. Dans 5,207, le chiffre 2 est au rang des dixiemes : il vaut 2/10, soit 0,2. Le chiffre 0 est au rang des centiemes et le chiffre 7 au rang des milliemes. Cette erreur montre que l''eleve ne prolonge pas correctement la numeration de position dans la partie decimale. Le tableau de numeration (unites | dixiemes | centiemes | milliemes) est un outil de remediation tres efficace.',
  'Confondre la valeur du chiffre avec sa seule apparence. En numeration positionnelle, un meme chiffre ne vaut pas la meme chose selon sa place.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0070000-0000-0000-0000-000000000010',
  'Mathematiques',
  'didactique_maths',
  'math_analyse_productions_numeration',
  'Analyse de productions d''eleves - Numeration',
  'Intermediaire',
  'qcm',
  'Un eleve ecrit 1 005 comme "cent-cinq". Quelle remediation est la plus adaptee ?',
  null,
  '[{"id":"a","label":"Lui faire copier vingt fois l''ecriture correcte"},{"id":"b","label":"Travailler les zeros intercalaires avec materiel de numeration et tableau des classes"},{"id":"c","label":"Lui faire apprendre la comptine jusqu''a 10 000"},{"id":"d","label":"Lui donner uniquement des nombres sans zero pour consolider"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''erreur vient de la difficulte a prendre en compte le zero intercalaire : dans 1 005, il y a 1 millier, 0 centaine, 0 dizaine et 5 unites. La remediation pertinente consiste a rendre visibles les classes absentes, par exemple avec cubes, paquets, tableau de numeration et transcodage oral-ecrit. Recopier la bonne forme ne traite pas l''obstacle conceptuel.',
  'Choisir une remediation purement repetitive ou trop generale. Au CRPE, la remediation doit cibler precisement l''obstacle identifie.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;

-- ============================================================================
-- 3. math_statistiques_graphiques (m0080000) -> Q8, Q9, Q10
-- ============================================================================

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0080000-0000-0000-0000-000000000008',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques - Lecture critique',
  'Intermediaire',
  'qcm',
  'Dans un college de 240 eleves, 35 % viennent en bus. Combien d''eleves cela represente-t-il ?',
  null,
  '[{"id":"a","label":"74"},{"id":"b","label":"84"},{"id":"c","label":"94"},{"id":"d","label":"105"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  '35 % de 240, c''est 35/100 x 240 = 0,35 x 240 = 84. On peut decomposer : 30 % de 240 = 72 et 5 % de 240 = 12, donc 72 + 12 = 84. La maitrise des pourcentages est essentielle pour interpreter tableaux, diagrammes et enquetes statistiques.',
  'Confondre 35 % avec 35 eleves, ou calculer 240/35 au lieu de 240 x 35/100.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'free',
  true
) on conflict (id) do nothing;

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0080000-0000-0000-0000-000000000009',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques - Lecture critique',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : si un graphique en courbes est presente avec un axe vertical qui ne commence pas a 0, l''evolution peut paraitre visuellement plus forte qu''elle ne l''est en realite.',
  null,
  null,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Un axe tronque amplifie visuellement les ecarts, car une petite variation numerique occupe alors une grande partie de la hauteur du graphique. Il faut donc toujours verifier l''origine, l''echelle et les graduations avant d''interpreter un graphique. Cette lecture critique fait partie des competences attendues en organisation de donnees.',
  'Se fier uniquement a l''impression visuelle sans examiner les axes. La forme d''un graphique peut etre trompeuse si l''echelle est manipulee.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'free',
  true
) on conflict (id) do nothing;

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'd0080000-0000-0000-0000-000000000010',
  'Mathematiques',
  'organisation_donnees',
  'math_statistiques_graphiques',
  'Statistiques et graphiques - Lecture critique',
  'Intermediaire',
  'reponse_courte',
  'Voici une serie de notes avec leurs effectifs : 8 (3 eleves), 10 (5 eleves), 12 (4 eleves), 15 (2 eleves). Quelle est la valeur modale de la serie ?',
  null,
  null,
  '{"mode":"text","acceptableAnswers":["10","10/20","10 sur 20"]}'::jsonb,
  'La valeur modale est la valeur la plus frequente. Ici, la note 10 apparait 5 fois, contre 3 fois pour 8, 4 fois pour 12 et 2 fois pour 15. La mode est donc 10. Il ne faut pas confondre mode, moyenne et mediane : la mode repere la valeur la plus representee dans la serie.',
  'Chercher a calculer une moyenne ou une mediane alors que la question porte sur la mode. Chaque indicateur statistique a un role distinct.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'free',
  true
) on conflict (id) do nothing;

-- ============================================================================
-- 4. math_logique_raisonnement (b01c0000) -> Q8, Q9, Q10
-- ============================================================================

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'b01c0000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement - Contre-exemples et demonstrations',
  'Avance',
  'qcm',
  'L''affirmation "si a² = b², alors a = b" est fausse. Quel contre-exemple le montre ?',
  null,
  '[{"id":"a","label":"a = 2 et b = 2"},{"id":"b","label":"a = 3 et b = -3"},{"id":"c","label":"a = 0 et b = 0"},{"id":"d","label":"a = 4 et b = 2"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Si a = 3 et b = -3, alors a² = 9 et b² = 9, donc a² = b², mais a n''est pas egal a b. Ce contre-exemple suffit a invalider l''affirmation generale. La bonne conclusion serait : si a² = b², alors a = b ou a = -b.',
  'Oublier qu''un nombre et son oppose ont le meme carre. C''est un piege classique de raisonnement sur les equivalences.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'b01c0000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement - Contre-exemples et demonstrations',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : pour toute affirmation universelle du type "pour tout x, P(x)", un seul contre-exemple suffit a montrer qu''elle est fausse.',
  null,
  null,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Une affirmation universelle est detruite des qu''on trouve un seul cas pour lequel la propriete annoncee ne fonctionne pas. C''est pourquoi la recherche d''un contre-exemple est une strategie puissante en raisonnement mathematique. En revanche, trouver beaucoup d''exemples qui verifient l''affirmation ne suffit jamais a la demontrer.',
  'Confondre preuve et verification experimentale. Une multitude d''exemples favorables ne remplace pas une demonstration, mais un seul contre-exemple suffit a refuter.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) values (
  'b01c0000-0000-0000-0000-000000000010',
  'Mathematiques',
  'nombres_calcul',
  'math_logique_raisonnement',
  'Logique et raisonnement - Contre-exemples et demonstrations',
  'Avance',
  'reponse_courte',
  'Dans un hexagone convexe, combien peut-on tracer de diagonales ?',
  null,
  null,
  '{"mode":"text","acceptableAnswers":["9","9 diagonales","neuf"]}'::jsonb,
  'Un hexagone possede 6 sommets. Depuis chaque sommet, on peut tracer des segments vers 5 autres sommets, soit 6 x 5 / 2 = 15 segments en tout (on divise par 2 car chaque segment est compte deux fois). Parmi ces 15 segments, 6 sont des cotes du polygone. Il reste donc 15 - 6 = 9 diagonales. Formule generale : pour un polygone a n sommets, le nombre de diagonales est n(n - 3)/2.',
  'Compter deux fois certaines diagonales, ou oublier de retirer les 6 cotes du polygone apres avoir compte tous les segments entre sommets.',
  'valide',
  'Generation Claude - Terminologie Eduscol',
  'premium',
  true
) on conflict (id) do nothing;
