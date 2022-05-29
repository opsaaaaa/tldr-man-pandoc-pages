# Tldr Man Pages

A repository of pre-built tldr pages in man formate.
Inspired by tldr-man.
- [tldr-pages](https://github.com/tldr-pages/tldr)
- [tldr-man](https://github.com/joelekstrom/tldr-man)

## Why?

I like the idea of using man for tldr. 
However building tldr-man takes like forever.
so in the releases you can find pre-built man pages.
Also I wanted try doing this with Pandoc.


# Installing

Download the latest release from the
[releases]https://github.com/opsaaaaa/tldr-man-pandoc-pages/releases)
page.
Extract the build and place the files inside of `~/.tldr` or anywhere you want.
And add an `man` alias for `tldr` in your `.bashrc` or `.zshrc`.
```
alias tldr="man -M ~/.tldr"
```
```
echo 'alias tldr="man -M ~/.tldr"' >> ~/.zshrc' 
```



# Building

Building project requites pandoc.
I paru requires newer version so I recommend installing the latest release.

- [Pandoc Releases](https://github.com/jgm/pandoc/releases)
- [Pandoc Docs](https://pandoc.org/getting-started.html)


```bash
bundle
make
```


## About laungages.

I coppied the same directory structor found in '/usr/share/man' for the locales.
I have not tested the locales myself.


The code scripts can output them
You can generate zipfiles with locales in them by adding a new file to the Makefile
```
linux_uk.zip: tmp.build/
	./bin/build pages uk all

```



