cmake_minimum_required(VERSION 3.10)
project(hello)

# set(CMAKE_CXX_STANDARD 11)

# include_directories(C/include)
add_library(leaf SHARED src/leaf.c)

# add_executable(hello C/main_leaf.c)
# add_executable(hello_array C/array.c)
