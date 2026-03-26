-- Migration: 10 exercices — Voix active et voix passive
-- Série : gram_voix_passive_active (Français, grammaire)
-- Transformation active/passive, auxiliaire être, accord du PP, complément d'agent
-- UUID prefix: 1bc20000

-- Q1 — QCM — Transformer une phrase active en passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'qcm',
  'Quelle est la transformation correcte à la voix passive de la phrase : "Le directeur convoque les parents" ?',
  NULL,
  '[{"id":"a","label":"Les parents sont convoqués par le directeur."},{"id":"b","label":"Les parents convoquent le directeur."},{"id":"c","label":"Le directeur est convoqué par les parents."},{"id":"d","label":"Les parents ont été convoqués par le directeur."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'À la voix passive, le COD de la phrase active (« les parents ») devient le sujet, le sujet actif (« le directeur ») devient complément d''agent introduit par « par », et le verbe se conjugue avec l''auxiliaire « être » au même temps que la phrase active (ici : présent de l''indicatif → « sont convoqués »). Le participe passé s''accorde avec le nouveau sujet : « les parents » est masculin pluriel → « convoqués ».',
  'Choisir la proposition (d) qui place le verbe au passé composé passif au lieu du présent. Vérifier toujours que le temps de la voix passive correspond au temps de la phrase active initiale.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — L'auxiliaire de la voix passive est "avoir"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? À la voix passive, l''auxiliaire utilisé est toujours « avoir ».',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. À la voix passive, on utilise l''auxiliaire « être » conjugué au temps voulu, suivi du participe passé du verbe. Exemple : "Le livre est lu" (présent), "Le livre était lu" (imparfait), "Le livre a été lu" (passé composé passif, avec être + été + lu). L''auxiliaire « avoir » sert à former les temps composés de la voix active.',
  'Confondre le passé composé actif (auxiliaire avoir ou être selon le verbe) avec le passé composé passif (toujours être + été + participe passé). « Il a lu » (voix active, PP) ≠ « Il a été lu » (voix passive, PP).',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Identifier le complément d'agent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'qcm',
  'Dans la phrase "Le tableau a été peint par Picasso", quel est le complément d''agent ?',
  NULL,
  '[{"id":"a","label":"Le tableau"},{"id":"b","label":"a été peint"},{"id":"c","label":"par Picasso"},{"id":"d","label":"peint"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le complément d''agent est le groupe nominal introduit par « par » (ou parfois « de ») qui désigne l''auteur réel de l''action dans une phrase passive. Ici « par Picasso » indique qui a effectué l''action de peindre. Dans la phrase active correspondante (« Picasso a peint le tableau »), Picasso occupait la fonction de sujet.',
  'Confondre le complément d''agent avec le participe passé ou le sujet de la phrase passive. Le complément d''agent est introduit par « par » ou « de » et répond à la question « par qui ? » ou « de qui ? ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Reconnaître la voix passive dans une liste
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'qcm',
  'Laquelle de ces phrases est construite à la voix passive ?',
  NULL,
  '[{"id":"a","label":"L''enseignant prépare sa séance."},{"id":"b","label":"Les élèves apprennent leur leçon."},{"id":"c","label":"La dictée a été corrigée par la maîtresse."},{"id":"d","label":"Les enfants jouent dans la cour."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La phrase (c) « La dictée a été corrigée par la maîtresse » est à la voix passive : le sujet (« la dictée ») subit l''action, le verbe est formé de l''auxiliaire « être » (« a été ») + participe passé (« corrigée »), et le complément d''agent (« par la maîtresse ») indique l''agent de l''action. Les trois autres phrases sont à la voix active : le sujet effectue l''action.',
  'Confondre les formes en « être + participe passé » de la voix passive avec les temps composés avec « être » de certains verbes actifs (ex : « il est parti » — voix active, intransitif). La clé : la voix passive implique un verbe transitif et le sujet subi l''action.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Vrai/Faux — Phrase passive sans complément d'agent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Une phrase passive peut se construire sans complément d''agent.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Le complément d''agent est un constituant facultatif de la phrase passive. On peut dire "Le livre a été trouvé" sans préciser par qui. L''omission du complément d''agent est même fréquente quand l''agent est inconnu, indéterminé ou sans importance pour le message. C''est d''ailleurs l''un des effets stylistiques de la voix passive : effacer l''agent.',
  'Penser que la voix passive exige toujours la mention de l''agent. En réalité, la phrase passive sans complément d''agent est très courante et stylistiquement neutre ou intentionnelle.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Voix passive au présent de l'indicatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'qcm',
  'Quelle est la transformation correcte à la voix passive au présent de l''indicatif de la phrase "Les pompiers éteignent l''incendie" ?',
  NULL,
  '[{"id":"a","label":"L''incendie a été éteint par les pompiers."},{"id":"b","label":"L''incendie est éteint par les pompiers."},{"id":"c","label":"L''incendie sera éteint par les pompiers."},{"id":"d","label":"L''incendie était éteint par les pompiers."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase active est au présent de l''indicatif. À la voix passive, l''auxiliaire « être » doit donc être conjugué au présent : « est éteint ». Le participe passé « éteint » s''accorde avec le sujet passif « l''incendie » (masculin singulier) → pas de marque d''accord visible ici. (a) est au passé composé passif, (c) au futur, (d) à l''imparfait.',
  'Ne pas conserver le même temps grammatical lors du passage actif → passif. L''auxiliaire « être » doit être conjugué au même temps que le verbe actif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Quel auxiliaire forme la voix passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'reponse_courte',
  'Quel auxiliaire est utilisé pour former la voix passive en français ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["être","l''auxiliaire être","etre"]}'::jsonb,
  'En français, la voix passive se forme avec l''auxiliaire « être » conjugué au temps voulu, suivi du participe passé du verbe. Exemple : « La lettre est écrite » (présent passif), « La lettre était écrite » (imparfait passif), « La lettre a été écrite » (passé composé passif).',
  'Confondre avec l''auxiliaire « avoir » utilisé pour les temps composés de la voix active. Seul « être » sert à construire tous les temps de la voix passive.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Accord du participe passé à la voix passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'qcm',
  'À la voix passive, avec quoi le participe passé s''accorde-t-il ?',
  NULL,
  '[{"id":"a","label":"Avec le sujet du verbe passif"},{"id":"b","label":"Avec le complément d''agent"},{"id":"c","label":"Avec l''auxiliaire être"},{"id":"d","label":"Avec le complément d''objet direct"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'À la voix passive, le participe passé s''accorde en genre et en nombre avec le sujet du verbe passif. Exemple : « Les lettres sont écrites par Paul » → le sujet « les lettres » est féminin pluriel → « écrites ». C''est la règle générale de l''accord du participe passé conjugué avec « être » : il s''accorde avec le sujet.',
  'Confondre avec la règle du participe passé conjugué avec « avoir » (qui s''accorde avec le COD placé avant). À la voix passive, c''est toujours avec le sujet que l''accord se fait.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Verbes intransitifs et voix passive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Les verbes intransitifs (sans complément d''objet direct) peuvent être mis à la voix passive.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. Seuls les verbes transitifs directs (qui admettent un COD) peuvent être mis à la voix passive. Le COD de la phrase active devient le sujet de la phrase passive. Un verbe intransitif comme « dormir », « arriver » ou « tomber » n''a pas de COD : il est donc impossible de former une phrase passive à partir de ces verbes.',
  'Penser que tous les verbes peuvent être mis à la voix passive. Seuls les verbes transitifs directs (avec COD) le peuvent. Vérifier : s''il n''y a pas de COD dans la phrase active, la transformation passive est impossible.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Identifier la phrase ne pouvant pas être mise au passif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '1bc20000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'gram_voix_passive_active',
  'Voix active et voix passive',
  'Standard',
  'qcm',
  'Laquelle de ces phrases NE PEUT PAS être mise à la voix passive ?',
  NULL,
  '[{"id":"a","label":"Le chat mange la souris."},{"id":"b","label":"La maîtresse lit l''histoire."},{"id":"c","label":"Paul dort sur le canapé."},{"id":"d","label":"L''architecte dessine les plans."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le verbe « dormir » est intransitif : il ne peut pas avoir de COD, donc il est impossible de le mettre à la voix passive. Les trois autres propositions contiennent des verbes transitifs directs avec un COD : « mange la souris », « lit l''histoire », « dessine les plans » — ces COD peuvent devenir sujets d''une phrase passive.',
  'Penser que « dormir sur le canapé » contient un COD parce qu''il y a un groupe nominal après le verbe. Le groupe « sur le canapé » est un complément circonstanciel de lieu, pas un COD : on ne peut pas dire "le canapé est dormi".',
  'valide',
  'CRPE Français',
  'premium',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
