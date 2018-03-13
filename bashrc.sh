export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

export EDITOR='subl -w'

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"

export DISABLE_LL_PROMPT='false'

shopt -s autocd

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/sang.park/.gvm/bin/gvm-init.sh" ]] && source "/Users/sang.park/.gvm/bin/gvm-init.sh"

## Setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Setup Fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

## setup rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

## Setup jenv
eval "$(jenv init -)"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# increases file descriptor limit
# ulimit -n 1024
