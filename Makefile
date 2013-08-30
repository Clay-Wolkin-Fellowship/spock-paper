TEX := bin/pylatex

all: docs

clean:
	rm -rf build

docs: build/docs/spock.pdf


build/docs/%.pdf : tex/%.tex
	@mkdir -p $(@D)
	$(TEX) $< $@

