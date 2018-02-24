.DEFAULT_GOAL := master-report.pdf

bibliography.bib: Colin/SOPS.bib Jonathan/SOPS.bib
	cat $> > $@

master-report.pdf: master-report.md bibliography.bib
	cat Colin/SOPS.bib Jonathan/SOPS.bib > bibliography.bib
	pandoc -o $@ $< --filter=pandoc-citeproc -V linkcolor=blue -V toc
