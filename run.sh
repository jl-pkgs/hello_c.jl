mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make
cd ..

julia julia/hello.jl
