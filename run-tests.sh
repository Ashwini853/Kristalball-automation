#!/bin/sh
set -e
npm install
npx playwright install chromium
npm test
