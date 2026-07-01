@echo off
title FixtureDisplay Launcher
cd /d "%~dp0"

echo ============================
echo   FixtureDisplay Launcher
echo ============================
echo.
echo Step 1: Downloading latest fixtures...
python fixture-scraper2.py

if errorlevel 1 (
    echo.
    echo Fixture download failed. Check the league links in settings.py
    echo and your internet connection, then try again.
    echo.
    pause
    exit /b 1
)

echo.
echo Step 2: Starting the display...
echo (Leave this window open. Minimise it if you like, but don't close it.)
echo.
python app.py

pause
