# Programs
TEX := python3 bin/pylatex


all: docs

clean:
	rm -rf build

# Building tex files

docs: build/docs/spock.pdf

build/docs/spock.pdf: bib/main.bib $(wildcard tex/*.tex) $(wildcard img/*.png)
	@mkdir -p $(@D)
	$(TEX) tex/$(basename $(@F)).tex $@ bib/main.bib

