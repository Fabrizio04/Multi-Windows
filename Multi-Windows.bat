@echo off 


if '%1' =='/mega' (

if exist "C:\Program Files (x86)\Multi-Windows\Mega.exe" (
cls
"C:\Program Files (x86)\Multi-Windows\Mega.exe"

) else if exist "C:\Program Files\Multi-Windows\Mega.exe" (
cls
"C:\Program Files\Multi-Windows\Mega.exe"

) else (
ECHO ERRORE.
)

) else if '%1' =='/std' (

if exist "C:\Program Files (x86)\Multi-Windows\Std.exe" (
cls
"C:\Program Files (x86)\Multi-Windows\Std.exe"

) else if exist "C:\Program Files\Multi-Windows\Std.exe" (
cls
"C:\Program Files\Multi-Windows\Std.exe"

) else (
ECHO ERRORE.
)



) else if '%1' =='/?' (
ECHO.
ECHO Multi-Windows by Fabrizio Amorelli
ECHO Windows Service Version 1.0
ECHO Multi-Installer.it/Windows
ECHO Anno 2019
ECHO.
ECHO Sintassi del comando:
ECHO "multi-windows /mega" per l'edizione Mega Cloud
ECHO "multi-windows /std"  per l'edizione Standard
) else (
ECHO.
ECHO Digitare /? per maggiori informazioni
)