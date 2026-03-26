-- Migration: 10 exercices — Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait/-aient)
-- Série : orth_terminaisons_verbales (Français, orthographe)
-- Distinguer les terminaisons verbales homophones en contexte
-- UUID prefix: f1a20000

-- Q1 — QCM — Infinitif ou participe passé ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'qcm',
  'Quelle est la forme correcte ? « Il a décidé de (…) son vélo. »',
  NULL,
  '[{"id":"a","label":"réparé"},{"id":"b","label":"réparer"},{"id":"c","label":"réparez"},{"id":"d","label":"réparait"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Après la préposition « de », on emploie toujours l''infinitif : « réparer ». Astuce : on peut remplacer par un verbe du 3ᵉ groupe pour entendre la différence → « Il a décidé de vendre son vélo » (et non « vendu »). Cette substitution fonctionne à chaque fois : si on peut dire « vendre/prendre/mordre », c''est l''infinitif en -er ; si on peut dire « vendu/pris/mordu », c''est le participe passé en -é.',
  'Écrire « réparé » (participe passé) après « de ». Après une préposition (de, à, pour, sans, avant de…), le verbe est toujours à l''infinitif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Règle de substitution
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans « Le chat a manger la souris », la forme « manger » est correcte.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Après l''auxiliaire « avoir » (ou « être »), on emploie le participe passé : « Le chat a mangé la souris. » Test de substitution : « Le chat a vendu la souris » fonctionne, mais « Le chat a vendre la souris » ne fonctionne pas. Donc c''est bien le participe passé (-é) et non l''infinitif (-er). Règle : auxiliaire avoir/être + participe passé (temps composé).',
  'Confondre -é et -er après un auxiliaire. L''auxiliaire « a » (avoir) ou « est » (être) appelle toujours un participe passé, jamais un infinitif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Distinguer -ez et -er
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'qcm',
  'Complétez : « Vous pouv(…) commenc(…) l''exercice. »',
  NULL,
  '[{"id":"a","label":"pouvez … commencer"},{"id":"b","label":"pouver … commencez"},{"id":"c","label":"pouvez … commencé"},{"id":"d","label":"pouver … commencer"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Vous pouvez commencer ». Le premier verbe est conjugué à la 2ᵉ personne du pluriel (indicatif présent) → terminaison -ez. Le second est un infinitif car il suit un verbe conjugué (pouvoir + infinitif) → terminaison -er. Attention : la terminaison -ez n''existe QUE pour la 2ᵉ personne du pluriel (vous). L''infinitif -er est la forme non conjuguée du verbe. Les deux se prononcent [e] mais s''écrivent différemment selon la fonction grammaticale.',
  'Écrire « pouver » (l''infinitif de pouvoir est « pouvoir », pas « pouver » — pouvoir est un verbe du 3ᵉ groupe). Ou écrire « commencez » alors que le sujet du second verbe n''est pas « vous ».',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Identifier la bonne terminaison
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'reponse_courte',
  'Complétez avec -é, -er, -ez, -ais, -ait ou -aient : « Les enfants étaient all(…) jouer dans le parc. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["és","és jouer","-és"]}'::jsonb,
  'La phrase correcte est : « Les enfants étaient allés jouer dans le parc. » Le verbe « aller » est ici au plus-que-parfait (auxiliaire « être » à l''imparfait + participe passé). Le participe passé « allés » s''accorde avec le sujet « les enfants » (masculin pluriel) → allés. Le verbe « jouer » qui suit est à l''infinitif (il exprime le but). Deux formes verbales différentes se suivent : un participe passé accordé et un infinitif.',
  'Écrire « allé » sans accord. Avec l''auxiliaire « être », le participe passé s''accorde TOUJOURS en genre et en nombre avec le sujet.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Imparfait -ais/-ait/-aient vs participe passé -é
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'qcm',
  'Quelle est la forme correcte ? « Je chant(…) sous la douche quand le téléphone a sonné. »',
  NULL,
  '[{"id":"a","label":"chanté"},{"id":"b","label":"chanter"},{"id":"c","label":"chantais"},{"id":"d","label":"chantait"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Je chantais » : le contexte indique une action en cours dans le passé, interrompue par un événement ponctuel (« a sonné »). C''est l''imparfait, 1ʳᵉ personne du singulier → -ais. Test : on peut remplacer par un verbe du 2ᵉ groupe : « Je finissais sous la douche quand… ». Si on entend une conjugaison (et non un participe), c''est bien un temps conjugué. Les terminaisons de l''imparfait : -ais, -ais, -ait, -ions, -iez, -aient.',
  'Confondre « chantais » (imparfait, je/tu) et « chantait » (imparfait, il/elle). Ici le sujet est « je » → -ais.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Vrai/Faux — Après « pour »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Elle est venue pour aidé sa voisine », la forme « aidé » est correcte.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Après la préposition « pour », on emploie l''infinitif : « aider ». Test de substitution : « Elle est venue pour prendre sa voisine » → on entend bien l''infinitif. Les prépositions (pour, de, à, sans, avant de, afin de, par…) sont toujours suivies de l''infinitif, jamais du participe passé. Moyen mnémotechnique : préposition + verbe = infinitif, sans exception.',
  'Écrire le participe passé « aidé » après une préposition. C''est une erreur très fréquente, y compris chez les adultes.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Participe passé après être
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'qcm',
  'Complétez : « La porte est rest(…) ferm(…) toute la journée. »',
  NULL,
  '[{"id":"a","label":"restée … fermée"},{"id":"b","label":"rester … fermer"},{"id":"c","label":"restée … fermé"},{"id":"d","label":"resté … fermée"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« La porte est restée fermée. » Les deux formes sont des participes passés employés avec l''auxiliaire « être ». Ils s''accordent avec le sujet « la porte » (féminin singulier) → restée, fermée. « Fermée » est ici un participe passé à valeur d''adjectif (attribut du sujet). Test : « La porte est descendue, vendue » → on entend le participe passé. Règle : avec « être », le participe passé s''accorde toujours avec le sujet.',
  'Oublier l''accord au féminin : « resté fermé ». Avec l''auxiliaire « être », le participe passé fonctionne comme un adjectif et s''accorde en genre et en nombre avec le sujet.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Réponse courte — Imparfait 3e personne pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'reponse_courte',
  'Écrivez la terminaison correcte (-é, -er, -ez, -ais, -ait ou -aient) : « Les élèves travaill(…) en silence depuis une heure. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["aient","-aient"]}'::jsonb,
  'La forme correcte est « travaillaient » (imparfait, 3ᵉ personne du pluriel → -aient). Le contexte indique une action en cours dans le passé (« depuis une heure »), ce qui appelle l''imparfait. Le sujet « les élèves » est à la 3ᵉ personne du pluriel → terminaison -aient. Rappel des terminaisons de l''imparfait : je -ais, tu -ais, il/elle -ait, nous -ions, vous -iez, ils/elles -aient. La prononciation de -ais, -ait et -aient est identique [ɛ], mais l''orthographe dépend du sujet.',
  'Écrire -ait (3ᵉ personne du singulier) au lieu de -aient (3ᵉ personne du pluriel). Toujours identifier le sujet pour choisir la bonne terminaison.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Cas piège : deux homophones dans une phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'qcm',
  'Complétez : « Il a essay(…) de travers(…) la rivière à la nage. »',
  NULL,
  '[{"id":"a","label":"essayé … traverser"},{"id":"b","label":"essayer … traversé"},{"id":"c","label":"essayé … traversé"},{"id":"d","label":"essayer … traverser"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Il a essayé de traverser. » Premier verbe : « a essayé » → auxiliaire avoir + participe passé (passé composé). Second verbe : « de traverser » → préposition « de » + infinitif. Tests de substitution : « Il a vendu de prendre la rivière » → « vendu » après auxiliaire = participe passé ✓ ; « prendre » après préposition = infinitif ✓. Chaque verbe doit être analysé indépendamment selon son contexte syntaxique.',
  'Mettre les deux à l''infinitif ou les deux au participe passé. Chaque verbe a son propre contexte : après auxiliaire → participe passé ; après préposition → infinitif.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Analyse grammaticale complète
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f1a20000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_terminaisons_verbales',
  'Terminaisons verbales homophones (-é/-er/-ez/-ais/-ait)',
  'Standard',
  'qcm',
  'Identifiez la phrase où TOUTES les terminaisons sont correctes.',
  NULL,
  '[{"id":"a","label":"Elle a préparé le repas et a commencé à manger."},{"id":"b","label":"Elle a préparée le repas et a commencer à mangé."},{"id":"c","label":"Elle a préparer le repas et a commencé à manger."},{"id":"d","label":"Elle a préparé le repas et a commencée à mangé."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Réponse a : « Elle a préparé le repas et a commencé à manger. » Analyse : (1) « a préparé » → auxiliaire avoir + participe passé ✓ (pas d''accord car le COD « le repas » est après) ; (2) « a commencé » → auxiliaire avoir + participe passé ✓ ; (3) « à manger » → préposition « à » + infinitif ✓. Erreurs dans les autres options : (b) « préparée » accord injustifié + « commencer » infinitif après auxiliaire + « mangé » participe après préposition ; (c) « préparer » infinitif après auxiliaire ; (d) « commencée » accord injustifié + « mangé » participe après préposition.',
  'Accorder le participe passé avec le sujet quand l''auxiliaire est « avoir ». Avec « avoir », le participe ne s''accorde qu''avec le COD placé AVANT le verbe, jamais avec le sujet.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
