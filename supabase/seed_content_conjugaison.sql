-- CRPE FranÃ§ais â€” Lot 3 : Conjugaison (5 sÃ©ries Ã— 10 questions)
-- topic_key unique par sÃ©rie garantit le regroupement en session de 10 questions
-- Appliquer APRÃˆS les migrations et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÃ‰RIE 16 â€” PrÃ©sent de l'indicatif â€” Facile â€” free
-- ================================================================
('16000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Quelle est la conjugaison correcte de "aller" Ã  la 1re personne du singulier ?',null,
'[{"id":"a","label":"je alle"},{"id":"b","label":"je vais"},{"id":"c","label":"j''ale"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Aller" est un verbe irrÃ©gulier du 3e groupe dont la conjugaison au prÃ©sent est entiÃ¨rement supplÃ©rive : vais, vas, va, allons, allez, vont. La 1re personne du singulier est "je vais", Ã  retenir par cÅ“ur.',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Conjuguez "finir" Ã  la 2e personne du pluriel au prÃ©sent.',null,
'[{"id":"a","label":"vous finisez"},{"id":"b","label":"vous finissez"},{"id":"c","label":"vous finissiez"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Finir" est un verbe du 2e groupe. Au prÃ©sent, il se conjugue avec l''infixe -iss- aux formes du pluriel : nous finissons, vous finissez, ils finissent. La bonne forme est donc "vous finissez".',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','correction_orthographique',
'Corrigez la conjugaison : "Il fesait beau hier."',null,
null,
'{"mode":"text","acceptableAnswers":["Il faisait beau hier."]}'::jsonb,
'"Faire" conserve le radical "fais-" Ã  toutes les personnes sauf "vous faites" et "ils font". L''imparfait de "faire" : je faisais, tu faisais, il faisaitâ€¦ La graphie "fesait" est une erreur frÃ©quente liÃ©e Ã  la prononciation.',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Quelle est la forme correcte de "appeler" Ã  la 3e personne du singulier au prÃ©sent ?',null,
'[{"id":"a","label":"il apelle"},{"id":"b","label":"il appÃ¨le"},{"id":"c","label":"il appelle"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"Appeler" double le -l- devant e muet aux personnes 1, 2, 3 du singulier et 3 du pluriel : j''appelle, tu appelles, il appelle, ils appellent. Aux 1re et 2e personnes du pluriel, le -l- reste simple : nous appelons, vous appelez.',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','vrai_faux',
'Vrai ou faux ? "Nous mangons" est la forme correcte du prÃ©sent de "manger" Ã  la 1re pers. du pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Les verbes en -ger conservent le -e- devant -o- pour maintenir le son [Ê’] : nous mangeons (et non "mangons"). MÃªme rÃ¨gle pour : nager â†’ nous nageons, ranger â†’ nous rangeons, plonger â†’ nous plongeons.',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Conjuguez "pouvoir" Ã  la 1re personne du pluriel au prÃ©sent.',null,
'[{"id":"a","label":"nous pouvons"},{"id":"b","label":"nous pouveons"},{"id":"c","label":"nous peuvent"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Pouvoir" est irrÃ©gulier. Au prÃ©sent : je peux/puis, tu peux, il peut, nous pouvons, vous pouvez, ils peuvent. "Nous pouvons" est la 1re personne du pluriel. Ne pas confondre avec "peuvent" (3e pers. pluriel).',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','correction_orthographique',
'Corrigez : "Je veux bien mais je ne peut pas."',null,
null,
'{"mode":"text","acceptableAnswers":["Je veux bien mais je ne peux pas."]}'::jsonb,
'"Pouvoir" Ã  la 1re personne du singulier : "je peux" (ou "je puis" en tournure interrogative). "Peut" est la 3e personne du singulier (il peut). L''erreur est frÃ©quente car les deux formes sont homophones Ã  l''oral.',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Quelle est la forme correcte de "Ãªtre" Ã  la 2e personne du singulier au prÃ©sent ?',null,
'[{"id":"a","label":"tu ait"},{"id":"b","label":"tu est"},{"id":"c","label":"tu es"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'"ÃŠtre" au prÃ©sent de l''indicatif : je suis, tu es, il est, nous sommes, vous Ãªtes, ils sont. "Tu es" est la forme correcte. "Tu est" est une erreur par confusion avec la 3e personne. "Tu ait" n''existe pas.',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','vrai_faux',
'Vrai ou faux ? "Vous dites" est la conjugaison correcte de "dire" Ã  la 2e pers. du pluriel.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. "Dire" est irrÃ©gulier Ã  la 2e personne du pluriel : "vous dites" (et non "vous disez"). MÃªme irrÃ©gularitÃ© pour "faire" â†’ "vous faites" et "Ãªtre" â†’ "vous Ãªtes". Ces trois formes sont Ã  mÃ©moriser comme exceptions.',
'valide','CRPE FranÃ§ais V2','free',true),

