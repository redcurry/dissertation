dissertation.pdf: dissertation.tex intro.tex comp_rate.tex sgv.tex comp_spp.tex geo_ecol_spp.tex snowball.tex
	pdflatex dissertation
	bibtex comp_rate
	bibtex sgv
	bibtex comp_spp
	bibtex geo_ecol_spp
	bibtex snowball
	pdflatex dissertation
	pdflatex dissertation

clean:
	rm dissertation.pdf *.aux *.bbl *.log *.toc *.lot *.lof *.blg
