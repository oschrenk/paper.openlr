MAIN_FILE = main

pdf:
	echo ${MAIN_FILE}.tex
	xelatex ${MAIN_FILE}.tex
	#makeindex ${MAIN_FILE}.idx
	bibtex ${MAIN_FILE}.aux
	xelatex ${MAIN_FILE}.tex
	xelatex ${MAIN_FILE}.tex
	
clean:

	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.bst
	rm -f *.dvi
	rm -f *.idx
	rm -f *.lof
	rm -f *.log
	rm -f *.pdf
	rm -f *.toc
	rm -f *.out
	rm -f *.synctex.gz
	rm -f *.glo
	rm -f *.ind
	rm -f *.ilg
	rm -f *.pdfsync
	
all:
	clean pdf
	