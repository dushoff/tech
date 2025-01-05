## This is the screendir /home/dushoff/screens/tech

current: target
-include target.mk
Ignore = target.mk

-include makestuff/perl.def

######################################################################

vim_session: 
	bash -cl "vmt screens.list"

## None of this seems to work
tim_session: 
	bash -cl "vim Makefile target.mk screens.list" &
	## exec vim Makefile target.mk "screens.list" &

screen_session: screens.update
	$(MAKE) $(vscreens)

## Cleaning 2023 Jul 26 (Wed)
cleanDirs:
	rm -fr dictClean/ rRlinks/ shellpipes/ stuff/

######################################################################

## Non-repo subdirectories managed from here

rundirs += run wakey ghost

Sources += $(rundirs:%=%/Makefile)

######################################################################

linkdirs += inc 
inc: dir=~/screens/org/Planning

linkdirs += email 
email: dir=~/screens/org/Planning

nlinkdirs += tilde
tilde: dir=~

$(linkdirs):
	$(linkdir)

$(nlinkdirs):
	$(linkdirname)

Makefile: | $(linkdirs) $(nlinkdirs)
Ignore += $(linkdirs) $(nlinkdirs)

######################################################################

## tf??

Sources += rpkgDescription

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff

Makefile: makestuff/00.stamp
makestuff/%.stamp:
	- $(RM) makestuff/*.stamp
	(cd makestuff && $(MAKE) pull) || git clone --depth 1 $(msrepo)/makestuff
	touch $@

### Includes

-include makestuff/os.mk

-include makestuff/listdir.mk
-include makestuff/screendir.mk ## Name matches
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk
