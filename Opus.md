# Audit complet — Parcours utilisateur, pédagogie et plaisir d'apprendre

> **Dernière mise à jour : 2026-03-21**
> Statuts : ✅ Implémenté · 🔶 Partiellement implémenté · ⬜ À faire

---

## 1. PARCOURS UTILISATEUR — Synthèse

### Ce qui fonctionne bien

**Onboarding structuré** : Le parcours Visiteur → Diagnostic (40 questions, sans inscription) → Résultats → Création de compte → Dashboard est fluide et logique. L'utilisateur voit la valeur avant de donner son email — c'est un excellent pattern de conversion.

**Dashboard riche** : Le tableau de bord agrège stats globales, plan du jour, priorités, fragilités, erreurs récurrentes, activité récente. L'utilisateur sait toujours où il en est.

**Navigation claire** : Sidebar avec groupes logiques (Mon parcours / Français / Fiches / Compte), filtres avancés dans le catalogue, cards cliquables dans les domaines.

**Paywall non-agressive** : 20 questions/jour gratuit, contenu premium visible mais verrouillé, offre claire à 6,99€/mois avec options journalière/hebdo.

### Faiblesses identifiées

| Problème | Impact |
|----------|--------|
| **Pas de parcours guidé post-diagnostic** | L'utilisateur voit ses faiblesses mais doit naviguer seul pour trouver les exercices correspondants |
| 🔶 **Plan du jour = max 3 items, pas de goal quotidien** | Pas de sentiment de "mission accomplie" dans la journée — **Partiel** : indicateur "Objectif du jour" (ring SVG 15 questions) ajouté au hero du dashboard. Goal non personnalisable encore. |
| **Diagnostic déconnecté du séquencement** | Les résultats sont stockés mais ne personnalisent pas l'ordre des séries proposées |
| **Fiches non intégrées au flux d'exercice** | L'utilisateur doit quitter l'exercice pour consulter la fiche correspondante |
| **Pas de "retour après absence"** | Aucun message adapté si l'utilisateur revient après plusieurs jours |

---

## 2. SYSTÈME D'EXERCICES — Analyse pédagogique

### Points forts

**8 types d'exercices variés** : QCM, vrai/faux, réponse courte, correction orthographique, identification grammaticale, analyse de texte, tri par catégories (drag-and-drop), surlignage de propositions. Cette diversité cogne sur différents niveaux taxonomiques (Bloom) — de la reconnaissance (QCM) à l'application (tri, surlignage).

**Feedback immédiat et détaillé** : Chaque réponse déclenche :
- Résultat visuel (vert/orange/rouge) avec animation
- Explication pédagogique complète (`detailed_explanation`)
- Piège courant identifié (`common_mistake`)
- Conseil de reprise pour la métacognition
- Mascotte Mocca qui s'adapte à la performance

**Qualité du contenu remarquable** : Les fiches sprint sont denses, bien structurées (one-liner, exemple correct/incorrect, piège principal, quiz). La terminologie Éduscol 2021 est explicitement respectée. Les exercices ciblent les automatismes du CRPE.

**Évaluation nuancée** : Le système distingue "correct", "presque correct (accent)" et "incorrect" pour les réponses courtes — ce qui est pédagogiquement pertinent pour l'orthographe.

### Faiblesses pédagogiques

| Problème | Analyse didactique |
|----------|-------------------|
| **Pas de phase d'apprentissage avant l'évaluation** | L'utilisateur est évalué directement sans étape de découverte/enseignement. Il manque le cycle Découvrir → Comprendre → S'entraîner → Évaluer |
| **Séries figées (ordre fixe)** | Les 10 questions d'une série sont toujours dans le même ordre, quelle que soit la performance |
| **Pas de difficulté adaptative** | Un étudiant qui échoue 8/10 refait les mêmes questions au même niveau — pas de simplification progressive |
| ✅ ~~**Feedback correct mais froid**~~ | ~~L'explication est factuelle mais ne guide pas vers la stratégie de résolution~~ — **Corrigé** : 4 variantes de feedback positif, 3 variantes négatif, messages streak, ton chaleureux et encourageant |
| **Pas d'exercices de production libre** | Tout est fermé (QCM, drag, text exact). Il manque des exercices de rédaction, de transformation de texte, d'argumentation — compétences clés au CRPE |
| **Seuil de maîtrise unique (75-85%)** | Un seuil identique pour "accord du GN" (facile) et "analyse des subordonnées" (avancé) n'est pas pertinent didactiquement |

