-- ============================================================
-- Migration : Sujet blanc CRPE n°1 (15 exercices cross-domaines)
-- UUID prefix : d601
-- Simule une épreuve écrite de français du CRPE
-- ============================================================

-- Q1 — grammaire — Facile — qcm — Identifier la nature d''un mot dans une phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Facile',
  'qcm',
  'Dans la phrase « Les enfants jouaient tranquillement dans la cour », quelle est la classe grammaticale du mot « tranquillement » ?',
  NULL,
  '[{"id":"a","label":"Adjectif qualificatif"},{"id":"b","label":"Adverbe de manière"},{"id":"c","label":"Complément du nom"},{"id":"d","label":"Préposition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le mot « tranquillement » est un adverbe de manière, formé sur l''adjectif « tranquille » auquel on a ajouté le suffixe « -ment ». En grammaire, l''adverbe est un mot invariable qui modifie le sens du verbe (ici « jouaient »), d''un adjectif ou d''un autre adverbe. Les programmes d''Éduscol précisent qu''au cycle 3, les élèves doivent être capables d''identifier les classes grammaticales courantes, dont les adverbes. La formation des adverbes en « -ment » est un point de morphologie dérivationnelle essentiel.',
  'Beaucoup de candidats confondent adverbe et adjectif qualificatif. Ici, « tranquillement » modifie le verbe « jouaient » et ne s''accorde avec aucun nom : c''est bien un adverbe, pas un adjectif.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — orthographe — Facile — vrai_faux — Accord du participe passé avec être
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Les filles sont arrivées en retard », le participe passé « arrivées » s''accorde avec le sujet car l''auxiliaire est « être ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Lorsqu''un verbe est conjugué avec l''auxiliaire « être », le participe passé s''accorde en genre et en nombre avec le sujet. Ici, le sujet « les filles » est féminin pluriel, donc le participe passé prend la marque « -ées ». Cette règle fondamentale distingue l''emploi de « être » de celui d''« avoir », où l''accord dépend de la position du complément d''objet direct. Les programmes de cycle 3 placent la maîtrise de l''accord du participe passé avec « être » parmi les attendus de fin de cycle.',
  'L''erreur fréquente est de confondre cette règle avec celle du participe passé employé avec « avoir », qui ne s''accorde pas avec le sujet mais avec le COD antéposé.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — conjugaison — Facile — qcm — Identifier un temps verbal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Facile',
  'qcm',
  'Dans la phrase « Nous aurions aimé partir plus tôt », à quel temps et mode est conjugué le verbe « aimer » ?',
  NULL,
  '[{"id":"a","label":"Plus-que-parfait de l''indicatif"},{"id":"b","label":"Passé du conditionnel"},{"id":"c","label":"Passé antérieur de l''indicatif"},{"id":"d","label":"Passé du subjonctif"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La forme « aurions aimé » est le passé du conditionnel (aussi appelé conditionnel passé première forme). Il se construit avec l''auxiliaire « avoir » au conditionnel présent (aurions) suivi du participe passé (aimé). Ce temps exprime une action irréelle dans le passé ou un regret. Il ne faut pas le confondre avec le plus-que-parfait (avions aimé) ni avec le passé antérieur (eûmes aimé). La terminologie officielle des programmes d''Éduscol 2021 retient l''appellation « conditionnel passé ».',
  'Les candidats confondent souvent le passé du conditionnel avec le plus-que-parfait de l''indicatif. La clé est de reconnaître la forme de l''auxiliaire : « aurions » relève du conditionnel présent, pas de l''imparfait.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — lexique — Facile — vrai_faux — Synonymie et nuances de sens
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Les mots « maison », « demeure » et « masure » sont des synonymes parfaits, car ils désignent tous un lieu d''habitation.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Bien que ces trois mots désignent un lieu d''habitation, ils ne sont pas des synonymes parfaits. La synonymie parfaite (interchangeabilité dans tous les contextes) est extrêmement rare en français. « Maison » est un terme générique, « demeure » connote un lieu plus vaste et prestigieux, tandis que « masure » désigne une habitation en mauvais état. On parle de synonymes partiels ou de parasynonymes. En didactique du lexique (Éduscol, cycle 3), on enseigne aux élèves à percevoir ces nuances de sens pour enrichir leur vocabulaire et affiner leur expression.',
  'L''erreur courante est de considérer que des mots appartenant au même champ sémantique sont forcément des synonymes parfaits. La plupart des synonymes en français sont partiels et comportent des nuances de registre, d''intensité ou de connotation.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — comprehension_texte — Intermediaire — qcm — Identifier le type de texte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Intermediaire',
  'qcm',
  'Un texte qui présente des arguments pour convaincre le lecteur d''adopter un point de vue, en utilisant des connecteurs logiques (certes, néanmoins, en revanche) et des modalisateurs, relève du type :',
  NULL,
  '[{"id":"a","label":"Narratif"},{"id":"b","label":"Descriptif"},{"id":"c","label":"Argumentatif"},{"id":"d","label":"Explicatif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Ce texte relève du type argumentatif. Les indices textuels sont convergents : la visée persuasive (convaincre le lecteur), l''usage de connecteurs logiques d''opposition et de concession (certes, néanmoins, en revanche) et la présence de modalisateurs qui expriment le degré de certitude de l''énonciateur. Le type argumentatif se distingue du type explicatif, qui vise à faire comprendre sans chercher à convaincre. Les programmes d''Éduscol insistent sur la capacité des élèves de cycle 3 à identifier l''intention de communication d''un texte.',
  'Les candidats confondent fréquemment texte argumentatif et texte explicatif. La clé est la visée : l''argumentatif cherche à convaincre, l''explicatif cherche à faire comprendre un phénomène de manière neutre.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — grammaire — Intermediaire — reponse_courte — Identifier la fonction d''un groupe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Intermediaire',
  'reponse_courte',
  'Dans la phrase « Le chat de la voisine dort sur le canapé », quelle est la fonction grammaticale du groupe « de la voisine » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["complément du nom","complement du nom","CDN","cdn"]}'::jsonb,
  'Le groupe « de la voisine » est un complément du nom. Il complète le nom « chat » en apportant une précision sur son possesseur. Le complément du nom est un groupe prépositionnel (introduit ici par la préposition « de ») qui fait partie du groupe nominal et ne peut être déplacé librement dans la phrase. Il se distingue du complément circonstanciel, qui est mobile et supprimable. Les programmes d''Éduscol de 2021 prévoient l''identification du complément du nom comme compétence attendue en fin de cycle 3.',
  'L''erreur la plus fréquente est de confondre le complément du nom avec un complément circonstanciel de lieu ou un COI. Le test de suppression aide : « de la voisine » ne peut être supprimé sans altérer le sens du GN.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — analyse_langue — Intermediaire — vrai_faux — Valeur aspectuelle du présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « La Terre tourne autour du Soleil », le présent de l''indicatif a une valeur de vérité générale.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le présent de l''indicatif possède plusieurs valeurs aspectuelles et temporelles. Ici, il exprime une vérité générale (ou présent gnomique) : le fait énoncé est valable en tout temps et ne dépend pas du moment de l''énonciation. On retrouve cette valeur dans les proverbes, les définitions scientifiques et les maximes. Les autres valeurs du présent incluent le présent d''énonciation, le présent d''habitude, le présent de narration et le présent à valeur de futur proche. L''identification des valeurs du présent est un savoir linguistique attendu au CRPE.',
  'Les candidats confondent souvent le présent de vérité générale avec le présent d''habitude. La différence tient au caractère universel et intemporel de la vérité générale, tandis que l''habitude est liée à un sujet particulier.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — didactique_francais — Intermediaire — qcm — Démarche d''enseignement de la lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Intermediaire',
  'qcm',
  'En cycle 2, dans le cadre de l''enseignement explicite de la compréhension en lecture, quelle stratégie les programmes d''Éduscol recommandent-ils de travailler en priorité avec les élèves ?',
  NULL,
  '[{"id":"a","label":"La lecture à voix haute rapide pour automatiser le déchiffrage"},{"id":"b","label":"L''enseignement explicite de stratégies de compréhension (inférer, résumer, visualiser, clarifier)"},{"id":"c","label":"La copie intégrale du texte pour mémoriser l''orthographe"},{"id":"d","label":"La lecture silencieuse individuelle sans étayage de l''enseignant"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les programmes d''Éduscol recommandent l''enseignement explicite de stratégies de compréhension dès le cycle 2. Les recherches en didactique de la lecture (Cèbe & Goigoux, « Lectorino & Lectorinette ») montrent que les élèves doivent apprendre à inférer, résumer, visualiser mentalement et clarifier le vocabulaire inconnu. L''enseignement explicite consiste à nommer la stratégie, la modéliser, puis la faire pratiquer de manière guidée avant de laisser les élèves l''utiliser de façon autonome. La lecture à voix haute et le déchiffrage sont importants mais ne suffisent pas à garantir la compréhension.',
  'L''erreur fréquente au CRPE est de réduire l''enseignement de la lecture au seul déchiffrage ou à la fluence. La compréhension nécessite un enseignement explicite spécifique, distinct de l''entraînement au décodage.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — orthographe — Intermediaire — reponse_courte — Homophones grammaticaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Intermediaire',
  'reponse_courte',
  'Complétez la phrase avec l''homophone correct : « Il faut que chaque élève ___ son cahier avant de sortir. » (est / ait / ai / aie)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["ait"]}'::jsonb,
  'La forme correcte est « ait ». La conjonction « que » introduit ici une proposition subordonnée complétive dont le verbe doit être conjugué au subjonctif présent, imposé par la tournure impersonnelle « il faut que ». Le verbe « avoir » au subjonctif présent, 3e personne du singulier, donne « ait ». Il ne faut pas confondre avec « est » (être, indicatif présent), « ai » (avoir, indicatif présent, 1re personne) ou « aie » (avoir, subjonctif présent, 1re ou 2e personne). La maîtrise des homophones grammaticaux est un attendu fondamental des programmes de cycle 3 selon Éduscol.',
  'La confusion entre « est » (être) et « ait » (avoir au subjonctif) est très fréquente chez les candidats. Le test de substitution par « avait » confirme qu''il s''agit du verbe « avoir » et non d''« être ».',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — conjugaison — Intermediaire — vrai_faux — Concordance des temps
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans un récit au passé, lorsque le verbe de la proposition principale est à l''imparfait, le verbe de la subordonnée exprimant l''antériorité doit être au plus-que-parfait.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La concordance des temps dans un système du passé impose que l''antériorité par rapport à l''imparfait soit exprimée par le plus-que-parfait. Par exemple : « Il savait (imparfait) qu''elle était partie (plus-que-parfait) ». Le plus-que-parfait marque une action achevée avant le repère temporel passé de la principale. Cette règle de concordance est un savoir linguistique essentiel pour l''épreuve du CRPE et un point d''enseignement explicite au cycle 3 selon les programmes d''Éduscol 2021.',
  'L''erreur fréquente est de placer un passé composé au lieu du plus-que-parfait dans la subordonnée, ce qui rompt la concordance des temps dans le système du passé.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q11 — grammaire — Difficile — reponse_courte — Analyse de phrase complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000b',
  'Francais',
  'grammaire',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Le livre que tu m''as prêté est passionnant », identifiez la nature de la proposition « que tu m''as prêté ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["proposition subordonnée relative","subordonnée relative","relative"]}'::jsonb,
  'La proposition « que tu m''as prêté » est une proposition subordonnée relative. Elle est introduite par le pronom relatif « que », qui reprend l''antécédent « le livre » et occupe la fonction de complément d''objet direct du verbe « as prêté » à l''intérieur de la subordonnée. La proposition relative tout entière a pour fonction de compléter le nom « livre » : elle est expansion du nom au sein du groupe nominal sujet. La distinction entre relatives déterminatives (restrictives) et explicatives (appositives) est un savoir approfondi attendu au CRPE.',
  'Les candidats confondent souvent la proposition subordonnée relative avec la proposition subordonnée conjonctive complétive. La clé est le mot introducteur : « que » pronom relatif a un antécédent nominal, tandis que « que » conjonction de subordination n''en a pas.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q12 — lexique — Difficile — qcm — Polysémie et contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000c',
  'Francais',
  'lexique',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Difficile',
  'qcm',
  'Dans la phrase « L''avocat a plaidé brillamment pour la défense de son client », quel phénomène lexical explique que le mot « avocat » puisse désigner à la fois un fruit et un professionnel du droit ?',
  NULL,
  '[{"id":"a","label":"L''homonymie : deux mots d''origines différentes ayant la même forme"},{"id":"b","label":"La polysémie : un seul mot ayant développé plusieurs sens par extension"},{"id":"c","label":"La synonymie : deux mots de sens identique"},{"id":"d","label":"L''antonymie : deux mots de sens contraire"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le mot « avocat » (professionnel du droit) vient du latin advocatus, tandis que « avocat » (fruit) vient du nahuatl ahuacatl via l''espagnol aguacate. Il s''agit donc d''homonymie et non de polysémie : ce sont deux mots d''origines étymologiques distinctes qui ont convergé vers la même forme graphique et phonique. La polysémie, en revanche, concerne un seul mot qui a développé plusieurs sens au fil du temps (ex. : « feuille » de papier / « feuille » d''arbre). Cette distinction homonymie/polysémie est un savoir linguistique fréquemment évalué au CRPE.',
  'L''erreur la plus courante est de confondre homonymie et polysémie. Le critère distinctif est l''étymologie : les homonymes ont des origines différentes, tandis que les sens d''un mot polysémique dérivent d''un étymon commun.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q13 — comprehension_texte — Difficile — reponse_courte — Identifier un procédé d''écriture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000d',
  'Francais',
  'comprehension_texte',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Difficile',
  'reponse_courte',
  'Dans l''extrait « Le vent hurlait à travers les branches et la pluie martelait les carreaux comme un tambour furieux », identifiez la figure de style principale utilisée pour décrire le vent.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["personnification","la personnification","une personnification"]}'::jsonb,
  'La figure de style principale est la personnification : le vent « hurlait », c''est-à-dire qu''on lui attribue une action humaine (hurler). La personnification consiste à attribuer des caractéristiques humaines (actions, sentiments, paroles) à un élément non humain (animal, objet, phénomène naturel). On note aussi une comparaison (« comme un tambour furieux ») pour la pluie, mais la question porte sur le vent. L''identification des figures de style fait partie des compétences d''analyse littéraire attendues au CRPE et enseignées explicitement au cycle 3.',
  'Les candidats identifient parfois une métaphore au lieu d''une personnification. La personnification est un cas particulier de métaphore où le comparé non humain reçoit des attributs spécifiquement humains. L''autre piège est de répondre « comparaison », qui concerne ici la pluie et non le vent.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q14 — analyse_langue — Difficile — vrai_faux — Distinction discours direct et indirect
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000e',
  'Francais',
  'analyse_langue',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Lors du passage du discours direct au discours indirect, la phrase « Marie dit : "Je viendrai demain" » devient « Marie dit qu''elle viendra demain », sans modification du temps verbal car le verbe introducteur est au présent.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Lorsque le verbe introducteur est au présent (« dit »), le passage au discours indirect ne nécessite pas de transposition temporelle : le futur simple « viendrai » reste au futur simple « viendra ». En revanche, les modifications obligatoires portent sur les pronoms personnels (« je » devient « elle ») et les éventuels déictiques. Si le verbe introducteur avait été au passé (« Marie a dit »), le futur simple se serait transposé en conditionnel présent (« viendrait »). Cette règle de concordance des temps dans le discours rapporté est un point linguistique central du CRPE.',
  'L''erreur courante est de croire qu''il faut systématiquement modifier les temps verbaux lors du passage au discours indirect. Or, cette transposition temporelle n''intervient que lorsque le verbe introducteur est au passé.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q15 — didactique_francais — Difficile — qcm — Différenciation pédagogique en production d''écrit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd6010000-0000-0000-0000-00000000000f',
  'Francais',
  'didactique_francais',
  'sujet_blanc_crpe_1',
  'Sujet blanc CRPE n°1',
  'Difficile',
  'qcm',
  'Un enseignant de cycle 3 souhaite mettre en place un dispositif de révision-amélioration des écrits. Selon les recommandations d''Éduscol, quelle démarche est la plus pertinente pour enseigner la production d''écrits de manière efficace ?',
  NULL,
  '[{"id":"a","label":"Faire écrire un jet unique sans retour, puis corriger intégralement les copies"},{"id":"b","label":"Mettre en œuvre un processus rédactionnel en plusieurs jets (planification, mise en texte, révision) avec des critères de réussite explicites"},{"id":"c","label":"Dicter le texte aux élèves en difficulté pour qu''ils puissent produire un écrit correct"},{"id":"d","label":"Faire copier un texte modèle pour automatiser les structures syntaxiques"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les recommandations d''Éduscol pour l''enseignement de la production d''écrits au cycle 3 s''appuient sur le modèle du processus rédactionnel (Hayes & Flower) : planification, mise en texte et révision. L''élève doit apprendre à considérer l''écriture comme un processus itératif, avec plusieurs jets successifs guidés par des critères de réussite explicites (grille de relecture, consignes ciblées). La révision-amélioration implique que l''élève soit acteur de la réécriture, avec l''étayage de l''enseignant. Cette démarche développe la posture d''auteur et les compétences métacognitives indispensables à la maîtrise de l''écrit.',
  'L''erreur au CRPE est de proposer des dispositifs où l''élève n''est pas acteur de la révision (correction magistrale intégrale, dictée à l''adulte systématique en cycle 3, copie de modèles). Ces approches ne développent pas les compétences rédactionnelles autonomes visées par les programmes.',
  'valide',
  'CRPE Français — Sujet blanc',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
