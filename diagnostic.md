# Audit du diagnostic CRPE Français

## Résumé rapide

- La banque contient `105` questions au total.
- Le générateur n'en utilise actuellement que `10` par sous-domaine à cause de `.slice(0, 10)`, donc une partie de la banque n'est jamais tirée.
- Les questions trop faciles se concentrent surtout en `lexique`, `didactique` et `compréhension`.
- Il existe au moins une erreur de fond dans la banque (`diag-lex-7`) et plusieurs incohérences de promesse autour du diagnostic.

## Méthode de classement

- `A` : trop facile et actuellement tirée par le générateur, donc prioritaire.
- `B` : trop facile, mais actuellement hors tirage à cause du générateur.
- `C` : à surveiller, mais pas prioritaire tant que les niveaux `A` et `B` ne sont pas repris.

## Classement

### A - À durcir en premier

| ID | Sous-domaine | Pourquoi c'est trop facile | Référence |
| --- | --- | --- | --- |
| `diag-gram-8` | Grammaire | Reconnaissance très scolaire de la voix passive, avec distracteurs faibles. | `content/french-diagnostic-questions.ts:177` |
| `diag-ortho-5` | Orthographe | `des yeux marron` est un classique très connu, peu discriminant. | `content/french-diagnostic-questions.ts:287` |
| `diag-lex-3` | Lexique | `Boire un verre` = métonymie : exemple canonique, réponse presque automatique. | `content/french-diagnostic-questions.ts:553` |
| `diag-lex-4` | Lexique | Litote très attendue, formulation d'école, distracteurs peu compétitifs. | `content/french-diagnostic-questions.ts:562` |
| `diag-lex-8` | Lexique | Antiphrase signalée par un sarcasme très explicite. | `content/french-diagnostic-questions.ts:598` |
| `diag-lex-10` | Lexique | `désinformer` par préfixation est presque mécanique. | `content/french-diagnostic-questions.ts:616` |
| `diag-comp-4` | Compréhension | Différence injonctif / explicatif donnée presque par définition. | `content/french-diagnostic-questions.ts:836` |
| `diag-comp-9` | Compréhension | Présupposé sur `arrêter de fumer` très classique et peu piégeux. | `content/french-diagnostic-questions.ts:881` |
| `diag-did-1` | Didactique | Définition brute de la ZPD, très connue en préparation concours. | `content/french-diagnostic-questions.ts:951` |
| `diag-did-2` | Didactique | Définition directe de l'étayage, distracteurs faibles. | `content/french-diagnostic-questions.ts:960` |
| `diag-did-8` | Didactique | Définition standard de l'évaluation formative, très frontale. | `content/french-diagnostic-questions.ts:1024` |

### B - À reprendre ensuite

Ces questions paraissent trop faciles, mais elles sont actuellement peu urgentes car elles ne sont pas tirées par le générateur dans son état actuel.

| ID | Sous-domaine | Pourquoi c'est trop facile | Référence |
| --- | --- | --- | --- |
| `diag-gram-13` | Grammaire | `Phrase simple / phrase complexe` avec deux verbes conjugués : niveau trop introductif. | `content/french-diagnostic-questions.ts:222` |
| `diag-ortho-12` | Orthographe | Accord sujet / verbe encore trop scolaire malgré le GN éloigné. | `content/french-diagnostic-questions.ts:350` |
| `diag-ortho-15` | Orthographe | `Ces fleurs sont belles` ne discrimine pas le niveau concours. | `content/french-diagnostic-questions.ts:382` |
| `diag-conj-14` | Conjugaison | Identifier un plus-que-parfait isolé parmi des temps très distincts est trop direct. | `content/french-diagnostic-questions.ts:510` |
| `diag-lex-15` | Lexique | `monter en haut` comme pléonasme fautif est trop attendu. | `content/french-diagnostic-questions.ts:661` |
| `diag-comp-11` | Compréhension | Point de vue interne présenté de manière très scolaire. | `content/french-diagnostic-questions.ts:899` |
| `diag-did-11` | Didactique | Définition canonique de la fluence, assez facile pour un candidat préparé. | `content/french-diagnostic-questions.ts:1066` |

### C - À surveiller

- Certaines questions de didactique restent très définitionnelles, même quand elles ne sont pas franchement "trop faciles".
- Le risque global est moins la difficulté moyenne isolée que l'accumulation de questions définitionnelles courtes, surtout en `didactique` et `lexique`.
- Si l'objectif du diagnostic est vraiment discriminant, il faudrait viser davantage :
  - des distracteurs plus proches,
  - des mini-cas d'usage,
  - des formulations moins scolaires,
  - des situations où deux réponses paraissent plausibles avant analyse.

## Incohérences et points critiques

### 1. Erreur de fond dans la banque

| Problème | Détail | Référence |
| --- | --- | --- |
| `diag-lex-7` | La question classe `avocat` (fruit / professionnel du droit) comme `polysémie`, alors qu'il s'agit d'`homonymie`. | `content/french-diagnostic-questions.ts:589` |

### 2. Une partie de la banque n'est jamais utilisée

| Problème | Détail | Référence |
| --- | --- | --- |
| Tirage tronqué | Le générateur filtre chaque sous-domaine puis coupe avec `.slice(0, 10)`. Résultat : les questions `11` à `15` de chaque sous-domaine ne sortent jamais. | `content/french-diagnostic-questions.ts:1153` |
| Effet secondaire | Le diagnostic est évalué sur une banque annoncée comme large, mais en pratique la variété réellement servie est réduite. | `content/french-diagnostic-questions.ts:1137`, `content/french-diagnostic-questions.ts:1153` |

### 3. Promesse de durée incohérente

| Problème | Détail | Référence |
| --- | --- | --- |
| Entrée diagnostic | L'introduction du diagnostic annonce encore `8 minutes`. | `features/diagnostic/components/diagnostic-client.tsx:353` |
| Carte durée | Le bloc de synthèse annonce aussi `~8 minutes`. | `features/diagnostic/components/diagnostic-client.tsx:371` |
| Autre zone produit | Le tableau de bord parle de `40 questions` pour `~30 min`. | `features/dashboard/components/onboarding-banner.tsx:67` |

### 4. Taille de banque incohérente selon les pages

| Problème | Détail | Référence |
| --- | --- | --- |
| Page offre | La page offre parle de `plus de 200 questions` pour le diagnostic. | `app/(marketing)/offre/page.tsx:241` |
| Banque réelle | La constante exposée pour la banque diagnostic est `FRENCH_DIAGNOSTIC_BANK_SIZE`, et le comptage actuel de la banque est inférieur à cette promesse. | `content/french-diagnostic-questions.ts:1137` |

## Priorités d'action recommandées

1. Corriger immédiatement l'erreur de fond sur `diag-lex-7`.
2. Corriger le générateur pour arrêter de tronquer la banque avec `.slice(0, 10)`.
3. Harmoniser la promesse produit sur la durée réelle du diagnostic.
4. Réécrire en priorité les questions classées `A`.
5. Réévaluer ensuite les questions classées `B`, car certaines deviendront visibles dès que le générateur utilisera vraiment toute la banque.

## Note de lecture

Ce document ne propose pas encore de suppression ni de réécriture.
Il sert de base de tri avant intervention sur le contenu du diagnostic.
