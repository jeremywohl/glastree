#
# Makefile
#
#  Jeremy Wohl (http://igmus.org/code)
#  Public domain; no warranty, no responsibility, etc.
#
#  $Id: Makefile,v 1.1 2001/11/28 07:19:21 jeremyw Exp $
#

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

	@echo Install not implemented yet.
