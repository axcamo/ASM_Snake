@echo off

if exist %1.map del %1.map
if exist %1.com del %1.com
if exist %1.exe del %1.exe

..\..\masm32\bin\Link16 /TINY %1.obj, %1.com, %1.map,,,
if errorlevel 1 goto errlink

goto TheEnd

:errlink
echo _
echo Link error
goto TheEnd

:TheEnd

dir %1.*
pause