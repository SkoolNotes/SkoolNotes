SHELL := /bin/zsh
# Find all markdown files
MARKDOWN=$(shell find . -iname "KB*.md" | grep -v ".stversions" | grep -v "sync-conflict")
# Form all 'html' counterparts
PDF=$(MARKDOWN:.md=.pdf)
HTML=$(MARKDOWN:.md=.html)
LATEX=$(MARKDOWN:.md=.latex)
TAG=$(firstword $(subst ., ,$(lastword $(subst /, ,$1))))
SUBJECT=$(firstword $(subst /, ,$1))
TARGET=$(subst md,html,$1)

.PHONY = all tar clean cleanindx cleanassets

all: $(MARKDOWN) $(PDF) $(HTML)
	echo $$RANDOM > buildID.txt
	make flush

html: $(HTML)

pdf: $(PDF)

latex: $(LATEX)

indx: $(MARKDOWN)

flush:
	make cleanindx indx -B

%.md:
	echo "<option value='$(call TARGET,$@)'>$(call TAG,$@)</option>" >> tags.html
	echo "<option value='$(call TAG,$@)'>$(call TARGET,$@)</option>" >> backtrack.html
	while read line; do [[ $$line == *"title"* ]] && echo "<option value='$(call TARGET,$@)'>$${line}</option>" >> indxtable.html || :; done < $@ 
	perl -pi -e 's/title: //g' indxtable.html

%.latex: %.md
	pandoc -f markdown -t latex $< --pdf-engine=xelatex --mathjax -o $@ --template=~/.pandoc/templates/default.latex

%.html: %.latex
	pandoc -f latex -t html $< --pdf-engine=xelatex --mathjax -o $@ --template=~/.pandoc/templates/default.html

%.pdf: %.md
	pandoc -f markdown -t pdf $< --pdf-engine=xelatex --mathjax -o $@ --template=~/.pandoc/templates/default.latex

tar: $(MARKDOWN)
	tar --exclude=notes.tar.gz --exclude=.git/ -czvf notes.tar.gz ./

cleanindx:
	rm -f tags.html indxtable.html backtrack.html

cleanassets:
	rm -f $(HTML) $(PDF) $(LATEX)

clean: cleanindx cleanassets

