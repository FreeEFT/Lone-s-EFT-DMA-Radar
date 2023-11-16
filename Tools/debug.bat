@ECHO OFF
CD "%~dp0.."
> Tools\debug.txt 2>&1 (
CALL Lones-Client.exe -debug
)