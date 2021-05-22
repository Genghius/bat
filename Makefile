.POSIX:

PREFIX = /usr/local

all: bat

install: bat
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp bat ${DESTDIR}${PREFIX}/bin/bat
	mkdir -p ${DESTDIR}${PREFIX}/share/man/man1
	cp bat.1 ${DESTDIR}${PREFIX}/share/man/man1/bat.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/bat
	rm -f ${DESTDIR}${PREFIX}/share/man/man1/bat.1

.PHONY: all clean install uninstall
