-- Migration: Scénarios de classe — réagir aux erreurs d'élèves (10 exercices)
-- Subdomain: didactique_francais
-- topic_key: didactique_scenarios_classe
-- UUID prefix: e50e0000
-- All exercises have rich support_text with realistic classroom scenarios

-- Q1 — QCM — Erreurs d'accord en CE2 (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000001',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Intermediaire',
  'qcm',
  'Quelle remédiation proposeriez-vous en priorité pour aider cet élève ?',
  'Lors d''une dictée en CE2, l''élève Yanis écrit : « Les petit chat joue dans le jardin. Ils mangent des croquette et boit du lait. » L''enseignante relève que les accords en nombre (déterminant-nom, sujet-verbe) sont systématiquement absents, tandis que la segmentation des mots et l''orthographe lexicale sont correctes.',
  '[{"id":"a","label":"Faire recopier la dictée trois fois pour automatiser l''orthographe correcte"},{"id":"b","label":"Proposer des exercices de manipulation sur les chaînes d''accord (déterminant → nom → adjectif → verbe) avec du matériel de tri"},{"id":"c","label":"Donner une leçon magistrale sur les règles d''accord du pluriel"},{"id":"d","label":"Faire apprendre par cœur la liste des déterminants pluriels"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La remédiation la plus efficace est celle qui cible la zone proximale de développement de l''élève. Yanis maîtrise l''orthographe lexicale mais pas les accords morphosyntaxiques. Des exercices de manipulation (tri, classement, transformation singulier/pluriel) permettent de construire la notion de chaîne d''accord par un étayage progressif. La copie répétitive (a) ne développe aucune compréhension du système. La leçon magistrale (c) ne tient pas compte du besoin de manipulation concrète au cycle 2. L''apprentissage par cœur (d) ne traite pas le problème de fond : la compréhension du mécanisme d''accord.',
  'Croire que la copie répétitive permet d''intérioriser les règles d''accord. En réalité, sans compréhension du mécanisme morphosyntaxique, l''élève reproduira les mêmes erreurs dans d''autres contextes.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q2 — QCM — Confusion phonographique en CP (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000002',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Intermediaire',
  'qcm',
  'Quel type d''erreur est prédominant dans la production de cette élève ?',
  'En CP, lors d''un exercice d''écriture inventée, l''élève Inès écrit : « le cato dor sur le canapé » pour « Le chat dort sur le canapé ». Elle écrit aussi « la famile va o parc » pour « La famille va au parc ». L''enseignante observe qu''Inès encode correctement la plupart des sons mais omet les lettres muettes et simplifie les graphèmes complexes.',
  '[{"id":"a","label":"Erreur syntaxique — Inès ne maîtrise pas la structure de la phrase"},{"id":"b","label":"Erreur phonographique — Inès n''a pas acquis les correspondances graphèmes-phonèmes complexes"},{"id":"c","label":"Erreur logographique — Inès ne reconnaît pas les mots fréquents"},{"id":"d","label":"Erreur morphographique flexionnelle — Inès ne maîtrise pas les accords"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les erreurs d''Inès relèvent principalement du niveau phonographique : elle encode les sons de manière simplifiée (« cato » pour « chat », « o » pour « au », « famile » pour « famille »). Elle n''a pas encore stabilisé les correspondances graphèmes-phonèmes complexes (digrammes, lettres muettes). La structure syntaxique est correcte, ce qui exclut (a). Ce n''est pas un problème de mots-outils fréquents (c) ni d''accord grammatical (d). Au CP, cette étape est normale dans le développement de la conscience phonographique.',
  'Confondre les erreurs phonographiques avec des erreurs d''orthographe lexicale. Au CP, les écritures inventées témoignent d''une compétence en développement : l''élève applique le principe alphabétique mais n''a pas encore mémorisé toutes les correspondances graphèmes-phonèmes.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q3 — QCM — Problème de cohérence textuelle en CM1 (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000003',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Intermediaire',
  'qcm',
  'Quelle activité de remédiation serait la plus pertinente pour travailler la compétence déficitaire ?',
  'En CM1, lors d''un atelier d''écriture, l''élève Noé produit le texte suivant : « Le chevalier entre dans le château. Le château est grand. Il y a des fantômes. Après il combat un dragon. Et après il gagne. Et il repart. » L''enseignante note que l''orthographe est globalement correcte mais que le texte manque de connecteurs logiques, de substituts pronominaux variés et de progression thématique.',
  '[{"id":"a","label":"Un exercice de closure (texte à trous) ciblant les connecteurs logiques et temporels"},{"id":"b","label":"Une dictée préparée pour renforcer l''orthographe lexicale"},{"id":"c","label":"Un exercice de copie d''un texte littéraire modèle"},{"id":"d","label":"Un exercice de conjugaison sur les temps du récit"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le texte de Noé présente un déficit de cohérence textuelle : absence de connecteurs variés (il utilise seulement « après » et « et »), pas de substituts lexicaux (répétition de « le château »), et une progression thématique linéaire sans enrichissement. L''exercice de closure (a) cible directement cette compétence en demandant à l''élève de choisir et placer des connecteurs dans un texte. La dictée (b) ne travaille pas la cohérence. La copie (c) est passive. La conjugaison (d) ne correspond pas au besoin identifié. La différenciation pédagogique impose de cibler la compétence en cours d''acquisition.',
  'Penser que les problèmes de production écrite se résolvent par davantage d''exercices d''orthographe ou de grammaire décontextualisés. La cohérence textuelle est une compétence spécifique qui nécessite un enseignement explicite.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q4 — QCM — Erreur de segmentation en CE1 (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Avance',
  'qcm',
  'À quelle compétence du socle commun cette difficulté correspond-elle principalement ?',
  'En CE1, l''enseignante observe que l''élève Maëlys écrit systématiquement : « lapomme » pour « la pomme », « ilva » pour « il va », « senva » pour « s''en va » et « lécole » pour « l''école ». Lors de la relecture à voix haute, Maëlys lit correctement ses phrases sans percevoir le problème. Ce type d''erreur se retrouve uniquement à l''écrit.',
  '[{"id":"a","label":"Domaine 1, compétence « Comprendre et s''exprimer à l''oral » — car l''élève ne distingue pas les mots à l''oral"},{"id":"b","label":"Domaine 1, compétence « Écrire » — sous-compétence « Maîtriser les relations entre l''oral et l''écrit » incluant la segmentation de la chaîne parlée en mots"},{"id":"c","label":"Domaine 1, compétence « Comprendre le fonctionnement de la langue » — car il s''agit d''une méconnaissance des classes grammaticales"},{"id":"d","label":"Domaine 2, « Méthodes et outils pour apprendre » — car l''élève manque de relecture attentive"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les erreurs de Maëlys sont des erreurs de segmentation : elle n''a pas encore stabilisé la frontière entre les mots à l''écrit, bien qu''elle la perçoive à l''oral. Cela relève du domaine 1 du socle commun (« Les langages pour penser et communiquer »), compétence « Écrire », et plus précisément la maîtrise des relations oral/écrit. Le flux de la parole est continu ; le passage à l''écrit exige de segmenter cette chaîne en unités lexicales distinctes. Ce n''est pas un problème d''oral (a), ni de grammaire formelle (c), ni de méthodologie (d). La remédiation passera par des activités de manipulation de mots-étiquettes et de dictée à l''adulte.',
  'Penser qu''une erreur de segmentation est un problème de lecture ou d''oral. En réalité, c''est une difficulté spécifique au passage de l''oral à l''écrit : à l''oral, « la pomme » forme un seul groupe prosodique, et l''élève doit apprendre que l''écrit sépare les mots.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q5 — QCM — Confusion des homophones en CE2 (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000005',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Avance',
  'qcm',
  'Quelle démarche didactique serait la plus efficace pour aider cet élève à distinguer ces homophones ?',
  'En CE2, l''élève Rayan écrit dans sa rédaction : « Ses amis son gentils. Il a pris sont cartable et il et parti a l''école. Sa mère la appelé pour lui dire que ses bientôt l''heure. » L''enseignant constate que Rayan confond systématiquement les homophones grammaticaux (ses/ces/c''est, son/sont, et/est, a/à, sa/ça). L''élève applique les « trucs » mécaniques (remplacer par « avait ») mais de manière erratique.',
  '[{"id":"a","label":"Multiplier les exercices à trous de type « complète par a ou à » pour automatiser les bons réflexes"},{"id":"b","label":"Construire avec l''élève un raisonnement grammatical : identifier la nature du mot dans la phrase (déterminant, verbe, adjectif) pour choisir la bonne graphie"},{"id":"c","label":"Donner une fiche récapitulative de tous les homophones avec les astuces de substitution et la faire apprendre par cœur"},{"id":"d","label":"Supprimer les homophones des textes de dictée jusqu''à ce que l''élève maîtrise l''orthographe lexicale"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''approche la plus efficace selon la didactique de l''orthographe est de construire un raisonnement grammatical explicite (b). Les homophones grammaticaux se distinguent par leur nature grammaticale : « son » est un déterminant possessif (il précède un nom), « sont » est le verbe être conjugué. Les « trucs » de substitution (a, c) ne construisent pas de compréhension du système linguistique et produisent des résultats erratiques, comme on l''observe chez Rayan. Éviter les homophones (d) est contre-productif. Selon les travaux de Brissaud et Cogis, l''enseignement explicite du raisonnement grammatical en contexte est la voie la plus durable.',
  'S''appuyer exclusivement sur des « trucs » de substitution (« remplace par avait ») sans construire la compréhension grammaticale. Ces procédures mécaniques ne permettent pas le transfert et créent une dépendance à la béquille mnémotechnique.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q6 — Tri catégories — Classer les erreurs d'une dictée de CE2 (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000006',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Intermediaire',
  'tri_categories',
  'Classez chaque erreur relevée dans la dictée de Lina selon sa typologie.',
  'Dictée de Lina (CE2) — Texte dicté : « Les enfants joyeux couraient dans la cour de récréation. » — Lina a écrit : « Les enfan joyeu courer dans la cours de récréassion. » L''enseignante a relevé six erreurs qu''elle souhaite classer pour adapter sa remédiation.',
  '[{"id":"tc20q1w1","label":"enfan → enfants (absence du -s du pluriel)"},{"id":"tc20q1w2","label":"joyeu → joyeux (absence du -x final)"},{"id":"tc20q1w3","label":"courer → couraient (terminaison verbale erronée)"},{"id":"tc20q1w4","label":"cours → cour (ajout d''un -s non justifié)"},{"id":"tc20q1w5","label":"récréassion → récréation (graphie erronée du son [sjɔ̃])"},{"id":"tc20q1w6","label":"enfan → enfants (absence du -t muet)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"morpho_flex","label":"Erreur morphographique flexionnelle"},{"id":"morpho_deriv","label":"Erreur morphographique dérivationnelle"},{"id":"phonograph","label":"Erreur phonographique"}],"mapping":{"tc20q1w1":"morpho_flex","tc20q1w2":"morpho_flex","tc20q1w3":"morpho_flex","tc20q1w4":"morpho_deriv","tc20q1w5":"phonograph","tc20q1w6":"morpho_deriv"}}'::jsonb,
  'Les erreurs morphographiques flexionnelles concernent les marques d''accord (nombre, genre, personne) : l''absence du -s pluriel dans « enfan(ts) » et du -x dans « joyeu(x) » sont des erreurs d''accord en nombre ; « courer » pour « couraient » est une erreur de flexion verbale. L''erreur morphographique dérivationnelle concerne les lettres muettes liées à la famille de mots : le -t de « enfant » (→ enfanter) et le -s parasite de « cours » (la cour, sans -s dans ce sens). L''erreur phonographique « récréassion » montre une mauvaise sélection du graphème pour le son [sjɔ̃] (« -tion » et non « -ssion »).',
  'Confondre l''absence du -s du pluriel (erreur flexionnelle = marque grammaticale) avec l''absence du -t muet (erreur dérivationnelle = lettre justifiée par la morphologie lexicale). Ce sont deux types d''erreurs distincts qui appellent des remédiations différentes.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q7 — Tri catégories — Classer les erreurs d'un texte libre CM1 (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000007',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Avance',
  'tri_categories',
  'Classez chaque erreur selon sa nature pour orienter la remédiation.',
  'Production libre d''Enzo (CM1) — Consigne : « Décris ton animal préféré. » — Enzo écrit : « Mon chat il sappelle Moustache. Il et gris et blanche. Des foi il saute sur la table maman elle cri. Il a des grande moustache cé pour sa quil sappelle Moustache. » L''enseignante identifie six erreurs représentatives à analyser.',
  '[{"id":"tc20q2w1","label":"sappelle → s''appelle (absence de l''apostrophe)"},{"id":"tc20q2w2","label":"et → est (confusion homophone grammatical)"},{"id":"tc20q2w3","label":"blanche → blanc (erreur d''accord en genre)"},{"id":"tc20q2w4","label":"des foi → des fois (segmentation + orthographe lexicale)"},{"id":"tc20q2w5","label":"grande → grandes (absence de l''accord pluriel)"},{"id":"tc20q2w6","label":"cé pour sa → c''est pour ça (erreur phonographique multiple)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"segmentation","label":"Erreur de segmentation"},{"id":"morpho_flex","label":"Erreur morphographique flexionnelle"},{"id":"phonograph","label":"Erreur phonographique"},{"id":"logograph","label":"Erreur logographique"}],"mapping":{"tc20q2w1":"segmentation","tc20q2w2":"logograph","tc20q2w3":"morpho_flex","tc20q2w4":"segmentation","tc20q2w5":"morpho_flex","tc20q2w6":"phonograph"}}'::jsonb,
  'L''erreur « sappelle » relève de la segmentation : l''élève ne sépare pas le pronom réfléchi « s'' » du verbe. « Des foi » combine segmentation (« des fois » en un groupe) et orthographe. La confusion « et/est » est une erreur logographique : l''élève connaît le son mais sélectionne le mauvais mot-outil. « Blanche » au lieu de « blanc » et l''absence de -s à « grande(s) » sont des erreurs morphographiques flexionnelles (accord genre/nombre). « Cé pour sa » est phonographique : l''élève transcrit les sons sans recourir à la forme orthographique conventionnelle.',
  'Traiter toutes les erreurs comme relevant du même type et proposer une remédiation unique. La typologie des erreurs (Catach) exige des remédiations différenciées : manipulation morphologique pour les accords, mots-étiquettes pour la segmentation, mémorisation pour les logogrammes.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q8 — Tri catégories — Classer les erreurs d'une copie CE1 (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Intermediaire',
  'tri_categories',
  'Classez chaque erreur de la copie de Sofia selon le type d''erreur orthographique.',
  'Copie de Sofia (CE1) — Texte à copier : « La petite souris grise mange du fromage dans la cuisine. » — Sofia a écrit : « La petite sourie grise manje du fromage dan la kuisine. » L''enseignante relève que Sofia a fait des progrès en écriture mais que certaines erreurs persistent.',
  '[{"id":"tc20q3w1","label":"sourie → souris (ajout d''un -e non justifié)"},{"id":"tc20q3w2","label":"manje → mange (graphie erronée du son [ʒ])"},{"id":"tc20q3w3","label":"dan → dans (absence de la lettre muette finale)"},{"id":"tc20q3w4","label":"kuisine → cuisine (graphie erronée du son [k])"},{"id":"tc20q3w5","label":"sourie → souris (absence du -s final étymologique)"},{"id":"tc20q3w6","label":"manje → mange (confusion g/j devant -e)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"phonograph","label":"Erreur phonographique"},{"id":"morpho_deriv","label":"Erreur morphographique dérivationnelle"},{"id":"logograph","label":"Erreur logographique"}],"mapping":{"tc20q3w1":"logograph","tc20q3w2":"phonograph","tc20q3w3":"morpho_deriv","tc20q3w4":"phonograph","tc20q3w5":"morpho_deriv","tc20q3w6":"phonograph"}}'::jsonb,
  'Les erreurs « manje » et « kuisine » sont phonographiques : Sofia sélectionne un graphème incorrect pour transcrire les sons [ʒ] et [k] (« j » au lieu de « g » devant « e », « k » au lieu de « c » devant « u »). L''absence du -s final de « souris » et du -s de « dans » sont des erreurs morphographiques dérivationnelles : ces lettres muettes sont justifiées par la famille de mots (souris → souriceau, dans → dedans). L''ajout du -e à « sourie » est logographique : l''élève surgénéralise la marque du féminin sans vérifier la forme conventionnelle du mot.',
  'Ne pas distinguer les différentes raisons de l''absence d''une lettre muette. Le -s de « souris » (famille lexicale) et le -s du pluriel (marque grammaticale) ne relèvent pas de la même compétence et n''appellent pas la même remédiation.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q9 — Vrai/Faux — Correction en rouge (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Avance',
  'vrai_faux',
  'Vrai ou faux ? Analysez cette affirmation à la lumière de la didactique de l''orthographe.',
  'Un enseignant de CE2 corrige les dictées de ses élèves en soulignant chaque erreur en rouge et en écrivant la correction au-dessus. Il rend les copies corrigées et demande aux élèves de recopier cinq fois chaque mot corrigé. Un collègue lui dit : « Dans ce scénario, l''enseignant devrait corriger toutes les erreurs en rouge et faire recopier les corrections, car c''est la méthode la plus efficace pour faire progresser les élèves en orthographe. »',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'FAUX. La correction systématique en rouge de toutes les erreurs, suivie d''une copie mécanique, est une pratique peu efficace selon la recherche en didactique de l''orthographe. Les travaux de Brissaud et Cogis montrent que : (1) corriger toutes les erreurs décourage l''élève et ne hiérarchise pas les apprentissages ; (2) la copie mécanique ne mobilise pas de réflexion métalinguistique ; (3) l''évaluation formative implique de sélectionner les erreurs selon leur type et le niveau de l''élève, et de proposer des activités de remédiation ciblées (classement d''erreurs, ateliers de négociation graphique, dictée négociée). L''erreur doit être considérée comme un outil d''apprentissage, non comme une faute à sanctionner.',
  'Croire que la correction exhaustive et la copie répétitive sont des méthodes efficaces. La recherche montre que les élèves progressent davantage quand ils sont acteurs de la correction (auto-évaluation, révision par les pairs, négociation graphique).',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);

-- Q10 — Vrai/Faux — Erreur comme outil d'apprentissage (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e50e0000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'didactique_scenarios_classe',
  'Scénarios de classe : analyser et remédier aux erreurs d''élèves',
  'Avance',
  'vrai_faux',
  'Vrai ou faux ? Évaluez cette proposition didactique.',
  'Lors d''un conseil de cycle, une enseignante de CM2 propose la démarche suivante : « Quand un élève fait une erreur récurrente en production d''écriture, je ne la corrige pas immédiatement. Je la note dans mon cahier d''observation, et quand je repère un pattern (même type d''erreur chez plusieurs élèves), j''organise un atelier de remédiation ciblé en petit groupe. Les élèves confrontent leurs hypothèses orthographiques et construisent ensemble la règle. » Un collègue réagit : « C''est une perte de temps — il vaudrait mieux corriger chaque erreur au fil de l''eau pour que l''élève ne mémorise pas la forme fautive. »',
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'FAUX — la proposition du collègue est erronée. La démarche de l''enseignante est conforme aux principes didactiques actuels : (1) l''observation et le relevé d''erreurs permettent une évaluation formative précise ; (2) le regroupement par type d''erreur permet une remédiation ciblée et différenciée ; (3) la confrontation des hypothèses entre pairs crée un conflit socio-cognitif qui favorise l''apprentissage (Vygotski) ; (4) la construction collective de la règle ancre la compréhension mieux que la correction immédiate. La crainte que l''élève « mémorise la forme fautive » n''est pas fondée : c''est la compréhension du système qui prévient les erreurs, pas la correction ponctuelle.',
  'Craindre que différer la correction entraîne la mémorisation de formes fautives. En réalité, la correction immédiate sans réflexion ne prévient pas la récurrence des erreurs. C''est la compréhension du mécanisme linguistique qui permet le transfert.',
  'valide',
  'CRPE Français — Didactique interactive',
  'premium',
  true
);
