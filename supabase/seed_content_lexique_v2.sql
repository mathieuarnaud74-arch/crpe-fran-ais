-- CRPE Français — Lexique V2 (6 séries × 10 questions)
insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ============================================================
-- SÉRIE 40 — Synonymes, antonymes et paronymes (free)
-- ============================================================

(
  '40000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Quel mot est le synonyme le plus précis de « frugal » ?',
  null,
  '[{"id":"a","label":"sobre"},{"id":"b","label":"généreux"},{"id":"c","label":"abondant"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Frugal qualifie ce qui est simple et peu abondant, notamment en matière d''alimentation. Sobre partage ce sens de la modération et de la retenue. Généreux et abondant sont des quasi-antonymes de frugal, car ils évoquent l''excès ou la profusion. En contexte scolaire, distinguer un synonyme d''un antonyme est un exercice fondamental pour enrichir le vocabulaire.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Quel est l''antonyme de « loquace » ?',
  null,
  '[{"id":"a","label":"bavard"},{"id":"b","label":"taciturne"},{"id":"c","label":"éloquent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Loquace désigne une personne qui parle beaucoup et volontiers. Son antonyme est taciturne, qui caractérise au contraire quelqu''un de peu communicatif et silencieux. Bavard est un synonyme de loquace, et éloquent désigne la qualité de bien s''exprimer, sans lien direct avec la quantité de paroles. Maîtriser les antonymes permet d''affiner l''expression et la compréhension des nuances.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'vrai_faux',
  '« Éminent » et « imminent » sont des synonymes car ils se prononcent de façon très proche.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Éminent et imminent sont des paronymes : ils se ressemblent phonétiquement mais ont des sens très différents. Éminent signifie « qui se distingue par sa valeur, remarquable » (un éminent professeur), tandis qu''imminent signifie « qui va se produire très prochainement » (un danger imminent). La confusion entre ces deux mots constitue une faute courante à éviter. Les paronymes sont des pièges lexicaux fréquemment évalués au CRPE.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Dans la phrase « Il a évoqué ses souvenirs d''enfance », quel verbe pourrait remplacer « évoquer » sans changer le sens ?',
  null,
  '[{"id":"a","label":"invoquer"},{"id":"b","label":"rappeler"},{"id":"c","label":"provoquer"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Évoquer signifie « faire revenir à l''esprit, rappeler ». Rappeler est donc son synonyme dans ce contexte. Invoquer signifie « faire appel à une autorité ou une puissance » (invoquer la loi, invoquer Dieu) : c''est un paronyme d''évoquer et non un synonyme. Provoquer signifie « causer, déclencher » et n''a aucun lien sémantique avec évoquer. La confusion évoquer/invoquer est une faute typique.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'vrai_faux',
  '« Conjecture » et « conjoncture » sont des paronymes aux sens bien distincts.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Conjecture désigne une supposition, une hypothèse fondée sur des indices insuffisants (« Ce n''est que conjecture »). Conjoncture désigne l''ensemble des circonstances économiques ou politiques d''un moment donné (« la conjoncture économique actuelle »). Ces deux mots se ressemblent phonétiquement mais appartiennent à des registres différents. Leur confusion fréquente en fait des candidats privilégiés aux questions sur les paronymes au CRPE.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Quel est le synonyme le plus nuancé de « peur » pour exprimer une crainte intense et irrationnelle ?',
  null,
  '[{"id":"a","label":"inquiétude"},{"id":"b","label":"phobie"},{"id":"c","label":"méfiance"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Peur est le terme générique. Phobie désigne une peur intense, persistante et irrationnelle d''un objet ou d''une situation précise : c''est la nuance la plus forte et la plus spécifique parmi les propositions. Inquiétude est plus modérée et souvent rationnelle. Méfiance relève de la prudence vis-à-vis d''une personne ou d''une situation, sans nécessairement impliquer de la peur. Choisir le synonyme le plus précis exige de connaître les gradations sémantiques.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'vrai_faux',
  'Un mot polysémique possède plusieurs sens différents selon le contexte.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'La polysémie est la propriété d''un mot d''avoir plusieurs sens distincts. Par exemple, « vague » peut désigner un mouvement de la mer (sens concret) ou quelque chose d''imprécis (sens figuré). La polysémie est à distinguer de l''homonymie, où deux mots différents partagent la même forme. Comprendre la polysémie est essentiel pour l''enseignement de la lecture et de la compréhension de texte à l''école primaire.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Quel paronyme complète correctement cette phrase : « Sa nomination est _______ ; elle sera annoncée dans les prochains jours » ?',
  null,
  '[{"id":"a","label":"éminente"},{"id":"b","label":"imminente"},{"id":"c","label":"éminencée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Imminente (féminin d''imminent) est le mot correct ici, car la phrase exprime un événement sur le point de se produire. Éminente (féminin d''éminent) qualifierait une personnalité remarquable ou une qualité supérieure. Éminencée n''existe pas en français. Savoir distinguer éminent et imminent est une compétence lexicale attendue au concours du CRPE, notamment dans les questions portant sur les paronymes.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'qcm',
  'Parmi ces propositions, laquelle constitue une paire de synonymes exacts ?',
  null,
  '[{"id":"a","label":"aride / fertile"},{"id":"b","label":"concis / laconique"},{"id":"c","label":"austère / prodigue"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Concis et laconique désignent tous deux un style ou une expression brefs, allant à l''essentiel. Ils sont synonymes, bien que laconique évoque une brièveté encore plus prononcée, parfois perçue comme sèche. Aride et fertile sont des antonymes (l''un signifie stérile, l''autre productif). Austère et prodigue sont également des antonymes : austère désigne la sévérité et la retenue, prodigue la générosité excessive. Reconnaître les paires synonymiques est un exercice classique du CRPE.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '40000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_synonymes_antonymes',
  'Synonymes, antonymes et paronymes', 'Intermediaire',
  'vrai_faux',
  'Les synonymes parfaits sont courants en français : deux mots synonymes sont toujours parfaitement interchangeables dans tous les contextes.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les synonymes parfaitement interchangeables sont extrêmement rares en français. La plupart des synonymes présentent des nuances de sens, de registre ou d''usage qui les différencient. Par exemple, « maison » et « demeure » sont proches mais « demeure » appartient à un registre plus soutenu. De même, « peur » et « terreur » sont synonymes partiels mais non interchangeables. La richesse du français repose précisément sur ces nuances que l''enseignant doit savoir exploiter en classe.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

-- ============================================================
-- SÉRIE 41 — Champs lexicaux et sémantiques (free)
-- ============================================================

(
  '41000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Quel mot n''appartient pas au champ lexical de la « mer » ?',
  null,
  '[{"id":"a","label":"houle"},{"id":"b","label":"berge"},{"id":"c","label":"écume"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Houle et écume appartiennent clairement au champ lexical de la mer : la houle désigne les grandes vagues régulières et l''écume est la mousse blanche formée à la surface de l''eau. Berge désigne la rive d''un cours d''eau (rivière, fleuve) et appartient donc au champ lexical de la rivière ou du fleuve, non de la mer. Identifier l''intrus dans un champ lexical est un exercice fréquent à l''école primaire et au CRPE.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'vrai_faux',
  'Le champ lexical d''un texte est l''ensemble des mots qui se rapportent à un même thème ou à une même notion.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le champ lexical regroupe effectivement tous les mots d''un texte se référant à un même thème, quelle que soit leur nature grammaticale. Par exemple, dans un texte sur la guerre, les mots « combat », « blessé », « victoire », « tranchée » et « ennemi » font partie du même champ lexical. L''analyse du champ lexical dominant d''un texte permet de dégager son thème principal. C''est un outil essentiel de la lecture analytique enseigné dès le cycle 3.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Parmi ces mots, lequel appartient au champ lexical de la « tristesse » ?',
  null,
  '[{"id":"a","label":"allégresse"},{"id":"b","label":"mélancolie"},{"id":"c","label":"enthousiasme"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Mélancolie désigne un état de tristesse douce et vague, souvent associé à la nostalgie : elle appartient bien au champ lexical de la tristesse. Allégresse exprime une joie vive et expansive, et enthousiasme désigne un sentiment d''ardeur et d''admiration : tous deux appartiennent au champ lexical des émotions positives. Distinguer les champs lexicaux des émotions enrichit la compréhension des textes littéraires et la production d''écrits.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'vrai_faux',
  'Le champ sémantique d''un mot correspond à l''ensemble de ses différents sens possibles.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le champ sémantique d''un mot est l''ensemble des acceptions (sens) que ce mot peut prendre. Par exemple, le mot « feuille » a pour champ sémantique : la feuille d''arbre, la feuille de papier, la feuille d''or. Le champ sémantique est donc lié à la polysémie d''un mot. Il ne faut pas confondre champ sémantique (les sens d''un seul mot) et champ lexical (l''ensemble des mots d''un texte renvoyant à un thème commun).',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Dans un texte sur la forêt, les mots « chêne », « mousse », « sous-bois », « frondaison » et « écorce » constituent :',
  null,
  '[{"id":"a","label":"un champ sémantique"},{"id":"b","label":"une famille de mots"},{"id":"c","label":"un champ lexical"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Ces mots appartiennent tous au thème de la forêt mais ne partagent pas de radical commun : ils forment donc un champ lexical, et non une famille de mots. Un champ sémantique désignerait les différents sens d''un seul mot, ce qui ne correspond pas à cette liste. Un champ lexical peut regrouper des noms, des verbes, des adjectifs et des adverbes liés à un même univers thématique. L''identification du champ lexical dominant est un outil clé de l''analyse littéraire.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Quel mot appartient au champ lexical du « voyage » ?',
  null,
  '[{"id":"a","label":"itinéraire"},{"id":"b","label":"cadastre"},{"id":"c","label":"verdict"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Itinéraire désigne le tracé ou le parcours d''un trajet : il appartient pleinement au champ lexical du voyage. Cadastre est un terme administratif désignant le registre foncier des propriétés et n''a aucun lien avec le voyage. Verdict est un terme juridique (décision d''un jury) sans rapport avec le thème du voyage. L''enseignant doit apprendre aux élèves à repérer les indices lexicaux thématiques pour mieux comprendre un texte.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'vrai_faux',
  'Un même mot peut appartenir à plusieurs champs lexicaux différents selon le contexte du texte.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'En raison de la polysémie, un mot peut s''inscrire dans plusieurs champs lexicaux. Par exemple, « lumière » peut appartenir au champ lexical de la physique (lumière visible, rayonnement), de la religion (lumière divine), ou encore de l''intelligence (les Lumières, un esprit éclairé). Le contexte est donc déterminant pour identifier le champ lexical pertinent. Enseigner cette souplesse sémantique développe chez les élèves la compréhension fine des textes.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Le mot « banque » appartient principalement à quel champ lexical dans la phrase « Il a déposé ses économies à la banque » ?',
  null,
  '[{"id":"a","label":"le champ lexical de la finance"},{"id":"b","label":"le champ lexical de la géographie"},{"id":"c","label":"le champ lexical de la nature"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Dans ce contexte, « banque » désigne un établissement financier : le mot s''inscrit dans le champ lexical de la finance, aux côtés de mots comme « économies », « dépôt », « compte » ou « intérêt ». Le même mot pourrait appartenir au champ lexical de la géologie dans l''expression « banque de poissons » ou « banc de sable ». Cette polysémie illustre l''importance du contexte pour l''analyse lexicale, compétence attendue au CRPE.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'qcm',
  'Quelle est la différence entre champ lexical et champ sémantique ?',
  null,
  '[{"id":"a","label":"Le champ lexical regroupe les mots d''un texte sur un même thème ; le champ sémantique regroupe les sens d''un seul mot"},{"id":"b","label":"Ce sont deux termes identiques désignant la même réalité"},{"id":"c","label":"Le champ sémantique regroupe les mots d''un texte ; le champ lexical regroupe les sens d''un mot"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La distinction est essentielle : le champ lexical est un outil d''analyse textuelle (ensemble des mots d''un texte relevant d''un même thème), tandis que le champ sémantique est un outil d''analyse lexicale (ensemble des sens d''un même mot). Confondre ces deux notions est une erreur fréquente, y compris chez les étudiants préparant le CRPE. La maîtrise de cette distinction permet une analyse rigoureuse des textes et du vocabulaire.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '41000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_champs_semantiques',
  'Champs lexicaux et sémantiques', 'Intermediaire',
  'vrai_faux',
  'Dans un texte, repérer le champ lexical dominant permet d''identifier le thème principal abordé par l''auteur.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''analyse du champ lexical le plus représenté dans un texte est effectivement une méthode efficace pour identifier son thème central. Si un texte présente un champ lexical de la guerre prédominant (combat, soldat, victoire, ennemi, bataille), on peut en déduire que la guerre est le thème principal. Cette approche est enseignée dès le cycle 3 pour développer la compréhension en lecture. Elle s''articule avec l''étude du paratexte et de la structure narrative.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

-- ============================================================
-- SÉRIE 42 — Étymologie : préfixes latins et grecs (free)
-- ============================================================

(
  '42000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Le préfixe grec « auto- » signifie :',
  null,
  '[{"id":"a","label":"contre"},{"id":"b","label":"soi-même"},{"id":"c","label":"à distance"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le préfixe grec auto- vient du grec autos signifiant « soi-même ». On le retrouve dans des mots comme autobiographie (récit de sa propre vie), autonomie (le fait de se gouverner soi-même), automobile (qui se meut par elle-même) ou autoportrait. Contre est traduit par les préfixes anti- (grec) ou contra- (latin), et à distance par le préfixe télé-. Connaître l''étymologie des préfixes permet de comprendre et de mémoriser le vocabulaire savant.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Que signifie le préfixe latin « ante- » dans des mots comme « antérieur » ou « antidater » ?',
  null,
  '[{"id":"a","label":"après"},{"id":"b","label":"avant"},{"id":"c","label":"contre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le préfixe latin ante- signifie « avant » dans le temps ou dans l''espace. On le retrouve dans antérieur (qui précède), antédiluvien (d''avant le déluge) ou antichambre (pièce qui précède la chambre). Après est traduit par le préfixe post- (latin) et contre par contra- ou anti-. À l''école, les élèves rencontrent souvent des mots avec ce préfixe en étude de la langue, notamment au cycle 3.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'vrai_faux',
  'Le préfixe grec « poly- » signifie « plusieurs » ou « nombreux ».',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Poly- est un préfixe grec issu du mot polus signifiant « nombreux, beaucoup ». On le retrouve dans polygone (figure à plusieurs côtés), polyphonie (plusieurs voix), polymorphe (à plusieurs formes), polyglotte (qui parle plusieurs langues). Son antonyme préfixal est mono- (un seul). Connaître cette opposition poly-/mono- permet aux élèves de déchiffrer de nombreux mots savants rencontrés dans les textes documentaires.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Dans le mot « géographie », quel est le sens du préfixe « géo- » ?',
  null,
  '[{"id":"a","label":"vie"},{"id":"b","label":"terre"},{"id":"c","label":"eau"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Géo- vient du grec gê signifiant « terre ». On le retrouve dans géographie (description de la Terre), géologie (étude des roches terrestres), géomètre (qui mesure la Terre), géocentrisme. Vie est traduit par bio- (biologie, biographe) et eau par hydro- (hydrologie, hydraulique). L''étymologie permet aux élèves de construire le sens de mots inconnus par analogie, une stratégie de lecture efficace dès le CM1.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'vrai_faux',
  'Le préfixe latin « bi- » indique une idée de dualité ou de répétition deux fois.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Bi- est un préfixe latin signifiant « deux ». On le trouve dans bicyclette (à deux roues), bilingue (qui parle deux langues), bimensuel (qui paraît deux fois par mois), bimestriel, bisannuel. Son équivalent grec est di- (diptyque, dilemme). Ce préfixe est souvent enseigné en lien avec d''autres numéraux préfixaux comme uni- (un), tri- (trois), quadri- (quatre), afin de former un réseau lexical cohérent.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Quel préfixe grec signifie « à distance » et se retrouve dans des mots comme « téléphone » ou « télévision » ?',
  null,
  '[{"id":"a","label":"micro-"},{"id":"b","label":"télé-"},{"id":"c","label":"pseudo-"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Télé- vient du grec tele signifiant « loin, à distance ». On le retrouve dans téléphone (voix à distance), télévision (vision à distance), télépathie (communication de pensée à distance), télécommande. Micro- signifie « petit » (microbe, microscope) et pseudo- signifie « faux » (pseudonyme, pseudoscience). La connaissance de télé- est particulièrement utile pour les élèves qui découvrent le vocabulaire des nouvelles technologies.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Dans « anticonstitutionnel », quel est le sens du préfixe « anti- » ?',
  null,
  '[{"id":"a","label":"pour, en faveur de"},{"id":"b","label":"contre, opposé à"},{"id":"c","label":"avant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Anti- est un préfixe grec signifiant « contre, opposé à ». Dans anticonstitutionnel, il signifie « contraire à la Constitution ». On le retrouve dans antibiotique (contre les bactéries), antipathie (sentiment contraire à la sympathie), antidote (contre le poison). Pour est traduit par pro- (proeuropéen, progrès) et avant par ante- ou pré-. Anti- est l''un des préfixes les plus productifs en français moderne.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'vrai_faux',
  'Le préfixe latin « sub- » signifie « sous » ou « en dessous de ».',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Sub- est un préfixe latin signifiant « sous, en dessous ». On le retrouve dans subconsient (sous la conscience), subdivision (division en parties inférieures), subaquatique (sous l''eau), subordonné (placé en dessous dans une hiérarchie). Son antonyme préfixal est super- ou sur- (supérieur, surplomber). La paire sub-/super- est souvent enseignée ensemble pour illustrer les relations hiérarchiques dans le vocabulaire.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Le préfixe grec « chrono- » signifie :',
  null,
  '[{"id":"a","label":"couleur"},{"id":"b","label":"temps"},{"id":"c","label":"espace"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Chrono- vient du grec khronos signifiant « temps ». On le retrouve dans chronologie (étude de la succession des événements dans le temps), chronomètre (instrument mesurant le temps), chronique (récit d''événements dans l''ordre chronologique), anachronisme (erreur de datation). Couleur est traduit par chromato- ou chromo- et espace par topo- ou géo-. Chrono- est souvent rencontré dans les textes d''histoire au cycle 3.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '42000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_etymologie_prefixes',
  'Étymologie : préfixes latins et grecs', 'Intermediaire',
  'qcm',
  'Que signifie le préfixe latin « trans- » dans des mots comme « transformer » ou « transatlantique » ?',
  null,
  '[{"id":"a","label":"à travers, au-delà"},{"id":"b","label":"en dessous"},{"id":"c","label":"à l''intérieur"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Trans- est un préfixe latin signifiant « à travers, au-delà, de l''autre côté ». On le retrouve dans transatlantique (qui traverse l''Atlantique), transformer (changer de forme complètement), transparent (qui laisse passer la lumière à travers), transférer (porter d''un lieu à un autre). En dessous est traduit par sub- et à l''intérieur par intra-. Maîtriser trans- aide les élèves à comprendre de nombreux mots du vocabulaire géographique et scientifique.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

-- ============================================================
-- SÉRIE 43 — Étymologie : suffixes et dérivation (premium)
-- ============================================================

(
  '43000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Le suffixe nominal « -ité » sert à former :',
  null,
  '[{"id":"a","label":"des noms désignant une qualité ou un état abstrait"},{"id":"b","label":"des verbes exprimant une action"},{"id":"c","label":"des adjectifs qualificatifs"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le suffixe -ité, d''origine latine (-itas), s''ajoute à des adjectifs pour former des noms abstraits désignant une qualité ou un état. Exemples : rapide → rapidité, habile → habileté, possible → possibilité, public → publicité. Ce suffixe est très productif en français et se retrouve dans un grand nombre de termes scientifiques et abstraits. Les noms en -ité sont invariables en genre (ils sont tous féminins) et peuvent prendre la marque du pluriel.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'vrai_faux',
  'Le suffixe « -eur » permet uniquement de former des noms masculins désignant des personnes qui exercent une profession.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  '-Eur ne sert pas uniquement à désigner des professions ni uniquement des personnes. Il peut désigner des agents (vendeur, conducteur) mais aussi des appareils ou des machines (aspirateur, ordinateur, réfrigérateur) ainsi que des notions abstraites (valeur, ardeur, bonheur). Par ailleurs, -eur peut former des noms féminins : frayeur, chaleur, douceur. La classe grammaticale produite est toujours nominale, mais le genre, le sens et le référent varient.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Quel suffixe adjectival exprime une possibilité ou une aptitude (« qui peut être… ») ?',
  null,
  '[{"id":"a","label":"-able"},{"id":"b","label":"-ique"},{"id":"c","label":"-al"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le suffixe -able (et sa variante -ible) exprime la possibilité ou l''aptitude passive : mangeable (qui peut être mangé), lisible (qui peut être lu), faisable (qui peut être fait), compréhensible. -Ique forme des adjectifs de relation (historique, logique, phonologique) et -al des adjectifs signifiant « relatif à » (national, oral, final). La productivité de -able est très élevée en français, y compris pour former des néologismes contemporains.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'vrai_faux',
  'Le suffixe « -isme » forme des noms désignant des doctrines, des mouvements ou des comportements caractéristiques.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  '-Isme est un suffixe d''origine grecque (-ismos) qui sert à former des noms désignant des doctrines (marxisme, libéralisme, bouddhisme), des mouvements artistiques (impressionnisme, surréalisme) ou des comportements caractéristiques (élitisme, sectarisme, fanatisme). Les noms en -isme sont tous masculins et abstraits. Ils s''accompagnent souvent d''un dérivé en -iste désignant l''adepte ou le praticien de la doctrine correspondante.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Quelle classe grammaticale le suffixe verbal « -iser » permet-il de produire ?',
  null,
  '[{"id":"a","label":"des noms"},{"id":"b","label":"des adjectifs"},{"id":"c","label":"des verbes"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '-Iser est un suffixe verbal qui s''ajoute à des noms ou des adjectifs pour créer des verbes du premier groupe. Exemples : national → nationaliser, moderne → moderniser, informatique → informatiser, robotique → robotiser. Ce suffixe est particulièrement productif dans le vocabulaire contemporain. Son concurrent -ifier (simplifié→simplifier, clarifié→clarifier) produit également des verbes à partir de bases nominales ou adjectivales.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Le suffixe « -tude » dans des mots comme « solitude », « plénitude » ou « rectitude » forme :',
  null,
  '[{"id":"a","label":"des noms abstraits féminins"},{"id":"b","label":"des adjectifs masculins"},{"id":"c","label":"des verbes d''état"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '-Tude est un suffixe d''origine latine (-tudo) qui forme des noms abstraits féminins à partir d''adjectifs. Exemples : seul → solitude, plein → plénitude, exact → exactitude, prompte → promptitude, serein → sérénité (ici concurrencé par -ité). Ces noms expriment un état ou une qualité abstraite. Le suffixe -tude est caractéristique d''un registre soutenu et littéraire, ce qui en fait un objet d''étude pertinent pour les futurs enseignants.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'vrai_faux',
  'Le suffixe « -ation » et le suffixe « -ment » peuvent tous les deux former des noms d''action à partir de verbes.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Les suffixes -ation et -ment sont deux procédés de nominalisation verbale très productifs en français. -Ation s''ajoute généralement à des verbes en -er : construire → construction, organiser → organisation, éduquer → éducation. -Ment s''ajoute également à des verbes : déplacer → déplacement, entraîner → entraînement, développer → développement. Les deux suffixes produisent des noms d''action ou de résultat, mais leur distribution dépend souvent de la base verbale et de l''usage établi.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Quel suffixe permet de former des noms désignant une personne originaire d''un lieu ou pratiquant une discipline (ex : « musicien », « Parisien ») ?',
  null,
  '[{"id":"a","label":"-ien"},{"id":"b","label":"-age"},{"id":"c","label":"-if"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '-Ien est un suffixe polyfonctionnel qui forme des noms de personnes selon l''origine géographique (Parisien, Brésilien, Algérien), la discipline pratiquée (musicien, mathématicien, historien) ou l''appartenance à un groupe (chrétien, gardien). Il peut également former des adjectifs de relation (quotidien, aérien, terrien). Ce suffixe est très fréquent dans le vocabulaire des sciences humaines et des nationalités, deux domaines clés de l''enseignement à l''école primaire.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'qcm',
  'Le suffixe adjectival « -el » dans des mots comme « naturel », « formel » ou « culturel » indique :',
  null,
  '[{"id":"a","label":"une relation ou une appartenance à un domaine"},{"id":"b","label":"une possibilité ou une aptitude"},{"id":"c","label":"un défaut ou un excès"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le suffixe adjectival -el (variante de -al) forme des adjectifs exprimant une relation ou une appartenance à un domaine ou à une notion. Exemples : nature → naturel, forme → formel, culture → culturel, profession → professionnel. Ces adjectifs relationnels s''opposent aux adjectifs qualificatifs car ils ne peuvent généralement pas être employés attribut seul ni degrés de comparaison. Leur étude relève de la morphologie dérivationnelle, un domaine examiné au CRPE.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

(
  '43000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_etymologie_suffixes',
  'Étymologie : suffixes et dérivation', 'Intermediaire',
  'vrai_faux',
  'Le suffixe « -age » produit uniquement des noms masculins désignant le résultat d''une action.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  '-Age produit effectivement des noms masculins (bricolage, jardinage, massage, chauffage), mais il ne désigne pas uniquement le résultat d''une action. Il peut aussi désigner le processus lui-même (le chauffage = l''action de chauffer), un ensemble ou une collection (feuillage, plumage) ou un droit (péage, servage). Le nom image est féminin et constitue une exception notable. Ainsi, -age est sémantiquement plus riche que la seule notion de résultat d''action.',
  'valide', 'CRPE Français — Lexique V2', 'premium', true
),

-- ============================================================
-- SÉRIE 44 — Sens propre et sens figuré (free)
-- ============================================================

(
  '44000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans la phrase « Il a un cœur de pierre », le mot « pierre » est employé :',
  null,
  '[{"id":"a","label":"au sens propre"},{"id":"b","label":"au sens figuré"},{"id":"c","label":"dans un sens technique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « un cœur de pierre », la pierre ne désigne pas le matériau minéral concret mais sert de métaphore pour évoquer la dureté, l''insensibilité d''une personne. C''est donc un emploi au sens figuré. Le sens propre de pierre est le matériau minéral dur et compact. Distinguer sens propre et sens figuré est une compétence essentielle dès le cycle 2-3, indispensable pour comprendre la métaphore et les autres figures de style.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'vrai_faux',
  'Le sens propre d''un mot est son sens premier, concret et littéral.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le sens propre est en effet le sens premier, direct et concret d''un mot, celui que l''on trouve généralement en premier dans le dictionnaire. Par exemple, le sens propre de « brûler » est « consumer par le feu ». Le sens figuré est un sens dérivé, métaphorique : « brûler d''impatience ». L''opposition sens propre/sens figuré est fondamentale dans l''enseignement du lexique à l''école primaire et dans les questions de compréhension de textes littéraires.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans quelle phrase le mot « dévorer » est-il utilisé au sens figuré ?',
  null,
  '[{"id":"a","label":"Le lion dévore sa proie."},{"id":"b","label":"Elle dévore les livres avec passion."},{"id":"c","label":"L''incendie a dévoré la forêt."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « elle dévore les livres avec passion », dévorer est employé au sens figuré : il signifie lire avidement, avec un appétit métaphorique pour les livres. Dans « le lion dévore sa proie », le sens est propre (manger avec voracité). Dans « l''incendie a dévoré la forêt », le sens est également figuré mais il s''agit d''une métaphore d''action destructrice — cependant, la phrase b est la plus clairement dans le registre de la lecture/intellect. L''analyse du contexte est déterminante pour identifier le sens figuré.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'vrai_faux',
  'Dans « il nage dans le bonheur », le verbe « nager » est utilisé au sens propre car le bonheur peut être ressenti comme une immersion.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Dans « il nage dans le bonheur », nager est bien au sens figuré. La ressemblance subjective avec une immersion ne suffit pas à qualifier un emploi de sens propre : le sens propre désigne la natation réelle, le déplacement dans l''eau. Ici, nager exprime métaphoriquement l''abondance et le débordement de bonheur. Le sens figuré repose toujours sur un transfert de sens du concret vers l''abstrait ou sur une analogie de forme ou de comportement.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans la phrase « La discussion a allumé une vive polémique », le verbe « allumer » est :',
  null,
  '[{"id":"a","label":"au sens propre : il s''agit d''un feu réel"},{"id":"b","label":"au sens figuré : il signifie déclencher, provoquer"},{"id":"c","label":"un terme technique du domaine politique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Allumer au sens propre signifie mettre le feu à quelque chose ou activer une source lumineuse. Dans « allumer une polémique », le verbe est au sens figuré et signifie déclencher, provoquer, faire naître. Cette métaphore du feu pour désigner des querelles ou des conflits est très courante en français (embraser un débat, enflammer les passions). Reconnaître ces métaphores lexicalisées est une compétence importante pour la compréhension des textes journalistiques et littéraires.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'vrai_faux',
  'Une métaphore est une figure de style qui repose sur l''utilisation d''un mot au sens figuré.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'La métaphore est effectivement une figure de style fondée sur le transfert de sens : on emploie un mot dans un sens figuré en établissant une analogie implicite. Par exemple, « ses paroles étaient des flèches » utilise « flèches » au sens figuré pour signifier des propos blessants. La métaphore se distingue de la comparaison par l''absence du mot comparatif (comme, tel). Enseigner le sens figuré prépare les élèves à identifier et à produire des figures de style dès le cycle 3.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans « il a les pieds sur terre », l''expression signifie :',
  null,
  '[{"id":"a","label":"il marche pieds nus sur le sol"},{"id":"b","label":"il est réaliste et pragmatique"},{"id":"c","label":"il travaille dans les champs"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''expression « avoir les pieds sur terre » est une locution idiomatique au sens figuré : elle désigne quelqu''un de réaliste, ancré dans le concret, qui ne se laisse pas emporter par les illusions. Littéralement (sens propre), l''expression décrirait simplement le fait de se tenir debout. Les locutions idiomatiques sont des expressions dont le sens global ne se déduit pas de la somme des sens des mots : elles constituent un défi particulier pour l''enseignement du vocabulaire.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Parmi ces phrases, laquelle utilise le mot « lumière » au sens propre ?',
  null,
  '[{"id":"a","label":"Il est la lumière de notre groupe."},{"id":"b","label":"La lumière du soleil entre par la fenêtre."},{"id":"c","label":"Son esprit est une lumière dans les ténèbres."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « la lumière du soleil entre par la fenêtre », lumière désigne le rayonnement lumineux physique et concret : c''est le sens propre du mot. Dans « il est la lumière de notre groupe », lumière signifie métaphoriquement la personne la plus brillante ou inspirante (sens figuré). Dans « son esprit est une lumière dans les ténèbres », il s''agit également d''une métaphore de l''intelligence ou de la clarté (sens figuré). Le sens propre est toujours lié au réel physique et tangible.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'vrai_faux',
  'Un mot ne peut avoir qu''un seul sens figuré.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Un mot peut avoir plusieurs sens figurés différents selon les contextes. Par exemple, « lourd » au sens propre signifie « de grand poids ». Au sens figuré, il peut signifier « pénible à supporter » (une atmosphère lourde), « maladroit » (une plaisanterie lourde) ou encore « grave de conséquences » (une lourde erreur). Cette multiplicité des sens figurés est liée à la polysémie et montre la richesse sémantique du français. L''étude de ces sens multiples enrichit la compréhension et l''expression des élèves.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '44000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_sens_propre_figure',
  'Sens propre et sens figuré', 'Facile',
  'qcm',
  'Dans « cette décision a ouvert une nouvelle porte pour l''entreprise », le mot « porte » est employé :',
  null,
  '[{"id":"a","label":"au sens propre"},{"id":"b","label":"au sens figuré"},{"id":"c","label":"dans un sens juridique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans cette phrase, porte est employée au sens figuré pour désigner une possibilité, une opportunité nouvelle. Il n''est pas question d''une porte physique que l''on peut ouvrir. La métaphore de la porte pour désigner une opportunité ou un accès à quelque chose de nouveau est très courante en français. Identifier ces emplois figurés lexicalisés est une compétence fondamentale pour comprendre les textes argumentatifs et les textes de presse.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

-- ============================================================
-- SÉRIE 45 — Familles de mots et dérivation (free)
-- ============================================================

(
  '45000000-0000-0000-0000-000000000001',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Quel mot n''appartient pas à la famille du mot « terre » ?',
  null,
  '[{"id":"a","label":"terrestre"},{"id":"b","label":"territoire"},{"id":"c","label":"terrasse"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Terrestre (relatif à la Terre) et territoire (étendue de terre) partagent le radical latin terra (terre) et appartiennent à la famille du mot « terre ». Terrasse, bien qu''elle évoque une surface extérieure, a une étymologie différente : elle vient de l''ancien français terrasse (amas de terre) mais s''est spécialisée dans le sens de surface plane aménagée, et son lien étymologique direct avec terra est moins transparent. Les familles de mots permettent aux élèves de mémoriser l''orthographe et d''inférer le sens des mots inconnus.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000002',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'vrai_faux',
  'Une famille de mots est un ensemble de mots partageant un radical (ou racine) commun.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'Une famille de mots regroupe bien des mots qui dérivent d''un même radical, c''est-à-dire une base lexicale commune. Par exemple, la famille du mot « chant » comprend : chanter, chanteur, chanteuse, chanson, chantonnement, enchanter. Ces mots partagent le radical chant- mais appartiennent à différentes classes grammaticales. L''étude des familles de mots est un outil puissant pour développer les compétences orthographiques et la conscience morphologique des élèves.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000003',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Parmi ces mots, lequel appartient à la famille de « lire » ?',
  null,
  '[{"id":"a","label":"lisière"},{"id":"b","label":"relecture"},{"id":"c","label":"litige"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Relecture est formé du préfixe re- et du nom lecture, lui-même dérivé du verbe lire : il appartient bien à la famille de « lire ». Lisière désigne le bord d''un tissu ou d''une forêt et vient d''un mot d''origine germanique, sans lien avec lire. Litige désigne un différend juridique et vient du latin litigium (querelle) : il n''a aucun lien étymologique avec lire. Reconnaître les mots d''une même famille aide les élèves à éviter des confusions orthographiques fréquentes.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000004',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'vrai_faux',
  'La préfixation consiste à ajouter un élément avant le radical pour former un nouveau mot.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":true}'::jsonb,
  'La préfixation est effectivement un procédé de dérivation qui consiste à placer un préfixe devant le radical pour créer un nouveau mot. Par exemple : possible → impossible, faire → refaire, placer → déplacer, charger → surcharger. Contrairement à la suffixation, la préfixation ne change généralement pas la classe grammaticale du mot de base mais en modifie le sens. Ces deux procédés (préfixation et suffixation) constituent avec la composition les principaux mécanismes de formation des mots en français.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000005',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Quel est le radical commun aux mots « portail », « porteur », « transport » et « reporter » ?',
  null,
  '[{"id":"a","label":"port-"},{"id":"b","label":"por-"},{"id":"c","label":"port- / -port-"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le radical commun est port- (issu du latin portare, porter). Dans portail et porteur, il apparaît en début de mot ; dans transport et reporter, il apparaît après un préfixe (trans- et re-). Ces mots appartiennent tous à la famille du verbe porter. Le radical peut subir des variations orthographiques selon les dérivés, mais la base sémantique reste liée à l''idée de porter ou de déplacer. Identifier le radical commun est un exercice fondamental de morphologie lexicale.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000006',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'vrai_faux',
  'Un mot composé est formé uniquement par la combinaison de deux noms.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les mots composés peuvent être formés par la combinaison de différentes catégories grammaticales, pas seulement de deux noms. On trouve des composés nom + nom (porte-manteau, chou-fleur), nom + adjectif (rouge-gorge, belle-mère), verbe + nom (tire-bouchon, porte-monnaie), adverbe + nom (avant-goût), voire verbe + adverbe (passe-partout). La formation par composition est l''un des procédés les plus variés et productifs du français, avec des structures très diverses.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000007',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Lequel de ces mots est un néologisme (mot créé récemment) ?',
  null,
  '[{"id":"a","label":"courriel"},{"id":"b","label":"château"},{"id":"c","label":"maison"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Courriel est un néologisme francophone créé pour désigner le courrier électronique (email) : il a été officialisé par la Commission générale de terminologie en France dans les années 1990-2000. Château et maison sont des mots anciens de la langue française, hérités du latin (castellum et mansio). Les néologismes désignent des réalités nouvelles et témoignent de la vitalité créatrice de la langue. Leur étude est pertinente pour illustrer les mécanismes de formation des mots aux élèves.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000008',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Le processus de formation du mot « inutilisable » fait intervenir :',
  null,
  '[{"id":"a","label":"un seul préfixe"},{"id":"b","label":"une préfixation et une suffixation (parasynthèse)"},{"id":"c","label":"deux radicaux différents (composition)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Inutilisable est formé à partir du radical util- avec le préfixe in- (non) et le suffixe -able (qui peut être) : c''est un exemple de parasynthèse, c''est-à-dire l''ajout simultané ou successif d''un préfixe et d''un suffixe à une même base. La chaîne de dérivation est : utile → utiliser → utilisable → inutilisable. Ce procédé illustre la richesse de la dérivation en français et la possibilité d''enchaîner plusieurs affixes sur un même radical.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000009',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'vrai_faux',
  'Des mots de la même famille partagent toujours la même orthographe du radical.',
  null,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
  '{"mode":"boolean","value":false}'::jsonb,
  'Le radical peut connaître des variations orthographiques ou phonétiques dans les mots d''une même famille, phénomène appelé allomorphie. Par exemple, la famille de « pied » comprend « piéton » et « pédestre » (radical latin ped-). La famille de « œil » comprend « oculaire » (radical latin ocul-). Ces alternances s''expliquent souvent par l''étymologie latine ou grecque des dérivés savants. Connaître ces variations aide les enseignants à mieux expliquer les relations entre les mots et à traiter les difficultés orthographiques.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
),

(
  '45000000-0000-0000-0000-000000000010',
  'Francais', 'lexique', 'lex_familles_mots',
  'Familles de mots et dérivation', 'Facile',
  'qcm',
  'Parmi ces mots, lesquels appartiennent à la famille de « grand » ?',
  null,
  '[{"id":"a","label":"grandeur, agrandir, grandiloquent"},{"id":"b","label":"grandeur, gronder, granit"},{"id":"c","label":"agrandir, grange, grandeur"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Grandeur (qualité de ce qui est grand), agrandir (rendre plus grand) et grandiloquent (qui parle de façon pompeuse, avec excès de grandeur) partagent tous le radical grand- et appartiennent à la même famille. Gronder vient d''un radical différent (grondement, bruit sourd) et n''a aucun lien avec grand. Granit est un mot d''emprunt (granite, roche) sans relation étymologique avec grand. Grange vient du latin granica (lieu pour le grain) et n''est pas non plus de la famille de grand.',
  'valide', 'CRPE Français — Lexique V2', 'free', true
)
;
