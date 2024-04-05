#!/usr/bin/env bash

VENV_DIR="j-venv"

if [[ ! -d "$VENV_DIR" ]]; then
	python3 -m venv --system-site-packages "$VENV_DIR"
	"$VENV_DIR/bin/pip3" install jupyterlab-vim
fi

source j-venv/bin/activate

# cd /usr/share/jupyter/labextensions/@axlair
# sudo ln -s /home/aru/Utec/2024-1/big-data/dask/j-venv/share/jupyter/labextensions/@axlair

jupyter lab
