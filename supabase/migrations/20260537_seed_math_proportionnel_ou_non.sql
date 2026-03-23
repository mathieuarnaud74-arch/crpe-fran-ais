-- Série : Proportionnel ou non ? — Distinguer les situations
-- 7 questions, Intermédiaire, free
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Compétence clé CRPE : reconnaître si une situation relève de la proportionnalité

-- Q1 — AMORCE — Vrai/Faux — Situation proportionnelle évidente
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : le prix total d''essence est proportionnel au nombre de litres achetés (à prix constant par litre).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}',
  'VRAI. Si le prix par litre est fixe (ex : 1,85 €/L), alors prix = 1,85 × volume. C''est bien une relation de proportionnalité : le coefficient est 1,85, et si on double le volume, on double le prix. Test de la proportionnalité : le tableau {litres ; prix} passe par l''origine (0 L → 0 €), et le rapport prix/volume est constant. C''est le modèle de base de la proportionnalité directe. Au CRPE, ce type de situation sert souvent de référence pour construire le concept chez les élèves.',
  'Hésiter parce que le prix varie d''une station à l''autre. Ici, « à prix constant par litre » fixe le coefficient — la proportionnalité est bien vérifiée.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Situation NON proportionnelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : l''âge d''une personne est proportionnel à sa taille.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}',
  'FAUX. Un bébé de 1 an mesure environ 75 cm. Un adulte de 20 ans mesure environ 175 cm. Si c''était proportionnel, à 40 ans il mesurerait 2 × 175 = 350 cm ! La taille ne double pas quand l''âge double. La croissance n''est pas linéaire : elle est rapide dans les premières années, ralentit à l''adolescence, et s''arrête vers 18-20 ans. Test de proportionnalité échoué : le rapport taille/âge n''est pas constant (75/1 ≠ 175/20). Deux grandeurs qui « varient ensemble » ne sont pas forcément proportionnelles — c''est la distinction fondamentale à construire chez les élèves.',
  'Confondre « les deux grandeurs augmentent ensemble » (corrélation) avec « les deux grandeurs sont proportionnelles » (rapport constant). La proportionnalité est un cas TRÈS particulier de relation entre grandeurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Identifier parmi plusieurs situations
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Intermediaire',
  'qcm',
  'Parmi ces tableaux de valeurs, lequel représente une situation de proportionnalité ?',
  'Tableau A : {2→6, 4→12, 5→15}. Tableau B : {1→3, 2→5, 3→7}. Tableau C : {2→4, 3→9, 4→16}. Tableau D : {1→1, 2→4, 3→9}.',
  '[{"id":"a","label":"Tableau A (rapport constant = 3)"},{"id":"b","label":"Tableau B (écart constant = 2)"},{"id":"c","label":"Tableau C"},{"id":"d","label":"Tableau D (carrés parfaits)"}]',
  '{"mode":"single","value":"a"}',
  'Seul le tableau A est proportionnel : 6/2 = 3, 12/4 = 3, 15/5 = 3. Le rapport est CONSTANT (= 3). Tableau B : 3/1 = 3, 5/2 = 2,5, 7/3 ≈ 2,33. Les rapports ne sont pas égaux → pas proportionnel. C''est une relation affine (y = 2x + 1) : l''écart est constant (+2) mais le rapport ne l''est pas. Tableau C : 4/2 = 2, 9/3 = 3, 16/4 = 4. Rapports différents → pas proportionnel (c''est y = x²). Tableau D : ce sont les carrés (1², 2², 3²) → pas proportionnel. Critère de proportionnalité : le rapport y/x est constant pour toutes les paires (x, y).',
  'Confondre « écart constant » (relation affine, tableau B) et « rapport constant » (proportionnalité, tableau A). La proportionnalité exige un RAPPORT constant, pas un écart constant.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Graphique et proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Intermediaire',
  'qcm',
  'Comment reconnaît-on graphiquement une situation de proportionnalité ?',
  NULL,
  '[{"id":"a","label":"Les points sont alignés sur une droite passant par l''origine (0 ; 0)"},{"id":"b","label":"Les points sont alignés sur n''importe quelle droite"},{"id":"c","label":"Les points forment une courbe croissante"},{"id":"d","label":"Les points sont régulièrement espacés"}]',
  '{"mode":"single","value":"a"}',
  'La proportionnalité se traduit graphiquement par des points alignés sur une droite PASSANT PAR L''ORIGINE. La relation y = kx (proportionnalité) est une droite de pente k passant par (0 ; 0). Si la droite ne passe pas par l''origine (ex : y = 2x + 3), c''est une relation affine, pas proportionnelle. Le passage par l''origine signifie « quand x = 0, y = 0 » — ce qui est logique : 0 litre d''essence coûte 0 €, 0 km parcourus en 0 heure, etc. La réponse B (n''importe quelle droite) correspond à une fonction affine, pas proportionnelle. Les réponses C et D ne caractérisent pas la proportionnalité.',
  'Confondre proportionnalité (droite par l''origine) et relation affine (droite quelconque). Une droite qui ne passe pas par (0 ; 0) n''est PAS une relation de proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Réponse courte — Vérifier la proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Intermediaire',
  'reponse_courte',
  'Un forfait téléphonique coûte 15 € par mois + 0,05 € par SMS envoyé. Pour 100 SMS, on paie 20 €. Pour 200 SMS, on paie 25 €. Le coût total est-il proportionnel au nombre de SMS ? (Répondez par oui ou non, et justifiez en un mot.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["non","Non","non car le rapport n''est pas constant","non (relation affine)","non, affine"]}'  ,
  'NON. Vérifions le rapport coût/SMS : 20/100 = 0,20 €/SMS et 25/200 = 0,125 €/SMS. Les rapports sont différents → pas proportionnel. La relation est AFFINE : coût = 15 + 0,05 × nombre de SMS. Le terme fixe (15 €, l''abonnement) empêche la proportionnalité. Si l''abonnement était de 0 € (uniquement un coût par SMS), la relation serait proportionnelle. La distinction proportionnelle/affine est fondamentale : proportionnalité = pas de terme constant (y = kx), affine = avec un terme constant (y = kx + b, b ≠ 0).',
  'Répondre oui parce que « plus de SMS = plus cher ». Le fait que les deux grandeurs augmentent ensemble ne suffit pas — il faut que le RAPPORT soit constant.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Proportionnalité inverse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Intermediaire',
  'qcm',
  'Pour creuser une tranchée, 4 ouvriers mettent 6 heures. Combien de temps mettront 12 ouvriers (tous au même rythme) ?',
  NULL,
  '[{"id":"a","label":"18 heures (proportionnalité directe : 3 fois plus d''ouvriers = 3 fois plus de temps)"},{"id":"b","label":"2 heures (proportionnalité inverse : 3 fois plus d''ouvriers = 3 fois moins de temps)"},{"id":"c","label":"6 heures (le nombre d''ouvriers ne change rien)"},{"id":"d","label":"24 heures"}]',
  '{"mode":"single","value":"b"}',
  'C''est une situation de proportionnalité INVERSE. Plus il y a d''ouvriers, moins il faut de temps. Le produit ouvriers × temps est constant : 4 × 6 = 24 « ouvriers-heures ». Avec 12 ouvriers : 12 × t = 24, donc t = 24/12 = 2 heures. Vérification : 12 ouvriers × 2 h = 24 ouvriers-heures = 4 ouvriers × 6 h ✓. Dans la proportionnalité inverse, quand une grandeur est multipliée par k, l''autre est divisée par k. Ici : ouvriers ×3, temps ÷3. La proportionnalité inverse est un obstacle majeur au cycle 3 car les élèves appliquent spontanément le modèle « plus... plus... » de la proportionnalité directe.',
  'Appliquer la proportionnalité directe (3 × plus d''ouvriers = 3 × plus de temps = 18 h). C''est l''erreur de ne pas reconnaître la situation inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Question didactique sur la proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0160000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnel_ou_non',
  'Proportionnel ou non ? — Distinguer les situations',
  'Intermediaire',
  'qcm',
  'Un enseignant propose : « Pierre a 8 ans et mesure 1,20 m. Quelle sera sa taille à 16 ans ? » Un élève répond 2,40 m. Quel est le diagnostic ?',
  NULL,
  '[{"id":"a","label":"L''élève applique abusivement la proportionnalité à une situation non proportionnelle (la taille n''est pas proportionnelle à l''âge)"},{"id":"b","label":"L''élève a fait une erreur de calcul"},{"id":"c","label":"L''élève a confondu mètres et centimètres"},{"id":"d","label":"La réponse de l''élève est plausible"}]',
  '{"mode":"single","value":"a"}',
  'L''élève a raisonné : « 16 = 2 × 8, donc taille = 2 × 1,20 = 2,40 m ». C''est un raisonnement proportionnel appliqué à une situation qui N''EST PAS proportionnelle. La taille n''est pas proportionnelle à l''âge : un adulte de 16 ans ne mesure pas 2,40 m ! Cette erreur illustre l''« illusion de linéarité » (De Bock et al.) : la tendance à appliquer le modèle proportionnel à toute situation impliquant deux grandeurs qui varient. C''est l''un des obstacles les plus documentés en didactique des mathématiques. Au CRPE, savoir identifier cette erreur et proposer des contre-exemples est une compétence attendue.',
  'Ne pas identifier l''illusion de linéarité. L''élève ne fait pas une « erreur de calcul » — il applique un modèle (la proportionnalité) à un contexte où il ne s''applique pas.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
