-- Remplacement des questions hors programme CRPE :
-- 1) math_probabilites_composees Q6 (Bayes → tableau double entrée)
-- 2) math_probabilites_arbres Q7 (Bayes → arbre simple 2 niveaux)
-- 3) math_combinatoire_denombrement Q3-Q7 (C(n,k), factorielles → dénombrement CRPE)

-- =============================================
-- Probabilités composées — Q6 (remplace Bayes)
-- =============================================
UPDATE public.exercises SET
  instruction = 'Dans une classe de 30 élèves, la répartition est la suivante : 10 filles demi-pensionnaires, 4 filles externes, 12 garçons demi-pensionnaires et 4 garçons externes. On choisit un élève au hasard. Quelle est la probabilité que ce soit une fille demi-pensionnaire ? Donner le résultat sous forme de fraction irréductible.',
  support_text = NULL,
  choices = NULL,
  expected_answer = '{"mode":"text","acceptableAnswers":["1/3"]}'::jsonb,
  detailed_explanation = 'On compte 10 filles demi-pensionnaires sur un total de 30 élèves. La probabilité est donc 10/30. On simplifie par 10 (PGCD de 10 et 30) : 10 ÷ 10 = 1 et 30 ÷ 10 = 3. La probabilité est 1/3.',
  common_mistake = 'Oublier de simplifier la fraction (laisser 10/30) ou confondre le nombre de filles demi-pensionnaires avec le nombre total de filles (14).',
  validation_status = 'valide'
WHERE id = 'b00d0000-0000-0000-0000-000000000006';

-- =============================================
-- Probabilités arbres — Q7 (remplace Bayes)
-- =============================================
UPDATE public.exercises SET
  instruction = 'Une urne contient 3 boules rouges et 2 boules bleues. On tire une boule au hasard, puis on lance un dé équilibré à 6 faces. Quelle est la probabilité de tirer une boule rouge ET d''obtenir un 6 ?',
  support_text = NULL,
  choices = '[{"id":"a","label":"1/10"},{"id":"b","label":"1/5"},{"id":"c","label":"3/11"},{"id":"d","label":"1/3"}]'::jsonb,
  expected_answer = '{"mode":"single","value":"a"}'::jsonb,
  detailed_explanation = 'On construit un arbre à deux niveaux. Au premier niveau, on tire une boule : P(rouge) = 3/5. Au second niveau, on lance le dé : P(obtenir 6) = 1/6. Les deux expériences sont indépendantes, donc on multiplie les probabilités le long de la branche : P(rouge ET 6) = 3/5 × 1/6 = 3/30 = 1/10.',
  common_mistake = 'Additionner les probabilités au lieu de les multiplier, ou oublier de simplifier 3/30 en 1/10.',
  validation_status = 'valide'
WHERE id = 'fb0a0000-0000-0000-0000-000000000007';

-- =============================================
-- Combinatoire Q3-Q7 (remplace C(n,k), etc.)
-- =============================================

-- Q3 — Consolidation — Codes à 3 chiffres différents (principe multiplicatif avec contrainte de non-répétition)
UPDATE public.exercises SET
  instruction = 'Avec les chiffres 1, 2, 3 et 4, combien de codes à 3 chiffres tous différents peut-on former ?',
  support_text = 'On ne peut pas utiliser deux fois le même chiffre dans un même code.',
  choices = NULL,
  expected_answer = '{"mode":"text","acceptableAnswers":["24","4 × 3 × 2 = 24","4×3×2=24"]}'::jsonb,
  detailed_explanation = 'On applique le principe multiplicatif en tenant compte de la contrainte « chiffres tous différents ». Pour le 1ᵉʳ chiffre du code, on dispose de 4 choix (1, 2, 3 ou 4). Une fois ce chiffre choisi, il reste 3 chiffres disponibles pour la 2ᵉ position. Puis il reste 2 chiffres pour la 3ᵉ position. Le nombre total de codes est donc : 4 × 3 × 2 = 24. On peut vérifier par un arbre de choix : au 1ᵉʳ niveau, 4 branches ; chaque branche se divise en 3 au 2ᵉ niveau ; puis en 2 au 3ᵉ niveau. On obtient bien 4 × 3 × 2 = 24 branches terminales. Par exemple, en commençant par 1 : 123, 124, 132, 134, 142, 143 — soit 6 codes, et 6 × 4 = 24 au total.',
  common_mistake = 'Oublier la contrainte « chiffres différents » et calculer 4 × 4 × 4 = 64 (tirage avec remise). Ou additionner au lieu de multiplier : 4 + 3 + 2 = 9.',
  validation_status = 'valide'
