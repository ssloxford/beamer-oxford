TEXMFHOME=$(shell kpsewhich -var-value TEXMFHOME)

.PHONY: all clean example install
all: example example-notes

example: example.tex
	latexmk -f -interaction=nonstopmode -outdir=out/ -pdf example.tex

example-notes: example.tex
	latexmk -f -interaction=nonstopmode -pdf -outdir=out/ -jobname=notes example.tex

install:
		install -D -m 644 -t $(TEXMFHOME)/tex/latex/oxford/ \
			beamerthemeOxford.sty beamercolorthemeOxford.sty oxweb-logo-square.png

clean:
	rm -r out/
