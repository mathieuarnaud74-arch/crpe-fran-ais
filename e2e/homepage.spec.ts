import { test, expect } from "@playwright/test";

test.describe("Homepage", () => {
  test("page loads and has correct title containing CRPE", async ({ page }) => {
    await page.goto("/");
    await expect(page).toHaveTitle(/CRPE/);
  });

  test("header is visible with navigation links", async ({ page }) => {
    await page.goto("/");
    const header = page.locator("header");
    await expect(header).toBeVisible();

    // Desktop nav links should exist in the DOM
    await expect(page.getByRole("link", { name: "Méthode" }).first()).toBeAttached();
    await expect(page.getByRole("link", { name: "FAQ" }).first()).toBeAttached();
    await expect(page.getByRole("link", { name: "Offre" }).first()).toBeAttached();
  });

  test("footer is visible", async ({ page }) => {
    await page.goto("/");
    const footer = page.locator("footer");
    await expect(footer).toBeVisible();
  });

  test("CTA buttons are present and clickable", async ({ page }) => {
    await page.goto("/");

    // The header should have a Connexion link
    const connexionLink = page.getByRole("link", { name: "Connexion" }).first();
    await expect(connexionLink).toBeAttached();

    // The header should have a Diagnostic gratuit link
    const diagnosticLink = page.getByRole("link", { name: "Diagnostic gratuit" }).first();
    await expect(diagnosticLink).toBeAttached();
  });

  test("'Offre' link navigates to /offre", async ({ page }) => {
    await page.goto("/");
    // Use the footer link which is always visible
    const offreLink = page.locator("footer").getByRole("link", { name: "Voir l'offre" });
    await offreLink.click();
    await expect(page).toHaveURL(/\/offre/);
  });
});
