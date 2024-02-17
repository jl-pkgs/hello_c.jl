# gcc src/main_gdal.c C:/Users/kongdd/.julia/artifacts/5bebacb59d6c79d6b21a2c9dd94ffac5a46161f7/bin/libgdal-34.dll -static -libstdc++

# gcc src/main_gdal.c -static -lgdal
gcc src/main_gdal.c -lgdal
gcc src/main_gdal.c `pkg-config GDAL --libs --static --cflags`

gcc src/main_gdal.c `pkg-config GDAL --libs --static --cflags` -static -fcommon
# -lstdc++

g++ -o main_opencv src/main_opencv.cpp `pkg-config --cflags --libs opencv4`
