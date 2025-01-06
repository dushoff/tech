runscreen: 
	bash -cl vnvim Makefile

Sources += Makefile

Makefile: makestuff/Makefile

makestuff/Makefile:
	/bin/ln -s ../makestuff .

-include makestuff/os.mk

-include makestuff/git.mk

-include makestuff/visual.mk

