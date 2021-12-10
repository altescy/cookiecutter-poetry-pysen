cookiecutter-poetry-pysen
=========================

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
