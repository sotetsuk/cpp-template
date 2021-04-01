include(FetchContent)
set(FETCHCONTENT_BASE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/lib)
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.10.0
)
FetchContent_MakeAvailable(googletest)

file(GLOB TEST_FILES *.cpp)
add_executable(${CMAKE_PROJECT_NAME}_test ${TEST_FILES})
target_link_libraries(${CMAKE_PROJECT_NAME}_test ${CMAKE_PROJECT_NAME})
target_link_libraries(${CMAKE_PROJECT_NAME}_test gtest gmock_main)
