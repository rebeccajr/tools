#include "gtest/gtest.h"

int inc_fun(int a)
{
  return a + 1;
}

TEST(TestFamily, FunTest)
{
  ASSERT_TRUE(inc_fun(3) == 4);
}

int main(int argc, char* argv[])
{
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
