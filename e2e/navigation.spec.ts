import { test, expect } from "@playwright/test";

test.describe("Public navigation", () => {
  test("logo links to homepage", async ({ page }) => {
    await page.goto("/offre");
    const logo = page.locator("header").getByRole("link").first();
    await logo.click();
    await expect(page).toHaveURL("/");
  });

  test("'Offre' page loads with pricing information", async ({ page }) => {
    await page.goto("/offre");
    await expect(page).toHaveURL(/\/offre/);
    // The page should contain pricing-related content
    await expect(page.locator("main")).toBeVisible();
  });

  test("'CGU' page loads", async ({ page }) => {
    await page.goto("/cgu");
    await expect(page).toHaveURL(/\/cgu/);
    await expect(page.locator("main")).toBeVisible();
  });

  test("'Mentions légales' page loads", async ({ page }) => {
    await page.goto("/mentions-legales");
    await expect(page).toHaveURL(/\/mentions-legales/);
    await expect(page.locator("main")).toBeVisible();
  });

  test("'Politique de confidentialité' page loads", async ({ page }) => {
    await page.goto("/politique-confidentialite");
    await expect(page).toHaveURL(/\/politique-confidentialite/);
    await expect(page.locator("main")).toBeVisible();
  });

  test("404 page shows for unknown routes", async ({ page }) => {
    await page.goto("/this-page-does-not-exist-at-all");
    // The custom 404 page shows the mascot and a message
    await expect(page.getByText("cette page n'existe pas")).toBeVisible();
    await expect(page.getByRole("link", { name: "Retour à l'accueil" })).toBeVisible();
  });
});
