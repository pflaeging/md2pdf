# Convert all Markdown files to PDF using the ruleset from pdf.yaml
# Peter Pfläging <peter@pflaeging.net>
#

PANDOC = pandoc
CV = pdf.yaml
SRC = $(wildcard *.md)
OUTPUTS = $(patsubst %.md,%.pdf,$(SRC))

all: $(OUTPUTS)

clean:
	rm -f $(OUTPUTS)

%.pdf: %.md
	$(PANDOC) $(CV) $^ -o $@
