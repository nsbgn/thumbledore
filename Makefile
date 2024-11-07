.PHONY: install uninstall
KEYD?=/etc/keyd

all:

install:
	mkdir -p "${KEYD}/common"
	install -m644 keyd/common/* "${KEYD}/common/"
	install -m644 keyd/*.conf "${KEYD}/"
