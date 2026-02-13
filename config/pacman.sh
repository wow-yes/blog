#!/bin/bash
#pacman -S --needed base-devel parallel wget axel p7zip unzip vim rsync
#
## 在 UCRT64 终端中运行
#pacman -S --needed mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-gcc mingw-w64-ucrt-x86_64-python mingw-w64-ucrt-x86_64-python-pip
## 开发库
#pacman -S --needed mingw-w64-ucrt-x86_64-lapack mingw-w64-ucrt-x86_64-openblas mingw-w64-ucrt-x86_64-fftw mingw-w64-ucrt-x86_64-libjpeg-turbo mingw-w64-ucrt-x86_64-libpng mingw-w64-ucrt-x86_64-libtiff
#
#pacman -S --needed mingw-w64-ucrt-x86_64-python-numpy mingw-w64-ucrt-x86_64-python-matplotlib mingw-w64-ucrt-x86_64-python-pandas mingw-w64-ucrt-x86_64-python-ipython mingw-w64-ucrt-x86_64-python-scipy mingw-w64-ucrt-x86_64-python-pygments

# 安装 UCRT 工具链
pacman -S --needed base-devel
pacman -S --needed mingw-w64-ucrt-x86_64-toolchain

# 或单独安装组件
pacman -S --needed mingw-w64-ucrt-x86_64-gcc      # GCC 编译器
pacman -S --needed mingw-w64-ucrt-x86_64-gdb      # 调试器
pacman -S --needed mingw-w64-ucrt-x86_64-make     # Make 工具
pacman -S --needed mingw-w64-ucrt-x86_64-cmake    # CMake
pacman -S --needed mingw-w64-ucrt-x86_64-binutils # 二进制工具

# 代码编辑和工具
pacman -S --needed mingw-w64-ucrt-x86_64-vim
#pacman -S --needed mingw-w64-ucrt-x86_64-nano
#pacman -S --needed git

# 构建工具
pacman -S --needed mingw-w64-ucrt-x86_64-ninja
pacman -S --needed mingw-w64-ucrt-x86_64-meson

# 调试和分析工具
pacman -S --needed mingw-w64-ucrt-x86_64-valgrind
pacman -S --needed mingw-w64-ucrt-x86_64-strace
pacman -S --needed mingw-w64-ucrt-x86_64-ltrace
