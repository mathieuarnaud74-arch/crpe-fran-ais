-- CRPE Français — Lexique V3 (Difficile / premium)
-- Série 93 : lex_polysemie_contexte     (prefix 93, IDs 1-10)
-- Série 94 : lex_registres_discours     (prefix 94, IDs 1-10)
-- Série 95 : lex_formation_savante      (prefix 95, IDs 1-10)

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- Série 93 — Polysémie et sens en contexte (lex_polysemie_contexte)
-- ================================================================

('93000000-0000-0000-0000-000000000001','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'La polysémie se distingue de l''homonymie en ce que…',
null,
'[{"id":"a","label":"Les homonymes partagent la même étymologie, contrairement aux polysèmes."},{"id":"b","label":"Les polysèmes ont des sens reliés par une filiation sémantique ; les homonymes sont des mots distincts aux sens sans lien."},{"id":"c","label":"La polysémie concerne uniquement les verbes, l''homonymie uniquement les noms."},{"id":"d","label":"Les polysèmes s''écrivent toujours de la même façon, pas les homonymes."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La polysémie regroupe les différents sens d''UN MÊME mot dont les significations entretiennent un lien historique ou métaphorique (ex. « tête » : tête du corps, tête de liste, tête de pont). L''homonymie, elle, concerne des mots DISTINCTS qui partagent la même forme sonore ou graphique mais n''ont aucun lien sémantique (ex. « grève » : plage de sable / arrêt de travail). L''erreur A inverse la réalité : les homonymes ont souvent des étymologies différentes, et les polysèmes une seule.',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000002','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'Dans « Cette décision coûte cher au gouvernement », le verbe « coûter » est employé dans un sens…',
null,
'[{"id":"a","label":"Propre — c''est son sens premier littéral."},{"id":"b","label":"Figuré — par extension métaphorique du sens économique."},{"id":"c","label":"Technique — spécialisation dans le vocabulaire politique."},{"id":"d","label":"Archaïque — sens vieilli peu usité aujourd''hui."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le sens propre de « coûter » est économique (« ce livre coûte 15 € »). Dans l''exemple, aucune somme n''est en jeu : il s''agit d''un coût politique, symbolique. Le verbe est donc employé dans un sens FIGURÉ, par extension métaphorique. Cette distinction sens propre / sens figuré est fondamentale en analyse lexicale. Elle s''appuie sur le contexte : si le référent est abstrait (prestige, réputation, confiance…), le sens est presque toujours figuré.',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000003','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'La dénotation d''un mot correspond à…',
null,
'[{"id":"a","label":"L''ensemble des valeurs affectives et culturelles que les locuteurs associent au mot."},{"id":"b","label":"Son sens propre, référentiel et objectif, partagé par la communauté des locuteurs."},{"id":"c","label":"Son sens dans un registre soutenu ou littéraire."},{"id":"d","label":"La somme de ses emplois métaphoriques dans les textes."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La DÉNOTATION est le sens objectif, stable, répertorié dans le dictionnaire et partagé par tous les locuteurs (ex. « serpent » = reptile). La CONNOTATION regroupe les valeurs subjectives, culturelles, affectives qui s''y ajoutent (danger, traîtrise, ruse…). La réponse A décrit la connotation, pas la dénotation. En classe, on explique : dénotation = sens de dictionnaire ; connotation = surplus de sens lié aux représentations collectives ou individuelles.',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000004','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'Le mot « propagande », à l''origine neutre (action de propager la foi), a acquis une connotation fortement négative. Ce phénomène lexical s''appelle…',
null,
'[{"id":"a","label":"Méliorisation"},{"id":"b","label":"Généralisation sémantique"},{"id":"c","label":"Péjoration"},{"id":"d","label":"Spécialisation sémantique"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La PÉJORATION (ou dégradation sémantique) désigne l''évolution d''un mot vers un sens négatif au fil du temps. « Propagande » (du latin *propagare* = propager) était neutre au XVIIe s. ; c''est l''usage politique du XXe s. qui l''a chargé d''un sens manipulatoire. À l''inverse, la MÉLIORISATION est le passage d''un sens neutre ou péjoratif à un sens positif (ex. « idole » autrefois = fausse divinité). La spécialisation et la généralisation concernent l''extension ou la restriction du référent, pas la valeur axiologique.',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000005','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'« Le pied de la chaise », « le col de la bouteille », « les bras du fauteuil » sont des exemples de…',
null,
'[{"id":"a","label":"Métonymie — transfert de sens par contiguïté."},{"id":"b","label":"Synecdoque — désignation du tout par la partie."},{"id":"c","label":"Catachrèse — métaphore lexicalisée intégrée à la langue commune."},{"id":"d","label":"Antonomase — emploi d''un nom propre comme nom commun."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La CATACHRÈSE est une métaphore si usée qu''elle a perdu son caractère imagé et s''est lexicalisée : personne ne perçoit plus la comparaison implicite entre le « pied » humain et le « pied » de la chaise. Elle diffère de la métaphore vive (qui produit un effet stylistique conscient) et de la métonymie (qui joue sur la contiguïté réelle entre référents). Les catachrèses sont omniprésentes dans le vocabulaire ordinaire : « aiguille » d''une montre, « gueule » d''un four, « langue » de terre.',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000006','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'Dans un texte évoquant la forêt, les mots « feuille », « racine », « branche », « sève », « tronc » appartiennent à la même…',
null,
'[{"id":"a","label":"Famille morphologique"},{"id":"b","label":"Champ associatif"},{"id":"c","label":"Isotopie"},{"id":"d","label":"Paradigme flexionnel"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''ISOTOPIE (Greimas) est la récurrence d''un même sème (trait sémantique) à travers plusieurs unités lexicales d''un texte, créant une cohérence thématique. Ici, tous les mots partagent le sème /végétal/, ce qui constitue une isotopie végétale/arboricole. Le CHAMP ASSOCIATIF est plus large (il inclut toutes les associations mentales, y compris non lexicales) et la FAMILLE MORPHOLOGIQUE regroupe les mots dérivés d''un même radical (ex. feuille, feuillage, effeuiller). L''isotopie est spécifiquement textuelle et sémantique.',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000007','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'Dire « un Harpagon » pour désigner un avare, ou « un Tartuffe » pour un hypocrite, constitue une figure appelée…',
null,
'[{"id":"a","label":"Métaphore vive"},{"id":"b","label":"Euphémisme"},{"id":"c","label":"Antiphrase"},{"id":"d","label":"Antonomase"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''ANTONOMASE consiste à employer un nom propre comme nom commun (ou inversement). Harpagon (personnage de Molière) et Tartuffe (personnage de Molière) sont devenus des appellations génériques. Quand l''antonomase est largement répandue, le nom propre peut même entrer dans le dictionnaire en minuscule (« un tartuffe »). Cette figure n''est pas une métaphore vive (elle est lexicalisée) ni un euphémisme (pas d''atténuation de sens) ni une antiphrase (pas d''inversion du sens).',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000008','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'On dit à quelqu''un qui vient de commettre une grave erreur : « Bravo, c''est du beau travail ! » La figure consistant à employer des mots en sens contraire de leur signification habituelle est…',
null,
'[{"id":"a","label":"La litote"},{"id":"b","label":"La catachrèse"},{"id":"c","label":"L''antiphrase (ironie)"},{"id":"d","label":"La métonymie"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''ANTIPHRASE est l''utilisation d''un terme ou d''une expression dans un sens exactement opposé à son sens littéral, pour produire un effet ironique. Elle repose sur un écart entre ce qui est dit et ce qui est signifié, souvent renforcé par le contexte situationnel ou la prosodie. La LITOTE dit moins pour suggérer plus (« ce n''est pas mal » = c''est très bien), sans inversion totale. La catachrèse est une métaphore lexicalisée. La métonymie joue sur la contiguïté, pas l''inversion.',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000009','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'Dans « Elle a un regard de velours », le groupe nominal « de velours » exprime une qualité à travers…',
null,
'[{"id":"a","label":"Une comparaison explicite introduite par « comme »"},{"id":"b","label":"Une métonymie — transfert par contiguïté avec le velours réel"},{"id":"c","label":"Une métaphore in absentia — le comparant est présent mais le comparé (regard doux) est absent"},{"id":"d","label":"Une catachrèse — sens lexicalisé sans effet stylistique"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La MÉTAPHORE IN ABSENTIA (ou métaphore substitutive) présente uniquement le comparant (« velours ») sans énoncer le comparé ni l''outil de comparaison. Le lecteur reconstitue la qualité partagée : douceur → regard doux comme du velours. Elle s''oppose à la métaphore in praesentia qui juxtapose les deux termes (« son regard, velours sombre »). Ce n''est pas une catachrèse (la sensation d''image est vive) ni une métonymie (il n''y a pas de contiguïté réelle entre regard et velours).',
'valide','Module Lexique V3','premium',true),

