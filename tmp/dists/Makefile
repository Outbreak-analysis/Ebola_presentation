current: target

target: simple.Rout 

pngtarget: simple.Rout 
	$(MAKE) $<.png
	$(MAKE) $<.png.go

pdftarget: simple.Rout 
	$(MAKE) $<.pdf
	$(MAKE) $<.pdf.go

vtarget: simple.Rout 
	$(MAKE) $<.go

##################################################################

SUPPRESS_EMPTY_ROUT_RULE=1

WW_THIS_PROJECT_SOURCE_FILES += data.R

exponential.Rout: lognormal.Rout

exponential.filtered.Rout: exponential.R

contour.Rout: contour.R

condition.Rout: condition.R

test.Rout: test.R

lognormal.filtered.Rout: funhist.R

%.filtered.Rout: %.Rout funhist.Rout filtered.R
	$(run-R)

newtest.Rout: lognormal.Rout newfun.Rout filtered.R
	$(run-R)

simple.Rout: simple.R


##################################################################

%.go:
	$(MAKE) $*
	xdg-open $* &

