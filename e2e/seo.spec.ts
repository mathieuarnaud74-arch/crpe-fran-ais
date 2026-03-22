import { test, expect } from "@playwright/test";

test.describe("SEO elements", () => {
  test("homepage has proper meta title", async ({ page }) => {
    await page.goto("/");
    await expect(page).toHaveTitle(/CRPE Français/);
  });

  test("homepage has meta description", async ({ page }) => {
    await page.goto("/");
    const description = page.locator('meta[name="description"]');
    await expect(description).toHaveAttribute("content", /CRPE/);
  });

  test("homepage has Open Graph title", async ({ page }) => {
    await page.goto("/");
    const ogTitle = page.locator('meta[property="og:title"]');
    await expect(ogTitle).toHaveAttribute("content", /CRPE/);
  });

  test("homepage has Open Graph description", async ({ page }) => {
    await page.goto("/");
    const ogDescription = page.locator('meta[property="og:description"]');
    await expect(ogDescription).toHaveAttribute("content", /.+/);
  });

  test("homepage has Open Graph site name", async ({ page }) => {
    await page.goto("/");
    const ogSiteName = page.locator('meta[property="og:site_name"]');
    await expect(ogSiteName).toHaveAttribute("content", /CRPE/);
  });

  test("robots.txt is accessible", async ({ page }) => {
    const response = await page.goto("/robots.txt");
    expect(response).not.toBeNull();
    expect(response!.status()).toBe(200);
  });

  test("sitemap.xml is accessible", async ({ page }) => {
    const response = await page.goto("/sitemap.xml");
    expect(response).not.toBeNull();
    expect(response!.status()).toBe(200);
  });
});
