TEXMFHOME=$(shell kpsewhich -var-value TEXMFHOME)

.PHONY: all clean example install
install:
		install -D -m 644 -t $(TEXMFHOME)/tex/latex/oxford/ \
			beamerthemeOxford.sty beamercolorthemeOxford.sty oxweb-logo-square.png

all: example

example:
	xelatex example.tex

clean:
	rm *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.pdf
