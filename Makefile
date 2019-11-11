all: myProg

myProg: main.o libmylib.a
	g++ -o myProg main.o -L. -lmylib

main.o: main.cpp
	g++ -c main.cpp

calculator.o: calculator.cpp calculator.h
	g++ -c calculator.cpp

hello.o: hello.cpp hello.h
	g++ -c hello.cpp

libmylib.a: calculator.o hello.o
	ar rcs libmylib.a calculator.o hello.o

libs: libmylib.a

clean:
	rm -rf *.o libmylib.a myProg
