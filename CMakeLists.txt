cmake_minimum_required(VERSION 3.9)
project(MyCppProject)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE_FILES main.cpp)
add_executable(${CMAKE_PROJECT_NAME}_exe ${SOURCE_FILES})

include_directories(MyCppLibrary)

add_subdirectory(MyCppLibrary)
add_subdirectory(test)

target_link_libraries(${CMAKE_PROJECT_NAME}_exe ${CMAKE_PROJECT_NAME})

