PREFIX=/usr
BINDIR=$(PREFIX)/bin
LIBDIR=$(PREFIX)/lib/python3.8
PROGNAME=css-beautify
MODULENAME=cssbeautifier
SRC=src

install:
	cp -r $(SRC)/$(MODULENAME) $(LIBDIR)/$(MODULENAME)
	install -Dm755 $(SRC)/$(PROGNAME) $(BINDIR)

uninstall:
	rm -rf $(LIBDIR)/$(MODULENAME)
	rm -f $(BINDIR)/$(PROGNAME)
