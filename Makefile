SHELL := /bin/bash
LOCALES = 'ar,bn,bs,ca,da,de,es,fa,fr,hi,id,it,ja,ko,ml,ne,nl,no,pl,pt_BR,pt_PT,ro,ru,sh,sr,sv,ta,th,tr,uk,uz,zh,zh_TW'

# prerequisite
# [pandoc](https://pandoc.org/)
# [pandoc-releases](https://github.com/jgm/pandoc/releases)
# install ruby
# bundle install

.PHONY: create
create: pages.zip linux.zip android.zip osx.zip sunos.zip windows.zip


# Build zip files
pages.zip: tmp.build/
	./bin/build pages $(LOCALES) all

linux.zip: tmp.build/
	./bin/build linux en linux

android.zip: tmp.build/
	./bin/build android en android

osx.zip: tmp.build/
	./bin/build osx en osx

sunos.zip: tmp.build/
	./bin/build sunos en sunos

windows.zip: tmp.build/
	./bin/build windows en windows



# Make tmp files from tldr source
tmp.build/: tmp.man/
	mkdir -p tmp.build

tmp.man/: tldr/
	./bin/create-pages

tldr/:
	git clone https://github.com/tldr-pages/tldr.git tldr/




.PHONY: clean, update
update: tldr/
	@cd tldr; git pull

clean:
	rm -r tmp.man/
	rm -r tmp.build/
	rm *.zip

