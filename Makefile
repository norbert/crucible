SHELL = /bin/sh
PYTHON ?= python

RESULTSDIR = ./results

all: results

results:
	-rm -rf -- $(RESULTSDIR)
	$(PYTHON) -m crucible.script

clean: clean-pyc clean-results
clean-pyc:
	find . -name '*.pyc' | xargs rm -f
clean-results:
	-rm -rf -- $(RESULTSDIR)

.PHONY: all results clean clean-pyc clean-results
.DELETE_ON_ERROR:
