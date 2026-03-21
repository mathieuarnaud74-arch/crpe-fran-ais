-- ==========================================================================
-- Migration corrective : conformité terminologie officielle Éduscol 2021
-- Réf. : "Grammaire du français — Terminologie grammaticale" (ISBN 978-2-11-155900-4)
-- ==========================================================================
-- 3 corrections critiques :
--   1. Exclamation = FORME de phrase (pas un type). 3 types, pas 4.
--   2. "donc" = adverbe (pas conjonction de coordination). 6 conj., pas 7.
--   3. "verbe copule/d'état" → "verbe attributif" (terme officiel).
-- ==========================================================================


-- ══════════════════════════════════════════════════════════════════════════
-- PARTIE 1 — EXCLAMATION = FORME, PAS TYPE (3 types : déclaratif, interrogatif, impératif)
-- ══════════════════════════════════════════════════════════════════════════

-- Q3 série 35 (analyse_langue_v2) — anciennement "type exclamatif = vrai" → FAUX
UPDATE public.exercises
SET
  instruction = 'Vrai ou faux ? Selon la terminologie officielle (Éduscol 2021), la phrase « Que tu chantes bien ! » est de type exclamatif.',
  expected_answer = '{"mode":"boolean","value":false}'::jsonb,
  detailed_explanation = 'Faux ! Selon la terminologie officielle (Éduscol 2021), l''exclamation n''est pas un TYPE de phrase mais une FORME de phrase. Il n''existe que trois types : déclaratif, interrogatif et impératif. L''exclamation est une forme qui peut se combiner avec n''importe quel type, comme la forme négative ou passive. La phrase « Que tu chantes bien ! » est donc une phrase de forme exclamative, mais son type est déclaratif (elle énonce un jugement). Cette distinction type/forme est un point de vigilance majeur au CRPE.'
WHERE id = '35000000-0000-0000-0000-000000000003';

-- Q5 série 35 (analyse_langue_v2) — "4 types = vrai" → FAUX
UPDATE public.exercises
SET
  instruction = 'Vrai ou faux ? Il existe exactement quatre types de phrases en français : déclaratif, interrogatif, exclamatif et impératif.',
  expected_answer = '{"mode":"boolean","value":false}'::jsonb,
  detailed_explanation = 'Faux ! La terminologie officielle (Éduscol 2021) distingue exactement TROIS types de phrases : déclaratif, interrogatif et impératif. L''exclamation n''est pas un quatrième type mais une FORME de phrase, au même titre que la forme négative, passive, emphatique ou impersonnelle. Une phrase déclarative peut être exclamative (« C''est magnifique ! »), tout comme une phrase impérative (« Tais-toi donc ! »). L''exclamation est une nuance expressive qui se superpose à l''un des trois types.'
WHERE id = '35000000-0000-0000-0000-000000000005';

-- Q4 série 35 — retirer "Exclamatif" des choix, mettre "Déclaratif" à la place
UPDATE public.exercises
SET
  choices = '[{"id":"a","label":"Déclaratif"},{"id":"b","label":"Impératif"},{"id":"c","label":"Interrogatif"},{"id":"d","label":"Forme exclamative"}]'::jsonb,
  detailed_explanation = 'La phrase impérative exprime un ordre, un conseil ou une interdiction. Son trait formel principal : l''absence de sujet exprimé, avec le verbe à l''impératif. Ici, « N''oubliez pas vos affaires » est une injonction négative — le sujet « vous » est sous-entendu. Le type impératif est l''un des trois types de phrases reconnus par la terminologie officielle (déclaratif, interrogatif, impératif). L''exclamation est une forme, pas un type : elle peut s''ajouter à n''importe quel type (« Tais-toi ! » = impérative + exclamative).'
WHERE id = '35000000-0000-0000-0000-000000000004';

-- Q1 série 35 — correction explication (retire "exclamative" des types)
UPDATE public.exercises
SET
  detailed_explanation = 'La phrase déclarative énonce un fait, une opinion ou une information — elle se termine par un point simple. La phrase b) est bien déclarative. La phrase a) est de forme exclamative mais reste déclarative dans son type (elle énonce un jugement). La phrase c) est impérative (ordre donné). La phrase d) est interrogative (« est-ce que »). La terminologie officielle distingue trois types (déclaratif, interrogatif, impératif) et plusieurs formes (négative, passive, exclamative, emphatique, impersonnelle). Ne confonds jamais type et forme !'
