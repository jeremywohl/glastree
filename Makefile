#
# Makefile
#
#  Jeremy Wohl (http://igmus.org/code)
#  Public domain; no warranty, no responsibility, etc.
#
#  $Id: Makefile,v 1.3 2002/01/28 19:08:29 jeremyw Exp $
#

INSTALL  = install
INSTROOT = /usr/local
INSTBIN  = bin
INSTMAN  = man

all:
	@echo Available targets: check, test, install.

check:
	perl -wc glastree
	perl -wc glastreeprune

test:
	@echo Test not implemented yet.

install:
	@perl -e 'eval "use Date::Calc"; \
	print "Checking for prereq Date::Calc..."; \
	if ($$@) { print "\nThis program requires the Date::Calc module.\n"; exit 1; } \
	print " OK\n"; '

	$(INSTALL) --directory $(INSTROOT)/$(INSTBIN) $(INSTROOT/($INSTMAN)
	$(INSTALL) --preserve-timestamps --mode=0755 glastree $(INSTROOT)/$(INSTBIN)
	$(INSTALL) --preserve-timestamps --mode=0755 glastreeprune $(INSTROOT)/$(INSTBIN)
