# Gemini Project Context: CRPE Français MVP

This document provides a comprehensive overview of the `crpe-francais-mvp` project to guide future development and analysis.

## 1. Project Overview

This is a **freemium web application** designed to help users prepare for the French section of the CRPE (Concours de Recrutement de Professeurs des Écoles). It is built as a modern, server-centric web app.

-   **Core Purpose**: Provide CRPE-specific French exercises with a freemium model.
-   **Freemium Model**: Users have a daily quota of free questions. A premium monthly subscription, handled by Stripe, unlocks unlimited access.
-   **Tech Stack**:
    -   **Framework**: Next.js 15+ (App Router)
    -   **Language**: TypeScript (Strict)
    -   **Styling**: Tailwind CSS
    -   **UI Components**: shadcn/ui (New York style)
    -   **Backend-as-a-Service**: Supabase
        -   **Authentication**: Email/Password login
        -   **Database**: PostgreSQL
    -   **Payments**: Stripe for monthly subscriptions.

## 2. Key Directories & Architecture

The project follows a feature-oriented architecture, separating concerns by domain.

-   `app/`: Contains the application's routes, layouts, and pages, structured using Next.js App Router conventions. Key route groups include:
    -   `(marketing)`: Public-facing pages (landing, legal, etc.).
    -   `(auth)`: Authentication pages (login, signup).
    -   `(app)`: The core application for logged-in users (dashboard, exercises, etc.).
    -   `api/`: API routes, notably the Stripe webhook handler.
-   `components/`: Holds shared, reusable UI components, primarily built with `shadcn/ui`.
-   `features/`: Contains domain-specific logic and components, organized by feature (e.g., `auth`, `billing`, `exercises`).
-   `lib/`: Core libraries, utilities, and client configurations for external services.
    -   `lib/supabase/`: Supabase client and server helpers.
    -   `lib/stripe/`: Stripe server-side helpers.
-   `content/`: Static data, such as the questions for exercises, defined in TypeScript files.
-   `supabase/`: Database-related files, including migrations and seed scripts for populating content.

## 3. Building and Running

A `.env.local` file is required for full functionality, as detailed in `README.md`. A demo mode is available if Supabase/Stripe are not configured.

-   **Install Dependencies**:
    ```bash
    npm install
    ```
-   **Run in Development Mode**:
    ```bash
    npm run dev
    ```
    The application will be available at `http://localhost:3000`.

-   **Build for Production**:
    ```bash
    npm run build
    ```
-   **Run Production Server**:
    ```bash
    npm run start
    ```

## 4. Development Conventions

-   **Authentication**: User session management is handled on the server via `middleware.ts`, which uses the `@supabase/ssr` library to interact with Supabase Auth.
-   **UI & Styling**:
    -   Components are built as React Server Components (RSC) where possible.
    -   Styling is managed exclusively with Tailwind CSS, following the conventions of `shadcn/ui`.
-   **State Management**: Primarily relies on server-side state and URL state. Client-side state is managed locally within components.
-   **Database**:
    -   Schema changes are managed via SQL migration files in `supabase/migrations`.
    -   Initial data is populated using `supabase/seed.sql`.
-   **Code Quality**:
    -   **Type Checking**: Enforced via `tsc`. Run with `npm run typecheck`.
    -   **Linting**: Configured with ESLint. Run with `npm run lint`.
-   **Testing**: The project is set up with Storybook for component visualization and Vitest/Playwright for testing, though specific tests were not deeply analyzed.
