##################################################################
# Makefile for LaTeX
##################################################################

REPORT_FILE = tp
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.log *.fdb_latexmk *.fls

tp: $(REPORT_FILE).tex
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $(REPORT_FILE).tex
	rm -rf $(OTHER)
clean:	
	rm -rf $(OTHER)