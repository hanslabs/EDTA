//
// Created by 26023 on 2021/3/27.
//

#include <iostream>
#include "gtest/gtest.h"

int main(int argc, char *argv[]) {
    int ret;
    std::cout << "Hello, World1!" << std::endl;
    InitGoogleTest(argc, argv);
    ret = RUN_ALL_TEST();
    return ret;
}