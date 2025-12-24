@echo off
setlocal
set "SCRIPT_DIR=%~dp0"
set "HTML_FILE=%SCRIPT_DIR%test.html"
start "" "file:///%HTML_FILE%"
endlocal