('93000000-0000-0000-0000-000000000010','Francais','lexique','lex_polysemie_contexte','Polysémie et sens en contexte','Difficile','qcm',
'Le mot « idole », à l''origine péjoratif (fausse divinité, objet de culte condamnable), désigne aujourd''hui une personne admirée. Ce changement est un exemple de…',
null,
'[{"id":"a","label":"Péjoration"},{"id":"b","label":"Spécialisation sémantique"},{"id":"c","label":"Méliorisation"},{"id":"d","label":"Généralisation sémantique"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La MÉLIORISATION (ou amélioration sémantique) désigne l''évolution d''un mot vers un sens plus valorisant. « Idole » est passé d''une connotation religieuse négative (idolâtrie condamnée) à un sens positif (star admirée, icône culturelle). C''est le phénomène inverse de la péjoration. Ces évolutions sémantiques sont liées aux mutations culturelles et sociales : ce qui était condamné peut devenir valorisé (et inversement). La généralisation et la spécialisation portent sur l''extension du champ référentiel, non sur la valeur axiologique.',
'valide','Module Lexique V3','premium',true),

-- ================================================================
-- Série 94 — Registres de langue et niveaux de discours (lex_registres_discours)
-- ================================================================

('94000000-0000-0000-0000-000000000001','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'Dans « Il ne sait de quoi il retourne », la construction « de quoi il retourne » (plutôt que « de quoi ça parle ») relève d''un registre…',
null,
'[{"id":"a","label":"Familier"},{"id":"b","label":"Courant"},{"id":"c","label":"Soutenu"},{"id":"d","label":"Technique"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le registre SOUTENU (ou littéraire) se caractérise par : vocabulaire précis et recherché, syntaxe complexe respectant strictement les règles, emploi de tournures peu fréquentes à l''oral. L''expression idiomatique « de quoi il retourne » (= de quoi il s''agit) appartient au registre soutenu car elle est peu usitée dans la langue ordinaire. Le registre courant dirait « de quoi il s''agit », le registre familier « de quoi ça parle ». La distinction entre ces trois niveaux est régulièrement évaluée au CRPE.',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000002','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'« Il nous a quittés » employé pour « il est mort » est un exemple de…',
null,
'[{"id":"a","label":"Litote — on en dit moins pour suggérer davantage."},{"id":"b","label":"Euphémisme — on atténue la brutalité du référent par un terme plus doux."},{"id":"c","label":"Périphrase explicative — on développe la définition du mot."},{"id":"d","label":"Métaphore — on substitue un comparant imagé au terme propre."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''EUPHÉMISME remplace un mot jugé brutal, tabou ou choquant par une expression atténuée : « quitter » au lieu de « mourir ». Son rôle est social et psychologique : ménager la sensibilité de l''interlocuteur. À distinguer de la litote (« ce n''est pas mal » = c''est très bien — sous-énoncé pour suggérer plus) et de la métaphore (image vive basée sur une ressemblance). Les euphémismes envahissent les domaines sensibles : mort, maladie, sexualité, guerre (« dommages collatéraux »).',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000003','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'Le mot « saudade » (sentiment de nostalgie mélancolique, propre à la culture portugaise) employé dans un texte français sans traduction ni guillemets est un…',
null,
'[{"id":"a","label":"Emprunt intégré — adapté phonologiquement et morphologiquement au français."},{"id":"b","label":"Calque — traduction mot à mot de la structure interne."},{"id":"c","label":"Xénisme — mot étranger conservant son statut d''étranger, signalant une réalité culturelle spécifique."},{"id":"d","label":"Néologisme — mot nouvellement créé en français."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Un XÉNISME est un mot emprunté à une langue étrangère qui conserve sa marque d''étrangeté — il désigne une réalité culturellement liée à cette langue et ne possède pas d''équivalent exact en français. « Saudade » n''est pas traduit parce que le concept lui-même est intraduisible. L''EMPRUNT INTÉGRÉ, lui, est assimilé : « football », « rock » sont des emprunts intégrés. Le CALQUE traduit la structure interne (« gratte-ciel » pour *skyscraper*). Les xénismes sont souvent mis en italique ou entre guillemets pour signaler leur étrangeté.',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000004','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'Parmi ces procédés, lequel est caractéristique du registre scientifique et administratif ?',
null,
'[{"id":"a","label":"La parataxe (juxtaposition de propositions sans connecteur)"},{"id":"b","label":"Les interjections (oh !, hélas !, zut !)"},{"id":"c","label":"L''hyperbole (exagération marquée)"},{"id":"d","label":"La nominalisation (transformation d''un verbe ou adjectif en nom)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La NOMINALISATION (« la réalisation des objectifs » au lieu de « réaliser les objectifs ») est un trait stylistique majeur des registres scientifiques, administratifs et journalistiques : elle densifie le texte, efface les agents, et confère un aspect objectivant et abstrait. Elle est aussi marqueur de complexité syntaxique. La parataxe est plutôt orale ou littéraire (style haché). Les interjections sont propres à l''oral familier. L''hyperbole appartient aux registres expressifs. La nominalisation est un classique de l''analyse de textes administratifs au CRPE.',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000005','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'Le procédé de formation du verlan consiste à…',
null,
'[{"id":"a","label":"Ajouter un suffixe argotique (-oche, -ard) à un radical existant."},{"id":"b","label":"Emprunter un mot à une langue étrangère (arabe, anglais…)."},{"id":"c","label":"Inverser les syllabes d''un mot."},{"id":"d","label":"Tronquer la fin d''un mot (apocope) : cinéma → ciné."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le VERLAN (lui-même : l''envers → verlan) est un procédé argotique consistant à inverser les syllabes d''un mot : l''envers → verlan, l''étrangers → reubeu, l''femmes → meuf, l''police → keuf. Il est né dans les banlieues françaises et illustre la capacité créatrice des locuteurs à jouer avec la langue. L''apocope (ciné, stylo → styl) tronque, le suffixe argotique ajoute (-ard, -oche), et l''emprunt importe depuis une autre langue. Ces procédés relèvent du registre familier à argotique et témoignent de la vitalité de la langue.',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000006','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'Dans un rapport officiel, on lit : « Le déplacement des populations a été effectué dans des conditions satisfaisantes. » Par rapport à « On a déplacé les gens correctement », la réécriture administrative produit un effet…',
null,
'[{"id":"a","label":"Mélioratif — elle valorise davantage l''action."},{"id":"b","label":"Péjoratif — elle dénigre les personnes déplacées."},{"id":"c","label":"Distanciant et neutralisant — elle efface les agents et abstrait le référent humain."},{"id":"d","label":"Emphatique — elle intensifie l''importance de l''action."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le registre administratif et bureaucratique use de la nominalisation (« déplacement » pour « déplacer »), de la voix passive (« a été effectué ») et du vocabulaire abstrait (« populations » pour « gens ») pour EFFACER les agents humains et ABSTRAIRE les réalités concrètes. Cet effet distanciant n''est ni mélioratif ni péjoratif en soi — il neutralise, dépersonnalise, et donne une apparence d''objectivité. C''est une caractéristique de la langue de bois politique et du discours technocratique. Reconnaître cet effet stylistique est essentiel pour l''analyse critique de textes au CRPE.',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000007','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'Le subjonctif imparfait (« bien qu''il fût », « pour qu''elle partît ») appartient aujourd''hui à…',
null,
'[{"id":"a","label":"La langue courante écrite, attendue dans tout texte formel."},{"id":"b","label":"La langue familière parlée des jeunes locuteurs."},{"id":"c","label":"Le registre soutenu ou littéraire, perçu comme archaïque dans l''usage ordinaire."},{"id":"d","label":"La langue technique et scientifique exclusivement."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le subjonctif imparfait (et le subjonctif plus-que-parfait) est aujourd''hui réservé au registre SOUTENU ou LITTÉRAIRE. Dans l''usage courant écrit comme oral, il est systématiquement remplacé par le subjonctif présent (« bien qu''il soit ») ou passé (« bien qu''il ait été »). Son emploi dans un texte ordinaire produit un effet stylistique marqué, voire comique par excès de préciosité. C''est un marqueur fort de registre que les candidats au CRPE doivent savoir identifier dans une analyse de style.',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000008','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'La connotation AXIOLOGIQUE d''un mot désigne…',
null,
'[{"id":"a","label":"Son étymologie latine ou grecque."},{"id":"b","label":"Sa valeur positive ou négative sur l''échelle des jugements moraux ou esthétiques."},{"id":"c","label":"Son appartenance à un champ lexical spécialisé."},{"id":"d","label":"Sa capacité à désigner un référent concret."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La connotation AXIOLOGIQUE porte sur la valeur (du grec *axios* = valeur) : un mot est axiologiquement positif (vertu, générosité, bravoure) ou négatif (couardise, traîtrise, vénalité). Cette dimension évaluative s''ajoute au sens dénotatif et oriente le jugement du lecteur/auditeur. Elle est centrale dans l''analyse des textes argumentatifs : un auteur qui choisit « combattant » plutôt que « terroriste » pour désigner le même individu opère un choix axiologique fort. Les candidats au CRPE doivent maîtriser cette notion pour analyser l''implicite d''un texte.',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000009','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'« Je suis arrivé. Tout était calme. Les rues étaient désertes. » La juxtaposition de propositions sans connecteur logique explicite s''appelle…',
null,
'[{"id":"a","label":"Hypotaxe"},{"id":"b","label":"Coordination par asyndète"},{"id":"c","label":"Parataxe"},{"id":"d","label":"Subordination implicite"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La PARATAXE est la construction syntaxique par juxtaposition, sans connecteur logique explicite entre les propositions. Elle s''oppose à l''HYPOTAXE (subordination, avec conjonctions explicites) et à la coordination marquée. L''ASYNDÈTE est proche mais désigne spécifiquement l''absence de conjonction de coordination là où elle serait attendue (suppression du « et » dans une liste). La parataxe crée un rythme haché, une impression de rapidité ou d''accumulation, et est fréquente dans les récits à la première personne ou le style journalistique.',
'valide','Module Lexique V3','premium',true),

