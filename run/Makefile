runscreen:
	## bash -ic textstart
	-bash -ic fastmouse

Sources += Makefile
Makefile: makestuff/Makefile

makestuff/Makefile:
	/bin/ln -s ../makestuff .

-include makestuff/os.mk

-include makestuff/git.mk
-include makestuff/visual.mk
