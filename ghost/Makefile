runscreen: 
	bash -cl "vnvim Makefile scratch.md"

Sources += Makefile scratch.md

Makefile: makestuff/Makefile inc
target: ;

inc: dir = ~/screens/org/Planning
inc:
	$(linkdir)

makestuff/Makefile:
	/bin/ln -s ../makestuff .

-include makestuff/os.mk

-include makestuff/git.mk

-include makestuff/visual.mk

