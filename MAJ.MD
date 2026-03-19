# MAJ Site CRPE

## Objectif
Mettre à jour le site pour augmenter la clarté, réduire la charge cognitive, améliorer la crédibilité pédagogique, et convertir plus efficacement un visiteur en inscrit puis en abonné.

Le travail doit suivre les priorités issues de l'audit :

1. clarifier immédiatement la proposition de valeur
2. rendre le diagnostic beaucoup plus engageant
3. simplifier le parcours vers l'inscription et l'abonnement
4. supprimer les redondances et le remplissage
5. renforcer la perception de qualité pédagogique

## Pages prioritaires
- `app/(marketing)/page.tsx`
- `features/homepage/components/renderer.tsx`
- `features/homepage/lib/default-homepage.ts`
- `app/(marketing)/diagnostic/page.tsx`
- `features/diagnostic/components/diagnostic-client.tsx`
- `app/(marketing)/offre/page.tsx`
- `app/(auth)/inscription/page.tsx`
- `features/auth/components/auth-form.tsx`
- `components/site-header.tsx`
- `components/site-footer.tsx`
- `app/(marketing)/layout.tsx`

## Problèmes critiques à corriger
- Le hero de la page d'accueil est trop généraliste et le CTA principal n'est pas assez précis.
- Le lien `Domaines` dans la navigation n'est pas cohérent avec le contenu réellement visible.
- La home répète trop la même promesse sous plusieurs blocs.
- Le diagnostic démarre trop brutalement en `Question 1 / 40` sans écran de mise en confiance.
- Le diagnostic garde une structure trop marketing pendant la passation, ce qui nuit à la concentration.
- La page offre demande trop d'effort de comparaison trop tôt.
- La différence entre gratuit et premium n'est pas exposée avec assez de netteté.
- Le site affirme sa valeur pédagogique plus qu'il ne la prouve.

## Résultat attendu
Un site plus direct, plus lisible, plus rassurant, avec :

- une home plus courte et plus convaincante
- un diagnostic qui donne envie d'être commencé
- une page offre plus simple à comprendre
- une inscription cohérente avec la promesse commerciale
- une hiérarchie éditoriale plus nette

---

## Répartition du travail

### Claude : tâches plus difficiles, structurelles, techniques
Claude prend tout ce qui touche à la structure, à la logique de parcours, aux composants multi-zones, et aux changements susceptibles d'avoir un effet de bord.

#### 1. Repenser l'entrée du diagnostic ✅ FAIT
Objectif : transformer le diagnostic en tunnel clair, focalisé, engageant.

Réalisé :
- [x] ajouté un écran d'introduction avant le début du questionnaire
- [x] affiché clairement :
  - [x] durée estimée (~8 minutes)
  - [x] nombre de questions (40)
  - [x] bénéfice concret en sortie (profil personnalisé)
  - [x] gratuité (100 % gratuit)
  - [x] absence de carte bancaire
- [x] CTA principal `Commencer le diagnostic`
- [x] passation isolée dans un overlay plein écran (header/footer masqués)
- [x] barre de progression + bouton « Quitter » dans le header minimal
- [x] écran de résultats conservé, cohérent avec la nouvelle entrée

Fichiers modifiés :
- `features/diagnostic/components/diagnostic-client.tsx`

#### 2. Simplifier structurellement la home ✅ FAIT
Objectif : enlever les redondances sans casser l'architecture éditable existante.

Réalisé :
- [x] supprimé les mini-étapes redondantes (doublonnaient les grandes cartes "Trois étapes")
- [x] section `domains` reste `visible: false` — lien "Domaines" supprimé de la navigation
- [x] home plus compacte
- [x] version Supabase reste cohérente (steps vidé, pas supprimé du type)

Fichiers modifiés :
- `features/homepage/lib/default-homepage.ts`
- `features/homepage/components/renderer.tsx`

#### 3. Repenser la page offre au niveau structurel ✅ FAIT
Objectif : réduire l'effort de décision et mieux distinguer gratuit / premium.

Réalisé :
- [x] comparatif principal 2 colonnes : Gratuit vs Premium mensuel (recommandé)
- [x] journalier et semainier relégués en section secondaire "Besoin d'un accès ponctuel ?"
- [x] logique Stripe intacte (CheckoutButton, priceId, portal)

Fichiers modifiés :
- `app/(marketing)/offre/page.tsx`

#### 4. Nettoyer les dépendances de navigation publique ✅ FAIT
Objectif : ne plus envoyer de signaux incohérents.

Réalisé :
- [x] lien "Domaines" supprimé du header (section cachée)
- [x] liens footer corrigés : supprimé /francais, /progression, /ressources/glossaire, /tableau-de-bord (tous sous (app), inaccessibles sans compte)
- [x] footer restructuré : Navigation publique + Le site (offre, inscription, connexion) + Légal
- [x] plus aucun lien public vers une zone protégée

Fichiers modifiés :
- `components/site-header.tsx`
- `components/site-footer.tsx`

#### Contraintes pour Claude
- ne pas faire de refonte totale arbitraire
- préserver l'esthétique existante quand elle n'est pas en cause
- privilégier la suppression, la simplification et la hiérarchisation
- ne pas ajouter de complexité UI non justifiée
- ne pas multiplier les animations

---

### Codex : écriture, simplification éditoriale, code simple
Codex prend les réécritures, les coupes, les fusions simples, les ajustements de labels, et les modifications de faible complexité technique.

