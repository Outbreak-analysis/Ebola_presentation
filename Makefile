# Ebola_presentation
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: lecture.draft.pdf 

##################################################################


# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
# include $(ms)/perl.def

##################################################################

## Content

Sources += lecture.txt

lecture.draft.pdf: lecture.txt

now:
	cat $(ms)/talk.mk

######################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
-include $(ms)/talk.mk
