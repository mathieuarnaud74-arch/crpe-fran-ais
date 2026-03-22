-- Migration: seed math_durees_horaires (Grandeurs — Durées et horaires)
-- 7 exercices, niveau Facile, accès free, subdomain grandeurs_mesures

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000001', 'Mathematiques', 'grandeurs_mesures', 'math_durees_horaires',
  'Grandeurs — Durées et horaires', 'Facile', 'qcm',
  'Combien de minutes y a-t-il dans 2 h 45 min ?', NULL,
  '[{"id": "a", "label": "245 min"}, {"id": "b", "label": "165 min"}, {"id": "c", "label": "145 min"}, {"id": "d", "label": "175 min"}]'::jsonb,
  '{"mode": "single", "value": "b"}'::jsonb,
  'Dans le système sexagésimal (base 60), 1 heure = 60 minutes, et non 100 minutes. Pour convertir 2 h 45 min en minutes, on calcule par étapes :\n\n• 2 heures = 2 × 60 = 120 minutes\n• On ajoute les 45 minutes restantes : 120 + 45 = 165 minutes\n\nAttention au piège : 2 h 45 ≠ 245 min. Le « 2 » représente des heures (paquets de 60 minutes), pas des centaines de minutes. C''est la confusion entre le système décimal et le système sexagésimal qui produit cette erreur fréquente.',
  'Écrire 245 min en traitant les heures et les minutes comme un nombre décimal classique (2 h 45 → 245), au lieu de convertir les heures en minutes (2 × 60 = 120).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000002', 'Mathematiques', 'grandeurs_mesures', 'math_durees_horaires',
  'Grandeurs — Durées et horaires', 'Facile', 'vrai_faux',
  '1 h 30 min = 1,30 heure.', NULL,
  NULL,
  '{"mode": "single", "value": "faux"}'::jsonb,
  'C''est FAUX. 1 h 30 min = 1,5 heure (et non 1,30 heure).\n\nExplication : 30 minutes représentent la moitié d''une heure, soit 0,5 heure. On écrit donc 1,5 h.\n\nLe calcul précis : 30 min ÷ 60 = 0,5 h.\n\nC''est l''erreur la plus répandue en calcul de durées au CRPE : confondre les minutes avec la partie décimale d''un nombre. Dans le système sexagésimal, 1 heure = 60 minutes (base 60), alors que dans le système décimal, 1 unité = 100 centièmes (base 10). Ainsi :\n• 1 h 30 min = 1,5 h (et non 1,30 h)\n• 1 h 15 min = 1,25 h (et non 1,15 h)\n• 1 h 45 min = 1,75 h (et non 1,45 h)\n\nMéthode : toujours diviser les minutes par 60 pour obtenir la partie décimale.',
  'Écrire 1,30 h en recopiant directement les minutes après la virgule, sans effectuer la conversion en fraction d''heure (30 ÷ 60 = 0,5).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000003', 'Mathematiques', 'grandeurs_mesures', 'math_durees_horaires',
  'Grandeurs — Durées et horaires', 'Facile', 'reponse_courte',
  'Un film commence à 20 h 45 et dure 1 h 50 min. À quelle heure se termine-t-il ?', NULL,
  NULL,
  '{"mode": "flexible", "acceptableAnswers": ["22h35", "22 h 35", "22h 35", "22 h 35 min"]}'::jsonb,
  'Pour additionner 20 h 45 + 1 h 50, on utilise la technique du passage par l''heure ronde :\n\n1. On ajoute d''abord les heures : 20 h + 1 h = 21 h → on a 21 h 45.\n2. On ajoute ensuite les minutes : 45 min + 50 min = 95 min.\n3. Comme 95 min > 60 min, on convertit : 95 min = 1 h 35 min.\n4. Donc : 21 h + 1 h 35 = 22 h 35.\n\nMéthode alternative (par l''heure ronde) :\n• De 20 h 45 à 21 h 00, il y a 15 min. On « consomme » 15 min sur les 1 h 50.\n• Reste à ajouter : 1 h 50 − 15 min = 1 h 35 min.\n• 21 h 00 + 1 h 35 = 22 h 35.\n\nLe film se termine à 22 h 35.',
  'Additionner 45 + 50 = 95 et écrire directement 21 h 95 sans convertir les 95 minutes en 1 h 35 min.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000004', 'Mathematiques', 'grandeurs_mesures', 'math_durees_horaires',
  'Grandeurs — Durées et horaires', 'Facile', 'qcm',
  'Convertir 3,75 heures en heures et minutes.', NULL,
  '[{"id": "a", "label": "3 h 75 min"}, {"id": "b", "label": "3 h 45 min"}, {"id": "c", "label": "3 h 25 min"}, {"id": "d", "label": "3 h 15 min"}]'::jsonb,
  '{"mode": "single", "value": "b"}'::jsonb,
  'La partie entière (3) donne directement les heures : 3 h.\n\nLa partie décimale (0,75) représente une fraction d''heure qu''il faut convertir en minutes :\n0,75 × 60 = 45 minutes.\n\nDonc 3,75 h = 3 h 45 min.\n\nAttention : 0,75 h ≠ 75 min ! La partie décimale n''est pas un nombre de minutes, c''est une fraction d''heure. Il faut la multiplier par 60 pour obtenir des minutes.\n\nRepères utiles à mémoriser :\n• 0,25 h = 15 min (un quart d''heure)\n• 0,5 h = 30 min (une demi-heure)\n• 0,75 h = 45 min (trois quarts d''heure)',
  'Interpréter 3,75 h comme « 3 h 75 min » en recopiant la partie décimale comme des minutes, au lieu de multiplier 0,75 par 60.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000005', 'Mathematiques', 'grandeurs_mesures', 'math_durees_horaires',
  'Grandeurs — Durées et horaires', 'Facile', 'reponse_courte',
  'Un train part à 8 h 47 et arrive à 11 h 23. Quelle est la durée du trajet ?', NULL,
  NULL,
  '{"mode": "flexible", "acceptableAnswers": ["2h36", "2 h 36", "2h 36", "2 h 36 min", "2h36min"]}'::jsonb,
  'Pour calculer une durée entre deux horaires, on utilise la méthode du passage par l''heure ronde (technique de l''horloge) :\n\n1. De 8 h 47 à 9 h 00 → 13 min (on « monte » jusqu''à l''heure ronde suivante).\n2. De 9 h 00 à 11 h 00 → 2 h (on compte les heures entières).\n3. De 11 h 00 à 11 h 23 → 23 min (on ajoute les minutes restantes).\n\nTotal : 13 min + 2 h + 23 min = 2 h 36 min.\n\nCette méthode par étapes évite les erreurs de soustraction en base 60. On décompose le calcul en « sauts » simples vers des heures rondes.\n\nVérification : 8 h 47 + 2 h 36 = 8 h + 2 h = 10 h, puis 47 + 36 = 83 min = 1 h 23 min, donc 10 h + 1 h 23 = 11 h 23. ✓',
  'Soustraire directement 1123 − 847 = 276, puis écrire « 2 h 76 min » ou « 276 min », en traitant les horaires comme des nombres décimaux.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000006', 'Mathematiques', 'grandeurs_mesures', 'math_durees_horaires',
  'Grandeurs — Durées et horaires', 'Facile', 'qcm',
  'Un ouvrier travaille de 7 h 30 à 12 h 15, puis de 13 h 45 à 17 h 30. Quelle est sa durée de travail totale ?', NULL,
  '[{"id": "a", "label": "8 h 15 min"}, {"id": "b", "label": "8 h 30 min"}, {"id": "c", "label": "9 h"}, {"id": "d", "label": "7 h 45 min"}]'::jsonb,
  '{"mode": "single", "value": "b"}'::jsonb,
  'On calcule chaque plage de travail séparément, puis on additionne.\n\n■ Matin : de 7 h 30 à 12 h 15\nMéthode par l''heure ronde :\n• 7 h 30 → 8 h 00 = 30 min\n• 8 h 00 → 12 h 00 = 4 h\n• 12 h 00 → 12 h 15 = 15 min\nTotal matin = 4 h 45 min.\n\n■ Après-midi : de 13 h 45 à 17 h 30\nMéthode par l''heure ronde :\n• 13 h 45 → 14 h 00 = 15 min\n• 14 h 00 → 17 h 00 = 3 h\n• 17 h 00 → 17 h 30 = 30 min\nTotal après-midi = 3 h 45 min.\n\n■ Total : 4 h 45 + 3 h 45 = 8 h 90 min.\nOr 90 min = 1 h 30 min, donc 8 h 90 min = 8 h + 1 h 30 = 9 h 30 min ?\n\nNon ! Reprenons : 4 h 45 + 3 h 45.\n• Heures : 4 + 3 = 7 h.\n• Minutes : 45 + 45 = 90 min = 1 h 30 min.\n• Total : 7 h + 1 h 30 = 8 h 30 min.\n\nLa durée totale de travail est 8 h 30 min.',
  'Oublier de convertir les 90 minutes en 1 h 30 min lors de l''addition finale, ou se tromper dans le calcul d''une des deux plages horaires.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01b0000-0000-0000-0000-000000000007', 'Mathematiques', 'grandeurs_mesures', 'math_durees_horaires',
  'Grandeurs — Durées et horaires', 'Facile', 'reponse_courte',
  'Une course commence le samedi à 22 h 40 et se termine le dimanche à 6 h 15. Quelle est la durée de la course ?', NULL,
  NULL,
  '{"mode": "flexible", "acceptableAnswers": ["7h35", "7 h 35", "7h 35", "7 h 35 min", "7h35min"]}'::jsonb,
  'Quand un calcul de durée franchit minuit, on utilise la méthode du passage par minuit :\n\n1. Du samedi 22 h 40 à minuit (dimanche 0 h 00) :\n   • 22 h 40 → 23 h 00 = 20 min\n   • 23 h 00 → 0 h 00 = 1 h\n   • Total = 1 h 20 min.\n\n2. De minuit (dimanche 0 h 00) à dimanche 6 h 15 :\n   • 0 h 00 → 6 h 15 = 6 h 15 min.\n\n3. Total : 1 h 20 min + 6 h 15 min.\n   • Heures : 1 + 6 = 7 h.\n   • Minutes : 20 + 15 = 35 min.\n   • Durée totale = 7 h 35 min.\n\nLe passage par minuit est un « point de repère » commode, tout comme le passage par l''heure ronde. On décompose toujours le calcul en étapes simples pour éviter les erreurs en base 60.',
  'Soustraire directement 22 h 40 de 6 h 15 sans tenir compte du changement de jour, ou calculer 24 h − 22 h 40 = 2 h 60 min au lieu de 1 h 20 min.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
