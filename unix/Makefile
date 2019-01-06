sections = $(shell find sections/ -name \*.tex)

unix-refcard.pdf: ${sections} ../images/parthenon-callig.png version.tex unix-refcard.tex release.tex
	pdflatex unix-refcard.tex

version.tex:
	$(shell ../gen-version.sh > version.tex)
