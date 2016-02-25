all: cv.pdf

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out *.nav *.toc *.snm *.run.xml *-blx.bib *.bbl *.blg *.bcf

cv.pdf: cv.bib force
	pdflatex cv
	biber cv
	pdflatex cv
	pdflatex cv

force: ;
