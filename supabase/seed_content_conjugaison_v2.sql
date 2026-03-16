-- CRPE Français — Conjugaison V2 (5 séries × 10 questions)
-- Séries 51–55 : passé simple, plus-que-parfait/passé antérieur,
--                conditionnel passé/subjonctif passé, valeurs de l'imparfait,
--                concordance des temps
-- Appliquer APRÈS les migrations et le seed initial

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 51 — Passé simple — Intermédiaire — free
-- ================================================================
(
  '51000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Quelle est la terminaison du passé simple des verbes du 1er groupe à la 3e personne du singulier ?',
  null,
  '[{"id":"a","label":"-it"},{"id":"b","label":"-a"},{"id":"c","label":"-ut"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les verbes du 1er groupe (infinitif en -er) forment leur passé simple avec les terminaisons -ai, -as, -a, -âmes, -âtes, -èrent. La 3e personne du singulier prend donc -a : il chanta, elle parla, on dansa. Les terminaisons en -it et -ut appartiennent respectivement aux 3e groupe (tenir, venir…) et aux verbes en -u (savoir → sut, vouloir → voulut). Cette distinction est fréquemment testée au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Conjuguez le verbe "finir" au passé simple, à la 1re personne du pluriel.',
  null,
  '[{"id":"a","label":"nous finîmes"},{"id":"b","label":"nous finissions"},{"id":"c","label":"nous finimes"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Les verbes du 2e groupe (infinitif en -ir, participe présent en -issant) forment leur passé simple avec les terminaisons -is, -is, -it, -îmes, -îtes, -irent. La 1re personne du pluriel est "nous finîmes", avec un accent circonflexe obligatoire sur le î. "Nous finissions" est l''imparfait, erreur classique à éviter. Au CRPE, la maîtrise du passé simple des verbes du 2e groupe est attendue.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le passé simple est le temps du récit oral courant en français contemporain.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. Le passé simple est essentiellement un temps de l''écrit littéraire et du récit formel. À l''oral courant, c''est le passé composé qui le remplace dans presque toutes les situations. Cette opposition passé simple (écrit/littéraire) / passé composé (oral/courant) est un point fondamental de la didactique du français, régulièrement évalué au CRPE. Les textes de jeunesse et les contes utilisent encore fréquemment le passé simple.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte du passé simple de "être" à la 3e personne du pluriel ?',
  null,
  '[{"id":"a","label":"ils étaient"},{"id":"b","label":"ils furent"},{"id":"c","label":"ils seront"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '"Être" est un verbe très irrégulier : son passé simple est formé sur le radical fu- : je fus, tu fus, il fut, nous fûmes, vous fûtes, ils furent. "Ils étaient" est l''imparfait, "ils seront" le futur. Les passés simples de "être" et "avoir" (j''eus, tu eus, il eut…) sont parmi les plus irréguliers et doivent être mémorisés pour le CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Au passé simple, les verbes du 3e groupe comme "voir" ou "prendre" peuvent avoir des radicaux irréguliers.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Les verbes du 3e groupe présentent des radicaux irréguliers au passé simple : voir → je vis, prendre → je pris, venir → je vins, faire → je fis, dire → je dis. Il faut distinguer les terminaisons en -is/-it (prendre, mettre, voir…) et les terminaisons en -us/-ut (lire → je lus, boire → je bus, connaître → je connus). La variété de ces formes est un enjeu didactique important pour le CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Dans la phrase "Le roi convoqua ses vassaux et leur parla longuement", les verbes en gras sont au :',
  null,
  '[{"id":"a","label":"Passé composé"},{"id":"b","label":"Passé simple"},{"id":"c","label":"Imparfait"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '"Convoqua" et "parla" sont des passés simples des verbes du 1er groupe (convoquer → convoqua ; parler → parla). Dans un récit littéraire ou historique, le passé simple exprime des actions ponctuelles, successives et achevées. Cette phrase illustre un usage typique du passé simple comme temps de l''énonciation narrative écrite, en opposition à l''imparfait qui décrirait l''arrière-plan ou une action durative.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte du passé simple de "aller" à la 2e personne du singulier ?',
  null,
  '[{"id":"a","label":"tu allas"},{"id":"b","label":"tu allais"},{"id":"c","label":"tu alla"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '"Aller", bien que très irrégulier au présent, suit les terminaisons du 1er groupe au passé simple car il est rattaché à ce groupe pour ce temps : j''allai, tu allas, il alla, nous allâmes, vous allâtes, ils allèrent. "Tu allais" est l''imparfait. La 2e personne du singulier prend la terminaison -as, identique à tous les verbes du 1er groupe.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? "Ils chantèrent" et "ils finirent" ont toutes deux la terminaison -èrent au passé simple.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. "Ils chantèrent" (1er groupe) se termine bien par -èrent, mais "ils finirent" (2e groupe) se termine par -irent. Les terminaisons à la 3e personne du pluriel diffèrent selon le groupe : 1er groupe → -èrent, 2e groupe et nombreux verbes du 3e groupe → -irent, verbes en -u du 3e groupe → -urent. Confondre ces terminaisons est une erreur fréquente dans les productions d''élèves.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Quelle différence d''usage distingue le passé simple du passé composé dans un récit ?',
  null,
  '[{"id":"a","label":"Le passé simple est employé à l''oral, le passé composé à l''écrit"},{"id":"b","label":"Le passé simple marque l''action dans un récit écrit littéraire, le passé composé relie l''action au présent du locuteur"},{"id":"c","label":"Les deux temps sont interchangeables dans tous les registres"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le passé simple s''utilise dans les récits écrits littéraires ou historiques et présente des actions comme coupées du présent de l''énonciateur. Le passé composé, au contraire, ancre l''action dans un rapport avec le présent et est le temps narratif de l''oral et des écrits courants. Cette distinction aspectuelle et énonciative est centrale en grammaire française et au programme du CRPE ; elle est cruciale pour la didactique de l''enseignement des temps du récit à l''école.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '51000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_passe_simple', 'Passé simple', 'Intermediaire',
  'qcm',
  'Parmi les formes suivantes, laquelle est un passé simple correct ?',
  null,
  '[{"id":"a","label":"il prit"},{"id":"b","label":"il prendit"},{"id":"c","label":"il a pris"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '"Prendre" est un verbe du 3e groupe irrégulier dont le passé simple est : je pris, tu pris, il prit, nous prîmes, vous prîtes, ils prirent. La forme "il prendit" n''existe pas en français. "Il a pris" est un passé composé. La terminaison -t à la 3e personne du singulier (sans -s) est caractéristique de ce groupe de passés simples en -is, à ne pas confondre avec le présent (il prend, sans -t).',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

-- ================================================================
-- SÉRIE 52 — Plus-que-parfait et passé antérieur — Intermédiaire — free
-- ================================================================
(
  '52000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Comment se forme le plus-que-parfait ?',
  null,
  '[{"id":"a","label":"Auxiliaire au présent + participe passé"},{"id":"b","label":"Auxiliaire à l''imparfait + participe passé"},{"id":"c","label":"Auxiliaire au futur + participe passé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le plus-que-parfait se forme avec l''auxiliaire être ou avoir conjugué à l''imparfait, suivi du participe passé du verbe : j''avais mangé, tu étais parti, il avait fini. C''est un temps composé du passé qui exprime une action antérieure à une autre action passée. Sa formation sur l''imparfait de l''auxiliaire le distingue du passé composé (auxiliaire au présent) et du passé antérieur (auxiliaire au passé simple).',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase "Elle avait déjà lu ce livre quand il le lui offrit", le plus-que-parfait exprime une action antérieure au passé simple.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. "Avait lu" (plus-que-parfait) désigne une action qui s''est produite avant "offrit" (passé simple). C''est l''usage central du plus-que-parfait : marquer l''antériorité par rapport à un autre moment du passé. On parle de valeur d''antériorité dans la concordance des temps. Cette relation temporelle est fondamentale pour l''analyse grammaticale attendue au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Conjuguez "partir" au plus-que-parfait à la 1re personne du singulier.',
  null,
  '[{"id":"a","label":"j''avais parti"},{"id":"b","label":"j''étais parti(e)"},{"id":"c","label":"je fus parti(e)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '"Partir" est un verbe de mouvement qui se conjugue avec l''auxiliaire être. Au plus-que-parfait : j''étais parti(e), tu étais parti(e), il/elle était parti(e), nous étions parti(e)s, vous étiez parti(e)(s), ils/elles étaient parti(e)s. "J''avais parti" est incorrecte car on ne conjugue pas "partir" avec avoir. "Je fus parti(e)" est un passé antérieur. L''accord du participe passé avec être est aussi un point de vigilance au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Comment se forme le passé antérieur ?',
  null,
  '[{"id":"a","label":"Auxiliaire au passé simple + participe passé"},{"id":"b","label":"Auxiliaire à l''imparfait + participe passé"},{"id":"c","label":"Auxiliaire au conditionnel présent + participe passé"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le passé antérieur se forme avec l''auxiliaire être ou avoir conjugué au passé simple, suivi du participe passé : j''eus mangé, il fut parti, nous eûmes fini. C''est un temps littéraire, rare à l''oral, qui exprime l''antériorité immédiate par rapport à un passé simple dans une subordonnée temporelle (ex : "Quand il eut mangé, il sortit"). Il diffère du plus-que-parfait par l''auxiliaire (passé simple vs imparfait).',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le passé antérieur est un temps fréquemment utilisé dans la langue orale quotidienne.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. Le passé antérieur est un temps essentiellement littéraire et formel, pratiquement absent de l''oral courant. À l''oral, on utilise le plus-que-parfait à sa place ou on reformule. Il apparaît surtout dans les subordonnées temporelles introduites par "quand", "lorsque", "dès que", "aussitôt que" lorsque le verbe principal est au passé simple. Au CRPE, savoir le reconnaître dans un texte littéraire est attendu.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Dans "Dès qu''il eut terminé son discours, les applaudissements éclatèrent", quel temps est "eut terminé" ?',
  null,
  '[{"id":"a","label":"Plus-que-parfait"},{"id":"b","label":"Passé antérieur"},{"id":"c","label":"Passé composé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '"Eut terminé" est un passé antérieur : auxiliaire avoir au passé simple (eut) + participe passé (terminé). Ce temps s''emploie dans une subordonnée temporelle (introduite ici par "dès que") pour exprimer l''antériorité immédiate par rapport au passé simple de la principale ("éclatèrent"). C''est l''emploi le plus typique du passé antérieur, souvent cité en exemple dans les grammaires scolaires.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le plus-que-parfait peut s''employer dans une proposition conditionnelle en si pour exprimer une hypothèse non réalisée dans le passé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Dans une proposition conditionnelle, "si + plus-que-parfait" exprime une hypothèse irréelle dans le passé, dont la conséquence est au conditionnel passé : "Si tu étais venu, tu aurais vu." Le plus-que-parfait a donc plusieurs valeurs : antériorité dans un récit au passé ET hypothèse irréelle passée dans les structures conditionnelles. Cette double valeur est importante à enseigner au cycle 3.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Quelle phrase illustre correctement l''emploi du plus-que-parfait pour marquer l''antériorité ?',
  null,
  '[{"id":"a","label":"Il mangeait quand le téléphone sonnait."},{"id":"b","label":"Il avait fini son repas quand le téléphone sonna."},{"id":"c","label":"Il mangea quand le téléphone sonnera."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase b) illustre parfaitement l''emploi canonique du plus-que-parfait : "avait fini" (plus-que-parfait) marque l''action antérieure à "sonna" (passé simple). La phrase a) montre deux imparfaits simultanés (pas d''antériorité marquée). La phrase c) mélange passé simple et futur, ce qui est incorrect dans ce contexte. L''opposition plus-que-parfait / passé simple pour exprimer l''antériorité est un objectif d''apprentissage du cycle 3.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'qcm',
  'Conjuguez "avoir" au passé antérieur à la 3e personne du pluriel.',
  null,
  '[{"id":"a","label":"ils avaient eu"},{"id":"b","label":"ils eurent eu"},{"id":"c","label":"ils ont eu"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le passé antérieur d''avoir se forme avec avoir au passé simple (eurent) + le participe passé eu : ils eurent eu. "Ils avaient eu" est le plus-que-parfait d''avoir, et "ils ont eu" le passé composé. Les temps surcomposés comme le passé surcomposé (ils ont eu eu, rare) existent mais sont distincts. La conjugaison du passé antérieur d''avoir est régulièrement demandée lors des épreuves écrites du CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '52000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_plus_que_parfait', 'Plus-que-parfait et passé antérieur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans "Il était sorti avant que je n''arrive", le plus-que-parfait "était sorti" indique que la sortie est antérieure à l''arrivée.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. "Était sorti" (plus-que-parfait) exprime bien une action accomplie avant celle de la proposition principale (l''arrivée). Le plus-que-parfait marque l''antériorité par rapport à un repère passé. Notez le "ne" explétif facultatif après "avant que" : il est grammaticalement correct mais son emploi relève d''un registre soutenu. Cette construction est un exemple typique des exercices de conjugaison au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

-- ================================================================
-- SÉRIE 53 — Conditionnel passé et subjonctif passé — Avancé — premium
-- ================================================================
(
  '53000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Comment se forme le conditionnel passé ?',
  null,
  '[{"id":"a","label":"Auxiliaire au conditionnel présent + participe passé"},{"id":"b","label":"Auxiliaire à l''imparfait + participe passé"},{"id":"c","label":"Auxiliaire au subjonctif présent + participe passé"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le conditionnel passé se forme avec l''auxiliaire être ou avoir conjugué au conditionnel présent, suivi du participe passé : j''aurais mangé, tu serais parti(e), il aurait fini. C''est un temps composé qui exprime soit une action hypothétique non réalisée dans le passé (dans la conséquence d''une condition irréelle), soit un fait passé présenté comme probable ou regretté. Il est étroitement lié aux propositions conditionnelles en si + plus-que-parfait.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Laquelle de ces phrases illustre correctement la structure hypothétique "si + plus-que-parfait → conditionnel passé" ?',
  null,
  '[{"id":"a","label":"Si tu venais, je serais content."},{"id":"b","label":"Si tu étais venu, j''aurais été content."},{"id":"c","label":"Si tu viens, je serai content."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase b) illustre la structure de l''hypothèse irréelle dans le passé : "si + plus-que-parfait" (si tu étais venu) → "conditionnel passé" (j''aurais été content). La phrase a) correspond à l''hypothèse irréelle dans le présent (si + imparfait → conditionnel présent). La phrase c) exprime une condition réalisable (si + présent → futur). Ces trois structures conditionnelles forment un système cohérent essentiel en grammaire avancée et au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Le conditionnel passé peut s''employer pour exprimer un reproche ou un regret portant sur le passé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. En dehors des propositions conditionnelles, le conditionnel passé peut exprimer un regret ("J''aurais voulu réussir.") ou un reproche ("Tu aurais pu prévenir !"). Il peut aussi exprimer un fait passé présenté comme non vérifié dans le discours journalistique ("Le suspect aurait avoué."). Ces valeurs modales du conditionnel passé sont moins souvent enseignées mais attendues au niveau avancé du CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Comment se forme le subjonctif passé ?',
  null,
  '[{"id":"a","label":"Auxiliaire au subjonctif présent + participe passé"},{"id":"b","label":"Auxiliaire à l''imparfait + participe passé"},{"id":"c","label":"Auxiliaire au passé simple + participe passé"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le subjonctif passé se forme avec l''auxiliaire être ou avoir conjugué au subjonctif présent, suivi du participe passé : que j''aie mangé, que tu sois parti(e), qu''il ait fini. C''est un temps composé du subjonctif qui exprime l''antériorité ou l''accompli dans une proposition subordonnée dont le verbe principal exige le subjonctif. Il s''oppose au subjonctif présent comme le passé composé s''oppose au présent de l''indicatif.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Dans "Je suis content que tu aies réussi", quel est le mode et le temps du verbe "aies réussi" ?',
  null,
  '[{"id":"a","label":"Indicatif passé composé"},{"id":"b","label":"Subjonctif passé"},{"id":"c","label":"Conditionnel passé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '"Aies réussi" est un subjonctif passé : auxiliaire avoir au subjonctif présent (aies) + participe passé (réussi). Il s''emploie ici parce que le verbe de la principale ("suis content") exprime un sentiment et exige le subjonctif dans la subordonnée. Le subjonctif passé est utilisé car l''action de réussir est antérieure ou accomplie au moment où le locuteur exprime sa satisfaction. C''est une structure très fréquente en français soigné.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? On emploie le subjonctif passé après "bien que" pour exprimer une action accomplie présentée comme une concession.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. "Bien que" est une conjonction de concession qui exige le subjonctif dans la subordonnée. Si l''action est accomplie ou antérieure au moment de l''énonciation, on utilise le subjonctif passé : "Bien qu''il ait travaillé dur, il n''a pas réussi." Le subjonctif présent serait utilisé pour une action simultanée ou non encore accomplie. Cette nuance aspectuelle dans le subjonctif est un niveau d''analyse avancé attendu au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Conjuguez "venir" au conditionnel passé, 3e personne du singulier.',
  null,
  '[{"id":"a","label":"il serait venu"},{"id":"b","label":"il viendrait"},{"id":"c","label":"il était venu"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '"Venir" se conjugue avec l''auxiliaire être. Le conditionnel passé est donc : il serait venu. "Il viendrait" est le conditionnel présent, et "il était venu" le plus-que-parfait. Au conditionnel passé, l''accord du participe passé avec être se fait avec le sujet : elle serait venue, ils seraient venus, elles seraient venues. Cette forme verbale est indispensable dans les constructions hypothétiques du type "S''il avait pu, il serait venu."',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Quelle phrase contient un subjonctif passé correctement employé ?',
  null,
  '[{"id":"a","label":"Il faut que tu viennes demain."},{"id":"b","label":"Je doute qu''il ait dit la vérité."},{"id":"c","label":"Je veux qu''il finisse ce travail."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans la phrase b), "ait dit" est un subjonctif passé (auxiliaire avoir au subjonctif présent + participe passé dit), correctement employé après "douter que" qui exige le subjonctif, pour une action passée et accomplie. La phrase a) contient un subjonctif présent ("viennes") pour une action future. La phrase c) contient un subjonctif présent ("finisse") pour une action à venir. Le subjonctif passé marque toujours l''aspect accompli dans les subordonnées au subjonctif.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans "S''il avait plu, nous serions restés", le verbe "serions restés" est au conditionnel passé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. "Serions restés" est bien un conditionnel passé : auxiliaire être au conditionnel présent (serions) + participe passé (restés). La phrase illustre la structure hypothétique irréelle dans le passé : "si + plus-que-parfait" (avait plu) → "conditionnel passé" (serions restés). Notez l''accord de "restés" avec "nous" (masculin pluriel supposé ici). Cette structure est l''une des plus importantes à maîtriser pour le CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '53000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_conditionnel_subjonctif_passe', 'Conditionnel passé et subjonctif passé', 'Avance',
  'qcm',
  'Quel est le subjonctif passé de "finir" à la 2e personne du singulier ?',
  null,
  '[{"id":"a","label":"que tu finisses"},{"id":"b","label":"que tu aies fini"},{"id":"c","label":"que tu avais fini"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le subjonctif passé de "finir" à la 2e personne du singulier est "que tu aies fini" : auxiliaire avoir au subjonctif présent (aies) + participe passé (fini). "Que tu finisses" est le subjonctif présent. "Que tu avais fini" est un plus-que-parfait de l''indicatif, mode et temps incorrects. Les subjonctifs présent et passé sont tous deux enseignés à l''école élémentaire (cycle 3) et leur distinction est testée au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

-- ================================================================
-- SÉRIE 54 — Valeurs de l'imparfait — Intermédiaire — free
-- ================================================================
(
  '54000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Dans "Chaque soir, il lisait un chapitre avant de dormir", quelle valeur a l''imparfait ?',
  null,
  '[{"id":"a","label":"Description d''un état"},{"id":"b","label":"Habitude ou répétition dans le passé"},{"id":"c","label":"Action unique et ponctuelle"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''imparfait "lisait" exprime ici une habitude ou une action répétée dans le passé, signalée par le marqueur temporel "chaque soir". C''est l''une des valeurs fondamentales de l''imparfait : l''aspect itératif (répétitif). L''imparfait de description peindrait plutôt un état ou un décor figé, et l''imparfait d''action ponctuelle unique n''est pas une valeur de ce temps. Distinguer ces valeurs est un objectif central du cycle 3 et du programme CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? L''imparfait peut être utilisé pour décrire le cadre, le décor ou l''état d''un personnage dans un récit au passé.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. L''imparfait de description est une valeur majeure : il peint le décor, l''état des lieux ou l''état psychologique ou physique des personnages dans un récit. Exemple : "La maison était vieille, les volets pendaient." Cette valeur s''oppose à celle du passé simple ou du passé composé, qui expriment des actions ponctuelles et successives faisant avancer le récit. L''opposition imparfait (arrière-plan) / passé simple (premier plan) est un point clé de l''enseignement du récit.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Dans "Si j''avais de l''argent, je voyagerais", quelle est la valeur de l''imparfait "avais" ?',
  null,
  '[{"id":"a","label":"Imparfait de description"},{"id":"b","label":"Imparfait hypothétique dans une proposition conditionnelle"},{"id":"c","label":"Imparfait de politesse"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''imparfait "avais" est ici un imparfait hypothétique, employé dans une proposition conditionnelle introduite par "si" pour exprimer une hypothèse irréelle dans le présent (je n''ai pas d''argent en réalité). La structure "si + imparfait → conditionnel présent" est une des trois structures conditionnelles fondamentales du français. Cette valeur de l''imparfait, distincte de sa valeur temporelle habituelle, est essentielle à maîtriser pour le CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Dans "Je voulais vous demander un service", quelle valeur particulière a l''imparfait ?',
  null,
  '[{"id":"a","label":"Imparfait pittoresque"},{"id":"b","label":"Imparfait de politesse"},{"id":"c","label":"Imparfait de narration"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''imparfait "voulais" est ici un imparfait de politesse (aussi appelé imparfait d''atténuation ou de modestie). Il permet d''adoucir une demande qui pourrait sembler trop directe au présent ("Je veux vous demander…"). C''est un emploi modal de l''imparfait, qui n''a pas de valeur temporelle réelle : l''action se déroule au moment où l''on parle. Cet imparfait est fréquent dans les échanges formels et à l''écrit soigné.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? L''imparfait pittoresque (ou de narration) s''emploie pour rendre une action passée plus vivante et soudaine, souvent après une date ou un repère temporel.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. L''imparfait pittoresque ou de narration est un emploi stylistique qui donne du relief à une action en lui conférant une apparence de durée ou d''immédiateté : "Le 14 juillet 1789, le peuple de Paris prenait la Bastille." Cet usage, surtout journalistique ou littéraire, est paradoxal car l''imparfait exprime normalement la durée mais remplace ici un passé simple pour produire un effet de mise en scène. Il est signalé dans les programmes du cycle 3.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Quelle est la principale différence d''aspect entre l''imparfait et le passé composé dans un récit ?',
  null,
  '[{"id":"a","label":"L''imparfait exprime l''aspect inaccompli/duratif, le passé composé l''aspect accompli/ponctuel"},{"id":"b","label":"L''imparfait est réservé aux textes littéraires, le passé composé à l''oral uniquement"},{"id":"c","label":"Il n''y a aucune différence d''aspect, seulement de registre"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''opposition fondamentale entre l''imparfait et le passé composé est aspectuelle : l''imparfait exprime l''inaccompli, une action en cours de déroulement, un état ou une durée non délimitée (aspect imperfectif) ; le passé composé exprime l''accompli, une action achevée et délimitée (aspect perfectif). Cette opposition est centrale dans l''enseignement du français à l''école : "Il lisait (imparfait) quand le téléphone a sonné (passé composé)."',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans un récit au passé, l''imparfait et le passé simple (ou passé composé) ont des rôles complémentaires et non interchangeables.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Dans un récit au passé, l''imparfait fournit l''arrière-plan (décor, états, habitudes, actions en cours) tandis que le passé simple ou le passé composé font avancer l''action en marquant des événements ponctuels et successifs (premier plan). Ces deux temps sont donc complémentaires : l''un peint, l''autre raconte. Comprendre et enseigner cette complémentarité est un objectif majeur des programmes de l''école élémentaire et un thème récurrent au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Dans "Autrefois, les enfants jouaient dans la rue sans surveillance", l''imparfait exprime :',
  null,
  '[{"id":"a","label":"Une action unique et datée"},{"id":"b","label":"Une habitude passée révolue"},{"id":"c","label":"Une hypothèse irréelle"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''imparfait "jouaient" exprime ici une habitude passée désormais révolue, signalée par le marqueur temporel "autrefois". C''est la valeur itérative ou habituelle de l''imparfait, l''une des plus fréquentes dans les textes documentaires et narratifs que rencontrent les élèves. L''adverbe "autrefois" est un indice lexical fort qui oriente vers cette interprétation. Identifier les valeurs de l''imparfait à partir d''indices contextuels est une compétence clé au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'qcm',
  'Combien de valeurs principales reconnaît-on habituellement à l''imparfait dans les grammaires scolaires ?',
  null,
  '[{"id":"a","label":"Une seule : la description"},{"id":"b","label":"Deux : description et habitude"},{"id":"c","label":"Plusieurs : description, habitude, hypothèse, politesse, pittoresque"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les grammaires distinguent généralement plusieurs valeurs de l''imparfait : 1) description ou état (aspect imperfectif) ; 2) habitude/répétition (aspect itératif) ; 3) action en cours interrompue par une autre ; 4) imparfait hypothétique (si + imparfait) ; 5) imparfait de politesse ; 6) imparfait pittoresque. Cette richesse de valeurs explique pourquoi l''imparfait est l''un des temps les plus complexes à enseigner et l''un des sujets récurrents des épreuves du CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

(
  '54000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_valeurs_imparfait', 'Valeurs de l''imparfait', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? L''imparfait peut exprimer une action qui se déroule au moment de l''énonciation lorsqu''il est employé comme imparfait de politesse.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. L''imparfait de politesse ou de modestie est un emploi modal où l''imparfait n''a pas de valeur temporelle passée : "Je voulais vous poser une question" signifie "je veux vous poser une question maintenant". L''emploi de l''imparfait atténue la demande et la rend plus polie. C''est un des cas où le temps grammatical et le temps réel de l''action divergent complètement, ce qui est important à signaler aux élèves pour éviter les confusions lors de l''analyse grammaticale.',
  'valide', 'CRPE Français — Conjugaison V2', 'free', true
),

-- ================================================================
-- SÉRIE 55 — Concordance des temps — Avancé — premium
-- ================================================================
(
  '55000000-0000-0000-0000-000000000001',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Lorsque le verbe de la principale est au présent, quel temps emploie-t-on dans la subordonnée pour exprimer la simultanéité ?',
  null,
  '[{"id":"a","label":"Le présent de l''indicatif"},{"id":"b","label":"L''imparfait"},{"id":"c","label":"Le plus-que-parfait"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La règle de concordance des temps stipule que lorsque la principale est au présent, la subordonnée exprime la simultanéité au présent de l''indicatif ("Il dit qu''il est fatigué"), l''antériorité au passé composé ou au passé simple ("Il dit qu''il a terminé"), et la postériorité au futur simple ("Il dit qu''il viendra"). Ces règles structurent les discours rapportés et les compléments de temps. Leur maîtrise est fondamentale pour l''épreuve de grammaire du CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000002',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Lorsque le verbe de la principale est à un temps du passé, quel temps emploie-t-on pour exprimer la simultanéité dans la subordonnée ?',
  null,
  '[{"id":"a","label":"Le présent de l''indicatif"},{"id":"b","label":"L''imparfait de l''indicatif"},{"id":"c","label":"Le futur simple"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Quand la principale est au passé (passé composé, passé simple, imparfait…), la subordonnée exprime la simultanéité à l''imparfait : "Il disait qu''il était fatigué." Ce principe de concordance entraîne une série de correspondances : présent de la principale → présent dans la subordonnée ; passé de la principale → imparfait dans la subordonnée (pour la simultanéité). L''imparfait est donc le "présent du passé" dans la concordance des temps, notion fondamentale pour l''analyse des textes narratifs.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000003',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans le discours indirect au passé, "Il a dit qu''il viendrait" respecte la concordance des temps en transformant le futur simple en conditionnel présent.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Le passage du discours direct au discours indirect au passé entraîne des transformations : le futur simple ("il dira : "je viendrai"") devient conditionnel présent dans la subordonnée ("il a dit qu''il viendrait"). Le conditionnel présent joue ici le rôle de "futur du passé". De même : le présent → imparfait, le passé composé → plus-que-parfait. Ces transformations sont au cœur de l''enseignement du discours rapporté à l''école et une question classique du CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000004',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Quelle est la transformation correcte pour passer de "Il a dit : ''J''ai fini''" au discours indirect au passé ?',
  null,
  '[{"id":"a","label":"Il a dit qu''il finissait."},{"id":"b","label":"Il a dit qu''il avait fini."},{"id":"c","label":"Il a dit qu''il aura fini."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Au discours indirect au passé, le passé composé du discours direct ("j''ai fini") se transforme en plus-que-parfait ("il avait fini"). Le tableau des transformations temporelles est : présent → imparfait ; passé composé → plus-que-parfait ; futur simple → conditionnel présent ; futur antérieur → conditionnel passé. "Il finissait" correspondrait à la transformation du présent, et "il aura fini" est un futur antérieur qui n''a pas sa place ici.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000005',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Dans la concordance des temps avec le subjonctif, si la principale est au présent et l''action subordonnée est simultanée, on emploie le subjonctif présent.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Pour la concordance avec le subjonctif en français moderne, la règle simplifiée est : si la principale est au présent ou au futur et l''action subordonnée est simultanée ou postérieure, on emploie le subjonctif présent ("Je veux qu''il parte maintenant"). Si l''action est antérieure, on emploie le subjonctif passé ("Je suis content qu''il soit parti"). En français classique, on distinguait aussi le subjonctif imparfait et le subjonctif plus-que-parfait, formes aujourd''hui réservées au registre très soutenu.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000006',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Quelle structure conditionnelle est correcte pour exprimer une hypothèse réalisable dans le futur ?',
  null,
  '[{"id":"a","label":"Si + imparfait → conditionnel présent"},{"id":"b","label":"Si + présent → futur simple ou présent"},{"id":"c","label":"Si + plus-que-parfait → conditionnel présent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La structure "si + présent → futur simple (ou présent)" exprime une hypothèse réalisable : "S''il fait beau, nous sortirons." Les trois structures conditionnelles sont : 1) si + présent → futur/présent (hypothèse réalisable) ; 2) si + imparfait → conditionnel présent (hypothèse irréelle dans le présent) ; 3) si + plus-que-parfait → conditionnel passé (hypothèse irréelle dans le passé). Jamais de conditionnel directement après "si" de condition : c''est une faute classique des élèves.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000007',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? On peut employer le conditionnel présent directement après "si" de condition (ex : "Si il viendrait, je serais content").',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. En français standard, on n''emploie jamais le conditionnel directement après "si" de condition. La forme correcte est : "S''il venait, je serais content" (si + imparfait → conditionnel présent). La phrase "Si il viendrait" est une faute grave, fréquente chez les élèves influencés par certains dialectes ou par des interférences avec d''autres langues. Cette règle est explicitement au programme du cycle 3 et régulièrement évaluée au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000008',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Transformez en discours indirect : Pierre dit : "Je travaille tous les jours." → Pierre dit que… (principale au présent)',
  null,
  '[{"id":"a","label":"Pierre dit qu''il travaillait tous les jours."},{"id":"b","label":"Pierre dit qu''il travaille tous les jours."},{"id":"c","label":"Pierre dit qu''il a travaillé tous les jours."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Lorsque la principale est au présent ("dit"), la concordance des temps ne modifie pas le temps de la subordonnée si elle exprime la simultanéité : le présent reste au présent. Pierre dit qu''il travaille tous les jours. C''est uniquement quand la principale est au passé que les transformations temporelles entrent en jeu. La phrase a) serait correcte si la principale était au passé ("Pierre disait que..."). Cette distinction est fondamentale dans l''enseignement du discours rapporté.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000009',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'qcm',
  'Dans la phrase "Elle pensait qu''il était parti la veille", quelle est la relation temporelle entre les deux verbes ?',
  null,
  '[{"id":"a","label":"Simultanéité : les deux actions ont lieu en même temps"},{"id":"b","label":"Antériorité : partir est antérieur à penser"},{"id":"c","label":"Postériorité : partir est postérieur à penser"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '"Pensait" est à l''imparfait (action principale dans le passé) et "était parti" est au plus-que-parfait (action antérieure). Le plus-que-parfait dans la subordonnée exprime l''antériorité par rapport à la principale : il est parti avant qu''elle pense. L''adverbe "la veille" confirme cette antériorité. La concordance des temps permet ainsi de reconstruire la chronologie des événements dans un texte, compétence attendue lors de l''analyse grammaticale au CRPE.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
),

(
  '55000000-0000-0000-0000-000000000010',
  'Francais', 'conjugaison', 'conj_concordance_temps', 'Concordance des temps', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? La concordance des temps est une règle absolue en français moderne : tout écart est une faute.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. La concordance des temps est une tendance forte mais non absolue. Des écarts sont possibles et stylistiquement motivés : le présent de narration peut s''utiliser dans un contexte passé, et le présent omnitemporel (vérité générale) n''est pas soumis à la concordance ("Il a compris que la Terre tourne autour du Soleil"). En français moderne, la concordance stricte (notamment avec le subjonctif imparfait) est souvent abandonnée au profit de formes plus simples. Le CRPE évalue la connaissance des règles générales et de leurs nuances.',
  'valide', 'CRPE Français — Conjugaison V2', 'premium', true
);
