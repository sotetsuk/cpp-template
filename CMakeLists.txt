cmake_minimum_required(VERSION 3.11)
project(MyCppProject)

option(RUN_TEST "Run test or not" ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKEDIR ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(EXTERNALDIR ${CMAKE_CURRENT_SOURCE_DIR}/external)

add_subdirectory(include/MyCppLibrary)

if(RUN_TEST)
    add_subdirectory(tests)
endif()

