import sharp from "sharp";
import { mkdir } from "node:fs/promises";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");
const outDir = resolve(root, "public/play-store");
const logoPath = resolve(root, "public/logo.png");

await mkdir(outDir, { recursive: true });

const WIDTH = 1024;
const HEIGHT = 500;

// Resize logo to fit nicely in the graphic
const logoSize = 220;
const logo = await sharp(logoPath)
  .resize(logoSize, logoSize, { fit: "contain", background: { r: 0, g: 0, b: 0, alpha: 0 } })
  .png()
  .toBuffer();

// Create the feature graphic with a gradient-like background using the app's colors
// Background: paper color (#F5F1E8) with a subtle accent band
const bgColor = { r: 245, g: 241, b: 232, alpha: 1 }; // #F5F1E8
const accentColor = { r: 74, g: 110, b: 143, alpha: 1 }; // #4A6E8F

// Create accent bar (bottom strip)
const accentBar = await sharp({
  create: { width: WIDTH, height: 6, channels: 4, background: accentColor },
}).png().toBuffer();

// Create the title text as SVG
const titleSvg = Buffer.from(`
<svg width="${WIDTH}" height="${HEIGHT}">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@700&amp;display=swap');
    .title {
      font-family: 'Manrope', 'Segoe UI', sans-serif;
      font-weight: 700;
      font-size: 52px;
      fill: #2C2420;
    }
    .subtitle {
      font-family: 'Manrope', 'Segoe UI', sans-serif;
      font-weight: 600;
      font-size: 26px;
      fill: #6B534A;
    }
    .badge {
      font-family: 'Manrope', 'Segoe UI', sans-serif;
      font-weight: 700;
      font-size: 18px;
      fill: white;
    }
  </style>

  <!-- Badge "Gratuit" -->
  <rect x="460" y="155" rx="20" ry="20" width="120" height="36" fill="#4A6E8F" />
  <text x="520" y="179" text-anchor="middle" class="badge">GRATUIT</text>

  <!-- Title -->
  <text x="460" y="240" class="title">CRPE Français</text>

  <!-- Subtitle -->
  <text x="460" y="285" class="subtitle">Exercices corrigés &amp; fiches de révision</text>
  <text x="460" y="320" class="subtitle">pour le concours des professeurs des écoles</text>

  <!-- Feature pills -->
  <rect x="460" y="350" rx="16" ry="16" width="140" height="32" fill="#D8D2C6" />
  <text x="530" y="372" text-anchor="middle" font-family="'Manrope', sans-serif" font-size="14" font-weight="600" fill="#2C2420">500+ exercices</text>

  <rect x="615" y="350" rx="16" ry="16" width="150" height="32" fill="#D8D2C6" />
  <text x="690" y="372" text-anchor="middle" font-family="'Manrope', sans-serif" font-size="14" font-weight="600" fill="#2C2420">Fiches synthèse</text>

  <rect x="780" y="350" rx="16" ry="16" width="110" height="32" fill="#D8D2C6" />
  <text x="835" y="372" text-anchor="middle" font-family="'Manrope', sans-serif" font-size="14" font-weight="600" fill="#2C2420">Suivi XP</text>
</svg>
`);

// Compose everything
await sharp({
  create: { width: WIDTH, height: HEIGHT, channels: 4, background: bgColor },
})
  .composite([
    // Logo on the left
    { input: logo, left: 180, top: Math.round((HEIGHT - logoSize) / 2) },
    // Title/subtitle SVG overlay
    { input: titleSvg, left: 0, top: 0 },
    // Accent bar at bottom
    { input: accentBar, left: 0, top: HEIGHT - 6 },
  ])
  .png()
  .toFile(resolve(outDir, "feature-graphic.png"));

console.log("✓ feature-graphic.png (1024x500)");
