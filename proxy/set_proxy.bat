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
%userprofile%\AppData\Local\MEGAcmd\MEGAclient.exe proxy %url%
pause
goto end

:si
cls
set /p username= Username: 
set /p password= Password: 
%userprofile%\AppData\Local\MEGAcmd\MEGAclient.exe proxy %url% --username=%username% --password=%password%
pause
goto end

:end
exit