---

## 3. PROGRESSION ET MOTIVATION — Le maillon faible

### Ce qui existe

- Tracking granulaire (par tentative, par série, par sous-domaine, par domaine)
- 4 statuts visuels : non commencée / en cours / à revoir / maîtrisée
- Barres de progression, pourcentages, badges de statut
- Erreurs récurrentes identifiées
- Mascotte Mocca avec 3 états émotionnels

### Ce qui manque cruellement

| Élément absent | Impact sur la motivation |
|---------------|------------------------|
| 🔶 **Streaks (séries de jours consécutifs)** | ~~Pas d'incitation au retour quotidien~~ — **Partiel** : streak de réponses consécutives correctes implémenté (badge dès 3, flamme dès 5, célébration à 5 et 10). Streak de jours consécutifs nécessite un backend dédié. |
| **Système de points/XP** | Pas de sensation de progression continue entre les séries |
| **Badges/achievements** | Aucune récompense pour les jalons (1re série, 10 séries, 100% sur un domaine...) |
| 🔶 **Objectifs quotidiens/hebdo** | ~~L'utilisateur ne sait pas "combien en faire"~~ — **Partiel** : indicateur "Objectif du jour" (15 questions/jour) avec ring SVG sur le dashboard. Non personnalisable, pas de suivi hebdo. |
| **Répétition espacée (SRS)** | Les notions mal maîtrisées ne reviennent pas automatiquement — l'oubli n'est pas combattu |
| **Courbe de progression temporelle** | Pas de graphique montrant l'évolution du score dans le temps |
| **Comparaison sociale** | Pas de "la moyenne des utilisateurs score X% sur ce thème" |
| ✅ ~~**Célébrations visuelles**~~ | ~~Pas de confetti, animation spéciale, ou moment "wow"~~ — **Corrigé** : confetti CSS (60 particules, 7 couleurs) sur maîtrise de série, banner célébration maîtrise, badge shine, score animé, célébration streak à 5 et 10 réponses d'affilée. |
| **Notifications/rappels** | Aucun rappel si l'utilisateur ne revient pas |

**Verdict** : La plateforme suit un modèle "transparence métriques + auto-direction". C'est insuffisant pour maintenir l'engagement sur la durée. Les études montrent que la répétition espacée + les micro-récompenses + les objectifs atteignables sont les 3 piliers de la rétention dans les apps éducatives.

---

## 4. EXPÉRIENCE UTILISATEUR ET PLAISIR

### Design visuel : 8/10
Palette chaude et académique cohérente, typographie soignée (Cormorant Garamond + Manrope), système de tokens complet. L'app inspire confiance et sérieux.

### Micro-interactions : 7/10 → 🔶 ~8.5/10 après implémentation
Animations subtiles sur les feedbacks (scale + fade), barres de progression qui pulsent, entrées de questions fluides. ~~Mais pas d'effets "wow" — pas de son, pas de confetti, pas de haptic.~~ **Ajouté** : confetti sur maîtrise, streak badge pulsé, score reveal animé, mastery shine, fire glow sur streak, célébration banner animé. Reste à ajouter : son, haptic.

