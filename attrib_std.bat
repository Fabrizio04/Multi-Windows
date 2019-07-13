@echo off
taskkill /f /im  curl.exe
del "PathToDownload\*.iso" /q
exit