PREFIX=/usr
BINDIR=$(PREFIX)/bin
DEPENDDIR=$(PREFIX)/share
PROGNAME=css-beautify
SRC=src

install:
	mkdir -p $(DEPENDDIR)/$(PROGNAME)
	cp -r $(SRC)/* $(DEPENDDIR)/$(PROGNAME)
	chmod +x $(DEPENDDIR)/$(PROGNAME)/$(PROGNAME)
	ln -sf $(DEPENDDIR)/$(PROGNAME)/$(PROGNAME) $(BINDIR)/$(PROGNAME)

uninstall:
	rm -rf $(DEPENDDIR)/$(PROGNAME)
	rm -f $(BINDIR)/$(PROGNAME)
