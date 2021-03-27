include(FetchContent)
set(FETCHCONTENT_BASE_DIR ${EXTERNALDIR}/)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.8.0
)
FetchContent_MakeAvailable(googletest)
