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
'Attention, « savoir » est l''un des grands irréguliers du subjonctif — il faut le mémoriser ! Sa conjugaison complète : que je sache, que tu saches, qu''il sache, que nous sachions, que vous sachiez, qu''ils sachent. Ne le confonds pas avec l''indicatif présent (il sait) ! Retiens la liste des verbes irréguliers au subjonctif à connaître pour le CRPE : être → soit, avoir → ait, aller → aille, vouloir → veuille, pouvoir → puisse, savoir → sache, falloir → faille. Apprends-les comme une liste magique !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('84000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Dans quelle phrase le subjonctif est-il correctement employé ?',null,
'[{"id":"a","label":"« Je sais qu''il vienne demain. »"},{"id":"b","label":"« Je veux qu''il vienne demain. »"},{"id":"c","label":"« Je vois qu''il vienne demain. »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est la phrase b) ! Après les verbes de volonté et de souhait — vouloir, souhaiter, exiger — le subjonctif est obligatoire dans la subordonnée : « je veux qu''il vienne ». Mais après les verbes de perception ou de certitude — savoir, voir, croire en phrase affirmative — c''est l''indicatif : « je sais qu''il vient », « je vois qu''il vient ». Retiens la règle d''or : volonté/souhait/obligation → subjonctif ; certitude/perception → indicatif. Cette distinction est fondamentale — et un classique du CRPE !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('84000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Après quelle locution conjonctive emploie-t-on le subjonctif ?',null,
'[{"id":"a","label":"« parce que »"},{"id":"b","label":"« bien que »"},{"id":"c","label":"« depuis que »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Bien que » exige toujours le subjonctif — c''est une locution de concession ! Retiens les trois grandes familles qui déclenchent le subjonctif : concession (bien que, quoique, encore que) + but (afin que, pour que) + crainte (de peur que, de crainte que). À l''inverse, cause et temps se construisent avec l''indicatif : « parce que » → indicatif ; « depuis que » → indicatif. Apprends ces familles par groupes — c''est le meilleur moyen de ne plus hésiter !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('84000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','vrai_faux',
'Vrai ou faux : dans « Bien qu''il soit fatigué, il continue », le verbe de la subordonnée est au subjonctif car « bien que » exprime la cause.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et c''est un piège classique ! « Bien que » n''exprime pas la cause mais la concession (ou opposition). La cause, c''est « parce que » + indicatif. Retiens la différence : cause = « parce qu''il est fatigué, il s''arrête » (la fatigue explique l''arrêt) ; concession = « bien qu''il soit fatigué, il continue » (malgré la fatigue, il continue quand même !). Le subjonctif après « bien que » marque que le fait est réel mais ne suffit pas à empêcher l''action principale.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('84000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_subjonctif','Subjonctif présent','Intermediaire','qcm',
'Quelle est la forme du subjonctif présent de « aller » à la 1re personne du pluriel ?',null,
'[{"id":"a","label":"que nous allons"},{"id":"b","label":"que nous allions"},{"id":"c","label":"que nous aillions"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Retiens la conjugaison complète de « aller » au subjonctif : que j''aille, que tu ailles, qu''il aille, que nous allions, que vous alliez, qu''ils aillent. Les 1re et 2e personnes du pluriel sont régulières (radical + -ions, -iez), tandis que les autres personnes ont le radical irrégulier aille-. Même modèle pour « vouloir » : que nous voulions (régulier) / que je veuille (irrégulier). Ce contraste régulier/irrégulier dans la même conjugaison est typique des verbes irréguliers au subjonctif — Attention !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

-- ================================================================
-- ENRICHISSEMENT — conj_concordance_temps (5 questions supplémentaires)
-- Série 85
-- ================================================================

