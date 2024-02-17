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

## Note

1. msys2 libs与conda不兼容，不能打开conda

2. msys2的路径应该放到PATH靠前的部分，确保libs具有较高的优先级

3. PATH设定后，最好重启一次系统


## References

<https://zhuanlan.zhihu.com/p/401188789>
