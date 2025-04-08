export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

export EDITOR='subl -w'

export JAVA8_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home/"
export JAVA17_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home/"
export JAVA_HOME="$JAVA17_HOME"

alias java8="export JAVA_HOME='$JAVA8_HOME'"
alias java17="export JAVA_HOME='$JAVA17_HOME'"

## Setup Fzf
export FZF_DEFAULT_OPTS="--preview 'head -100 {}'"

## Setup shared bin
export PATH="$PATH:$BASH_CONFIGS_DIR/bin"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"  # sbin for brew
export PATH="$PATH:/user/bin"
export PATH="$PATH:/opt/homebrew/bin" # where homebrew is installed on my personal laptop

## setup rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

eval "$($HOMEBREW_HOME/bin/brew shellenv)"

## Setup jenv
# eval "$(jenv init -)"

# increases file descriptor limit
# ulimit -n 1024


## Aliases

### ls aliases ###

alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

### CD Aliases ###

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

function mkcd() {
    mkdir $1 
    cd $1
}

alias o="open"

### Markdown Aliases ###

alias mdless="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | less"
alias mdcat="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | cat"
alias mdtail="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | tail"

alias g="grep"

alias sl="subl"

ssh-add --apple-use-keychain

alias unload_globalprotect="launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"
alias load_globalprotect="launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"