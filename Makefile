.PHONY: all clean example install
install:
		install -D -m 644 -t ~/texmf/tex/latex/oxford/ \
			beamerthemeOxford.sty beamercolorthemeOxford.sty oxweb-logo-square.png

all: example

example:
	xelatex example.tex

clean:
	rm *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.pdf