('94000000-0000-0000-0000-000000000010','Francais','lexique','lex_registres_discours','Registres de langue et niveaux de discours','Difficile','qcm',
'Le mot « occire » (tuer) est aujourd''hui considéré comme…',
null,
'[{"id":"a","label":"Un néologisme technique entrant dans l''usage contemporain."},{"id":"b","label":"Un emprunt récent à l''occitan."},{"id":"c","label":"Un archaïsme encore compris mais sorti de l''usage courant, à valeur stylistique."},{"id":"d","label":"Un régionalisme propre au sud de la France."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Un ARCHAÏSME est un mot ou une forme que l''usage contemporain a abandonné mais que les locuteurs cultivés comprennent encore (par opposition aux mots DISPARUS, totalement oubliés). « Occire » est de l''ancien français (< latin *occidere*) ; son emploi aujourd''hui est délibérément stylistique, souvent humoristique ou médiévalisant. À distinguer du RÉGIONALISME (usage géographiquement localisé) et du néologisme (création récente). La notion d''archaïsme implique une conscience de l''écart temporel entre le mot et la norme contemporaine.',
'valide','Module Lexique V3','premium',true),

-- ================================================================
-- Série 95 — Formation savante des mots (lex_formation_savante)
-- ================================================================

('95000000-0000-0000-0000-000000000001','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'« Fragile » et « frêle » sont deux mots français issus du même étymon latin *fragilis*. Ces deux formes constituent…',
null,
'[{"id":"a","label":"Des homophones — même prononciation, orthographe différente."},{"id":"b","label":"Des doublets étymologiques — même origine, évolutions distinctes."},{"id":"c","label":"Des dérivés parasynthétiques — formés par préfixe + radical + suffixe simultanément."},{"id":"d","label":"Des calques — traduction de la structure d''un mot étranger."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les DOUBLETS ÉTYMOLOGIQUES sont deux mots issus du même étymon latin, l''un entré très tôt par voie populaire (évolution phonétique naturelle : *fragilis* → frêle) et l''autre emprunté plus tardivement par voie savante (emprunt direct sans transformation : *fragilis* → fragile). Ils partagent l''origine mais diffèrent de sens et d''usage. Autres exemples : « poison » / « potion » (< *potionem*), « hôtel » / « hôpital » (< *hospitale*), « entier » / « intègre » (< *integrum*). Ces doublets illustrent les deux canaux d''enrichissement du lexique français.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000002','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'Dans « paranormal », « paratonnerre » et « parascolaire », quel sens commun le préfixe « para- » exprime-t-il ?',
null,
'[{"id":"a","label":"En dessous de / sous (sens de sous-)"},{"id":"b","label":"Au-delà de / contraire à / qui protège contre (plusieurs valeurs selon le contexte)"},{"id":"c","label":"Autour de / de toutes parts (sens de péri-)"},{"id":"d","label":"Avant / antérieur à (sens de pré-)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le préfixe « para- » (du grec *para* = à côté, contre, en dehors) possède plusieurs valeurs selon les mots : → protection/défense contre (*paratonnerre* = protège contre la foudre, *parasol*, *parachute*) ; → à côté de / similaire à (*paramédical*, *parascolaire* = à côté du scolaire) ; → au-delà du normal (*paranormal*, *parapsychologie*). Cette polysémie préfixale est typique des éléments savants. Le sens "autour de" est celui de *péri-* (périmètre), le sens "avant" est celui de *pré-*, le sens "sous" est celui de *hypo-* ou *sub-*.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000003','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'Le mot « philosophie » est formé des éléments grecs *philos* (qui aime) + *sophia* (sagesse). Ce mode de formation est…',
null,
'[{"id":"a","label":"La dérivation préfixale — ajout d''un préfixe à un radical existant."},{"id":"b","label":"L''emprunt à l''arabe classique."},{"id":"c","label":"La composition savante — juxtaposition de deux éléments grecs ou latins."},{"id":"d","label":"La formation par aphérèse — suppression d''une syllabe initiale."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La COMPOSITION SAVANTE (ou néoclassique) consiste à former un mot nouveau en juxtaposant deux (ou plus) éléments issus du grec ou du latin, sans que ces éléments soient des mots autonomes en français. Ce procédé est très productif dans le vocabulaire scientifique, médical et technique : *télé-scope*, *cardio-logie*, *photo-synthèse*, *bio-chimie*. À distinguer de la DÉRIVATION (ajout d''un affixe à un mot existant) et de la composition ordinaire (deux mots autonomes : *porte-monnaie*). La dérivation préfixale ajoute un préfixe à un radical déjà existant en français.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000004','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'L''anglais *software* a donné « logiciel » en français (de *logique* + *-iel*, modelé sur la structure interne de l''anglais). « Logiciel » est donc…',
null,
'[{"id":"a","label":"Un emprunt intégral — le mot anglais adopté tel quel."},{"id":"b","label":"Un xénisme — mot étranger non traduit conservant sa marque d''étrangeté."},{"id":"c","label":"Un calque — traduction de la structure interne du mot source."},{"id":"d","label":"Un néologisme autonome sans lien avec l''anglais."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Un CALQUE lexical traduit mot à mot (ou morphème par morphème) la structure interne d''un mot étranger : *soft* (doux/logique) + *ware* (-iel/matériel) → logiciel. Le calque préserve le sens sans préserver la forme phonique. Autres calques célèbres : « gratte-ciel » (< *skyscraper*), « baladeur » (< *walkman*), « ordinateur » (< *computer*, proposé par IBM France). L''EMPRUNT INTÉGRAL adopte la forme sonore étrangère (« week-end », « marketing »). Le xénisme est un mot étranger non adapté désignant une réalité culturelle spécifique.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000005','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'« Courriel » est formé par télescopage de « courrier » et « électronique ». Ce procédé de formation s''appelle…',
null,
'[{"id":"a","label":"Composition savante par éléments néoclassiques."},{"id":"b","label":"Dérivation suffixale."},{"id":"c","label":"Calque de l''anglais *e-mail*."},{"id":"d","label":"Mot-valise (télescopage ou amalgame)."}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le MOT-VALISE (ou télescopage / amalgame) fusionne deux mots en combinant partiellement leurs formes : *cour(rier)* + *(él)ectroni(que)* → courriel. Ce procédé est distinct du calque (qui traduit la structure interne sans fusion formelle). Autres mots-valises : *franglais* (français + anglais), *informatique* (information + automatique), *motel* (motor + hotel), *brunch* (breakfast + lunch). Le mot-valise est très productif dans le vocabulaire contemporain et technologique. À distinguer de la composition savante où les deux éléments sont des morphèmes entiers.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000006','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'Lequel de ces mots est issu du radical latin *manus* (la main) ?',
null,
'[{"id":"a","label":"Manipuler uniquement."},{"id":"b","label":"Manuscrit uniquement."},{"id":"c","label":"Manier uniquement."},{"id":"d","label":"Les trois : manipuler, manuscrit et manier."}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Le radical latin *manus* (main) est à l''origine d''une famille lexicale très riche en français : *manipuler* (< *manus* + *plere* = remplir de la main), *manuscrit* (< *manus* + *scriptum* = écrit à la main), *manier* (< *manicare* dérivé de *manus*), mais aussi *manière*, *mandat*, *manuel*, *manufacture*, *manifeste*, *manœuvre*. Identifier les familles étymologiques est une compétence clé pour l''enseignement du vocabulaire à l''école. Le CRPE valorise la capacité à relier les mots par leurs racines pour construire une culture lexicale solide chez les élèves.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000007','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'Dans « circumnavigation » et « circonférence » (< latin *circum*), quel sens porte le préfixe ?',
null,
'[{"id":"a","label":"Au-dessus de / sur (sens de super-)"},{"id":"b","label":"Autour de"},{"id":"c","label":"En dessous de / sous (sens de sub-)"},{"id":"d","label":"Au-delà de / de l''autre côté (sens de trans-)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le préfixe latin *circum-* (devenu *circon-* en français par adaptation) signifie « autour de ». Il donne : *circumnavigation* (naviguer autour), *circonférence* (porter autour), *circonstance* (se tenir autour), *circonscription* (écrire autour = délimiter), *circumpolaire* (autour du pôle). À ne pas confondre avec *super-* (au-dessus), *sub-* (en dessous), *trans-* (à travers/au-delà). La maîtrise des préfixes latins et grecs est un outil essentiel pour l''enseignement du vocabulaire au cycle 3 et pour le CRPE.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000008','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'La locution « a posteriori », employée telle quelle en français, est…',
null,
'[{"id":"a","label":"Un calque du latin — la structure interne a été traduite en français."},{"id":"b","label":"Un latinisme — locution latine non traduite intégrée à l''usage français."},{"id":"c","label":"Un doublet — forme populaire et forme savante du même étymon."},{"id":"d","label":"Un archaïsme — forme ancienne abandonnée dans l''usage courant."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Un LATINISME est une locution ou un mot latin utilisé(e) tel(le) quel(le) en français, sans adaptation. Les latinismes scientifiques, juridiques et philosophiques abondent : *a priori*, *a posteriori*, *in situ*, *post-mortem*, *modus vivendi*, *in fine*, *nota bene*. Ils se distinguent des calques (qui traduisent la structure) et des doublets (qui impliquent deux formes issues du même étymon par des voies différentes). Les latinismes sont une marque du registre soutenu et du discours académique ; leur compréhension est attendue des futurs enseignants.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000009','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'« Hôpital » et « hôtel » sont tous deux issus du latin *hospitale* mais ont des sens très différents aujourd''hui. Leur divergence illustre…',
null,
'[{"id":"a","label":"Une homonymie accidentelle — deux mots distincts par hasard."},{"id":"b","label":"Un doublet étymologique avec spécialisation sémantique divergente."},{"id":"c","label":"Une métaphore lexicalisée — l''un des deux sens est figuré."},{"id":"d","label":"Un emprunt-calque croisé."}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'*Hospitale* a suivi deux voies : la voie POPULAIRE (évolution phonétique au fil du temps) a donné « hôtel » (maison seigneuriale, puis établissement d''hébergement) et la voie SAVANTE (emprunt direct au latin médiéval) a donné « hôpital » (maison pour les hôtes malades). Ce sont donc des DOUBLETS avec SPÉCIALISATION divergente : le même étymon a produit deux mots aux sens distincts. Autres doublets classiques : *fragile/frêle*, *poison/potion*, *entier/intègre*, *raide/rigide*. Ce phénomène illustre la richesse historique du lexique français.',
'valide','Module Lexique V3','premium',true),

('95000000-0000-0000-0000-000000000010','Francais','lexique','lex_formation_savante','Formation savante des mots','Difficile','qcm',
'Le mot « télévision » combine l''élément grec *tele-* (loin) et le latin *visio* (vision). Ce type de formation est…',
null,
'[{"id":"a","label":"Un doublet — deux formes du même étymon."},{"id":"b","label":"Une composition savante homogène — deux éléments de même origine."},{"id":"c","label":"Un hybride étymologique — formation mixte combinant un élément grec et un élément latin."},{"id":"d","label":"Un néologisme technique pur sans racine classique identifiable."}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Un HYBRIDE étymologique (ou mot hybride) est formé d''éléments provenant de deux langues sources différentes. « Télévision » mélange le grec *tele-* et le latin *visio* — ce qui était techniquement critiqué par les puristes lors de sa création. D''autres hybrides célèbres : *automobile* (grec *auto-* + latin *mobilis*), *sociologie* (latin *socius* + grec *-logos*). La composition savante HOMOGÈNE utilise deux éléments de même origine : *philosophie* (tout grec), *agriculture* (tout latin). Cette distinction est utile pour analyser la structure morphologique des mots avec des élèves de cycle 3.',
'valide','Module Lexique V3','premium',true)

;
