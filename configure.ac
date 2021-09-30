dnl Process this file with autoconf to produce a configure script.
AC_PREREQ([2.69])
AC_INIT([dcraw],[9.28],[hroch@physics.muni.cz])
AM_INIT_AUTOMAKE

dnl Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL

dnl Checks for libraries.
AC_CHECK_LIB([m], [pow])

AC_CHECK_HEADERS([jpeglib.h])
AC_CHECK_LIB([jpeg],[jpeg_std_error])

AC_CHECK_HEADERS([lcms2.h])
AC_CHECK_LIB([lcms2],[cmsCloseProfile])

AC_OUTPUT(Makefile)
