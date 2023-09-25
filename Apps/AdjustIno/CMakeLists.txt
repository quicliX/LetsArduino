cmake_minimum_required(VERSION 3.7 FATAL_ERROR)

set(PROJECT_NAME "AdjustIno")

file(GLOB_RECURSE SRC CONFIGURE_DEPENDS *)

include("Common")
include("Qt")

add_executable(${PROJECT_NAME} ${GUI_TYPE} ${SRC})
configure_project(${PROJECT_NAME})