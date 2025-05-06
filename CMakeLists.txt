cmake_minimum_required(VERSION 3.30)
project(RuisAll)

include(tool-configs/cmake/common.cmake)

set(AGG_DISABLE_INSTALL TRUE)
set(UTKI_DISABLE_INSTALL TRUE)
set(CLARGS_DISABLE_INSTALL TRUE)
set(OPROS_DISABLE_INSTALL TRUE)
set(NITKI_DISABLE_INSTALL TRUE)
set(TST_DISABLE_INSTALL TRUE)
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
set(RUIS_RENDER_OPENGLES_DISABLE_INSTALL TRUE)
set(RUISAPP_DISABLE_INSTALL TRUE)

add_subdirectory(agg/build/cmake)
add_library(agg::agg ALIAS agg)

add_subdirectory(utki/build/cmake)
add_library(utki::utki ALIAS utki)

add_subdirectory(clargs/build/cmake)
add_library(clargs::clargs ALIAS clargs)

add_subdirectory(opros/build/cmake)
add_library(opros::opros ALIAS opros)

add_subdirectory(nitki/build/cmake)
add_library(nitki::nitki ALIAS nitki)

add_subdirectory(tst/build/cmake)
add_library(tst::tst ALIAS tst)

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

add_subdirectory(ruis-render-opengles/build/cmake)
add_library(ruis-render-opengles::ruis-render-opengles ALIAS ruis-render-opengles)

add_subdirectory(ruisapp/build/cmake)
add_library(ruisapp::ruisapp ALIAS ruisapp)

add_subdirectory(carcockpit/build/cmake)

#set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ruisapp-test)
set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT carcockpit)
