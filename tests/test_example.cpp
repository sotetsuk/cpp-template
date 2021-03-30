#include "gtest/gtest.h"
#include "MyCppLibrary/hello.hpp"

TEST(Example, Equals) {
  EXPECT_EQ(1, hello::hi());
}