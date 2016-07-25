all: setup build clean

setup:
	mkdir -p .build
	cp -rv ifs.tex ifs.bib chapters code listings .build

build:
	cd .build && \
	  latexmk -pdf ifs.tex && \
	  cp ifs.pdf ..

clean:
	rm -rf .build
