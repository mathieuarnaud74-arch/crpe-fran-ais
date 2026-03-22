# Fiches Mathématiques CRPE — Plan de production

## Conventions

- Chaque fiche = 1 fichier `.ts` dans `content/fiches-maths/`
- Nommage : `{domaine}-{sujet}-{model}.ts` (ex: `nombres-fractions-sprint.ts`)
- 3 modèles : **sprint** (5 min), **reference** (12 min), **operatoire** (8 min)
- Type : `Fiche` importé depuis `@/features/fiches/types`
- `domaine` = un des 5 `MathSubdomain` : `nombres_calcul`, `geometrie`, `grandeurs_mesures`, `organisation_donnees`, `didactique_maths`
- Export nommé, puis ajout dans `content/fiches-maths/index.ts` → `allFichesMaths`
- Quiz : 5 items minimum par fiche (vrai/faux avec explication)
- Langue : terminologie Éduscol officielle, pas d'anglicismes

---

## Agent 1 — Nombres et calcul (16 fiches)

### Sprint (8 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 1 | `nombres-entiers-naturels-sprint.ts` | Entiers naturels : propriétés et opérations | debutant | free |
| 2 | `nombres-entiers-relatifs-sprint.ts` | Entiers relatifs : règles de calcul | intermediaire | free |
| 3 | `nombres-decimaux-sprint.ts` | Nombres décimaux : écriture et comparaison | debutant | free |
| 4 | `nombres-fractions-sprint.ts` | Fractions : simplification et opérations | intermediaire | free |
| 5 | `nombres-divisibilite-sprint.ts` | Divisibilité : critères et applications | intermediaire | premium |
| 6 | `nombres-pgcd-ppcm-sprint.ts` | PGCD et PPCM : méthode et usage | avance | premium |
| 7 | `nombres-puissances-racines-sprint.ts` | Puissances et racines carrées | intermediaire | premium |
| 8 | `nombres-proportionnalite-sprint.ts` | Proportionnalité : reconnaître et calculer | debutant | free |

### Reference (5 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 9 | `nombres-numeration-positionnelle-reference.ts` | Numération positionnelle : principes et pièges | intermediaire | free |
| 10 | `nombres-fractions-decimaux-reference.ts` | Fractions et décimaux : passages et équivalences | intermediaire | premium |
| 11 | `nombres-arithmetique-reference.ts` | Arithmétique : diviseurs, multiples, nombres premiers | avance | premium |
| 12 | `nombres-proportionnalite-reference.ts` | Proportionnalité : tableaux, graphiques, coefficients | intermediaire | free |
| 13 | `nombres-calcul-mental-reference.ts` | Calcul mental : stratégies et automatismes | debutant | free |

### Opératoire (3 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 14 | `nombres-fractions-operations-operatoire.ts` | Additionner et multiplier des fractions | intermediaire | free |
| 15 | `nombres-pgcd-operatoire.ts` | Calculer un PGCD : Euclide pas à pas | avance | premium |
| 16 | `nombres-probleme-proportionnalite-operatoire.ts` | Résoudre un problème de proportionnalité | intermediaire | free |

---

## Agent 2 — Géométrie (16 fiches)

### Sprint (8 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 17 | `geometrie-droites-remarquables-sprint.ts` | Droites remarquables du triangle | intermediaire | free |
| 18 | `geometrie-angles-sprint.ts` | Angles : vocabulaire et propriétés | debutant | free |
| 19 | `geometrie-triangles-sprint.ts` | Triangles : classification et propriétés | debutant | free |
| 20 | `geometrie-quadrilateres-sprint.ts` | Quadrilatères : classification et propriétés | intermediaire | free |
| 21 | `geometrie-cercle-sprint.ts` | Cercle : vocabulaire et théorèmes | intermediaire | premium |
| 22 | `geometrie-symetrie-axiale-sprint.ts` | Symétrie axiale : construire et reconnaître | debutant | free |
| 23 | `geometrie-symetrie-centrale-sprint.ts` | Symétrie centrale : propriétés | intermediaire | premium |
| 24 | `geometrie-pythagore-sprint.ts` | Théorème de Pythagore : appliquer et vérifier | intermediaire | free |

### Reference (5 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 25 | `geometrie-figures-planes-reference.ts` | Figures planes : propriétés complètes | intermediaire | free |
| 26 | `geometrie-solides-reference.ts` | Solides : patron, vocabulaire, propriétés | intermediaire | premium |
| 27 | `geometrie-transformations-reference.ts` | Transformations du plan : guide complet | avance | premium |
| 28 | `geometrie-theoremes-reference.ts` | Pythagore et Thalès : démonstrations et applications | avance | premium |
| 29 | `geometrie-reperage-reference.ts` | Repérage dans le plan et dans l'espace | intermediaire | free |

### Opératoire (3 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 30 | `geometrie-construire-symetrique-operatoire.ts` | Construire le symétrique d'une figure | debutant | free |
| 31 | `geometrie-pythagore-operatoire.ts` | Appliquer Pythagore : arbre de décision | intermediaire | free |
| 32 | `geometrie-patron-solide-operatoire.ts` | Tracer le patron d'un solide | intermediaire | premium |

---

## Agent 3 — Grandeurs et mesures + Organisation de données (16 fiches)

### Grandeurs et mesures — Sprint (5 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 33 | `grandeurs-unites-longueur-sprint.ts` | Unités de longueur : conversions | debutant | free |
| 34 | `grandeurs-unites-masse-capacite-sprint.ts` | Masse et capacité : conversions | debutant | free |
| 35 | `grandeurs-perimetre-sprint.ts` | Périmètres des figures usuelles | debutant | free |
| 36 | `grandeurs-aires-sprint.ts` | Aires : formules essentielles | intermediaire | free |
| 37 | `grandeurs-volumes-sprint.ts` | Volumes : formules essentielles | intermediaire | premium |

