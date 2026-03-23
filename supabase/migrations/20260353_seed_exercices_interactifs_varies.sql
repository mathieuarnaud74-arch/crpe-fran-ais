-- ============================================================
-- Migration : Exercices interactifs variés — style annales CRPE
-- 7 séries × 10 questions = 70 exercices
--
-- Série 1 : Tri — Fonctions grammaticales (grammaire)
-- Série 2 : Tri — Valeurs des temps (conjugaison)
-- Série 3 : Surlignage — Compléments du verbe (grammaire)
-- Série 4 : Surlignage — Nature et fonction dans la phrase (analyse_langue)
-- Série 5 : Correction — Participes passés (orthographe)
-- Série 6 : Sprint — Grammaire de phrase (grammaire) [QCM rapide]
-- Série 7 : Swipe — Orthographe d'usage (orthographe) [Vrai/Faux]
-- ============================================================

-- ************************************************************
-- SÉRIE 1 : Tri — Fonctions grammaticales
-- UUID prefix : e2010000
-- Subdomain : grammaire
-- ************************************************************

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES

-- Q1 : Sujet / COD / CC de lieu
(
  'e2010000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Intermediaire',
  'tri_categories',
  'Classez chaque groupe de mots selon sa fonction dans la phrase : « Les élèves observent les oiseaux dans la cour. »',
  NULL,
  '[{"id":"w1","label":"Les élèves"},{"id":"w2","label":"les oiseaux"},{"id":"w3","label":"dans la cour"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"sujet","label":"Sujet"},{"id":"cod","label":"COD"},{"id":"cc","label":"Complément circonstanciel"}],"mapping":{"w1":"sujet","w2":"cod","w3":"cc"}}'::jsonb,
  '« Les élèves » est sujet : c''est le groupe qui commande l''accord du verbe « observent ». « Les oiseaux » est COD : il complète directement le verbe sans préposition (observer quelque chose). « Dans la cour » est complément circonstanciel de lieu : il est déplaçable et supprimable.',
  'Confondre COD et sujet. Le test de pronominalisation aide : « Les élèves les observent dans la cour » — « les » remplace le COD.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q2 : COI / Attribut du sujet / CC de temps
(
  'e2010000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Intermediaire',
  'tri_categories',
  'Classez chaque groupe de mots selon sa fonction : « Ce matin, l''enfant semble fatigué et parle à sa mère. »',
  NULL,
  '[{"id":"w1","label":"Ce matin"},{"id":"w2","label":"fatigué"},{"id":"w3","label":"à sa mère"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cc","label":"Complément circonstanciel"},{"id":"attr","label":"Attribut du sujet"},{"id":"coi","label":"COI"}],"mapping":{"w1":"cc","w2":"attr","w3":"coi"}}'::jsonb,
  '« Ce matin » est CC de temps (déplaçable, supprimable). « Fatigué » est attribut du sujet : il caractérise le sujet « l''enfant » via le verbe d''état « semble ». « À sa mère » est COI : il complète le verbe « parle » par une préposition (parler à quelqu''un).',
  'Confondre attribut du sujet et épithète. L''attribut est relié au sujet par un verbe d''état (être, sembler, paraître, devenir…).',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q3 : Sujet inversé / COD / Épithète
(
  'e2010000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Intermediaire',
  'tri_categories',
  'Classez chaque élément selon sa fonction : « Sur la colline se dresse un vieux château que visitent les touristes. »',
  NULL,
  '[{"id":"w1","label":"un vieux château"},{"id":"w2","label":"vieux"},{"id":"w3","label":"les touristes"},{"id":"w4","label":"que"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"sujet","label":"Sujet"},{"id":"epith","label":"Épithète"},{"id":"cod","label":"COD"}],"mapping":{"w1":"sujet","w2":"epith","w3":"sujet","w4":"cod"}}'::jsonb,
  '« Un vieux château » est sujet inversé du verbe « se dresse ». « Vieux » est épithète du nom « château » (adjectif directement lié au nom). « Les touristes » est sujet du verbe « visitent ». « Que » (pronom relatif) est COD du verbe « visitent » — il reprend « château ».',
  'Ne pas repérer le sujet inversé. On rétablit l''ordre canonique : « Un vieux château se dresse sur la colline. »',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q4 : Complément du nom / CC de manière / COD
(
  'e2010000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Intermediaire',
  'tri_categories',
  'Classez chaque groupe selon sa fonction : « Le directeur de l''école accueille chaleureusement les nouveaux parents. »',
  NULL,
  '[{"id":"w1","label":"de l''école"},{"id":"w2","label":"chaleureusement"},{"id":"w3","label":"les nouveaux parents"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cdn","label":"Complément du nom"},{"id":"cc","label":"Complément circonstanciel"},{"id":"cod","label":"COD"}],"mapping":{"w1":"cdn","w2":"cc","w3":"cod"}}'::jsonb,
  '« De l''école » est complément du nom « directeur » : il précise de quel directeur on parle. « Chaleureusement » est CC de manière (supprimable, déplaçable). « Les nouveaux parents » est COD du verbe « accueille » (accueillir quelqu''un).',
  'Confondre complément du nom et COI. Le complément du nom dépend d''un nom, pas du verbe.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q5 : Apposition / Sujet / CC de cause
(
  'e2010000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Avance',
  'tri_categories',
  'Classez chaque groupe selon sa fonction : « Épuisée par la chaleur, la randonneuse s''est arrêtée à cause d''un malaise. »',
  NULL,
  '[{"id":"w1","label":"Épuisée par la chaleur"},{"id":"w2","label":"la randonneuse"},{"id":"w3","label":"à cause d''un malaise"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"appos","label":"Apposition"},{"id":"sujet","label":"Sujet"},{"id":"cc","label":"Complément circonstanciel"}],"mapping":{"w1":"appos","w2":"sujet","w3":"cc"}}'::jsonb,
  '« Épuisée par la chaleur » est apposition (ou complément détaché) : elle qualifie le sujet « la randonneuse » et en est séparée par une virgule. « La randonneuse » est sujet. « À cause d''un malaise » est CC de cause.',
  'Confondre apposition et épithète. L''apposition est détachée du nom par une virgule et peut être déplacée.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q6 : COS / COD / CC de but
(
  'e2010000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Avance',
  'tri_categories',
  'Classez chaque groupe selon sa fonction : « L''enseignante distribue les cahiers aux élèves pour l''évaluation. »',
  NULL,
  '[{"id":"w1","label":"les cahiers"},{"id":"w2","label":"aux élèves"},{"id":"w3","label":"pour l''évaluation"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cod","label":"COD"},{"id":"coi","label":"COI (complément d''objet second)"},{"id":"cc","label":"Complément circonstanciel"}],"mapping":{"w1":"cod","w2":"coi","w3":"cc"}}'::jsonb,
  '« Les cahiers » est COD (distribuer quelque chose). « Aux élèves » est COI — plus précisément complément d''objet second (COS) : il indique le destinataire et se construit avec la préposition « à ». « Pour l''évaluation » est CC de but (supprimable, déplaçable).',
  'Oublier que le COS est un type de COI. Quand un verbe a à la fois un COD et un COI, ce dernier est appelé COS.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q7 : Attribut du COD / Sujet / CC de temps
(
  'e2010000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Avance',
  'tri_categories',
  'Classez chaque groupe selon sa fonction : « Hier, les jurés ont déclaré l''accusé innocent. »',
  NULL,
  '[{"id":"w1","label":"Hier"},{"id":"w2","label":"les jurés"},{"id":"w3","label":"innocent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cc","label":"Complément circonstanciel"},{"id":"sujet","label":"Sujet"},{"id":"acod","label":"Attribut du COD"}],"mapping":{"w1":"cc","w2":"sujet","w3":"acod"}}'::jsonb,
  '« Hier » est CC de temps. « Les jurés » est sujet du verbe « ont déclaré ». « Innocent » est attribut du COD « l''accusé » : il caractérise le COD par l''intermédiaire du verbe « déclarer » (verbe attributif du COD, comme juger, trouver, rendre, nommer…).',
  'Confondre attribut du COD et attribut du sujet. Ici, « innocent » se rapporte au COD (l''accusé), pas au sujet (les jurés).',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q8 : Complément d'agent / Sujet / COD
(
  'e2010000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Intermediaire',
  'tri_categories',
  'Classez chaque groupe selon sa fonction : « La lettre a été rédigée par le secrétaire. »',
  NULL,
  '[{"id":"w1","label":"La lettre"},{"id":"w2","label":"par le secrétaire"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"sujet","label":"Sujet"},{"id":"cagent","label":"Complément d''agent"}],"mapping":{"w1":"sujet","w2":"cagent"}}'::jsonb,
  'À la voix passive, « la lettre » est sujet grammatical (il commande l''accord du verbe). « Par le secrétaire » est complément d''agent : il indique qui réalise l''action. À la voix active, on obtient : « Le secrétaire a rédigé la lettre. »',
  'Confondre complément d''agent et CC. Le complément d''agent n''est ni supprimable ni déplaçable librement : il est essentiel au sens de la phrase passive.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q9 : Épithète / Complément du nom / Proposition subordonnée relative (expansion du nom)
(
  'e2010000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Avance',
  'tri_categories',
  'Classez chaque expansion du nom « livre » selon sa nature/fonction : « Ce petit livre de contes que j''ai lu est passionnant. »',
  NULL,
  '[{"id":"w1","label":"petit"},{"id":"w2","label":"de contes"},{"id":"w3","label":"que j''ai lu"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"epith","label":"Épithète"},{"id":"cdn","label":"Complément du nom"},{"id":"psr","label":"Proposition subordonnée relative"}],"mapping":{"w1":"epith","w2":"cdn","w3":"psr"}}'::jsonb,
  '« Petit » est épithète liée du nom « livre » (adjectif directement adjoint). « De contes » est complément du nom « livre » (préposition + nom). « Que j''ai lu » est une proposition subordonnée relative introduite par le pronom relatif « que », complément de l''antécédent « livre ».',
  'Ne pas reconnaître la subordonnée relative. On la repère grâce au pronom relatif (qui, que, dont, où, lequel…) et à la présence d''un verbe conjugué.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q10 : Sujet / COD / CC de moyen
(
  'e2010000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'tri_fonctions_grammaticales', 'Tri — Fonctions grammaticales', 'Intermediaire',
  'tri_categories',
  'Classez chaque groupe selon sa fonction : « Avec un pinceau fin, l''artiste peint un portrait saisissant. »',
  NULL,
  '[{"id":"w1","label":"Avec un pinceau fin"},{"id":"w2","label":"l''artiste"},{"id":"w3","label":"un portrait saisissant"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cc","label":"Complément circonstanciel"},{"id":"sujet","label":"Sujet"},{"id":"cod","label":"COD"}],"mapping":{"w1":"cc","w2":"sujet","w3":"cod"}}'::jsonb,
  '« Avec un pinceau fin » est CC de moyen (supprimable, déplaçable : « L''artiste peint un portrait saisissant avec un pinceau fin »). « L''artiste » est sujet du verbe « peint ». « Un portrait saisissant » est COD (peindre quelque chose).',
  'Confondre CC de moyen et COI. Le CC de moyen est supprimable et déplaçable ; le COI est essentiel au verbe.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- ************************************************************
-- SÉRIE 2 : Tri — Valeurs des temps
-- UUID prefix : e2020000
-- Subdomain : conjugaison
-- ************************************************************

-- Q1
(
  'e2020000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Intermediaire',
  'tri_categories',
  'Identifiez la valeur du présent dans chaque phrase.',
  NULL,
  '[{"id":"w1","label":"L''eau bout à 100 °C."},{"id":"w2","label":"Je termine mon exercice."},{"id":"w3","label":"En 1789, le peuple prend la Bastille."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"verite","label":"Présent de vérité générale"},{"id":"enonciation","label":"Présent d''énonciation"},{"id":"narration","label":"Présent de narration"}],"mapping":{"w1":"verite","w2":"enonciation","w3":"narration"}}'::jsonb,
  '« L''eau bout à 100 °C » : vérité générale (fait scientifique toujours valable). « Je termine mon exercice » : présent d''énonciation (action en cours au moment où l''on parle). « En 1789, le peuple prend la Bastille » : présent de narration (fait passé raconté au présent pour le rendre plus vivant).',
  'Confondre présent de narration et présent d''énonciation. Le contexte temporel (« en 1789 ») signale un fait passé rendu au présent.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q2
(
  'e2020000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Intermediaire',
  'tri_categories',
  'Identifiez la valeur de l''imparfait dans chaque phrase.',
  NULL,
  '[{"id":"w1","label":"Il pleuvait tous les jours cet été-là."},{"id":"w2","label":"Le château dominait la vallée."},{"id":"w3","label":"Elle lisait quand le téléphone sonna."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"habit","label":"Imparfait d''habitude"},{"id":"desc","label":"Imparfait de description"},{"id":"arrplan","label":"Imparfait d''arrière-plan"}],"mapping":{"w1":"habit","w2":"desc","w3":"arrplan"}}'::jsonb,
  '« Il pleuvait tous les jours » : habitude répétée dans le passé. « Le château dominait la vallée » : description d''un décor, état stable. « Elle lisait quand le téléphone sonna » : action d''arrière-plan interrompue par un événement au passé simple (premier plan).',
  'Confondre imparfait de description et imparfait d''habitude. La description porte sur un état stable, l''habitude sur une action répétée.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q3
(
  'e2020000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Avance',
  'tri_categories',
  'Identifiez la valeur du conditionnel dans chaque phrase.',
  NULL,
  '[{"id":"w1","label":"Si j''avais le temps, je voyagerais."},{"id":"w2","label":"Il aurait terminé avant midi."},{"id":"w3","label":"Le suspect serait en fuite, selon la police."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"irr","label":"Conditionnel d''irréel"},{"id":"temp","label":"Conditionnel temporel (futur du passé)"},{"id":"att","label":"Conditionnel d''atténuation / modalisation"}],"mapping":{"w1":"irr","w2":"temp","w3":"att"}}'::jsonb,
  '« Si j''avais le temps, je voyagerais » : irréel du présent (hypothèse non réalisée). « Il aurait terminé avant midi » : futur du passé vu depuis un moment antérieur. « Le suspect serait en fuite » : conditionnel de modalisation (information non confirmée, prudence journalistique).',
  'Ne pas reconnaître le conditionnel de modalisation. En contexte journalistique, il signale une information non vérifiée.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q4
(
  'e2020000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Intermediaire',
  'tri_categories',
  'Classez chaque forme verbale selon le temps et le mode.',
  NULL,
  '[{"id":"w1","label":"chantât"},{"id":"w2","label":"chanterait"},{"id":"w3","label":"chante"},{"id":"w4","label":"chantant"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"subjimp","label":"Subjonctif imparfait"},{"id":"condpres","label":"Conditionnel présent"},{"id":"subjpres","label":"Subjonctif présent"},{"id":"partpres","label":"Participe présent"}],"mapping":{"w1":"subjimp","w2":"condpres","w3":"subjpres","w4":"partpres"}}'::jsonb,
  '« Chantât » : subjonctif imparfait (accent circonflexe sur le â, 3e personne). « Chanterait » : conditionnel présent (radical du futur + terminaison de l''imparfait). « Chante » : subjonctif présent (ou indicatif, mais dans un tri de modes on retient le subjonctif). « Chantant » : participe présent (forme en -ant, invariable).',
  'Confondre subjonctif présent et indicatif présent à la 3e personne pour les verbes du 1er groupe (formes identiques). Seul le contexte syntaxique les distingue.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q5
(
  'e2020000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Intermediaire',
  'tri_categories',
  'Identifiez la valeur du passé composé dans chaque phrase.',
  NULL,
  '[{"id":"w1","label":"J''ai compris la leçon."},{"id":"w2","label":"Il a plu trois fois cette semaine."},{"id":"w3","label":"Demain, à cette heure, j''ai terminé."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"accompli","label":"Passé composé d''accompli (résultat présent)"},{"id":"passe","label":"Passé composé de narration"},{"id":"futur","label":"Passé composé à valeur de futur antérieur"}],"mapping":{"w1":"accompli","w2":"passe","w3":"futur"}}'::jsonb,
  '« J''ai compris la leçon » : accompli — le résultat est encore actuel (je comprends maintenant). « Il a plu trois fois cette semaine » : narration d''événements passés. « Demain, à cette heure, j''ai terminé » : valeur de futur antérieur — l''action sera achevée dans l''avenir.',
  'Ignorer la valeur de futur antérieur du passé composé. Le complément « demain » signale clairement un futur.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q6
(
  'e2020000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Avance',
  'tri_categories',
  'Classez chaque emploi du subjonctif selon sa valeur.',
  NULL,
  '[{"id":"w1","label":"Je veux que tu viennes."},{"id":"w2","label":"Bien qu''il pleuve, il sort."},{"id":"w3","label":"Qu''il entre !"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"volonte","label":"Subjonctif de volonté"},{"id":"concession","label":"Subjonctif de concession"},{"id":"ordre","label":"Subjonctif d''ordre (injonctif)"}],"mapping":{"w1":"volonte","w2":"concession","w3":"ordre"}}'::jsonb,
  '« Je veux que tu viennes » : subjonctif de volonté (après un verbe de souhait/volonté). « Bien qu''il pleuve » : concession (malgré la pluie). « Qu''il entre ! » : subjonctif à valeur d''ordre — équivalent d''un impératif à la 3e personne.',
  'Confondre subjonctif de concession et de cause. La conjonction « bien que » introduit toujours une concession.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q7
(
  'e2020000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Intermediaire',
  'tri_categories',
  'Identifiez la valeur du futur simple dans chaque phrase.',
  NULL,
  '[{"id":"w1","label":"Tu rangeras ta chambre."},{"id":"w2","label":"Il fera beau demain."},{"id":"w3","label":"Deux et deux feront toujours quatre."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ordre","label":"Futur d''ordre (injonctif)"},{"id":"prediction","label":"Futur de prédiction"},{"id":"verite","label":"Futur de vérité générale"}],"mapping":{"w1":"ordre","w2":"prediction","w3":"verite"}}'::jsonb,
  '« Tu rangeras ta chambre » : futur à valeur d''ordre (injonctif), équivalent d''un impératif. « Il fera beau demain » : prédiction sur l''avenir. « Deux et deux feront toujours quatre » : vérité générale exprimée au futur (valeur gnomique).',
  'Ne pas reconnaître le futur injonctif. Le contexte (2e personne, action exigée) le distingue d''une simple prédiction.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q8
(
  'e2020000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Avance',
  'tri_categories',
  'Classez chaque forme verbale selon son aspect.',
  NULL,
  '[{"id":"w1","label":"Il mange."},{"id":"w2","label":"Il a mangé."},{"id":"w3","label":"Il mangeait."},{"id":"w4","label":"Il mangea."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"inaccomp","label":"Aspect inaccompli (sécant)"},{"id":"accompli","label":"Aspect accompli"},{"id":"global","label":"Aspect global (non-sécant)"}],"mapping":{"w1":"inaccomp","w2":"accompli","w3":"inaccomp","w4":"global"}}'::jsonb,
  '« Il mange » (présent) et « il mangeait » (imparfait) montrent l''action en cours, vue de l''intérieur : aspect inaccompli (sécant). « Il a mangé » (passé composé) : l''action est achevée, aspect accompli. « Il mangea » (passé simple) : l''action est vue globalement, comme un point, aspect global (non-sécant).',
  'Confondre aspect accompli et aspect global. L''accompli (temps composés) insiste sur le résultat ; le global (passé simple) sur l''événement vu comme un tout.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q9
(
  'e2020000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Intermediaire',
  'tri_categories',
  'Dans un récit au passé, classez chaque verbe selon son rôle narratif.',
  NULL,
  '[{"id":"w1","label":"Le soleil brillait."},{"id":"w2","label":"Un homme entra."},{"id":"w3","label":"Il portait un long manteau."},{"id":"w4","label":"Il s''assit et commanda un café."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"arrplan","label":"Arrière-plan (imparfait)"},{"id":"premplan","label":"Premier plan (passé simple)"}],"mapping":{"w1":"arrplan","w2":"premplan","w3":"arrplan","w4":"premplan"}}'::jsonb,
  'L''imparfait (« brillait », « portait ») pose le décor et les circonstances : c''est l''arrière-plan. Le passé simple (« entra », « s''assit », « commanda ») fait avancer l''action : c''est le premier plan. Cette alternance est le mécanisme fondamental du récit au passé.',
  'Croire que le passé simple est « plus ancien » que l''imparfait. C''est l''aspect (global vs sécant) qui les oppose, pas la chronologie.',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- Q10
(
  'e2020000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'tri_valeurs_temps', 'Tri — Valeurs des temps', 'Avance',
  'tri_categories',
  'Identifiez le mode de chaque forme verbale soulignée.',
  NULL,
  '[{"id":"w1","label":"Viens ici."},{"id":"w2","label":"Il faut que tu saches."},{"id":"w3","label":"Il savait la vérité."},{"id":"w4","label":"Sachant cela, il partit."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"imp","label":"Impératif"},{"id":"subj","label":"Subjonctif"},{"id":"ind","label":"Indicatif"},{"id":"part","label":"Participe"}],"mapping":{"w1":"imp","w2":"subj","w3":"ind","w4":"part"}}'::jsonb,
  '« Viens » : impératif (ordre direct, pas de sujet exprimé). « Que tu saches » : subjonctif (après « il faut que »). « Savait » : indicatif imparfait (constatation d''un fait). « Sachant » : participe présent (forme en -ant).',
  'Confondre impératif et indicatif présent. L''impératif n''a pas de sujet exprimé et ne possède que trois personnes (tu, nous, vous).',
  'valide', 'CRPE Français — Annales conjugaison', 'free', true
),

-- ************************************************************
-- SÉRIE 3 : Surlignage — Compléments du verbe
-- UUID prefix : e2030000
-- Subdomain : grammaire
-- ************************************************************

-- Q1
(
  'e2030000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Intermediaire',
  'surlignage_propositions',
  'Surlignez le COD et le COI dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"L''enseignante"},{"id":"s2","label":"explique"},{"id":"s3","label":"la règle"},{"id":"s4","label":"aux élèves"},{"id":"s5","label":"attentifs."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"cod","label":"COD","color":"#4A6E8F"},{"id":"coi","label":"COI","color":"#A46849"}],"mapping":{"s3":"cod","s4":"coi"}}'::jsonb,
  '« La règle » est COD du verbe « explique » (expliquer quelque chose — construction directe, sans préposition). « Aux élèves » est COI (expliquer à quelqu''un — construction indirecte avec la préposition « à »). Test : on peut pronominaliser : « L''enseignante la leur explique. »',
  'Surligner « attentifs » comme COI. C''est une épithète détachée (ou apposition) du nom « élèves ».',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q2
(
  'e2030000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Intermediaire',
  'surlignage_propositions',
  'Surlignez le sujet et l''attribut du sujet.',
  NULL,
  '[{"id":"s1","label":"Cette"},{"id":"s2","label":"histoire"},{"id":"s3","label":"semble"},{"id":"s4","label":"invraisemblable"},{"id":"s5","label":"aux"},{"id":"s6","label":"yeux"},{"id":"s7","label":"de"},{"id":"s8","label":"tous."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"sujet","label":"Sujet","color":"#4A6E8F"},{"id":"attr","label":"Attribut du sujet","color":"#A46849"}],"mapping":{"s1":"sujet","s2":"sujet","s4":"attr"}}'::jsonb,
  '« Cette histoire » est le sujet (c''est de cela qu''on parle). « Invraisemblable » est attribut du sujet, relié par le verbe d''état « semble ». L''attribut du sujet exprime une propriété du sujet ; il ne peut pas être supprimé sans altérer le sens.',
  'Confondre attribut du sujet et COD. L''attribut est introduit par un verbe d''état (être, sembler, paraître, devenir, demeurer, rester…), jamais par un verbe d''action.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q3
(
  'e2030000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Avance',
  'surlignage_propositions',
  'Surlignez la proposition principale et la proposition subordonnée relative.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"roman"},{"id":"s3","label":"que"},{"id":"s4","label":"j''ai"},{"id":"s5","label":"lu"},{"id":"s6","label":"m''a"},{"id":"s7","label":"passionné."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"#4A6E8F"},{"id":"sub","label":"Proposition subordonnée relative","color":"#A46849"}],"mapping":{"s1":"princ","s2":"princ","s3":"sub","s4":"sub","s5":"sub","s6":"princ","s7":"princ"}}'::jsonb,
  'La proposition principale est « Le roman m''a passionné » (on peut la lire seule et elle a un sens complet). La subordonnée relative est « que j''ai lu » : elle est introduite par le pronom relatif « que » et complète l''antécédent « roman ». Elle est enchâssée dans la principale.',
  'Inclure le pronom relatif « que » dans la principale. Il fait partie de la subordonnée dont il est un élément essentiel (ici, COD du verbe « ai lu »).',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q4
(
  'e2030000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Intermediaire',
  'surlignage_propositions',
  'Surlignez le complément circonstanciel de lieu et le complément circonstanciel de temps.',
  NULL,
  '[{"id":"s1","label":"Chaque"},{"id":"s2","label":"matin,"},{"id":"s3","label":"les"},{"id":"s4","label":"enfants"},{"id":"s5","label":"jouent"},{"id":"s6","label":"dans"},{"id":"s7","label":"la"},{"id":"s8","label":"cour."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"cctemps","label":"CC de temps","color":"#4A6E8F"},{"id":"cclieu","label":"CC de lieu","color":"#A46849"}],"mapping":{"s1":"cctemps","s2":"cctemps","s6":"cclieu","s7":"cclieu","s8":"cclieu"}}'::jsonb,
  '« Chaque matin » est CC de temps : il répond à la question « quand ? » et est déplaçable (« Les enfants jouent dans la cour chaque matin »). « Dans la cour » est CC de lieu : il répond à la question « où ? » et est également déplaçable et supprimable.',
  'Croire que le CC est toujours en début ou fin de phrase. Il peut occuper différentes positions sans changer le sens de la phrase.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q5
(
  'e2030000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Avance',
  'surlignage_propositions',
  'Surlignez le COD et l''attribut du COD.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"jury"},{"id":"s3","label":"a"},{"id":"s4","label":"élu"},{"id":"s5","label":"Marie"},{"id":"s6","label":"présidente"},{"id":"s7","label":"du"},{"id":"s8","label":"conseil."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"cod","label":"COD","color":"#4A6E8F"},{"id":"acod","label":"Attribut du COD","color":"#A46849"}],"mapping":{"s5":"cod","s6":"acod"}}'::jsonb,
  '« Marie » est COD du verbe « a élu » (élire quelqu''un). « Présidente » est attribut du COD : il caractérise « Marie » par l''intermédiaire du verbe « élire » (verbe attributif du COD, comme nommer, appeler, juger, trouver, rendre…).',
  'Confondre attribut du COD et apposition. L''attribut du COD est lié au COD par le verbe, il ne peut pas être supprimé sans changer profondément le sens.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q6
(
  'e2030000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Intermediaire',
  'surlignage_propositions',
  'Surlignez le groupe sujet et le groupe verbal (verbe + compléments essentiels).',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"petits"},{"id":"s3","label":"chats"},{"id":"s4","label":"de"},{"id":"s5","label":"la"},{"id":"s6","label":"voisine"},{"id":"s7","label":"boivent"},{"id":"s8","label":"du"},{"id":"s9","label":"lait"},{"id":"s10","label":"tiède."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet","color":"#4A6E8F"},{"id":"gv","label":"Groupe verbal","color":"#A46849"}],"mapping":{"s1":"gs","s2":"gs","s3":"gs","s4":"gs","s5":"gs","s6":"gs","s7":"gv","s8":"gv","s9":"gv","s10":"gv"}}'::jsonb,
  'Le groupe sujet est « Les petits chats de la voisine » (noyau : « chats », expansions : déterminant, épithète, complément du nom). Le groupe verbal est « boivent du lait tiède » (verbe + COD). Le GS et le GV sont les deux constituants obligatoires de la phrase canonique.',
  'Réduire le groupe sujet à « les chats » en oubliant les expansions du nom. Le sujet est le groupe nominal complet.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q7
(
  'e2030000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Avance',
  'surlignage_propositions',
  'Surlignez la proposition subordonnée conjonctive COD et la proposition principale.',
  NULL,
  '[{"id":"s1","label":"Je"},{"id":"s2","label":"pense"},{"id":"s3","label":"que"},{"id":"s4","label":"cette"},{"id":"s5","label":"méthode"},{"id":"s6","label":"est"},{"id":"s7","label":"efficace."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"#4A6E8F"},{"id":"sub","label":"Subordonnée conjonctive COD","color":"#A46849"}],"mapping":{"s1":"princ","s2":"princ","s3":"sub","s4":"sub","s5":"sub","s6":"sub","s7":"sub"}}'::jsonb,
  '« Je pense » est la proposition principale. « Que cette méthode est efficace » est une proposition subordonnée conjonctive introduite par la conjonction de subordination « que ». Elle est COD du verbe « pense » (penser quelque chose). On peut la pronominaliser : « Je le pense. »',
  'Confondre conjonction de subordination « que » et pronom relatif « que ». Ici, « que » n''a pas d''antécédent nominal : c''est une conjonction.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q8
(
  'e2030000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Intermediaire',
  'surlignage_propositions',
  'Surlignez les deux COD coordonnés dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"L''enfant"},{"id":"s2","label":"aime"},{"id":"s3","label":"les"},{"id":"s4","label":"gâteaux"},{"id":"s5","label":"et"},{"id":"s6","label":"les"},{"id":"s7","label":"bonbons."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"cod1","label":"COD 1","color":"#4A6E8F"},{"id":"cod2","label":"COD 2","color":"#A46849"}],"mapping":{"s3":"cod1","s4":"cod1","s6":"cod2","s7":"cod2"}}'::jsonb,
  '« Les gâteaux » et « les bonbons » sont deux COD coordonnés par « et ». Ils complètent tous les deux le verbe « aime » (aimer quelque chose). La coordination relie deux éléments de même fonction.',
  'Oublier les déterminants dans le COD. Le COD est le groupe nominal entier (déterminant + nom).',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q9
(
  'e2030000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Avance',
  'surlignage_propositions',
  'Surlignez le complément d''agent et le sujet grammatical.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"devoirs"},{"id":"s3","label":"ont"},{"id":"s4","label":"été"},{"id":"s5","label":"corrigés"},{"id":"s6","label":"par"},{"id":"s7","label":"l''enseignant."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"sujet","label":"Sujet grammatical","color":"#4A6E8F"},{"id":"cagent","label":"Complément d''agent","color":"#A46849"}],"mapping":{"s1":"sujet","s2":"sujet","s6":"cagent","s7":"cagent"}}'::jsonb,
  'À la voix passive, « les devoirs » est le sujet grammatical (il commande l''accord du participe : « corrigés »). « Par l''enseignant » est le complément d''agent : il désigne celui qui accomplit l''action. Transformation active : « L''enseignant a corrigé les devoirs. »',
  'Inverser sujet et complément d''agent. En phrase passive, le sujet subit l''action, le complément d''agent la réalise.',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- Q10
(
  'e2030000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'surlignage_complements_verbe', 'Surlignage — Compléments du verbe', 'Intermediaire',
  'surlignage_propositions',
  'Surlignez le COD et le CC de manière.',
  NULL,
  '[{"id":"s1","label":"L''élève"},{"id":"s2","label":"récite"},{"id":"s3","label":"sa"},{"id":"s4","label":"leçon"},{"id":"s5","label":"avec"},{"id":"s6","label":"assurance."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"cod","label":"COD","color":"#4A6E8F"},{"id":"cc","label":"CC de manière","color":"#A46849"}],"mapping":{"s3":"cod","s4":"cod","s5":"cc","s6":"cc"}}'::jsonb,
  '« Sa leçon » est COD du verbe « récite » (réciter quelque chose — complément essentiel, non supprimable). « Avec assurance » est CC de manière : il est supprimable et déplaçable (« Avec assurance, l''élève récite sa leçon »).',
  'Confondre COD et CC. Le COD est un complément essentiel (non supprimable), le CC est un complément circonstanciel (supprimable et déplaçable).',
  'valide', 'CRPE Français — Annales grammaire', 'free', true
),

-- ************************************************************
-- SÉRIE 4 : Surlignage — Nature et fonction dans la phrase complexe
-- UUID prefix : e2040000
-- Subdomain : analyse_langue
-- ************************************************************

-- Q1
(
  'e2040000-0000-0000-0000-000000000001',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez la proposition subordonnée circonstancielle de temps et la proposition principale.',
  NULL,
  '[{"id":"s1","label":"Quand"},{"id":"s2","label":"la"},{"id":"s3","label":"cloche"},{"id":"s4","label":"sonne,"},{"id":"s5","label":"les"},{"id":"s6","label":"élèves"},{"id":"s7","label":"se"},{"id":"s8","label":"lèvent."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"sub","label":"Subordonnée circonstancielle de temps","color":"#4A6E8F"},{"id":"princ","label":"Proposition principale","color":"#A46849"}],"mapping":{"s1":"sub","s2":"sub","s3":"sub","s4":"sub","s5":"princ","s6":"princ","s7":"princ","s8":"princ"}}'::jsonb,
  '« Quand la cloche sonne » est une proposition subordonnée circonstancielle de temps, introduite par la conjonction de subordination « quand ». Elle est déplaçable et supprimable (comme un CC). « Les élèves se lèvent » est la proposition principale.',
  'Confondre « quand » conjonction de subordination et « quand » adverbe interrogatif. En tête de subordonnée, c''est toujours une conjonction.',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q2
(
  'e2040000-0000-0000-0000-000000000002',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez la subordonnée circonstancielle de cause et la principale.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"routes"},{"id":"s3","label":"sont"},{"id":"s4","label":"fermées"},{"id":"s5","label":"parce"},{"id":"s6","label":"qu''il"},{"id":"s7","label":"a"},{"id":"s8","label":"neigé."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"#4A6E8F"},{"id":"sub","label":"Subordonnée de cause","color":"#A46849"}],"mapping":{"s1":"princ","s2":"princ","s3":"princ","s4":"princ","s5":"sub","s6":"sub","s7":"sub","s8":"sub"}}'::jsonb,
  '« Les routes sont fermées » est la principale. « Parce qu''il a neigé » est la subordonnée circonstancielle de cause, introduite par la locution conjonctive « parce que ». Elle explique la raison de la fermeture.',
  'Confondre cause et conséquence. La subordonnée de cause donne la raison (il a neigé), la principale donne le résultat (routes fermées).',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q3
(
  'e2040000-0000-0000-0000-000000000003',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez les deux propositions juxtaposées.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"vent"},{"id":"s3","label":"souffle,"},{"id":"s4","label":"les"},{"id":"s5","label":"arbres"},{"id":"s6","label":"plient."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Proposition 1","color":"#4A6E8F"},{"id":"p2","label":"Proposition 2","color":"#A46849"}],"mapping":{"s1":"p1","s2":"p1","s3":"p1","s4":"p2","s5":"p2","s6":"p2"}}'::jsonb,
  'La phrase contient deux propositions indépendantes juxtaposées, séparées par une virgule : « Le vent souffle » et « les arbres plient ». Il n''y a ni conjonction de coordination ni conjonction de subordination. La juxtaposition est l''un des trois modes de liaison entre propositions (avec la coordination et la subordination).',
  'Chercher un lien de subordination. La virgule seule (sans mot subordonnant) indique une juxtaposition.',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q4
(
  'e2040000-0000-0000-0000-000000000004',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez la subordonnée circonstancielle de concession et la principale.',
  NULL,
  '[{"id":"s1","label":"Bien"},{"id":"s2","label":"qu''il"},{"id":"s3","label":"soit"},{"id":"s4","label":"fatigué,"},{"id":"s5","label":"il"},{"id":"s6","label":"continue"},{"id":"s7","label":"de"},{"id":"s8","label":"travailler."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"sub","label":"Subordonnée de concession","color":"#4A6E8F"},{"id":"princ","label":"Proposition principale","color":"#A46849"}],"mapping":{"s1":"sub","s2":"sub","s3":"sub","s4":"sub","s5":"princ","s6":"princ","s7":"princ","s8":"princ"}}'::jsonb,
  '« Bien qu''il soit fatigué » est une subordonnée circonstancielle de concession (ou d''opposition), introduite par la locution conjonctive « bien que » suivie du subjonctif. « Il continue de travailler » est la principale. La concession exprime un obstacle qui n''empêche pas l''action de la principale.',
  'Confondre concession et cause. La concession exprime un obstacle surmonté (« malgré sa fatigue »), pas une raison.',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q5
(
  'e2040000-0000-0000-0000-000000000005',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez la subordonnée circonstancielle de but et la principale.',
  NULL,
  '[{"id":"s1","label":"L''enseignant"},{"id":"s2","label":"répète"},{"id":"s3","label":"la"},{"id":"s4","label":"consigne"},{"id":"s5","label":"pour"},{"id":"s6","label":"que"},{"id":"s7","label":"tous"},{"id":"s8","label":"comprennent."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"#4A6E8F"},{"id":"sub","label":"Subordonnée de but","color":"#A46849"}],"mapping":{"s1":"princ","s2":"princ","s3":"princ","s4":"princ","s5":"sub","s6":"sub","s7":"sub","s8":"sub"}}'::jsonb,
  '« L''enseignant répète la consigne » est la principale. « Pour que tous comprennent » est une subordonnée circonstancielle de but (finale), introduite par la locution conjonctive « pour que » suivie du subjonctif. Elle exprime l''objectif visé par l''action de la principale.',
  'Confondre but et cause. Le but est orienté vers le futur (l''objectif), la cause vers le passé (la raison).',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q6
(
  'e2040000-0000-0000-0000-000000000006',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez les deux propositions coordonnées.',
  NULL,
  '[{"id":"s1","label":"Il"},{"id":"s2","label":"pleut"},{"id":"s3","label":"mais"},{"id":"s4","label":"les"},{"id":"s5","label":"enfants"},{"id":"s6","label":"sortent"},{"id":"s7","label":"quand"},{"id":"s8","label":"même."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"p1","label":"Proposition 1","color":"#4A6E8F"},{"id":"p2","label":"Proposition 2","color":"#A46849"}],"mapping":{"s1":"p1","s2":"p1","s3":"p2","s4":"p2","s5":"p2","s6":"p2","s7":"p2","s8":"p2"}}'::jsonb,
  '« Il pleut » et « mais les enfants sortent quand même » sont deux propositions indépendantes coordonnées par la conjonction de coordination « mais ». La coordination est l''un des trois modes de liaison entre propositions. « Mais » exprime ici l''opposition.',
  'Confondre coordination et subordination. « Mais » est une conjonction de coordination (comme mais, ou, et, donc, or, ni, car), pas de subordination.',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q7
(
  'e2040000-0000-0000-0000-000000000007',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez la subordonnée circonstancielle de condition et la principale.',
  NULL,
  '[{"id":"s1","label":"Si"},{"id":"s2","label":"tu"},{"id":"s3","label":"travailles"},{"id":"s4","label":"régulièrement,"},{"id":"s5","label":"tu"},{"id":"s6","label":"réussiras"},{"id":"s7","label":"le"},{"id":"s8","label":"concours."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"sub","label":"Subordonnée de condition","color":"#4A6E8F"},{"id":"princ","label":"Proposition principale","color":"#A46849"}],"mapping":{"s1":"sub","s2":"sub","s3":"sub","s4":"sub","s5":"princ","s6":"princ","s7":"princ","s8":"princ"}}'::jsonb,
  '« Si tu travailles régulièrement » est une subordonnée circonstancielle de condition (hypothétique), introduite par la conjonction « si ». « Tu réussiras le concours » est la principale. Le système hypothétique ici est : si + présent / futur simple (potentiel).',
  'Mettre le futur après « si ». En français, on ne dit jamais « *si tu travailleras » : après « si » conditionnel, on emploie le présent, l''imparfait ou le plus-que-parfait.',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q8
(
  'e2040000-0000-0000-0000-000000000008',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez la proposition subordonnée relative et son antécédent.',
  NULL,
  '[{"id":"s1","label":"L''enfant"},{"id":"s2","label":"dont"},{"id":"s3","label":"je"},{"id":"s4","label":"t''ai"},{"id":"s5","label":"parlé"},{"id":"s6","label":"a"},{"id":"s7","label":"déménagé."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"ant","label":"Antécédent","color":"#4A6E8F"},{"id":"rel","label":"Proposition subordonnée relative","color":"#A46849"}],"mapping":{"s1":"ant","s2":"rel","s3":"rel","s4":"rel","s5":"rel"}}'::jsonb,
  '« L''enfant » est l''antécédent du pronom relatif « dont ». La proposition subordonnée relative « dont je t''ai parlé » complète cet antécédent. Le pronom relatif « dont » est complément indirect du verbe « parler » (parler de quelqu''un).',
  'Ne pas identifier « dont » comme pronom relatif. « Dont » remplace un complément introduit par « de » (parler de → dont).',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q9
(
  'e2040000-0000-0000-0000-000000000009',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez la subordonnée circonstancielle de conséquence et la principale.',
  NULL,
  '[{"id":"s1","label":"Il"},{"id":"s2","label":"a"},{"id":"s3","label":"tellement"},{"id":"s4","label":"couru"},{"id":"s5","label":"qu''il"},{"id":"s6","label":"est"},{"id":"s7","label":"essoufflé."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"#4A6E8F"},{"id":"sub","label":"Subordonnée de conséquence","color":"#A46849"}],"mapping":{"s1":"princ","s2":"princ","s3":"princ","s4":"princ","s5":"sub","s6":"sub","s7":"sub"}}'::jsonb,
  '« Il a tellement couru » est la principale (avec l''adverbe corrélatif « tellement »). « Qu''il est essoufflé » est la subordonnée circonstancielle de conséquence (consécutive). Le système corrélatif « tellement… que » lie les deux propositions.',
  'Confondre cause et conséquence. Ici, la course (principale) produit l''essoufflement (subordonnée) : c''est bien une relation de conséquence.',
  'valide', 'CRPE Français — Annales analyse', 'free', true
),

-- Q10
(
  'e2040000-0000-0000-0000-000000000010',
  'Francais', 'analyse_langue', 'surlignage_phrase_complexe', 'Surlignage — Phrase complexe', 'Avance',
  'surlignage_propositions',
  'Surlignez la proposition incise et la proposition qui l''encadre.',
  NULL,
  '[{"id":"s1","label":"Ce"},{"id":"s2","label":"livre,"},{"id":"s3","label":"dit-il,"},{"id":"s4","label":"est"},{"id":"s5","label":"remarquable."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition encadrante","color":"#4A6E8F"},{"id":"incise","label":"Proposition incise","color":"#A46849"}],"mapping":{"s1":"princ","s2":"princ","s3":"incise","s4":"princ","s5":"princ"}}'::jsonb,
  '« Dit-il » est une proposition incise : elle s''insère dans la phrase pour indiquer qui parle (verbe de parole + sujet inversé). « Ce livre est remarquable » est la proposition encadrante, interrompue par l''incise. L''incise est typique du discours direct et du discours indirect libre.',
  'Analyser « dit-il » comme une proposition principale. L''incise est subordonnée syntaxiquement à la phrase dans laquelle elle s''insère.',
  'valide', 'CRPE Français — Annales analyse', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- ************************************************************
-- SÉRIE 5 : Correction — Participes passés
-- UUID prefix : f2010000
-- Subdomain : orthographe
-- ************************************************************

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES

-- Q1
(
  'f2010000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'Les fleurs que j''ai *cueilli* sont magnifiques.',
  NULL,
  '{"mode":"text","acceptableAnswers":["cueillies"]}'::jsonb,
  'Le participe passé « cueilli » est employé avec l''auxiliaire « avoir ». Le COD « que » (mis pour « les fleurs », féminin pluriel) est placé avant le verbe. Le participe s''accorde donc avec le COD antéposé : « cueillies ».',
  'Oublier l''accord du participe passé avec avoir quand le COD est placé avant le verbe.',
  'valide', 'free', true
),

-- Q2
(
  'f2010000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'Elles se sont *regardé* dans le miroir.',
  NULL,
  '{"mode":"text","acceptableAnswers":["regardées"]}'::jsonb,
  'Le verbe pronominal « se regarder » est de sens réfléchi : « elles » ont regardé « elles-mêmes ». Le pronom « se » est COD (regarder quelqu''un). Avec « être », le participe s''accorde avec le COD « se » qui renvoie à « elles » (féminin pluriel) : « regardées ».',
  'Croire que les verbes pronominaux s''accordent toujours avec le sujet. Il faut vérifier la fonction du pronom réfléchi.',
  'valide', 'free', true
),

-- Q3
(
  'f2010000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Avance',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'Elles se sont *téléphoné* hier soir.',
  NULL,
  '{"mode":"text","acceptableAnswers":["téléphoné"]}'::jsonb,
  '« Téléphoné » reste invariable. Le verbe « se téléphoner » est un pronominal réciproque où « se » est COI (téléphoner à quelqu''un). Puisque le pronom réfléchi est COI et non COD, il n''y a pas d''accord. La phrase est déjà correcte.',
  'Accorder systématiquement avec le sujet. Quand « se » est COI, le participe reste invariable.',
  'valide', 'free', true
),

-- Q4
(
  'f2010000-0000-0000-0000-000000000004',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'La chanson que nous avons *entendu* était émouvante.',
  NULL,
  '{"mode":"text","acceptableAnswers":["entendue"]}'::jsonb,
  'Le COD « que » (mis pour « la chanson », féminin singulier) est placé avant l''auxiliaire « avoir ». Le participe passé s''accorde : « entendue ». Règle : avec « avoir », le participe s''accorde avec le COD si celui-ci est placé avant le verbe.',
  'Oublier de chercher le COD antéposé. La question « nous avons entendu quoi ? » → « que » (la chanson) → féminin singulier.',
  'valide', 'free', true
),

-- Q5
(
  'f2010000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Avance',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'Les efforts qu''a *demandés* cet exercice sont considérables.',
  NULL,
  '{"mode":"text","acceptableAnswers":["demandés"]}'::jsonb,
  '« Demandés » est correct et ne doit pas être modifié. Le COD « qu'' » (mis pour « les efforts », masculin pluriel) est antéposé. Le participe s''accorde avec ce COD : « demandés ». Attention au sujet inversé « cet exercice » qui ne doit pas troubler l''accord.',
  'Accorder avec le sujet « cet exercice » au lieu du COD antéposé « les efforts ».',
  'valide', 'free', true
),

-- Q6
(
  'f2010000-0000-0000-0000-000000000006',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'Les élèves sont *arrivé* en retard ce matin.',
  NULL,
  '{"mode":"text","acceptableAnswers":["arrivés"]}'::jsonb,
  'Avec l''auxiliaire « être », le participe passé s''accorde en genre et en nombre avec le sujet. « Les élèves » est masculin pluriel : « arrivés ». Règle fondamentale : être → accord avec le sujet.',
  'Oublier l''accord avec le sujet quand l''auxiliaire est « être ». C''est la règle de base.',
  'valide', 'free', true
),

-- Q7
(
  'f2010000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Avance',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'La directrice les a *convoqué* dans son bureau.',
  NULL,
  '{"mode":"text","acceptableAnswers":["convoqués"]}'::jsonb,
  'Le COD « les » (pronom personnel, masculin pluriel ou mixte) est placé avant l''auxiliaire « avoir ». Le participe passé s''accorde : « convoqués ». Le pronom « les » reprend un groupe mentionné précédemment (par défaut, masculin pluriel).',
  'Ne pas identifier « les » comme COD antéposé. Les pronoms COD (me, te, le, la, les, nous, vous) placés avant le verbe déclenchent l''accord.',
  'valide', 'free', true
),

-- Q8
(
  'f2010000-0000-0000-0000-000000000008',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Avance',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'Les vingt minutes que j''ai *couru* m''ont épuisé.',
  NULL,
  '{"mode":"text","acceptableAnswers":["couru"]}'::jsonb,
  '« Couru » reste invariable. « Les vingt minutes » n''est pas COD mais CC de durée (j''ai couru pendant vingt minutes). Le verbe « courir » est intransitif ici : il n''a pas de COD. Sans COD antéposé, pas d''accord avec « avoir ».',
  'Accorder avec « les vingt minutes » en le prenant pour un COD. C''est un CC de durée (supprimable, déplaçable).',
  'valide', 'free', true
),

-- Q9
(
  'f2010000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Intermediaire',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'Ma sœur s''est *inscrit* au concours du CRPE.',
  NULL,
  '{"mode":"text","acceptableAnswers":["inscrite"]}'::jsonb,
  'Le verbe « s''inscrire » est un pronominal de sens réfléchi. Le pronom « s'' » est COD (inscrire soi-même). Avec « être », le participe s''accorde avec le COD « s'' » qui renvoie au sujet « ma sœur » (féminin singulier) : « inscrite ».',
  'Oublier l''accord au féminin. Le sujet « ma sœur » est féminin singulier, et « s'' » est COD.',
  'valide', 'free', true
),

-- Q10
(
  'f2010000-0000-0000-0000-000000000010',
  'Francais', 'orthographe', 'correction_participes_passes', 'Correction — Participes passés', 'Avance',
  'correction_orthographique',
  'Corrigez le mot en gras dans la phrase suivante.',
  'Combien de fautes avez-vous *trouvé* dans ce texte ?',
  NULL,
  '{"mode":"text","acceptableAnswers":["trouvé","trouvées"]}'::jsonb,
  'Deux analyses sont possibles. Si l''on considère « combien de fautes » comme COD antéposé (féminin pluriel), le participe s''accorde : « trouvées ». Si l''on considère que « combien » seul est COD (interrogatif), l''accord est facultatif. Les deux formes sont acceptées par la grammaire traditionnelle et les rectifications de 1990.',
  'Hésiter entre les deux formes. Avec « combien de + nom », l''accord est traditionnellement recommandé mais les deux sont acceptés.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- ************************************************************
-- SÉRIE 6 : Sprint — Grammaire de phrase [QCM rapide]
-- UUID prefix : fa070000
-- Subdomain : grammaire
-- ************************************************************

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES

-- Q1
(
  'fa070000-0000-0000-0000-000000000001',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile',
  'qcm',
  'Dans « Le chat dort sur le toit », quelle est la fonction de « sur le toit » ?',
  NULL,
  '[{"id":"a","label":"COD"},{"id":"b","label":"COI"},{"id":"c","label":"Complément circonstanciel de lieu"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Sur le toit » est un CC de lieu : il est supprimable et déplaçable.',
  'Confondre CC et COI.',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q2
(
  'fa070000-0000-0000-0000-000000000002',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile',
  'qcm',
  'Quelle est la nature du mot « rapidement » ?',
  NULL,
  '[{"id":"a","label":"Adjectif"},{"id":"b","label":"Adverbe"},{"id":"c","label":"Nom"},{"id":"d","label":"Préposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Rapidement » est un adverbe de manière, formé sur l''adjectif « rapide » + suffixe « -ment ». L''adverbe est invariable et modifie un verbe, un adjectif ou un autre adverbe.',
  'Confondre adjectif et adverbe. L''adverbe est invariable, l''adjectif s''accorde.',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q3
(
  'fa070000-0000-0000-0000-000000000003',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile',
  'vrai_faux',
  'Dans « Pierre mange une pomme », « une pomme » est COI.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Une pomme » est COD (complément d''objet direct), pas COI. Il n''y a pas de préposition entre le verbe et son complément : manger quelque chose (construction directe).',
  'Confondre COD et COI. Le COD se construit sans préposition, le COI avec une préposition (à, de…).',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q4
(
  'fa070000-0000-0000-0000-000000000004',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile',
  'qcm',
  'Dans « Elle semble heureuse », quelle est la fonction de « heureuse » ?',
  NULL,
  '[{"id":"a","label":"Épithète"},{"id":"b","label":"COD"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"Apposition"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Heureuse » est attribut du sujet « elle », relié par le verbe d''état « semble ». Les verbes d''état (être, sembler, paraître, devenir…) introduisent un attribut du sujet.',
  'Confondre attribut et épithète. L''attribut est séparé du nom par un verbe d''état.',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q5
(
  'fa070000-0000-0000-0000-000000000005',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Facile',
  'vrai_faux',
  'Une phrase peut contenir plusieurs verbes conjugués et être une phrase simple.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Une phrase simple ne contient qu''un seul verbe conjugué (une seule proposition). Si elle contient plusieurs verbes conjugués, c''est une phrase complexe (autant de propositions que de verbes conjugués).',
  'Croire qu''une phrase courte est forcément simple. C''est le nombre de verbes conjugués qui détermine la structure.',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q6
(
  'fa070000-0000-0000-0000-000000000006',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire',
  'qcm',
  'Dans « Le livre dont je parle est célèbre », quelle est la nature de « dont » ?',
  NULL,
  '[{"id":"a","label":"Conjonction de subordination"},{"id":"b","label":"Pronom relatif"},{"id":"c","label":"Adverbe"},{"id":"d","label":"Préposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Dont » est un pronom relatif qui introduit une proposition subordonnée relative. Il reprend l''antécédent « le livre » et remplace un complément introduit par « de » (parler de quelque chose).',
  'Confondre pronom relatif et conjonction de subordination. Le pronom relatif a un antécédent nominal, la conjonction non.',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q7
(
  'fa070000-0000-0000-0000-000000000007',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire',
  'vrai_faux',
  '« Bien que » est une conjonction de coordination.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Bien que » est une locution conjonctive de subordination (pas de coordination). Elle introduit une subordonnée circonstancielle de concession et est suivie du subjonctif. Les conjonctions de coordination sont : mais, ou, et, donc, or, ni, car.',
  'Confondre coordination et subordination. Moyen mnémotechnique pour les conjonctions de coordination : « Mais où est donc Ornicar ? »',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q8
(
  'fa070000-0000-0000-0000-000000000008',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire',
  'qcm',
  'Quel type de déterminant est « chaque » dans « chaque élève » ?',
  NULL,
  '[{"id":"a","label":"Article défini"},{"id":"b","label":"Déterminant possessif"},{"id":"c","label":"Déterminant indéfini"},{"id":"d","label":"Déterminant démonstratif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Chaque » est un déterminant indéfini (il renvoie à un élément non spécifié au sein d''un ensemble). Les programmes 2020 (Eduscol) classent « chaque, quelques, plusieurs, tout, certains… » parmi les déterminants indéfinis.',
  'Le classer comme adjectif. Depuis les programmes 2016/2020, « chaque » est bien un déterminant, pas un adjectif indéfini.',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q9
(
  'fa070000-0000-0000-0000-000000000009',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire',
  'vrai_faux',
  'Le complément circonstanciel est toujours supprimable et déplaçable.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Par définition, le complément circonstanciel est un complément de phrase : il est supprimable et déplaçable sans que la phrase devienne agrammaticale. C''est ce qui le distingue des compléments essentiels du verbe (COD, COI, attribut). Les programmes Eduscol 2020 insistent sur ce double critère.',
  'Penser à des contre-exemples comme « Il habite à Paris ». Selon la terminologie Eduscol, « à Paris » est ici un complément essentiel de lieu (non supprimable), pas un CC.',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- Q10
(
  'fa070000-0000-0000-0000-000000000010',
  'Francais', 'grammaire', 'sprint_grammaire_phrase', 'Sprint — Grammaire de phrase', 'Intermediaire',
  'qcm',
  'Dans « Il faut que tu viennes », quel est le mode du verbe « viennes » ?',
  NULL,
  '[{"id":"a","label":"Indicatif"},{"id":"b","label":"Conditionnel"},{"id":"c","label":"Subjonctif"},{"id":"d","label":"Impératif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Viennes » est au subjonctif présent. Après « il faut que », le subjonctif est obligatoire. Le subjonctif exprime une nécessité, un souhait, un doute — il est appelé par certains verbes ou locutions de la principale.',
  'Confondre indicatif et subjonctif. Pour les verbes du 3e groupe comme « venir », la forme diffère nettement : « tu viens » (indicatif) vs « que tu viennes » (subjonctif).',
  'valide', 'CRPE Français — Sprint grammaire', 'free', true
),

-- ************************************************************
-- SÉRIE 7 : Swipe — Orthographe d'usage [Vrai/Faux]
-- UUID prefix : fa230000
-- Subdomain : orthographe
-- ************************************************************

-- Q1
(
  'fa230000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Facile',
  'vrai_faux',
  'La phrase « Les enfants manges leur goûter » est correctement orthographiée.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Erreur : « manges » doit être « mangent ». Le sujet « les enfants » est à la 3e personne du pluriel. La terminaison -es est celle de la 2e personne du singulier (tu manges).',
  'Confondre les terminaisons -es (2e pers. sing.) et -ent (3e pers. plur.).',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q2
(
  'fa230000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Facile',
  'vrai_faux',
  '« Quoiqu''il en soit » s''écrit en un seul mot : « quoique ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Il faut écrire « quoi qu''il en soit » en deux mots (pronom relatif « quoi » + conjonction « que »). « Quoique » en un mot est une conjonction de subordination synonyme de « bien que » : « Quoiqu''il pleuve, il sort. »',
  'Confondre « quoique » (bien que) et « quoi que » (quelle que soit la chose que).',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q3
(
  'fa230000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Intermediaire',
  'vrai_faux',
  '« Cent » prend un -s quand il est multiplié et non suivi d''un autre nombre : « deux cents euros ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Correct. « Cent » prend la marque du pluriel quand il est multiplié (deux cents, trois cents) et qu''il n''est pas suivi d''un autre adjectif numéral. On écrit « deux cents » mais « deux cent trois » (sans -s car suivi de « trois »).',
  'Oublier la règle d''exception : « cent » reste invariable quand il est suivi d''un autre nombre.',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q4
(
  'fa230000-0000-0000-0000-000000000004',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Facile',
  'vrai_faux',
  '« Ils ont mangé des pommes » : le participe passé « mangé » est correctement orthographié.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Correct. Avec l''auxiliaire « avoir », le participe passé ne s''accorde pas quand le COD est placé après le verbe. Ici, « des pommes » (COD) est après « mangé » : pas d''accord.',
  'Accorder « mangé » avec « pommes ». Le COD est placé après le verbe, donc pas d''accord.',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q5
(
  'fa230000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Intermediaire',
  'vrai_faux',
  '« Quelque soit votre avis » est correctement orthographié.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Il faut écrire « quel que soit votre avis ». « Quel que » (en deux mots) s''emploie devant le verbe « être » au subjonctif et s''accorde avec le sujet : « quel que soit » (masc. sing.), « quelle que soit » (fém. sing.), « quels que soient » (masc. plur.).',
  'Confondre « quelque » (adverbe ou déterminant) et « quel que » (locution concessive devant « être »).',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q6
(
  'fa230000-0000-0000-0000-000000000006',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Facile',
  'vrai_faux',
  '« Cet homme là-bas » prend un trait d''union entre « là » et « bas ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Correct. « Là-bas » est un adverbe composé qui s''écrit toujours avec un trait d''union. De même : « là-haut », « là-dedans », « là-dessus ». Le trait d''union est aussi obligatoire dans les démonstratifs renforcés : « celui-là », « cette maison-là ».',
  'Omettre le trait d''union dans les adverbes composés avec « là ».',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q7
(
  'fa230000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Intermediaire',
  'vrai_faux',
  '« Les girafes que j''ai vu courir » : « vu » est invariable car suivi d''un infinitif.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Correct. Quand le participe passé est suivi d''un infinitif, il s''accorde avec le COD antéposé seulement si celui-ci fait l''action de l''infinitif. Ici, ce sont les girafes qui courent : « vues » serait aussi acceptable. Mais la règle simplifiée (invariabilité devant infinitif) est admise, surtout pour « fait » et « laissé ».',
  'Cette règle est délicate. L''invariabilité de « fait + infinitif » est obligatoire (« elle s''est fait remarquer »), mais pour les autres verbes, l''accord est possible si le COD fait l''action.',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q8
(
  'fa230000-0000-0000-0000-000000000008',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Facile',
  'vrai_faux',
  '« Parmis les candidats » est correctement orthographié.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Parmi » s''écrit sans -s final. C''est une préposition invariable. De même, « hormis » s''écrit avec un -s (seule exception). Moyen mnémotechnique : « parmi » n''a qu''un seul « i » et pas de « s ».',
  'Ajouter un -s à « parmi » par analogie avec « hormis ». Ce sont deux mots différents.',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q9
(
  'fa230000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Intermediaire',
  'vrai_faux',
  '« Malgré que » est considéré comme correct en français soutenu.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Malgré que » est une construction critiquée par la norme. En français soigné, on emploie « bien que + subjonctif » ou « malgré + nom » (sans « que »). L''Académie française et les grammaires de référence déconseillent « malgré que ».',
  'Croire que « malgré que » est équivalent à « bien que ». En français normé, « malgré » est une préposition suivie d''un nom, pas d''une proposition.',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
),

-- Q10
(
  'fa230000-0000-0000-0000-000000000010',
  'Francais', 'orthographe', 'swipe_orthographe_usage', 'Swipe — Orthographe d''usage', 'Intermediaire',
  'vrai_faux',
  '« Les pommes de terre » prend un -s uniquement à « pomme » au pluriel.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Des pommes de terre » prend un -s à « pommes » ET reste sans -s à « terre ». Le mot composé suit la logique sémantique : ce sont des « pommes » (plusieurs) venues « de terre » (complément du nom invariable). On écrit aussi « des arcs-en-ciel » (plusieurs arcs, un seul ciel).',
  'L''affirmation est trompeuse : « terre » n''est pas au pluriel, c''est un complément du nom. La phrase est fausse car elle laisse croire que l''absence de -s à « terre » serait la particularité, alors que c''est la règle normale.',
  'valide', 'CRPE Français — Swipe orthographe', 'free', true
) ON CONFLICT (id) DO NOTHING;
