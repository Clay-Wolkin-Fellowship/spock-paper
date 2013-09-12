# Programs
TEX := python bin/pylatex


all: docs

clean:
	rm -rf build

# Building tex files

docs: build/docs/spock.pdf

build/docs/%.pdf : tex/%.tex tex/*.tex
	@mkdir -p $(@D)
	$(TEX) $< $@

