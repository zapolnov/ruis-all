@echo off
set dir=%~dp0
cd /D "%dir%" || exit /B 1

if not exist "%dir%_build\msvc2022" mkdir "%dir%_build\msvc2022"
cd "%dir%_build\msvc2022"

cmake ^
    -G "Visual Studio 17 2022" ^
    "-DZLIB_INCLUDE_DIR=%~dp0_build\vcpkg\packages\zlib_x64-windows\include" ^
    "-DZLIB_LIBRARY=%~dp0_build\vcpkg\packages\zlib_x64-windows\lib\zlib.lib" ^
    "-DPNG_PNG_INCLUDE_DIR=%~dp0_build\vcpkg\packages\libpng_x64-windows\include" ^
    "-DPNG_LIBRARY=%~dp0_build\vcpkg\packages\libpng_x64-windows\lib\libpng16.lib" ^
    "-DJPEG_INCLUDE_DIR=%~dp0_build\vcpkg\packages\ijg-libjpeg_x64-windows\include" ^
    "-DJPEG_LIBRARY=%~dp0_build\vcpkg\packages\ijg-libjpeg_x64-windows\lib\jpeg.lib" ^
    "-DFREETYPE_INCLUDE_DIRS=%~dp0_build\vcpkg\packages\freetype_x64-windows\include" ^
    "-DFREETYPE_LIBRARY=%~dp0_build\vcpkg\packages\freetype_x64-windows\lib\freetype.lib" ^
    "%dir%" || exit /B 1
