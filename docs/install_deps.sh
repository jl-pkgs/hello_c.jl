#!/bin/bash

## Copy the required dlls
# https://github.com/msys2/MINGW-packages/issues/5204
install_deps() {
  exe=$1
  odir=${2:-"build64"}
  mkdir -p $odir
  
  # system dlls are skipped
  ldd $1 | grep -iv system32 | grep -vi windows | \
    grep -v :$ | cut -f2 -d\> | cut -f1 -d\( | tr \\\\ / | \
    while read a; do ! [ -e "$odir/`basename $a`" ] && cp -v "$a" $odir; done
}

# install_deps hello_leaf.exe build64
# install_deps hello_leaf.exe

# install_deps hello_gdal.exe build64
