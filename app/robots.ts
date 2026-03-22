import type { MetadataRoute } from "next";

export default function robots(): MetadataRoute.Robots {
  return {
    rules: {
      userAgent: "*",
      allow: "/",
      disallow: [
        "/api/",
        "/admin/",
        "/tableau-de-bord",
        "/profil",
        "/historique",
        "/progression",
      ],
    },
    sitemap: "https://crpe-francais.fr/sitemap.xml",
  };
}
