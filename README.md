homebrew-opentracker
====================

[Opentracker](http://erdgeist.org/arts/software/opentracker/) formulae for the [Homebrew package manager](http://brew.sh).

Installation
------------

Opentracker is currently only available directly from CVS.  However, as `cvs` has been removed from OSX, it
needs to be installed from the [dupes](https://github.com/Homebrew/homebrew-dupes) tap:
```sh
$ brew tap homebrew/dupes
$ brew install cvs
```

After that `opentracker` itself can be installed:
```sh
$ brew tap witsch/opentracker
$ brew install --HEAD opentracker
```
