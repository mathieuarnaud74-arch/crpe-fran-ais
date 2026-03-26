-- Série : Conditionnel présent — formation et valeurs
-- Subdomain : conjugaison | topic_key : conj_conditionnel_present
-- 10 questions | UUIDs : 9d4a0000-0000-0000-0000-00000000000N

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'qcm',
  'Comment forme-t-on le conditionnel présent d''un verbe du 1er groupe ?',
  NULL,
  '[{"id":"a","label":"Radical de l''infinitif + terminaisons de l''imparfait"},{"id":"b","label":"Radical du futur simple + terminaisons de l''imparfait"},{"id":"c","label":"Radical du futur simple + terminaisons du présent"},{"id":"d","label":"Radical de l''infinitif + terminaisons du futur"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le conditionnel présent se forme à partir du radical du futur simple auquel on ajoute les terminaisons de l''imparfait (-ais, -ais, -ait, -ions, -iez, -aient). Pour les verbes du 1er groupe, le radical du futur est l''infinitif complet : « chanter » → « chanter- » + « -ais » = « chanterais ».',
  'Confondre le radical utilisé : ce n''est pas le radical de l''infinitif seul mais bien celui du futur (infinitif + r pour les verbes réguliers), auquel on greffe les terminaisons de l''imparfait.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'qcm',
  'Dans la phrase « Si tu venais demain, nous irions au cinéma », quelle est la valeur du conditionnel « irions » ?',
  NULL,
  '[{"id":"a","label":"Politesse"},{"id":"b","label":"Souhait ou désir"},{"id":"c","label":"Hypothèse conditionnelle"},{"id":"d","label":"Information non vérifiée"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le système hypothétique « si + imparfait → conditionnel présent dans la principale » exprime une hypothèse dont la réalisation est envisagée mais incertaine. Ici, l''aller au cinéma est conditionné par la venue de l''interlocuteur.',
  'Ne pas confondre la valeur d''hypothèse (système en si) avec le souhait. La présence de la subordonnée en « si » est le marqueur syntaxique de la valeur conditionnelle.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Le conditionnel présent du verbe « aller » à la 3ᵉ personne du singulier est « allerait ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Aller » est un verbe irrégulier : son radical au futur est « ir- » (comme au futur simple : j''irai). Le conditionnel présent donne donc : j''irais, tu irais, il irait. La forme « allerait » n''existe pas.',
  'Appliquer par erreur la règle des verbes réguliers à un verbe irrégulier. Les verbes avoir (aur-), être (ser-), faire (fer-), aller (ir-) ont des radicaux spéciaux qu''il faut mémoriser.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'qcm',
  'Quelle valeur du conditionnel est illustrée par la phrase : « Pourriez-vous m''indiquer la direction de la gare ? »',
  NULL,
  '[{"id":"a","label":"Hypothèse"},{"id":"b","label":"Information non vérifiée"},{"id":"c","label":"Politesse ou atténuation"},{"id":"d","label":"Regret"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le conditionnel de politesse (ou d''atténuation) permet d''adoucir une demande ou une affirmation pour la rendre moins directe et plus respectueuse. « Pourriez-vous » est plus poli que « Pouvez-vous ». C''est un usage très fréquent en français oral et écrit.',
  'Confondre le conditionnel de politesse avec un conditionnel hypothétique. Ici, il n''y a pas de condition exprimée : la valeur pragmatique prime.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'reponse_courte',
  'Donnez la forme du conditionnel présent du verbe « être » à la 1ʳᵉ personne du singulier.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["serais","je serais"]}'::jsonb,
  'Le verbe « être » a un radical irrégulier au futur et au conditionnel : « ser- ». Les terminaisons du conditionnel présent étant celles de l''imparfait, on obtient : je serais, tu serais, il serait, nous serions, vous seriez, ils seraient.',
  'Écrire « j''étais » (imparfait) ou « j''étèrais » par analogie fautive. Il faut mémoriser que le radical de « être » au futur/conditionnel est « ser- ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'qcm',
  'Dans un article de presse : « Selon nos sources, le ministre serait sur le point de démissionner. » Quelle valeur du conditionnel est utilisée ici ?',
  NULL,
  '[{"id":"a","label":"Hypothèse conditionnelle (système en si)"},{"id":"b","label":"Information non vérifiée ou rapportée"},{"id":"c","label":"Souhait ou désir"},{"id":"d","label":"Politesse"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le conditionnel journalistique (ou épistémique) signale que l''information n''est pas certifiée par l''auteur. Il permet de rapporter des faits non vérifiés sans les assumer. Cette valeur est aussi appelée « conditionnel d''information non vérifiée ».',
  'Le confondre avec un conditionnel hypothétique. Ici, il n''y a pas de proposition en « si » : la marque est l''absence de certitude assumée par le locuteur.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Les terminaisons du conditionnel présent sont identiques pour tous les groupes verbaux : -rais, -rais, -rait, -rions, -riez, -raient.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Oui, les terminaisons du conditionnel présent (-rais, -rais, -rait, -rions, -riez, -raient) sont invariables et s''appliquent à tous les verbes, quel que soit leur groupe. Seul le radical change selon les verbes (régulier ou irrégulier).',
  'Croire que les verbes du 3ᵉ groupe ont des terminaisons différentes. C''est le radical qui varie (voul-, pourr-, saur-...) mais jamais les terminaisons.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'qcm',
  'Quelle valeur du conditionnel est exprimée dans la phrase : « J''aimerais tellement voyager en Asie ! » ?',
  NULL,
  '[{"id":"a","label":"Hypothèse conditionnelle"},{"id":"b","label":"Information non vérifiée"},{"id":"c","label":"Souhait ou désir"},{"id":"d","label":"Ordre atténué"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le conditionnel de souhait (ou de désir) exprime ce que le sujet voudrait voir réalisé. La phrase est à valeur exclamative, sans proposition conditionnelle en « si ». Le conditionnel marque l''aspiration du locuteur à un état non réalisé.',
  'Le confondre avec la politesse. La politesse concerne les actes de langage envers autrui (demande, requête). Ici, le souhait est un état intérieur du locuteur.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'qcm',
  'Parmi ces verbes, lequel a un radical irrégulier au conditionnel présent ?',
  NULL,
  '[{"id":"a","label":"chanter → chanterais"},{"id":"b","label":"finir → finirais"},{"id":"c","label":"vouloir → voulrais"},{"id":"d","label":"vouloir → voudrais"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Vouloir » a un radical irrégulier : « voudr- » (et non « voulr- »). Le conditionnel présent est : je voudrais, tu voudrais, il voudrait... À l''inverse, « chanter » (chanterais) et « finir » (finirais) ont des radicaux réguliers formés sur l''infinitif.',
  'Écrire « voulrais » en conservant le radical de l''infinitif. C''est une erreur fréquente : la consonne [l] disparaît dans la forme correcte « voudrais ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '9d4a0000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_conditionnel_present',
  'Conditionnel présent : formation et valeurs',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans le système hypothétique en « si », lorsque la subordonnée est à l''imparfait, la proposition principale se met au conditionnel présent.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est la règle de concordance des temps pour le système hypothétique : « si + imparfait → conditionnel présent ». Ex. : « Si j''avais le temps, je viendrais. » Ce système exprime une hypothèse envisagée dans le présent ou le futur. On distingue trois niveaux : si + présent → futur (possible) ; si + imparfait → conditionnel présent (peu probable) ; si + plus-que-parfait → conditionnel passé (irréel du passé).',
  'Utiliser le conditionnel dans la subordonnée en si (« si j''aurais »). C''est une erreur très fréquente, notamment dans les productions d''élèves. Le verbe de la subordonnée en si n''est jamais au conditionnel.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
