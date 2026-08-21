@echo off
setlocal EnableExtensions EnableDelayedExpansion

title AICD Dashboard Launcher
echo ========================================================
echo   AICD RTL Gate Estimator Dashboard
echo ========================================================
echo.

set "DASHBOARD_DIR=%~dp0dashboard"
set "PREFERRED_PORT=3000"
set "PORT_RANGE=3000..3010"
set "URL="

if not exist "%DASHBOARD_DIR%\package.json" (
    echo Dashboard directory not found: %DASHBOARD_DIR%
    pause
    exit /b 1
)

REM Free only an unhealthy listener on the preferred port.
powershell -NoProfile -Command ^
  "$port=%PREFERRED_PORT%; try { $r=Invoke-WebRequest -Uri ('http://localhost:'+$port) -UseBasicParsing -TimeoutSec 3; if ($r.StatusCode -ge 500) { throw 'unhealthy' } } catch { Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue | ForEach-Object { Stop-Process -Id $_.OwningProcess -Force -ErrorAction SilentlyContinue } }"

REM Reuse any already-running healthy dashboard, including a Next.js fallback port.
for /f "delims=" %%P in ('powershell -NoProfile -Command "$ports=%PORT_RANGE%; foreach($p in $ports){ try { $r=Invoke-WebRequest -Uri ('http://localhost:'+$p) -UseBasicParsing -TimeoutSec 2; if($r.StatusCode -lt 500){ Write-Output $p; break } } catch {} }"') do set "PORT=%%P"

if not defined PORT (
    echo Starting dashboard server on port %PREFERRED_PORT% ...
    start "AICD Dashboard" /b cmd /c "cd /d "%DASHBOARD_DIR%" && set PORT=%PREFERRED_PORT% && npm run dev"
    echo Waiting for the dashboard to become ready...
    for /l %%N in (1,1,15) do (
        timeout /t 2 /nobreak >nul
        for /f "delims=" %%P in ('powershell -NoProfile -Command "$ports=%PORT_RANGE%; foreach($p in $ports){ try { $r=Invoke-WebRequest -Uri ('http://localhost:'+$p) -UseBasicParsing -TimeoutSec 2; if($r.StatusCode -lt 500){ Write-Output $p; break } } catch {} }"') do set "PORT=%%P"
        if defined PORT goto :ready
    )
)

:ready
if not defined PORT (
    echo Could not find a healthy dashboard server on ports %PORT_RANGE%.
    echo Check the dashboard terminal for startup errors.
    pause
    exit /b 1
)

set "URL=http://localhost:%PORT%"
echo Opening %URL% in your browser...
start "" "%URL%"
endlocal
