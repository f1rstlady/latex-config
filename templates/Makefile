TARGET?=main
LUALATEX=$(shell lualatex -v 2>/dev/null)
BIBER=$(shell biber -v 2>/dev/null)

# Use lualatex if available, pdflatex otherwise
ifneq ($(LUALATEX),)
	COMPILER=lualatex
else
	COMPILER=pdflatex
endif

# Halt on errors during compilation
PDFTEXOPTS=-halt-on-error

.PHONY: default clean

default: example.pdf

%.pdf: %.tex
	$(COMPILER) $(PDFTEXOPTS) $<
	$(COMPILER) $(PDFTEXOPTS) $<

clean:
	rm -f *.acn *.acr *.alg *.aux *.bbl *.blg *.dvi *.glg *.glo *.gls *.ist *.lof *.log *.lol *.lot *.out *.pdf *.toc *.pdfsync *.gz *.tdo *.xml *.gz *.bcf *.nav *.snm
