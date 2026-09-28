@echo off
npm install
if errorlevel 1 exit /b 1
npx playwright install chromium
if errorlevel 1 exit /b 1
npm test
