#
# Makefile
#
#  Jeremy Wohl (http://igmus.org/code)
#  Public domain; no warranty, no responsibility, etc.
#
#  $Id: Makefile,v 1.2 2001/11/28 08:07:22 jeremyw Exp $
#

INSTALL  = install
INSTROOT = /usr/local
INSTBIN  = bin
INSTMAN  = man

all:
	@echo Available targets: check, test, install.

check:
	perl -wc glastree

test:
	@echo Test not implemented yet.

install:
	@perl -e 'eval "use Date::Calc"; \
	print "Checking for prereq Date::Calc..."; \
	if ($$@) { print "\nThis program requires the Date::Calc module.\n"; exit 1; } \
	print " OK\n"; '

	$(INSTALL) --directory $(INSTROOT)/$(INSTBIN) $(INSTROOT/($INSTMAN)
	$(INSTALL) --preserve-timestamps --mode=0755 glastree $(INSTROOT)/$(INSTBIN)