### Mobile : 8/10
Vraiment responsive (26 breakpoints dans l'exercise-player). Touch-friendly avec des cibles de 44px+. Navigation en Sheet drawer. Mocca masquée sur mobile pour économiser l'espace.

### Accessibilité : 8/10
ARIA complet, `prefers-reduced-motion` supporté, Radix UI pour les primitives, rôles sémantiques. Bon niveau.

### Ressenti émotionnel : 6.5/10 → 🔶 ~8/10 après implémentation
L'app est **sérieuse et respectueuse** ~~mais manque de chaleur et de plaisir~~. ~~Mocca est sous-exploitée (visible surtout en fin de série)~~. ~~Le ton est factuel~~ — **Ajouté** : Mocca affiche des messages contextuels entre les questions (mi-parcours, dernières questions, streak), feedback titles variés et chaleureux (4 variantes correct, 3 incorrect), messages streak, écran de complétion avec 5 paliers de messages émotionnels, empty states motivants sur le dashboard, hero personnalisé. Reste : Mocca costumes, messages retour après absence.

---

## 5. AJOUTS MAJEURS RECOMMANDÉS

### Tier 1 — Impact maximal sur la rétention

#### A. Répétition espacée (SRS)
- Algorithme type SM-2 qui planifie automatiquement le retour des questions mal maîtrisées
- "Révision du jour" : 5-10 questions de rappel, tirées des notions vues il y a 1, 3, 7, 14 jours
- **Pourquoi** : C'est le levier pédagogique #1 prouvé par la recherche. Sans SRS, l'oubli efface les acquis.

#### B. Objectifs & streaks quotidiens — 🔶 Partiellement implémenté
- 🔶 ~~"Votre objectif : 15 min/jour" (personnalisable)~~ → Ring SVG "Objectif du jour" (15 questions) dans le hero du dashboard. Non personnalisable encore.
- 🔶 ~~Compteur de jours consécutifs avec Mocca qui évolue~~ → Streak de réponses consécutives implémenté (badge, flamme, célébration). Streak de jours nécessite un backend.
- ⬜ Rappels push/email si streak en danger
- **Pourquoi** : Crée l'habitude quotidienne. Duolingo a prouvé que le streak est le mécanisme de rétention #1.

#### C. Parcours guidé adaptatif
- Post-diagnostic : génération automatique d'un "plan de révision" en X semaines
- Séquencement intelligent : les séries proposées dépendent des résultats passés
- Verrouillage progressif : "Maîtrisez les bases du GN avant d'attaquer les subordonnées"
- **Pourquoi** : Élimine la paralysie du choix et la charge cognitive de "que faire maintenant ?"

### Tier 2 — Enrichissement pédagogique

#### D. Phase d'apprentissage avant évaluation
- Chaque série commence par une "mini-leçon" (la fiche correspondante en version condensée)
- Exemple interactif guidé : "Regardez cette phrase, identifiez le COD — voici comment faire"
- Puis seulement : exercices d'application
- **Pourquoi** : On ne peut pas évaluer ce qui n'a pas été enseigné. Le cycle pédagogique complet (enseigner → pratiquer → évaluer) est fondamental.

#### E. Exercices de production
- Rédaction guidée : "Écrivez 3 phrases avec un attribut du sujet" → évaluation par règles ou IA
- Transformation de texte : "Réécrivez ce passage au passé composé"
- Dictée interactive : audio + saisie + correction automatique
- **Pourquoi** : Le CRPE évalue aussi la production. Les exercices fermés seuls ne préparent pas à l'épreuve écrite.

#### F. Mode examen blanc
- Simulation complète : 40 questions, temps limité, conditions réelles
- Score pondéré par difficulté
- Comparaison avec le seuil d'admissibilité estimé
- **Pourquoi** : Réduit l'anxiété d'examen et donne un repère concret de préparation.

### Tier 3 — Engagement et plaisir

#### G. Système de badges & achievements
- Jalons : 1re série, 10e série, 1er domaine maîtrisé, streak 7 jours, 100% sur une série...
- Badges collectionnables (affichés sur le profil)
- Mocca débloque de nouveaux costumes/expressions à chaque palier
- **Pourquoi** : Micro-récompenses qui maintiennent la dopamine entre les grandes victoires.

#### H. Visualisation de progression enrichie
- Graphique temporel (courbe de score sur 30 jours)
- Heatmap d'activité (type GitHub contributions)
- Radar chart personnel actualisé (pas seulement le diagnostic initial)
- **Pourquoi** : Rend tangible le progrès invisible. "Je m'améliore" est un puissant motivateur.

#### I. Mocca compagne d'apprentissage — 🔶 Partiellement implémenté
- ✅ ~~Messages contextuels pendant l'exercice~~ → Mocca affiche des encouragements entre les questions (mi-parcours, streak en cours, dernières questions)
- ✅ ~~Célébration animée sur les 5 bonnes réponses consécutives~~ → Banner animé avec Mocca happy + message dédié à 5 et 10 réponses d'affilée
- ✅ ~~Commentaires encourageants entre les questions ("Plus que 3 !")~~ → Messages contextuels : "Plus que 3 !", "Mi-parcours !", "Dernière question !", "Tu es en forme !"
- ✅ ~~Message personnalisé au retour après absence~~ → Banner Mocca « Content de te revoir ! » affiché après ≥ 3 jours d'inactivité, message adapté selon la durée
- **Pourquoi** : Transforme un outil en compagnon. La dimension relationnelle augmente l'engagement.

#### J. Mode "défi rapide"
- Sprint 5 questions / 2 minutes sur un thème
- Score affiché avec record personnel
- Idéal pour les révisions de dernière minute dans les transports
- **Pourquoi** : Format court adapté aux usages mobiles et aux moments creux de la journée.

---

## 6. Matrice priorité / effort

| Ajout | Impact péda. | Impact rétention | Effort | Priorité | Statut |
|-------|-------------|-----------------|--------|----------|--------|
| A. Répétition espacée | ★★★★★ | ★★★★★ | Moyen | **P0** | ⬜ À faire |
| B. Streaks & objectifs | ★★☆ | ★★★★★ | Faible | **P0** | 🔶 Partiel — streak réponses + daily goal ring |
| C. Parcours adaptatif | ★★★★ | ★★★★ | Élevé | **P1** | ⬜ À faire |
| D. Mini-leçon avant série | ★★★★★ | ★★★ | Moyen | **P1** | ⬜ À faire |
| E. Exercices production | ★★★★★ | ★★★ | Élevé | **P1** | ⬜ À faire |
| F. Examen blanc | ★★★★ | ★★★ | Moyen | **P2** | ⬜ À faire |
| G. Badges & achievements | ★★☆ | ★★★★ | Faible | **P2** | 🔶 Partiel — 16 badges UI implémentés, système de jalons client-side. Manque : persistance backend, Mocca costumes |
| H. Visualisation enrichie | ★★☆ | ★★★ | Moyen | **P2** | ✅ Implémenté — heatmap 13 semaines, radar chart progression, courbe d'évolution 30 jours |
| I. Mocca enrichie | ★★★ | ★★★★ | Moyen | **P2** | 🔶 Partiel — messages contextuels + célébrations + welcome-back après absence |
| J. Mode défi rapide | ★★★ | ★★★★ | Faible | **P3** | 🔶 Partiel — carte d'entrée « Défi rapide » sur le dashboard. Manque : timer, mode sprint dédié |

---

## 7. Implémentations réalisées (2026-03-21)

### Récapitulatif des changements

| Composant | Ce qui a été fait | Fichier(s) |
|-----------|-------------------|------------|
| **Confetti** | Animation CSS 60 particules (7 couleurs, 3 formes, drift) sur maîtrise ≥85% | `components/ui/confetti.tsx`, `app/globals.css` |
| **Streak tracking** | Compteur réponses consécutives correctes, badge dès 3, flamme dès 5 | `features/exercises/components/exercise-player.tsx` |
| **Streak célébration** | Banner animé avec Mocca happy à 5 et 10 réponses d'affilée | `features/exercises/components/exercise-player.tsx` |
| **Mocca contextuelle** | Messages entre les questions : mi-parcours, dernières questions, streak | `features/exercises/components/exercise-player.tsx` |
| **Feedback chaleureux** | 4 variantes correct, 3 variantes incorrect, messages streak spéciaux | `features/exercises/components/exercise-player.tsx` |
| **Complétion enrichie** | Banner maîtrise, confetti, score animé, 5 paliers de messages | `features/exercises/components/exercise-player.tsx` |
| **Dashboard hero** | Message contextuel adapté (bienvenue/progression/acquis) | `app/(app)/tableau-de-bord/page.tsx` |
| **Daily goal ring** | SVG ring animé (15 questions/jour) dans le hero | `app/(app)/tableau-de-bord/page.tsx` |
| **Empty states** | Messages motivants avec icônes (acquis, activité récente) | `app/(app)/tableau-de-bord/page.tsx` |
| **5 animations CSS** | `confetti-fall`, `streak-pulse`, `score-reveal`, `mastery-shine`, `fire-glow` | `app/globals.css` |

### Implémentations ajoutées (2026-03-21 — session 2)

| Composant | Ce qui a été fait | Fichier(s) |
|-----------|-------------------|------------|
| **Heatmap d'activité** | Calendrier SVG 13 semaines type GitHub, 5 niveaux d'intensité, tooltip au survol, labels mois/jours | `components/ui/activity-heatmap.tsx` |
| **Badges & achievements** | 16 badges en 4 catégories (Jalons, Maîtrise, Régularité, Engagement), état gagné/verrouillé, modes compact et détaillé | `components/ui/achievement-badges.tsx` |
| **Welcome-back Mocca** | Banner avec message adapté après ≥ 3 jours d'absence, CTA de reprise | `app/(app)/tableau-de-bord/page.tsx` |
| **Défi rapide** | Carte sombre avec CTA vers une série non maîtrisée, design premium | `app/(app)/tableau-de-bord/page.tsx` |
| **Daily activity data** | Agrégation des tentatives par jour + calcul des 16 badges | `lib/dashboard.ts`, `types/domain.ts` |
| **Progression enrichie** | Heatmap + grille complète des badges sur la page progression | `app/(app)/progression/page.tsx` |
| **Animations CSS** | `badge-pop`, `heatmap-fade` + respect `prefers-reduced-motion` | `app/globals.css` |

### Implémentations ajoutées (2026-03-21 — session 3)

| Composant | Ce qui a été fait | Fichier(s) |
|-----------|-------------------|------------|
| **Radar de progression** | SVG radar chart alimenté par `domainProgress`, couleurs par statut (acquis/en_cours/fragile/prioritaire), légende, animation `radar-fill`, labels %, ARIA complet | `components/ui/progression-radar-chart.tsx` |
| **Courbe d'évolution** | Graphique SVG ligne + aire, 30 derniers jours, tooltip interactif, grille, labels axes, animation `chart-line-draw` | `components/ui/score-evolution-chart.tsx` |
| **Score evolution data** | Agrégation cumulative correctRate par jour dans `buildScoreEvolution()` | `lib/dashboard.ts`, `types/domain.ts` |
| **Polish badges** | Animation `badge-pop` staggerée, hover scale, barre de progression earned/total | `components/ui/achievement-badges.tsx` |
| **Polish heatmap** | Animation `heatmap-fade`, `<title>` SVG, aria-label enrichi | `components/ui/activity-heatmap.tsx` |
| **3 animations CSS** | `radar-fill`, `chart-line-draw`, `chart-fade-in` + respect `prefers-reduced-motion` | `app/globals.css` |
| **Page progression enrichie** | Intégration radar + courbe en grid 2 colonnes avant heatmap et badges | `app/(app)/progression/page.tsx` |

### Ce qui reste à faire (par priorité)

1. **P0 — Répétition espacée (SRS)** : algorithme SM-2, "Révision du jour", backend de planification
2. **P0 — Streak de jours consécutifs** : table Supabase, tracking quotidien, Mocca qui évolue, rappels
3. **P0 — Objectif quotidien personnalisable** : setting utilisateur en base, choix 10/15/20/30 questions
4. **P1 — Parcours adaptatif post-diagnostic** : séquencement intelligent, verrouillage progressif
5. **P1 — Mini-leçon avant série** : intégration fiches sprint dans le flux d'exercice
6. **P2 — Badges persistés** : backend Supabase pour persister les badges + Mocca costumes
7. **P3 — Mode défi rapide complet** : timer, sprint 5 questions / 2 minutes, record personnel

---

## Conclusion

La plateforme a des **fondations solides** : contenu de qualité, feedback pédagogique riche, design professionnel, bonne architecture technique. ~~Mais elle fonctionne comme un **recueil d'exercices intelligent** plutôt que comme un **tuteur adaptatif**.~~

**Progrès réalisés** : L'expérience émotionnelle et les micro-interactions ont été significativement améliorées (confetti, streak, Mocca contextuelle, feedback chaleureux, dashboard motivationnel). Le ressenti passe de 6.5/10 à ~8/10.

Les 3 chantiers transformationnels restants sont :
1. **Répétition espacée** — pour que l'apprentissage tienne dans le temps
2. **Parcours adaptatif** — pour guider plutôt que laisser errer
3. **Streak quotidien persisté + badges** — pour compléter la boucle de motivation

Avec ces ajouts, la plateforme passerait d'un bon outil de révision à une **vraie méthode de préparation au CRPE**.
