@echo off
title Multi-Windows by Fabrizio Amorelli
color 9F

ECHO Aggiornamento in corso . . .
ECHO.

cd %~dp0

setlocal
set file=%1
Call :UnZipFile "%cd%" "%cd%\%1"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

xcopy /s /e "%cd%\Multi-Windows" "%cd%\.." /y
timeout /t 2 >nul
rmdir /s /q "%cd%\Multi-Windows"
del "%cd%\%file%" /s /f /q

cls
ECHO Fatto!
ECHO Grazie per l'attesa
timeout /t 5 >nul
exit