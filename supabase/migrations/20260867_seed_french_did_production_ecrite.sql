-- Migration: 10 exercices — Didactique de la production écrite cycles 2-3
-- Série : did_production_ecrite_cycle23 (Français, didactique_francais)
-- Processus rédactionnel, DAE, textualisation, révision, situation d'écriture
-- UUID prefix: f9a00000

-- Q1 — QCM — Les trois composantes du processus rédactionnel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'qcm',
  'Selon le modèle de Hayes et Flower (1980), quelles sont les trois composantes du processus rédactionnel ?',
  NULL,
  '[{"id":"a","label":"Lecture, écriture et révision"},{"id":"b","label":"Planification, mise en texte et révision"},{"id":"c","label":"Dictée, copie et rédaction libre"},{"id":"d","label":"Brouillon, rédaction au propre et correction"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le modèle Hayes & Flower (1980) distingue trois grandes opérations : la planification (organiser les idées, définir le but et le destinataire), la mise en texte ou textualisation (transformer les idées en langage écrit) et la révision (évaluer et améliorer le texte produit). Ces trois opérations ne sont pas linéaires mais récursives : le scripteur passe constamment de l''une à l''autre au cours de la rédaction.',
  'Confondre "révision" (opération cognitive tout au long de la rédaction) avec la simple "correction orthographique". La révision inclut des retours sur la planification et la cohérence globale du texte.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — La dictée à l'adulte et l'accès à l'écriture avant le code
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La dictée à l''adulte (DAE) permet aux élèves de cycle 1 de produire des textes avant de maîtriser le code écrit.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. Dans la dictée à l''adulte, l''enseignant tient le rôle de secrétaire : il transcrit le texte que l''élève lui dicte. L''élève peut ainsi accéder à la production écrite sans être limité par les obstacles de l''encodage graphophonologique. La DAE est préconisée dès la maternelle dans les programmes Éduscol et les ressources du Ministère (cycle 1, puis cycle 2 en accompagnement).',
  'Penser que la DAE est réservée aux élèves en grande difficulté. Elle est en réalité un outil didactique à part entière pour tous les élèves qui n''ont pas encore automatisé l''encodage.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Définition de la mise en texte (textualisation)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'qcm',
  'Qu''est-ce que la "mise en texte" (textualisation) dans le processus rédactionnel ?',
  NULL,
  '[{"id":"a","label":"La relecture du texte pour corriger les erreurs orthographiques"},{"id":"b","label":"La phase de réflexion préalable sur le contenu à écrire"},{"id":"c","label":"La transformation des idées en langage écrit, avec gestion simultanée de la syntaxe, du lexique et de la cohésion"},{"id":"d","label":"La mise en page finale et la présentation du document"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La textualisation (ou mise en texte) désigne l''opération par laquelle le scripteur transforme ses représentations mentales en un texte linéaire. Elle implique la gestion simultanée de la macrostructure (organisation des idées), de la microstructure (syntaxe, lexique) et des marques de cohésion (connecteurs, pronoms, temps verbaux). Chez le jeune scripteur, l''encodage orthographique s''y ajoute, ce qui génère une forte charge cognitive.',
  'Confondre la textualisation avec la révision (proposition a) ou la planification (proposition b). La textualisation est l''acte de produire le texte lui-même, pas de le corriger ni de le préparer.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Vrai/Faux — Surcharge cognitive et encodage
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? En début d''apprentissage de l''écriture, la gestion simultanée de l''encodage orthographique et de la textualisation peut saturer la mémoire de travail de l''élève.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Cette affirmation est vraie. La mémoire de travail dispose d''une capacité limitée. Chez le jeune scripteur, l''effort consacré à l''encodage (retrouver les graphèmes correspondant aux phonèmes, former les lettres) monopolise des ressources cognitives qui ne sont plus disponibles pour la planification et la mise en texte. Ce phénomène de surcharge cognitive (ou "bottleneck") justifie des dispositifs d''allègement : dictée à l''adulte, écriture collaborative, outils d''aide à l''encodage.',
  'Croire que la difficulté à écrire vient uniquement d''un manque de vocabulaire ou d''idées. La surcharge cognitive est avant tout d''origine procédurale (encodage, tracé des lettres) et non sémantique chez les jeunes scripteurs.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Révision locale vs révision globale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'qcm',
  'Quelle est la principale distinction entre révision locale et révision globale d''un texte ?',
  NULL,
  '[{"id":"a","label":"La révision locale porte sur le style, la révision globale sur l''orthographe"},{"id":"b","label":"La révision locale porte sur des unités courtes (mots, phrases), la révision globale sur la cohérence et l''organisation d''ensemble"},{"id":"c","label":"La révision locale est faite par l''enseignant, la révision globale par l''élève"},{"id":"d","label":"Ce sont deux termes synonymes désignant la même opération"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La révision locale concerne des modifications ponctuelles : un mot impropre, une répétition, une faute d''accord, une phrase syntaxiquement incorrecte. La révision globale porte sur la cohérence thématique, la progression de l''information, la structure d''ensemble et l''adéquation au type textuel visé. La révision globale est une compétence plus complexe qui s''acquiert progressivement au cycle 3 et au-delà.',
  'Penser que la révision se limite à la correction orthographique. La révision textuelle englobe des niveaux bien plus larges : cohérence, cohésion, adéquation au genre, efficacité argumentative ou narrative.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Réponse courte — Nom de la pratique : enseignant secrétaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'reponse_courte',
  'Comment appelle-t-on la pratique pédagogique dans laquelle l''enseignant transcrit sous la dictée des élèves le texte qu''ils composent oralement collectivement ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["dictée à l''adulte","la dictée à l''adulte","DAE","dictee a l adulte"]}'::jsonb,
  'La dictée à l''adulte (DAE) est une situation d''écriture collaborative dans laquelle l''enseignant joue le rôle de secrétaire. Les élèves composent le texte oralement et observent simultanément l''acte de transcription. Cette pratique, préconisée dans les programmes Éduscol depuis le cycle 1, développe la distinction oral/écrit, la conscience des caractéristiques de l''écrit et la posture d''auteur.',
  'Confondre la DAE avec la simple dictée magistrale (où c''est l''enseignant qui compose le texte que les élèves transcrivent). Dans la DAE, ce sont les élèves qui sont auteurs du texte.',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Importance de la situation d'écriture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'qcm',
  'Selon les ressources Éduscol, pourquoi est-il essentiel de définir une "situation d''écriture" (destinataire, intention, genre) avant de demander une production écrite aux élèves ?',
  NULL,
  '[{"id":"a","label":"Pour faciliter la notation chiffrée de la production"},{"id":"b","label":"Pour que l''élève ait conscience du destinataire, de l''intention communicative et des caractéristiques du genre textuel attendu"},{"id":"c","label":"Pour réduire le temps de correction de l''enseignant"},{"id":"d","label":"Pour éviter les fautes d''orthographe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Une situation d''écriture bien définie (qui écrit, à qui, dans quel but, quel type de texte) donne du sens à la tâche et guide les choix d''écriture de l''élève : registre, organisation, formules d''adresse, ton. Sans ce cadre, les élèves produisent souvent des textes génériques sans ancrage communicatif. Les ressources Éduscol (notamment le document « Pour enseigner la lecture et l''écriture au CP ») insistent sur cette condition préalable à toute production écrite.',
  'Penser que donner un titre ou un sujet suffit à créer une situation d''écriture. Une situation d''écriture authentique inclut obligatoirement destinataire + intention + genre textuel.',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Vrai/Faux — La réécriture comme compétence distincte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'vrai_faux',
  'Vrai ou faux ? La réécriture d''un texte est une compétence identique à l''écriture initiale et ne nécessite pas d''enseignement spécifique.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Cette affirmation est fausse. La réécriture mobilise des compétences propres et distinctes de l''écriture initiale : analyser les problèmes du texte existant, identifier les passages à améliorer, sélectionner les modifications pertinentes, maintenir la cohérence après changement. Elle s''enseigne explicitement via des séances de réécriture guidée, l''utilisation de critères de réussite et le recours à des grilles d''autoévaluation.',
  'Croire que relire et corriger vient naturellement. La recherche en didactique montre que les jeunes élèves relisent peu et ne voient pas leurs propres erreurs : l''enseignement explicite de stratégies de révision est indispensable.',
  'valide',
  'CRPE Français',
  'premium',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Organisateur graphique pour la planification
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'qcm',
  'Quel outil est le plus adapté pour aider les élèves à planifier leur production écrite avant de commencer à rédiger ?',
  NULL,
  '[{"id":"a","label":"Un dictionnaire orthographique"},{"id":"b","label":"Un organisateur graphique (plan, carte mentale, schéma narratif)"},{"id":"c","label":"Une grille de conjugaison"},{"id":"d","label":"Un manuel de grammaire descriptive"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les organisateurs graphiques (plans, cartes mentales, schémas narratifs) externalisent la planification : ils allègent la mémoire de travail en fixant les idées à l''extérieur du cerveau, permettant à l''élève de les organiser et d''anticiper la structure du texte avant de rédiger. Les ressources Éduscol sur la production d''écrits recommandent l''utilisation de tels supports, surtout au cycle 2 et au début du cycle 3.',
  'Proposer directement des outils de correction (dictionnaire, grille de conjugaison) pour la phase de planification. La planification précède la rédaction et ne porte pas encore sur la correction linguistique.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — QCM — La grille de critères de réussite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'f9a00000-0000-0000-0000-000000000010',
  'Francais',
  'didactique_francais',
  'did_production_ecrite_cycle23',
  'Didactique de la production écrite cycles 2-3',
  'Standard',
  'qcm',
  'Dans le cadre de l''évaluation formative de la production écrite, qu''est-ce qu''une grille de critères de réussite ?',
  NULL,
  '[{"id":"a","label":"Un tableau de correspondance entre notes et niveaux de compétences pour le bulletin"},{"id":"b","label":"Un outil listant les critères observables qui permettent à l''élève et à l''enseignant d''évaluer la qualité de la production"},{"id":"c","label":"Un document administratif transmis aux familles en fin de période"},{"id":"d","label":"Un test standardisé utilisé lors des évaluations nationales"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Une grille de critères de réussite co-construite avec les élèves liste les caractéristiques attendues du texte (respect du genre, cohérence, richesse lexicale, correction syntaxique, ponctuation…). Elle sert de guide lors de la réécriture et développe la capacité d''autoévaluation. L''évaluation formative vise à informer l''élève et l''enseignant des progrès à accomplir, sans notation sommative.',
  'Confondre grille de critères de réussite (outil formatif, co-construit, utilisé par l''élève) et grille de notation sommative (utilisée uniquement par l''enseignant pour attribuer une note).',
  'valide',
  'CRPE Français',
  'premium',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
