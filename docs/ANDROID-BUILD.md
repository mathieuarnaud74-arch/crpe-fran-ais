# Build Android TWA — CRPE Français

Guide pas-à-pas pour générer l'APK/AAB Android à partir du site PWA.

---

## Prérequis

1. **Node.js** 18+
2. **JDK 17** — [Adoptium](https://adoptium.net/temurin/releases/)
3. **Android SDK** — via [Android Studio](https://developer.android.com/studio) ou [Command-line tools](https://developer.android.com/studio#command-line-tools-only)
   - SDK Platform 34 (Android 14) + Build Tools 34
   - Variable d'environnement `ANDROID_HOME` configurée

---

## Méthode 1 : Bubblewrap CLI (recommandée)

### Installation

```bash
npm install -g @bubblewrap/cli
```

### Initialiser le projet

```bash
bubblewrap init --manifest=https://crpe-francais.fr/manifest.json
```

Bubblewrap génère un projet Android complet. Suivre les prompts interactifs pour le keystore.

### Génération du keystore

```bash
keytool -genkey -v \
  -keystore crpe-release.keystore \
  -alias crpe \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000
```

**IMPORTANT** : Conservez le keystore et le mot de passe en lieu sûr. Perdre le keystore = impossibilité de mettre à jour l'app.

### Récupérer le SHA-256

```bash
keytool -list -v -keystore crpe-release.keystore -alias crpe | grep SHA256
```

Mettre à jour `public/.well-known/assetlinks.json` avec ce fingerprint.

### Build

```bash
# Debug APK (pour tester)
bubblewrap build

# Release AAB (pour le Play Store)
bubblewrap build --release
```

---

## Méthode 2 : PWABuilder (plus simple, sans CLI)

1. Aller sur [pwabuilder.com](https://www.pwabuilder.com)
2. Entrer l'URL : `https://crpe-francais.fr`
3. PWABuilder valide le manifest et le service worker
4. Cliquer "Package for stores" > "Android"
5. Renseigner :
   - **Package name** : `fr.crpe.francais`
   - **App name** : `CRPE Français — Révisions`
   - **Launcher name** : `CRPE Français`
   - **Version code** : `1`
   - **Version name** : `1.0.0`
   - **Status bar color** : `#476257`
   - **Nav bar color** : `#F5F1E8`
   - **Splash background** : `#F5F1E8`
   - **Signing key** : "Create new" ou uploader le keystore existant
6. Télécharger le `.aab` signé

---

## Méthode 3 : Projet Android Studio manuel

Un fichier `twa-manifest.json` est fourni à la racine du projet avec toute la configuration TWA nécessaire.

---

## Mise à jour du Digital Asset Links

Après génération du keystore ET après activation de Play App Signing :

1. Récupérer le SHA-256 de votre **clé d'upload** :
   ```bash
   keytool -list -v -keystore crpe-release.keystore -alias crpe
   ```

2. Récupérer le SHA-256 de la **clé Play Signing** :
   - Google Play Console > Votre app > Configuration > Intégrité de l'app > Signature de l'app
   - Copier le certificat SHA-256

3. Mettre à jour `public/.well-known/assetlinks.json` :
   ```json
   [
     {
       "relation": ["delegate_permission/common.handle_all_urls"],
       "target": {
         "namespace": "android_app",
         "package_name": "fr.crpe.francais",
         "sha256_cert_fingerprints": [
           "AA:BB:CC:... (clé d'upload)",
           "DD:EE:FF:... (clé Play Signing)"
         ]
       }
     }
   ]
   ```

4. Déployer le site (push + Vercel redeploy)

5. Vérifier :
   ```
   https://crpe-francais.fr/.well-known/assetlinks.json
   https://digitalassetlinks.googleapis.com/v1/statements:list?source.web.site=https://crpe-francais.fr&relation=delegate_permission/common.handle_all_urls
   ```

---

## Vérification TWA sur appareil

```bash
# Installer l'APK debug
adb install app/build/outputs/apk/debug/app-debug.apk

# Vérifier que la barre d'URL ne s'affiche pas
# (elle disparaît si le Digital Asset Links est valide)
```

---

## Configuration Play Store

| Champ | Valeur |
|---|---|
| **Catégorie** | Éducation |
| **Public cible** | 18+ |
| **Tarif** | Gratuit |
| **Monétisation** | Via le site web (Stripe) — exemption TWA |
| **Privacy policy** | `https://crpe-francais.fr/mentions-legales` |

### Assets requis

| Asset | Taille | Source |
|---|---|---|
| Icône hi-res | 512x512 PNG | `public/icons/icon-512x512.png` |
| Feature graphic | 1024x500 PNG | `public/play-store/feature-graphic.png` |
| Screenshots | min 2, 320-3840px | Captures du site en mode mobile |

### Description courte (80 chars max)

> Révise le CRPE avec des exercices corrigés et un suivi personnalisé.

### Description longue

> Prépare le CRPE (Concours de Recrutement des Professeurs des Écoles) avec CRPE Français, ton compagnon de révision quotidien.
>
> Des centaines d'exercices corrigés en français : grammaire, orthographe, conjugaison, vocabulaire, compréhension de texte et plus encore.
>
> Fonctionnalités :
> - Diagnostic initial pour identifier tes points forts et faibles
> - Exercices interactifs (QCM, vrai/faux, réponse courte, catégorisation)
> - Fiches de révision synthétiques par sous-domaine
> - Suivi de progression avec statistiques détaillées
> - Système de gamification (XP, niveaux, badges, streaks)
> - Classement entre candidats
> - Révision espacée intelligente (SRS)
> - Mode chrono pour s'entraîner en conditions d'examen
>
> Accès gratuit : 30 exercices/jour + 5 fiches/jour.
> Abonnement premium : accès illimité.
>
> Contenu conforme aux programmes Éduscol et au référentiel CRPE.
