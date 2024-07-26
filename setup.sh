#!/bin/bash
VENV_DIR=${1:-".venv/nllb_serve"}
if [ -f lock.conda.yaml ]; then
    conda env create -f lock.conda.yaml --prefix $VENV_DIR
else
    conda env create -f conda.yaml --prefix $VENV_DIR
fi
