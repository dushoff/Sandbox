# Sandbox/caching
### Hooks for the editor to set the default target

current: target
-include target.mk

##################################################################

## Defs

Sources += Makefile

ms = makestuff
-include $(ms)/os.mk

Ignore += $(ms)
Makefile: $(ms)/Makefile
	touch $@
$(ms)/Makefile:
	ls ../makestuff/Makefile && /bin/ln -s ../makestuff 

######################################################################

## ln -s ~/Dropbox/cache/Sandbox cache ##

Sources += $(wildcard *.R)

cache/slow.slow.Rout: slow.R
	$(run-R)

fast.Rout: slow.slow.Rout fast.R
	$(run-R)

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/cache.mk
-include $(ms)/wrapR.mk

