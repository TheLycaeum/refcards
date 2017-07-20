top = $(shell find sections/ -maxdepth 1 -and -name \*.tex)

golang-refcard.pdf:  ${top} ../images/parthenon-callig.png version.tex golang-refcard.tex release.tex 
	pdflatex golang-refcard.tex

version.tex:
	$(shell ../gen-version.sh > version.tex)
