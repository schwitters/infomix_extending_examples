# This Makefile builds zipit blade
TARGET=$(INFORMIXDIR)/incl/dbdk/makeinc.linux
# TARGET must be set to the location/filename
# of the platform-specific make include file.
include $(TARGET)

# =================================================================
# This is the project title.
PROJECT_TITLE = ffvti

# The linked DataBlade module is placed here.
BINDIR = $(OS_NAME)-$(PLATFORM)
INSTALL_DIR=./bin

# Platform independent code goes here.
# The following code was generated by BladeSmith.

MI_INCL   = $(INFORMIXDIR)/incl
COPTS     = -O -DMITRACE_OFF=1
CFLAGS    = -DMI_SERVBUILD $(CC_PIC) -I$(MI_INCL)/public $(COPTS)
LINKFLAGS = $(SHLIBLFLAG) $(SYMFLAG)
LIBS      =

# This is a list of the C object files.
PROJECTC_OBJS = \
	$(BINDIR)/ffvti.$(OBJSUFF) \
	$(BINDIR)/ffutil.$(OBJSUFF)

PROJECT_LIBS = $(BINDIR)/$(PROJECT_TITLE).$(BLDLIB_SUFF)

all : $(BINDIR)
	$(MAKE) $(MAKEFLAGS) server $(BUILD_TARGET)

# Construct each object file.

$(BINDIR)/ffvti.$(OBJSUFF) : ffvti.c
	$(CC) $(CFLAGS) -o $@ -c $?

$(BINDIR)/ffutil.$(OBJSUFF) : ffutil.c
	$(CC) $(CFLAGS) -o $@ -c $?

ffvti.$(OBJSUFF):  ffvti.h
ffutil.$(OBJSUFF):  ffvti.h


# Construct the shared library.
# Do *NOT* link with client side  libraries.  You  will  see  many
# undefined symbols during linking.  This  is  normal  since those
# symbols are resolved when the server loads  your  shared object.
#
# ATTENTION:
# The  ld  "Symbol referencing errors"  warning  is  normal. These
# unresolved symbols are resolved when the server loads the shared
# object.  This list should be examined, however, for symbol names
# that may have been inadvertently  misspelled.  Misspelled symbol
# names will not be resolved here or at  load  time.  If a version
# 9.20 Informix Server is installed, these  symbols  are  filtered
# by the filtersym.sh script.
#
$(PROJECT_LIBS) : $(PROJECTC_OBJS)
	$(SHLIBLOD) $(LINKFLAGS) -o $(PROJECT_LIBS)		\
	$(PROJECTC_OBJS) $(LIBS)   				\
	$(DATABLADE_LIBS) 2> link.errs
	if test -x $(INFORMIXDIR)/bin/filtersym.sh ;		\
	then $(INFORMIXDIR)/bin/filtersym.sh link.errs ;	\
	else cat link.errs ;                        		\
	fi

server :	$(PROJECT_LIBS)
	cp $(PROJECT_LIBS) $(INSTALL_DIR)/.

clean :
	$(RM) $(RMFLAGS) $(PROJECT_LIBS) $(PROJECTC_OBJS)


$(BINDIR) :
	-mkdir $(BINDIR)
