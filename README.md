# ghelp

This is a [basher](https://github.com/basherpm/basher) and [npm](https://www.npmjs.com/) package to help you document your make tasks.

## Usage

Install this package with one of the following commands:

```shell
# through basher
basher install gibatronic/ghelp

# or through npm
npm install ghelp --global
```

Then comment the targets you wish to document in your `makefile`, for example:

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
	ghelp -p 4 "$(abspath $(lastword $(MAKEFILE_LIST)))"
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
