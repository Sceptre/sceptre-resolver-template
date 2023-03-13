install: clean
	pip install .

install-dev: clean
	pip install -r requirements.txt
	pip install -r requirements-dev.txt
	pip install -e .

coverage-all:
	coverage erase
	coverage run --source resolver -m unittest
	coverage xml

coverage: coverage-all
	coverage report --show-missing

test:
	python -m pytest --junitxml=test-reports/junit.xml

test-all:
	tox --parallel=auto

lint:
	pre-commit run --all-files --show-diff-on-failure

dist: clean
	python setup.py sdist
	python setup.py bdist_wheel
	twine check dist/*
	ls -l dist

clean: clean-build clean-pyc clean-test

clean-build:
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test:
	rm -fr .cache/
	rm -f .coverage.xml
	rm -f test-results/
