@echo off
set dir=%~dp0
cd /D "%dir%" || exit /B 1

if exist "%dir%_build\msvc2022\cmake\Studio.sln" goto exist
call "%dir%msvc2022_gen.cmd" || exit /B 1
:exist
start "" "%dir%_build\msvc2022\RuisAll.sln" || exit /B 1
