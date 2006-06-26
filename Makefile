# Executables
CC     = gcc
INSTALL= /usr/bin/install

# Flags
CFLAGS = -I. -O3 -g -Wall

SRC = dcraw.c parse.c fujiturn.c fuji_green.c clean_crw.c
OBJ = dcraw.o parse.o fujiturn.o fujiturn16.o fuji_green.o clean_crw.o

# Targets
default: dcraw dcparse dcfujiturn dcfujiturn16 dcfujigreen dccleancrw

dcraw: dcraw.o
	$(CC) -s -o $@ dcraw.o -lm -ljpeg -llcms

dcparse: parse.o
	$(CC) -s -o $@ parse.o

dcfujiturn: fujiturn.o
	$(CC) -s -o $@ fujiturn.o

dcfujiturn16: fujiturn16.o
	$(CC) -s -o $@ fujiturn16.o

dcfujigreen: fuji_green.o
	$(CC) -s -o $@ fuji_green.o -lm

dccleancrw: clean_crw.o
	$(CC) -s -o $@ clean_crw.o

clean:
	rm -f core *.o
	rm -f dcraw dcparse dcfujiturn dcfujigreen dccleancrw
	rm -f dcfujiturn16

dcraw.o: dcraw.c

parse.o: parse.c

fixdates.o: fixdates.c

fujiturn.o: fujiturn.c

fujiturn16.o: fujiturn.c
	$(CC) -c -D_16BIT -o $@ fujiturn.c

fuji_green.o: fuji_green.c
	$(CC) -c -include netinet/in.h -o $@ fuji_green.c

clean_crw.o: clean_crw.c

install: dcraw dcparse dcfujiturn dcfujiturn16 dcfujigreen dccleancrw
	$(INSTALL) dcraw $(DESTDIR)/usr/bin
	$(INSTALL) dcraw.1 $(DESTDIR)/usr/share/man/man1
	$(INSTALL) dcparse $(DESTDIR)/usr/bin
	$(INSTALL) dcfujiturn $(DESTDIR)/usr/bin
	$(INSTALL) dcfujiturn16 $(DESTDIR)/usr/bin
	$(INSTALL) dcfujigreen $(DESTDIR)/usr/bin
	$(INSTALL) dccleancrw $(DESTDIR)/usr/bin
