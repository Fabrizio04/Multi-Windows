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
pause
goto end

:si
%userprofile%\AppData\Local\MEGAcmd\MEGAclient.exe proxy --none
pause
goto end

:end
exit