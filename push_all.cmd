@echo off

echo ==== agg
cd "%~dp0agg" || exit /B 1
git push origin main || exit /B 1

echo ==== carcockpit
cd "%~dp0carcockpit" || exit /B 1
git push origin main || exit /B 1

echo ==== clargs
cd "%~dp0clargs" || exit /B 1
git push origin main || exit /B 1

echo ==== cssom
cd "%~dp0cssom" || exit /B 1
git push origin main || exit /B 1

echo ==== jsondom
cd "%~dp0jsondom" || exit /B 1
git push origin main || exit /B 1

echo ==== mikroxml
cd "%~dp0mikroxml" || exit /B 1
git push origin main || exit /B 1

echo ==== nitki
cd "%~dp0nitki" || exit /B 1
git push origin main || exit /B 1

echo ==== opros
cd "%~dp0opros" || exit /B 1
git push origin main || exit /B 1

echo ==== papki
cd "%~dp0papki" || exit /B 1
git push origin main || exit /B 1

echo ==== r4
cd "%~dp0r4" || exit /B 1
git push origin main || exit /B 1

echo ==== rasterimage
cd "%~dp0rasterimage" || exit /B 1
git push origin main || exit /B 1

echo ==== ruis
cd "%~dp0ruis" || exit /B 1
git push origin main || exit /B 1

echo ==== ruis-render-null
cd "%~dp0ruis-render-null" || exit /B 1
git push origin main || exit /B 1

echo ==== ruis-render-opengl
cd "%~dp0ruis-render-opengl" || exit /B 1
git push origin main || exit /B 1

echo ==== ruis-render-opengles
cd "%~dp0ruis-render-opengles" || exit /B 1
git push origin main || exit /B 1

echo ==== ruisapp
cd "%~dp0ruisapp" || exit /B 1
git push origin main || exit /B 1

echo ==== svgdom
cd "%~dp0svgdom" || exit /B 1
git push origin main || exit /B 1

echo ==== svgren
cd "%~dp0svgren" || exit /B 1
git push origin main || exit /B 1

echo ==== tml
cd "%~dp0tml" || exit /B 1
git push origin main || exit /B 1

echo ==== tool-configs
cd "%~dp0tool-configs" || exit /B 1
git push origin main || exit /B 1

echo ==== tst
cd "%~dp0tst" || exit /B 1
git push origin main || exit /B 1

echo ==== utki
cd "%~dp0utki" || exit /B 1
git push origin main || exit /B 1

echo ==== veg
cd "%~dp0veg" || exit /B 1
git push origin main || exit /B 1

echo ==== (root)
cd "%~dp0" || exit /B 1
git push origin main || exit /B 1