#### Avancement Codex
- [x] Réécrire le hero de la home pour expliciter le mécanisme réel : diagnostic, lacunes identifiées, révisions ciblées, corrections utiles.
- [x] Clarifier les CTA principaux sur la home, l'offre et l'inscription.
- [x] Réduire les répétitions dans la home en resserrant les sous-textes, la FAQ et le CTA final.
- [x] Harmoniser le vocabulaire entre gratuit, premium, diagnostic et inscription.
- [x] Renforcer la crédibilité pédagogique des textes sur la home et la page offre.
- [ ] Reprendre la page offre une seconde fois après simplification structurelle éventuelle.
- [ ] Ajuster header/footer selon la décision finale sur la navigation publique.

#### 1. Réécrire la proposition de valeur de la home
Objectif : rendre le bénéfice immédiat et concret.

À faire :
- réécrire le hero pour vendre le mécanisme réel :
  - diagnostic
  - lacunes identifiées
  - révisions ciblées
  - corrections utiles
- remplacer le CTA principal par un libellé explicite
- raccourcir les sous-textes trop longs

Fichiers probables :
- `features/homepage/lib/default-homepage.ts`

#### 2. Réduire les répétitions
Objectif : éviter la sensation de remplissage.

À faire :
- raccourcir ou supprimer les formulations redondantes
- réduire la FAQ aux questions qui lèvent un vrai frein
- alléger le CTA final pour qu'il synthétise au lieu de répéter

Fichiers probables :
- `features/homepage/lib/default-homepage.ts`

#### 3. Clarifier les libellés CTA et microcopies
Objectif : faire comprendre l'action sans ambiguïté.

À faire :
- remplacer les formulations vagues par des verbes d'action précis
- harmoniser le vocabulaire :
  - gratuit
  - premium
  - diagnostic
  - offre
  - programme 2026
- vérifier la cohérence entre inscription et offre

Fichiers probables :
- `features/homepage/lib/default-homepage.ts`
- `app/(marketing)/offre/page.tsx`
- `app/(auth)/inscription/page.tsx`
- `features/auth/components/auth-form.tsx`

#### 4. Renforcer la crédibilité pédagogique par le texte
Objectif : moins promettre, mieux prouver.

À faire :
- reformuler les blocs pédagogiques pour être plus précis et moins déclaratifs
- mieux expliquer ce qu'on obtient à la fin du diagnostic
- améliorer les formulations liées aux corrections et à la logique de progression

Fichiers probables :
- `features/homepage/lib/default-homepage.ts`
- `app/(marketing)/offre/page.tsx`

#### 5. Ajustements simples d'interface si nécessaires
Objectif : améliorer la lisibilité sans toucher aux gros mécanismes.

À faire :
- suppression de blocs simples si cela ne casse pas la structure
- ajustements de labels dans header/footer
- petites coupes sur les pages marketing

Fichiers probables :
- `components/site-header.tsx`
- `components/site-footer.tsx`

---

## Ordre de travail recommandé

### Phase 1
- Claude : tunnel diagnostic
- Codex : réécriture hero + CTA + coupe des redondances home

### Phase 2
- Claude : simplification structurelle offre + navigation publique
- Codex : réécriture de l'offre et harmonisation inscription / premium

### Phase 3
- Claude : stabilisation structurelle et cohérence globale
- Codex : finition éditoriale, FAQ, microcopies, crédibilité pédagogique

---

## Prompt pour Claude

Tu interviens sur un site éducatif de préparation au CRPE.  
Ton rôle est de prendre en charge les modifications les plus complexes, structurelles et sensibles côté code, sans dégrader l'existant.

### Mission
Corriger les points les plus bloquants pour la conversion et l'expérience utilisateur, en priorité sur :

1. l'entrée dans le diagnostic
2. la structure de la home
3. la simplification de la page offre
4. la cohérence de la navigation publique

### Ce que tu dois viser
- réduire la charge cognitive
- clarifier le parcours
- améliorer la focalisation sur l'action utile
- supprimer les incohérences de navigation
- préserver l'esthétique générale du site

### Priorité absolue
Créer une vraie entrée au diagnostic, avec un écran d'introduction convaincant, puis transformer la passation en expérience plus focalisée, plus calme, plus sérieuse.

### Contraintes
- ne pas faire de refonte totale
- ne pas casser l'intégration Stripe
- ne pas casser l'édition homepage existante si elle dépend de Supabase
- privilégier la suppression et la simplification
- maintenir une base propre et cohérente pour les retouches éditoriales ensuite

### Livrables attendus
- diagnostic plus engageant avant démarrage
- home moins redondante au niveau structurel
- offre plus simple à lire
- navigation publique cohérente

---

## Prompt pour Codex

Tu prends en charge les améliorations légères à moyennes, surtout éditoriales, ainsi que les ajustements simples côté code.

### Mission
Rendre le site plus clair, plus direct, plus crédible et plus orienté conversion sans ajouter de complexité.

### Priorités
- réécrire le hero de la home
- clarifier les CTA
- réduire les répétitions
- resserrer la FAQ
- harmoniser les messages entre home, offre et inscription
- améliorer la précision pédagogique des textes

### Méthode
- couper avant d'ajouter
- simplifier avant d'embellir
- éviter les slogans flous
- préférer les bénéfices concrets
- écrire comme si chaque ligne devait justifier sa présence

### Livrables attendus
- copy de home plus forte
- CTA plus explicites
- messages plus cohérents
- moins de remplissage
- meilleure perception de qualité pédagogique

---

## Critères de validation finaux
- Un nouveau visiteur comprend en moins de 5 secondes ce que propose le site et par quoi commencer.
- Le diagnostic donne envie d'être lancé au lieu de paraître coûteux mentalement.
- La différence entre gratuit et premium est immédiatement compréhensible.
- La home n'a plus d'effet de redite.
- Les pages paraissent plus maîtrisées, plus utiles, plus crédibles.
