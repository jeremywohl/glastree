#
# Makefile
#
#  Jeremy Wohl (http://igmus.org/code)
#  Public domain; no warranty, no responsibility, etc.
#
#  $Id: Makefile,v 1.7 2002/02/20 05:43:20 jeremyw Exp $
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

	$(INSTALL) -d $(INSTROOT)/$(INSTBIN)
	$(INSTALL) -d $(INSTROOT)/$(INSTMAN)
	$(INSTALL) -m 0755 glastree $(INSTROOT)/$(INSTBIN)
	$(INSTALL) -m 0755 glastreeprune $(INSTROOT)/$(INSTBIN)
	$(INSTALL) -m 0644 glastree.1 $(INSTROOT)/$(INSTMAN)/man1
	$(INSTALL) -m 0644 glastreeprune.1 $(INSTROOT)/$(INSTMAN)/man1
