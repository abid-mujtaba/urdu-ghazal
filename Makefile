# Author: Abid H. Mujtaba
# Date: 2013-01-21
#
# This Makefile automates the tasks associated with creating the pdf file from the tex file and viewing it.

.PHONY: default, show, build

# Run when only 'make' is issued
default: build

# The Actual build command for generating the pdf output. Uses the ghazal.pdf as its dependency
build: ghazal.pdf

# We declare that ghazal.pdf has ghazal.tex as its dependency, meaning this rule will be run any time ghazal.tex is NEWER than ghazal.pdf
ghazal.pdf: ghazal.tex
# The xelatex command that takes the tex file and compiles it to produce the pdf file.
	xelatex ghazal.tex

# Rule for displaying the produced pdf file using the evince pdf-viewer
show:
	evince ghazal.pdf &
