# Ebola_presentation
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: lecture.draft.pdf 

##################################################################


# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
-include $(ms)/os.mk
# include $(ms)/perl.def

##################################################################

## Temporary

Sources += $(wildcard tmp/*)

##################################################################

## Content

format_files = beamer.tmp beamer.fmt

Sources += $(wildcard *.txt)

lecture.draft.pdf: lecture.txt

todo.txt:

######################################################################

## Local pix

Sources += $(wildcard *.R)

# TEMPORARY crib rule
tmp/%: /home/dushoff/Dropbox/academicWW/Ebola_math/%
	$(copy)

steps.Rout: steps.R

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
-include $(ms)/talk.mk
