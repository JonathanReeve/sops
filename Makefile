master-report.pdf: master-report.md
	pandoc -o $@ $< --filter=pandoc-crossref
