@echo off
taskkill /f /im  MEGAcmdServer.exe
attrib "PathToDownload\*.mega" -H
del "PathToDownload\*.mega" /q
exit