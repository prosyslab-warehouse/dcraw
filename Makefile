# Executables
CC     = gcc
INSTALL= /usr/bin/install

# Flags
CFLAGS = -I. -O3 -g -Wall

SRC = dcraw.c
OBJ = dcraw.o

# Targets
default: dcraw

dcraw: $(OBJ)
	$(CC) -s -o $@ $(OBJ) -lm -ljpeg

clean:
	rm -f core *.o dcraw

dcraw.o: dcraw.c

install: dcraw
	$(INSTALL) dcraw $(DESTDIR)/usr/bin
	$(INSTALL) dcraw.1 $(DESTDIR)/usr/share/man/man1
