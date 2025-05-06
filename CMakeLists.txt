cmake_minimum_required(VERSION 3.30)
project(RuisAll)

set(AGG_DISABLE_INSTALL TRUE)
set(UTKI_DISABLE_INSTALL TRUE)
set(PAPKI_DISABLE_INSTALL TRUE)
set(R4_DISABLE_INSTALL TRUE)
set(TML_DISABLE_INSTALL TRUE)
set(MIKROXML_DISABLE_INSTALL TRUE)
set(CSSOM_DISABLE_INSTALL TRUE)
set(RASTERIMAGE_DISABLE_INSTALL TRUE)
set(VEG_DISABLE_INSTALL TRUE)
set(SVGDOM_DISABLE_INSTALL TRUE)
set(SVGREN_DISABLE_INSTALL TRUE)
set(RUIS_DISABLE_INSTALL TRUE)
set(RUIS_RENDER_OPENGL_DISABLE_INSTALL TRUE)
set(RUISAPP_DISABLE_INSTALL TRUE)

add_subdirectory(agg/build/cmake)
add_library(agg::agg ALIAS agg)

add_subdirectory(utki/build/cmake)
add_library(utki::utki ALIAS utki)

add_subdirectory(papki/build/cmake)
add_library(papki::papki ALIAS papki)

add_subdirectory(r4/build/cmake)
add_library(r4::r4 ALIAS r4)

add_subdirectory(tml/build/cmake)
add_library(tml::tml ALIAS tml)

add_subdirectory(mikroxml/build/cmake)
add_library(mikroxml::mikroxml ALIAS mikroxml)

add_subdirectory(cssom/build/cmake)
add_library(cssom::cssom ALIAS cssom)

add_subdirectory(rasterimage/build/cmake)
add_library(rasterimage::rasterimage ALIAS rasterimage)

add_subdirectory(veg/build/cmake)
add_library(veg::veg ALIAS veg)

add_subdirectory(svgdom/build/cmake)
add_library(svgdom::svgdom ALIAS svgdom)

add_subdirectory(svgren/build/cmake)
add_library(svgren::svgren ALIAS svgren)

add_subdirectory(ruis/build/cmake)
add_library(ruis::ruis ALIAS ruis)

add_subdirectory(ruis-render-opengl/build/cmake)
add_library(ruis-render-opengl::ruis-render-opengl ALIAS ruis-render-opengl)

add_subdirectory(ruisapp/build/cmake)
add_library(ruisapp::ruisapp ALIAS ruisapp)
