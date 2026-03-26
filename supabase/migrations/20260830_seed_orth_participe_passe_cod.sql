-- Migration: 10 exercices — Participe passé avec COD antéposé
-- Série : orth_participe_passe_cod (Français, orthographe)
-- Piège classique CRPE : accord du PP avec avoir quand le COD est placé avant le verbe
-- Terminologie Éduscol 2021 stricte
-- UUID prefix: e9300000

-- Q1 — QCM — Règle de base
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'qcm',
  'Quelle est la forme correcte : « Les fleurs que j''ai … sont magnifiques » ?',
  NULL,
  '[{"id":"a","label":"cueilli"},{"id":"b","label":"cueillie"},{"id":"c","label":"cueillies"},{"id":"d","label":"cueillis"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le participe passé « cueillies » s''accorde au féminin pluriel avec le complément du verbe « que » (mis pour « les fleurs », féminin pluriel). Règle : avec l''auxiliaire AVOIR, le participe passé s''accorde avec le complément du verbe (COD dans la terminologie traditionnelle) UNIQUEMENT lorsque celui-ci est placé AVANT le verbe. Ici, « que » est le pronom relatif qui reprend « les fleurs » — il est placé avant « ai cueilli(es) ». On écrit donc « cueillies » (f. pl.). Si le complément était après (« J''ai cueilli des fleurs »), pas d''accord.',
  'Oublier d''accorder le participe quand le COD est un pronom relatif. Le « que » reprend un antécédent dont il faut identifier le genre et le nombre.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Correction orthographique — PP avec pronom personnel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'correction_orthographique',
  'Corrigez l''accord du participe passé si nécessaire : « Cette chanson, je l''ai entendu à la radio. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Cette chanson, je l''ai entendue à la radio.","entendue"]}'::jsonb,
  'Il faut écrire « entendue » (féminin singulier). Le pronom « l'' » (pour « la ») reprend « cette chanson » (féminin singulier) et est placé AVANT le participe passé. Avec l''auxiliaire avoir, le PP s''accorde avec le complément du verbe antéposé. Ici : l'' = cette chanson = f. sg. → entendue. Astuce : repérer le pronom personnel complément (le, la, l'', les) placé avant l''auxiliaire est un signal d''accord obligatoire.',
  'Ne pas identifier le pronom « l'' » comme un complément du verbe antéposé. Les pronoms personnels compléments (me, te, le, la, l'', les, nous, vous) sont toujours placés avant le verbe et déclenchent l''accord.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Vrai/Faux — PP avec avoir sans COD antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans « Elles ont mangé des fraises », le participe passé « mangé » doit s''accorder au féminin pluriel (« mangées »).',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Le complément du verbe (COD) « des fraises » est placé APRÈS le participe passé. Avec l''auxiliaire avoir, le PP ne s''accorde que si le complément du verbe est placé AVANT le verbe. Ici, « des fraises » est après → pas d''accord, on écrit « mangé ». Attention au piège : le sujet « elles » est féminin pluriel, mais avec AVOIR, on n''accorde JAMAIS avec le sujet. L''accord avec le sujet est la règle de l''auxiliaire ÊTRE, pas d''AVOIR.',
  'Accorder avec le sujet « elles ». Avec AVOIR, l''accord ne se fait JAMAIS avec le sujet. C''est le piège le plus fréquent.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — PP avec pronom « en »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'qcm',
  'Quelle est la forme correcte : « Des erreurs, j''en ai … beaucoup » ?',
  NULL,
  '[{"id":"a","label":"commis"},{"id":"b","label":"commises"},{"id":"c","label":"commise"},{"id":"d","label":"commist"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'On écrit « commis » (invariable). Quand le complément du verbe antéposé est le pronom « en », le participe passé reste invariable selon l''usage majoritaire et la tradition grammaticale. Le pronom « en » est considéré comme un pronom indéfini partitif qui ne porte pas de marque de genre ni de nombre. Ainsi : « Des cerises ? J''en ai mangé » (invariable). Cette règle est un cas particulier important à connaître pour le CRPE. Certains grammairiens tolèrent l''accord, mais l''invariabilité est la norme recommandée.',
  'Accorder avec l''antécédent de « en » (ici « des erreurs », féminin pluriel). Le pronom « en » bloque l''accord du participe passé avec avoir.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Correction orthographique — Pronom relatif « que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'correction_orthographique',
  'Corrigez si nécessaire : « Les lettres que Paul a écrit sont émouvantes. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Les lettres que Paul a écrites sont émouvantes.","écrites"]}'::jsonb,
  'Il faut écrire « écrites » (féminin pluriel). Le pronom relatif « que » reprend « les lettres » (f. pl.) et est placé avant l''auxiliaire « a ». Avec avoir + COD antéposé → accord obligatoire. Méthode : (1) repérer le PP avec avoir, (2) chercher le complément du verbe, (3) vérifier s''il est avant ou après, (4) si avant, identifier son genre et nombre, (5) accorder. Ici : que = les lettres = f. pl. → écrites.',
  'Oublier l''accord en se focalisant sur le sujet « Paul » (masculin singulier). Avec avoir, on n''accorde jamais avec le sujet — on cherche le complément du verbe antéposé.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — PP avec COD après (piège inverse)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'qcm',
  'Quelle est la forme correcte : « Nous avons … toutes les consignes » ?',
  NULL,
  '[{"id":"a","label":"respecté"},{"id":"b","label":"respectés"},{"id":"c","label":"respectées"},{"id":"d","label":"respectée"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'On écrit « respecté » (invariable). Le complément du verbe « toutes les consignes » est placé APRÈS le participe passé. Règle : avec avoir, pas d''accord quand le complément est après le verbe. Même si « consignes » est féminin pluriel et même si « nous » pourrait être féminin, ces éléments ne déclenchent pas l''accord. Seul un complément du verbe ANTÉPOSÉ provoque l''accord. Ici, rien n''est antéposé → participe invariable.',
  'Accorder avec « nous » (sujet) ou anticiper l''accord avec « consignes » qui est pourtant après. Le critère unique est la POSITION du complément du verbe : avant = accord, après = invariable.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — PP avec être (contraste)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans « Les pommes sont tombées de l''arbre », le participe « tombées » s''accorde avec le sujet « les pommes » car l''auxiliaire est ÊTRE.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Avec l''auxiliaire ÊTRE, le participe passé s''accorde toujours en genre et en nombre avec le SUJET du verbe. « Les pommes » est féminin pluriel → « tombées ». C''est la règle de base qui s''oppose à la règle d''AVOIR. Récapitulatif : (1) ÊTRE → accord avec le sujet, toujours. (2) AVOIR → accord avec le complément du verbe, seulement s''il est placé AVANT le verbe. (3) Verbe pronominal → règle spécifique (vérifier si le pronom est COD ou COI).',
  'Appliquer la règle d''AVOIR (chercher un COD antéposé) alors que l''auxiliaire est ÊTRE. Avec ÊTRE, c''est simple : accord avec le sujet, point final.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Correction orthographique — PP verbe pronominal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'correction_orthographique',
  'Corrigez si nécessaire : « Elles se sont lavé les mains. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Elles se sont lavé les mains.","correct","lavé"]}'::jsonb,
  'La phrase est correcte : « lavé » reste invariable. Avec un verbe pronominal conjugué avec ÊTRE, on applique la règle d''AVOIR : on cherche le complément du verbe. Ici, le complément est « les mains » (placé APRÈS) → pas d''accord. Le pronom « se » est complément d''objet indirect (elles ont lavé les mains À ELLES). En revanche, « Elles se sont lavées » (sans complément après) → accord, car « se » est alors COD (elles ont lavé ELLES-MÊMES). C''est un piège classique du CRPE.',
  'Accorder automatiquement parce que l''auxiliaire est ÊTRE. Les verbes pronominaux sont un cas particulier : malgré l''auxiliaire ÊTRE, on suit la logique d''AVOIR (accord avec le COD antéposé).',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — PP avec « les » antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'qcm',
  'Quelle est la forme correcte : « Ces règles, je les ai … par cœur » ?',
  NULL,
  '[{"id":"a","label":"appris"},{"id":"b","label":"apprise"},{"id":"c","label":"apprises"},{"id":"d","label":"apprist"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On écrit « apprises » (féminin pluriel). Le pronom « les » reprend « ces règles » (féminin pluriel) et est placé AVANT le participe passé. Avec avoir, le COD antéposé « les » déclenche l''accord. Méthode : les = ces règles = f. pl. → apprises. Le pronom personnel complément « les » est un signal fort d''accord : il est toujours antéposé (placé avant le verbe), ce qui oblige à accorder.',
  'Hésiter sur le genre en se fiant au pronom « je » (on ne connaît pas le genre du locuteur). L''accord se fait avec le COD (« les » = ces règles), pas avec le sujet « je ».',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — PP de « coûter, peser, valoir » (verbes intransitifs)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9300000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_participe_passe_cod',
  'Participe passé — accord avec le COD antéposé',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans « Les deux mille euros que ce voyage a coûté », le participe « coûté » doit s''accorder avec « les deux mille euros » (« coûtés »).',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! « Coûté » reste invariable. Le verbe « coûter » au sens propre (avoir un prix) est intransitif : « deux mille euros » n''est pas un complément du verbe (COD) mais un complément circonstanciel de mesure (combien ?). On ne peut pas dire *« les euros ont été coûtés ». Pas de COD = pas d''accord possible. Même logique pour « peser » (au sens de « avoir un poids »), « valoir » (au sens de « avoir une valeur »), « mesurer » (au sens de « avoir une mesure »), « durer », « régner ». Attention : au sens figuré, « les efforts que ce projet m''a coûtés » admet l''accord (emploi transitif).',
  'Croire que tout complément antéposé déclenche l''accord. Seul un véritable complément du verbe (COD) antéposé provoque l''accord, pas un complément circonstanciel de mesure, de prix ou de durée.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;