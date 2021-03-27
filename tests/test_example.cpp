#include "gtest/gtest.h"
#include "example.h"

TEST(Example, Equals) {
  EXPECT_EQ(0, MyCppLibrary::f());
}