PIPENV=.venv
PYTHON_VERSION=3.7

.PHONY: all

all: $(PIPENV)

$(PIPENV):
	env PIPENV_VENV_IN_PROJECT=$(PIPENV) pipenv --python $(PYTHON_VERSION)
	pipenv install


.PHONY: clean-env


clean-env:
	rm -rf $(PIPENV) Pipfile.lock
