# Agent 3 — Durcissement des routes API

> **AVANT DE COMMENCER** : Lis `CLAUDE.md` à la racine du projet. Respecte les conventions (TypeScript strict, alias `@/`). Ne lance PAS `npm run build` — l'utilisateur le fera. Ne fais PAS de `git commit`.

> **PERSÉVÉRANCE** : Tu DOIS terminer 100% de ta mission. Ne t'arrête JAMAIS en cours de route. Ne demande JAMAIS "voulez-vous que je continue ?". Traite CHAQUE route API de ta zone l'une après l'autre, sans interruption. Si une route pose problème, note-le et passe à la suivante.

> **RAPPORT OBLIGATOIRE** : Une fois ta mission 100% terminée, crée le fichier `MULTITASK/RAPPORT-3.md` avec ce format exact :
> ```markdown
> # Rapport Agent 3 — Durcissement API
> ## Statut : ✅ Terminé / ⚠️ Partiel / ❌ Bloqué
> ## Fichiers modifiés
> - `chemin/route.ts` — ce qui a changé (validation ajoutée, erreurs typées, etc.)
> ## Problèmes rencontrés
> - (aucun) ou description
> ## Handoffs
> - (aucun) ou description
> ## Résumé chiffré
> - X routes API durcies
> - X validations ajoutées
> - X erreurs silencieuses corrigées
> ```

## Ta mission

Les routes API ont des problèmes de robustesse : erreurs génériques sans détail, parsing JSON silencieux qui avale les erreurs, et manque de validation. Tu vas les durcir sans changer leur comportement fonctionnel.

## Règles de zone

### ✅ Fichiers que tu PEUX modifier
- `app/api/gamification/onboarding/route.ts`
- `app/api/gamification/sprint-best/route.ts`
- `app/api/diagnostic/complete/route.ts`
- `app/api/random-exercise/route.ts`

### 🚫 Fichiers INTERDITS
- `app/api/_stripe/*` — les routes Stripe sont sensibles, on n'y touche pas
- Tout fichier en dehors de `app/api/`

## Problèmes identifiés

### 1. Erreurs génériques dans gamification
```typescript
// ACTUEL (mauvais)
catch { return NextResponse.json({ error: "Failed" }, { status: 500 }) }

// ATTENDU (bon)
catch (error) {
  const message = error instanceof Error ? error.message : "Unknown error";
  console.error("[gamification/onboarding]", message);
  return NextResponse.json({ error: "Internal server error" }, { status: 500 });
}
```

### 2. Parsing JSON silencieux
```typescript
// ACTUEL (mauvais) — si le body est invalide, on continue avec {}
const body = await request.json().catch(() => ({}));

// ATTENDU (bon)
let body;
try {
  body = await request.json();
} catch {
  return NextResponse.json({ error: "Invalid JSON body" }, { status: 400 });
}
```

### 3. Validation manquante
Après le parsing, valider que les champs requis sont présents avant de continuer.

## Étapes

### 1. Lis chaque route API de ta zone
Comprends exactement ce que chaque route fait, ses inputs et outputs attendus.

### 2. Pour chaque route, applique ce checklist :
- [ ] Le parsing JSON retourne une 400 si le body est invalide
- [ ] Les champs requis sont validés (retourne 400 avec message clair si manquant)
- [ ] L'authentification est vérifiée (retourne 401 si pas de session)
- [ ] Les erreurs Supabase sont loguées avec contexte (`console.error("[route-name]", ...)`)
- [ ] La réponse d'erreur au client est générique (pas de fuite d'info interne)
- [ ] Les types TypeScript sont corrects (pas de `any` implicite)

### 3. Pattern à suivre
```typescript
import { createClient } from "@/lib/supabase/server";
import { NextResponse } from "next/server";

export async function POST(request: Request) {
  // 1. Auth
  const supabase = await createClient();
  const { data: { user }, error: authError } = await supabase.auth.getUser();
  if (authError || !user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  // 2. Parse body
  let body: { field1: string; field2: number };
  try {
    body = await request.json();
  } catch {
    return NextResponse.json({ error: "Invalid JSON" }, { status: 400 });
  }

  // 3. Validate
  if (!body.field1) {
    return NextResponse.json({ error: "field1 is required" }, { status: 400 });
  }

  // 4. Business logic
  try {
    // ... Supabase calls
    return NextResponse.json({ success: true });
  } catch (error) {
    const msg = error instanceof Error ? error.message : "Unknown";
    console.error("[route-name]", msg);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
```

## Critères de succès
- [ ] Toutes les routes de ta zone suivent le pattern auth → parse → validate → execute → error
- [ ] Aucune erreur silencieuse (pas de `.catch(() => ({}))`)
- [ ] Logs avec préfixe de route (`[gamification/onboarding]`, etc.)
- [ ] Réponses d'erreur claires avec status HTTP approprié (400, 401, 500)
- [ ] TypeScript strict — pas de `any`
