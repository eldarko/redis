# Top level makefile, the real shit is at src/Makefile

default: all

.DEFAULT:
	$(MAKE) -C deps/lua
	$(MAKE) -C deps/hiredis
	$(MAKE) -C deps/linenoise
	cd src && $(MAKE) $@

install:
	cd src && $(MAKE) $@

.PHONY: install