### Grandeurs et mesures — Reference (3 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 38 | `grandeurs-conversions-reference.ts` | Système métrique : conversions complètes | intermediaire | free |
| 39 | `grandeurs-aires-volumes-reference.ts` | Aires et volumes : toutes les formules | avance | premium |
| 40 | `grandeurs-echelles-plans-reference.ts` | Échelles et plans : lecture et calcul | intermediaire | premium |

### Grandeurs et mesures — Opératoire (2 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 41 | `grandeurs-conversion-operatoire.ts` | Convertir une grandeur : méthode du tableau | debutant | free |
| 42 | `grandeurs-aire-figure-complexe-operatoire.ts` | Calculer l'aire d'une figure complexe | intermediaire | free |

### Organisation de données — Sprint (3 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 43 | `donnees-tableaux-graphiques-sprint.ts` | Lire un tableau et un graphique | debutant | free |
| 44 | `donnees-moyenne-mediane-sprint.ts` | Moyenne et médiane : calcul et distinction | intermediaire | free |
| 45 | `donnees-probabilites-sprint.ts` | Probabilités : vocabulaire et calcul de base | intermediaire | premium |

### Organisation de données — Reference (2 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 46 | `donnees-statistiques-reference.ts` | Statistiques descriptives : guide complet | avance | premium |
| 47 | `donnees-probabilites-reference.ts` | Probabilités : situations d'équiprobabilité et arbres | avance | premium |

### Organisation de données — Opératoire (1 fiche)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 48 | `donnees-diagramme-operatoire.ts` | Construire et interpréter un diagramme | debutant | free |

---

## Agent 4 — Didactique des maths + fiches transversales (14 fiches)

### Didactique — Sprint (5 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 49 | `didactique-numeration-cycles-sprint.ts` | Enseigner la numération : repères par cycle | intermediaire | free |
| 50 | `didactique-calcul-pose-sprint.ts` | Calcul posé : progression et erreurs d'élèves | intermediaire | free |
| 51 | `didactique-resolution-problemes-sprint.ts` | Résolution de problèmes : typologie et démarches | intermediaire | free |
| 52 | `didactique-geometrie-manipulation-sprint.ts` | Géométrie à l'école : du manipuler au démontrer | intermediaire | premium |
| 53 | `didactique-fractions-decimaux-sprint.ts` | Fractions et décimaux : obstacles et remédiations | avance | premium |

### Didactique — Reference (5 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 54 | `didactique-erreurs-eleves-reference.ts` | Analyse d'erreurs d'élèves en maths : guide | intermediaire | free |
| 55 | `didactique-programmes-cycles-reference.ts` | Programmes de maths cycles 1-2-3 : repères clés | intermediaire | free |
| 56 | `didactique-variables-didactiques-reference.ts` | Variables didactiques : adapter la difficulté | avance | premium |
| 57 | `didactique-representations-reference.ts` | Représentations en maths : du concret à l'abstrait | intermediaire | premium |
| 58 | `didactique-differenciation-reference.ts` | Différenciation en maths : outils et stratégies | avance | premium |

### Didactique — Opératoire (2 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 59 | `didactique-analyser-erreur-operatoire.ts` | Analyser une erreur d'élève : arbre de décision | intermediaire | free |
| 60 | `didactique-concevoir-sequence-operatoire.ts` | Concevoir une séquence de maths | avance | premium |

### Fiches transversales — Sprint (2 fiches)
| # | Fichier | Titre | Difficulté | Accès |
|---|---------|-------|------------|-------|
| 61 | `nombres-ordre-grandeur-sprint.ts` | Ordres de grandeur et estimation | debutant | free |
| 62 | `nombres-ecriture-scientifique-sprint.ts` | Écriture scientifique et notation | intermediaire | premium |

---

## Récapitulatif

| Agent | Domaine(s) | Fiches | Sprint | Reference | Opératoire |
|-------|-----------|--------|--------|-----------|------------|
| **Agent 1** | Nombres et calcul | 16 | 8 | 5 | 3 |
| **Agent 2** | Géométrie | 16 | 8 | 5 | 3 |
| **Agent 3** | Grandeurs + Données | 16 | 8 | 5 | 3 |
| **Agent 4** | Didactique + transversal | 14 | 7 | 5 | 2 |
| **Total** | | **62** | **31** | **20** | **11** |

---

## Instructions pour chaque agent

```
1. Lire FICHES_MATHS.md pour ta liste de fiches assignées
2. Lire features/fiches/types.ts pour le type Fiche
3. Lire 1 fiche sprint + 1 fiche reference + 1 fiche operatoire existante dans content/fiches/ comme modèle
4. Créer tes fiches dans content/fiches-maths/
5. Exporter chaque fiche avec un export nommé (ex: export const ficheName: Fiche = {...})
6. Ne PAS modifier content/fiches-maths/index.ts — il sera créé à la fin
7. Utiliser la terminologie Éduscol officielle
8. Chaque quiz doit avoir 5 items minimum (vrai/faux + explication)
9. Vérifier que le domaine est bien un MathSubdomain valide
```

## Statut

- [ ] Agent 1 — Nombres et calcul (0/16)
- [ ] Agent 2 — Géométrie (0/16)
- [ ] Agent 3 — Grandeurs + Données (0/16)
- [ ] Agent 4 — Didactique + transversal (0/14)
- [ ] Index final `content/fiches-maths/index.ts`
- [ ] Branchement dans `features/fiches/lib/get-fiche.ts`
- [ ] Page `/fiches-maths` avec filtres et affichage