WHERE id = 'fb060000-0000-0000-0000-000000000003';

-- Q4 — Consolidation — Nombre de trajets dans un réseau (arbre de choix)
UPDATE public.exercises SET
  instruction = 'Pour aller de la ville A à la ville D, on passe par B puis par C. Il y a 3 routes de A à B, 2 routes de B à C et 2 routes de C à D. Combien de trajets différents A → B → C → D sont possibles ?',
  support_text = 'On peut construire un arbre de choix pour les représenter.',
  choices = '[{"id":"a","label":"7 trajets"},{"id":"b","label":"12 trajets"},{"id":"c","label":"36 trajets"},{"id":"d","label":"9 trajets"}]'::jsonb,
  expected_answer = '{"mode":"single","value":"b"}'::jsonb,
  detailed_explanation = 'On applique le principe multiplicatif à chaque étape du trajet. Étape A → B : 3 routes possibles. Étape B → C : 2 routes possibles. Étape C → D : 2 routes possibles. Chaque choix est indépendant des autres, donc le nombre total de trajets est : 3 × 2 × 2 = 12. On peut vérifier avec un arbre de choix : au 1ᵉʳ niveau (A→B), 3 branches ; chacune se divise en 2 branches (B→C) ; chacune se divise encore en 2 branches (C→D). L''arbre comporte bien 3 × 2 × 2 = 12 branches terminales, chacune correspondant à un trajet complet différent. L''arbre de choix est un outil fondamental pour dénombrer systématiquement.',
  common_mistake = 'Additionner les routes au lieu de les multiplier : 3 + 2 + 2 = 7. L''addition s''applique quand on choisit entre des options disjointes (principe additif), pas quand on enchaîne des choix successifs.',
  validation_status = 'valide'
WHERE id = 'fb060000-0000-0000-0000-000000000004';

-- Q5 — Consolidation — Poignées de main entre 8 personnes (liste organisée)
UPDATE public.exercises SET
  instruction = 'Lors d''une réunion de 8 personnes, chacune serre la main de toutes les autres exactement une fois. Combien de poignées de main sont échangées au total ?',
  support_text = 'Astuce : on peut procéder par une liste organisée en partant de la 1ʳᵉ personne.',
  choices = '[{"id":"a","label":"56"},{"id":"b","label":"28"},{"id":"c","label":"36"},{"id":"d","label":"64"}]'::jsonb,
  expected_answer = '{"mode":"single","value":"b"}'::jsonb,
  detailed_explanation = 'On procède par une liste organisée. La personne 1 serre la main des 7 autres : 7 poignées. La personne 2 a déjà serré la main de la personne 1, il lui reste 6 nouvelles poignées. La personne 3 : 5 nouvelles poignées. Et ainsi de suite. On additionne : 7 + 6 + 5 + 4 + 3 + 2 + 1 = 28 poignées de main. On peut aussi raisonner autrement : chacune des 8 personnes serre la main de 7 autres, ce qui donne 8 × 7 = 56 poignées comptées. Mais chaque poignée a été comptée deux fois (une fois du point de vue de chaque participant). Le nombre réel est donc 56 ÷ 2 = 28. La liste organisée permet de vérifier qu''on n''oublie aucun cas et qu''on ne compte pas deux fois le même.',
  common_mistake = 'Répondre 56 en oubliant que chaque poignée est comptée deux fois (une pour chaque personne). Ou répondre 64 en calculant 8 × 8 sans retirer les poignées avec soi-même.',
  validation_status = 'valide'
