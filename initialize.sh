export PATH=/Users/sang.park/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

export BASH_CONFIG_DIR="$HOME/dev/bash-configs"

export DISABLE_LL_PROMPT='false'

alias reload-all="load_profiles && load_aliases"
alias reload-profiles="load_profiles"
alias reload-aliases="load_aliases"

function load_file() {
   if [ -f "$BASH_CONFIG_DIR/$1" ]; then
      source "$BASH_CONFIG_DIR/$1"
   fi
}

function load_profiles() {
   # load bash alias file
   load_file load_profiles.sh
}

function load_aliases() {
	# load bash alias file
	load_file load_aliases.sh
}

load_profiles
load_aliases


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/sang.park/.gvm/bin/gvm-init.sh" ]] && source "/Users/sang.park/.gvm/bin/gvm-init.sh"

[ -s "/Users/sang.park/.nvm/nvm.sh" ] && . "/Users/sang.park/.nvm/nvm.sh" # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
