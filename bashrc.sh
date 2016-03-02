export GRADLE_HOME=~/dev/build_tools/build_tools/gradle
export GRADLE_COMMON=~/dev/build_tools/build_tools/gradle_common
export GRADLE_OPTS=-Dorg.gradle.daemon=true

export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

if [ `id -u` != '0' ]; then

  # Always use pip/distribute
  export VIRTUALENV_USE_DISTRIBUTE=1
#  export VIRTUAL_ENV_DISABLE_PROMPT=1

  # All virtualenvs will be stored here
  export WORKON_HOME=$HOME/.virtualenvs

  source /usr/local/bin/virtualenvwrapper.sh
  export PIP_VIRTUALENV_BASE=$WORKON_HOME
  export PIP_RESPECT_VIRTUALENV=true

fi

# increases file descriptor limit
# ulimit -n 1024
