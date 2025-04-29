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

add_subdirectory(agg/cmake)
add_library(agg::agg ALIAS agg)

add_subdirectory(utki/cmake)
add_library(utki::utki ALIAS utki)

add_subdirectory(papki/cmake)
add_library(papki::papki ALIAS papki)

add_subdirectory(r4/cmake)
add_library(r4::r4 ALIAS r4)

add_subdirectory(tml/cmake)
add_library(tml::tml ALIAS tml)

add_subdirectory(mikroxml/cmake)
add_library(mikroxml::mikroxml ALIAS mikroxml)

add_subdirectory(cssom/cmake)
add_library(cssom::cssom ALIAS cssom)

add_subdirectory(rasterimage/cmake)
add_library(rasterimage::rasterimage ALIAS rasterimage)

add_subdirectory(veg/cmake)
add_library(veg::veg ALIAS veg)

add_subdirectory(svgdom/cmake)
add_library(svgdom::svgdom ALIAS svgdom)

add_subdirectory(svgren/cmake)
add_library(svgren::svgren ALIAS svgren)

add_subdirectory(ruis/cmake)
add_library(ruis::ruis ALIAS ruis)

add_subdirectory(ruis-render-opengl/cmake)
add_library(ruis-render-opengl::ruis-render-opengl ALIAS ruis-render-opengl)

add_subdirectory(ruisapp/cmake)
add_library(ruisapp::ruisapp ALIAS ruisapp)
