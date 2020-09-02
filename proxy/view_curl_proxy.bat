@ECHO OFF
title Multi-Windows by Fabrizio Amorelli
color 9F

if exist "%~dp0\curl_settings.txt" (
type "%~dp0\curl_settings.txt"
ECHO.
) else (
ECHO Nessun proxy impostato
)
pause
exit