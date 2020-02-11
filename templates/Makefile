TARGET?=main
LUALATEX=$(shell which lualatex &>/dev/null; echo $?)
BIBER=$(shell which biber &>/dev/null; echo $?)

# Use lualatex if available, pdflatex otherwise
ifeq ($(LUALATEX),0)
	COMPILER=lualatex
else
	COMPILER=pdflatex
endif

# Use biber if available, bibtex otherwise
ifeq ($(BIBER),0)
	BIBTEX=biber
else
	BIBTEX=bibtex
endif

# Halt on errors during compilation
PDFTEXOPTS=-halt-on-error -file-line-error -synctex=1

.PHONY : all clean

all : example.pdf

%.pdf : %.tex
	$(COMPILER) $(PDFTEXOPTS) $<
	$(COMPILER) $(PDFTEXOPTS) $<

clean :
	rm -f *.acn *.acr *.alg *.aux *.bbl *.blg *.dvi *.glg *.glo *.gls *.ist *.lof *.log *.lol *.lot *.out *.pdf *.toc *.pdfsync *.gz *.tdo *.xml *.gz *.bcf *.nav *.snm
