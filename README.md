# Customer Feedback Automation - Take-Home Submission

## Tool choice
I used **Playwright with JavaScript** because it is lightweight, supports modern web applications, provides reliable browser automation, and automatically produces screenshots/traces on failures.

## Automated coverage
The suite contains 5 smoke/regression scenarios:

1. Landing page loads with branding and the **Get started** CTA.
2. Clicking **Get started** begins the next product journey.
3. The next screen exposes an actionable product/review element.
4. A user can open a product or review-related action.
5. An empty review submission is blocked or shows validation.

The selectors intentionally prefer user-visible roles/text over CSS selectors so the tests are closer to how a user interacts with the application and are less tightly coupled to implementation details.

## Prerequisites
- Node.js 18 or newer
- npm

## Setup
From this folder, run:

```bash
npm install
npx playwright install chromium
```

## Run the tests

```bash
npm test
```

For a visible browser run:

```bash
npm run test:headed
```

## Results
After execution, Playwright creates:

- `results/playwright-results.json` - machine-readable results
- `playwright-report/` - HTML report
- Screenshots, videos, and traces for failures when applicable

Open the HTML report with:

```bash
npm run report
```

## How I would run this in CI
For a startup, I would run this smoke suite on each pull request or deployment using GitHub Actions (or the team's existing CI platform). A failure in a critical flow would block promotion until reviewed.

## Notes on maintainability
- Keep smoke coverage small and fast.
- Prefer accessible role/text locators.
- Move repeated navigation/setup into helper functions.
- Add API-level tests separately when stable API contracts are available.
- Only automate flows that are stable and valuable enough to maintain.
