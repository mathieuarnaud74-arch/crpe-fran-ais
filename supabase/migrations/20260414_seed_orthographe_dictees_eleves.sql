-- ============================================================
-- Migration : 10 exercices — Corriger des dictées d'élèves
-- Série : Correction de dictées d'élèves : analyse des erreurs
-- Sous-domaine : orthographe
-- topic_key : orthographe_dictees_eleves
-- UUID prefix : e2050000
-- 5 correction_orthographique, 3 qcm, 2 tri_categories
-- Niveaux : 5 Intermediaire, 5 Avancé
-- ============================================================

-- Q1 — Intermediaire — correction_orthographique — Erreur morphographique (accord)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans cette dictée d''élève de CM1.',
  'Hier, les enfants du quartier *son* allés jouer dans le parc. Ils ont couru très vite et ils étaient fatigués en rentrant. Leur mère les attendait devant la porte.',
  NULL,
  '{"mode":"text","acceptableAnswers":["sont"]}'::jsonb,
  'L''élève a confondu l''homophone « son » (déterminant possessif) avec « sont » (verbe être à la 3e personne du pluriel du présent). Pour vérifier, on peut remplacer par « étaient » : « les enfants étaient allés » fonctionne, donc il faut écrire « sont ». C''est une erreur logographique portant sur les homophones grammaticaux.',
  'Au CRPE, ne pas confondre erreur logographique (confusion d''homophones) et erreur morphographique (erreur d''accord). Ici, l''élève n''a pas fait d''erreur d''accord mais a choisi le mauvais homophone.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — correction_orthographique — Erreur phonographique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans cette dictée d''élève de CE2.',
  'Le *fameaux* chevalier portait une armure brillante. Il montait un grand cheval blanc et traversait la forêt sombre. Les habitants du village le regardaient avec admiration.',
  NULL,
  '{"mode":"text","acceptableAnswers":["fameux"]}'::jsonb,
  'L''élève a écrit « fameaux » au lieu de « fameux ». Le son [o] en finale s''écrit ici « -eux » et non « -eaux ». C''est une erreur phonographique : la transcription du son est incorrecte. L''élève a choisi le mauvais graphème pour transcrire le phonème [o], par analogie probable avec des mots comme « château » ou « bateau ».',
  'Au CRPE, bien identifier qu''il s''agit d''une erreur phonographique (mauvais graphème pour un phonème) et non morphographique. L''élève ne s''est pas trompé sur un accord mais sur la transcription du son.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — correction_orthographique — Erreur morphographique (conjugaison)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans cette dictée d''élève de CM2.',
  'Ma grande sœur *prépare* toujours ses affaires la veille. Ce matin-là, elle a trouvé son cartable prêt et ses cahiers bien *rangé* sur le bureau. Elle était contente de partir à l''heure.',
  NULL,
  '{"mode":"text","acceptableAnswers":["rangés"]}'::jsonb,
  'Le participe passé « rangé » est employé comme adjectif épithète du nom « cahiers », masculin pluriel. Il doit donc s''accorder : « rangés ». C''est une erreur morphographique de type accord : l''élève a oublié la marque du pluriel sur le participe passé employé comme adjectif.',
  'Au CRPE, bien distinguer l''accord du participe passé employé comme adjectif (qui s''accorde comme un adjectif qualificatif) de l''accord du participe passé avec l''auxiliaire avoir (qui suit une règle différente).',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Avancé — correction_orthographique — Erreur de segmentation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Avancé',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans cette dictée d''élève de CM1.',
  'Pendant les vacances, nous sommes allés *ala* mer. Le soleil brillait et les vagues étaient énormes. Mon petit frère avait un peu peur de se baigner.',
  NULL,
  '{"mode":"text","acceptableAnswers":["à la"]}'::jsonb,
  'L''élève a soudé la préposition « à » et l''article « la » en un seul mot « ala ». C''est une erreur de segmentation : les frontières entre les mots ne sont pas respectées. Ce type d''erreur est fréquent chez les jeunes scripteurs qui écrivent « comme ils entendent », sans distinguer les unités lexicales.',
  'Au CRPE, les erreurs de segmentation sont souvent confondues avec des erreurs phonographiques. Or ici, tous les sons sont correctement transcrits — c''est le découpage en mots qui est erroné.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Avancé — correction_orthographique — Erreur logographique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Avancé',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans cette dictée d''élève de CM2.',
  'Le maître a demandé aux élèves de *ce* taire immédiatement. Tout le monde s''est assis et le silence est revenu dans la classe. La leçon de sciences pouvait enfin commencer.',
  NULL,
  '{"mode":"text","acceptableAnswers":["se"]}'::jsonb,
  'L''élève a écrit « ce » (déterminant démonstratif) au lieu de « se » (pronom réfléchi). Le verbe pronominal « se taire » nécessite le pronom réfléchi « se ». On peut vérifier en conjuguant : « je me tais, tu te tais, il se tait ». C''est une erreur logographique : la confusion entre deux homophones qui n''ont ni la même nature ni la même fonction.',
  'Au CRPE, les candidats confondent souvent erreur logographique et erreur phonographique. Ici la transcription phonétique est correcte ([sə]) mais l''élève a choisi le mauvais mot parmi deux homophones.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Identifier le type d'erreur (morphographique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Intermediaire',
  'qcm',
  'Quel type d''erreur l''élève a-t-il commis sur le mot en gras (entre astérisques) ?',
  'Dictée d''un élève de CM1 : « Les petite filles *joue* dans la cour de l''école. Elles sautent à la corde et rigolent beaucoup. La maîtresse les surveille depuis la fenêtre. »',
  '[{"id":"a","label":"Erreur phonographique (transcription incorrecte du son)"},{"id":"b","label":"Erreur morphographique (erreur d''accord ou de conjugaison)"},{"id":"c","label":"Erreur logographique (confusion d''homophones)"},{"id":"d","label":"Erreur de segmentation (frontières de mots incorrectes)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''élève a écrit « joue » au lieu de « jouent ». Le sujet « les petites filles » est à la 3e personne du pluriel, le verbe doit donc porter la marque du pluriel : « jouent ». Il s''agit d''une erreur morphographique, plus précisément une erreur d''accord sujet-verbe. Les morphogrammes grammaticaux (marques de personne, de nombre) sont des lettres qui ne s''entendent pas à l''oral mais portent des informations grammaticales.',
  'Au CRPE, les candidats classent parfois cette erreur comme phonographique en argumentant que « joue » et « jouent » se prononcent pareil. Mais c''est justement parce que la marque du pluriel est inaudible qu''il s''agit d''un morphogramme grammatical — donc d''une erreur morphographique.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Avancé — qcm — Identifier le type d'erreur (phonographique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Avancé',
  'qcm',
  'Quel type d''erreur l''élève a-t-il commis sur le mot en gras (entre astérisques) ?',
  'Dictée d''un élève de CE2 : « Le *printan* est arrivé et les fleurs commencent à pousser. Les oiseaux chantent dans les arbres et le soleil brille fort. Les enfants jouent dehors après l''école. »',
  '[{"id":"a","label":"Erreur phonographique (transcription incorrecte du son)"},{"id":"b","label":"Erreur morphographique (erreur d''accord ou de conjugaison)"},{"id":"c","label":"Erreur logographique (confusion d''homophones)"},{"id":"d","label":"Erreur de segmentation (frontières de mots incorrectes)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''élève a écrit « printan » au lieu de « printemps ». Le son [ɑ̃] est correctement identifié mais mal transcrit : l''élève a omis le graphème complexe « -emps » au profit de « -an ». Il manque aussi le « p » et le « s » muets finaux qui font partie de l''identité lexicale du mot. C''est une erreur phonographique : le choix du graphème pour transcrire le phonème est incorrect.',
  'Au CRPE, on pourrait hésiter avec une erreur morphographique à cause du « s » final manquant. Mais le « s » de « printemps » n''est pas une marque de pluriel — c''est un phonogramme historique figé dans le mot. L''erreur porte bien sur la transcription globale du mot.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — qcm — Identifier le type d'erreur (segmentation)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Avancé',
  'qcm',
  'Quel type d''erreur l''élève a-t-il commis sur le mot en gras (entre astérisques) ?',
  'Dictée d''un élève de CE2 : « Samedi, nous sommes allés au marché. Ma mère a acheté des pommes et *dutomat*. Mon père a trouvé un beau melon bien mûr pour le dessert. »',
  '[{"id":"a","label":"Erreur phonographique (transcription incorrecte du son)"},{"id":"b","label":"Erreur morphographique (erreur d''accord ou de conjugaison)"},{"id":"c","label":"Erreur logographique (confusion d''homophones)"},{"id":"d","label":"Erreur de segmentation (frontières de mots incorrectes)"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'L''élève a soudé trois mots en un seul : « du tomat » aurait dû s''écrire « des tomates » — mais même en acceptant l''erreur d''accord, la soudure « dutomat » est avant tout une erreur de segmentation. L''élève ne distingue pas les frontières entre le déterminant « du » (ou « des ») et le nom « tomates ». Ce type d''erreur est caractéristique des scripteurs débutants qui n''ont pas encore stabilisé la notion de mot.',
  'Au CRPE, il faut identifier l''erreur principale. Ici, même si « tomat » contient aussi une erreur morphographique (absence du -es du féminin pluriel), l''erreur dominante est la segmentation : les mots ne sont pas séparés.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — tri_categories — Classer les erreurs d'une dictée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Intermediaire',
  'tri_categories',
  'Classez chaque erreur relevée dans cette dictée d''élève selon son type (phonographique, morphographique ou logographique).',
  'Dictée d''un élève de CM1 (les erreurs sont entre astérisques) : « Les *enfent* *son* *parti* très vite après la récréation. La maîtresse *a* fermé la porte de la classe et tout le monde s''est assis. »',
  '[{"id":"tc14q9w1","label":"enfent (pour enfants)"},{"id":"tc14q9w2","label":"son (pour sont)"},{"id":"tc14q9w3","label":"parti (pour partis)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"phono","label":"Erreur phonographique"},{"id":"morpho","label":"Erreur morphographique"},{"id":"logo","label":"Erreur logographique"}],"mapping":{"tc14q9w1":"phono","tc14q9w2":"logo","tc14q9w3":"morpho"}}'::jsonb,
  '« enfent » pour « enfants » cumule deux types d''erreurs : une erreur phonographique (le son [ɑ̃] est transcrit « en » au lieu de « an ») et une erreur morphographique (le morphogramme « -s » du pluriel est absent). Dans un exercice de tri, on retient l''erreur phonographique comme erreur principale car elle porte sur la transcription du son. « son » pour « sont » est une erreur logographique : l''élève confond deux homophones grammaticaux (le déterminant possessif et le verbe être). « parti » pour « partis » est une erreur morphographique : le participe passé employé avec « être » doit s''accorder avec le sujet pluriel.',
  'Au CRPE, les candidats confondent souvent erreur phonographique et logographique. Le critère distinctif : dans l''erreur logographique, le mot écrit existe mais ce n''est pas le bon (son/sont). Dans l''erreur phonographique, le graphème choisi ne transcrit pas correctement le son.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — tri_categories — Classer les erreurs d'une dictée complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2050000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'orthographe_dictees_eleves',
  'Correction de dictées d''élèves : analyse des erreurs',
  'Avancé',
  'tri_categories',
  'Classez chaque erreur relevée dans cette dictée d''élève selon son type (phonographique, morphographique, logographique ou segmentation).',
  'Dictée d''un élève de CM2 (les erreurs sont entre astérisques) : « *Lapré midi*, les élèves *on* travaillé sur un *nouvau* projet. Ils ont *dessiner* des affiches pour la fête de l''école. La directrice était très contente du résultat. »',
  '[{"id":"tc14q10w1","label":"Lapré midi (pour L''après-midi)"},{"id":"tc14q10w2","label":"on (pour ont)"},{"id":"tc14q10w3","label":"nouvau (pour nouveau)"},{"id":"tc14q10w4","label":"dessiner (pour dessiné)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"segment","label":"Erreur de segmentation"},{"id":"logo","label":"Erreur logographique"},{"id":"phono","label":"Erreur phonographique"},{"id":"morpho","label":"Erreur morphographique"}],"mapping":{"tc14q10w1":"segment","tc14q10w2":"logo","tc14q10w3":"phono","tc14q10w4":"morpho"}}'::jsonb,
  '« Lapré midi » est une erreur de segmentation : l''élève a mal découpé « l''après-midi » en soudant l''article et en séparant mal les syllabes. « on » pour « ont » est une erreur logographique : confusion entre le pronom indéfini « on » et le verbe avoir « ont ». « nouvau » pour « nouveau » est une erreur phonographique : le graphème « -eau » [o] est réduit à « -au ». « dessiner » pour « dessiné » est une erreur morphographique : confusion infinitif/participe passé, l''élève n''a pas identifié que le verbe est conjugué avec l''auxiliaire avoir.',
  'Au CRPE, cette dictée illustre les 4 grands types d''erreurs orthographiques selon la typologie d''André Angoujard. L''erreur la plus difficile à catégoriser est « dessiner/dessiné » : c''est bien morphographique car la confusion porte sur un morphogramme grammatical (-er/-é), pas sur la transcription d''un son.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
