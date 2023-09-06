#!/bin/bash

### pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# if [ `id -u` != '0' ]; then

#   # Always use pip/distribute
#   export VIRTUALENV_USE_DISTRIBUTE=1
# #  export VIRTUAL_ENV_DISABLE_PROMPT=1

#   # All virtualenvs will be stored here
#   export WORKON_HOME=$HOME/.virtualenvs

#   source /usr/local/bin/virtualenvwrapper.sh
#   export PIP_VIRTUALENV_BASE=$WORKON_HOME
#   export PIP_RESPECT_VIRTUALENV=true

# fi