('85000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','qcm',
'Dans le discours indirect, comment transforme-t-on « Je viendrai » (présent direct) quand le verbe introducteur est au passé ?',null,
'[{"id":"a","label":"On garde le futur simple : il dit qu''il viendra"},{"id":"b","label":"On le met au conditionnel présent (futur du passé) : il dit qu''il viendrait"},{"id":"c","label":"On le met à l''imparfait : il dit qu''il venait"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Exactement ! Au discours indirect avec verbe introducteur au passé, le futur simple se transforme en conditionnel présent — le fameux "futur du passé". « Je viendrai » → « il dit qu''il viendrait ». Retiens : le conditionnel présent joue un double rôle en français — mode du possible ET futur du passé dans le discours indirect. C''est magnifique ! Tableau complet : présent → imparfait ; passé composé → plus-que-parfait ; futur simple → conditionnel présent. Apprends ce tableau par cœur !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('85000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','qcm',
'Dans la phrase « Il pensait qu''elle était partie », quel temps est employé dans la subordonnée et pourquoi ?',null,
'[{"id":"a","label":"Plus-que-parfait, pour exprimer une action antérieure à l''action principale passée"},{"id":"b","label":"Imparfait, pour exprimer la simultanéité"},{"id":"c","label":"Passé composé, pour exprimer l''aspect accompli"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'C''est le plus-que-parfait pour l''antériorité ! « Pensait » est à l''imparfait (passé), et « était partie » exprime une action accomplie AVANT la pensée — elle était déjà partie quand il pensait. Retiens le tableau de concordance quand le V principal est au passé : action antérieure → plus-que-parfait ; action simultanée → imparfait ; action postérieure → conditionnel présent. Ces trois cas couvrent toutes les situations — maîtrise-les et tu auras les outils pour analyser n''importe quel texte narratif !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('85000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','qcm',
'Laquelle de ces phrases présente une erreur de concordance des temps ?',null,
'[{"id":"a","label":"« Il savait qu''elle partirait le lendemain. »"},{"id":"b","label":"« Il savait qu''elle partira le lendemain. »"},{"id":"c","label":"« Il savait qu''elle était déjà partie. »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''erreur est en (b) ! Après « il savait » (verbe principal au passé), le futur simple « partira » viole la concordance des temps. Le futur simple s''emploie uniquement quand le V principal est au présent. Après un V principal au passé, il faut le conditionnel présent (futur du passé) : « il savait qu''elle partirait » — comme en (a). La phrase (c) est correcte : le plus-que-parfait pour une action antérieure. Retiens : futur simple après verbe au passé = faute de concordance ! C''est une erreur fréquente dans les copies au CRPE.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('85000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','vrai_faux',
'Vrai ou faux : la règle de concordance des temps s''applique strictement dans tous les registres du français moderne.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et c''est une nuance importante ! La concordance des temps est obligatoire dans le registre soutenu et dans l''écrit formel, mais elle est souvent assouplie à l''oral courant. Des phrases comme « je croyais qu''il viendra » s''entendent fréquemment dans la conversation sans choquer — le français oral a ses libertés ! Mais à l''écrit soigné — et notamment lors de l''épreuve écrite du CRPE — la concordance doit être respectée scrupuleusement. Retiens : oral = plus souple ; écrit formel = règle stricte.',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('85000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_concordance_temps','Concordance des temps','Difficile','qcm',
'Dans « Si j''avais su, je serais venu », quelle règle de concordance est illustrée ?',null,
'[{"id":"a","label":"Condition irréelle dans le passé : si + plus-que-parfait → conditionnel passé"},{"id":"b","label":"Condition possible dans le futur : si + présent → futur"},{"id":"c","label":"Condition hypothétique présente : si + imparfait → conditionnel présent"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'C''est la structure de l''hypothèse irréelle dans le passé : si + plus-que-parfait → conditionnel passé. En réalité : on n''a pas su, donc on n''est pas venu — c''est une condition qui ne s''est pas réalisée. Retiens les trois structures conditionnelles comme une grammaire en trois lignes : (1) si + présent → futur/présent = condition possible ; (2) si + imparfait → conditionnel présent = hypothèse irréelle présente ; (3) si + plus-que-parfait → conditionnel passé = condition irréelle passée. Trois structures, trois niveaux temporels — indispensables au CRPE !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

-- ================================================================
-- ENRICHISSEMENT — conj_valeurs_temps (5 questions supplémentaires)
-- Série 86
-- ================================================================

('86000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du présent de l''indicatif dans : « En 1789, la Révolution éclate et le roi fuit. » ?',null,
'[{"id":"a","label":"Présent d''énonciation (maintenant)"},{"id":"b","label":"Présent de narration (ou présent historique) — il actualise un événement passé"},{"id":"c","label":"Présent de vérité générale"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est le présent de narration — aussi appelé présent historique ! Il emploie le présent pour raconter des faits passés en leur donnant une vivacité dramatique, comme si on y était. Effet garanti ! Il est fréquent dans les récits historiques, les résumés littéraires et le style journalistique. Retiens les quatre grandes valeurs du présent : énonciation (ce qui se passe maintenant), narration (événement passé revivifié), vérité générale (lois, proverbes), futur proche (« Je pars demain »). Au CRPE, savoir les nommer toutes, c''est indispensable !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('86000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur de l''imparfait dans : « Elle lisait chaque soir pendant une heure. » ?',null,
'[{"id":"a","label":"Imparfait de rupture"},{"id":"b","label":"Imparfait d''habitude (aspect itératif)"},{"id":"c","label":"Imparfait pittoresque"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est l''imparfait d''habitude — aspect itératif ! L''indicateur de répétition « chaque soir » est la clé : il signale une action régulière, répétée sans début ni fin précis. L''imparfait d''habitude exprime ce que l''on faisait habituellement dans le passé. Retiens aussi les autres valeurs de l''imparfait : description/cadre, simultanéité avec une action principale, imparfait de politesse (« je voulais vous demander »), imparfait contrefactuel dans les conditionnelles (si + imparfait). L''imparfait est le temps aux multiples visages — apprends à les distinguer tous !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('86000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Dans « Il aurait menti selon les témoins », quelle valeur du conditionnel est exprimée ?',null,
'[{"id":"a","label":"Conditionnel d''hypothèse irréelle"},{"id":"b","label":"Conditionnel journalistique (ou de l''information non vérifiée)"},{"id":"c","label":"Futur du passé"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est le conditionnel journalistique — aussi appelé conditionnel de l''ouï-dire ! Il sert à rapporter des faits non confirmés ou des informations attribuées à une source externe, sans que le locuteur en prenne la responsabilité. Il dit en substance : "je ne garantis pas que c''est vrai". Tu le trouves partout dans la presse : « Le suspect aurait fui à l''étranger ». Retiens : conditionnel journalistique = distance énonciative, information non vérifiée. Cette valeur est attendue dans l''analyse de textes médiatiques au CRPE !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('86000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du futur simple dans : « Tu prendras ce médicament trois fois par jour. » ?',null,
'[{"id":"a","label":"Futur de prediction"},{"id":"b","label":"Futur à valeur d''impératif (prescription ou ordre atténué)"},{"id":"c","label":"Futur historique"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Retiens ce bel emploi du futur ! Dans les ordonnances médicales, modes d''emploi et prescriptions officielles, le futur simple exprime un ordre ou une obligation de façon plus atténuée et moins directe que l''impératif. C''est le futur prescriptif ou injonctif : « vous prendrez », « vous éviterez ». Il est très courant dans les textes officiels, les consignes scolaires et les instructions techniques — l''impératif y paraîtrait trop abrupt. Une valeur souvent ignorée, pourtant bien présente dans les textes que tu analyseras au CRPE !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true),

('86000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux : le passé simple exprime uniquement des actions courtes et ponctuelles dans le passé.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux — et c''est un contresens fréquent ! Le passé simple n''est pas défini par la durée mais par l''aspect global : il présente l''action comme un tout délimité et achevé. Il peut donc décrire une action brève (« il tomba ») comme une action très longue (« il régna vingt ans »). Ce qui compte, c''est que l''action est envisagée dans sa globalité, ses bornes marquées. À opposer à l''imparfait, qui présente l''action en cours, sans bornes, dans sa durée interne. Retiens : passé simple = aspect global ; imparfait = aspect inaccompli. Voilà la vraie différence !',
'valide','CRPE Français — Enrichissement Conjugaison','premium',true)

;
