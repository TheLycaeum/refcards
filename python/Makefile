types = $(shell find sections/types -name \*.tex)
structures = $(shell find sections/structures -name \*.tex)
top = $(shell find sections/ -maxdepth 1 -and -name \*.tex)

python-refcard2.pdf: ${types} ${structures} ${top} ../images/parthenon-callig.png version.tex python-refcard2.tex
	pdflatex python-refcard2.tex

version.tex:
	git describe > version.tex
