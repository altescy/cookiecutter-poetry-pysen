cookiecutter-poetry-pysen
=========================

[![Actions Status](https://github.com/altescy/cookiecutter-poetry-pysen/workflows/CI/badge.svg)](https://github.com/altescy/cookiecutter-poetry-pysen/actions/workflows/ci.yml)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/altescy/cookiecutter-poetry-pysen)](https://github.com/altescy/cookiecutter-poetry-pysen/releases)
[![License](https://img.shields.io/github/license/altescy/cookiecutter-poetry-pysen)](https://github.com/altescy/cookiecutter-poetry-pysen/blob/main/LICENSE)

This repository provides a [Cookiecutter](https://github.com/cookiecutter/cookiecutter) template with [poetry](https://python-poetry.org/) and [pysen](https://github.com/pfnet/pysen).

```
cookiecutter https://github.com/altescy/cookiecutter-poetry-pysen.git
```


## Usage

1. Generate a project directory with cookiecutter
```
❯ cookiecutter https://github.com/altescy/cookiecutter-poetry-pysen.git
package_name [package_name]: your-package
module_name [your_package]:
author [author <author@example.com>]:
```

2. Install dependent packages via:
```
❯ cd your-package
❯ poetry install
```

3. Run pysen and pytest

```bash
❯ make    # Run formatters, linters, and pytest
```
