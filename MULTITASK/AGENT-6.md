# Agent 6 — SEO & métadonnées

> **AVANT DE COMMENCER** : Lis `CLAUDE.md` à la racine du projet. ATTENTION : tu ne modifies QUE les exports `metadata` / `generateMetadata` en haut des fichiers page.tsx. Tu ne touches JAMAIS au JSX, au rendu, ni à la logique. Ne lance PAS `npm run build` — l'utilisateur le fera. Ne fais PAS de `git commit`.

> **PERSÉVÉRANCE** : Tu DOIS terminer 100% de ta mission. Ne t'arrête JAMAIS en cours de route. Ne demande JAMAIS "voulez-vous que je continue ?". Parcours TOUTES les pages listées une par une. Commence par le layout (title.template), puis les pages statiques, puis les pages dynamiques. Ne t'arrête qu'une fois toutes les pages traitées.

> **RAPPORT OBLIGATOIRE** : Une fois ta mission 100% terminée, crée le fichier `MULTITASK/RAPPORT-6.md` avec ce format exact :
> ```markdown
> # Rapport Agent 6 — SEO & métadonnées
> ## Statut : ✅ Terminé / ⚠️ Partiel / ❌ Bloqué
> ## Fichiers modifiés
> - `chemin/page.tsx` — metadata ajouté (title: "X", description: "Y")
> ## Fichiers déjà conformes
> - `chemin/page.tsx` — avait déjà un export metadata
> ## Problèmes rencontrés
> - (aucun) ou description
> ## Handoffs
> - (aucun) ou description
> ## Résumé chiffré
> - X pages avec metadata ajouté/amélioré
> - X pages déjà conformes
> - title.template configuré : oui/non
> ```

## Ta mission

Ajouter des exports `metadata` (ou `generateMetadata`) sur toutes les pages de l'app pour améliorer le SEO, les partages sociaux et l'expérience utilisateur (titre d'onglet).

## Règles de zone

### ✅ Fichiers que tu PEUX modifier
Tu ne modifies QUE l'export `metadata` en haut de chaque fichier. **Ne touche pas au JSX/rendu.**

- `app/(app)/tableau-de-bord/page.tsx` — ajouter/améliorer metadata
- `app/(app)/francais/page.tsx`
- `app/(app)/francais/[domain]/page.tsx` — `generateMetadata` dynamique
- `app/(app)/exercices/page.tsx`
- `app/(app)/exercices/[id]/page.tsx` — `generateMetadata` dynamique
- `app/(app)/fiches/page.tsx`
- `app/(app)/fiches/[slug]/page.tsx` — `generateMetadata` dynamique
- `app/(app)/progression/page.tsx`
- `app/(app)/historique/page.tsx`
- `app/(app)/ressources/page.tsx`
- `app/(app)/ressources/glossaire/page.tsx`
- `app/(app)/abonnement/page.tsx`
- `app/(app)/profil/page.tsx`
- `app/(app)/layout.tsx` — metadata par défaut du layout (si pas déjà fait)
- `app/layout.tsx` — metadata racine (vérifier/compléter)

### 🚫 Fichiers INTERDITS
- Ne modifie AUCUN JSX, rendu, logique, ou style
- Ne touche pas aux pages marketing `app/(marketing)/`
- Ne touche pas aux API routes

## Pattern pour les pages statiques

```tsx
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Tableau de bord",
  description: "Suivez votre progression et accédez à vos exercices de préparation au CRPE Français.",
};
```

## Pattern pour les pages dynamiques

```tsx
import type { Metadata } from "next";

type Props = { params: Promise<{ slug: string }> };

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { slug } = await params;
  // Récupère les données nécessaires (titre de la fiche, nom du domaine, etc.)
  // ...
  return {
    title: `${fiche.title} — Fiche CRPE`,
    description: fiche.description || `Fiche de révision : ${fiche.title}`,
  };
}
```

## Conventions de titres

Next.js App Router supporte un `title.template` dans le layout parent :
```tsx
// app/(app)/layout.tsx
export const metadata: Metadata = {
  title: {
    template: "%s | CRPE Français",
    default: "CRPE Français — Préparation au concours",
  },
};
```

Ainsi, chaque page enfant n'a qu'à définir :
```tsx
export const metadata: Metadata = {
  title: "Tableau de bord", // Rendu : "Tableau de bord | CRPE Français"
};
```

## Titres suggérés par page

| Page | Title | Description |
|------|-------|-------------|
| layout (app) | template: `%s \| CRPE Français` | — |
| tableau-de-bord | `Tableau de bord` | Votre espace de révision personnalisé pour le CRPE Français |
| francais | `Domaines du français` | Explorez les 7 domaines du programme de français au CRPE |
| francais/[domain] | `{Nom du domaine}` (dynamique) | Exercices et fiches pour {domaine} |
| exercices | `Exercices` | Banque d'exercices corrigés pour le CRPE Français |
| exercices/[id] | `Exercice — {sujet}` (dynamique) | — |
| fiches | `Fiches de révision` | Fiches synthétiques pour réviser le CRPE Français |
| fiches/[slug] | `{Titre fiche}` (dynamique) | — |
| progression | `Ma progression` | Statistiques détaillées de votre préparation au CRPE |
| historique | `Historique` | Historique de vos sessions d'entraînement |
| ressources | `Ressources` | Ressources complémentaires pour le CRPE Français |
| glossaire | `Glossaire` | Glossaire des termes linguistiques et didactiques |
| abonnement | `Abonnement` | Gérez votre abonnement CRPE Français |
| profil | `Mon profil` | Paramètres de votre compte |

## Étapes

1. **Lis `app/layout.tsx`** et `app/(app)/layout.tsx` pour voir les metadata existantes
2. **Configure le `title.template`** dans `app/(app)/layout.tsx` si absent
3. **Parcours chaque page** et ajoute l'export `metadata` approprié
4. **Pour les pages dynamiques** (`[domain]`, `[id]`, `[slug]`), lis la logique de fetch existante pour récupérer le titre sans dupliquer les appels

## Critères de succès
- [ ] Toutes les pages de `app/(app)/` ont un export `metadata` ou `generateMetadata`
- [ ] `title.template` configuré dans le layout app
- [ ] Les pages dynamiques ont des titres basés sur les données
- [ ] Descriptions pertinentes (pas de texte générique "Page de...")
- [ ] `npm run build` passe sans erreur
