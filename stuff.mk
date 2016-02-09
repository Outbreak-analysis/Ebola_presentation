msrepo = https://github.com/dushoff
gitroot = ./
export ms = $(gitroot)/makestuff
Drop = ~/Dropbox

-include local.mk
-include $(gitroot)/local.mk
export ms = $(gitroot)/makestuff
-include $(ms)/os.mk

### Linked directories

## Talk machinery

talkdir = $(ms)/talk
subdirs += talkdir

## Images

images = $(Drop)/courses/Lecture_images
subdirs += images

## Data

WHO = $(gitroot)/WA_Ebola_Outbreak
subdirs += WHO
WHO/%:
	cd WHO && $(MAKE) $*

## Diagrams

sir = $(gitroot)/SIR_model_family
subdirs += sir
sir/%:
	cd sir && $(MAKE) $*

## Hybrid fitting

hybrid = $(gitroot)/hybrid_fitting
subdirs += hybrid
hybrid/%:
	cd hybrid && $(MAKE) $*

## Project directory machinery

Makefile: $(ms) $(subdirs)

$(ms):
	cd $(dir $(ms)) && git clone $(msrepo)/$(notdir $(ms)).git

$(subdirs): 
	$(MAKE) -f $(ms)/repos.mk gitroot=$(gitroot) $($@)
	-$(RM) $@
	ln -s $($@) $@

