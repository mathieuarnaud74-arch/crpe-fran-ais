#!/bin/bash
# Hook Stop — vérifie que CHANGELOG.md est mis à jour si du code a été modifié.

INPUT=$(cat)

# Sécurité anti-boucle infinie : si le hook est déjà en cours, on laisse passer.
if echo "$INPUT" | grep -q '"stop_hook_active":true\|"stop_hook_active": true'; then
  exit 0
fi

# Compter les fichiers modifiés/créés (tracked + untracked), en excluant :
# - CHANGELOG.md lui-même
# - artefacts de build (.next, node_modules)
MODIFIED=$(git status --porcelain 2>/dev/null \
  | grep -v "CHANGELOG" \
  | grep -vE "\.next/|node_modules/" \
  | grep -c ".")

CHANGELOG=$(git status --porcelain 2>/dev/null | grep -c "CHANGELOG")

if [ "$MODIFIED" -gt "0" ] && [ "$CHANGELOG" -eq "0" ]; then
  DATE=$(date +%Y-%m-%d)
  echo "{\"decision\":\"block\",\"reason\":\"CHANGELOG non mis a jour : $MODIFIED fichier(s) modifie(s). Ajouter une entree '## [$DATE] - description' en haut de CHANGELOG.md avant de terminer.\"}"
fi
