@ECHO OFF
ECHO - Disabling Memory Compression...
powershell Disable-MMAgent -MemoryCompression
if %ERRORLEVEL% NEQ 0 (goto error)
shutdown /s /t 10 /c "Success! Your computer will now shutdown..."
exit 0

:error
ECHO - Error! Be sure to Right-Click 'Run-As-Administrator' when running.
pause
exit 1