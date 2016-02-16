# Build DABZilla run time version

DMD=/opt/dmd2/linux/bin32/dmd
CC=gcc

EXEC=DABZilla

MAKEFILE=Makefile

CFLAGS=-ggdb -Wall -m32
DFLAGS=-gc -w -m32 -I/usr/local/include/d/gtkd-3 -Isrc
LDFLAGS=-m32

LIBRARIES=-L-lgtkd-3 -L-lphobos2 -L-lkeystonecomm -L-ldl
BUILDDIR = build

MODULES=DABZilla GUIBuilder UI DABController \
Keystone DABState DABStation Store RadioStation

SRCDIR=src
OBJDIR=build

SRC = $(patsubst %, $(SRCDIR)/%.d, $(MODULES))
OBJECTS =  $(patsubst %, $(OBJDIR)/%.o, $(MODULES))

CSRC=$(SRCDIR)/KeystoneWrapper.cpp
COBJECT = $(BUILDDIR)/KeystoneWrapper.o

EXEC=DABZilla

LIBDEST=/usr/local/lib
LIBBIN=libkeystonecomm.so
MODEL=model/Controller.zargo

$(EXEC) : $(OBJECTS) $(COBJECT) $(MAKEFILE)
	$(DMD) $(DFLAGS) $(OBJECTS) $(COBJECT) -of$(EXEC) $(LDFLAGS) $(LIBRARIES)

$(OBJECTS) : $(SRC) $(MAKEFILE)
	$(DMD) $(DFLAGS) -c $(SRC) -od$(BUILDDIR)

$(COBJECT) : $(CSRC) $(MAKEFILE)
	$(CC) $(CFLAGS) -c $(CSRC) -o$(COBJECT) -Iinclude

.PHONY  : generate
generate:
	axmi2d -b -s $(SRCDIR) -m $(MODEL)

.PHONY  : clean
clean   :
	mv slides/1000.jpg slides/default.jpg /tmp
	rm -rf slides/* $(BUILDDIR) $(EXEC)
	mv /tmp/1000.jpg /tmp/default.jpg slides

.PHONY  : install
install : 
	cp $(LIBBIN) $(LIBDEST)
