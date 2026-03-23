-- Seed: Symétrie axiale — Propriétés et constructions (7 exercices)
-- Subdomain: geometrie | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000001',
  'Mathematiques', 'geometrie', 'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions', 'Facile',
  'qcm',
  'Quelle est la définition correcte de la symétrie axiale par rapport à une droite (d) ?',
  NULL,
  '[{"id":"a","label":"La symétrie axiale par rapport à (d) est la transformation qui, à tout point M, associe le point M'' tel que (d) est la médiatrice du segment [MM'']"},{"id":"b","label":"La symétrie axiale par rapport à (d) est la transformation qui déplace tous les points d''une même distance vers la droite"},{"id":"c","label":"La symétrie axiale par rapport à (d) est une rotation de 180° autour du centre de la droite"},{"id":"d","label":"La symétrie axiale par rapport à (d) est la transformation qui agrandit une figure de l''autre côté de la droite"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La symétrie axiale (ou réflexion) par rapport à une droite (d) est la transformation géométrique qui, à tout point M du plan, associe le point M'' tel que la droite (d) est la médiatrice du segment [MM'']. Cela signifie deux choses : (1) la droite (d) est perpendiculaire au segment [MM''] ; (2) la droite (d) passe par le milieu du segment [MM'']. Si M appartient à la droite (d), alors M'' = M (le point est son propre image). Cette définition est fondamentale car elle permet de construire l''image de n''importe quel point : on trace la perpendiculaire à (d) passant par M, on mesure la distance de M à (d), et on reporte cette distance de l''autre côté. Les programmes Éduscol introduisent la symétrie axiale dès le cycle 2 par le pliage, avant de formaliser la définition au cycle 3.',
  'Confondre symétrie axiale et translation (la symétrie ne « déplace » pas les points dans une direction, elle les « retourne » de l''autre côté de l''axe).',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000002',
  'Mathematiques', 'geometrie', 'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions', 'Facile',
  'vrai_faux',
  'Le point A a pour coordonnées (3 ; 5) dans un repère orthonormé. Son image A'' par la symétrie axiale par rapport à l''axe des ordonnées (axe vertical) a pour coordonnées (−3 ; 5).',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est exact. La symétrie par rapport à l''axe des ordonnées (droite d''équation x = 0) transforme le point (x ; y) en (−x ; y) : l''abscisse change de signe, l''ordonnée reste inchangée. Ainsi A(3 ; 5) devient A''(−3 ; 5). Vérification : le milieu de [AA''] est ((3 + (−3))/2 ; (5 + 5)/2) = (0 ; 5), qui est bien sur l''axe des ordonnées. Le segment [AA''] est horizontal (y constant = 5), donc perpendiculaire à l''axe des ordonnées (vertical). Les deux conditions de la définition sont vérifiées. De même, la symétrie par rapport à l''axe des abscisses transforme (x ; y) en (x ; −y). Ces deux cas particuliers sont des incontournables du CRPE et doivent être parfaitement maîtrisés.',
  'Changer le signe de l''ordonnée au lieu de l''abscisse (confusion entre symétrie par rapport à l''axe des abscisses et symétrie par rapport à l''axe des ordonnées).',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000003',
  'Mathematiques', 'geometrie', 'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions', 'Facile',
  'qcm',
  'Parmi les figures suivantes, laquelle possède exactement un seul axe de symétrie ?',
  NULL,
  '[{"id":"a","label":"Le carré"},{"id":"b","label":"Le triangle isocèle (non équilatéral)"},{"id":"c","label":"Le cercle"},{"id":"d","label":"Le rectangle (non carré)"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le triangle isocèle (non équilatéral) possède exactement un axe de symétrie : la médiatrice de sa base, qui est aussi la médiane, la hauteur et la bissectrice issues du sommet principal. Le carré possède 4 axes de symétrie (2 médianes des côtés et 2 diagonales). Le rectangle non carré possède 2 axes de symétrie (les 2 médianes des côtés, mais pas les diagonales). Le cercle possède une infinité d''axes de symétrie (tout diamètre est un axe). Récapitulatif des axes de symétrie des figures usuelles : triangle équilatéral → 3 axes ; triangle isocèle → 1 axe ; triangle scalène → 0 axe ; losange non carré → 2 axes (les diagonales) ; parallélogramme non rectangle ni losange → 0 axe ; trapèze isocèle → 1 axe. La connaissance de ces propriétés est un attendu explicite des programmes Éduscol.',
  'Croire que le rectangle a 4 axes de symétrie comme le carré. Les diagonales du rectangle ne sont pas des axes de symétrie (sauf si c''est un carré).',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000004',
  'Mathematiques', 'geometrie', 'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions', 'Facile',
  'reponse_courte',
  'Combien d''axes de symétrie possède un triangle équilatéral ? Et un carré ? Donnez la somme de ces deux nombres.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7","sept","3 + 4 = 7"]}'::jsonb,
  'Le triangle équilatéral possède 3 axes de symétrie : chaque axe passe par un sommet et par le milieu du côté opposé (ce sont à la fois les médianes, les hauteurs, les médiatrices et les bissectrices du triangle). Le carré possède 4 axes de symétrie : les 2 médianes des côtés (axes horizontaux et verticaux passant par les milieux des côtés opposés) et les 2 diagonales. La somme est donc 3 + 4 = 7. Plus généralement, un polygone régulier à n côtés possède n axes de symétrie : si n est impair, chaque axe passe par un sommet et le milieu du côté opposé ; si n est pair, n/2 axes passent par deux sommets opposés et n/2 axes passent par les milieux de deux côtés opposés. Le cercle, quant à lui, possède une infinité d''axes de symétrie (tout diamètre).',
  'Croire que le carré n''a que 2 axes de symétrie (oublier les diagonales) ou au contraire qu''il en a 8 (compter chaque demi-diagonale séparément).',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000005',
  'Mathematiques', 'geometrie', 'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions', 'Facile',
  'qcm',
  'La symétrie axiale conserve certaines propriétés géométriques. Parmi les propositions suivantes, laquelle est FAUSSE ?',
  NULL,
  '[{"id":"a","label":"La symétrie axiale conserve les longueurs : l''image d''un segment a la même longueur que le segment original"},{"id":"b","label":"La symétrie axiale conserve les angles : l''image d''un angle a la même mesure que l''angle original"},{"id":"c","label":"La symétrie axiale conserve l''alignement : si trois points sont alignés, leurs images sont alignées"},{"id":"d","label":"La symétrie axiale conserve l''orientation : si on parcourt un triangle dans le sens horaire, son image se parcourt aussi dans le sens horaire"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'La symétrie axiale est une isométrie (elle conserve les distances) mais elle inverse l''orientation. Si on parcourt un triangle ABC dans le sens horaire, son image A''B''C'' se parcourt dans le sens anti-horaire (et vice versa). C''est comme regarder un objet dans un miroir : le texte apparaît inversé, la main droite devient la main gauche. Les propriétés conservées par la symétrie axiale sont : les longueurs (AB = A''B''), les angles (l''angle en A = l''angle en A''), l''alignement (si A, B, C sont alignés, A'', B'', C'' le sont aussi), le parallélisme, la perpendicularité, et les aires. La propriété NON conservée est l''orientation (le sens de parcours). C''est ce qui distingue la symétrie axiale (qui inverse l''orientation) de la translation et de la rotation (qui conservent l''orientation). Au CRPE, cette distinction est souvent testée.',
  'Croire que la symétrie axiale conserve l''orientation. Elle l''inverse, comme un miroir. C''est la différence fondamentale avec les translations et les rotations.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000006',
  'Mathematiques', 'geometrie', 'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions', 'Facile',
  'qcm',
  'Pour construire le symétrique d''un point M par rapport à une droite (d) à l''aide d''un compas et d''une règle (sans utiliser de mesures), quelle est la méthode correcte ?',
  NULL,
  '[{"id":"a","label":"Tracer un cercle de centre M qui coupe (d) en deux points A et B, puis tracer deux arcs de cercle de même rayon centrés en A et en B : leur intersection de l''autre côté de (d) donne le point M''"},{"id":"b","label":"Mesurer la distance de M à (d) avec une règle graduée, puis reporter cette distance de l''autre côté"},{"id":"c","label":"Tracer une parallèle à (d) passant par M, puis prendre un point quelconque de l''autre côté"},{"id":"d","label":"Plier la feuille le long de (d) et piquer à travers le papier"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La méthode au compas est la suivante : (1) Tracer un arc de cercle centré en M, de rayon suffisamment grand pour couper la droite (d) en deux points A et B. (2) Sans changer l''ouverture du compas (ou avec une ouverture suffisante), tracer un arc de cercle centré en A et un arc centré en B, de même rayon. (3) L''intersection de ces deux arcs située de l''autre côté de (d) par rapport à M est le point M''. Cette construction fonctionne car elle utilise la propriété de la médiatrice : M'' est à égale distance de A et de B (par construction des arcs), et M est aussi à égale distance de A et de B (le cercle initial coupe (d) en A et B). Donc M et M'' sont tous deux sur la médiatrice de [AB], qui est perpendiculaire à (d). La droite (d) est la médiatrice de [MM''], ce qui correspond bien à la définition de la symétrie axiale. La méthode (b) utilise des mesures (non exigées dans une construction au compas) et la méthode (d), bien que pédagogiquement utile au cycle 2, n''est pas une construction géométrique rigoureuse.',
  'Tracer la perpendiculaire à (d) passant par M « à l''œil », sans utiliser le compas pour garantir la perpendicularité. La construction au compas assure la rigueur géométrique.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9110000-0000-0000-0000-000000000007',
  'Mathematiques', 'geometrie', 'math_symetrie_axiale',
  'Symétrie axiale — Propriétés et constructions', 'Facile',
  'vrai_faux',
  'En classe de CE2, une enseignante demande à ses élèves de plier une feuille en deux le long d''un trait, puis de découper une forme d''un côté. En dépliant, les élèves obtiennent une figure symétrique par rapport au pli. Cette activité permet de vérifier concrètement que les deux parties de la figure se superposent exactement.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Le pliage est l''approche concrète fondamentale de la symétrie axiale, recommandée par Éduscol dès le cycle 2. Quand on plie une feuille le long d''un axe et qu''on découpe une forme, la figure obtenue en dépliant est symétrique par rapport au pli. La superposition exacte des deux moitiés constitue une vérification expérimentale de la symétrie : si on replie la feuille, les deux parties coïncident parfaitement. Cette manipulation permet à l''élève de construire intuitivement plusieurs propriétés : la conservation des longueurs (les deux moitiés ont les mêmes dimensions), la conservation des angles (les formes sont identiques), la perpendicularité de l''axe par rapport au segment joignant un point et son image (le pli est perpendiculaire à la direction de « basculement »). Le pliage prépare la formalisation ultérieure : au cycle 3, on passe du pliage (vérification) à la construction au compas et à la règle (construction). Brousseau parle de situation d''action : l''élève agit sur le matériel (plie, découpe) et observe le résultat, ce qui lui permet de construire le concept de symétrie avant sa formalisation.',
  'Considérer le pliage comme une activité uniquement récréative. C''est un véritable outil mathématique qui permet de valider la symétrie par superposition et de construire le concept progressivement.',
  'valide',
  'Génération Claude — Programmes cycle 2-3 / Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
