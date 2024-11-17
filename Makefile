.PHONY: all install install-keyd install-xkb uninstall
KEYD?=/etc/keyd
XKB?=/usr/share/X11/xkb

all:

install: install-keyd install-xkb

install-xkb:
	install -m644 xkb/symbols/* "${XKB}/symbols/"

install-keyd:
	mkdir -p "${KEYD}/common"
	install -m644 keyd/common/* "${KEYD}/common/"
	install -m644 keyd/*.conf "${KEYD}/"
