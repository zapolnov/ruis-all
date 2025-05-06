@echo off

echo ==== agg
cd "%~dp0agg\build\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== clargs
cd "%~dp0clargs\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== cssom
cd "%~dp0cssom\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== mikroxml
cd "%~dp0mikroxml\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== nitki
cd "%~dp0nitki\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== opros
cd "%~dp0opros\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== papki
cd "%~dp0papki\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== r4
cd "%~dp0r4\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== rasterimage
cd "%~dp0rasterimage\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== ruis
cd "%~dp0ruis\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== ruis-render-null
cd "%~dp0ruis-render-null\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== ruis-render-opengl
cd "%~dp0ruis-render-opengl\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== ruis-render-opengles
cd "%~dp0ruis-render-opengles\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== ruisapp
cd "%~dp0ruisapp\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== svgdom
cd "%~dp0svgdom\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== svgren
cd "%~dp0svgren\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== tml
cd "%~dp0tml\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== tst
cd "%~dp0tst\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== utki
cd "%~dp0utki\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1

echo ==== veg
cd "%~dp0veg\tool-configs" || exit /B 1
git checkout main || exit /B 1
git pull origin main || exit /B 1
