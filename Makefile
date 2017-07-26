##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Mon Jan 28 23:38:47 PST 2013
## Last Modified: Mon Mar 16 12:40:04 PDT 2015
## Filename:      binasc/Makefile
##
## Description: This Makefile compiles the binasc program for linux, OS X 
##              or MinGW (Windows).
##

# ARCH options for 32-bit compiling on 64-bit computers
# (uncomment the OS X and Linux variants below for ARCH).
ARCH = 
ENV  =

# if OSTYPE is not defined, then this if statement will be run:
ifeq ($(origin OSTYPE), undefined)
   ifeq ($(shell uname),Darwin)
      OSTYPE = OSXPC
      ENV = MACOSX_DEPLOYMENT_TARGET=10.9
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

COMPILER = LANG=C $(ENV) g++ $(ARCH)

# MinGW (http://www.mingw.org) "Minimalist GNU for Windows" allows compiling
# Windows programs in linux OSes.  Uncomment the following line to select
# the MinGW compiler (usually different with different installations, 
# so the path and name of the compiler will need to be adjusted):
# COMPILER = /usr/i686-pc-linux-gnu/i686-pc-mingw32/gcc-bin/4.7.2/i686-pc-mingw32-g++ -static

SOURCE = binasc.cpp Options.cpp BinascClass.cpp
DEFINES =

# Using C++ 2011 standard:
DEFINES += -std=c++11

.PHONY: binasc

all:
	$(COMPILER) $(DEFINES) -O3 -o binasc $(SOURCE) && strip binasc


install:
	cp binasc /usr/local/bin


sudo-install:
	sudo cp binasc /usr/local/bin


clean:
	rm binasc


URLBASE = https://raw.githubusercontent.com/craigsapp
# Binasc.cpp needed to be renamed BinascClass.cpp because OS X filesystem
# will otherwise confuse binasc.cpp with Binasc.cpp.

update:
ifneq ($(shell which wget),)
	wget $(URLBASE)/midifile/master/src-programs/binasc.cpp -O binasc.cpp
	wget $(URLBASE)/midifile/master/src-library/Binasc.cpp -O BinascClass.cpp
	wget $(URLBASE)/midifile/master/include/Binasc.h -O Binasc.h
	wget $(URLBASE)/optionlib/master/src/Options.cpp -O Options.cpp
	wget $(URLBASE)/optionlib/master/include/Options.h -O Options.h
else ifneq ($(shell which curl),)
	curl $(URLBASE)/midifile/master/src-programs/binasc.cpp -o binasc.cpp
	curl $(URLBASE)/midifile/master/src-library/Binasc.cpp -o Binasc.cpp
	curl $(URLBASE)/midifile/master/include/Binasc.h -o Binasc.h
	curl $(URLBASE)/optionlib/master/src/Options.cpp -o Options.cpp
	curl $(URLBASE)/optionlib/master/include/Options.h -o Options.h
endif


