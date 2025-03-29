#_______________________________________________________________________
# This script contains the commands to build and run the simple example
#_______________________________________________________________________

export GTEST_LIB=../googletest/build/lib/
export GTEST_H=../googletest/googletest/include/
#_______________________________________________________________________
# Compile Step
#_______________________________________________________________________
# $GTEST_H is the location of gtest/gtest.h as indicated in code
# The version of Google Test used here requires C++14 or later
#_______________________________________________________________________
g++ -std=c++14 -c -I$GTEST_H test_main.cpp

#_______________________________________________________________________
# Link Step
#_______________________________________________________________________
# $GTEST_LIB is the location of libgtest.a
#_______________________________________________________________________
g++ test_main.o -L$GTEST_LIB -lgtest -pthread -o test.out


