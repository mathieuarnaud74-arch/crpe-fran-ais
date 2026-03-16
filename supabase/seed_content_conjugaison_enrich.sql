-- CRPE Français — Enrichissement Conjugaison (3 séries × 5 questions supplémentaires)
-- Ajoute 5 questions aux séries : conj_subjonctif, conj_concordance_temps, conj_valeurs_temps
-- Préfixes IDs : 84, 85, 86

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- ENRICHISSEMENT — conj_subjonctif (5 questions supplémentaires)
-- Série 84
-- ================================================================

('84000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Quelle est la forme correcte du subjonctif présent de « savoir » à la 3e personne du singulier ?',null,
'[{"id":"a","label":"sache"},{"id":"b","label":"sait"},{"id":"c","label":"save"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Savoir » a un subjonctif irrégulier : que je sache, que tu saches, qu''il sache, que nous sachions, que vous sachiez, qu''ils sachent. À ne pas confondre avec l''indicatif présent (il sait). Les verbes irréguliers au subjonctif à connaître pour le CRPE : être (soit), avoir (ait), aller (aille), vouloir (veuille), pouvoir (puisse), savoir (sache), falloir (faille).',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('84000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Dans quelle phrase le subjonctif est-il correctement employé ?',null,
'[{"id":"a","label":"« Je sais qu''il vienne demain. »"},{"id":"b","label":"« Je veux qu''il vienne demain. »"},{"id":"c","label":"« Je vois qu''il vienne demain. »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le subjonctif s''emploie après les verbes de volonté, souhait, obligation : « vouloir », « souhaiter », « exiger »… → « je veux qu''il vienne » est correct. Après les verbes de perception ou de certitude (savoir, voir, croire en phrase affirmative) → indicatif : « je sais qu''il vient », « je vois qu''il vient ». Cette distinction indicatif/subjonctif après la complétive est une règle fondamentale.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('84000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Après quelle locution conjonctive emploie-t-on le subjonctif ?',null,
'[{"id":"a","label":"« parce que »"},{"id":"b","label":"« bien que »"},{"id":"c","label":"« depuis que »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Bien que » est une locution de concession qui se construit avec le subjonctif : « bien qu''il pleuve ». Les locutions de concession (bien que, quoique, encore que) + les locutions de but (afin que, pour que) + les locutions de crainte (de peur que, de crainte que) → subjonctif. « Parce que » et « depuis que » se construisent avec l''indicatif (cause, temps).',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('84000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','vrai_faux',
'Vrai ou faux : dans « Bien qu''il soit fatigué, il continue », le verbe de la subordonnée est au subjonctif car « bien que » exprime la cause.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. « Bien que » exprime la concession (ou opposition), non la cause. La cause s''exprime avec « parce que » + indicatif. La concession implique que le fait subordonné ne s''oppose pas à la réalisation du fait principal : « bien qu''il soit fatigué » (malgré sa fatigue), il continue. Le subjonctif après « bien que » marque que le fait concessif est posé comme réel mais ne suffit pas à empêcher l''action principale.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('84000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Quelle est la forme du subjonctif présent de « aller » à la 1re personne du pluriel ?',null,
'[{"id":"a","label":"que nous allons"},{"id":"b","label":"que nous allions"},{"id":"c","label":"que nous aillions"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Aller » au subjonctif présent : que j''aille, que tu ailles, qu''il aille, que nous allions, que vous alliez, qu''ils aillent. La 1re et 2e personne du pluriel sont régulières (radicale + -ions, -iez) alors que les autres personnes ont un radical irrégulier (aille-). Même modèle pour « vouloir » : que nous voulions (régulier) / que je veuille (irrégulier).',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

-- ================================================================
-- ENRICHISSEMENT — conj_concordance_temps (5 questions supplémentaires)
-- Série 85
-- ================================================================

('85000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','qcm',
'Dans le discours indirect, comment transforme-t-on « Je viendrai » (présent direct) quand le verbe introducteur est au passé ?',null,
'[{"id":"a","label":"On garde le futur simple : il dit qu''il viendra"},{"id":"b","label":"On le met au conditionnel présent (futur du passé) : il dit qu''il viendrait"},{"id":"c","label":"On le met à l''imparfait : il dit qu''il venait"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Concordance des temps au discours indirect : quand le verbe introducteur est au passé, le futur direct devient conditionnel présent (futur du passé) dans la subordonnée. Règle de base : discours direct « je viendrai » → discours indirect avec V intro au passé : « il dit qu''il viendrait ». Le conditionnel présent joue donc un double rôle : mode du possible et futur du passé dans le discours indirect.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('85000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','qcm',
'Dans la phrase « Il pensait qu''elle était partie », quel temps est employé dans la subordonnée et pourquoi ?',null,
'[{"id":"a","label":"Plus-que-parfait, pour exprimer une action antérieure à l''action principale passée"},{"id":"b","label":"Imparfait, pour exprimer la simultanéité"},{"id":"c","label":"Passé composé, pour exprimer l''aspect accompli"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le verbe principal « pensait » est à l''imparfait (passé). Dans la subordonnée, « était partie » (plus-que-parfait) exprime une action antérieure à la pensée : elle était déjà partie au moment où il pensait. Règle de concordance : V principal passé → subordonnée avec action antérieure = plus-que-parfait ; action simultanée = imparfait ; action postérieure = conditionnel présent.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('85000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','qcm',
'Laquelle de ces phrases présente une erreur de concordance des temps ?',null,
'[{"id":"a","label":"« Il savait qu''elle partirait le lendemain. »"},{"id":"b","label":"« Il savait qu''elle partira le lendemain. »"},{"id":"c","label":"« Il savait qu''elle était déjà partie. »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La phrase (b) est incorrecte : après « il savait » (passé), le futur simple « partira » viole la concordance des temps. Le futur simple s''emploie quand le V principal est au présent. Après un V principal au passé, le futur du passé (conditionnel présent) est requis : « il savait qu''elle partirait » (a). La forme (c) est correcte : plus-que-parfait pour une action antérieure.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('85000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','vrai_faux',
'Vrai ou faux : la règle de concordance des temps s''applique strictement dans tous les registres du français moderne.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. La concordance des temps est obligatoire dans le registre soutenu et dans l''écrit formel, mais elle est souvent assouplie ou ignorée dans l''oral courant et dans certains registres familiers. Des phrases comme « je croyais qu''il viendra » sont fréquentes à l''oral sans être perçues comme incorrectes dans la conversation. À l''écrit soigné (CRPE épreuve écrite), la concordance doit être respectée.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('85000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','qcm',
'Dans « Si j''avais su, je serais venu », quelle règle de concordance est illustrée ?',null,
'[{"id":"a","label":"Condition irréelle dans le passé : si + plus-que-parfait → conditionnel passé"},{"id":"b","label":"Condition possible dans le futur : si + présent → futur"},{"id":"c","label":"Condition hypothétique présente : si + imparfait → conditionnel présent"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La structure « si + plus-que-parfait → conditionnel passé » exprime une condition irréelle dans le passé : on n''a pas su, donc on n''est pas venu. Les trois structures conditionnelles à maîtriser : (1) Condition possible : si + présent → futur/présent ; (2) Condition hypothétique présente : si + imparfait → conditionnel présent ; (3) Condition irréelle passée : si + plus-que-parfait → conditionnel passé.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

-- ================================================================
-- ENRICHISSEMENT — conj_valeurs_temps (5 questions supplémentaires)
-- Série 86
-- ================================================================

('86000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du présent de l''indicatif dans : « En 1789, la Révolution éclate et le roi fuit. » ?',null,
'[{"id":"a","label":"Présent d''énonciation (maintenant)"},{"id":"b","label":"Présent de narration (ou présent historique) — il actualise un événement passé"},{"id":"c","label":"Présent de vérité générale"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le présent de narration (ou présent historique) emploie le présent pour raconter des faits passés, leur donnant une vivacité dramatique. Il est fréquent dans les récits historiques, les résumés littéraires et le style journalistique. À distinguer du présent d''énonciation (ce qui se passe maintenant), du présent de vérité générale (les lois, proverbes) et du présent à valeur de futur proche (« Je pars demain »).',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('86000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur de l''imparfait dans : « Elle lisait chaque soir pendant une heure. » ?',null,
'[{"id":"a","label":"Imparfait de rupture"},{"id":"b","label":"Imparfait d''habitude (aspect itératif)"},{"id":"c","label":"Imparfait pittoresque"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Elle lisait chaque soir » : l''imparfait + un indicateur de répétition (chaque soir) exprime une habitude passée (aspect itératif). L''imparfait d''habitude représente une action répétée régulièrement dans le passé, sans début ni fin précis. Autres valeurs de l''imparfait : description (cadre), simultanéité, imparfait hypocoristique (« Elle voulait de l''eau ? »), imparfait de politesse, imparfait contrefactuel (si + imparfait).',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('86000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Dans « Il aurait menti selon les témoins », quelle valeur du conditionnel est exprimée ?',null,
'[{"id":"a","label":"Conditionnel d''hypothèse irréelle"},{"id":"b","label":"Conditionnel journalistique (ou de l''information non vérifiée)"},{"id":"c","label":"Futur du passé"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le conditionnel journalistique (ou conditionnel de l''ouï-dire) est employé pour rapporter des faits non confirmés, des rumeurs ou des informations attribuées à une source externe. Il marque que le locuteur ne prend pas en charge la vérité de l''assertion. Cette valeur est systématiquement employée dans la presse (« Le suspect aurait fui à l''étranger ») et est attendue dans l''analyse de textes médiatiques au CRPE.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('86000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du futur simple dans : « Tu prendras ce médicament trois fois par jour. » ?',null,
'[{"id":"a","label":"Futur de prediction"},{"id":"b","label":"Futur à valeur d''impératif (prescription ou ordre atténué)"},{"id":"c","label":"Futur historique"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans les ordonnances médicales, modes d''emploi et prescriptions, le futur simple exprime un ordre ou une obligation de façon plus atténuée et moins directe que l''impératif. C''est le futur à valeur prescriptive ou injonctive : « vous prendrez », « vous éviterez ». Il est courant dans les textes officiels, les consignes scolaires et les instructions techniques, où l''impératif paraîtrait trop abrupt.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('86000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux : le passé simple exprime uniquement des actions courtes et ponctuelles dans le passé.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Le passé simple exprime des actions envisagées dans leur globalité, comme délimitées et closes, indépendamment de leur durée réelle. Il peut décrire une action brève (« il tomba ») comme une action longue (« il régna vingt ans »). Ce qui compte, c''est l''aspect global (l''action est présentée comme un tout achevé), non la durée. À opposer à l''imparfait, qui présente l''action en cours, sans bornes.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true)

;
