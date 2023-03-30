# Code of Conduct

This project adheres to the Contributor Covenant
[code of conduct](http://contributor-covenant.org/version/1/4/). By
participating, you are expected to uphold this code. Please report unacceptable
behaviour to the [Sceptre github discussion](https://github.com/Sceptre/sceptre/discussions).

# How to Contribute

## Dependency Management

[Poetry](https://pypi.org/project/poetry/) is the tool that is used for
dependency management, versioning and deployment management to pypi.
Please install poetry and execute commands from the poetry environment.

## Linting

As a pre-deployment step we syntatically validate files with
[pre-commit](https://pre-commit.com).

Please [install pre-commit](https://pre-commit.com/#install) then run
`pre-commit install` to setup the git hooks.  Once configured the pre-commit
linters will automatically run on every git commit.  Alternatively you
can manually execute the validations by running `pre-commit run --all-files`.

## Unit Tests

[Tox](https://pypi.org/project/tox/) is used to execute tests against multiple
python versions.

```bash
$ poetry run tox
```

# Get Started

1. Fork this repository
2. Clone your fork locally
3. Create a branch for local development
4. Install dependencies (i.e. poetry install --extras sceptre)
5. Make your changes.
5. When you're done making changes, check that your changes pass
   [linting](#Linting), [unit tests](#Unit-Tests) and have
   sufficient coverage.
6. Submit a pull request through the GitHub website.
