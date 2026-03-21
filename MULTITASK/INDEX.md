# MULTITASK — Missions parallèles d'amélioration

## Comment utiliser ce dossier

Ouvre **8 fenêtres Claude** et dis dans chacune :

> **"Tu es l'Agent X. Lis le fichier MULTITASK/AGENT-X.md et exécute ta mission."**

(Remplace X par le numéro : 1, 2, 3, 4, 5, 6, 7 ou 8)

---

## Carte des agents

| Agent | Mission | Zone de fichiers | Risque de conflit |
|-------|---------|-----------------|-------------------|
| **1** | Tests unitaires | `__tests__/` (nouveau) | ⬜ Aucun |
| **2** | Error boundaries & 404 | `app/(app)/*/error.tsx`, `app/global-error.tsx`, `app/not-found.tsx` | ⬜ Aucun |
| **3** | Durcissement API | `app/api/` | ⬜ Aucun |
| **4** | Accessibilité | `components/ui/`, `components/site-header.tsx`, `components/app-navigation.tsx` | ⬜ Aucun |
| **5** | Performance & lazy loading | `features/dashboard/components/`, `features/exercises/components/` | ⬜ Aucun |
| **6** | SEO & métadonnées | `app/(app)/*/page.tsx` (metadata export uniquement) | ⬜ Aucun |
| **7** | Contenu fiches | `content/fiches/` (nouveaux fichiers uniquement) | ⬜ Aucun |
| **8** | Constants & types | `lib/constants.ts`, `types/domain.ts` | ⬜ Aucun |

---

## Règles globales (chaque agent DOIT les lire)

1. **NE TOUCHE QUE les fichiers de ta zone.** Si tu dois modifier un fichier hors zone, écris le changement nécessaire dans un fichier `MULTITASK/HANDOFF-X.md` (X = ton numéro) et **ne fais pas la modification**.

2. **Fichiers verrouillés** (personne ne les modifie) :
   - `package.json`, `package-lock.json`
   - `tailwind.config.ts`, `tsconfig.json`
   - `next.config.ts`
   - `CLAUDE.md`

3. **Pas de `npm install`** — si tu as besoin d'un nouveau package, note-le dans ton HANDOFF.

4. **Pas de `git commit` ni `git push`** — l'utilisateur gère le versioning.

5. **Lis CLAUDE.md** avant de commencer pour respecter les conventions du projet.

6. **Avant de créer un fichier**, vérifie qu'il n'existe pas déjà.

7. **En cas de doute**, crée un fichier `MULTITASK/QUESTION-X.md` avec ta question plutôt que de deviner.
