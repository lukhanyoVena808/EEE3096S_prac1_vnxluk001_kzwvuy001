CC=gcc

# note the -g below for debugging
CFLAGS=-I. -g 

main.o: main.c main.h
		$(CC) -c -o main.o $< S(CFLAGS)

main: main.o
		$(CC) -o $@ $^ $(CFLAGS)

clean:
		rm -f -r main main.o