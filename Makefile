#
#


SRC=$(wildcard LPM-*.tex)
tex=$(filter-out $(wildcard *acronyms.tex) , $(wildcard *.tex))  

OBJ=$(SRC:.tex=.pdf)

all: $(tex)
	latexmk -bibtex -xelatex -f $(SRC)

clean :
	latexmk -c
	rm *.pdf

acronyms.tex :$(tex) myacronyms.txt
	generateAcronyms.py  $(tex)

