##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Mon Jan 28 23:38:47 PST 2013
## Last Modified: Thu Jan 31 01:05:49 PST 2013
## Filename:      ...binasc/Makefile
##
## Description: This Makefile compiles the binasc program for linux, OS X 
##              or MinGW (Windows).
##

# ARCH options for 32-bit compiling on 64-bit computers
# (uncomment the OS X and Linux variants below for ARCH).
ARCH = 

# if OSTYPE is not defined, then this if statement will be run:
ifeq ($(origin OSTYPE), undefined)
   ifeq ($(shell uname),Darwin)
      OSTYPE = OSXPC
      ENV = MACOSX_DEPLOYMENT_TARGET=10.4
      # use the following to compile for 32-bit architecture on 64-bit comps:
      # ARCH = -m32 -arch i386
   else 
      OSTYPE = LINUX
      # use the following to compile for 32-bit architecture on 64-bit comps:
      # (you will need 32-bit libraries in order to do this)
      # ARCH = -m32 
   endif
endif
# Next if statement needed for some versions of make which already set OSTYPE:
ifeq ($(OSTYPE),linux)
   OSTYPE = LINUX
   # use the following to compile for 32-bit architecture on 64-bit comps:
   # (you will need 32-bit libraries in order to do this)
   # ARCH = -m32 
endif

DEFINES = $(addprefix -D,$(OSTYPE))
COMPILER = LANG=C $(ENV) g++ $(ARCH)

# MinGW (http://www.mingw.org) "Minimalist GNU for Windows" allows compiling
# Windows programs in linux OSes.  Uncomment the following line to select
# the MinGW compiler (usually different with different installations, 
# so the path and name of the compiler will need to be adjusted):
# COMPILER = /usr/i686-pc-linux-gnu/i686-pc-mingw32/gcc-bin/4.7.2/i686-pc-mingw32-g++ -static

CPP = binasc.cpp Options.cpp Options_private.cpp FileIO.cpp

all:
	$(COMPILER) $(DEFINES) -O3 -o binasc $(CPP) && strip binasc

install:
	cp binasc /usr/bin

clean:
	rm binasc

