msrepo = https://github.com/dushoff
gitroot = ./
export ms = $(gitroot)/makestuff
Drop = ~/Dropbox

-include local.mk
-include $(gitroot)/local.mk
export ms = $(gitroot)/makestuff

### Linked directories

talkdir = $(ms)/talk
subdirs += talkdir

images = $(Drop)/courses/Lecture_images
subdirs += images

WHO = $(gitroot)/WA_Ebola_Outbreak/
subdirs += WHO

-include $(ms)/os.mk

Makefile: $(ms) $(subdirs)

$(ms):
	cd $(dir $(ms)) && git clone $(msrepo)/$(notdir $(ms)).git

$(subdirs): 
	$(MAKE) -f $(ms)/repos.mk gitroot=$(gitroot) $($@)
	-$(RM) $@
	ln -s $($@) $@

