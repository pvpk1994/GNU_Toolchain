# target:	pre-req1	pre-req2	pre-req3 ...
# Phony Target: Target not representing a file (Ex: clean here)
# If target is file: Pre-reqs checked for file changes
# Std Phony targets: all, clean, install
all:	hello.exe

hello.exe:	hello.o
	gcc -o hello.exe hello.o

hello.o:	hello.c
	gcc -c hello.c

clean:
	rm hello.o hello.exe

# Usage of Automatic variables to replace above Makefile
#all:	hello.exe
#hello.exe:	hello.o
#	gcc -o $@ $<
#hello.o:	hello.c
#	gcc -c $<
#clean:
#	rm hello.o $@
