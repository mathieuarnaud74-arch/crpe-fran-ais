-- ============================================================
-- Migration corrective : remplacement de 10 questions hors programme CRPE
-- PARTIE A : math_tangente_cercle Q3, Q5, Q6 (angle tangente-sécante,
--            angle tangente-corde, puissance d'un point → remplacés)
-- PARTIE B : math_vecteurs_introduction Q1–Q7 (vecteurs formels
--            → réécriture complète en « Translations »)
-- ============================================================

-- ============================
-- PARTIE A — math_tangente_cercle
-- ============================

-- Q3 — CONSOLIDATION — QCM — Angle inscrit dans un demi-cercle (théorème de Thalès)
-- Remplace l'ancienne Q3 sur l'angle tangente-sécante (hors programme CRPE)
DELETE FROM public.exercises WHERE id = 'f90d0000-0000-0000-0000-000000000003';
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'qcm',
  'Soit un cercle de centre O et de diamètre [AB]. Le point C est un point du cercle distinct de A et de B. Que peut-on dire de l''angle ACB ?',
  NULL,
  '[{"id":"a","label":"L''angle ACB est toujours droit (90°)"},{"id":"b","label":"L''angle ACB vaut 60°"},{"id":"c","label":"L''angle ACB dépend de la position de C sur le cercle"},{"id":"d","label":"L''angle ACB vaut le double de l''angle AOB"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'D''après le théorème de l''angle inscrit dans un demi-cercle (aussi appelé théorème de Thalès pour le cercle) : tout angle inscrit dans un cercle qui intercepte un demi-cercle (c''est-à-dire dont les côtés passent par les extrémités d''un diamètre) est un angle droit. [AB] est un diamètre, donc l''arc AB intercepté est un demi-cercle (180°). L''angle inscrit ACB vaut la moitié de l''arc, soit 180° / 2 = 90°. Cela ne dépend pas de la position de C sur le cercle (tant que C est distinct de A et B). La réponse D est fausse : l''angle AOB est un angle plat (180°), et son double vaudrait 360°, ce qui n''a pas de sens pour un angle inscrit.',
  'L''élève pense que la mesure de l''angle ACB dépend de la position de C sur le cercle, alors qu''elle est toujours de 90° lorsque [AB] est un diamètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Corde perpendiculaire au diamètre
-- Remplace l'ancienne Q5 sur l'angle tangente-corde (hors programme CRPE)
DELETE FROM public.exercises WHERE id = 'f90d0000-0000-0000-0000-000000000005';
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'vrai_faux',
  'Vrai ou faux : dans un cercle, si un diamètre est perpendiculaire à une corde, alors il coupe cette corde en son milieu.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Soit un cercle de centre O et un diamètre [AB] perpendiculaire à une corde [CD] en un point H. Les triangles OHC et OHD sont rectangles en H. Ils ont : OH en commun, OC = OD (rayons du cercle) et un angle droit en H. Par le théorème de Pythagore : HC² = OC² − OH² = OD² − OH² = HD². Donc HC = HD, ce qui signifie que H est le milieu de [CD]. Réciproquement, si un diamètre passe par le milieu d''une corde (qui n''est pas elle-même un diamètre), alors il est perpendiculaire à cette corde.',
  'L''élève confond cette propriété avec sa réciproque, ou pense qu''elle n''est vraie que si la corde passe par le centre.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Longueur de la tangente par Pythagore
-- Remplace l'ancienne Q6 sur la puissance d'un point (hors programme CRPE)
DELETE FROM public.exercises WHERE id = 'f90d0000-0000-0000-0000-000000000006';
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f90d0000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_tangente_cercle',
  'Tangente au cercle — Propriétés', 'Difficile', 'reponse_courte',
  'Un cercle de centre O a un rayon de 5 cm. Un point P est situé à 13 cm du centre O. On trace la tangente au cercle passant par P ; elle touche le cercle en T. Quelle est la longueur PT en cm ?',
  'Le triangle OTP est rectangle en T car la tangente est perpendiculaire au rayon au point de tangence.',
  NULL,
  '{"mode":"text","acceptableAnswers":["12","12 cm"]}'::jsonb,
  'La tangente en T est perpendiculaire au rayon [OT], donc le triangle OTP est rectangle en T. On connaît l''hypoténuse OP = 13 cm et le côté OT = 5 cm (rayon). Par le théorème de Pythagore : PT² = OP² − OT² = 13² − 5² = 169 − 25 = 144. Donc PT = √144 = 12 cm. On reconnaît ici le triplet pythagoricien (5 ; 12 ; 13).',
  'L''élève applique Pythagore en additionnant les carrés au lieu de les soustraire (il calcule √(169 + 25) = √194), ou place l''angle droit au mauvais sommet.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;


-- ============================
-- PARTIE B — math_vecteurs_introduction → Translations
-- Réécriture complète des 7 questions
-- ============================

-- Suppression des 7 anciennes questions sur les vecteurs
DELETE FROM public.exercises WHERE id = 'f9060000-0000-0000-0000-000000000001';
DELETE FROM public.exercises WHERE id = 'f9060000-0000-0000-0000-000000000002';
DELETE FROM public.exercises WHERE id = 'f9060000-0000-0000-0000-000000000003';
DELETE FROM public.exercises WHERE id = 'f9060000-0000-0000-0000-000000000004';
DELETE FROM public.exercises WHERE id = 'f9060000-0000-0000-0000-000000000005';
DELETE FROM public.exercises WHERE id = 'f9060000-0000-0000-0000-000000000006';
DELETE FROM public.exercises WHERE id = 'f9060000-0000-0000-0000-000000000007';

-- Q1 — AMORCE — QCM — Définition de la translation (propriétés conservées)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Translations — Propriétés et constructions', 'Difficile', 'qcm',
  'Une translation est une transformation géométrique qui « glisse » chaque point du plan dans la même direction, le même sens et la même distance. Parmi les propriétés suivantes, laquelle est conservée par une translation ?',
  NULL,
  '[{"id":"a","label":"Les longueurs, les angles et le parallélisme"},{"id":"b","label":"Les longueurs uniquement"},{"id":"c","label":"Les angles uniquement"},{"id":"d","label":"Ni les longueurs ni les angles"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La translation est une isométrie : elle conserve toutes les distances. L''image d''un segment [AB] par une translation est un segment [A''B''] de même longueur. La translation conserve également les angles : l''image d''un angle de 60° reste un angle de 60°. Enfin, elle conserve le parallélisme : si deux droites sont parallèles, leurs images par une translation sont aussi parallèles. Plus généralement, la translation conserve la forme et les dimensions de toute figure : l''image d''un carré est un carré identique, l''image d''un cercle est un cercle de même rayon.',
  'L''élève pense que la translation ne conserve que les longueurs (réponse B) et oublie qu''elle conserve aussi les angles et le parallélisme.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Segments parallèles et de même longueur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Translations — Propriétés et constructions', 'Difficile', 'vrai_faux',
  'Vrai ou faux : si A'' est l''image de A par une translation et B'' est l''image de B par la même translation, alors les segments [AA''] et [BB''] sont parallèles et de même longueur.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Par définition, une translation déplace chaque point du plan de la même façon : même direction, même sens, même distance. Donc le « glissement » de A vers A'' est identique au « glissement » de B vers B''. Les segments [AA''] et [BB''] ont la même direction (ils sont parallèles), le même sens et la même longueur. De plus, le quadrilatère ABB''A'' est un parallélogramme, car ses côtés opposés [AA''] et [BB''] sont parallèles et de même longueur.',
  'L''élève confond translation et rotation : il pense que les déplacements AA'' et BB'' pourraient avoir des directions différentes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Image d'un point par translation sur quadrillage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Translations — Propriétés et constructions', 'Difficile', 'qcm',
  'Sur un quadrillage, la translation qui transforme le point M en M'' déplace chaque point de 4 carreaux vers la droite et 3 carreaux vers le haut. Le point N se trouve à 2 carreaux à droite et 1 carreau au-dessus de M. Où se situe l''image N'' de N par cette même translation ?',
  NULL,
  '[{"id":"a","label":"6 carreaux à droite et 4 carreaux au-dessus de M"},{"id":"b","label":"4 carreaux à droite et 3 carreaux au-dessus de N"},{"id":"c","label":"Les deux réponses A et B sont correctes"},{"id":"d","label":"2 carreaux à droite et 1 carreau au-dessus de M''"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La translation déplace chaque point de 4 carreaux vers la droite et 3 vers le haut. Donc N'' est à 4 carreaux à droite et 3 carreaux au-dessus de N (réponse B). Comme N est à 2 carreaux à droite et 1 au-dessus de M, N'' est à (2 + 4) = 6 carreaux à droite et (1 + 3) = 4 carreaux au-dessus de M (réponse A). De même, M'' est à 4 carreaux à droite et 3 au-dessus de M, donc N'' est à 2 carreaux à droite et 1 au-dessus de M'' (réponse D est aussi correcte). Les réponses A et B décrivent bien la même position, donc C est la bonne réponse.',
  'L''élève applique la translation à N mais oublie que le résultat peut aussi se décrire par rapport à M. Il choisit B sans voir que A est également correct.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Coordonnées de l'image d'un point
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Translations — Propriétés et constructions', 'Difficile', 'reponse_courte',
  'Dans un repère, le point A a pour coordonnées (2 ; 5). On applique une translation qui déplace chaque point de 3 unités vers la droite et de 2 unités vers le haut. Quelles sont les coordonnées de l''image A'' ? Donnez la réponse sous la forme (x ; y).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(5 ; 7)","(5;7)","(5 ;7)","(5; 7)"]}'::jsonb,
  'La translation déplace chaque point de 3 vers la droite (on ajoute 3 à l''abscisse) et de 2 vers le haut (on ajoute 2 à l''ordonnée). Donc A''(2 + 3 ; 5 + 2) = A''(5 ; 7). On vérifie : le déplacement de A vers A'' est bien de 3 unités vers la droite et 2 vers le haut.',
  'L''élève se trompe dans le sens du déplacement : il soustrait au lieu d''additionner et obtient (−1 ; 3).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — QCM — Reconnaître une translation parmi d'autres transformations
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Translations — Propriétés et constructions', 'Difficile', 'qcm',
  'On observe qu''un triangle ABC a été transformé en un triangle A''B''C''. Les segments [AA''], [BB''] et [CC''] sont tous parallèles, de même sens et de même longueur. De quelle transformation s''agit-il ?',
  NULL,
  '[{"id":"a","label":"Une symétrie axiale"},{"id":"b","label":"Une translation"},{"id":"c","label":"Une rotation"},{"id":"d","label":"Une symétrie centrale"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le fait que tous les segments reliant un point à son image ([AA''], [BB''], [CC'']) soient parallèles, de même sens et de même longueur est la propriété caractéristique de la translation. Chaque point subit le même déplacement. Dans une symétrie axiale, les segments reliant chaque point à son image sont perpendiculaires à l''axe (pas nécessairement parallèles entre eux si les points ne sont pas alignés). Dans une rotation, ces segments ont des directions différentes. Dans une symétrie centrale, ils passent tous par le centre mais n''ont pas le même sens (ils sont de sens contraire deux à deux).',
  'L''élève confond translation et symétrie centrale : dans les deux cas les figures sont « superposables », mais la symétrie centrale retourne la figure.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Vrai/Faux — Composition de deux translations
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Translations — Propriétés et constructions', 'Difficile', 'vrai_faux',
  'Vrai ou faux : si on applique une première translation qui déplace chaque point de 2 unités vers la droite et 3 vers le haut, puis une deuxième translation qui déplace de 1 unité vers la gauche et 4 vers le haut, le résultat est équivalent à une seule translation qui déplace de 1 unité vers la droite et 7 vers le haut.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. La composition (enchaînement) de deux translations est toujours une translation. Le déplacement global s''obtient en additionnant les déplacements : horizontalement, 2 + (−1) = 1 unité vers la droite ; verticalement, 3 + 4 = 7 unités vers le haut. Le résultat est bien une translation qui déplace de 1 unité vers la droite et 7 vers le haut. Cette propriété est générale : l''enchaînement de deux translations est toujours une translation dont le déplacement est la « somme » des deux déplacements.',
  'L''élève se trompe dans l''addition des déplacements horizontaux : il calcule 2 + 1 = 3 au lieu de 2 + (−1) = 1, en oubliant que « vers la gauche » correspond à un déplacement négatif.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Frise par translation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9060000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_vecteurs_introduction',
  'Translations — Propriétés et constructions', 'Difficile', 'reponse_courte',
  'Une frise décorative est construite en répétant un motif par translation. Le motif de base mesure 4 cm de large. On souhaite réaliser une frise de 52 cm de long en partant du premier motif. Combien de translations successives faut-il effectuer pour compléter la frise ?',
  'Le premier motif est déjà en place. Chaque translation reproduit le motif en le décalant de 4 cm vers la droite.',
  NULL,
  '{"mode":"text","acceptableAnswers":["12","12 translations"]}'::jsonb,
  'Le premier motif est déjà en place et occupe 4 cm. Chaque translation ajoute un nouveau motif de 4 cm. La frise complète de 52 cm contient 52 / 4 = 13 motifs au total. Comme le premier motif est déjà placé, il faut 13 − 1 = 12 translations pour compléter la frise. Vérification : 1 motif initial + 12 motifs ajoutés par translation = 13 motifs × 4 cm = 52 cm.',
  'L''élève calcule 52 / 4 = 13 et répond 13, en oubliant que le premier motif est déjà en place et ne nécessite pas de translation.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
