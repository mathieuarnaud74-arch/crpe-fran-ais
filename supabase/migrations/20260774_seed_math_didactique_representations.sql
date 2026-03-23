-- Seed: Représentations sémiotiques — Registres de Duval (7 exercices)
-- Subdomain: didactique_maths | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Difficile',
  'qcm',
  'Raymond Duval distingue plusieurs registres de représentation sémiotique en mathématiques. Parmi les propositions suivantes, laquelle énumère correctement quatre registres fondamentaux identifiés par Duval ?',
  NULL,
  '[{"id":"a","label":"Le registre symbolique (écriture algébrique, numérique), le registre graphique (courbes, diagrammes), le registre de la langue naturelle (énoncés verbaux) et le registre tabulaire (tableaux de valeurs)"},{"id":"b","label":"Le registre auditif, le registre olfactif, le registre tactile et le registre visuel"},{"id":"c","label":"Le registre primaire, le registre secondaire, le registre tertiaire et le registre quaternaire"},{"id":"d","label":"Le registre concret, le registre semi-concret, le registre semi-abstrait et le registre abstrait"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Raymond Duval, dans sa théorie des registres de représentation sémiotique, identifie que les objets mathématiques n''existent pas comme des objets physiques : on ne peut y accéder que par leurs représentations. Un même objet mathématique — par exemple, une fonction linéaire — peut être représenté dans plusieurs registres : (1) le registre symbolique : y = 2x ; (2) le registre graphique : une droite passant par l''origine ; (3) le registre de la langue naturelle : « le double de x » ; (4) le registre tabulaire : un tableau de correspondance x → y. Duval montre que la compréhension mathématique ne se réduit pas à la maîtrise d''un seul registre : elle exige la capacité de passer d''un registre à l''autre (conversion) et de transformer une représentation à l''intérieur d''un même registre (traitement). Par exemple, simplifier 4x/2 = 2x est un traitement dans le registre symbolique ; traduire y = 2x en un graphique est une conversion. Vergnaud complète cette approche en montrant que les représentations sont des outils au service des schèmes : l''élève utilise différentes représentations pour résoudre des problèmes dans un champ conceptuel donné. Éduscol insiste sur l''importance de confronter les élèves à des représentations variées dès le cycle 2.',
  'Croire qu''un seul registre de représentation suffit pour comprendre un concept mathématique. La compréhension implique la coordination entre plusieurs registres.',
  'valide',
  'Génération Claude — Terminologie Duval / Vergnaud / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Difficile',
  'vrai_faux',
  'Selon Duval, la « conversion » entre registres de représentation (par exemple, passer d''un tableau de valeurs à un graphique) est cognitivement plus coûteuse que le « traitement » au sein d''un même registre (par exemple, simplifier une expression algébrique). C''est pourquoi la conversion est souvent la source principale des difficultés des élèves en mathématiques.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Duval distingue deux types d''activités cognitives sur les représentations : le traitement et la conversion. Le traitement consiste à transformer une représentation à l''intérieur d''un même registre : par exemple, développer (x + 3)² = x² + 6x + 9 dans le registre symbolique, ou modifier l''échelle d''un graphique dans le registre graphique. La conversion consiste à passer d''un registre à un autre tout en conservant le même objet mathématique : traduire une équation en graphique, lire un tableau de valeurs pour écrire une formule, formuler en langage naturel ce que montre un diagramme. Duval montre que la conversion est cognitivement beaucoup plus exigeante que le traitement, car elle oblige l''élève à identifier les éléments signifiants dans le registre de départ et à les réorganiser selon les règles du registre d''arrivée. Par exemple, passer de y = -2x + 3 (symbolique) au graphique correspondant exige de comprendre que -2 détermine la pente et 3 l''ordonnée à l''origine — des informations qui ne sont pas « visibles » de la même manière dans les deux registres. Brousseau ajoute que ces conversions doivent être explicitement travaillées en classe car elles ne s''automatisent pas spontanément. Vergnaud montre que la difficulté de conversion varie selon les champs conceptuels.',
  'Croire que les élèves passent naturellement d''un registre à l''autre. La conversion est une compétence qui doit être enseignée et exercée explicitement.',
  'valide',
  'Génération Claude — Terminologie Duval / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Difficile',
  'qcm',
  'Un élève de CM2 sait calculer 3/4 de 20 = 15 (registre symbolique) mais ne parvient pas à représenter 3/4 sur un schéma (registre graphique/figuratif). Selon le cadre théorique de Duval, comment interpréter cette difficulté ?',
  NULL,
  '[{"id":"a","label":"L''élève maîtrise le traitement dans le registre symbolique mais ne maîtrise pas la conversion du registre symbolique vers le registre figuratif. Il n''a pas construit le lien entre l''écriture fractionnaire et sa signification géométrique (partie d''un tout)"},{"id":"b","label":"L''élève ne comprend pas du tout les fractions"},{"id":"c","label":"L''élève a un problème de motricité fine qui l''empêche de dessiner"},{"id":"d","label":"Cette difficulté est normale et ne nécessite aucune remédiation"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Ce cas illustre parfaitement la distinction de Duval entre traitement et conversion. L''élève est compétent dans le traitement au sein du registre symbolique : il sait appliquer la procédure de calcul 3/4 × 20 = 15. Mais il ne maîtrise pas la conversion vers le registre figuratif/graphique : il ne sait pas représenter 3/4 comme « 3 parts sur 4 parts égales d''un tout ». Cela révèle que l''élève manipule la fraction comme un algorithme de calcul sans en avoir construit la signification géométrique (partie d''un tout, point sur une droite graduée). Duval avertit que la maîtrise d''un seul registre crée une illusion de compréhension : l''élève « sait faire » sans « comprendre ». La remédiation consiste à travailler explicitement la conversion : partir de représentations figuratives (colorier 3 parts sur 4), les relier à l''écriture fractionnaire, et multiplier les allers-retours entre registres. Vergnaud montre que le champ conceptuel des fractions est particulièrement riche en représentations possibles (part d''un tout, quotient, opérateur, point sur une droite) et que chaque représentation éclaire un aspect différent du concept. Éduscol recommande de varier systématiquement les représentations des fractions dès le cycle 2.',
  'Se contenter de la réussite au calcul comme preuve de compréhension. Un élève peut calculer correctement avec des fractions sans comprendre ce qu''elles représentent.',
  'valide',
  'Génération Claude — Terminologie Duval / Vergnaud / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Difficile',
  'qcm',
  'Selon Duval, pourquoi l''utilisation de représentations multiples d''un même objet mathématique est-elle fondamentale pour l''apprentissage ? Quelle est la raison épistémologique profonde ?',
  NULL,
  '[{"id":"a","label":"Parce que les objets mathématiques sont abstraits et n''existent pas comme des objets physiques : on ne peut y accéder que par des représentations, et aucune représentation unique n''épuise le concept. Seule la coordination entre registres permet de distinguer l''objet mathématique de ses représentations"},{"id":"b","label":"Parce que les représentations multiples rendent les cours plus attrayants visuellement"},{"id":"c","label":"Parce que les programmes Éduscol l''imposent sans justification théorique"},{"id":"d","label":"Parce que certains élèves sont visuels et d''autres auditifs (théorie des styles d''apprentissage)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'C''est la thèse centrale de Duval, qu''il appelle le « paradoxe cognitif de la pensée mathématique » : les objets mathématiques (nombres, fonctions, figures, relations) ne sont pas des objets physiques que l''on peut montrer du doigt. On ne peut y accéder que par des représentations sémiotiques (symboles, graphiques, phrases, tableaux). Or, chaque représentation ne capture qu''un aspect du concept : l''écriture « 1/2 » met en avant la relation entre numérateur et dénominateur ; le schéma d''un disque coupé en deux met en avant l''idée de partage ; le point situé au milieu d''un segment met en avant l''idée de mesure. Aucune représentation ne « contient » tout le concept. Le risque est que l''élève confonde l''objet mathématique avec l''une de ses représentations (par exemple, croire que 1/2 n''est qu''un calcul, ou qu''une fraction n''est qu''une « part de gâteau »). Seule la coordination entre plusieurs registres permet à l''élève de comprendre que ces représentations différentes renvoient au même objet mathématique et d''en abstraire les propriétés essentielles. Brousseau complète cette idée en montrant que les situations didactiques doivent nécessiter le recours à plusieurs représentations pour faire émerger cette coordination. Vergnaud insiste sur le fait que les représentations sont des outils de pensée au sein des champs conceptuels.',
  'Justifier les représentations multiples par la théorie des styles d''apprentissage (visuel/auditif/kinesthésique), qui n''est pas validée scientifiquement. La raison est épistémologique, pas psychologique.',
  'valide',
  'Génération Claude — Terminologie Duval / Brousseau / Vergnaud',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Difficile',
  'reponse_courte',
  'Dans la théorie de Duval, on appelle « … » l''opération qui consiste à transformer une représentation à l''intérieur d''un même registre sémiotique (par exemple, réduire une expression algébrique ou changer l''échelle d''un graphique). Comment Duval nomme-t-il cette opération ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["traitement","Traitement","un traitement","le traitement"]}'::jsonb,
  'Duval distingue deux opérations fondamentales sur les représentations sémiotiques. Le traitement est une transformation interne à un registre : on reste dans le même registre mais on modifie la représentation. Exemples : dans le registre symbolique, développer (a + b)² = a² + 2ab + b², ou simplifier 6/8 = 3/4 ; dans le registre graphique, passer d''une échelle à une autre sur un diagramme ; dans le registre de la langue naturelle, reformuler un énoncé de problème. La conversion, en revanche, est le passage d''un registre à un autre : traduire une équation en graphique, mettre un tableau en mots, etc. Le traitement est généralement plus facile car il ne change pas le « langage » utilisé : l''élève reste dans un système de signes qu''il connaît. La conversion est plus difficile car elle exige de recoder l''information dans un système de signes différent. Cependant, Duval insiste sur le fait que le traitement n''est pas trivial : certains traitements sont très complexes (par exemple, la factorisation en algèbre) et nécessitent un apprentissage spécifique. Vergnaud montre que les traitements au sein d''un registre mobilisent des schèmes spécifiques qui se construisent dans la durée. Brousseau ajoute que la maîtrise des traitements est une condition nécessaire mais non suffisante de la compréhension mathématique.',
  'Confondre traitement et conversion. Le traitement reste dans un même registre ; la conversion change de registre. Les deux sont nécessaires mais n''ont pas le même coût cognitif.',
  'valide',
  'Génération Claude — Terminologie Duval / Vergnaud / Brousseau',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Difficile',
  'qcm',
  'Vous enseignez la proportionnalité en CM2 et souhaitez concevoir une activité qui mobilise explicitement plusieurs registres de représentation au sens de Duval. Laquelle de ces activités est la plus pertinente ?',
  NULL,
  '[{"id":"a","label":"Donner uniquement des exercices de calcul du coefficient de proportionnalité (registre symbolique seul)"},{"id":"b","label":"Proposer un problème de recette de cuisine : les élèves remplissent un tableau de proportionnalité (registre tabulaire), formulent en mots la règle trouvée (registre verbal), écrivent la relation mathématique (registre symbolique) et tracent le graphique correspondant (registre graphique)"},{"id":"c","label":"Faire apprendre par cœur la définition de la proportionnalité (registre verbal seul)"},{"id":"d","label":"Projeter un graphique et demander aux élèves de le recopier sans l''analyser"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Cette activité est un exemple modèle de mise en œuvre de la théorie de Duval en classe. En partant d''un contexte concret (recette de cuisine), elle fait circuler les élèves entre quatre registres de représentation : (1) le registre tabulaire — les élèves organisent les données dans un tableau de proportionnalité (ingrédients / quantités pour 4, 8, 12 personnes) ; (2) le registre de la langue naturelle — ils formulent la règle (« quand on double le nombre de personnes, on double les quantités ») ; (3) le registre symbolique — ils écrivent la relation (y = kx, ou « quantité = coefficient × nombre de personnes ») ; (4) le registre graphique — ils tracent la droite passant par l''origine. Les conversions entre registres sont explicitement travaillées : du tableau vers le graphique, du graphique vers la formule, de la formule vers les mots. Duval insiste sur le fait que c''est la multiplicité des passages qui construit la compréhension du concept de proportionnalité, et non la maîtrise isolée d''un seul registre. Vergnaud montre que la proportionnalité appartient au champ conceptuel des structures multiplicatives et que les représentations multiples aident à différencier proportionnalité et non-proportionnalité. Éduscol recommande explicitement de varier les registres dans l''enseignement de la proportionnalité.',
  'Travailler la proportionnalité dans un seul registre (souvent le registre symbolique ou tabulaire). Les élèves appliquent alors des procédures mécaniques sans comprendre le concept sous-jacent.',
  'valide',
  'Génération Claude — Terminologie Duval / Vergnaud / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc0f0000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_representations',
  'Représentations sémiotiques — Registres de Duval', 'Difficile',
  'reponse_courte',
  'Un élève de CM1 résout correctement le problème « 3 cahiers coûtent 6 €, combien coûtent 9 cahiers ? » en posant 6 ÷ 3 = 2, puis 2 × 9 = 18 €. Cependant, quand vous lui demandez de représenter la situation par un schéma (par exemple, un tableau ou un diagramme en barres), il est incapable de le faire. En vous appuyant sur la théorie de Duval, identifiez en une phrase le type d''opération cognitive que cet élève ne maîtrise pas.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["La conversion du registre symbolique vers le registre graphique/figuratif","la conversion entre registres","conversion entre registres de représentation","la conversion du symbolique vers le graphique","l''opération de conversion","conversion","la conversion au sens de Duval","La conversion"]}'::jsonb,
  'Cet élève illustre une situation fréquente analysée par Duval : la maîtrise du traitement dans un registre (ici, le registre symbolique — il calcule correctement) sans maîtrise de la conversion vers un autre registre (ici, le registre graphique/figuratif — il ne peut pas schématiser). L''opération manquante est la conversion au sens de Duval : le passage d''un registre de représentation à un autre tout en conservant le même objet mathématique. L''élève sait que 6 ÷ 3 = 2 € par cahier, mais ne parvient pas à traduire cette information en schéma (un tableau de proportionnalité, un diagramme en barres, ou un schéma montrant les groupes de cahiers et leurs prix). Cette incapacité de conversion est un signal d''alerte : l''élève a peut-être automatisé une procédure (chercher le prix unitaire puis multiplier) sans comprendre la structure de la situation proportionnelle. La remédiation, selon Duval, consiste à travailler explicitement les conversions : donner des schémas et demander d''écrire le calcul (graphique → symbolique), donner des calculs et demander de les représenter (symbolique → graphique), etc. Vergnaud ajoute que la capacité à naviguer entre représentations est un indicateur de la robustesse des schèmes construits par l''élève dans le champ conceptuel des structures multiplicatives.',
  'Considérer que la réussite au calcul suffit pour valider la compréhension. Selon Duval, la compréhension se manifeste par la capacité de conversion entre registres, pas par la seule maîtrise procédurale.',
  'valide',
  'Génération Claude — Terminologie Duval / Vergnaud / Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
