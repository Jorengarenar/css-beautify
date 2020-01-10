PREFIX=/usr
BINDIR=$(PREFIX)/bin
LIBDIR=$(PREFIX)/lib/python3.8
PROGNAME=css-beautify
MODULENAME=cssbeautifier

install:
	cp -r $(MODULENAME) $(LIBDIR)/$(MODULENAME)
	install -Dm755 $(PROGNAME) $(BINDIR)

uninstall:
	rm -rf $(LIBDIR)/$(MODULENAME)
	rm -f $(BINDIR)/$(PROGNAME)
