@echo off
REM Package the built CodeDocs.exe into a ZIP for sharing.
REM Adjust SOURCE if your exe is in a different location.
set "SOURCE=F:\CODE TO DOCS\CodeTODocs\CodeDocs.exe"
set "DEST=%~dp0CodeDocs_Shared.zip"
if not exist "%SOURCE%" (
  echo Source exe not found: %SOURCE%
  pause
  exit /b 1
)
powershell -NoLogo -NoProfile -Command "Compress-Archive -Path '%SOURCE%' -DestinationPath '%DEST%' -Force"
if %ERRORLEVEL% neq 0 (
  echo Packaging failed.
  pause
  exit /b 1
)
echo Created %DEST%
pause
