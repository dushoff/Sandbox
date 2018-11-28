# Sandbox
### Hooks for the editor to set the default target

current: target
-include target.mk

##################################################################

screen_session: caching.screen makestuff.screen

%.screen: %
	cd $< && screen -t "$<"

######################################################################

## varnames

test:

dir = best test vest

$(dir):rockstar=pill
$(dir): bir

bir:
	@echo $(rockstar)

##################################################################

## Defs

# stuff

Sources += Makefile

msrepo = https://github.com/dushoff
ms = makestuff
Sources += makestuff

Ignore += local.mk
-include local.mk
-include $(ms)/os.mk

# -include $(ms)/perl.def

### Untracked simple version of makestuff is the default
Ignore += $(ms)
## Sources += $(ms)
Makefile: $(ms) makestuff/Makefile
$(ms):
	git clone $(msrepo)/$(ms)

makestuff/Makefile:
	git submodule update -i makestuff

######################################################################

subdirs += caching/ stepR/

######################################################################

## Working with Mike, who is complaining about rules

Sources += test.R
test.Rout: test.R

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk

