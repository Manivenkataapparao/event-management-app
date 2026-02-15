# Event Management App - PowerShell Setup Script
# Run with: powershell -ExecutionPolicy Bypass -File setup.ps1

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "Event Management App - Automatic Setup" -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Cyan

# Check if Node.js is installed
Write-Host "Checking Node.js installation..." -ForegroundColor Yellow
$nodeCheck = node --version 2>$null
if ($null -eq $nodeCheck) {
    Write-Host "ERROR: Node.js is not installed!" -ForegroundColor Red
    Write-Host "Download from: https://nodejs.org/" -ForegroundColor Red
    Write-Host "`nPress any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit 1
}

Write-Host "✓ Node.js $nodeCheck is installed" -ForegroundColor Green
Write-Host ""

# Install Backend Dependencies
Write-Host "Installing Backend Dependencies..." -ForegroundColor Yellow
Set-Location backend
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to install backend dependencies" -ForegroundColor Red
    Write-Host "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit 1
}
Write-Host "✓ Backend dependencies installed" -ForegroundColor Green
Write-Host ""

# Seed Database
Write-Host "Seeding Sample Data..." -ForegroundColor Yellow
node seed.js
if ($LASTEXITCODE -ne 0) {
    Write-Host "WARNING: Seed script had issues, but continuing..." -ForegroundColor Yellow
}

# Return to root
Set-Location ..

# Install Frontend Dependencies
Write-Host "`nInstalling Frontend Dependencies..." -ForegroundColor Yellow
Set-Location frontend
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to install frontend dependencies" -ForegroundColor Red
    Write-Host "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit 1
}
Write-Host "✓ Frontend dependencies installed" -ForegroundColor Green

# Return to root
Set-Location ..

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "Setup Complete!" -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Cyan

Write-Host "NEXT STEPS:" -ForegroundColor Cyan
Write-Host "`n1. Open Terminal 1 and run:" -ForegroundColor Yellow
Write-Host "   cd backend" -ForegroundColor White
Write-Host "   npm run dev" -ForegroundColor White

Write-Host "`n2. Open Terminal 2 and run:" -ForegroundColor Yellow
Write-Host "   cd frontend" -ForegroundColor White
Write-Host "   npm start" -ForegroundColor White

Write-Host "`n3. Open in browser:" -ForegroundColor Yellow
Write-Host "   http://localhost:3000" -ForegroundColor Cyan

Write-Host "`nPress any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
