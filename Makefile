build:
	gcc -c -m32 nativeadd.c
	gcc -m32 -dynamiclib nativeadd.o -o libnativeadd.dylib
	mcs nativeadd.cs

clean:
	rm -f nativeadd.o nativeadd.exe libnativeadd.dylib

build-run: build
	DYLD_LIBRARY_PATH=`pwd` mono nativeadd.exe
