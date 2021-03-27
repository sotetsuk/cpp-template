cmake_minimum_required(VERSION 3.3)

include(${CMAKEDIR}/BuildGoogleTest.cmake)


file(GLOB TEST_FILES *.cpp)
add_executable(example ${TEST_FILES})
target_link_libraries(example ${CMAKE_PROJECT_NAME})
target_link_libraries(example gtest gmock_main)
add_test(NAME example_test COMMAND example)
