runscreen: 
	## bash -ic textstart
	-bash -ic fastmouse
	bash -ic "wiss 0"

Sources += Makefile
Makefile: makestuff/Makefile

makestuff/Makefile:
	/bin/ln -s ../makestuff .

-include makestuff/os.mk

-include makestuff/git.mk
-include makestuff/visual.mk
