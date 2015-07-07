export PATH=/Users/sang.park/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

export BASH_CONFIG_DIR="/Users/sang.park/dev/personal/bash-configs"

export DISABLE_LL_PROMPT='false'

alias reload-aliases="load_aliases"

function load_aliases() {
	# load bash alias file
	if [ -f $BASH_CONFIG_DIR/load_aliases.sh ]; then
		source $BASH_CONFIG_DIR/load_aliases.sh
	fi

	
}

load_aliases


# LocationLabs-specific stuff
[[ -s "$HOME/.bashrc_ll" ]] && source "$HOME/.bashrc_ll"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/sang.park/.gvm/bin/gvm-init.sh" ]] && source "/Users/sang.park/.gvm/bin/gvm-init.sh"

[ -s "/Users/sang.park/.nvm/nvm.sh" ] && . "/Users/sang.park/.nvm/nvm.sh" # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
