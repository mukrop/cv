TEXS=$(wildcard *.tex)
PDFS=$(TEXS:.tex=.pdf)

all: $(PDFS) clean

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out *.nav *.toc *.snm *.run.xml *-blx.bib *.bbl *.blg *.bcf *.fls *.fdb_latexmk

%.pdf : %.tex cv.bib
	pdflatex $<
	biber $(basename $<)
	pdflatex $<
	pdflatex $<

.PHONY: all clean

