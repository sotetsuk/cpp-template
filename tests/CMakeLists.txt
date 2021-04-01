include(${CMAKEDIR}/googletest.cmake)

file(GLOB TEST_FILES *.cpp)
add_executable(${CMAKE_PROJECT_NAME}_test ${TEST_FILES})
target_include_directories(${CMAKE_PROJECT_NAME}_test ${CMAKE_CURRENT_SOURCE_DIR}/../include)
target_link_libraries(${CMAKE_PROJECT_NAME}_test ${CMAKE_PROJECT_NAME})
target_link_libraries(${CMAKE_PROJECT_NAME}_test gtest gmock_main)
