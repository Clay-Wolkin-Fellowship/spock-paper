# Programs
TEX := python3 bin/pylatex


all: docs

clean:
	rm -rf build

# Building tex files

docs: build/docs/spock.pdf

build/docs/%.pdf : tex/%.tex tex/*.tex bib/main.bib
	@mkdir -p $(@D)
	$(TEX) $< $@ bib/main.bib

