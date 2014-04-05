export PATH=/Users/sang.park/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

export BASH_CONFIG_DIR="/Users/sang.park/dev/personal/bash-configs"

alias reload-aliases="load_aliases"

function load_aliases() {
	# load .bashrc file
	if [ -f ~/.bashrc ]; then
	   source ~/.bashrc
	fi

	# load .bash_ps1
	if [ -f ~/.bash_ps1 ]; then
	   source ~/.bash_ps1
	fi	
}

load_aliases
