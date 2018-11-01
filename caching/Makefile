# Sandbox/caching
### Hooks for the editor to set the default target

current: target
-include target.mk

##################################################################

## Defs

# stuff

Sources += Makefile

# -include $(ms)/perl.def

ms = makestuff
-include $(ms)/os.mk

Ignore += $(ms)
Makefile: $(ms) $(ms)/Makefile
$(ms):
	ls ../makestuff/Makefile && /bin/ln -s ../makestuff 

######################################################################

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk

