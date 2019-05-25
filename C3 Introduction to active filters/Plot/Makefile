SRC	:= $(shell egrep -l '^[^%]*\\begin\{document\}' *.tex)
PDF	= $(SRC:%.tex=%.pdf)
TRG	= $(SRC:%.tex=%.dvi)

all: $(PDF)

%.pdf: %.tex
	pdflatex --shell-escape $<
	-bibtex $(<:%.tex=%.aux)
	pdflatex --shell-escape $<
	pdflatex --shell-escape $<

clean:
	rm -f *.aux *.bbl *.blg *.log $(PDF) $(TRG:%.dvi=%.aux) $(TRG:%.dvi=%.bbl) $(TRG:%.dvi=%.blg) $(TRG:%.dvi=%.log) $(TRG:%.dvi=%.out) $(TRG:%.dvi=%.idx) $(TRG:%.dvi=%.ilg) $(TRG:%.dvi=%.ind) $(TRG:%.dvi=%.toc) $(TRG:%.dvi=%.d) $(TRG:%.dvi=%.lof) $(TRG:%.dvi=%.lol) $(TRG:%.dvi=%.lot)
