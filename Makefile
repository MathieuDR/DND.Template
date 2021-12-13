BOOK = book.tex

OPTIONS = -interaction=nonstopmode

MKOPTIONS = -synctex=1 $(OPTIONS) -file-line-error -pdflua -shell-escape

LATEX = lualatex $(OPTIONS) -output-directory=$(OUTDIR)

LATEXMK = latexmk $(MKOPTIONS) -outdir=$(OUTDIR)

OUTDIR = ./build

.DEFAULT_TARGET: build
.PHONY: build clean rebuild

build:
	$(LATEXMK) $(BOOK)

clean:
	@$(RM) -r -f $(OUTDIR)/

rebuild:
	clean build

%.pdf: %.tex
	$(LATEXMK) $<
