FFmpeg Wasm LGPL2.1 Build
================

This repositiory can be used to replicate the transpilation process of c/c++ code (FFmpeg) to Wasm.

You can find the output binaries [here](https://github.com/konstantin-paulus/ffmpeg.wasm-lgpl-build/tree/n4.3.1-wasm/wasm/packages/core/build)

## Build

1. Use docker (easy way)

Install latest docker and run `build-with-docker.sh`.

```
$ bash build-with-docker.sh
```

2. Install emsdk (unstable way)

Setup the emsdk from [HERE](https://emscripten.org/docs/getting_started/downloads.html) and run `build.sh`.

```
$ bash build.sh
```

If nothing goes wrong, you can find JavaScript files in `wasm/packages/core/dist`.

## Configuration

```
--target-os=none --arch=x86_32 --enable-cross-compile --disable-x86asm --disable-inline-asm --disable-stripping --disable-programs --disable-doc --disable-debug --disable-runtime-cpudetect --disable-autodetect --extra-cflags='-O3 --closure 1 -I/src/build/include -s USE_PTHREADS=1' --extra-cxxflags='-O3 --closure 1 -I/src/build/include -s USE_PTHREADS=1' --extra-ldflags='-O3 --closure 1 -I/src/build/include -s USE_PTHREADS=1 -L/src/build/lib' --pkg-config-flags=--static --nm=llvm-nm --ar=emar --ranlib=emranlib --cc=emcc --cxx=em++ --objcc=emcc --dep-cc=emcc
```
