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

Sources += $(wildcard *.R)

test.Rout: test.R

test.test:
	$(MAKE) rclean
	$(MAKE) Makefile
	$(MAKE) test.Rout
	$(MAKE) test.Rout
	touch add.R
	$(MAKE) test.Rout

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
-include makestuff/stepR.mk
