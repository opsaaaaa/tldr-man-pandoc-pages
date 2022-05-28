SHELL := /bin/bash

# prerequisite
# [pandoc](https://pandoc.org/)
# [pandoc-releases](https://github.com/jgm/pandoc/releases)

pages: tmp.src
	./bin/create-pages

tmp.src:
	git clone https://github.com/tldr-pages/tldr.git .


#pages.ar
#pages.bn
#pages.bs
#pages.ca
#pages.da
#pages.de
#pages.es
#pages.fa
#pages.fr
#pages.hi
#pages.id
#pages.it
#pages.ja
#pages.ko
#pages.ml
#pages.ne
#pages.nl
#pages.no
#pages.pl
#pages.pt_BR
#pages.pt_PT
#pages.ro
#pages.ru
#pages.sh
#pages.sr
#pages.sv
#pages.ta
#pages.th
#pages.tr
#pages.uk
#pages.uz
#pages.zh
#pages.zh_TW


