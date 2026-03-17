-- CRPE Français — Compléments Module V1 (séries incomplètes)
-- Complète les séries formes_de_phrase_et_voix_passive (56) et transformations_de_phrase_crpe (57)
-- Préfixes IDs : 56 (questions 9-10), 57 (questions 9-10)

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- Série 56 — Formes de phrase et voix passive (questions 9-10)
-- ================================================================

(
  '56000000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'formes_de_phrase_et_voix_passive',
  'Formes de phrase et voix passive',
  'Intermediaire',
  'qcm',
  'Dans « La bibliothèque a été rénovée », que peut-on dire du complément d''agent ?',
  null,
  '[{"id":"a","label":"Il est absent — la phrase passive est donc incorrecte."},{"id":"b","label":"Il est absent, mais la phrase est correcte — l''agent est indéterminé ou délibérément effacé."},{"id":"c","label":"La phrase n''est pas vraiment à la voix passive sans complément d''agent."},{"id":"d","label":"Il est implicitement inclus dans le participe passé « rénovée »."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le complément d''agent est FACULTATIF dans la construction passive. Son absence est souvent intentionnelle : l''agent est inconnu, indéterminé, ou le locuteur préfère ne pas le nommer. C''est l''un des effets stylistiques recherchés du passif : mettre en avant l''objet de l''action en effaçant l''agent. Exemple typique dans les textes officiels : « Le décret a été signé » — on ne précise pas par qui. Une phrase passive sans complément d''agent est grammaticalement parfaite.',
  'valide',
  'Module Francais CRPE V1',
  'free',
  true
),

(
  '56000000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'formes_de_phrase_et_voix_passive',
  'Formes de phrase et voix passive',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans « Les lettres ont été envoyées par la directrice », le participe passé « envoyées » s''accorde avec « lettres » parce que c''est le sujet grammatical de la phrase.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai — au passif, le participe passé s''accorde toujours avec le sujet grammatical de la phrase. Ici « lettres » est féminin pluriel → « envoyées ». Rappel : le sujet de la phrase passive est l''ancien COD de la phrase active (« La directrice a envoyé les lettres » → « les lettres » devient sujet au passif). Cette règle est simple et systématique : passif = accord avec le sujet, sans exception.',
  'valide',
  'Module Francais CRPE V1',
  'free',
  true
),

-- ================================================================
-- Série 57 — Transformations de phrase type CRPE (questions 9-10)
-- ================================================================

(
  '57000000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'transformations_de_phrase_crpe',
  'Transformations de phrase type CRPE',
  'Intermediaire',
  'qcm',
  'Quelle est la mise en relief correcte du complément circonstanciel de temps dans : « Paul travaille le soir. » ?',
  null,
  '[{"id":"a","label":"C''est le soir que Paul travaille."},{"id":"b","label":"C''est le soir qui Paul travaille."},{"id":"c","label":"C''est Paul que le soir travaille."},{"id":"d","label":"C''est Paul qui travaille le soir."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour mettre en relief tout élément qui n''est pas sujet (COD, CC…), la tournure est « c''est… que ». Seul le sujet utilise « c''est… qui ». Ici, « le soir » est CC de temps → « C''est le soir QUE Paul travaille. » Rappel du tableau : sujet → c''est… qui ; COD et CC → c''est… que. Cette distinction qui/que dans la mise en relief est une manipulation syntaxique régulièrement évaluée au CRPE.',
  'valide',
  'Module Francais CRPE V1',
  'premium',
  true
),

(
  '57000000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'transformations_de_phrase_crpe',
  'Transformations de phrase type CRPE',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans « Le professeur répond aux questions des élèves », on peut pronominaliser « aux questions des élèves » par « leur » : « Le professeur leur répond. »',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux — et c''est un piège fréquent ! « Leur » remplace uniquement un COI désignant des personnes (animé). « Aux questions » désigne des choses (inanimé) → on pronominalise par « y » : « Le professeur y répond. » En revanche : « Le professeur répond aux élèves » → « Le professeur leur répond. » (personnes → leur). Retiens la règle : COI animé (personnes) → lui / leur ; COI inanimé (choses ou lieux) → y. Cette distinction est un classique des exercices de pronominalisation au CRPE.',
  'valide',
  'Module Francais CRPE V1',
  'premium',
  true
)

;