WHERE id = '35000000-0000-0000-0000-000000000001';

-- Q6 série 35 — correction explication
UPDATE public.exercises
SET
  detailed_explanation = 'La forme négative se construit en encadrant le verbe avec une locution négative, le plus souvent « ne…pas ». La phrase a) transforme correctement la phrase en forme négative. Les phrases b) et c) changent le type ou la forme de phrase mais ne la rendent pas négative. La phrase d) introduit un adverbe de fréquence mais reste à la forme positive. Retiens : type (déclaratif, interrogatif, impératif) et forme (négative, passive, exclamative, emphatique, impersonnelle) sont deux propriétés indépendantes qui se combinent librement.'
WHERE id = '35000000-0000-0000-0000-000000000006';

-- Série 05 (grm_types_phrases, seed_content_grammaire.sql) — corrections des explications
-- Q1 : "types" dans l'explication
UPDATE public.exercises
SET
  detailed_explanation = 'Une question directe avec un point d''interrogation — c''est une phrase de type interrogatif ! Les trois types de phrases selon la terminologie officielle : déclaratif (énoncer), interrogatif (questionner), impératif (ordonner). L''exclamation est une forme (pas un type) qui peut se combiner avec n''importe quel type. Le type correspond à l''INTENTION de communication. Ici : on pose une question → interrogatif.'
WHERE id = '05000000-0000-0000-0000-000000000002';

-- Q3 : explication mentionne "4 types"
UPDATE public.exercises
SET
  detailed_explanation = 'Un ordre, pas de pronom sujet devant le verbe, verbe à l''impératif — c''est une phrase de type impératif ! Attention au piège : le point d''exclamation à la fin ne définit PAS le type. Il indique une forme exclamative, mais le type reste impératif. Le vrai signal de l''impératif : verbe à l''impératif sans sujet exprimé. Retiens : il existe trois types (déclaratif, interrogatif, impératif) et plusieurs formes (exclamative, négative, passive…).'
WHERE id = '05000000-0000-0000-0000-000000000003';

-- Série 56 (grm_types_formes_phrases, seed_content_grammaire_v2.sql) — Q1 explication
UPDATE public.exercises
SET
  detailed_explanation = '« Le soleil brille sur la mer. » énonce un fait, c''est tout — c''est donc une phrase déclarative ! Elle se termine par un point simple. Les trois types de phrases reconnus par la terminologie officielle sont : déclaratif, interrogatif, impératif. L''exclamation n''est pas un type mais une forme de phrase. Reconnaître le type d''une phrase, c''est identifier l''intention de communication.'
WHERE id = '56000000-0000-0000-0000-000000000001';

-- Série 56 Q7 — "les quatre types" → "les trois types"
UPDATE public.exercises
SET
  instruction = 'Parmi les propositions suivantes, laquelle n''est PAS un type de phrase reconnu par la terminologie officielle ?',
  choices = '[{"id":"a","label":"Déclaratif"},{"id":"b","label":"Subjectif"},{"id":"c","label":"Exclamatif"},{"id":"d","label":"Impératif"}]'::jsonb,
  expected_answer = '{"mode":"single_choice","value":"b"}'::jsonb,
  detailed_explanation = 'Le « type subjectif » n''existe pas ! Mais attention : « exclamatif » n''est pas non plus un type de phrase selon la terminologie officielle (Éduscol 2021). L''exclamation est une FORME de phrase. La terminologie officielle reconnaît trois types : déclaratif, interrogatif, impératif. Cependant, la tradition scolaire a longtemps retenu quatre types en incluant l''exclamatif — la terminologie 2021 a clarifié ce point. Le subjonctif, lui, est un MODE VERBAL, pas un type de phrase.'
WHERE id = '56000000-0000-0000-0000-000000000009';


-- ══════════════════════════════════════════════════════════════════════════
-- PARTIE 2 — "DONC" = ADVERBE (6 conjonctions de coordination, pas 7)
-- ══════════════════════════════════════════════════════════════════════════

