# make-help [![Build Status](https://travis-ci.org/gibatronic/make-help.svg?branch=master)](https://travis-ci.org/gibatronic/make-help) [![Gitter](https://badges.gitter.im/gibatronic/make-help.svg)](https://gitter.im/gibatronic/make-help?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

This is a [npm](https://www.npmjs.com/make-help) package to help you document your make tasks.

## Usage

Install the package with the following command:

```bash
npm install make-help
```

Then document the targets with a comment in your `Makefile`, like so:

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
	npx make-help -p 4 Makefile
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
