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
$(ms)/Makefile:
	ls ../makestuff/Makefile && /bin/ln -s ../makestuff 

######################################################################

## ln -s ~/Dropbox/cache/Sandbox cache ##

cache/slow.slow.Rout: slow.R
	$(run-R)

fast.Rout: slow.slow.Rout fast.R
	$(run-R)

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/newcache.mk
-include $(ms)/wrapR.mk

