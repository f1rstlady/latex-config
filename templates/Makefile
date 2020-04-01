DOCNAME?=main
COMPILER?=lualatex
FLAGS=-halt-on-error -file-line-error -synctex=1

.PHONY : all clean cleanall $(DOCNAME).pdf

all : $(DOCNAME).pdf

$(DOCNAME).pdf : $(DOCNAME).tex
	$(COMPILER) $(FLAGS) $<
	$(COMPILER) $(FLAGS) $<

clean :
	@rm -f *.[1-9] *.[1-9][0-9] *.[1-9][0-9][0-9] *.[1-9][0-9][0-9]R *.[1-9][0-9]R *.[1-9]R *.4ct *.4tc *.acn *.acr acs-*.bib *.alg *.aux *.auxlock *.bbl *.bcf *.blg *-blx.aux *-blx.bib *.brf *.cb *.cb2 *-concordance.tex *-converted-to.* *.cpt *.cut *.dpth *.dvi *.eledsec[1-9] *.eledsec[1-9][0-9] *.eledsec[1-9][0-9][0-9] *.eledsec[1-9][0-9][0-9]R *.eledsec[1-9][0-9]R *.eledsec[1-9]R *.?end *.end *.ent *.fdb_latexmk *.fff *.fls *.fmt *.fot *.gaux *.glg *.glo *.gls *.glsdefs *-gnuplottex-* *.gtex *.gz *.hst *.idv *.idx *.ilg *.ind *.ist latex.out/ .*.lb *.lg *.listing *.loa *.lod *.loe *.lof *.log *.lol *.lot *.lox *.ltjruby *.lzo *.lzs *.maf *.md5 *.mf _minted* *.mlf *.mlt *.mp *.mtc[0-9]* *.mw *.nav *.nlg *.nlo *.nls *.out *.pax *.pdfpc *.pdfsync *.pre *.pyg pythontex-files-*/ *.pytxcode *.run.xml *.sagetex.py *.sagetex.sage *.sagetex.scmd *.slf[0-9]* *.slt[0-9]* *.snm *.soc *.sout *.spl *.stc[0-9]* *.sympy sympy-plots-for-*.tex/ *.synctex *.synctex\(busy\) *.synctex.gz *.synctex.gz\(busy\) *.t[1-9] *.t[1-9][0-9] *.tdo *.tfm *.thm *-tikzDictionary *.toc *.trc TSWLatexianTemp* *.ttt *.upa *.upb *.ver *.vrb *.wrt *.xcp *.xdv *.xdy *.xml *.xmpi *.xref *.xyc *.xyd

cleanall : clean
	rm -f $(DOCNAME).pdf
