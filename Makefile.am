

bin_PROGRAMS = dcraw dcparse dcfujiturn dcfujiturn16 dcfujigreen dccleancrw

dcraw_SOURCES = dcraw.c
dcraw_CFLAGS = -DNO_JASPER
dcraw_LDFLAGS = -ljpeg -llcms2 -lm

dcparse_SOURCES = parse.c

dcfujiturn_SOURCES = fujiturn.c

dcfujiturn16_SOURCES = fujiturn.c
dcfujiturn16_CFLAGS = -D_16BIT

dcfujigreen_SOURCES = fuji_green.c

dccleancrw_SOURCES = clean_crw.c
