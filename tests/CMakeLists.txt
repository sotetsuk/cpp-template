include(${CMAKEDIR}/googletest.cmake)

file(GLOB TEST_FILES *.cpp)
add_executable(${CMAKE_PROJECT_NAME}_test ${TEST_FILES})
target_link_libraries(${CMAKE_PROJECT_NAME}_test ${CMAKE_PROJECT_NAME})

FetchContent_GetProperties(googletest)
target_include_directories(${CMAKE_PROJECT_NAME}_test PRIVATE ${googletest_SOURCE_DIR}/googletest/include)
target_link_directories(${CMAKE_PROJECT_NAME}_test PRIVATE ${googletest_BINARY_DIR}/googlemock/gtest ${googletest_BINARY_DIR}/googlemock)
target_link_libraries(${CMAKE_PROJECT_NAME}_test gtest gmock_main)
