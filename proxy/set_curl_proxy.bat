@ECHO OFF
title Multi-Windows by Fabrizio Amorelli
color 9F

:start
cls
set /p url= URL Proxy: 
if '%url%'=='' goto start


:autenticazione
cls
set /p auth= Autenticazione [si - no]: 
if '%auth%'=='si' goto si
if '%auth%'=='no' goto no

goto autenticazione

:no
cls
ECHO %url%,no>"%~dp0\curl_settings.txt"
goto end

:si
cls
set /p username= Username: 
set /p password= Password: 
ECHO %url%,%username%:%password%>"%~dp0\curl_settings.txt"
goto end

:end
cls
if exist "%~dp0\curl_settings.txt" (
ECHO Impostazioni salvate.
) else (
ECHO Errore, impossibile salvare le impostazioni.
)
pause
exit