all: trombone

trombone.o: trombone.cpp 
	clang++ trombone.cpp -std=c++11 -O3 -march=armv7-a -mtune=cortex-a8 -mfloat-abi=hard -mfpu=neon -ftree-vectorize -save-temps -c

trombone: trombone.o
	clang++ trombone.o -o trombone /root/Bela/build/core/math_runfast.o

