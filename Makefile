## This is the screendir tech
## vimcleaning

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
	$(MAKE) $(newscreens)

## Cleaning 2023 Jul 26 (Wed)
cleanDirs:
	rm -fr dictClean/ rRlinks/ shellpipes/ stuff/

######################################################################

Ignore += tilde
tilde: dir=~
tilde:
	$(linkdirname)

Sources += rpkgDescription

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

-include makestuff/listdir.mk
-include makestuff/screendir.mk
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk
