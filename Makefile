# Executables
CC     = gcc
INSTALL= /usr/bin/install

# Flags
CFLAGS = -I. -O3 -g -Wall

SRC = dcraw.c parse.c fixdates.c
OBJ = dcraw.o parse.o fixdates.o

# Targets
default: dcraw dcparse dcfixdates

dcraw: dcraw.o
	$(CC) -s -o $@ dcraw.o -lm -ljpeg

dcparse: parse.o
	$(CC) -s -o $@ parse.o

dcfixdates: fixdates.o
	$(CC) -s -o $@ fixdates.o

clean:
	rm -f core *.o dcraw dcparse dcfixdates

dcraw.o: dcraw.c

parse.o: parse.c

fixdates.o: fixdates.c

install: dcraw dcparse dcfixdates
	$(INSTALL) dcraw $(DESTDIR)/usr/bin
	$(INSTALL) dcraw.1 $(DESTDIR)/usr/share/man/man1
	$(INSTALL) dcparse $(DESTDIR)/usr/bin
	$(INSTALL) dcfixdates $(DESTDIR)/usr/bin
