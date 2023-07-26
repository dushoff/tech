runscreen: 
	bash -cl textstart
	-bash -cl fastmouse
	bash -cl "wiss 0"
	bash

Sources += Makefile
Makefile: makestuff/Makefile

makestuff/Makefile:
	/bin/ln -s ../makestuff .

-include makestuff/os.mk

-include makestuff/git.mk
-include makestuff/visual.mk
