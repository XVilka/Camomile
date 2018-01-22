INSTALL_ARGS := $(if $(PREFIX),--prefix $(PREFIX),)

all:
	jbuilder build --dev @install

install:
	jbuilder install $(INSTALL_ARGS)

uninstall:
	jbuilder uninstall $(INSTALL_ARGS)

reinstall: uninstall reinstall

test:
	jbuilder runtest

clean:
	jbuilder clean

.PHONY: all-supported-ocaml-versions
# unfortunately we cannot turn on warnings in development because of 4.02.3
all-supported-ocaml-versions:
	jbuilder build --workspace jbuild-workspace.dev
