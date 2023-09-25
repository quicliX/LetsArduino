cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

set(MAIN_PROJECT_NAME LetsArduino)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/Cmake")

project(${MAIN_PROJECT_NAME})

add_subdirectory("Libs")
add_subdirectory("Apps")