# cmake -G "MinGW Makefiles" -DCMAKE_RC_COMPILER="g++" ..
rm.exe -rf build 
mkdir.exe -p build
cd build

# $env:CMAKE_GENERATOR = 'MinGW Makefiles'
# $env:CC="gcc"
# $env:CXX="g++"

# $env:CMAKE_C_COMPILER="gcc"
# $env:CMAKE_RC_COMPILER="g++"

# cmake -G "MinGW Makefiles" -DCMAKE_C_COMPILER="gcc" -DCMAKE_RC_COMPILER="g++" ..
# cmake -DCMAKE_C_COMPILER="gcc" -DCMAKE_RC_COMPILER="g++" .
cmake ..
make

cd ..
julia julia/hello.jl