('16000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_present','PrÃ©sent de l''indicatif','Facile','qcm',
'Quelle est la conjugaison de "prendre" Ã  la 3e personne du pluriel ?',null,
'[{"id":"a","label":"ils prennent"},{"id":"b","label":"ils prenent"},{"id":"c","label":"ils prends"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Prendre" au prÃ©sent : je prends, tu prends, il prend, nous prenons, vous prenez, ils prennent. La 3e pers. du pluriel double le -n- : "prennent". MÃªme modÃ¨le pour : apprendre â†’ ils apprennent, comprendre â†’ ils comprennent.',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 17 â€” Imparfait et passÃ© composÃ© â€” Facile â€” free
-- ================================================================
('17000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Choisissez le temps adaptÃ© : "Hier, pendant qu''il ___ (dormir), le tÃ©lÃ©phone a sonnÃ©."',null,
'[{"id":"a","label":"dormait"},{"id":"b","label":"a dormi"},{"id":"c","label":"dormira"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''imparfait exprime une action en cours, un cadre, lors d''une autre action ponctuelle au passÃ© composÃ©. "Pendant qu''il dormait" = action de fond (imparfait). "a sonnÃ©" = action ponctuelle qui interrompt (passÃ© composÃ©). C''est l''opposition fondamentale des deux temps.',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Quel temps utiliser : "Quand j''Ã©tais enfant, je ___ (jouer) souvent dehors."',null,
'[{"id":"a","label":"jouais"},{"id":"b","label":"ai jouÃ©"},{"id":"c","label":"joue"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''imparfait exprime une habitude ou un Ã©tat rÃ©pÃ©tÃ© dans le passÃ©. "Quand j''Ã©tais enfant" + "souvent" = indication d''habitude rÃ©pÃ©tÃ©e â†’ imparfait "jouais". Le passÃ© composÃ© aurait Ã©voquÃ© un fait ponctuel et datÃ©.',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','vrai_faux',
'Vrai ou faux ? L''imparfait de "avoir" Ã  la 1re personne du singulier est "j''avais".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. L''imparfait se forme sur le radical de la 1re personne du pluriel au prÃ©sent + terminaisons -ais, -ais, -ait, -ions, -iez, -aient. "Avoir" : nous avons â†’ radical "av-" â†’ j''avais, tu avais, il avaitâ€¦',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Conjuguez "partir" au passÃ© composÃ© Ã  la 1re personne du singulier.',null,
'[{"id":"a","label":"j''ai parti"},{"id":"b","label":"je suis parti"},{"id":"c","label":"je partais"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Partir" se conjugue avec l''auxiliaire "Ãªtre" au passÃ© composÃ©. Les verbes de mouvement intransitifs (aller, venir, partir, sortir, entrer, monter, descendreâ€¦) utilisent "Ãªtre". Donc : "je suis parti(e)" et non "j''ai parti".',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','correction_orthographique',
'Corrigez : "Ce matin, je mangeais une pomme quand le bus est arrivÃ©."',null,
null,
'{"mode":"text","acceptableAnswers":["Ce matin, je mangeais une pomme quand le bus est arrivÃ©."]}'::jsonb,
'La phrase est correcte. "Je mangeais" (imparfait) = action en cours, cadre. "Est arrivÃ©" (passÃ© composÃ©) = Ã©vÃ©nement ponctuel qui interrompt. L''opposition imparfait / passÃ© composÃ© est bien respectÃ©e.',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Quelle est la conjugaison de "Ãªtre" Ã  l''imparfait, 3e personne du pluriel ?',null,
'[{"id":"a","label":"ils Ã©taient"},{"id":"b","label":"ils seront"},{"id":"c","label":"ils sont"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"ÃŠtre" Ã  l''imparfait : j''Ã©tais, tu Ã©tais, il Ã©tait, nous Ã©tions, vous Ã©tiez, ils Ã©taient. La 3e personne du pluriel est "Ã©taient". "Ils sont" est le prÃ©sent ; "ils seront" est le futur simple.',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','vrai_faux',
'Vrai ou faux ? "Nous avons Ã©tÃ© heureux pendant ces annÃ©es" est grammaticalement correct.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Le passÃ© composÃ© "avons Ã©tÃ©" (auxiliaire avoir + participe passÃ© "Ã©tÃ©" de "Ãªtre") est correct pour exprimer un fait rÃ©volu vu dans son rÃ©sultat ou sa globalitÃ©. Ã€ distinguer de l''imparfait "Ã©tions" qui exprimerait un Ã©tat continu sans insistance sur la clÃ´ture.',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'ComplÃ©tez : "Il ___ (pleuvoir) depuis trois heures quand nous sommes sortis."',null,
'[{"id":"a","label":"pleuvait"},{"id":"b","label":"a plu"},{"id":"c","label":"pleut"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Depuis" + imparfait exprime une action en cours depuis un moment dans le passÃ© au moment d''un autre Ã©vÃ©nement. "Il pleuvait depuis trois heures" (durÃ©e en cours) + "quand nous sommes sortis" (Ã©vÃ©nement ponctuel). Opposition imparfait / passÃ© composÃ©.',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','correction_orthographique',
'Corrigez : "Hier soir, je regardais la tÃ©lÃ©vision et soudain, le courant coupait."',null,
null,
'{"mode":"text","acceptableAnswers":["Hier soir, je regardais la tÃ©lÃ©vision et soudain, le courant a Ã©tÃ© coupÃ©."]}'::jsonb,
'"Regardais" (imparfait) exprime l''action de fond. "Soudain" annonce un Ã©vÃ©nement ponctuel : on attend donc un passÃ© composÃ©. On Ã©crira ici "le courant a Ã©tÃ© coupÃ©".',
'valide','CRPE FranÃ§ais V2','free',true),

('17000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_imp_pc','Imparfait et passÃ© composÃ©','Facile','qcm',
'Choisissez le temps correct : "Avant, il ___ (ne pas aimer) les Ã©pinards."',null,
'[{"id":"a","label":"n''a pas aimÃ©"},{"id":"b","label":"n''aimait pas"},{"id":"c","label":"n''aime pas"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Avant" introduit un Ã©tat habituel ou continu dans le passÃ© â†’ imparfait "n''aimait pas". Le passÃ© composÃ© "n''a pas aimÃ©" exprimerait un refus ponctuel et datÃ©. L''imparfait est ici le temps de l''Ã©tat passÃ© rÃ©volu.',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 18 â€” Futur simple et conditionnel prÃ©sent â€” IntermÃ©diaire â€” free
-- ================================================================
('18000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Conjuguez "venir" au futur simple, 1re personne du singulier.',null,
'[{"id":"a","label":"je viendrais"},{"id":"b","label":"je viendrai"},{"id":"c","label":"je viens"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Venir" au futur simple : je viendrai, tu viendras, il viendra, nous viendrons, vous viendrez, ils viendront. Le radical du futur est "viendr-". Ã€ distinguer du conditionnel "je viendrais" qui a la mÃªme base mais les terminaisons de l''imparfait (-ais, -ais, -aitâ€¦).',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Choisissez le temps adaptÃ© : "Si j''avais le temps, je ___ (lire) davantage."',null,
'[{"id":"a","label":"lirai"},{"id":"b","label":"lisais"},{"id":"c","label":"lirais"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Dans une hypothÃ¨se irrÃ©elle au prÃ©sent : "si + imparfait â†’ conditionnel prÃ©sent". "Si j''avais le temps" (imparfait dans la subordonnÃ©e) â†’ "je lirais" (conditionnel dans la principale). "Si j''ai le temps, je lirai" = hypothÃ¨se rÃ©elle au futur.',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? Au futur simple, "Ãªtre" se conjugue "je serai, tu seras, il sera".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. "ÃŠtre" a un futur irrÃ©gulier : je serai, tu seras, il sera, nous serons, vous serez, ils seront. Le radical est "ser-". Ã€ distinguer de "avoir" : j''aurai, tu auras, il auraâ€¦ (radical "aur-").',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','correction_orthographique',
'Corrigez : "Demain, il feras beau."',null,
null,
'{"mode":"text","acceptableAnswers":["Demain, il fera beau."]}'::jsonb,
'"Faire" au futur simple : je ferai, tu feras, il fera. La 3e personne du singulier est "fera" (sans -s). La terminaison -s du futur n''existe qu''aux 1re et 2e personnes du singulier (je ferai, tu feras). La 3e pers. sing. est toujours en -a.',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Quel est le conditionnel prÃ©sent de "avoir" Ã  la 1re personne du singulier ?',null,
'[{"id":"a","label":"j''aurais"},{"id":"b","label":"j''aurai"},{"id":"c","label":"j''avais"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le conditionnel prÃ©sent = radical du futur + terminaisons de l''imparfait. "Avoir" : radical du futur "aur-" + "-ais" â†’ "j''aurais". "J''aurai" est le futur simple. "J''avais" est l''imparfait. La diffÃ©rence futur/conditionnel : -ai vs -ais Ã  la 1re pers. sing.',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Choisissez la forme correcte : "Selon la mÃ©tÃ©o, il ___ (neiger) demain."',null,
'[{"id":"a","label":"neigerait"},{"id":"b","label":"neigera"},{"id":"c","label":"neige"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Selon la mÃ©tÃ©o" introduit un doute, une information non certifiÃ©e â†’ conditionnel journalistique (conditionnel de l''incertitude). "Il neigerait" exprime que l''information est rapportÃ©e sans garantie. "Neigera" serait une affirmation certaine.',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? "Aller" au futur simple donne "j''allerai".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. "Aller" a un futur irrÃ©gulier avec un radical diffÃ©rent : "ir-". Je irai, tu iras, il ira, nous irons, vous irez, ils iront. Ne pas confondre avec le radical "all-" du prÃ©sent (nous allons, vous allez).',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Quel est le futur simple de "envoyer" Ã  la 1re personne du singulier ?',null,
'[{"id":"a","label":"j''enverrai"},{"id":"b","label":"j''envoierai"},{"id":"c","label":"j''enverais"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Envoyer" a un futur irrÃ©gulier : le radical devient "enverr-". Je enverrai, tu enverras, il enverraâ€¦ Ne pas Ã©crire "envoierai" (erreur frÃ©quente par analogie avec le prÃ©sent : j''envoie). MÃªme irrÃ©gularitÃ© pour "renvoyer" â†’ je renverrai.',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','correction_orthographique',
'Corrigez : "Si tu venais, nous pourrions dÃ®ner ensemble."',null,
null,
'{"mode":"text","acceptableAnswers":["Si tu venais, nous pourrions dÃ®ner ensemble."]}'::jsonb,
'La phrase est correcte. Structure hypothÃ©tique au prÃ©sent irrÃ©el : "si + imparfait (venais) â†’ conditionnel prÃ©sent (pourrions)". L''accord des temps est parfaitement respectÃ©. Attention Ã  ne pas Ã©crire "si tu viendrais" (erreur courante : on ne met jamais le conditionnel aprÃ¨s "si" de condition).',
'valide','CRPE FranÃ§ais V2','free',true),

('18000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_futur_cond','Futur simple et conditionnel prÃ©sent','Intermediaire','qcm',
'Distinguez futur et conditionnel : "Je ___ bien t''aider mais je n''ai pas le temps."',null,
'[{"id":"a","label":"voudrai"},{"id":"b","label":"voudrais"},{"id":"c","label":"voulus"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le conditionnel exprime ici une politesse ou un souhait attÃ©nuÃ©. "Je voudrais bien t''aider" = souhait poli, regret. "Je voudrai" (futur) exprimerait une volontÃ© future certaine, ce qui ne convient pas avec "mais je n''ai pas le temps".',
'valide','CRPE FranÃ§ais V2','free',true),

-- ================================================================
-- SÃ‰RIE 19 â€” Subjonctif prÃ©sent â€” IntermÃ©diaire â€” premium
-- ================================================================
('19000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Quel est le subjonctif prÃ©sent de "faire" Ã  la 3e personne du singulier ?',null,
'[{"id":"a","label":"qu''il fasse"},{"id":"b","label":"qu''il fait"},{"id":"c","label":"qu''il fera"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Faire" au subjonctif prÃ©sent est irrÃ©gulier : que je fasse, que tu fasses, qu''il fasse, que nous fassions, que vous fassiez, qu''ils fassent. Ã€ ne pas confondre avec l''indicatif prÃ©sent "il fait" ou le futur "il fera".',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? Le subjonctif est obligatoire aprÃ¨s "bien que".',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. "Bien que" est une conjonction de concession qui introduit toujours une subordonnÃ©e au subjonctif : "bien qu''il soit fatiguÃ©" (et non "bien qu''il est fatiguÃ©"). Autres conjonctions de concession suivies du subjonctif : quoique, encore que, sans que.',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Conjuguez "Ãªtre" au subjonctif prÃ©sent, 1re pers. du pluriel.',null,
'[{"id":"a","label":"que nous sommes"},{"id":"b","label":"que nous soyons"},{"id":"c","label":"que nous Ã©tions"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"ÃŠtre" au subjonctif prÃ©sent est trÃ¨s irrÃ©gulier : que je sois, que tu sois, qu''il soit, que nous soyons, que vous soyez, qu''ils soient. La 1re pers. du pluriel est "que nous soyons". "Ã‰tions" est l''imparfait de l''indicatif.',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','correction_orthographique',
'Corrigez si nÃ©cessaire : "Il faut que tu finisses ton travail."',null,
null,
'{"mode":"text","acceptableAnswers":["Il faut que tu finisses ton travail."]}'::jsonb,
'La phrase est correcte. "Il faut que" impose le subjonctif. "Finir" (2e groupe) au subjonctif prÃ©sent, 2e pers. sing. : "que tu finisses". Subjonctif de finir : que je finisse, que tu finisses, qu''il finisse, que nous finissions, que vous finissiez, qu''ils finissent.',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Choisissez la forme correcte : "Je veux que tu ___ (venir) ce soir."',null,
'[{"id":"a","label":"viennes"},{"id":"b","label":"viens"},{"id":"c","label":"viendras"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'"Vouloir que" impose le subjonctif dans la subordonnÃ©e. "Venir" au subjonctif prÃ©sent : que je vienne, que tu viennes, qu''il vienne, que nous venions, que vous veniez, qu''ils viennent. La 2e pers. sing. est "viennes".',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? AprÃ¨s "espÃ©rer que", on utilise le subjonctif.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. "EspÃ©rer que" (sens positif, affirmation) est suivi de l''indicatif : "j''espÃ¨re qu''il viendra / qu''il vient". En revanche, "douter que", "craindre que", "avoir peur que" imposent le subjonctif. C''est une nuance importante pour le CRPE.',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Quel est le subjonctif prÃ©sent de "avoir" Ã  la 3e pers. du pluriel ?',null,
'[{"id":"a","label":"qu''ils ont"},{"id":"b","label":"qu''ils aient"},{"id":"c","label":"qu''ils avaient"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Avoir" au subjonctif prÃ©sent est irrÃ©gulier : que j''aie, que tu aies, qu''il ait, que nous ayons, que vous ayez, qu''ils aient. La 3e pers. du pluriel est "qu''ils aient". "Qu''ils ont" est l''indicatif ; "qu''ils avaient" est l''imparfait de l''indicatif.',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','correction_orthographique',
'Corrigez la phrase : "Il est important qu''on respecte les rÃ¨gles."',null,
null,
'{"mode":"text","acceptableAnswers":["Il est important qu''on respecte les rÃ¨gles."]}'::jsonb,
'La phrase est correcte. "Il est important que" impose le subjonctif. "Respecter" (1er groupe) au subjonctif : que je respecte, que tu respectes, qu''il/on respecteâ€¦ La 3e pers. sing. du subjonctif des verbes en -er est identique Ã  l''indicatif prÃ©sent, ce qui peut prÃªter Ã  confusion.',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','qcm',
'Choisissez la construction correcte.',null,
'[{"id":"a","label":"Je doute qu''il a raison."},{"id":"b","label":"Je doute qu''il ait raison."},{"id":"c","label":"Je doute qu''il aurait raison."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"Douter que" exprime l''incertitude et impose le subjonctif dans la subordonnÃ©e. "Qu''il ait raison" (subjonctif de "avoir") est la forme correcte. "Qu''il a raison" serait un indicatif (incorrectement utilisÃ© ici). "Qu''il aurait raison" est un conditionnel (inappropriÃ©).',
'valide','CRPE FranÃ§ais V2','premium',true),

('19000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_subjonctif','Subjonctif prÃ©sent','Intermediaire','vrai_faux',
'Vrai ou faux ? Dans "Bien qu''il soit tard, elle travaille encore", le subjonctif est correctement employÃ©.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. "Bien que" est une conjonction de concession qui rÃ©git toujours le subjonctif. "Bien qu''il soit tard" est grammaticalement correct. Autres conjonctions de concession suivies du subjonctif : quoique, encore que, sans que.',
'valide','CRPE FranÃ§ais V2','premium',true),

-- ================================================================
-- SÃ‰RIE 20 â€” Valeurs des temps verbaux â€” AvancÃ© â€” premium
-- ================================================================
('20000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur du prÃ©sent dans : "La Terre tourne autour du Soleil."',null,
'[{"id":"a","label":"PrÃ©sent de narration"},{"id":"b","label":"PrÃ©sent d''Ã©nonciation"},{"id":"c","label":"PrÃ©sent de vÃ©ritÃ© gÃ©nÃ©rale"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Ce prÃ©sent exprime un fait permanent, universel, qui ne dÃ©pend pas d''un moment particulier. C''est le "prÃ©sent de vÃ©ritÃ© gÃ©nÃ©rale" (ou gnomique). Il s''applique aux vÃ©ritÃ©s scientifiques, proverbes, dÃ©finitions. DiffÃ©rent du prÃ©sent d''Ã©nonciation (= maintenant) et du prÃ©sent historique.',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du passÃ© composÃ© dans : "Hier, j''ai rencontrÃ© un ami d''enfance."',null,
'[{"id":"a","label":"Fait habituel du passÃ©"},{"id":"b","label":"Fait passÃ©, accompli, ancrÃ© dans un moment prÃ©cis"},{"id":"c","label":"Fait en cours au moment de l''Ã©nonciation"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le passÃ© composÃ© exprime ici un fait accompli, datÃ© (hier) et sans lien de durÃ©e. C''est la valeur principale : Ã©vÃ©nement ponctuel du passÃ©, prÃ©sentÃ© comme achevÃ©. On parle de "plan du discours" par opposition au passÃ© simple (plan du rÃ©cit littÃ©raire).',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Dans un rÃ©cit littÃ©raire, le passÃ© simple et l''imparfait ont des valeurs complÃ©mentaires.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Ã€ l''Ã©crit littÃ©raire : l''imparfait = fond (dÃ©cors, descriptions, Ã©tats, actions duratives) ; le passÃ© simple = figure (Ã©vÃ©nements, actions ponctuelles qui font avancer la narration). Les deux temps s''articulent pour crÃ©er le rythme du rÃ©cit.',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur du futur dans : "Vous prendrez Ã  gauche, puis continuerez tout droit."',null,
'[{"id":"a","label":"Futur de certitude"},{"id":"b","label":"Futur d''attÃ©nuation ou futur injonctif"},{"id":"c","label":"Futur antÃ©rieur"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Ce futur remplace l''impÃ©ratif pour donner un ordre ou une consigne de faÃ§on plus attÃ©nuÃ©e, moins directe. C''est le futur injonctif (= vous prendrez = prenez). On l''emploie pour les instructions, recettes, consignes, rÃ¨glements. Plus poli que l''impÃ©ratif direct.',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle est la valeur du conditionnel dans : "D''aprÃ¨s les tÃ©moins, il aurait quittÃ© les lieux Ã  minuit."',null,
'[{"id":"a","label":"Conditionnel de politesse"},{"id":"b","label":"Conditionnel hypothÃ©tique"},{"id":"c","label":"Conditionnel journalistique (information non vÃ©rifiÃ©e)"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Ce conditionnel passÃ© (ou prÃ©sent) indique que l''information est rapportÃ©e sans Ãªtre vÃ©rifiÃ©e par le locuteur. C''est le conditionnel de distanciation ou journalistique. Le locuteur se dÃ©charge de la responsabilitÃ© de l''affirmation. Valeur importante en analyse de texte.',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Le prÃ©sent de narration (ou prÃ©sent historique) permet d''actualiser des faits passÃ©s pour les rendre plus vivants.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Le prÃ©sent historique remplace le passÃ© simple dans un rÃ©cit pour crÃ©er un effet de vivacitÃ©, d''immÃ©diatetÃ©. "En 1789, le peuple prend la Bastille." Les faits passÃ©s sont prÃ©sentÃ©s au prÃ©sent pour les rendre plus saisissants. TrÃ¨s utilisÃ© en commentaire littÃ©raire.',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Identifiez la valeur de l''imparfait dans : "DÃ¨s qu''il avait un moment, il lisait."',null,
'[{"id":"a","label":"Imparfait pittoresque"},{"id":"b","label":"Imparfait d''habitude ou itÃ©ratif"},{"id":"c","label":"Imparfait de description"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'"DÃ¨s qu''il avaitâ€¦ il lisait" exprime une action rÃ©pÃ©tÃ©e, habituelle dans le passÃ©. C''est l''imparfait itÃ©ratif (d''habitude). Il correspond Ã  "chaque fois que" et se distingue de l''imparfait descriptif (Ã©tat, dÃ©cor) et de l''imparfait hypocoristique (dans le passÃ© immÃ©diat).',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','qcm',
'Quelle valeur a le futur antÃ©rieur dans : "Quand tu auras fini, tu pourras partir."',null,
'[{"id":"a","label":"Action future antÃ©rieure Ã  une autre action future"},{"id":"b","label":"ProbabilitÃ© dans le passÃ©"},{"id":"c","label":"Ordre attÃ©nuÃ©"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Le futur antÃ©rieur exprime une action qui sera accomplie avant une autre action future. "Tu auras fini" (futur antÃ©rieur) â†’ avant â†’ "tu pourras partir" (futur simple). La subordination temporelle avec "quand" impose cette concordance des temps.',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','vrai_faux',
'Vrai ou faux ? Dans "Si tu travaillais davantage, tu rÃ©ussirais", le conditionnel exprime un fait possible dans le rÃ©el.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. "Si + imparfait â†’ conditionnel prÃ©sent" exprime une hypothÃ¨se contraire Ã  la rÃ©alitÃ© prÃ©sente (irrÃ©elle au prÃ©sent). Le locuteur suppose que tu ne travailles pas assez. Si l''hypothÃ¨se Ã©tait rÃ©elle/possible, on dirait : "si tu travailles davantage, tu rÃ©ussiras" (si + prÃ©sent â†’ futur).',
'valide','CRPE FranÃ§ais V2','premium',true),

('20000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_valeurs_temps','Valeurs des temps verbaux','Avance','reponse_courte',
'Dans "Ã€ peine Ã©tait-il entrÃ© qu''il repartit", quel temps est employÃ© dans la principale et quelle en est la valeur ?',null,
null,
'{"mode":"text","acceptableAnswers":["PassÃ© simple, action immÃ©diatement consÃ©cutive."]}'::jsonb,
'Dans la tournure "Ã  peineâ€¦ que", le passÃ© simple dans la principale ("repartit") exprime une action immÃ©diatement consÃ©cutive Ã  une autre. L''inversion du sujet aprÃ¨s "Ã  peine" est obligatoire Ã  l''Ã©crit soutenu : "Ã  peine Ã©tait-il entrÃ©â€¦". Cette construction est typique du style littÃ©raire.',
'valide','CRPE FranÃ§ais V2','premium',true);


