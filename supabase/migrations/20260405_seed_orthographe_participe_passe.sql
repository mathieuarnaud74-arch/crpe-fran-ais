-- ============================================================
-- Migration : Série Orthographe — Accord du participe passé
-- Topic : orthographe_participe_passe
-- UUID prefix : d20c0000
-- 10 exercices : 5 qcm, 2 reponse_courte, 3 correction_orthographique
-- Niveaux : 3 Facile, 4 Intermédiaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — QCM — PP avec être (règle de base)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Facile',
  'qcm',
  'Quelle forme complète correctement la phrase : « Les filles sont _______ en retard ce matin » ?',
  NULL,
  '[{"id":"a","label":"arrivé"},{"id":"b","label":"arrivés"},{"id":"c","label":"arrivées"},{"id":"d","label":"arrivée"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Avec l''auxiliaire « être », le participe passé s''accorde en genre et en nombre avec le sujet. Le sujet « les filles » est féminin pluriel, donc le participe passé prend la marque du féminin (-e) et du pluriel (-s) : « arrivées ». C''est la règle fondamentale de l''accord du PP avec être, incontournable au CRPE.',
  'Accorder au masculin pluriel (« arrivés ») en oubliant de vérifier le genre du sujet, ou laisser le PP au masculin singulier.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — PP avec avoir (sans COD antéposé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Facile',
  'qcm',
  'Quelle est la forme correcte dans la phrase : « Elles ont _______ une chanson magnifique » ?',
  NULL,
  '[{"id":"a","label":"chantée"},{"id":"b","label":"chantées"},{"id":"c","label":"chanté"},{"id":"d","label":"chantés"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Avec l''auxiliaire « avoir », le participe passé ne s''accorde pas avec le sujet. Il ne s''accorde qu''avec le COD, et uniquement si celui-ci est placé avant le verbe. Ici, le COD « une chanson magnifique » est placé après le verbe, donc le PP reste invariable : « chanté ». C''est la règle de base de l''accord du PP avec avoir.',
  'Accorder le PP avec le sujet « elles » (« chantées ») en confondant la règle de l''auxiliaire être avec celle de l''auxiliaire avoir.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Correction orthographique — PP avec être simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Facile',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Les lettres sont *arrivé* ce matin par la poste.',
  NULL,
  '{"mode":"text","acceptableAnswers":["arrivées"]}'::jsonb,
  'Le participe passé « arrivé » est employé avec l''auxiliaire « être ». Il doit s''accorder avec le sujet « les lettres », qui est féminin pluriel. La forme correcte est donc « arrivées » (féminin pluriel : -é + -e + -s). Avec « être », le PP fonctionne comme un adjectif attribut du sujet.',
  'Écrire « arrivés » (masculin pluriel) en oubliant que « lettres » est un nom féminin, ou laisser le PP au masculin singulier.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — PP avec avoir et COD antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte : « Les fleurs que j''ai _______ sont magnifiques » ?',
  NULL,
  '[{"id":"a","label":"cueilli"},{"id":"b","label":"cueillis"},{"id":"c","label":"cueillies"},{"id":"d","label":"cueillie"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Avec l''auxiliaire « avoir », le participe passé s''accorde avec le COD lorsque celui-ci est placé avant le verbe. Ici, le COD est le pronom relatif « que », qui reprend « les fleurs » (féminin pluriel). Le PP s''accorde donc au féminin pluriel : « cueillies ». Pour identifier le COD antéposé, on pose la question « J''ai cueilli quoi ? » → « que » = « les fleurs ».',
  'Laisser le PP invariable (« cueilli ») en oubliant de vérifier si le COD est placé avant le verbe, ou accorder avec le sujet « j'' ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Réponse courte — PP avec avoir et pronom COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Intermediaire',
  'reponse_courte',
  'Complétez la phrase avec la forme correcte du participe passé du verbe « lire » : « Ces histoires, je les ai _______ avec plaisir. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["lues"]}'::jsonb,
  'Le pronom personnel COD « les » est placé avant le verbe « ai lu ». Il reprend « ces histoires » (féminin pluriel). Le participe passé s''accorde donc avec ce COD antéposé : « lues » (féminin pluriel). On pose la question « J''ai lu quoi ? » → « les » = « ces histoires ». Le pronom COD antéposé déclenche systématiquement l''accord du PP avec avoir.',
  'Écrire « lu » (invariable) en ne repérant pas que le pronom « les » est un COD placé avant le verbe, ou écrire « lus » en oubliant le genre féminin.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Correction orthographique — PP avec avoir et COD antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'La tarte que maman a *préparé* était délicieuse.',
  NULL,
  '{"mode":"text","acceptableAnswers":["préparée"]}'::jsonb,
  'Le participe passé « préparé » est employé avec l''auxiliaire « avoir ». Le COD est le pronom relatif « que », qui reprend « la tarte » (féminin singulier) et qui est placé avant le verbe. Le PP doit donc s''accorder au féminin singulier : « préparée ». La question à se poser : « Maman a préparé quoi ? » → « que » = « la tarte ».',
  'Laisser le PP invariable en ne repérant pas que le pronom relatif « que » est un COD antéposé qui déclenche l''accord.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — QCM — PP des verbes pronominaux (sens réfléchi)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte : « Elles se sont _______ les mains avant de manger » ?',
  NULL,
  '[{"id":"a","label":"lavé"},{"id":"b","label":"lavées"},{"id":"c","label":"lavés"},{"id":"d","label":"lavée"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour les verbes pronominaux réfléchis, le PP s''accorde avec le COD si celui-ci est placé avant le verbe. Ici, « se » est COI (elles ont lavé quoi ? → les mains ; à qui ? → à elles-mêmes = se). Le COD « les mains » est placé après le verbe, donc le PP reste invariable : « lavé ». Si la phrase avait été « Elles se sont lavées » (sans COD après), « se » serait COD et le PP s''accorderait.',
  'Accorder le PP avec le sujet « elles » (« lavées ») en appliquant automatiquement la règle de l''auxiliaire être, sans analyser la fonction du pronom « se ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — QCM — PP des verbes pronominaux (essentiellement pronominaux)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Avance',
  'qcm',
  'Quelle est la forme correcte : « Les oiseaux se sont _______ vers le sud dès les premiers froids » ?',
  NULL,
  '[{"id":"a","label":"envolé"},{"id":"b","label":"envolés"},{"id":"c","label":"envolées"},{"id":"d","label":"envoler"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le verbe « s''envoler » est un verbe essentiellement pronominal (il n''existe pas sous la forme « envoler » sans le pronom). Pour les verbes essentiellement pronominaux, le participe passé s''accorde toujours avec le sujet, comme avec l''auxiliaire être. « Les oiseaux » est masculin pluriel, donc : « envolés ». Autres verbes essentiellement pronominaux : s''évanouir, se souvenir, s''enfuir, s''abstenir.',
  'Laisser le PP invariable en analysant à tort « se » comme un COI, alors que pour les verbes essentiellement pronominaux, l''accord se fait systématiquement avec le sujet.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — Correction orthographique — PP avec « en » (partitif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Avance',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Des erreurs, il en a *commises* beaucoup dans sa dictée.',
  NULL,
  '{"mode":"text","acceptableAnswers":["commis"]}'::jsonb,
  'Le pronom « en » (qui reprend « des erreurs ») est traditionnellement considéré comme un COD neutre qui ne déclenche pas l''accord du participe passé avec l''auxiliaire avoir. On écrit donc « il en a commis beaucoup ». La règle veut que « en » partitif bloque l''accord du PP, même si le référent est féminin ou pluriel. Cette règle est un point avancé fréquemment testé au CRPE.',
  'Accorder le PP avec le référent de « en » (« des erreurs » → féminin pluriel → « commises »), en ignorant la règle qui veut que « en » bloque l''accord du PP.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — Réponse courte — PP suivi d''un infinitif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20c0000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'orthographe_participe_passe',
  'Accord du participe passé : règles et exceptions',
  'Avance',
  'reponse_courte',
  'Complétez avec la forme correcte du PP de « voir » : « Les enfants que j''ai _______ jouer dans le parc semblaient heureux. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["vus","vu"]}'::jsonb,
  'Lorsque le PP est suivi d''un infinitif, il s''accorde avec le COD antéposé si celui-ci fait l''action exprimée par l''infinitif. Ici, « que » reprend « les enfants » : ce sont les enfants qui jouent (ils font l''action de jouer). Le PP s''accorde donc : « vus » (masculin pluriel). Cependant, la tolérance grammaticale admet aussi « vu » invariable devant un infinitif. Les deux formes sont acceptées au CRPE.',
  'Hésiter entre l''accord et l''invariabilité. La règle classique demande de vérifier si le COD fait l''action de l''infinitif (accord) ou la subit (pas d''accord : « la chanson que j''ai entendu chanter »).',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
