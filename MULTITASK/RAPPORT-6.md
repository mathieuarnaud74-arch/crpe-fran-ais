# Rapport Agent 6 — SEO & métadonnées

## Statut : ✅ Terminé

## Fichiers modifiés

- `app/(app)/layout.tsx` — ajout metadata avec title.template `%s | CRPE Français`
- `app/(app)/tableau-de-bord/page.tsx` — metadata ajouté (title: "Tableau de bord", description: "Votre espace de révision personnalisé pour le CRPE Français.")
- `app/(app)/francais/page.tsx` — metadata ajouté (title: "Domaines du français", description: "Explorez les 7 domaines du programme de français au CRPE.")
- `app/(app)/francais/[domain]/page.tsx` — generateMetadata dynamique basé sur FRENCH_DOMAIN_CONFIG (title: nom du domaine, description: détail du domaine)
- `app/(app)/exercices/page.tsx` — metadata ajouté (title: "Exercices", description: "Banque d'exercices corrigés pour le CRPE Français.")
- `app/(app)/exercices/[id]/page.tsx` — generateMetadata dynamique basé sur getExerciseSessionById (title: "Exercice — {titre}", description: summary de la session)
- `app/(app)/fiches/page.tsx` — metadata ajouté (title: "Fiches de révision", description: "Fiches synthétiques pour réviser le CRPE Français.")
- `app/(app)/fiches/[slug]/page.tsx` — generateMetadata dynamique basé sur getFicheBySlug (title: titre fiche, description: subtitle ou fallback)
- `app/(app)/progression/page.tsx` — metadata ajouté (title: "Ma progression", description: "Statistiques détaillées de votre préparation au CRPE.")
- `app/(app)/historique/page.tsx` — metadata ajouté (title: "Historique", description: "Historique de vos sessions d'entraînement.")
- `app/(app)/ressources/page.tsx` — metadata ajouté (title: "Ressources", description: "Ressources complémentaires pour le CRPE Français.")
- `app/(app)/abonnement/page.tsx` — metadata ajouté (title: "Abonnement", description: "Gérez votre abonnement CRPE Français.")
- `app/(app)/profil/page.tsx` — metadata ajouté (title: "Mon profil", description: "Paramètres de votre compte.")

## Fichiers déjà conformes

- `app/layout.tsx` — avait déjà un export metadata (title: "CRPE Français", description complète)

## Problèmes rencontrés

- `app/(app)/ressources/glossaire/page.tsx` — ce fichier est un Client Component (`"use client"`). Next.js interdit l'export de `metadata` depuis un Client Component. Pour résoudre, il faudrait soit créer un `app/(app)/ressources/glossaire/layout.tsx` avec le metadata, soit convertir la page en Server Component. Cela sort du périmètre défini (je ne dois pas toucher au JSX/rendu/logique).

## Handoffs

- **Agent responsable du glossaire** : créer `app/(app)/ressources/glossaire/layout.tsx` avec `export const metadata: Metadata = { title: "Glossaire", description: "Glossaire des termes linguistiques et didactiques." };` pour couvrir cette page.

## Résumé chiffré

- 13 pages avec metadata ajouté/amélioré
- 1 page déjà conforme (app/layout.tsx)
- 1 page non traitée (glossaire — Client Component)
- title.template configuré : oui (`%s | CRPE Français` dans app/(app)/layout.tsx)
