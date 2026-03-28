import sharp from "sharp";
import { mkdir } from "node:fs/promises";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");
const source = resolve(root, "public/logo.png");
const outDir = resolve(root, "public/icons");

await mkdir(outDir, { recursive: true });

const sizes = [48, 72, 96, 128, 144, 192, 512];

// Standard icons (contain to fit, transparent background)
for (const size of sizes) {
  await sharp(source)
    .resize(size, size, { fit: "contain", background: { r: 0, g: 0, b: 0, alpha: 0 } })
    .png()
    .toFile(resolve(outDir, `icon-${size}x${size}.png`));
  console.log(`✓ icon-${size}x${size}.png`);
}

// Maskable icons (80% safe zone — pad the logo with background color)
const maskableSizes = [192, 512];
const bgColor = { r: 245, g: 241, b: 232, alpha: 1 }; // #F5F1E8 (paper)

for (const size of maskableSizes) {
  const logoSize = Math.round(size * 0.7); // logo takes 70% of the icon
  const padding = Math.round((size - logoSize) / 2);

  const resizedLogo = await sharp(source)
    .resize(logoSize, logoSize, { fit: "contain", background: { r: 0, g: 0, b: 0, alpha: 0 } })
    .png()
    .toBuffer();

  await sharp({
    create: { width: size, height: size, channels: 4, background: bgColor },
  })
    .composite([{ input: resizedLogo, left: padding, top: padding }])
    .png()
    .toFile(resolve(outDir, `maskable-icon-${size}x${size}.png`));

  console.log(`✓ maskable-icon-${size}x${size}.png`);
}

// Apple touch icon (180x180)
await sharp(source)
  .resize(180, 180, { fit: "contain", background: bgColor })
  .png()
  .toFile(resolve(root, "public/apple-touch-icon.png"));
console.log("✓ apple-touch-icon.png");

console.log("\nDone! All icons generated.");
