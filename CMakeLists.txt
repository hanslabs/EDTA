cmake_minimum_required(VERSION 3.19)
project(EDTA)
set(BUILD_UT true)
set(CMAKE_CXX_STANDARD 11)

include_directories(include)

find_library()

aux_source_directory(llt LLT)
aux_source_directory(llt/testcase LLT_TESTCASE)
aux_source_directory(llt/testcase/leetcode LLT_LEETCODE)

aux_source_directory(src/leetcode LEETCODE)

if (BUILD_UT)
    add_library(leet ${LEETCODE})
    add_executable(EDTA_LLT ${LLT} ${LLT_TEST_CASE} ${LLT_LEETCODE})
    target_link_libraries(EDTA_LLT ${leet})
else()
    add_executable(EDTA main.cpp)
endif()
