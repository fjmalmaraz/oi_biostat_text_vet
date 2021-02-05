SHELL = /bin/sh
CURRDIR=01
R_FILES=$(wildcard figures/*/*.R)
PDF_FILES= $(patsubst %.R,%.pdf ,$(R_FILES))

all: $(PDF_FILES)
	@echo $(patsubst %.R,$(CURRDIR)/%.R ,$(R_FILES))

%.pdf: %.R
	echo $(dir $*);cd $(dir $*);Rscript $(notdir $*.R)
