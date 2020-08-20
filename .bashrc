# source global bashrc
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# aliases
VENV_DIR=.venv
alias venv-create="python -m venv $VENV_DIR"
alias venv-activate="source $VENV_DIR/bin/activate"
