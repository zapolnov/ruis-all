@echo off
set dir=%~dp0
cd /D "%dir%" || exit /B 1

if not exist "%dir%_build\msvc2022" mkdir "%dir%_build\msvc2022"
cd "%dir%_build\msvc2022"

set pkg=%~dp0_build\vcpkg\packages
set GLEW_ROOT=%pkg%\glew_x64-windows

cmake ^
    -G "Visual Studio 17 2022" ^
    "-DZLIB_INCLUDE_DIR=%pkg%\zlib_x64-windows\include" ^
    "-DZLIB_LIBRARY=%pkg%\zlib_x64-windows\lib\zlib.lib" ^
    "-DPNG_PNG_INCLUDE_DIR=%pkg%\libpng_x64-windows\include" ^
    "-DPNG_LIBRARY=%pkg%\libpng_x64-windows\lib\libpng16.lib" ^
    "-DJPEG_INCLUDE_DIR=%pkg%\ijg-libjpeg_x64-windows\include" ^
    "-DJPEG_LIBRARY=%pkg%\ijg-libjpeg_x64-windows\lib\jpeg.lib" ^
    "-DGLEW_INCLUDE_DIR=%pkg%\glew_x64-windows\include" ^
    "-DGLEW_LIBRARY=%pkg%\glew_x64-windows\lib\glew32.lib" ^
    "-DFREETYPE_INCLUDE_DIRS=%pkg%\freetype_x64-windows\include" ^
    "-DFREETYPE_LIBRARY=%pkg%\freetype_x64-windows\lib\freetype.lib" ^
    "%dir%" || exit /B 1
