@echo off

git submodule update --init --recursive || exit /B 1

if exist "%~dp0_build\vcpkg\vcpkg.exe" goto skip2
if exist "%~dp0_build\vcpkg" goto skip
git clone --depth=1 https://github.com/microsoft/vcpkg.git _build\vcpkg || exit /B 1
:skip
cd "%~dp0_build\vcpkg" || exit /B 1
call bootstrap-vcpkg.bat || exit /B 1
:skip2

"%~dp0_build\vcpkg\vcpkg.exe" install ^
    zlib:x64-windows ^
    libpng:x64-windows ^
    ijg-libjpeg:x64-windows ^
    glew:x64-windows ^
    freetype:x64-windows ^
    angle:x64-windows ^
    egl-registry:x64-windows ^
    || exit /B 1

if not exist "%~dp0_build\vcpkg\packages\glew_x64-windows\lib\glew32s.lib" (
    copy /b "%~dp0_build\vcpkg\packages\glew_x64-windows\lib\glew32.lib" "%~dp0_build\vcpkg\packages\glew_x64-windows\lib\glew32s.lib"
)
if not exist "%~dp0_build\vcpkg\packages\glew_x64-windows\lib\glew32ds.lib" (
    copy /b "%~dp0_build\vcpkg\packages\glew_x64-windows\lib\glew32.lib" "%~dp0_build\vcpkg\packages\glew_x64-windows\lib\glew32ds.lib"
)

cd "%~dp0agg" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/agg

cd "%~dp0carcockpit" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:gagistech/carcockpit

cd "%~dp0clargs" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/clargs

cd "%~dp0cssom" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/cssom

cd "%~dp0jsondom" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/jsondom

cd "%~dp0mikroxml" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/mikroxml

cd "%~dp0nitki" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/nitki

cd "%~dp0opros" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/opros

cd "%~dp0papki" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/papki

cd "%~dp0r4" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/r4

cd "%~dp0rasterimage" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/rasterimage

cd "%~dp0ruis" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/ruis

cd "%~dp0ruis-render-null" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/ruis-render-null

cd "%~dp0ruis-render-opengl" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/ruis-render-opengl

cd "%~dp0ruis-render-opengles" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/ruis-render-opengles

cd "%~dp0ruisapp" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/ruisapp

cd "%~dp0svgdom" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/svgdom

cd "%~dp0svgren" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/svgren

cd "%~dp0tml" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/tml

cd "%~dp0tool-configs" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/tool-configs

cd "%~dp0tst" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/tst

cd "%~dp0utki" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/utki

cd "%~dp0veg" || exit /B 1
git checkout main || exit /B 1
git remote add upstream git@github.com:cppfw/veg

cd "%~dp0" || exit /B 1

if not exist "%~dp0_build\msvc2022\_exe\Debug" mkdir "%~dp0_build\msvc2022\_exe\Debug"
if not exist "%~dp0_build\msvc2022\_exe\MinSizeRel" mkdir "%~dp0_build\msvc2022\_exe\MinSizeRel"
if not exist "%~dp0_build\msvc2022\_exe\Release" mkdir "%~dp0_build\msvc2022\_exe\Release"
if not exist "%~dp0_build\msvc2022\_exe\RelWithDebInfo" mkdir "%~dp0_build\msvc2022\_exe\RelWithDebInfo"

copy /b "%~dp0_build\vcpkg\packages\angle_x64-windows\bin\libGLESv2.dll" "%~dp0_build\msvc2022\_exe\Debug" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\angle_x64-windows\bin\libGLESv2.dll" "%~dp0_build\msvc2022\_exe\MinSizeRel" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\angle_x64-windows\bin\libGLESv2.dll" "%~dp0_build\msvc2022\_exe\RelWithDebInfo" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\angle_x64-windows\bin\libGLESv2.dll" "%~dp0_build\msvc2022\_exe\Release" || exit /B 1

