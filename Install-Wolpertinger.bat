@echo off
set "ZIP=%~dp0Wolpertinger-Installer.zip"
set "TEMPINST=%TEMP%\Wolpertinger-Install"
powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -LiteralPath '%ZIP%' -DestinationPath '%TEMPINST%' -Force; Start-Process -FilePath '%TEMPINST%\install_launcher.exe' -Verb RunAs -Wait"
