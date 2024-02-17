cmake_minimum_required(VERSION 3.10)
project(hello)

# set(CMAKE_CXX_STANDARD 11)

include_directories(src include)

add_library(leaf SHARED include/leaf.c)

add_executable(hello src/main_leaf.c)
target_link_libraries(hello leaf)

# add_executable(hello_array C/array.c)
