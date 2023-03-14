TEXMFHOME=$(shell kpsewhich -var-value TEXMFHOME)

.PHONY: all clean example install
install:
		install -D -m 644 -t $(TEXMFHOME)/tex/latex/oxford/ \
			beamerthemeOxford.sty beamercolorthemeOxford.sty oxweb-logo-square.png

all: example example-notes

example: example.tex
	latexmk -f -interaction=nonstopmode -pdf example.tex

example-notes: example.tex
	latexmk -f -interaction=nonstopmode -pdf -jobname=notes example.tex

clean:
	rm -rf *.aux *.bcf *.lof *.log *.out *.run.xml *.toc *.bbl *.blg *.fdb_latexmk *.fls *.nav *.snm *.synctex.gz *.vrb
