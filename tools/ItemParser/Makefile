CC          =	gcc
CFLAGS      =	-Wall -std=c99 -g

INCLUDES    = -Iinclude
LIBDIRS     = -Llib
LIBS        = -lm

all: ParameterManager

ParameterManager: compile
	$(CC) $(CFLAGS) obj/List.o obj/Parser.o -lm -o bin/itemParser

compile:
	$(CC) $(CFLAGS) -c  src/List.c -o  obj/List.o -lm $(INCLUDES)
	$(CC) $(CFLAGS) -c  src/Parser.c -o obj/Parser.o -lm $(INCLUDES)
	
clean:
	@ rm -f obj/*.o
	@ rm -f bin/runTest
