COMPILER?=lualatex
FLAGS=-halt-on-error -file-line-error -synctex=1

.PHONY : all clean

all : main.pdf

%.pdf : %.tex
	$(COMPILER) $(FLAGS) $<
	$(COMPILER) $(FLAGS) $<

clean :
	rm -f *.acn *.acr *.alg *.aux *.bbl *.blg *.dvi *.glg *.glo *.gls *.ist *.lof *.log *.lol *.lot *.out *.toc *.pdfsync *.gz *.tdo *.xml *.gz *.bcf *.nav *.snm

cleanall : clean
	rm -f *.pdf
