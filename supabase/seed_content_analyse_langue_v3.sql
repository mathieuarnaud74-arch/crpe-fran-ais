-- CRPE Français — Analyse de la langue V3 (3 séries × 10 questions)
-- Toutes QCM 4 choix, niveau Difficile, premium
-- Séries : al_cohesion_textuelle (90), al_modalite_enonciation (91), al_fonctions_complexes (92)

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 90 — Cohésion textuelle et anaphores — Difficile — premium
-- ================================================================

('90000000-0000-0000-0000-000000000001','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Dans « Paul a acheté un livre. Il l''a lu en une nuit. », de quel type d''anaphore relèvent les reprises par « il » et « l'' » ?',null,
'[{"id":"a","label":"Anaphore nominale — répétition du nom"},{"id":"b","label":"Anaphore pronominale — reprise par pronom personnel"},{"id":"c","label":"Anaphore adverbiale"},{"id":"d","label":"Anaphore résomptive — reprise par un terme générique"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Il » reprend « Paul » et « l'' » reprend « un livre » — ce sont deux anaphores pronominales, le procédé de cohésion le plus fréquent. Rappel des principaux types : pronominale (il, le, y, en...) ; nominale (répétition ou substitution lexicale : « le chien » → « l''animal ») ; résomptive (terme générique qui synthétise un passage : « ces trois raisons » résume les arguments précédents) ; adverbiale (alors, là, y...). La maîtrise de ces catégories est attendue dans l''analyse des mécanismes de cohésion textuelle au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000002','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Qu''est-ce qu''une anaphore résomptive ?',null,
'[{"id":"a","label":"Une anaphore qui reprend le référent par un pronom personnel"},{"id":"b","label":"Une répétition identique du groupe nominal antécédent"},{"id":"c","label":"Un terme générique qui reprend et synthétise un ensemble d''éléments ou une proposition entière"},{"id":"d","label":"Un connecteur logique qui marque la conclusion d''un raisonnement"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''anaphore résomptive condense dans un terme générique ce qui a été dit auparavant. Exemple : « Il travaille, cuisine, s''occupe des enfants. Ces multiples responsabilités l''épuisent. » → « ces multiples responsabilités » résume et recatégorise tout ce qui précède. C''est un procédé structurant du texte argumentatif. Elle se distingue de la simple reprise pronominale car elle apporte une catégorisation supplémentaire, souvent évaluative. Son identification est attendue dans l''analyse des mécanismes de cohérence textuelle au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000003','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Dans « Bien qu''il ait travaillé dur, il a échoué à l''examen », quel rapport logique le connecteur « bien que » exprime-t-il ?',null,
'[{"id":"a","label":"Cause"},{"id":"b","label":"Conséquence"},{"id":"c","label":"Concession"},{"id":"d","label":"But"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Bien que » + subjonctif = concession. La concession exprime un fait réel (il a travaillé dur) qui ne suffit pas à empêcher le résultat de la principale — il a échoué quand même. L''opposition simple (mais) établit un contraste factuel ; la concession implique en plus une attente logique déçue : le travail aurait dû produire la réussite. Repère les connecteurs concessifs : bien que, quoique, encore que, même si, malgré, en dépit de, pourtant, cependant, néanmoins. Distinguer opposition et concession dans un texte argumentatif est une compétence explicitement attendue au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000004','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Dans « Marie est partie tôt. Paul l''a attendue en vain. », quel est le référent du pronom « l'' » et quelle manipulation le confirme ?',null,
'[{"id":"a","label":"Paul — on peut substituer « Paul » à « l'' » sans changer le sens"},{"id":"b","label":"Marie — on peut substituer « Marie » à « l'' » et la phrase reste grammaticale et cohérente"},{"id":"c","label":"Le référent est ambigu — la phrase est mal construite"},{"id":"d","label":"La partance — « l'' » reprend l''action de partir"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« L'' » est un pronom COD féminin singulier. Il reprend « Marie » (féminin singulier), le seul référent féminin disponible. Test de substitution : « Paul a attendu Marie en vain » ✓. Paul est masculin — impossible. La coréférence désigne l''identité de référent entre deux expressions. La manipulation de substitution est la procédure de base pour identifier le référent d''un pronom et vérifier la lecture. Au CRPE, justifier une coréférence par une manipulation syntaxique précise est une compétence attendue dans l''analyse de la cohésion pronominale.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000005','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Qu''est-ce que la progression thématique à thème constant ?',null,
'[{"id":"a","label":"Chaque phrase introduit un thème et un rhème différents"},{"id":"b","label":"Le thème (sujet dont on parle) reste le même tout au long du texte, seul le rhème (information nouvelle) varie"},{"id":"c","label":"Le rhème d''une phrase devient le thème de la suivante"},{"id":"d","label":"Le texte alterne en permanence entre deux thèmes antagonistes"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans la progression à thème constant, le même élément (thème = point de départ, ce dont on parle) est maintenu à chaque phrase, et seule l''information apportée (rhème = ce qu''on dit du thème) varie. Caractéristique des textes descriptifs : « Le chat dort. Le chat mange. Le chat joue. » → thème constant = le chat. Les trois types à connaître : thème constant (même sujet, rhèmes variés) ; progression linéaire (rhème n → thème n+1) ; thèmes dérivés (d''un hyperthème, chaque phrase développe un aspect). Cette notion de progression thématique est fondamentale pour l''analyse de la cohérence textuelle au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000006','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Quelle est la différence entre un connecteur d''opposition et un connecteur de concession ?',null,
'[{"id":"a","label":"Il n''y a aucune différence — opposition et concession sont synonymes en linguistique"},{"id":"b","label":"Le connecteur d''opposition établit un simple contraste ; le connecteur de concession marque que le fait admis aurait dû logiquement entraîner l''inverse du résultat"},{"id":"c","label":"La concession s''emploie uniquement à l''oral, l''opposition uniquement à l''écrit"},{"id":"d","label":"L''opposition introduit toujours une subordonnée, la concession jamais"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Distinction fine mais fondamentale ! « Mais » = opposition simple : contraste factuel (« Elle est grande mais lui est petit »). « Bien que / pourtant / même si » = concession : le fait admis aurait logiquement dû produire l''inverse (« Bien qu''il soit grand, il ne joue pas au basket » — être grand aurait dû favoriser le basket). La concession implique une attente logique déçue, l''opposition non. Dans l''analyse d''un texte argumentatif, différencier les deux est une compétence explicitement évaluée : un plan concessif (certes… mais) structure un raisonnement dialectique.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000007','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Dans la substitution lexicale, quel procédé consiste à reprendre un terme par un mot de sens plus général ?',null,
'[{"id":"a","label":"La répétition lexicale"},{"id":"b","label":"La pronominalisation"},{"id":"c","label":"La métonymie"},{"id":"d","label":"L''anaphore par hyperonyme"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''anaphore hypéronymique reprend un terme par son hyperonyme (terme de sens plus général). Exemple : « Un caniche est entré dans la pièce. L''animal se coucha. » → « animal » est l''hyperonyme de « caniche ». À l''inverse, reprendre par un hyponyme (terme plus spécifique) est rare. L''alternance terme spécifique / hyperonyme enrichit le texte, assure la cohésion sans répétition lourde et peut aussi porter une évaluation (« l''animal » → neutre ; « la bête » → connotation plus péjorative). Cette variété des substituts lexicaux fait partie des attendus d''analyse textuelle au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000008','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Parmi ces connecteurs, lequel exprime le plus clairement une relation de reformulation ?',null,
'[{"id":"a","label":"« donc »"},{"id":"b","label":"« cependant »"},{"id":"c","label":"« c''est-à-dire »"},{"id":"d","label":"« par conséquent »"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« C''est-à-dire » (et ses variantes : autrement dit, en d''autres termes, soit, à savoir) introduit une reformulation : on réexprime la même information avec d''autres mots pour clarifier ou préciser. À distinguer : reformulation = c''est-à-dire, autrement dit ; conséquence = donc, par conséquent, ainsi, aussi ; opposition = cependant, néanmoins, toutefois ; exemplification = par exemple, notamment, ainsi (ambigu). La reformulation est un procédé central de la cohérence textuelle, très fréquent dans les textes explicatifs et didactiques — son identification est une compétence de base au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000009','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Dans un texte narratif, quelle expression assure la cohésion chronologique en marquant la postériorité ?',null,
'[{"id":"a","label":"« pourtant »"},{"id":"b","label":"« c''est pourquoi »"},{"id":"c","label":"« peu auparavant »"},{"id":"d","label":"« le lendemain »"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Le lendemain » est un connecteur temporel de postériorité : l''action du lendemain vient chronologiquement après. Les connecteurs temporels assurent la cohésion du récit : antériorité (la veille, auparavant, jadis, peu avant...) ; simultanéité (pendant ce temps, alors, au même moment, tandis que...) ; postériorité (le lendemain, ensuite, bientôt, plus tard, dès lors...). « Pourtant » = concession ; « c''est pourquoi » = conséquence ; « peu auparavant » = antériorité. Ne pas confondre la relation temporelle et la relation logique — deux types de liens très différents à identifier dans un texte.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('90000000-0000-0000-0000-000000000010','Francais','analyse_langue','al_cohesion_textuelle','Cohésion textuelle et anaphores','Difficile','qcm',
'Qu''est-ce que l''ellipse anaphorique ?',null,
'[{"id":"a","label":"La répétition d''un groupe nominal identique dans deux phrases successives"},{"id":"b","label":"Un type de substitution par un synonyme exact"},{"id":"c","label":"L''omission d''un élément déjà mentionné, récupérable sans ambiguïté grâce au contexte"},{"id":"d","label":"Un pronom qui anticipe un référent non encore introduit dans le texte"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''ellipse anaphorique efface un segment déjà évoqué, que le lecteur peut récupérer sans ambiguïté. Exemple : « Paul est venu. Marie aussi [est venue]. » → « est venue » est ellipdé, récupérable grâce à la phrase précédente. Elle allège le texte tout en maintenant la cohésion. L''option d est l''anaphore cataphorique (ou prolepse) : elle annonce un référent non encore introduit (« Il est enfin arrivé, ce moment tant attendu »). Distinguer ellipse (suppression récupérable) et anaphore cataphorique (anticipation) est une nuance attendue dans l''analyse linguistique au niveau Difficile du CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

-- ================================================================
-- SÉRIE 91 — Modalité et énonciation — Difficile — premium
-- ================================================================

('91000000-0000-0000-0000-000000000001','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Dans « Elle doit partir demain » au sens de « il est probable qu''elle parte », quelle modalité est exprimée ?',null,
'[{"id":"a","label":"Modalité déontique — obligation morale ou sociale"},{"id":"b","label":"Modalité épistémique — degré de certitude ou de probabilité du locuteur"},{"id":"c","label":"Modalité appréciative — jugement de valeur sur le fait"},{"id":"d","label":"Modalité aléthique — nécessité logique ou naturelle"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Devoir » est polymodal selon le contexte : déontique = obligation (« tu dois obéir ») ; épistémique = probabilité, déduction (« elle doit être fatiguée » = j''estime probable qu''elle le soit). Ici le sens est clairement épistémique : le locuteur évalue la probabilité de l''événement. Même ambiguïté pour « pouvoir » : déontique (« tu peux partir » = permission) vs épistémique (« il peut pleuvoir » = c''est possible). Au CRPE, identifier le type de modalité est attendu dans l''analyse des textes de presse, officiels ou littéraires — les indices contextuels permettent de trancher.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000002','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Qu''appelle-t-on les embrayeurs (ou déictiques) dans la théorie de l''énonciation ?',null,
'[{"id":"a","label":"Les connecteurs logiques (donc, mais, car...)"},{"id":"b","label":"Les temps verbaux du passé (imparfait, passé simple)"},{"id":"c","label":"Les mots dont le sens varie selon la situation d''énonciation (je, ici, maintenant, demain...)"},{"id":"d","label":"Les figures de style qui renforcent l''expressivité"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Les embrayeurs (terme de Jakobson) ou déictiques sont des éléments dont le référent varie selon qui parle, où et quand : « je » désigne toujours le locuteur en cours ; « ici » = le lieu d''énonciation ; « maintenant » = le moment de parole ; « demain » = le lendemain de ce moment. Comprendre les déictiques est fondamental pour l''analyse de l''énonciation et pour la transposition au discours indirect : je → il/elle, ici → là, maintenant → alors, demain → le lendemain. Ces transformations des déictiques sont précisément évaluées dans les exercices de discours indirect au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000003','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Dans « Tu n''as pas encore fini ! », quel présupposé la phrase véhicule-t-elle ?',null,
'[{"id":"a","label":"La personne a commencé quelque chose"},{"id":"b","label":"La personne travaille lentement"},{"id":"c","label":"La personne ne finira jamais"},{"id":"d","label":"La phrase ne contient aucun présupposé — tout y est dit explicitement"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Pas encore » présuppose qu''une action a commencé mais n''est pas achevée → la personne a donc commencé. Le présupposé est une information implicite encodée dans la structure de l''énoncé, indépendamment de sa vérité. Il se distingue du posé (ce qu''on affirme) et de l''implicature (ce qu''on infère du contexte). Les présupposés sont déclenchés par certains adverbes (encore, déjà, toujours, enfin), certains verbes (savoir, cesser, recommencer, regretter) et certaines structures (descriptions définies). Repérer et analyser les présupposés est une compétence explicitement attendue au CRPE pour l''analyse des implicites.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000004','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Qu''est-ce que le discours indirect libre (DIL) ?',null,
'[{"id":"a","label":"Un discours rapporté entre guillemets avec verbe introducteur"},{"id":"b","label":"Un discours indirect complet avec subordonnée complétive et conjonction « que »"},{"id":"c","label":"Une forme qui emprunte la syntaxe du discours indirect (temps, personnes) mais conserve les marques expressives du discours direct, sans verbe introducteur ni subordination"},{"id":"d","label":"Le résumé au style neutre des paroles d''un personnage"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le DIL mélange les deux formes : il garde les temps et personnes du discours indirect (3e personne, temps du passé), mais conserve les exclamations, interrogations et marques affectives du discours direct, sans aucun verbe introducteur. Exemple : « Elle hésita. Partirait-elle vraiment ? Non, c''était impossible. » → Ce sont les pensées de la personnage au style indirect libre. Technique narrative majeure du roman moderne (Flaubert, Zola, Woolf...) — son identification, par opposition au discours direct et indirect, est attendue dans les exercices d''analyse littéraire et linguistique du CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000005','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Quelle est la valeur illocutoire de : « Tu pourrais fermer la fenêtre ? »',null,
'[{"id":"a","label":"Une question sincère sur les capacités physiques de l''interlocuteur"},{"id":"b","label":"Une requête polie formulée sous forme interrogative"},{"id":"c","label":"Un reproche voilé sur le manque d''initiative de l''interlocuteur"},{"id":"d","label":"Un ordre direct déguisé en question rhétorique"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La pragmatique distingue l''acte locutoire (ce qui est dit littéralement : une question), l''acte illocutoire (ce qu''on fait en le disant : une requête) et l''acte perlocutoire (l''effet visé : que l''interlocuteur ferme la fenêtre). « Tu pourrais... » est formellement une interrogative, mais l''acte illocutoire est une demande polie — un acte de langage indirect. Les actes de langage indirects sont omniprésents dans la communication quotidienne et dans les textes littéraires. Leur identification et leur analyse (Austin, Searle) font partie des attendus de linguistique textuelle et pragmatique au CRPE niveau Difficile.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000006','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Dans « Il a affirmé qu''il était innocent », quelle nuance apporte le verbe introducteur « affirmer » par rapport à « dire » ?',null,
'[{"id":"a","label":"Aucune différence — affirmer et dire sont des synonymes exacts dans ce contexte"},{"id":"b","label":"« Affirmer » indique que le locuteur rapporteur garantit lui-même la vérité du contenu"},{"id":"c","label":"« Affirmer » est un verbe de parole qui indique l''engagement fort du locuteur sur la vérité de ses propres propos (valeur assertive renforcée)"},{"id":"d","label":"« Affirmer » signale que le contenu rapporté est probablement faux"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Les verbes introducteurs du discours rapporté ne sont pas neutres — ils colorent sémantiquement le rapport. « Dire » = neutre ; « affirmer » = engagement fort sur la vérité de ce qu''on dit ; « prétendre » = méfiance du rapporteur (implication possible que c''est faux) ; « reconnaître » = aveu ; « déclarer » = solennité officielle ; « insinuer » = sous-entendu. Cette sélection lexicale influence la perception du lecteur sur la fiabilité du propos. Dans l''analyse des textes journalistiques ou officiels, repérer et commenter ces nuances est une compétence centrale au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000007','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Quelle est la différence entre une énonciation « embrayée » et une énonciation « non embrayée » ?',null,
'[{"id":"a","label":"Une énonciation embrayée utilise des verbes au présent, une non embrayée utilise des verbes au passé"},{"id":"b","label":"Une énonciation embrayée est ancrée dans la situation de communication (je, tu, ici, maintenant) ; une non embrayée s''en détache (3e personne, passé simple, repères temporels autonomes)"},{"id":"c","label":"Une énonciation embrayée est formelle, une non embrayée est informelle"},{"id":"d","label":"Une énonciation embrayée relève du discours direct, une non embrayée du discours indirect"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''énonciation embrayée (Benveniste : « discours ») renvoie à la situation de communication par ses déictiques (je, tu, ici, maintenant, ce...). L''énonciation non embrayée (« récit ») se coupe de la situation d''énonciation : 3e personne, passé simple, repères temporels autonomes (il/elle, là-bas, alors, la veille...). Un roman à la 3e personne est non embrayé ; un journal intime est embrayé. Cette distinction est fondamentale pour analyser les choix énonciatifs dans les textes littéraires, journalistiques et officiels — et pour comprendre pourquoi le passé simple n''est pas employé dans les textes en « je ».',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000008','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Qu''est-ce qu''un présupposé existentiel ?',null,
'[{"id":"a","label":"La conséquence logique d''un énoncé sur l''existence future d''une chose"},{"id":"b","label":"L''affirmation explicite qu''un objet ou une personne existe"},{"id":"c","label":"L''implication implicite que le référent d''une description définie existe"},{"id":"d","label":"Un présupposé introduit exclusivement par un verbe de perception"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le présupposé existentiel est déclenché par les expressions référentielles définies (« le roi de France », « ma sœur »...). « Le roi de France est chauve » présuppose qu''un roi de France existe. Si le présupposé est faux, l''énoncé n''est ni vrai ni faux — c''est l''échec de la présupposition (Russell, Strawson). Ainsi, « J''ai rencontré ta sœur » présuppose que tu as une sœur. Ce type d''analyse, ancré dans la philosophie du langage, est attendu au niveau Difficile dans l''analyse des implicites d''un texte. Distinguer présupposé existentiel, présupposé factif (verbes comme savoir, regretter) et implicature conversationnelle.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000009','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Qu''est-ce que la polyphonie énonciative dans un texte ?',null,
'[{"id":"a","label":"La présence de plusieurs personnages qui prennent la parole dans un dialogue"},{"id":"b","label":"La coexistence, dans un même énoncé, de plusieurs voix ou points de vue que le locuteur met en scène sans tous les endosser"},{"id":"c","label":"L''alternance entre récit et description dans un texte narratif"},{"id":"d","label":"L''emploi de différents registres de langue dans un même texte"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La polyphonie (concept de Ducrot) distingue le locuteur (celui qui produit l''énoncé) des énonciateurs (les points de vue pris en charge ou mis à distance). Dans « Selon lui, ce serait une bonne idée », le locuteur rapporte le point de vue d''un autre sans l''endosser. L''ironie est une forme de polyphonie : « C''est vraiment intelligent... » → le locuteur met en scène un point de vue (que c''est intelligent) tout en le niant implicitement. Reconnaître la polyphonie permet d''analyser finement l''engagement du locuteur — une compétence attendue dans l''analyse des textes argumentatifs et journalistiques au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('91000000-0000-0000-0000-000000000010','Francais','analyse_langue','al_modalite_enonciation','Modalité et énonciation','Difficile','qcm',
'Dans « Paraît-il qu''il aurait démissionné », quels deux procédés énonciatifs se combinent ?',null,
'[{"id":"a","label":"Conditionnel de politesse et deixis temporelle"},{"id":"b","label":"Conditionnel journalistique (information non vérifiée) et verbe d''ouï-dire « paraît-il »"},{"id":"c","label":"Conditionnel d''hypothèse irréelle et connecteur de concession"},{"id":"d","label":"Futur du passé (concordance des temps) et subordonnée complétive"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Aurait démissionné » = conditionnel journalistique : le locuteur rapporte une information dont il ne garantit pas la vérité. « Paraît-il » = marque d''ouï-dire supplémentaire, qui renforce l''effacement énonciatif. Cette combinaison signale une distanciation maximale : le locuteur ne prend aucune responsabilité sur le contenu. Les textes journalistiques et politiques multiplient ces procédés : conditionnel + verbes de déclaration modalisés (on dit que, selon certaines sources, il semblerait que...). Leur identification et leur analyse sont une compétence attendue au CRPE pour l''étude des textes médiatiques.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

-- ================================================================
-- SÉRIE 92 — Fonctions syntaxiques complexes — Difficile — premium
-- ================================================================

('92000000-0000-0000-0000-000000000001','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Quelle est la fonction de « médecin-chef » dans : « Ils l''ont nommé médecin-chef » ?',null,
'[{"id":"a","label":"Attribut du sujet"},{"id":"b","label":"COD du verbe nommer"},{"id":"c","label":"Attribut de l''objet (attribut du COD)"},{"id":"d","label":"Apposition au COD"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''attribut de l''objet caractérise le COD et se construit avec des verbes spécifiques : nommer, élire, appeler, considérer comme, croire, rendre, trouver, juger... Test : reformuler par « il est devenu médecin-chef par leur nomination » ✓. Il diffère de l''apposition (pas liée à un verbe attributif de ce type) et du COD (qui désigne l''objet de l''action, pas sa caractérisation). « L'' » est ici le COD (= lui), et « médecin-chef » est l''attribut qui le caractérise via le verbe « nommer ». Cette fonction, souvent négligée en classe, est régulièrement évaluée au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000002','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Dans « Marie, ma meilleure amie, est médecin. », quelle est la fonction de « ma meilleure amie » ?',null,
'[{"id":"a","label":"Attribut du sujet"},{"id":"b","label":"Épithète liée de Marie"},{"id":"c","label":"Complément du nom Marie"},{"id":"d","label":"Apposition à Marie"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Ma meilleure amie » est une apposition : elle reprend et caractérise « Marie » en la désignant de façon équivalente, séparée par des virgules. Critère formel : l''apposition peut être supprimée sans affecter la construction de la phrase ; elle est détachée. À distinguer : épithète liée (directement accolée au nom, sans virgules) ; complément du nom (introduit par une préposition : « l''amie de Marie ») ; attribut du sujet (relié par un verbe attributif). L''apposition peut être nominale, adjectivale, infinitive ou propositionnelle. Au CRPE, justifier la fonction de l''apposition par ses critères formels (suppression, détachement) est attendu.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000003','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Dans « Cette décision semble injuste », quelle est la fonction de l''adjectif « injuste » ?',null,
'[{"id":"a","label":"Épithète liée du sujet"},{"id":"b","label":"Épithète détachée (apposée)"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"Complément de manière"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Injuste » est attribut du sujet « cette décision », relié par le verbe attributif « sembler ». Critère décisif : un attribut du sujet est lié au sujet par un verbe attributif (être, sembler, paraître, devenir, rester, avoir l''air, passer pour...) et le caractérise. À distinguer : l''épithète liée est directement accolée au nom (« une décision injuste ») ; l''apposition (adjectif détaché) est séparée par des virgules (« Cette décision, injuste, a surpris tout le monde »). Ces trois fonctions de l''adjectif — épithète liée, apposition (adjectif détaché), attribut — sont fondamentales à distinguer et à justifier au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000004','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Dans « La réunion terminée, chacun repartit chez soi », quelle est la nature et la fonction de « La réunion terminée » ?',null,
'[{"id":"a","label":"Proposition subordonnée relative, épithète de « la réunion »"},{"id":"b","label":"Proposition participiale absolue, complément circonstanciel de temps ou de cause"},{"id":"c","label":"Proposition principale coordonnée à la suivante"},{"id":"d","label":"Proposition subordonnée complétive sujet de « repartit »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« La réunion terminée » est une proposition participiale absolue : elle possède son propre sujet (« la réunion ») distinct du sujet de la principale (« chacun »), et un participe passé comme prédicat. Fonction : CC de temps (= quand la réunion fut terminée) ou de cause selon le contexte. À ne pas confondre avec le participe épithète (même sujet que le nom) ou le gérondif (même sujet que la principale : « en partant »). Les propositions participiales sont fréquentes dans les textes littéraires et officiels — leur analyse précise (sujet propre, valeur sémantique) est attendue au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000005','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Quelle est la fonction du groupe infinitif dans : « Il espère réussir son concours » ?',null,
'[{"id":"a","label":"Sujet du verbe espère"},{"id":"b","label":"COD du verbe espère"},{"id":"c","label":"Complément circonstanciel de but"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''infinitive COD se construit directement après les verbes de désir, d''espoir, de volonté : espérer, vouloir, souhaiter, désirer, aimer, compter, prétendre... Test : remplacer l''infinitif par un GN → « il espère [son succès] » ✓ → COD. Ne pas confondre avec l''infinitif de but (introduit par « pour » : « il part pour réussir » = CC de but) et avec l''infinitif sujet (« Vivre sans travailler est son rêve »). Au CRPE, l''analyse des propositions infinitives — sujet, COD, CC de but — est régulièrement évaluée dans les exercices de fonctions.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000006','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Qu''est-ce qu''un complément d''objet (COD ou COI) par opposition à un complément circonstanciel ?',null,
'[{"id":"a","label":"Un complément qui décrit les circonstances de l''action (temps, lieu, manière)"},{"id":"b","label":"Un complément qui peut être facilement supprimé ou déplacé dans la phrase"},{"id":"c","label":"Un complément qui fait partie intégrante de la valence du verbe et ne peut être ni supprimé ni déplacé sans altérer la structure ou le sens"},{"id":"d","label":"Un complément toujours introduit par une préposition"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le complément d''objet (COD, COI) est intimement lié à la valence du verbe — il complète sa structure : « mettre [qqch] [qqpart] » exige deux compléments d''objet. On ne peut pas dire « il met » tout court. Tests : suppression impossible sans rendre la phrase agrammaticale ou changer le sens ; déplacement impossible en tête de phrase. Le circonstanciel est facultatif et mobile : « il mange vite / vite, il mange / il mange à midi ». Cette distinction complément d''objet / circonstanciel est fondamentale pour l''analyse des fonctions au CRPE (Éduscol 2021).',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000007','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Dans « C''est lui qui a résolu le problème », de quel procédé syntaxique s''agit-il ?',null,
'[{"id":"a","label":"Une phrase nominale"},{"id":"b","label":"Une phrase impersonnelle"},{"id":"c","label":"Une construction clivée permettant la focalisation du sujet"},{"id":"d","label":"Une phrase exclamative à sujet inversé"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La construction clivée (« c''est... qui/que ») dissocie la phrase de base en deux propositions pour focaliser l''attention sur un constituant. Phrase de base : « Il a résolu le problème. » → clivée : « C''est lui qui a résolu le problème. » (focalisation du sujet → qui). Pour focaliser le COD : « C''est le problème qu''il a résolu. » (→ que). La pseudo-clivée utilise « ce qui/ce que... c''est... » : « Ce qu''il a résolu, c''est le problème. » Ces constructions sont des manipulations syntaxiques fondamentales au CRPE — à distinguer précisément dans les exercices de transformation.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000008','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Quelle est la différence entre une relative déterminative et une relative explicative ?',null,
'[{"id":"a","label":"La relative déterminative est introduite par « que », la relative explicative par « qui »"},{"id":"b","label":"La relative déterminative restreint le référent de l''antécédent (essentielle au sens) ; la relative explicative l''enrichit sans le restreindre, détachée par des virgules"},{"id":"c","label":"La relative déterminative est toujours au subjonctif, la relative explicative toujours à l''indicatif"},{"id":"d","label":"Il n''y a aucune différence syntaxique entre les deux"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La relative déterminative sélectionne parmi les éléments de la classe : « Les étudiants qui ont réussi sont félicités » (= uniquement ceux qui ont réussi). Supprimer la relative changerait radicalement le sens. La relative explicative ajoute une information sur un référent déjà identifié : « Les étudiants, qui ont tous réussi, sont félicités » (= toute la promotion). Les virgules sont la marque formelle de la distinction. Elle a des effets de sens cruciaux — sur la portée de l''énoncé et la ponctuation. Au CRPE, cette distinction est évaluée dans l''analyse des subtilités syntaxiques et de la ponctuation.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000009','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Dans « Fatiguée, elle s''endormit aussitôt », quelle est la fonction de l''adjectif « fatiguée » ?',null,
'[{"id":"a","label":"Attribut du sujet avec verbe attributif implicite"},{"id":"b","label":"Épithète liée de « elle »"},{"id":"c","label":"Apposition (adjectif détaché), apposée au sujet"},{"id":"d","label":"Complément de manière du verbe « s''endormit »"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Fatiguée » est une apposition (adjectif détaché, Éduscol 2021) : séparée par une virgule, elle renvoie au sujet « elle » et exprime une circonstance concomitante à l''action principale. On peut la reformuler : « Elle s''endormit parce qu''elle était fatiguée » ou « Comme elle était fatiguée, elle s''endormit ». Elle diffère de l''attribut du sujet (qui exige un verbe attributif : « elle paraissait fatiguée ») et de l''épithète liée (directement accolée : « Elle, fatiguée, s''endormit » n''est pas liée). Cette apposition est une structure très productive en stylistique littéraire — attendu au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true),

('92000000-0000-0000-0000-000000000010','Francais','analyse_langue','al_fonctions_complexes','Fonctions syntaxiques complexes','Difficile','qcm',
'Dans « Il est important que tu viennes », quelle est la fonction de la complétive « que tu viennes » ?',null,
'[{"id":"a","label":"COD du verbe être"},{"id":"b","label":"Sujet réel (logique) du verbe impersonnel, « il » étant le sujet grammatical apparent"},{"id":"c","label":"Sujet grammatical apparent de la phrase"},{"id":"d","label":"Complément circonstanciel de cause"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans les constructions impersonnelles, « il » est le sujet grammatical apparent (ou fictif) et la complétive est le sujet réel (logique). Test : « que tu viennes est important » ✓ (maladroit mais grammatical). Les constructions impersonnelles avec complétive sujet réel sont très fréquentes dans le français formel : il faut, il semble, il est possible / important / nécessaire / probable + que + subjonctif. Cette structure implique systématiquement le subjonctif dans la complétive. Analyser la distinction sujet apparent / sujet réel dans ces constructions est une compétence fondamentale au CRPE.',
'valide','CRPE Français — Analyse de la langue V3','premium',true)

;
