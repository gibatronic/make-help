.DEFAULT_GOAL:=help

.PHONY: install \
				test

.SILENT:

# show some help
help:
	echo ''
	echo '  Usage:'
	echo '    make <target>'
	echo ''
	echo '  Targets:'
	bin/ghelp -p 4 $(lastword $(MAKEFILE_LIST))
	echo ''

# grab dependencies
install:
	basher install sstephenson/bats

# run the program's tests
test:
	test/ghelp
