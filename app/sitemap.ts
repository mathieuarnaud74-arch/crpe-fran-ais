import type { MetadataRoute } from "next";

import { allFiches } from "@/content/fiches/index";

export default function sitemap(): MetadataRoute.Sitemap {
  const baseUrl = "https://crpe-francais.fr";

  const staticPages = [
    "/",
    "/offre",
    "/diagnostic",
    "/connexion",
    "/inscription",
    "/cgu",
    "/mentions-legales",
    "/politique-confidentialite",
  ];

  const fichePages = allFiches.map((fiche) => ({
    url: `${baseUrl}/fiches/${fiche.slug}`,
    lastModified: new Date(),
    changeFrequency: "monthly" as const,
    priority: 0.6,
  }));

  return [
    ...staticPages.map((p) => ({
      url: `${baseUrl}${p}`,
      lastModified: new Date(),
      changeFrequency: "monthly" as const,
      priority: p === "/" ? 1 : 0.7,
    })),
    ...fichePages,
  ];
}
