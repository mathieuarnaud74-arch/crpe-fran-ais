-- Series: Périmètre, aire, volume — Confusions et pièges
-- 7 exercises, level: Intermediaire, access: free, subdomain: grandeurs_mesures

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Intermediaire', 'vrai_faux',
  'Deux rectangles ayant le même périmètre ont nécessairement la même aire.',
  NULL, NULL,
  '{"mode": "single", "value": "faux"}',
  'C''est FAUX. Deux rectangles peuvent avoir le même périmètre mais des aires très différentes. Contre-exemple : un rectangle de 6 cm × 2 cm a un périmètre de 16 cm et une aire de 12 cm², tandis qu''un rectangle de 5 cm × 3 cm a aussi un périmètre de 16 cm mais une aire de 15 cm². Le périmètre mesure le « tour » de la figure (une longueur, en cm), alors que l''aire mesure la « surface couverte » (en cm²). Ces deux grandeurs sont de nature différente et varient indépendamment l''une de l''autre.',
  'Croire que même périmètre implique même aire, en confondant la notion de contour (périmètre) avec celle de surface (aire).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Intermediaire', 'qcm',
  'Un carré de côté 4 cm a un périmètre de 16 cm et une aire de 16 cm². Un élève en conclut que le périmètre et l''aire d''un carré sont toujours égaux. Cette conclusion est :',
  NULL,
  '[{"id": "a", "label": "Vraie"}, {"id": "b", "label": "Fausse — elle n''est vraie que pour le carré de côté 4"}, {"id": "c", "label": "Fausse — périmètre et aire n''ont pas les mêmes unités, ils ne peuvent pas être « égaux »"}, {"id": "d", "label": "Vraie pour tous les carrés"}]',
  '{"mode": "single", "value": "c"}',
  'La réponse est c). Le périmètre s''exprime en cm (unité de longueur) et l''aire en cm² (unité de surface). Comparer « 16 cm » et « 16 cm² » n''a aucun sens mathématique : ce sont deux grandeurs de nature différente. Le fait que les valeurs numériques coïncident pour un côté de 4 cm est une simple coïncidence arithmétique. Pour un carré de côté 3 cm, le périmètre vaut 12 cm et l''aire 9 cm² ; pour un côté de 5 cm, P = 20 cm et A = 25 cm². Les valeurs numériques ne coïncident plus. Cette confusion entre la valeur numérique et la grandeur mesurée est un piège classique.',
  'Choisir b) en pensant que la coïncidence numérique est le vrai problème, alors que le problème fondamental est l''incomparabilité des unités (cm vs cm²).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Intermediaire', 'reponse_courte',
  'Un rectangle de 10 cm × 5 cm a-t-il un périmètre plus grand ou plus petit qu''un carré de même aire ? Justifiez votre réponse.',
  NULL, NULL,
  '{"mode": "flexible", "acceptableAnswers": ["plus grand", "le rectangle", "le rectangle a un périmètre plus grand"]}',
  'L''aire du rectangle vaut 10 × 5 = 50 cm². Le carré de même aire a un côté de √50 ≈ 7,07 cm, donc un périmètre de 4 × 7,07 ≈ 28,28 cm. Le périmètre du rectangle vaut 2 × (10 + 5) = 30 cm. Le rectangle a donc un périmètre PLUS GRAND que le carré de même aire. Ce résultat illustre un théorème fondamental : parmi tous les rectangles de même aire, le carré est celui qui a le plus petit périmètre. Autrement dit, à aire égale, toute déformation du carré en rectangle allonge le périmètre.',
  'Penser qu''à aire égale, le périmètre est aussi égal, en confondant les deux notions.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Intermediaire', 'qcm',
  'On double les dimensions d''un rectangle. Par combien sont multipliés son périmètre et son aire ?',
  NULL,
  '[{"id": "a", "label": "Périmètre × 2 et aire × 2"}, {"id": "b", "label": "Périmètre × 2 et aire × 4"}, {"id": "c", "label": "Périmètre × 4 et aire × 4"}, {"id": "d", "label": "Périmètre × 4 et aire × 8"}]',
  '{"mode": "single", "value": "b"}',
  'La réponse est b). Quand on multiplie toutes les dimensions par un facteur k (ici k = 2) : le périmètre, qui est une somme de longueurs, est multiplié par k (donc × 2) ; l''aire, qui est un produit de deux longueurs, est multipliée par k² (donc × 4). Vérification : un rectangle de 3 cm × 5 cm a P = 16 cm et A = 15 cm². En doublant : 6 cm × 10 cm donne P = 32 cm (× 2) et A = 60 cm² (× 4). Cette propriété est fondamentale en géométrie : l''aire varie comme le carré du facteur d''agrandissement.',
  'Choisir a) en pensant que doubler les dimensions double aussi l''aire, sans voir que l''aire dépend du produit de deux dimensions qui sont chacune doublées.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Intermediaire', 'vrai_faux',
  'Si on augmente l''aire d''un carré, son périmètre augmente aussi.',
  NULL, NULL,
  '{"mode": "single", "value": "vrai"}',
  'C''est VRAI pour un carré. L''aire d''un carré de côté c vaut c². Si l''aire augmente, alors c² augmente, donc c augmente (la fonction racine carrée est croissante). Or le périmètre vaut 4c, donc si c augmente, le périmètre augmente aussi. Attention : cette propriété est spécifique au carré. Pour des figures quelconques, on peut augmenter l''aire sans augmenter le périmètre (par exemple en « gonflant » un polygone irrégulier vers l''intérieur). Mais pour un carré, les deux grandeurs varient dans le même sens car elles dépendent toutes deux d''un seul paramètre : le côté.',
  'Répondre « faux » en généralisant hâtivement le fait que périmètre et aire sont des grandeurs indépendantes — ce qui est vrai en général, mais pas pour un carré dont la forme est fixée.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Intermediaire', 'reponse_courte',
  'Un aquarium a la forme d''un pavé droit de 50 cm × 30 cm × 40 cm (longueur × largeur × hauteur). Quelle quantité de verre faut-il pour le fabriquer (sans couvercle) ? Et quel volume d''eau peut-il contenir ?',
  NULL, NULL,
  '{"mode": "flexible", "acceptableAnswers": ["7900 cm² et 60 L", "7900 cm2 et 60 L", "7900 et 60", "60 L", "60"]}',
  'Cet exercice distingue clairement surface et volume. Pour la quantité de verre (surface sans couvercle) : fond = 50 × 30 = 1 500 cm² ; 2 grands côtés = 2 × (50 × 40) = 4 000 cm² ; 2 petits côtés = 2 × (30 × 40) = 2 400 cm². Total = 1 500 + 4 000 + 2 400 = 7 900 cm². Pour le volume d''eau : V = 50 × 30 × 40 = 60 000 cm³. Or 1 L = 1 000 cm³ (= 1 dm³), donc V = 60 L. La surface se mesure en cm² (grandeur à deux dimensions) et le volume en cm³ ou en litres (grandeur à trois dimensions). Confondre les deux revient à confondre « combien de matière pour construire » et « combien ça contient ».',
  'Confondre surface et volume en calculant le volume alors qu''on demande la surface de verre, ou inversement. Oublier qu''il n''y a pas de couvercle (5 faces au lieu de 6).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0270000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_perimetre_aire_volume_confusions',
  'Périmètre, aire, volume — Confusions et pièges', 'Intermediaire', 'qcm',
  'Un jardinier dispose de 24 m de grillage pour entourer un potager rectangulaire. Quelles dimensions lui donneront l''aire maximale ?',
  NULL,
  '[{"id": "a", "label": "8 m × 4 m (aire = 32 m²)"}, {"id": "b", "label": "10 m × 2 m (aire = 20 m²)"}, {"id": "c", "label": "6 m × 6 m (aire = 36 m²)"}, {"id": "d", "label": "7 m × 5 m (aire = 35 m²)"}]',
  '{"mode": "single", "value": "c"}',
  'La réponse est c). Le périmètre est fixé : 2(L + l) = 24, donc L + l = 12. L''aire A = L × l = L × (12 − L) = 12L − L². C''est une fonction du second degré dont le maximum est atteint pour L = 6 (sommet de la parabole). On obtient alors l = 6 et A = 36 m². Le rectangle d''aire maximale à périmètre donné est toujours un carré. Ce résultat fondamental relie périmètre et aire de manière optimale : parmi tous les rectangles de même périmètre, le carré maximise l''aire ; parmi tous les rectangles de même aire, le carré minimise le périmètre.',
  'Choisir d) (7 × 5 = 35 m²) qui est proche du maximum mais n''est pas optimal, ou choisir a) en pensant intuitivement qu''un rectangle « allongé » a plus de surface.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
