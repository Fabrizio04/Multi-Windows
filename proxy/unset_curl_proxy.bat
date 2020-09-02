@ECHO OFF
title Multi-Windows by Fabrizio Amorelli
color 9F

:quest
cls
set /p auth= Rimuovere proxy? [si - no]: 
if '%auth%'=='' goto quest
if '%auth%'=='si' goto si
if '%auth%'=='no' goto no

goto quest

:no
goto end

:si
if exist "%~dp0\curl_settings.txt" (
del "%~dp0\curl_settings.txt"
)
goto end

:end
cls
ECHO Impostazioni salvate.
pause
exit