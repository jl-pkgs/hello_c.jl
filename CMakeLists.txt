cmake_minimum_required(VERSION 3.10)
project(hello)

# set(CMAKE_EXE_LINKER_FLAGS "C:/Users/kongdd/scoop/apps/msys2/2024-01-13/ucrt64/lib/libgdal.dll.a")
# set(CMAKE_FIND_LIBRARY_SUFFIXES .a)
# set(CMAKE_CXX_STANDARD 11)
# Use pkg-config to get the directories and then use them in the target
find_package(PkgConfig REQUIRED)

include_directories(include)
# example01
add_library(leaf SHARED include/leaf.c)

add_executable(hello_leaf src/hello_leaf.c)
target_link_libraries(hello_leaf leaf)


# example02: gdal
add_executable(hello_gdal src/hello_gdal.c)

find_package(GDAL REQUIRED)
target_include_directories(hello_gdal PRIVATE ${GDAL_INCLUDE_DIRS})
target_link_libraries(hello_gdal ${GDAL_LIBRARIES})
# find_library(GDAL_LIB NAMES libgdal.dll.a)
# target_link_libraries(hello_gdal ${GDAL_LIB})

# target_link_libraries(hello_gdal "C:/Users/kongdd/scoop/apps/msys2/2024-01-13/ucrt64/lib/libgdal.a")
# add_executable(hello_array C/array.c)

## example03: opencv
add_executable(hello_opencv src/hello_opencv.cpp)

find_package(OpenCV REQUIRED)
target_include_directories(hello_opencv PRIVATE ${OpenCV_INCLUDE_DIRS})
target_link_libraries(hello_opencv ${OpenCV_LIBS})


## Example04: SDL2
add_executable(hello_sdl2 src/hello_sdl2.cpp)

pkg_check_modules(SDL2 REQUIRED sdl2)
target_include_directories(hello_sdl2 PRIVATE ${SDL2_INCLUDE_DIRS})
target_link_libraries(hello_sdl2 ${SDL2_LIBRARIES})
