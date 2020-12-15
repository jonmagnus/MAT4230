
DEPS = $(wildcard *.md)
PDFDIR = pdfs
PDFS = $(patsubst %.md, $(PDFDIR)/%.pdf, $(DEPS))

all: $(PDFS)

$(PDFDIR)/%.pdf : %.md
	pandoc $< -o $@

$(PDFDIR) :
	mkdir $(PDFDIR)
