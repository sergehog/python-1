#!/bin/bash

# get current script directory cross-platform (macOS/Linux)
PROJECT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export REPO_ROOT="${REPO_ROOT:-${PROJECT_DIR}}"

echo "Activating SM environment at ${REPO_ROOT}"
source ${REPO_ROOT}/.venv/bin/activate

export PYTHONPATH="${REPO_ROOT}:${REPO_ROOT}/tests:${PYTHONPATH}"
#export PATH="${REPO_ROOT}/bin:${PATH}"