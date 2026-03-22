-- Seed: Tableaux et proportionnalité — Organisation de données (7 exercices)
-- Niveau: Intermédiaire | Accès: free | Sous-domaine: organisation_donnees

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000001', 'Mathematiques', 'organisation_donnees', 'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données', 'Intermediaire', 'qcm',
  'Le tableau suivant représente-t-il une situation de proportionnalité ?\n\n| Quantité | 2 | 4 | 6 | 8 |\n|---|---|---|---|---|\n| Prix (€) | 3 | 6 | 9 | 12 |',
  NULL,
  '[{"id": "a", "label": "Oui, car le coefficient de proportionnalité est constant (× 1,5)"}, {"id": "b", "label": "Non, car les écarts entre les prix ne sont pas réguliers"}, {"id": "c", "label": "Oui, car les deux lignes augmentent"}, {"id": "d", "label": "Non, car les valeurs ne sont pas des nombres entiers après division"}]',
  '{"mode": "single", "value": "a"}',
  'Pour vérifier la proportionnalité dans un tableau, on calcule le rapport entre chaque valeur de la deuxième ligne et la valeur correspondante de la première ligne : 3÷2 = 1,5 ; 6÷4 = 1,5 ; 9÷6 = 1,5 ; 12÷8 = 1,5. Le rapport est constant : il y a bien proportionnalité, avec un coefficient de 1,5.',
  'Confondre « les deux lignes augmentent » (ce qui ne suffit pas) avec « le rapport entre les deux lignes est constant » (la vraie définition de la proportionnalité).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000002', 'Mathematiques', 'organisation_donnees', 'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données', 'Intermediaire', 'vrai_faux',
  'Le tableau suivant représente une situation de proportionnalité :\n\n| Quantité | 1 | 2 | 3 |\n|---|---|---|---|\n| Prix (€) | 5 | 10 | 16 |',
  NULL,
  NULL,
  '{"mode": "single", "value": "faux"}',
  'On vérifie les rapports : 5÷1 = 5 ; 10÷2 = 5 ; 16÷3 ≈ 5,33. Le troisième rapport (≈ 5,33) est différent des deux premiers (5). Le coefficient n''est pas constant, donc ce n''est pas une situation de proportionnalité. Si c''en était une, la troisième valeur devrait être 3 × 5 = 15, et non 16.',
  'Se contenter de vérifier les deux premières colonnes sans vérifier la troisième. Il faut que TOUS les rapports soient identiques pour conclure à la proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000003', 'Mathematiques', 'organisation_donnees', 'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données', 'Intermediaire', 'reponse_courte',
  'Dans un tableau de proportionnalité, quand la quantité est 5, le prix est 12,50 €. Quel est le prix pour 8 unités ?',
  NULL,
  NULL,
  '{"mode": "acceptableAnswers", "acceptableAnswers": ["20", "20 €", "20€", "20,00", "20,00 €", "20,00€"]}',
  'On détermine d''abord le coefficient de proportionnalité (prix unitaire) : 12,50 ÷ 5 = 2,50 €/unité. Puis on calcule le prix pour 8 unités : 8 × 2,50 = 20 €. On peut aussi raisonner par linéarité : 5 → 12,50 et 3 → 7,50 (par soustraction depuis 5), donc 8 = 5 + 3 → 12,50 + 7,50 = 20 €.',
  'Oublier de calculer le prix unitaire et tenter d''additionner directement les valeurs sans respecter la proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000004', 'Mathematiques', 'organisation_donnees', 'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données', 'Intermediaire', 'qcm',
  'Parmi les méthodes suivantes, laquelle n''est PAS valide pour compléter un tableau de proportionnalité ?',
  NULL,
  '[{"id": "a", "label": "Multiplier chaque valeur de la première ligne par le coefficient de proportionnalité"}, {"id": "b", "label": "Utiliser le produit en croix"}, {"id": "c", "label": "Ajouter 3 à chaque valeur de la deuxième ligne"}, {"id": "d", "label": "Utiliser la linéarité (passage par l''unité)"}]',
  '{"mode": "single", "value": "c"}',
  'Ajouter une constante à chaque valeur de la deuxième ligne (ici +3) ne respecte pas la proportionnalité. En effet, si l''on ajoute une constante, le rapport entre les deux lignes change à chaque colonne. Les trois autres méthodes (coefficient multiplicatif, produit en croix, passage par l''unité) sont des procédures valides et classiques pour compléter un tableau de proportionnalité.',
  'Confondre « ajouter une constante » (qui crée une situation additive, non proportionnelle) avec « multiplier par un coefficient constant » (qui caractérise la proportionnalité).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000005', 'Mathematiques', 'organisation_donnees', 'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données', 'Intermediaire', 'qcm',
  'Un diagramme circulaire montre la répartition des élèves d''une école par sport pratiqué. Le secteur « Natation » correspond à un angle de 72°. L''école compte 150 élèves au total. Combien d''élèves pratiquent la natation ?',
  NULL,
  '[{"id": "a", "label": "72 élèves"}, {"id": "b", "label": "30 élèves"}, {"id": "c", "label": "20 élèves"}, {"id": "d", "label": "45 élèves"}]',
  '{"mode": "single", "value": "b"}',
  'Un diagramme circulaire complet fait 360°. Le secteur « Natation » représente 72° sur 360°, soit la fraction 72/360 = 1/5. On applique cette proportion au nombre total d''élèves : 150 × (1/5) = 150 ÷ 5 = 30 élèves. On peut aussi utiliser le produit en croix : (72 × 150) ÷ 360 = 10 800 ÷ 360 = 30.',
  'Confondre l''angle (72°) avec le nombre d''élèves, ou diviser 150 par 72 au lieu de calculer la proportion 72/360.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000006', 'Mathematiques', 'organisation_donnees', 'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données', 'Intermediaire', 'reponse_courte',
  'Un tableau à double entrée indique le nombre d''élèves par classe et le nombre d''élèves mangeant à la cantine :\n\n| Classe | Effectif | Cantine |\n|---|---|---|\n| A | 28 | 22 |\n| B | 25 | 18 |\n| C | 30 | 24 |\n\nQuel est le pourcentage global d''élèves qui mangent à la cantine ? Arrondir au dixième.',
  NULL,
  NULL,
  '{"mode": "acceptableAnswers", "acceptableAnswers": ["77,1", "77,1%", "77,1 %", "77.1", "77.1%", "77.1 %"]}',
  'On calcule d''abord les totaux : effectif total = 28 + 25 + 30 = 83 élèves ; élèves à la cantine = 22 + 18 + 24 = 64 élèves. Le pourcentage est : (64 ÷ 83) × 100 ≈ 77,108… ≈ 77,1 %. Il ne faut surtout pas calculer la moyenne des trois pourcentages par classe (ce serait incorrect car les effectifs sont différents).',
  'Calculer le pourcentage classe par classe puis faire la moyenne des trois pourcentages, ce qui donne un résultat faux car les effectifs ne sont pas identiques.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01d0000-0000-0000-0000-000000000007', 'Mathematiques', 'organisation_donnees', 'math_tableaux_proportionnalite',
  'Tableaux et proportionnalité — Organisation de données', 'Intermediaire', 'qcm',
  'Un graphique montre l''évolution du prix d''un produit :\n\n| Année | 1 | 2 | 3 |\n|---|---|---|---|\n| Prix (€) | 10 | 12 | 15 |\n\nUn journaliste affirme : « Le prix a augmenté de manière proportionnelle au temps. » A-t-il raison ?',
  NULL,
  '[{"id": "a", "label": "Oui, car le prix augmente chaque année"}, {"id": "b", "label": "Oui, car l''augmentation est régulière"}, {"id": "c", "label": "Non, car les augmentations successives ne sont pas constantes (+2 puis +3)"}, {"id": "d", "label": "Non, car le prix devrait diminuer pour être proportionnel"}]',
  '{"mode": "single", "value": "c"}',
  'Pour qu''il y ait proportionnalité entre le prix et le temps, le rapport prix/année devrait être constant : 10/1 = 10 ; 12/2 = 6 ; 15/3 = 5. Les rapports sont différents, donc il n''y a pas proportionnalité. On peut aussi vérifier par les augmentations : +2 € entre l''année 1 et 2, puis +3 € entre l''année 2 et 3. L''augmentation n''est pas constante. Le journaliste confond « croissance » et « proportionnalité ».',
  'Confondre « le prix augmente » (croissance) avec « le prix est proportionnel au temps » (rapport constant). Une grandeur peut augmenter sans que la relation soit proportionnelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
