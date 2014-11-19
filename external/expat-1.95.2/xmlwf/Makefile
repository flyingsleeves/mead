# Generated automatically from Makefile.in by configure.
################################################################
# Process this file with top-level configure script to produce Makefile
#
# Copyright 2000 Clark Cooper
#
#  This file is part of EXPAT.
#
#  EXPAT is free software; you can redistribute it and/or modify it
#  under the terms of the License (based on the MIT/X license) contained
#  in the file COPYING that comes with this distribution.
#
# EXPAT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN EXPAT.
#

bindir = ${exec_prefix}/bin

LIBDIR= ../lib/.libs
INCDIR= ../lib

LDFLAGS=  -static
CFLAGS= -g -O2 -Wall -Wmissing-prototypes -Wstrict-prototypes -fexceptions -I$(INCDIR)
CC = gcc

FILEMAP_OBJ= unixfilemap.o
OBJS= xmlwf.o xmlfile.o codepage.o $(FILEMAP_OBJ)
LIBS= -L$(LIBDIR) -lexpat

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
LIBTOOL = $(SHELL) $(top_builddir)/libtool
mkinstalldirs = $(SHELL) $(top_srcdir)/conftools/mkinstalldirs

srcdir = .
top_builddir = ..
top_srcdir = ..
prefix = /home/tony/mead/lib/expat
exec_prefix = ${prefix}


xmlwf: $(OBJS)
	$(CC) -o xmlwf $(LDFLAGS) $(OBJS) $(LIBS)

install: xmlwf
	$(mkinstalldirs) $(bindir)
	$(LIBTOOL) --mode=install $(INSTALL_PROGRAM) xmlwf $(bindir)/xmlwf

uninstall:
	$(LIBTOOL) --mode=uninstall rm -f $(bindir)/xmlwf

check:	$(SUBDIRS)
	@echo
	@echo This package does not yet have a regression test.
	@echo

clean:
	rm -f xmlwf core *.o

distclean: clean
	rm -f Makefile

maintainer-clean: distclean
