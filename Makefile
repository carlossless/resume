.PHONY: examples

CC = xelatex
SECTION_DIR = sections
SECTION_SRCS = $(shell find $(SECTION_DIR) -name '*.tex')

resume.pdf: resume.tex $(SECTION_SRCS)
	$(CC) $<

clean:
	rm -rf *.pdf