WHERE id = 'fb060000-0000-0000-0000-000000000005';

-- Q6 — Approfondissement — Menus avec contrainte d'incompatibilité (dénombrement par exclusion)
UPDATE public.exercises SET
  instruction = 'Un restaurant propose 3 entrées, 4 plats et 3 desserts. Cependant, le plat végétarien ne peut pas être associé au dessert à base de lait. Combien de menus complets (entrée + plat + dessert) sont possibles ?',
  support_text = 'Un menu est composé d''une entrée, d''un plat et d''un dessert. Il y a exactement 1 plat végétarien parmi les 4, et 1 dessert à base de lait parmi les 3.',
  choices = NULL,
  expected_answer = '{"mode":"text","acceptableAnswers":["33","36 - 3 = 33","36-3=33"]}'::jsonb,
  detailed_explanation = 'On commence par calculer le nombre total de menus sans contrainte, puis on retire les menus interdits. Sans contrainte : 3 entrées × 4 plats × 3 desserts = 36 menus possibles. Menus interdits : ce sont ceux qui associent le plat végétarien ET le dessert à base de lait. Il y a 1 plat végétarien et 1 dessert lacté, avec n''importe laquelle des 3 entrées : 3 × 1 × 1 = 3 menus interdits. Nombre de menus possibles : 36 − 3 = 33. Cette méthode par exclusion (ou par complémentaire) est une stratégie de dénombrement très efficace : on calcule le total, puis on retranche les cas impossibles. Elle évite d''avoir à lister tous les cas autorisés un par un.',
  common_mistake = 'Oublier de retirer les menus interdits et répondre 36. Ou retirer seulement 1 menu au lieu de 3, en oubliant de compter les 3 entrées possibles pour la combinaison interdite.',
  validation_status = 'valide'
WHERE id = 'fb060000-0000-0000-0000-000000000006';

-- Q7 — Approfondissement — Anagrammes d'un mot de 4 lettres différentes (dénombrement par liste)
UPDATE public.exercises SET
  instruction = 'Combien d''anagrammes (mots obtenus en réarrangeant toutes les lettres, même sans signification) peut-on former avec les 4 lettres du mot LUNE ?',
  support_text = 'Chaque lettre n''est utilisée qu''une seule fois. L, U, N, E sont toutes différentes.',
  choices = '[{"id":"a","label":"16"},{"id":"b","label":"24"},{"id":"c","label":"12"},{"id":"d","label":"256"}]'::jsonb,
  expected_answer = '{"mode":"single","value":"b"}'::jsonb,
  detailed_explanation = 'Le mot LUNE comporte 4 lettres toutes différentes. Pour la 1ʳᵉ position, on a 4 choix de lettres. Pour la 2ᵉ position, il reste 3 lettres disponibles. Pour la 3ᵉ position, il reste 2 lettres. Pour la dernière position, 1 seule lettre. Par le principe multiplicatif : 4 × 3 × 2 × 1 = 24 anagrammes. On peut le vérifier en les listant de manière organisée. En commençant par L : LUNE, LUEN, LNUE, LNEU, LEUN, LENU — soit 6 anagrammes. Il en va de même en commençant par U, N ou E : 6 × 4 = 24. Ce type de dénombrement par liste organisée ou arbre de choix est accessible dès le cycle 3.',
  common_mistake = 'Répondre 4 × 4 × 4 × 4 = 256 en autorisant la répétition des lettres (comme si on pouvait écrire LLLL). Ou répondre 4 × 3 = 12 en ne considérant que deux positions.',
  validation_status = 'valide'
WHERE id = 'fb060000-0000-0000-0000-000000000007';
