message("PROJECT: " ${PROJECT_NAME})

set(LINKED_LIBRARIES)

function(configure_project PROJECT)
    if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
        add_definitions(-DCLANG_COMPILER)
    endif()
    if(UNIX)
        set(LINKED_LIBRARIES ${LINKED_LIBRARIES} pthread)
    endif()
    project(${PROJECT} LANGUAGES CXX)
    set_target_properties(${PROJECT} PROPERTIES LINKER_LANGUAGE CXX)
    target_link_libraries(${PROJECT} PRIVATE ${LINKED_LIBRARIES})
endfunction()