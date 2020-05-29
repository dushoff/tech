## This is the screendir run

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

vim_session: 
	bash -cl "vmt screens.list"

screen_session: screens.update
	$(MAKE) $(vscreens)
	$(MAKE) tilde.rscreen tilde/R.rscreen
	screen -t sudo sudo su
	screen tcsh
	$(MAKE) run.rscreen

######################################################################

Ignore += tilde
tilde: dir=~
tilde:
	$(linkdirname)

Ignore += run/*.*
Source += run/Makefile
run:
	$(mkdir)

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
## makestuff: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

### Includes

-include makestuff/os.mk

## -include makestuff/wrapR.mk

-include makestuff/listdir.mk
-include makestuff/screendir.mk
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk
