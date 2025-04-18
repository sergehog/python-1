#!/bin/bash
set -e

cd "${0%/*}/.."


REPO_ROOT="${REPO_ROOT:-$(pwd)}"

echo "REPO_ROOT: ${REPO_ROOT}"

rm -rf ./.venv
python3 -m venv --prompt="sm" "${REPO_ROOT}/.venv"
source ./.venv/bin/activate
pip install pip --upgrade
pip install wheel
pip install -r requirements.txt
