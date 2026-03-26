-- Migration: 10 exercices — Aires latérales et totales des solides usuels
-- Série : math_aire_laterale_solides (Mathématiques, grandeurs_mesures)
-- Prisme, cylindre, pyramide, cône, sphère — calcul d'aire latérale et totale
-- UUID prefix: f3c40000

-- Q1 — QCM — Aire latérale d'un prisme droit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000001',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'qcm',
  'Un prisme droit a pour base un triangle de périmètre 24 cm et une hauteur de 10 cm. Quelle est son aire latérale ?',
  NULL,
  '[{"id":"a","label":"240 cm²"},{"id":"b","label":"120 cm²"},{"id":"c","label":"480 cm²"},{"id":"d","label":"340 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''aire latérale d''un prisme droit est égale au périmètre de la base multiplié par la hauteur. Aire latérale = P × h = 24 × 10 = 240 cm². La surface latérale d''un prisme droit est composée de rectangles dont la largeur correspond à chaque côté de la base et la longueur correspond à la hauteur du prisme. En « dépliant » le prisme (patron), on obtient un grand rectangle de dimensions : périmètre de la base × hauteur.',
  'Confondre aire latérale et aire totale. L''aire latérale ne comprend que les faces rectangulaires, pas les deux bases. L''aire totale serait : 240 + 2 × aire du triangle.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Réponse courte — Aire latérale d'un cylindre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000002',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'reponse_courte',
  'Un cylindre de révolution a un rayon de 5 cm et une hauteur de 12 cm. Donnez la valeur exacte de son aire latérale (en cm², en fonction de π).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120π","120π cm²","120 π"]}'::jsonb,
  'L''aire latérale d''un cylindre est un rectangle « enroulé ». En le dépliant, on obtient un rectangle de longueur = périmètre du cercle de base = 2πr, et de largeur = hauteur h. Aire latérale = 2πr × h = 2 × π × 5 × 12 = 120π cm² ≈ 376,99 cm². C''est la même logique que le prisme droit : aire latérale = périmètre de la base × hauteur. Ici, le périmètre de la base est le périmètre du cercle.',
  'Utiliser πr² (aire du disque) au lieu de 2πr (périmètre du cercle). L''aire latérale fait intervenir le PÉRIMÈTRE de la base, pas son aire.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Vrai/Faux — Aire totale du cylindre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : l''aire totale d''un cylindre de rayon r et de hauteur h est 2πr(r + h).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Aire totale = aire latérale + 2 × aire de la base = 2πrh + 2πr² = 2πr(h + r). En factorisant par 2πr, on obtient cette formule compacte. Détail : l''aire latérale est 2πrh (rectangle déroulé) et chaque base est un disque d''aire πr². Il y a deux bases, donc 2πr². Total : 2πrh + 2πr² = 2πr(h + r). Cette factorisation est élégante et pratique pour les calculs.',
  'Oublier de compter les DEUX bases. L''aire totale comprend toujours la surface latérale PLUS toutes les faces de base (2 pour un prisme ou un cylindre, 1 pour une pyramide ou un cône).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Aire latérale d'une pyramide régulière
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000004',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'qcm',
  'Une pyramide régulière a une base carrée de côté 6 cm. Chaque face latérale est un triangle isocèle de hauteur (apothème) 8 cm. Quelle est l''aire latérale de cette pyramide ?',
  NULL,
  '[{"id":"a","label":"96 cm²"},{"id":"b","label":"48 cm²"},{"id":"c","label":"192 cm²"},{"id":"d","label":"144 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La pyramide a 4 faces latérales triangulaires (base carrée → 4 faces). Chaque face est un triangle de base 6 cm et de hauteur 8 cm (apothème de la pyramide). Aire d''une face = (6 × 8) / 2 = 24 cm². Aire latérale = 4 × 24 = 96 cm². Formule générale pour une pyramide régulière : Aire latérale = (périmètre de la base × apothème) / 2. Ici : (4 × 6 × 8) / 2 = 192 / 2 = 96 cm². L''apothème est la hauteur d''une face latérale triangulaire, à ne pas confondre avec la hauteur de la pyramide.',
  'Confondre la hauteur de la pyramide (distance sommet-base, perpendiculaire) et l''apothème (hauteur d''une face triangulaire latérale). Les deux sont différentes sauf cas très particulier.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Réponse courte — Aire latérale d'un cône
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000005',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'reponse_courte',
  'Un cône de révolution a un rayon de base de 3 cm et une génératrice (apothème) de 10 cm. Donnez la valeur exacte de son aire latérale (en cm², en fonction de π).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["30π","30π cm²","30 π"]}'::jsonb,
  'Aire latérale du cône = πrg, où r est le rayon de la base et g la génératrice (longueur de la ligne oblique du sommet à un point du cercle de base). Ici : π × 3 × 10 = 30π cm² ≈ 94,25 cm². Intuition : en dépliant le cône, on obtient un secteur de disque de rayon g et d''arc 2πr. L''aire de ce secteur est (2πr × g) / 2 = πrg. Attention : g est la génératrice (hypoténuse), pas la hauteur. Si on connaît la hauteur h et le rayon r, on calcule g par Pythagore : g = √(r² + h²).',
  'Utiliser la hauteur h du cône au lieu de la génératrice g. La formule πrg utilise la GÉNÉRATRICE (la ligne oblique), pas la hauteur (la distance verticale sommet-centre de la base).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Aire d'une sphère
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000006',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'qcm',
  'Quelle est l''aire de la surface d''une sphère de rayon 7 cm ? (Donner la valeur exacte)',
  NULL,
  '[{"id":"a","label":"196π cm²"},{"id":"b","label":"49π cm²"},{"id":"c","label":"28π cm²"},{"id":"d","label":"1 372π/3 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Aire de la sphère = 4πr² = 4 × π × 7² = 4 × 49π = 196π cm² ≈ 615,75 cm². La formule 4πr² signifie que l''aire de la sphère est exactement 4 fois l''aire du grand disque (πr²). Autrement dit, si on « aplatissait » une demi-sphère, elle couvrirait exactement 2 disques. C''est un résultat remarquable découvert par Archimède. Ne pas confondre avec le volume (4πr³/3) ni avec l''aire du disque (πr²).',
  'Utiliser πr² (aire du disque) ou 4πr³/3 (volume). L''aire de la sphère est 4πr² : le coefficient est 4 et l''exposant est 2 (c''est une aire, donc en cm²). Le volume utilise r³.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Relation patron / aire latérale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : l''aire totale d''un solide est égale à l''aire de son patron.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! Le patron d''un solide est sa surface « dépliée » à plat. Chaque face du solide apparaît exactement une fois dans le patron, sans chevauchement. Donc l''aire du patron = somme des aires de toutes les faces = aire totale du solide. C''est d''ailleurs une méthode pratique pour calculer l''aire totale : dessiner le patron et calculer l''aire de chaque partie. Pour un cube d''arête a, le patron donne 6 carrés d''aire a², donc aire totale = 6a².',
  'Penser que le patron et le solide n''ont pas la même aire. Le pliage change la forme 3D mais conserve les aires : c''est une isométrie (transformation qui conserve les distances et donc les aires).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Problème en contexte (peinture)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'qcm',
  'On veut peindre un pilier cylindrique (sans les bases) de rayon 0,5 m et de hauteur 3 m. Un pot de peinture couvre 5 m². Combien de pots faut-il acheter ?',
  NULL,
  '[{"id":"a","label":"1 pot (aire latérale ≈ 9,42 m², mais un seul pot suffit)"},{"id":"b","label":"2 pots (aire latérale ≈ 9,42 m²)"},{"id":"c","label":"3 pots (aire latérale ≈ 14,14 m²)"},{"id":"d","label":"2 pots (aire latérale ≈ 6,28 m²)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Aire latérale du cylindre = 2πrh = 2 × π × 0,5 × 3 = 3π ≈ 9,42 m². On ne peint que la surface latérale (pas les bases). Il faut couvrir 9,42 m² et chaque pot couvre 5 m². Avec 1 pot : 5 m² (insuffisant). Avec 2 pots : 10 m² (suffisant). Il faut donc 2 pots. C''est un arrondi par excès imposé par le contexte : on ne peut pas acheter 1,88 pot. Ce type de problème combine calcul d''aire et raisonnement pratique — un classique du CRPE.',
  'Calculer l''aire totale (avec les bases) au lieu de l''aire latérale seule. Ici, on peint les côtés d''un pilier, pas ses extrémités. Toujours lire l''énoncé pour déterminer quelles surfaces sont concernées.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Aire totale d'un cube
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'reponse_courte',
  'Calculez l''aire totale d''un cube d''arête 4,5 cm.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["121,5 cm²","121,5","121.5","121,50 cm²"]}'::jsonb,
  'Un cube a 6 faces carrées identiques. Aire d''une face = 4,5² = 20,25 cm². Aire totale = 6 × 20,25 = 121,5 cm². Formule générale : aire totale du cube = 6a² où a est l''arête. L''aire latérale du cube (4 faces seulement) serait 4 × 20,25 = 81 cm². Le cube est un cas particulier de parallélépipède rectangle (ou pavé droit) où les 3 dimensions sont égales.',
  'Calculer a³ (volume) au lieu de 6a² (aire). Le volume du cube est a³ = 91,125 cm³, l''aire totale est 6a² = 121,5 cm². Ne pas confondre les deux grandeurs (le volume est en cm³, l''aire en cm²).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Comparer les aires de deux solides
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f3c40000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_aire_laterale_solides',
  'Aires latérales et totales des solides usuels',
  'Standard',
  'qcm',
  'Un cylindre et un prisme droit à base carrée ont la même hauteur h = 10 cm. Le cylindre a un rayon de 4 cm et le prisme a un côté de base de 8 cm. Lequel a la plus grande aire latérale ?',
  NULL,
  '[{"id":"a","label":"Le cylindre (aire latérale ≈ 251 cm²)"},{"id":"b","label":"Le prisme (aire latérale = 320 cm²)"},{"id":"c","label":"Ils ont la même aire latérale"},{"id":"d","label":"On ne peut pas comparer sans connaître les bases"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Aire latérale du cylindre = 2πrh = 2π × 4 × 10 = 80π ≈ 251,3 cm². Aire latérale du prisme = périmètre × h = (4 × 8) × 10 = 320 cm². Le prisme a une aire latérale plus grande (320 > 251,3). Cela illustre un résultat classique : à périmètre donné, le cercle est la figure qui maximise l''aire intérieure ; mais ici on compare les périmètres : le périmètre du carré de côté 8 est 32 cm, celui du cercle de rayon 4 est 8π ≈ 25,1 cm. Le cercle a un périmètre plus petit, donc une aire latérale plus petite.',
  'Croire que le cylindre a toujours une aire plus grande car il est « rond ». En fait, c''est le périmètre de la base qui détermine l''aire latérale, et à dimensions comparables, le carré a un périmètre plus grand que le cercle.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
