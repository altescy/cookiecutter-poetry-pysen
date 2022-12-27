#!/bin/bash

set -e

PACKAGE_NAME="test-project"
MODULE_NAME="test_project"
AUTHOR="test-author"


TEMPLATE_DIR=$(pwd)
WORKING_DIR=/tmp/cookiecutter-test/
EXTRA_CONTEXT="package_name=$PACKAGE_NAME module_name=$MODULE_NAME author=$AUTHOR"

rm -rf $WORKING_DIR

echo "Generating a template..."
cookiecutter --no-input --output-dir $WORKING_DIR $TEMPLATE_DIR $EXTRA_CONTEXT

echo "Checking if the project was generated..."
if [ ! -d $WORKING_DIR/$PACKAGE_NAME]; then
    echo "Project was not generated"
    exit 1
fi

echo "Validating the generated project..."
cd $WORKING_DIR/$PACKAGE_NAME
poetry install  # install dependencies based on pyproject.toml
make            # run linting and tests
