-- Migration: série orth_rectifications_1990 (10 questions)
-- Rectifications orthographiques de 1990 — Orthographe CRPE
-- UUID prefix: t0510000
-- Types : qcm, vrai_faux, reponse_courte, tri_categories
-- Niveaux : 3 Facile + 4 Intermediaire + 3 Difficile
-- Access : 5 free + 5 premium
-- CRPE : les deux graphies (ancienne et rectifiée) sont acceptées — aucune n'est fautive

-- ============================================================================
-- Q1 — Facile — QCM — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Facile',
  'qcm',
  'Parmi les mots suivants, lequel conserve obligatoirement son accent circonflexe dans les rectifications de 1990, car sa suppression créerait une confusion avec un autre mot ?',
  NULL,
  '[{"id":"a","label":"Coût"},{"id":"b","label":"Dû"},{"id":"c","label":"Île"},{"id":"d","label":"Boîte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le mot « dû » (participe passé de « devoir ») conserve obligatoirement son accent circonflexe pour éviter la confusion avec l''article « du ». C''est une exception explicite des rectifications de 1990 : l''accent circonflexe est supprimé sur i et u SAUF dans les cas d''homonymie. Les cinq exceptions principales sont : dû/du, mûr/mur, sûr/sur, jeûne/jeune, crû/cru. En revanche, « coût » peut s''écrire « cout », « île » peut s''écrire « ile » et « boîte » peut s''écrire « boite » sans risque de confusion.',
  'Croire que tous les accents circonflexes sont supprimés sans exception. Les rectifications maintiennent le circonflexe quand il distingue deux mots différents (homonymie).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — Facile — Vrai/Faux — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : selon les rectifications orthographiques de 1990, l''ancienne graphie « événement » est désormais considérée comme fautive.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Les rectifications de 1990 ne rendent AUCUNE ancienne graphie fautive. Elles proposent des graphies alternatives recommandées, mais les deux formes coexistent : « événement » (graphie traditionnelle) et « évènement » (graphie rectifiée) sont toutes deux correctes. Le Bulletin officiel de l''Éducation nationale précise que « aucune des deux graphies ne peut être tenue pour fautive ». Au CRPE, le candidat peut utiliser l''une ou l''autre sans être pénalisé, mais il doit connaître l''existence des deux formes.',
  'Croire que les rectifications de 1990 ont rendu les anciennes graphies incorrectes. C''est le piège le plus fréquent au CRPE : les rectifications RECOMMANDENT de nouvelles formes sans INTERDIRE les anciennes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — Facile — QCM — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Facile',
  'qcm',
  'Comment s''écrit « vingt et un » selon les rectifications orthographiques de 1990 ?',
  NULL,
  '[{"id":"a","label":"Vingt et un (sans traits d''union)"},{"id":"b","label":"Vingt-et-un (avec deux traits d''union)"},{"id":"c","label":"Vingtetun (soudé)"},{"id":"d","label":"Vingt-et un (un seul trait d''union)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Selon les rectifications de 1990, tous les numéraux composés sont systématiquement reliés par des traits d''union : « vingt-et-un », « deux-cents », « trois-mille-deux-cent-vingt-et-un ». Avant les rectifications, seuls les numéraux inférieurs à cent prenaient un trait d''union (sauf autour de « et »). Cette règle simplifie considérablement l''écriture des nombres : on met un trait d''union partout, sans exception. C''est l''une des rectifications les plus simples à retenir.',
  'Oublier le trait d''union autour de « et ». Dans la graphie traditionnelle, « vingt et un » ne prenait pas de trait d''union. Avec les rectifications, TOUS les éléments sont reliés : « vingt-et-un ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — Intermediaire — tri_categories — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon qu''il s''agit de la graphie traditionnelle (ancienne) ou de la graphie rectifiée (1990).',
  NULL,
  NULL,
  '{"mode":"categories","categories":["Graphie traditionnelle","Graphie rectifiée"],"items":[{"text":"Paraître","category":"Graphie traditionnelle"},{"text":"Connaitre","category":"Graphie rectifiée"},{"text":"Cout","category":"Graphie rectifiée"},{"text":"Entraîner","category":"Graphie traditionnelle"},{"text":"Ile","category":"Graphie rectifiée"},{"text":"Maîtrise","category":"Graphie traditionnelle"}]}'::jsonb,
  'Les rectifications de 1990 suppriment l''accent circonflexe sur i et u (sauf cas d''homonymie). Ainsi : « paraître » → « paraitre », « coût » → « cout », « entraîner » → « entrainer », « île » → « ile », « maîtrise » → « maitrise », « connaître » → « connaitre ». Les formes avec accent sont les graphies traditionnelles, celles sans accent sont les graphies rectifiées. Au CRPE, un candidat doit être capable d''identifier les deux formes et de savoir que les deux sont acceptées.',
  'Confondre graphie traditionnelle et graphie rectifiée, ou croire que la suppression du circonflexe concerne toutes les voyelles. Elle ne concerne que le i et le u, pas le a, le e ou le o (« pâte », « forêt », « côte » gardent leur accent).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — Intermediaire — QCM — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Intermediaire',
  'qcm',
  'Quelle est la graphie rectifiée correcte du mot « aiguë » selon les rectifications de 1990 ?',
  NULL,
  '[{"id":"a","label":"Aigüe"},{"id":"b","label":"Aigue"},{"id":"c","label":"Aigûe"},{"id":"d","label":"Aiguë (inchangé)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La graphie rectifiée est « aigüe » : le tréma est déplacé sur la voyelle qui est effectivement prononcée (le u), et non sur le e muet. Le même principe s''applique à « ambiguë » → « ambigüe », « exiguë » → « exigüe ». Le tréma sur le e dans « aiguë » était historiquement illogique puisque c''est le u qui porte la prononciation distincte [gy]. Les rectifications corrigent cette incohérence en plaçant le tréma là où il a un rôle phonétique réel.',
  'Supprimer le tréma au lieu de le déplacer. Les rectifications ne suppriment pas le tréma : elles le déplacent sur la voyelle prononcée (le u). La réponse « aigue » sans tréma serait incorrecte.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — Intermediaire — Réponse courte — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Intermediaire',
  'reponse_courte',
  'Écrivez la graphie rectifiée (1990) du mot « événement ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["évènement","evenement","èvènement"]}'::jsonb,
  'La graphie rectifiée est « évènement ». Les rectifications de 1990 prévoient le remplacement de l''accent aigu par un accent grave devant une syllabe contenant un e muet final : « événement » → « évènement ». Le même principe s''applique à « réglementaire » → « règlementaire », « sécheresse » → « sècheresse », « crémerie » → « crèmerie ». L''accent grave reflète mieux la prononciation réelle du e ouvert [ɛ] devant une syllabe muette.',
  'Écrire « évenement » (sans accent sur le deuxième e) ou « evenement » (sans aucun accent). La rectification ne concerne que le deuxième é qui devient è : le premier accent aigu sur le é initial est maintenu.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — Intermediaire — Vrai/Faux — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : selon les rectifications de 1990, le pluriel de « un compte-goutte » s''écrit « des compte-gouttes » (marque du pluriel uniquement sur le second élément).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Les rectifications de 1990 simplifient le pluriel des noms composés de type verbe+nom et préposition+nom : la marque du pluriel se porte uniquement sur le second élément. On écrit donc : « un compte-goutte, des compte-gouttes » ; « un après-midi, des après-midis » ; « un pèse-lettre, des pèse-lettres ». Le premier élément (verbe ou préposition) reste invariable, seul le nom prend la marque du pluriel. Cette règle élimine les nombreuses hésitations de la graphie traditionnelle.',
  'Croire que le verbe dans un nom composé verbe+nom peut prendre un s au pluriel. Le verbe reste toujours invariable : « des compte-gouttes » et non « des comptes-gouttes ».',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q8 — Difficile — QCM — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Difficile',
  'qcm',
  'Un candidat au CRPE écrit dans sa copie : « Les élèves doivent connaitre les mots suivants : mur (adjectif), sur (adjectif), du (participe passé), jeune (abstinence de nourriture). » Son correcteur relève des erreurs. Lesquelles ?',
  NULL,
  '[{"id":"a","label":"Aucune erreur : les rectifications suppriment tous les circonflexes sur u"},{"id":"b","label":"Erreurs sur les quatre mots : tous gardent leur circonflexe"},{"id":"c","label":"Erreurs sur « mur », « sur », « du » et « jeune » : ces quatre mots gardent leur accent car ce sont des cas d''homonymie"},{"id":"d","label":"Erreur seulement sur « du » : seul celui-ci garde son accent"},{"id":"e","label":"Erreurs sur « mur » et « jeune » seulement : « sur » et « du » perdent leur accent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les quatre mots sont des cas d''homonymie et conservent obligatoirement leur accent circonflexe : « mûr » (adjectif) ≠ « mur » (nom), « sûr » (adjectif, = certain) ≠ « sur » (préposition), « dû » (participe passé de devoir) ≠ « du » (article contracté), « jeûne » (abstinence) ≠ « jeune » (peu âgé). Il faut y ajouter « crû » (participe passé de croître) ≠ « cru » (participe passé de croire). Ces cinq cas sont les exceptions majeures à la suppression du circonflexe sur i et u. C''est un piège classique du CRPE.',
  'Oublier que « sûr » et « mûr » sont aussi des exceptions. Les candidats retiennent souvent « dû » mais oublient les autres cas d''homonymie. Les cinq exceptions à mémoriser : dû, mûr, sûr, jeûne, crû.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — Difficile — Réponse courte — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Difficile',
  'reponse_courte',
  'Les rectifications de 1990 prévoient la soudure de certains mots composés. Écrivez la graphie rectifiée (en un seul mot, sans trait d''union) de « porte-monnaie ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["portemonnaie"]}'::jsonb,
  'La graphie rectifiée est « portemonnaie » (soudé, sans trait d''union). Les rectifications de 1990 prévoient la soudure de nombreux mots composés, notamment ceux formés avec des éléments savants ou des prépositions : « portemonnaie », « weekend », « pingpong », « piquenique », « plateforme », « millepatte ». L''objectif est de simplifier l''écriture en éliminant les traits d''union jugés inutiles. La graphie traditionnelle « porte-monnaie » reste néanmoins valide.',
  'Ajouter un trait d''union ou un espace. La graphie rectifiée est entièrement soudée : « portemonnaie ». Beaucoup de candidats hésitent entre soudure et trait d''union ; au CRPE, il faut connaître les principaux cas de soudure prévus par les rectifications.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — Difficile — QCM — free (rééquilibrage pour 5 free / 5 premium)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0510000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'orth_rectifications_1990',
  'Rectifications orthographiques de 1990',
  'Difficile',
  'qcm',
  'Au CRPE, un candidat corrige la dictée d''un élève et marque comme faute le mot « nénufar ». Cette correction est-elle justifiée ?',
  NULL,
  '[{"id":"a","label":"Oui : « nénuphar » avec ph est la seule graphie correcte"},{"id":"b","label":"Non : « nénufar » avec f est la graphie rectifiée (1990) et elle est parfaitement correcte"},{"id":"c","label":"Non : les deux graphies sont correctes, mais « nénufar » est la graphie recommandée par les rectifications"},{"id":"d","label":"Oui : « nénufar » est une faute car le mot vient du grec"},{"id":"e","label":"Non : « nénufar » est la seule graphie correcte depuis 1990"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La correction n''est pas justifiée. « Nénufar » est la graphie rectifiée recommandée par les rectifications de 1990, et elle est parfaitement correcte. Le mot vient en réalité de l''arabe (et non du grec), ce qui rend le « ph » étymologiquement injustifié. Les rectifications ont rétabli le f conformément à l''étymologie réelle. Cependant, « nénuphar » reste également valide : les deux graphies coexistent. Un enseignant ne doit compter aucune des deux formes comme fautive. Ce cas est emblématique des rectifications et revient régulièrement dans les sujets de CRPE.',
  'Croire que « nénuphar » vient du grec (ce qui justifierait le ph). Le mot vient de l''arabe « nīnūfar », ce qui rend le f étymologiquement correct. C''est aussi une erreur de croire que « nénufar » est devenu la SEULE graphie correcte : les deux formes coexistent.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
