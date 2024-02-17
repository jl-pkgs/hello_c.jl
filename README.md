# call c in Julia

```bash
cd build
cmake ..
make
cd ..

julia julia/hello.jl
```

## Windows 

```bash
scoop install msys2
# use ucrt64 as default

$env:CMAKE_GENERATOR = 'MinGW Makefiles'
$env:CC="gcc"
$env:CXX="g++"

mkdir build
cd build
cmake ..
```

## References

<https://zhuanlan.zhihu.com/p/401188789>
