#Compiler options
CC=gcc
CFLAGS=-g -Wall -I ./include
LDFLAGS=-lncurses
COMPILE=$(CC) -c $(CFLAGS)
BUILD=$(CC) $(CFLAGS)

# Libraries
OBJS=main.o tablero.o juego.o

# Programs
EXE=main

all: main

run: main
	./$(EXE)

main: $(OBJS)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJS) $(LDFLAGS)

%.o: %.c %.h
	$(COMPILE) -o $@ $<

clean:
	rm -vf $(OBJS) $(EXE)
