# Sandbox/stepR
### Hooks for the editor to set the default target

current: target
-include target.mk

##################################################################

## Defs

# stuff

Sources += Makefile notes.md

# -include $(ms)/perl.def

ms = makestuff
-include $(ms)/os.mk

Ignore += $(ms)
Makefile: $(ms) $(ms)/Makefile
$(ms):
	ls ../makestuff/Makefile && /bin/ln -s ../makestuff 

######################################################################

Sources += $(wildcard *.R)

test.deps: test.R makestuff/rstep.pl
	$(PUSH)
test.Rout: test.R

plots.Rout: plots.R

stepClean:
	$(RM) *.Rout *.RData *.pdf *.rdeps *.rda

## Stopped when we discovered the error; this will move back to MLi world
impSamp.Rout: impSamp.R
impSamp.plots.Rout: impSamp.plots.R

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
-include makestuff/stepR.mk
