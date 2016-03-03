.DEFAULT_GOAL:=help

.PHONY: help \
				install \
				test

.SILENT:

# show some help
help:
	echo ''
	echo '  Usage:'
	echo '    make <target>'
	echo ''
	echo '  Targets:'
	bin/make-help -p 4 $(lastword $(MAKEFILE_LIST))
	echo ''

# grab dependencies
install:
	basher install sstephenson/bats

# run the program's tests
test:
	test/make-help
