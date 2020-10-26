
DEPS = $(wildcard *.md)
PDFDIR = pdfs
PDFS = $(patsubst %.md, $(PDFDIR)/%.pdf, $(DEPS))

$(PDFS) : $(PDFDIR)/%.pdf : %.md $(PDFDIR)
	pandoc $< -o $@

$(PDFDIR) :
	mkdir $(PDFDIR)
