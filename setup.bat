@echo off
REM Event Management App - Automatic Setup Script
REM This script installs dependencies and starts the application

echo.
echo ========================================
echo Event Management App - Setup
echo ========================================
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed!
    echo Download from: https://nodejs.org/
    echo.
    pause
    exit /b 1
)

echo Node.js is installed ✓
echo.

REM Install Backend Dependencies
echo Installing Backend Dependencies...
cd backend
call npm install

if errorlevel 1 (
    echo ERROR: Failed to install backend dependencies
    pause
    exit /b 1
)

echo Backend dependencies installed ✓
echo.

REM Seed Database
echo Seeding Sample Data...
call node seed.js

if errorlevel 1 (
    echo WARNING: Seed script had issues, but continuing...
)

echo.
echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo To start the application:
echo.
echo Terminal 1 - Backend (run in backend folder):
echo   npm run dev
echo.
echo Terminal 2 - Frontend (run in frontend folder):
echo   npm install
echo   npm start
echo.
echo Then open: http://localhost:3000
echo.
pause
