#
# Makefile
#
#  Jeremy Wohl (http://igmus.org/code)
#  Public domain; no warranty, no responsibility, etc.
#
#  $Id: Makefile,v 1.5 2002/02/11 19:46:42 jeremyw Exp $
#

INSTALL  = install
INSTROOT = /usr/local
INSTBIN  = bin
INSTMAN  = man

all:
	@echo Available targets: check, test, install.

check:
	@perl -wc glastree
	@perl -wc glastreeprune

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
	$(INSTALL) --preserve-timestamps --mode=0644 glastree.1 $(INSTROOT)/$(INSTMAN)/man1
	$(INSTALL) --preserve-timestamps --mode=0644 glastreeprune.1 $(INSTROOT)/$(INSTMAN)/man1
