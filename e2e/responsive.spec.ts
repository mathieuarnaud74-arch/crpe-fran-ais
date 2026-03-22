import { test, expect } from "@playwright/test";

test.describe("Responsive behavior", () => {
  test("mobile viewport: hamburger menu is visible, desktop nav is hidden", async ({ page }) => {
    await page.setViewportSize({ width: 375, height: 812 });
    await page.goto("/");

    // Hamburger menu button should be visible
    const menuButton = page.getByRole("button", { name: "Ouvrir le menu de navigation" });
    await expect(menuButton).toBeVisible();

    // Desktop nav should be hidden (lg:flex means hidden below lg breakpoint)
    const desktopNav = page.locator('nav[aria-label="Navigation principale"]');
    await expect(desktopNav).toBeHidden();
  });

  test("desktop viewport: full nav is visible, hamburger is hidden", async ({ page }) => {
    await page.setViewportSize({ width: 1280, height: 800 });
    await page.goto("/");

    // Desktop nav should be visible
    const desktopNav = page.locator('nav[aria-label="Navigation principale"]');
    await expect(desktopNav).toBeVisible();

    // Hamburger menu button should be hidden
    const menuButton = page.getByRole("button", { name: "Ouvrir le menu de navigation" });
    await expect(menuButton).toBeHidden();
  });

  test("mobile menu opens and closes correctly", async ({ page }) => {
    await page.setViewportSize({ width: 375, height: 812 });
    await page.goto("/");

    // Open the mobile menu
    const menuButton = page.getByRole("button", { name: "Ouvrir le menu de navigation" });
    await menuButton.click();

    // Mobile nav should now be visible
    const mobileNav = page.locator('nav[aria-label="Navigation mobile"]');
    await expect(mobileNav).toBeVisible();

    // Close the menu by clicking the close button
    const closeButton = page.getByRole("button", { name: /fermer|close/i });
    await closeButton.click();

    // Mobile nav should be hidden again
    await expect(mobileNav).toBeHidden();
  });
});
