#!/bin/sh

MORE_LDFLAGS=-Wl,-rpath,/home/hanlon/Cat6/git_qq_yun/opencv/openCVubuntu/lib 

if [ $# -gt 0 ] ; then
    base=`basename $1 .c`
    echo "compiling $base"
    gcc -ggdb `pkg-config opencv --cflags --libs` $base.c -o $base
else
    for i in *.c; do
        echo "compiling $i"
        gcc -ggdb `pkg-config --cflags opencv` ${MORE_LDFLAGS} -o `basename $i .c` $i `pkg-config --libs opencv`;
    done
    for i in *.cpp; do
        echo "compiling $i"
        g++ -ggdb `pkg-config --cflags opencv` ${MORE_LDFLAGS} -o `basename $i .cpp` $i `pkg-config --libs opencv`;
    done
fi
