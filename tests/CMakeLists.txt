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
add_executable(MyLib_test ${TEST_FILES})
target_include_directories(MyLib_test ../include)
target_link_libraries(MyLib_test MyLib)
target_link_libraries(MyLib_test gtest gmock_main)
