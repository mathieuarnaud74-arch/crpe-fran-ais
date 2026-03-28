/**
 * Generates public/fiche-slugs.json at build time.
 * The service worker reads this to know which fiche pages can be pre-cached for offline use.
 *
 * Usage: node scripts/generate-fiche-slugs.mjs
 * Runs via: npm run prebuild (added to package.json)
 */

import { readdir, readFile, writeFile } from "node:fs/promises";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");

async function extractSlugsFromIndex(indexPath) {
  const content = await readFile(indexPath, "utf-8");
  // Match slug values in TypeScript objects: slug: "some-slug"
  const slugRegex = /slug:\s*["']([^"']+)["']/g;
  const slugs = [];
  let match;
  while ((match = slugRegex.exec(content)) !== null) {
    slugs.push(match[1]);
  }
  return slugs;
}

async function extractSlugsFromDir(dirPath) {
  const files = await readdir(dirPath);
  const tsFiles = files.filter((f) => f.endsWith(".ts") && f !== "index.ts");
  const allSlugs = [];

  for (const file of tsFiles) {
    const content = await readFile(resolve(dirPath, file), "utf-8");
    const slugRegex = /slug:\s*["']([^"']+)["']/g;
    let match;
    while ((match = slugRegex.exec(content)) !== null) {
      allSlugs.push(match[1]);
    }
  }

  return allSlugs;
}

const frenchSlugs = await extractSlugsFromDir(resolve(root, "content/fiches"));
const mathSlugs = await extractSlugsFromDir(resolve(root, "content/fiches-maths"));

const allSlugs = [...new Set([...frenchSlugs, ...mathSlugs])].sort();

const output = {
  generated: new Date().toISOString(),
  count: allSlugs.length,
  slugs: allSlugs,
};

await writeFile(
  resolve(root, "public/fiche-slugs.json"),
  JSON.stringify(output, null, 2),
  "utf-8"
);

console.log(`✓ public/fiche-slugs.json — ${allSlugs.length} fiches`);
