types = $(shell find sections/types -name \*.tex)
structures = $(shell find sections/structures -name \*.tex)
top = $(shell find sections/ -maxdepth 1 -and -name \*.tex)

golang-refcard.pdf: ${types} ${structures} ${top} ../images/parthenon-callig.png version.tex golang-refcard.tex
	pdflatex golang-refcard.tex

version.tex:
	git describe > version.tex
