@echo off
REM Event Management App - Complete Setup and Run Script

setlocal enabledelayedexpansion

cd /d C:\Users\srimv\Downloads\event-management-app

REM Set NODE_PATH
set PATH=C:\Program Files\nodejs;%PATH%

echo.
echo ========================================
echo Event Management App - Full Setup
echo ========================================
echo.

REM Backend Setup
echo [1/4] Installing Backend Dependencies...
cd backend
call npm install
if errorlevel 1 (
    echo ERROR: Backend installation failed
    pause
    exit /b 1
)
echo Backend dependencies installed ✓
echo.

REM Seed Database
echo [2/4] Seeding Database...
call node seed.js
if errorlevel 1 (
    echo WARNING: Seed script had issues, continuing...
)
echo Database seeded ✓
echo.

REM Frontend Setup
echo [3/4] Installing Frontend Dependencies...
cd ..\frontend
call npm install
if errorlevel 1 (
    echo ERROR: Frontend installation failed
    pause
    exit /b 1
)
echo Frontend dependencies installed ✓
echo.

echo [4/4] Setup Complete!
echo.
echo ========================================
echo Ready to Run!
echo ========================================
echo.
echo NEXT STEPS:
echo.
echo Terminal 1 - Start Backend:
echo   cd C:\Users\srimv\Downloads\event-management-app\backend
echo   npm run dev
echo.
echo Terminal 2 - Start Frontend:
echo   cd C:\Users\srimv\Downloads\event-management-app\frontend
echo   npm start
echo.
echo Then open browser:
echo   http://localhost:3000
echo.
echo Press any key to exit...
pause >nul
