<h1>Call C in Julia</h1>

# 1. Functions

- [x] msys2 CMake编译代码
- [x] 使用msys2管理包
- [x] VSCode调试，支持交互式调试
- [x] Call C in Julia
- [x] apps发布，管理依赖项(dlls)，移植到其他电脑

# 2. Examples

- use `GDAL`: [src/hello_gdal.c](src/hello_gdal.c)
- use `OpenCV`: [src/hello_opencv.cpp](src/hello_opencv.cpp)

# 3. Installation

## 3.1. Installation on windows

```bash
scoop install msys2
# use ucrt64 as default

# 添加到环境变量中
$env:CMAKE_GENERATOR = 'MinGW Makefiles'
$env:CC="gcc"
$env:CXX="g++"

mkdir build
cd build
cmake ..
```

## 3.2. Note

1. msys2 libs与conda不兼容，不能打开conda

2. msys2的路径应该放到PATH靠前的部分，确保libs具有较高的优先级

3. PATH设定后，最好重启一次系统

# 4. References

<https://zhuanlan.zhihu.com/p/401188789>
