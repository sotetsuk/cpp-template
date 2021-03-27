include(${CMAKEDIR}/BuildGoogleTest.cmake)

file(GLOB TEST_FILES *.cpp)
add_executable(${CMAKE_PROJECT_NAME}_test ${TEST_FILES})
target_link_libraries(${CMAKE_PROJECT_NAME}_test ${CMAKE_PROJECT_NAME})
target_link_libraries(${CMAKE_PROJECT_NAME}_test gtest gmock_main)
