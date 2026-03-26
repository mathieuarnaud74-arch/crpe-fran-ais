-- Migration: 10 exercices — Imparfait et passé simple dans le récit
-- Série : conj_imparfait_passe_simple_recit (Français, conjugaison)
-- Opposition arrière-plan / premier plan, habitude, cadre, actions successives
-- UUID prefix: 3de40000

-- Q1 — QCM — Fonction principale de l'imparfait dans un récit au passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'qcm',
  'Dans un récit littéraire au passé, quelle est la principale fonction de l''imparfait ?',
  NULL,
  '[{"id":"a","label":"Exprimer des actions ponctuelles et successives qui font avancer l''histoire"},{"id":"b","label":"Décrire le cadre, les états et les actions de fond (arrière-plan)"},{"id":"c","label":"Exprimer une action antérieure à une autre action passée"},{"id":"d","label":"Marquer la simultanéité avec un événement présent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans le récit au passé, l''imparfait remplit une fonction d''arrière-plan (background) : il sert à décrire le cadre spatiotemporel, les portraits des personnages, les états psychologiques, les habitudes et les actions durables ou continues. Il crée la toile de fond sur laquelle se détachent les événements. Par opposition, le passé simple occupe le premier plan (foreground) et correspond aux actions ponctuelles qui font progresser la narration.',
  'Confondre l''imparfait de description avec le passé simple d''action : "Le soleil brillait" (imparfait = cadre) n''a pas la même valeur que "Le soleil brilla" (passé simple = événement ponctuel, stylistiquement marqué).',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Le passé simple pour les événements au premier plan
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans un récit littéraire, le passé simple est le temps des événements ponctuels et successifs qui constituent le premier plan de la narration.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Le passé simple est le temps du premier plan (foreground) dans le récit littéraire : il marque des événements ponctuels, délimités dans le temps, qui s''enchaînent et font progresser la narration. C''est le temps de l''action proprement dite. Dans les textes de littérature de jeunesse et les récits au programme du cycle 3, l''opposition imparfait (arrière-plan) / passé simple (premier plan) est fondamentale.',
  'Penser que le passé simple est simplement « un passé lointain » ou « un temps littéraire inutilisable à l''oral ». Au CRPE, les candidats doivent maîtriser sa valeur aspectuelle (ponctuel, accompli, délimité) et son rôle dans la structure narrative.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Imparfait de cadre dans une phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'qcm',
  'Dans la phrase : « Il pleuvait quand le train arriva en gare. », quel est l''emploi de l''imparfait « pleuvait » ?',
  NULL,
  '[{"id":"a","label":"Action ponctuelle simultanée à l''arrivée du train"},{"id":"b","label":"Cadre et contexte dans lequel se produit l''événement principal"},{"id":"c","label":"Action antérieure à l''arrivée du train"},{"id":"d","label":"Habitude ou répétition dans le passé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''imparfait « pleuvait » décrit le contexte dans lequel survient l''événement principal « arriva » (passé simple). C''est l''emploi d''arrière-plan : la pluie constitue le cadre atmospheric dans lequel s''inscrit l''action ponctuelle (l''arrivée du train). Le schéma classique est : imparfait (durée, fond) + quand/lorsque + passé simple (événement qui interrompt ou se produit).',
  'Croire que les deux verbes décrivent des actions simultanées équivalentes. L''imparfait et le passé simple n''ont pas le même statut dans la narration : l''imparfait exprime ce qui dure, le passé simple ce qui se produit en un point.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Vrai/Faux — Imparfait d'habitude
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? L''imparfait peut exprimer une action habituelle ou répétée dans le passé.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. L''imparfait dit « d''habitude » ou « itératif » exprime des faits qui se répètent régulièrement dans le passé. Exemple : « Chaque matin, il se levait à six heures. » Cet emploi se distingue de l''imparfait descriptif (cadre) et de l''imparfait de durée (action continue). Les trois grandes valeurs de l''imparfait dans le récit sont : description/état, habitude/répétition, action de fond/durée.',
  'Réduire l''imparfait à un seul emploi (souvent la description). Le CRPE attend que les candidats distinguent les différentes valeurs aspectuelles de l''imparfait : descriptif, itératif, duratif.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Choisir la bonne combinaison imparfait/passé simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'qcm',
  'Laquelle de ces phrases utilise correctement l''opposition imparfait / passé simple ?',
  NULL,
  '[{"id":"a","label":"Les enfants jouaient dans le jardin quand l''orage éclata."},{"id":"b","label":"Les enfants jouèrent dans le jardin quand l''orage éclatait."},{"id":"c","label":"Les enfants jouèrent dans le jardin quand l''orage éclata."},{"id":"d","label":"Les enfants jouaient dans le jardin quand l''orage éclatait."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La phrase (a) est correcte : « jouaient » (imparfait) décrit l''action de fond, continue, qui servait de cadre — « éclata » (passé simple) désigne l''événement ponctuel survenu dans ce cadre. La proposition (b) est incorrecte (passé simple pour l''action de fond, imparfait pour l''événement). La proposition (c) place les deux verbes au passé simple, ce qui n''est pas faux grammaticalement mais perd la nuance sémantique (les deux actions sont traitées comme ponctuelles). La proposition (d) place les deux à l''imparfait, ce qui efface l''événement.',
  'Choisir (d) « jouaient… éclatait » en pensant qu''il faut maintenir la « cohérence des temps ». L''imparfait et le passé simple coexistent normalement dans le récit et jouent des rôles différents ; ils ne doivent pas être identiques.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Aspect du passé simple : valeur aspectuelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'qcm',
  'En grammaire, on dit que le passé simple a un aspect "perfectif" et l''imparfait un aspect "imperfectif". Que signifie "perfectif" dans ce contexte ?',
  NULL,
  '[{"id":"a","label":"Que l''action est révolue depuis longtemps"},{"id":"b","label":"Que l''action est envisagée dans sa globalité, avec un début et une fin définis"},{"id":"c","label":"Que l''action est parfaitement réalisée, sans erreur"},{"id":"d","label":"Que l''action est accomplie au moment où l''on parle"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''aspect perfectif (ou accompli) signifie que l''action est saisie dans sa totalité, avec ses bornes de début et de fin. Le passé simple est perfectif : il envisage l''action comme un bloc délimité. L''imparfait est imperfectif : il saisit l''action de l''intérieur, en cours de déroulement, sans en montrer les limites. Cette notion d''aspect est fondamentale en didactique du français pour expliquer l''opposition PS / imparfait sans se contenter du critère (faux) de « passé lointain vs passé récent ».',
  'Confondre « aspect » (façon dont l''action est envisagée) et « temps » (localisation dans la chronologie). L''aspect est une notion grammaticale distincte du temps : un imparfait et un passé simple désignent tous deux des faits passés, mais leur aspect diffère.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Le plus-que-parfait pour l'antériorité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? Dans un récit au passé, le plus-que-parfait s''utilise pour exprimer une action antérieure à une autre action passée (passé du passé).',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Le plus-que-parfait exprime une antériorité par rapport à un passé de référence : « Quand il arriva, elle avait déjà parti. » → partir (PQP) est antérieur à arriver (PS). Il se forme avec l''auxiliaire être ou avoir à l''imparfait + participe passé. C''est un temps fréquent dans le récit pour les retours en arrière (analepses) ou les explications d''événements antérieurs.',
  'Ne pas distinguer le plus-que-parfait (antériorité par rapport à un passé) du passé antérieur (antériorité immédiate par rapport à un passé simple, très littéraire). Le PQP est le temps de l''antériorité courante dans le récit scolaire.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Réponse courte — Temps principal des actions successives dans le récit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'reponse_courte',
  'Dans un récit littéraire au passé, quel temps est principalement utilisé pour les actions principales et successives qui font progresser la narration (premier plan) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["passé simple","le passé simple","passe simple"]}'::jsonb,
  'Le passé simple est le temps du premier plan dans le récit littéraire au passé : il marque les actions ponctuelles, délimitées, qui s''enchaînent et font avancer l''histoire. Il s''oppose à l''imparfait, temps de l''arrière-plan (description, états, actions continues ou habituelles).',
  'Répondre « passé composé ». Dans les textes littéraires et les récits à étudier au CRPE, c''est le passé simple (et non le passé composé) qui joue le rôle du premier plan. Le passé composé remplit cette fonction à l''oral et dans les textes courants non littéraires.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Imparfait itératif dans un exemple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'qcm',
  'Dans la phrase : « Chaque soir, il lisait un chapitre avant de s''endormir. », l''imparfait « lisait » exprime :',
  NULL,
  '[{"id":"a","label":"Un fait ponctuel dans le passé"},{"id":"b","label":"Une action habituelle ou répétée dans le passé (imparfait itératif)"},{"id":"c","label":"Un état d''arrière-plan accompagnant un événement principal"},{"id":"d","label":"Une action antérieure à une autre action passée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''adverbe « chaque soir » marque la répétition régulière : l''imparfait est ici itératif (ou habituel). Il décrit une action qui se reproduit de façon régulière dans le passé. Ce n''est pas un arrière-plan (pas d''événement principal associé) ni une antériorité. La présence d''un circonstanciel de répétition (« chaque soir », « tous les jours », « souvent ») est un indice fort de l''imparfait itératif.',
  'Choisir (c) en pensant que tout imparfait dans un récit est forcément un arrière-plan. L''imparfait itératif décrit une habitude et peut constituer à lui seul l''information principale de la phrase, sans qu''il y ait d''événement au passé simple.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — Choix didactique : enseigner l'opposition imparfait/PS au cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  '3de40000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple_recit',
  'Imparfait et passé simple dans le récit',
  'Standard',
  'qcm',
  'Un enseignant de cycle 3 veut aider ses élèves à utiliser les temps du passé à bon escient dans leur récit. Quelle activité est la plus adaptée pour travailler l''opposition imparfait / passé simple ?',
  NULL,
  '[{"id":"a","label":"Faire conjuguer des listes de verbes à l''imparfait et au passé simple de manière systématique"},{"id":"b","label":"Demander aux élèves de colorier en deux couleurs les verbes d''un texte narratif selon leur rôle (premier plan / arrière-plan), puis de justifier leurs choix"},{"id":"c","label":"Interdire l''imparfait dans les productions écrites pour habituer les élèves au passé simple"},{"id":"d","label":"Faire apprendre par cœur la règle : « passé simple = action courte, imparfait = action longue »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''activité de coloriage des temps selon leur rôle narratif (premier plan vs arrière-plan) est une activité de lecture-analyse qui développe la conscience métalinguistique des élèves : ils observent le fonctionnement des temps dans un texte réel avant de produire eux-mêmes. Cette approche inductive et ancrée dans des textes littéraires est recommandée par les ressources Éduscol. Les propositions (a) et (d) sont trop mécaniques ; la proposition (c) prive les élèves d''un outil expressif essentiel.',
  'Réduire l''enseignement des temps du récit à des exercices de conjugaison hors contexte. Le CRPE évalue la capacité des candidats à concevoir des situations d''apprentissage qui placent la grammaire au service de la lecture et de l''écriture.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
