# This loads Node Version Manager
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh

export GRADLE_HOME=~/dev/build_tools/build_tools/gradle
export GRADLE_COMMON=~/dev/build_tools/build_tools/gradle_common
export GRADLE_OPTS=-Dorg.gradle.daemon=true
export PATH=$PATH:$GRADLE_HOME/bin:$BASH_CONFIG_DIR/scripts

export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

. $BASH_CONFIG_DIR/scripts/git-ext-completion.bash

if [ `id -u` != '0' ]; then

  # Always use pip/distribute
  export VIRTUALENV_USE_DISTRIBUTE=1

  # All virtualenvs will be stored here
  export WORKON_HOME=$HOME/.virtualenvs

  source /usr/local/bin/virtualenvwrapper.sh
  export PIP_VIRTUALENV_BASE=$WORKON_HOME
  export PIP_RESPECT_VIRTUALENV=true

fi

# increases file descriptor limit
ulimit -n 1024

alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