-- Série 01 Q5 (seed_content_grammaire.sql) — explication "7 conjonctions"
UPDATE public.exercises
SET
  detailed_explanation = '« Et » relie deux groupes nominaux de même fonction syntaxique — ce sont deux sujets coordonnés. C''est une conjonction de coordination. Selon la terminologie officielle (Éduscol 2021), il existe six conjonctions de coordination : mais, ou, et, or, ni, car. Attention : « donc » est classé comme un ADVERBE (il peut apparaître en différentes positions : « Tu pars donc ? », « Donc, tu pars. »). Le moyen mnémotechnique « Mais où est donc Ornicar ? » reste utile mais « donc » n''y est pas une conjonction.'
WHERE id = '01000000-0000-0000-0000-000000000005';

-- Série 60 Q1 (seed_content_grammaire_v2.sql) — explication "7 conjonctions"
UPDATE public.exercises
SET
  detailed_explanation = '« Car » — coordination ! La terminologie officielle (Éduscol 2021) reconnaît six conjonctions de coordination : mais, ou, et, or, ni, car. « Donc » est classé comme un adverbe de liaison, et non comme une conjonction. La coordination unit deux propositions de même niveau syntaxique. La subordination, elle, crée une dépendance hiérarchique (principale → subordonnée). La juxtaposition se fait par la seule ponctuation, sans mot de liaison. Ici, « car » est une conjonction de coordination → coordination.'
WHERE id = '60000000-0000-0000-0000-000000000001';

-- Série 60 Q5 (seed_content_grammaire_v2.sql) — "conjonction de coordination donc"
UPDATE public.exercises
SET
  instruction = 'Quel lien logique l''adverbe de liaison « donc » exprime-t-il ?',
  detailed_explanation = '« Donc » exprime la conséquence : la deuxième proposition DÉCOULE logiquement de la première. Attention : selon la terminologie officielle (Éduscol 2021), « donc » n''est pas une conjonction de coordination mais un ADVERBE de liaison (il peut apparaître en différentes positions dans la phrase). Les six conjonctions de coordination sont : mais (opposition), ou (alternative), et (addition), or (transition), ni (négation additive), car (cause). Connaître la classe grammaticale exacte de ces mots de liaison est essentiel au CRPE.'
WHERE id = '60000000-0000-0000-0000-000000000005';

-- seed.sql Q5 — même correction
UPDATE public.exercises
SET
  detailed_explanation = '"Et" relie deux groupes nominaux de même fonction — c''est une conjonction de coordination. Selon la terminologie officielle (Éduscol 2021), il existe six conjonctions de coordination : mais, ou, et, or, ni, car. « Donc » est classé comme adverbe de liaison. Le moyen mnémotechnique « Mais où est donc Ornicar ? » reste un classique mais attention : « donc » n''y figure pas en tant que conjonction.'
WHERE id = '11111111-1111-1111-1111-111111111127';


-- ══════════════════════════════════════════════════════════════════════════
-- PARTIE 3 — "VERBE COPULE / D'ÉTAT" → "VERBE ATTRIBUTIF"
-- ══════════════════════════════════════════════════════════════════════════

-- Série 66 Q3 (seed_content_grammaire_v3.sql) — choix "verbe copule" → "verbe attributif"
UPDATE public.exercises
SET
  choices = '[{"id":"a","label":"« semblent » uniquement"},{"id":"b","label":"« fatigués » uniquement"},{"id":"c","label":"Le verbe attributif « semblent » est le noyau du GV, dont l''attribut « fatigués » est un constituant obligatoire"},{"id":"d","label":"Les deux mots « semblent fatigués » forment ensemble un verbe composé à deux noyaux"}]'::jsonb,
  detailed_explanation = 'Avec les verbes attributifs comme sembler, paraître, devenir, rester — le noyau du GV c''est bien le verbe, mais l''attribut devient un constituant OBLIGATOIRE. Sans « fatigués », la phrase est incomplète : « Les élèves semblent... » — et alors ? L''attribut est non supprimable ici. Le terme officiel (Éduscol 2021) est « verbe attributif » (et non « verbe d''état » ou « verbe copule »). C''est différent du verbe transitif (où le COD est essentiel mais de nature différente) et du verbe intransitif (sans complément essentiel).'
WHERE id = '66000000-0000-0000-0000-000000000003';
