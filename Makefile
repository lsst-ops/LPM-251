#
#

SRC=$(wildcard LDM-*.tex)
tex=$(SRC) body.tex 

OBJ=$(SRC:.tex=.pdf)

all: $(tex)
	latexmk -bibtex -xelatex -f $(SRC)

clean :
	latexmk -c
	rm *.pdf

acronyms.tex :$(tex) myacronyms.tex
	generateAcronyms.py  $(tex)

