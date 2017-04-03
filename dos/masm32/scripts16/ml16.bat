@echo off

if exist %1.obj del %1.obj
if exist %1.map del %1.map
if exist %1.com del %1.com
if exist %1.exe del %1.exe

..\..\masm32\bin\ml /c /AT %1.asm
if errorlevel 1 goto errasm

goto TheEnd

:errasm
echo _
echo Assembly Error
goto TheEnd

:TheEnd

dir %1.*
pause
