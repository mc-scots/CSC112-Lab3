CC=g++
CXXFLAGS=--std=c++11 -g
TARGETS=matrixTest

all: $(TARGETS)
matrixTest: matrix.o matrixTest.o
matrixTest.o: matrixTest.cpp matrix.h
matrix.o: matrix.cpp matrix.h
clean:
	rm -f *.o $(TARGETS)
