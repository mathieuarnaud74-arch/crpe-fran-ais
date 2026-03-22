-- Migration: série math_chasse_erreurs_mesures (7 questions)
-- Chasse aux erreurs — Mesures et conversions — Mathématiques CRPE
-- UUID prefix: b0050000
-- Types : qcm, vrai_faux, reponse_courte
-- Niveau : Intermediaire
-- Access : free

-- ============================================================================
-- Q1 — QCM — AMORCE — Confusion km / m (facteur 1000)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000001',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Intermediaire',
  'qcm',
  'Noah a écrit : « 3,5 km = 350 m ». Quelle erreur a-t-il commise ?',
  NULL,
  '[{"id":"a","label":"Il a multiplié par 100 au lieu de 1 000"},{"id":"b","label":"Il a divisé par 1 000 au lieu de multiplier"},{"id":"c","label":"Il a confondu km et hm"},{"id":"d","label":"Il a oublié la virgule dans le résultat"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour convertir des kilomètres en mètres, on multiplie par 1 000 car 1 km = 1 000 m. Le calcul correct est donc : 3,5 × 1 000 = 3 500 m. Noah a obtenu 350, ce qui correspond à 3,5 × 100. Il a appliqué le facteur de conversion des hectomètres (1 hm = 100 m) au lieu de celui des kilomètres. Pour vérifier, on peut utiliser le tableau de conversion des unités de longueur : km → hm → dam → m. On décale la virgule de 3 rangs vers la droite (une position par unité intermédiaire). 3,5 km = 3 500 m. L''utilisation systématique du tableau de conversion permet d''éviter cette erreur de facteur.',
  'Confondre le facteur de conversion entre km et m (×1 000) avec celui entre hm et m (×100). L''élève se trompe d''un rang dans le tableau de conversion des longueurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — VRAI/FAUX — AMORCE — Conversion d'aires (1 m² = 100 cm² ?)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000002',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Intermediaire',
  'vrai_faux',
  'Noah affirme : « 1 m² = 100 cm² ». Cette affirmation est-elle correcte ?',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'L''affirmation est FAUSSE. 1 m² = 10 000 cm². En effet, 1 m = 100 cm, donc 1 m² = 1 m × 1 m = 100 cm × 100 cm = 10 000 cm². C''est le piège classique des conversions d''aires : le facteur de conversion est élevé au carré. Pour les longueurs, 1 m = 100 cm (facteur 100). Pour les aires, ce facteur est mis au carré : 100² = 10 000. Dans le tableau de conversion des aires, chaque colonne comporte DEUX rangs (et non un seul comme pour les longueurs). Ainsi, entre m² et cm², on traverse 2 colonnes soit 4 rangs, ce qui correspond bien à un facteur 10 000. Noah a appliqué le facteur de conversion des longueurs (×100) au lieu de celui des aires (×10 000).',
  'Appliquer le facteur de conversion des longueurs aux aires. L''élève oublie que pour les unités au carré, le facteur de conversion doit lui aussi être élevé au carré : passer de m à cm c''est ×100, mais de m² à cm² c''est ×10 000.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — QCM — CONSOLIDATION — Conversion heures/minutes (2h30 = 2,3 h)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Intermediaire',
  'qcm',
  'Noah doit convertir 2 h 30 min en heures décimales. Il écrit : « 2 h 30 min = 2,3 h ». Quelle est la nature de son erreur ?',
  NULL,
  '[{"id":"a","label":"Il a traité les minutes comme des centièmes d''heure au lieu de soixantièmes"},{"id":"b","label":"Il a oublié de convertir les minutes"},{"id":"c","label":"Il a divisé 30 par 10 au lieu de 60"},{"id":"d","label":"Il a confondu heures et minutes"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le système horaire est sexagésimal (base 60) et non décimal (base 10). Pour convertir 30 minutes en fraction d''heure, on calcule 30 ÷ 60 = 0,5 h. Donc 2 h 30 min = 2,5 h. Noah a écrit 2,3 en « collant » simplement le 30 après la virgule, comme si 30 minutes correspondaient à 0,3 h. Il a traité les minutes comme des dixièmes ou centièmes d''heure, appliquant une logique décimale à un système sexagésimal. C''est une erreur fondamentale de numération : 30 min = 30/60 h = 1/2 h = 0,5 h, et NON 0,30 h. Pour vérifier : 0,3 h = 0,3 × 60 = 18 minutes, ce qui ne correspond pas à 30 minutes.',
  'Écrire la partie « minutes » directement après la virgule comme s''il s''agissait de dixièmes d''heure. L''élève confond le système sexagésimal (base 60) avec le système décimal (base 10), ce qui est une erreur de numération positionnelle.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — VRAI/FAUX — CONSOLIDATION — Volumes (dm³ et L)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000004',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Intermediaire',
  'vrai_faux',
  'Noah écrit : « 1 cm³ = 1 mL, donc 1 m³ = 1 000 L ». La conclusion de Noah est-elle correcte ?',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''affirmation de Noah est VRAIE. Le raisonnement complet est le suivant : 1 cm³ = 1 mL (c''est la correspondance fondamentale entre unités de volume et de contenance). Ensuite, 1 m³ = 1 000 dm³ (car 1 m = 10 dm, donc 1 m³ = 10³ dm³ = 1 000 dm³). Or 1 dm³ = 1 L. Donc 1 m³ = 1 000 L. On peut aussi vérifier par la voie des cm³ : 1 m³ = 1 000 000 cm³ = 1 000 000 mL = 1 000 L. Les deux chemins de conversion aboutissent au même résultat. La correspondance entre unités de volume (m³, dm³, cm³) et unités de contenance (kL, L, mL) est un point essentiel du programme : 1 dm³ = 1 L et 1 cm³ = 1 mL.',
  'Confondre dm³ et L ou cm³ et mL dans les conversions de volume. Beaucoup d''élèves savent que 1 dm³ = 1 L mais peinent à utiliser cette correspondance dans des conversions impliquant le m³.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — RÉPONSE COURTE — CONSOLIDATION — Conversion km/h en m/s
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000005',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Intermediaire',
  'reponse_courte',
  'Noah convertit 90 km/h en m/s. Il écrit : « 90 km/h = 90 × 1 000 ÷ 60 = 1 500 m/s ». Le résultat correct est 25 m/s. Quel diviseur Noah a-t-il oublié dans son calcul ? Écris uniquement le nombre.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["60","3600","3 600"]}'::jsonb,
  'Pour convertir des km/h en m/s, on multiplie par 1 000 (conversion km → m) et on divise par 3 600 (conversion h → s). En effet, 1 h = 60 min = 3 600 s. Le calcul correct est : 90 × 1 000 ÷ 3 600 = 90 000 ÷ 3 600 = 25 m/s. Noah a divisé par 60 (le nombre de minutes dans une heure) au lieu de 3 600 (le nombre de secondes dans une heure). Il a oublié la deuxième étape de conversion temporelle : après avoir converti les heures en minutes, il fallait encore convertir les minutes en secondes (÷ 60 une seconde fois). Autrement dit, il manque un facteur 60 dans sa division. On peut retenir la formule : pour passer de km/h à m/s, on divise par 3,6.',
  'Diviser par 60 au lieu de 3 600 lors de la conversion d''heures en secondes. L''élève convertit les heures en minutes mais oublie de convertir ensuite les minutes en secondes, ce qui donne un résultat 60 fois trop grand.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — QCM — APPROFONDISSEMENT — Calcul d'aire puis conversion d'unités
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000006',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Intermediaire',
  'qcm',
  'Un terrain rectangulaire mesure 250 m × 80 m. Noah calcule son aire et écrit : « 250 × 80 = 20 000 m² = 20 ha ». Que pensez-vous du résultat de Noah ?',
  NULL,
  '[{"id":"a","label":"Le calcul de l''aire est faux et la conversion aussi"},{"id":"b","label":"Le calcul de l''aire est correct mais la conversion en hectares est fausse"},{"id":"c","label":"Le calcul de l''aire et la conversion sont tous les deux corrects"},{"id":"d","label":"Le calcul de l''aire est faux mais la conversion serait correcte si l''aire était juste"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Vérifions chaque étape du raisonnement de Noah. Aire du rectangle : L × l = 250 × 80 = 20 000 m². Ce calcul est correct. Conversion en hectares : 1 ha = 10 000 m² (un hectare est l''aire d''un carré de 100 m de côté : 100 × 100 = 10 000 m²). Donc 20 000 m² ÷ 10 000 = 2 ha. Or Noah a écrit « 20 000 m² = 20 ha », ce qui est FAUX : 20 000 m² = 2 ha, pas 20 ha. Noah a divisé par 1 000 au lieu de 10 000. Conclusion : l''aire en m² est correcte, mais la conversion en hectares est erronée. Noah a confondu le facteur de conversion : 1 ha = 10 000 m² (et non 1 000 m²). Dans le tableau des aires, entre m² et ha, il y a 2 colonnes (m² → dam² → hm² = ha), soit 4 rangs, ce qui correspond à un facteur 10 000.',
  'Diviser par 1 000 au lieu de 10 000 pour convertir des m² en hectares. L''élève oublie que le hectare correspond à l''hectomètre carré (hm²) et que chaque colonne du tableau des aires comporte deux rangs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — RÉPONSE COURTE — APPROFONDISSEMENT — Situation complexe multi-unités
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0050000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_chasse_erreurs_mesures',
  'Chasse aux erreurs — Mesures et conversions',
  'Intermediaire',
  'reponse_courte',
  'Noah doit calculer le volume d''eau en litres contenu dans un aquarium de 80 cm × 50 cm × 30 cm. Il écrit : « 80 × 50 × 30 = 120 000 cm³. Comme 1 L = 100 cm³, l''aquarium contient 1 200 L. » Quel est le volume correct en litres ? Écris uniquement le nombre.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["120","120 L","120L"]}'::jsonb,
  'Le calcul du volume en cm³ est correct : 80 × 50 × 30 = 120 000 cm³. L''erreur de Noah porte sur la correspondance entre cm³ et L. Il a utilisé 1 L = 100 cm³, ce qui est FAUX. La correspondance correcte est : 1 L = 1 dm³ = 1 000 cm³. Donc 120 000 cm³ = 120 000 ÷ 1 000 = 120 L. Noah a trouvé 1 200 L car il a divisé par 100 au lieu de 1 000. Son erreur provient d''une confusion entre la conversion des longueurs (1 dm = 10 cm, facteur 10) et celle des volumes (1 dm³ = 1 000 cm³, facteur 10³ = 1 000). Comme pour les aires, le facteur de conversion des volumes est le cube du facteur de conversion des longueurs. Pour vérifier : un aquarium de 120 cm de long contiendrait déjà difficilement 1 200 L (soit 1,2 m³). 120 L est un volume réaliste pour un aquarium domestique.',
  'Utiliser 1 L = 100 cm³ au lieu de 1 L = 1 000 cm³. L''élève applique le facteur de conversion linéaire (×100 entre m et cm) au lieu du facteur cubique (×1 000 entre dm³ et cm³), confondant dimensions linéaires et volumiques.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
