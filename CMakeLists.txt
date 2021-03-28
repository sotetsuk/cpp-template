cmake_minimum_required(VERSION 3.11)
project(MyCppProject)

set(CMAKE_CXX_STANDARD 17)
set(CMAKEDIR ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(EXTERNALDIR ${CMAKE_CURRENT_SOURCE_DIR}/external)

set(SOURCE_FILES main.cpp)
add_executable(${CMAKE_PROJECT_NAME}_exe ${SOURCE_FILES})

include_directories(MyCppLibrary)

add_subdirectory(MyCppLibrary)
add_subdirectory(tests)

target_link_libraries(${CMAKE_PROJECT_NAME}_exe ${CMAKE_PROJECT_NAME})