copy /b "%~dp0_build\vcpkg\packages\angle_x64-windows\bin\libEGL.dll" "%~dp0_build\msvc2022\_exe\Debug" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\angle_x64-windows\bin\libEGL.dll" "%~dp0_build\msvc2022\_exe\MinSizeRel" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\angle_x64-windows\bin\libEGL.dll" "%~dp0_build\msvc2022\_exe\RelWithDebInfo" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\angle_x64-windows\bin\libEGL.dll" "%~dp0_build\msvc2022\_exe\Release" || exit /B 1

copy /b "%~dp0_build\vcpkg\packages\freetype_x64-windows\bin\freetype.dll" "%~dp0_build\msvc2022\_exe\Debug" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\freetype_x64-windows\bin\freetype.dll" "%~dp0_build\msvc2022\_exe\MinSizeRel" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\freetype_x64-windows\bin\freetype.dll" "%~dp0_build\msvc2022\_exe\RelWithDebInfo" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\freetype_x64-windows\bin\freetype.dll" "%~dp0_build\msvc2022\_exe\Release" || exit /B 1

copy /b "%~dp0_build\vcpkg\packages\bzip2_x64-windows\bin\bz2.dll" "%~dp0_build\msvc2022\_exe\Debug" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\bzip2_x64-windows\bin\bz2.dll" "%~dp0_build\msvc2022\_exe\MinSizeRel" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\bzip2_x64-windows\bin\bz2.dll" "%~dp0_build\msvc2022\_exe\RelWithDebInfo" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\bzip2_x64-windows\bin\bz2.dll" "%~dp0_build\msvc2022\_exe\Release" || exit /B 1

copy /b "%~dp0_build\vcpkg\packages\brotli_x64-windows\bin\brotlicommon.dll" "%~dp0_build\msvc2022\_exe\Debug" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\brotli_x64-windows\bin\brotlicommon.dll" "%~dp0_build\msvc2022\_exe\MinSizeRel" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\brotli_x64-windows\bin\brotlicommon.dll" "%~dp0_build\msvc2022\_exe\RelWithDebInfo" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\brotli_x64-windows\bin\brotlicommon.dll" "%~dp0_build\msvc2022\_exe\Release" || exit /B 1

copy /b "%~dp0_build\vcpkg\packages\brotli_x64-windows\bin\brotlidec.dll" "%~dp0_build\msvc2022\_exe\Debug" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\brotli_x64-windows\bin\brotlidec.dll" "%~dp0_build\msvc2022\_exe\MinSizeRel" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\brotli_x64-windows\bin\brotlidec.dll" "%~dp0_build\msvc2022\_exe\RelWithDebInfo" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\brotli_x64-windows\bin\brotlidec.dll" "%~dp0_build\msvc2022\_exe\Release" || exit /B 1

copy /b "%~dp0_build\vcpkg\packages\libpng_x64-windows\bin\libpng16.dll" "%~dp0_build\msvc2022\_exe\Debug" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\libpng_x64-windows\bin\libpng16.dll" "%~dp0_build\msvc2022\_exe\MinSizeRel" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\libpng_x64-windows\bin\libpng16.dll" "%~dp0_build\msvc2022\_exe\RelWithDebInfo" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\libpng_x64-windows\bin\libpng16.dll" "%~dp0_build\msvc2022\_exe\Release" || exit /B 1

copy /b "%~dp0_build\vcpkg\packages\glew_x64-windows\bin\glew32.dll" "%~dp0_build\msvc2022\_exe\Debug\glew32d.dll" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\glew_x64-windows\bin\glew32.dll" "%~dp0_build\msvc2022\_exe\MinSizeRel\glew32d.dll" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\glew_x64-windows\bin\glew32.dll" "%~dp0_build\msvc2022\_exe\RelWithDebInfo\glew32d.dll" || exit /B 1
copy /b "%~dp0_build\vcpkg\packages\glew_x64-windows\bin\glew32.dll" "%~dp0_build\msvc2022\_exe\Release" || exit /B 1
