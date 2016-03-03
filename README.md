# make-help [![Build Status](https://travis-ci.org/gibatronic/make-help.svg?branch=master)](https://travis-ci.org/gibatronic/make-help)

This is a [basher](https://github.com/basherpm/basher) and [npm](https://www.npmjs.com/) package to help you document your make tasks.

## Usage

Install this package with one of the following commands:

```shell
# through basher
basher install gibatronic/make-help

# or through npm
npm install make-help --global
```

Then document the targets with a comment in your `makefile`, like so:

```Makefile
# generate all assets
build: scripts styles

# generete scripts
scripts:
	...

# generete styles
styles:
	...
```

After that, just add a `help` target:

```Makefile
# show some help
help:
	echo ''
	echo '  Usage:'
	echo '    make <target>'
	echo ''
	echo '  Targets:'
	make-help -p 4 "$(lastword $(MAKEFILE_LIST))"
	echo ''
```

And voilà! Run `make help` to get a nice usage message:

```

  Usage:
    make <target>

  Targets:
    build    generate all assets
    help     show some help
    scripts  generete scripts
    styles   generete styles

```

**Tip:**

Tell make to use `help` as the default goal when no targets are provided, put the following line at the top of your `makefile`:

```Makefile
.DEFAULT_GOAL := help
```

## System

This project only runs on Unix systems and depends on [AWK](https://en.wikipedia.org/wiki/AWK).
